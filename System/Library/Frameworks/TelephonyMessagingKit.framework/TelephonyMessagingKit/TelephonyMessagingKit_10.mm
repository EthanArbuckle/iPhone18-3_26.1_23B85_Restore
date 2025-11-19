uint64_t sub_1E4BC5AC8()
{
  swift_beginAccess();
  type metadata accessor for XPCBoxedMessage.CodingKeys();
  swift_getWitnessTable();
  sub_1E4BF094C();
  sub_1E4BF093C();
  return swift_endAccess();
}

unint64_t sub_1E4BC5C14(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1E4BC5F9C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4BC5C9C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1E4BC5DD8(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

unint64_t sub_1E4BC5F9C()
{
  result = qword_1ECF97920;
  if (!qword_1ECF97920)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECF97920);
  }

  return result;
}

uint64_t sub_1E4BC6054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95758, &qword_1E4C0BDE0);
  v7 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v9 = &v62 - v8;
  v73 = type metadata accessor for RCSService.Business.Suggestion(0);
  v10 = *(*(v73 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v73);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v62 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v62 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92BD0, &qword_1E4BFCCD8);
  v18 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v20 = &v62 - v19;
  v77 = type metadata accessor for RCSService.Business.Menu.Content();
  v21 = *(*(v77 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v77);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v75 = &v62 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v62 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v31 = &v62 - v29;
  v32 = *(a1 + 16);
  if (v32 != *(a2 + 16))
  {
    return 0;
  }

  if (!v32 || a1 == a2)
  {
    return 1;
  }

  v67 = v30;
  v65 = v9;
  v33 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v34 = a1 + v33;
  v35 = a2 + v33;
  v71 = *(v28 + 72);
  v72 = v20;
  v68 = v13;
  v69 = &v62 - v29;
  v66 = v27;
  v63 = v16;
  while (1)
  {
    sub_1E4BE6884(v34, v31, type metadata accessor for RCSService.Business.Menu.Content);
    sub_1E4BE6884(v35, v27, type metadata accessor for RCSService.Business.Menu.Content);
    v37 = &v20[*(v78 + 48)];
    sub_1E4BE6884(v31, v20, type metadata accessor for RCSService.Business.Menu.Content);
    sub_1E4BE6884(v27, v37, type metadata accessor for RCSService.Business.Menu.Content);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v38 = v67;
    sub_1E4BE6884(v20, v67, type metadata accessor for RCSService.Business.Menu.Content);
    v40 = *v38;
    v39 = v38[1];
    v41 = v38[2];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v31 = v69;
      v20 = v72;
LABEL_27:
      sub_1E4AE0AE4(v20, &qword_1ECF92BD0, &qword_1E4BFCCD8);
      goto LABEL_35;
    }

    v42 = *(v37 + 1);
    v43 = *(v37 + 2);
    if (v39)
    {
      if (!v42 || (v40 != *v37 || v39 != v42) && (v44 = *(v37 + 1), (sub_1E4BF099C() & 1) == 0))
      {
LABEL_33:

        v20 = v72;

        v27 = v66;
        v31 = v69;
        goto LABEL_34;
      }
    }

    else if (v42)
    {
      goto LABEL_33;
    }

    v36 = sub_1E4BC6054(v41, v43);

    v27 = v66;
    v31 = v69;
    v20 = v72;
    if ((v36 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_7:
    sub_1E4BE3004(v20, type metadata accessor for RCSService.Business.Menu.Content);
    sub_1E4BE3004(v27, type metadata accessor for RCSService.Business.Menu.Content);
    sub_1E4BE3004(v31, type metadata accessor for RCSService.Business.Menu.Content);
    v35 += v71;
    v34 += v71;
    if (!--v32)
    {
      return 1;
    }
  }

  v45 = v75;
  sub_1E4BE6884(v20, v75, type metadata accessor for RCSService.Business.Menu.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4BE3004(v45, type metadata accessor for RCSService.Business.Suggestion);
    goto LABEL_27;
  }

  v46 = v76;
  sub_1E4BE68EC(v37, v76, type metadata accessor for RCSService.Business.Suggestion);
  v47 = v65;
  v48 = &v65[*(v74 + 48)];
  sub_1E4BE6884(v45, v65, type metadata accessor for RCSService.Business.Suggestion);
  sub_1E4BE6884(v46, v48, type metadata accessor for RCSService.Business.Suggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = v68;
    sub_1E4BE6884(v47, v68, type metadata accessor for RCSService.Business.Suggestion);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E4BE3004(v49, type metadata accessor for RCSService.Business.SuggestedAction);
      goto LABEL_31;
    }

    v50 = v70;
    sub_1E4BE68EC(v48, v70, type metadata accessor for RCSService.Business.SuggestedAction);
    v51 = static RCSService.Business.SuggestedAction.== infix(_:_:)(v68, v50);
    sub_1E4BE3004(v50, type metadata accessor for RCSService.Business.SuggestedAction);
    sub_1E4BE3004(v68, type metadata accessor for RCSService.Business.SuggestedAction);
    sub_1E4BE3004(v47, type metadata accessor for RCSService.Business.Suggestion);
    v20 = v72;
    if ((v51 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v52 = v63;
  sub_1E4BE6884(v47, v63, type metadata accessor for RCSService.Business.Suggestion);
  v53 = v47;
  v54 = v52[1];
  v55 = v52[3];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v56 = v52[2];
    v57 = *v48;
    v58 = *(v48 + 1);
    v59 = *(v48 + 2);
    v60 = *(v48 + 3);
    v80[0] = *v52;
    v80[1] = v54;
    v80[2] = v56;
    v80[3] = v55;
    v79[0] = v57;
    v79[1] = v58;
    v79[2] = v59;
    v79[3] = v60;
    v64 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV14SuggestedReplyV2eeoiySbAG_AGtFZ_0(v80, v79);

    v31 = v69;

    sub_1E4BE3004(v53, type metadata accessor for RCSService.Business.Suggestion);
    v20 = v72;
    v45 = v75;
    if (!v64)
    {
      goto LABEL_32;
    }

LABEL_23:
    sub_1E4BE3004(v76, type metadata accessor for RCSService.Business.Suggestion);
    sub_1E4BE3004(v45, type metadata accessor for RCSService.Business.Suggestion);
    goto LABEL_7;
  }

  v47 = v53;
  v45 = v75;
LABEL_31:
  sub_1E4AE0AE4(v47, &qword_1ECF95758, &qword_1E4C0BDE0);
  v20 = v72;
LABEL_32:
  sub_1E4BE3004(v76, type metadata accessor for RCSService.Business.Suggestion);
  sub_1E4BE3004(v45, type metadata accessor for RCSService.Business.Suggestion);
LABEL_34:
  sub_1E4BE3004(v20, type metadata accessor for RCSService.Business.Menu.Content);
LABEL_35:
  sub_1E4BE3004(v27, type metadata accessor for RCSService.Business.Menu.Content);
  sub_1E4BE3004(v31, type metadata accessor for RCSService.Business.Menu.Content);
  return 0;
}

uint64_t sub_1E4BC68F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = (v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95758, &qword_1E4C0BDE0);
  v7 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v9 = v41 - v8;
  v10 = type metadata accessor for RCSService.Business.Suggestion(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v45 = (v41 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v41 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v21 = v41 - v19;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v42 = v20;
  v43 = v41 - v19;
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v47 = *(v18 + 72);
  v48 = v9;
  v41[1] = v10;
  while (1)
  {
    sub_1E4BE6884(v24, v21, type metadata accessor for RCSService.Business.Suggestion);
    sub_1E4BE6884(v25, v17, type metadata accessor for RCSService.Business.Suggestion);
    v26 = &v9[*(v49 + 48)];
    sub_1E4BE6884(v21, v9, type metadata accessor for RCSService.Business.Suggestion);
    sub_1E4BE6884(v17, v26, type metadata accessor for RCSService.Business.Suggestion);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v31 = v17;
    v32 = v45;
    sub_1E4BE6884(v9, v45, type metadata accessor for RCSService.Business.Suggestion);
    v33 = v32[1];
    v34 = v32[3];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v17 = v31;
      v21 = v43;
      goto LABEL_16;
    }

    v35 = v32[2];
    v36 = *v26;
    v37 = *(v26 + 1);
    v38 = *(v26 + 2);
    v39 = *(v26 + 3);
    v51[0] = *v32;
    v51[1] = v33;
    v51[2] = v35;
    v51[3] = v34;
    v50[0] = v36;
    v50[1] = v37;
    v50[2] = v38;
    v50[3] = v39;
    v46 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV14SuggestedReplyV2eeoiySbAG_AGtFZ_0(v51, v50);

    v9 = v48;

    sub_1E4BE3004(v9, type metadata accessor for RCSService.Business.Suggestion);
    v17 = v31;
    v21 = v43;
    if (!v46)
    {
      goto LABEL_17;
    }

LABEL_5:
    sub_1E4BE3004(v17, type metadata accessor for RCSService.Business.Suggestion);
    sub_1E4BE3004(v21, type metadata accessor for RCSService.Business.Suggestion);
    v25 += v47;
    v24 += v47;
    if (!--v22)
    {
      return 1;
    }
  }

  v27 = v42;
  sub_1E4BE6884(v9, v42, type metadata accessor for RCSService.Business.Suggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v44;
    sub_1E4BE68EC(v26, v44, type metadata accessor for RCSService.Business.SuggestedAction);
    v29 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV15SuggestedActionV2eeoiySbAG_AGtFZ_0(v27, v28);
    v30 = v28;
    v9 = v48;
    sub_1E4BE3004(v30, type metadata accessor for RCSService.Business.SuggestedAction);
    sub_1E4BE3004(v27, type metadata accessor for RCSService.Business.SuggestedAction);
    sub_1E4BE3004(v9, type metadata accessor for RCSService.Business.Suggestion);
    if (!v29)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  sub_1E4BE3004(v27, type metadata accessor for RCSService.Business.SuggestedAction);
LABEL_16:
  sub_1E4AE0AE4(v9, &qword_1ECF95758, &qword_1E4C0BDE0);
LABEL_17:
  sub_1E4BE3004(v17, type metadata accessor for RCSService.Business.Suggestion);
  sub_1E4BE3004(v21, type metadata accessor for RCSService.Business.Suggestion);
  return 0;
}

uint64_t sub_1E4BC6DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.URIEntry(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_1E4BE6884(v14, v11, type metadata accessor for RCSService.Business.URIEntry);
        sub_1E4BE6884(v15, v8, type metadata accessor for RCSService.Business.URIEntry);
        if ((sub_1E4BEFA4C() & 1) == 0 || v11[*(v4 + 20)] != v8[*(v4 + 20)])
        {
          break;
        }

        v17 = v11[*(v4 + 24)];
        sub_1E4BE3004(v11, type metadata accessor for RCSService.Business.URIEntry);
        v18 = v8[*(v4 + 24)];
        sub_1E4BE3004(v8, type metadata accessor for RCSService.Business.URIEntry);
        if (((v17 ^ v18) & 1) == 0)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        v19 = v17 ^ v18 ^ 1;
        return v19 & 1;
      }

      sub_1E4BE3004(v8, type metadata accessor for RCSService.Business.URIEntry);
      sub_1E4BE3004(v11, type metadata accessor for RCSService.Business.URIEntry);
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1E4BC7008(uint64_t a1, uint64_t a2)
{
  v106 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  v4 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95758, &qword_1E4C0BDE0);
  v7 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v117 = &v89 - v8;
  v112 = type metadata accessor for RCSService.Business.Suggestion(0);
  v115 = *(v112 - 8);
  v9 = *(v115 + 64);
  v10 = MEMORY[0x1EEE9AC00](v112);
  v109 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v107 = (&v89 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v116 = &v89 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v89 - v16;
  v105 = type metadata accessor for RCSService.Business.Card.Media(0);
  v18 = *(v105 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v100 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951E8, &qword_1E4C07AB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v101 = &v89 - v23;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95730, &qword_1E4C0BDC0);
  v24 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v108 = &v89 - v25;
  v114 = type metadata accessor for RCSService.Business.Card.Content(0);
  v26 = *(*(v114 - 1) + 64);
  v27 = MEMORY[0x1EEE9AC00](v114);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v32 = &v89 - v31;
  v33 = *(a1 + 16);
  if (v33 != *(a2 + 16))
  {
    return 0;
  }

  if (!v33 || a1 == a2)
  {
    return 1;
  }

  v97 = v6;
  v34 = 0;
  v35 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v36 = a1 + v35;
  v95 = a2 + v35;
  v94 = (v18 + 48);
  v37 = *(v30 + 72);
  v38 = &qword_1ECF951E8;
  v39 = v108;
  v92 = v29;
  v91 = &v89 - v31;
  v98 = v33;
  v90 = v36;
  v93 = v17;
  v89 = v37;
  while (1)
  {
    v42 = v34;
    v43 = v37 * v34;
    result = sub_1E4BE6884(v36 + v43, v32, type metadata accessor for RCSService.Business.Card.Content);
    v96 = v42;
    if (v42 == v98)
    {
      goto LABEL_84;
    }

    sub_1E4BE6884(v95 + v43, v29, type metadata accessor for RCSService.Business.Card.Content);
    v44 = *(v104 + 48);
    sub_1E4AF1898(v32, v39, v38, &qword_1E4C07AB0);
    sub_1E4AF1898(v29, v39 + v44, v38, &qword_1E4C07AB0);
    v45 = *v94;
    v46 = v105;
    if ((*v94)(v39, 1, v105) == 1)
    {
      if (v45(v39 + v44, 1, v46) != 1)
      {
        goto LABEL_72;
      }

      result = sub_1E4AE0AE4(v39, v38, &qword_1E4C07AB0);
      v47 = v93;
      goto LABEL_13;
    }

    v48 = v39;
    v49 = v39;
    v50 = v101;
    sub_1E4AF1898(v48, v101, v38, &qword_1E4C07AB0);
    if (v45(v49 + v44, 1, v46) == 1)
    {
      sub_1E4BE3004(v50, type metadata accessor for RCSService.Business.Card.Media);
      v39 = v49;
LABEL_72:
      sub_1E4AE0AE4(v39, &qword_1ECF95730, &qword_1E4C0BDC0);
LABEL_79:
      sub_1E4BE3004(v29, type metadata accessor for RCSService.Business.Card.Content);
      sub_1E4BE3004(v32, type metadata accessor for RCSService.Business.Card.Content);
      return 0;
    }

    v51 = v100;
    sub_1E4BE68EC(v49 + v44, v100, type metadata accessor for RCSService.Business.Card.Media);
    v52 = static RCSService.Business.Card.Media.== infix(_:_:)(v50, v51);
    sub_1E4BE3004(v51, type metadata accessor for RCSService.Business.Card.Media);
    sub_1E4BE3004(v50, type metadata accessor for RCSService.Business.Card.Media);
    result = sub_1E4AE0AE4(v49, v38, &qword_1E4C07AB0);
    v39 = v49;
    v47 = v93;
    if ((v52 & 1) == 0)
    {
      goto LABEL_79;
    }

LABEL_13:
    v53 = v114[5];
    v54 = &v32[v53];
    v55 = *&v32[v53 + 8];
    v56 = &v29[v53];
    v57 = *(v56 + 1);
    if (v55)
    {
      if (!v57)
      {
        goto LABEL_79;
      }

      result = *v54;
      if (*v54 != *v56 || v55 != v57)
      {
        result = sub_1E4BF099C();
        if ((result & 1) == 0)
        {
          goto LABEL_79;
        }
      }
    }

    else if (v57)
    {
      goto LABEL_79;
    }

    v58 = v114[6];
    v59 = &v32[v58];
    v60 = *&v32[v58 + 8];
    v61 = &v29[v58];
    v62 = *(v61 + 1);
    if (v60)
    {
      if (!v62)
      {
        goto LABEL_79;
      }

      result = *v59;
      if (*v59 != *v61 || v60 != v62)
      {
        result = sub_1E4BF099C();
        if ((result & 1) == 0)
        {
          goto LABEL_79;
        }
      }
    }

    else if (v62)
    {
      goto LABEL_79;
    }

    v63 = v114[7];
    v64 = *&v32[v63];
    v110 = *&v29[v63];
    v111 = v64;
    v65 = *(v64 + 16);
    if (v65 != *(v110 + 16))
    {
      goto LABEL_79;
    }

    v66 = v109;
    if (v65)
    {
      if (v111 != v110)
      {
        break;
      }
    }

LABEL_6:
    v41 = v96 + 1;
    v29 = v92;
    sub_1E4BE3004(v92, type metadata accessor for RCSService.Business.Card.Content);
    v32 = v91;
    v34 = v41;
    sub_1E4BE3004(v91, type metadata accessor for RCSService.Business.Card.Content);
    result = 1;
    v36 = v90;
    v37 = v89;
    if (v41 == v98)
    {
      return result;
    }
  }

  v67 = 0;
  v68 = (*(v115 + 80) + 32) & ~*(v115 + 80);
  v103 = v111 + v68;
  v102 = v110 + v68;
  v99 = v65;
  while (v67 < *(v111 + 16))
  {
    v69 = *(v115 + 72) * v67;
    result = sub_1E4BE6884(v103 + v69, v47, type metadata accessor for RCSService.Business.Suggestion);
    if (v67 >= *(v110 + 16))
    {
      goto LABEL_83;
    }

    v70 = v116;
    sub_1E4BE6884(v102 + v69, v116, type metadata accessor for RCSService.Business.Suggestion);
    v71 = (v117 + *(v113 + 48));
    sub_1E4BE6884(v47, v117, type metadata accessor for RCSService.Business.Suggestion);
    sub_1E4BE6884(v70, v71, type metadata accessor for RCSService.Business.Suggestion);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E4BE6884(v117, v66, type metadata accessor for RCSService.Business.Suggestion);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1E4BE3004(v66, type metadata accessor for RCSService.Business.SuggestedAction);
        goto LABEL_67;
      }

      v72 = v97;
      sub_1E4BE68EC(v71, v97, type metadata accessor for RCSService.Business.SuggestedAction);
      if ((*v66 != *v72 || v66[1] != v72[1]) && (sub_1E4BF099C() & 1) == 0)
      {
        goto LABEL_74;
      }

      v73 = v66[3];
      v74 = v72[3];
      if (v73)
      {
        if (!v74)
        {
          v88 = v66[3];
LABEL_73:

          v72 = v97;
LABEL_74:
          sub_1E4BE3004(v72, type metadata accessor for RCSService.Business.SuggestedAction);
          sub_1E4BE3004(v66, type metadata accessor for RCSService.Business.SuggestedAction);
          goto LABEL_77;
        }

        if ((v66[2] != v72[2] || v73 != v74) && (sub_1E4BF099C() & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v74)
        {
          goto LABEL_73;
        }
      }

      if ((static RCSService.Business.SuggestedAction.Action.== infix(_:_:)(v66 + *(v106 + 24), v72 + *(v106 + 24)) & 1) == 0)
      {
        goto LABEL_74;
      }

      sub_1E4BE3004(v72, type metadata accessor for RCSService.Business.SuggestedAction);
      sub_1E4BE3004(v66, type metadata accessor for RCSService.Business.SuggestedAction);
    }

    else
    {
      v75 = v38;
      v76 = v47;
      v77 = v107;
      sub_1E4BE6884(v117, v107, type metadata accessor for RCSService.Business.Suggestion);
      v79 = *v77;
      v78 = v77[1];
      v80 = v77[2];
      v81 = v77[3];
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v47 = v76;
LABEL_67:
        sub_1E4AE0AE4(v117, &qword_1ECF95758, &qword_1E4C0BDE0);
        goto LABEL_78;
      }

      v82 = *v71;
      v83 = v71[1];
      v85 = v71[2];
      v84 = v71[3];
      v86 = v79 == v82 && v78 == v83;
      if (!v86 && (sub_1E4BF099C() & 1) == 0)
      {

        v47 = v76;
        goto LABEL_76;
      }

      v47 = v76;
      if (!v81)
      {
        if (v84)
        {
LABEL_75:

          swift_bridgeObjectRelease_n();

LABEL_76:

LABEL_77:
          sub_1E4BE3004(v117, type metadata accessor for RCSService.Business.Suggestion);
LABEL_78:
          v29 = v92;
          v32 = v91;
          sub_1E4BE3004(v116, type metadata accessor for RCSService.Business.Suggestion);
          sub_1E4BE3004(v47, type metadata accessor for RCSService.Business.Suggestion);
          goto LABEL_79;
        }

        swift_bridgeObjectRelease_n();
        goto LABEL_32;
      }

      if (!v84)
      {
        goto LABEL_75;
      }

      if (v80 == v85 && v81 == v84)
      {

LABEL_32:

        v39 = v108;
        v66 = v109;
        v38 = v75;
        goto LABEL_33;
      }

      v87 = sub_1E4BF099C();

      v39 = v108;
      v66 = v109;
      v38 = v75;
      if ((v87 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

LABEL_33:
    ++v67;
    sub_1E4BE3004(v117, type metadata accessor for RCSService.Business.Suggestion);
    sub_1E4BE3004(v116, type metadata accessor for RCSService.Business.Suggestion);
    result = sub_1E4BE3004(v47, type metadata accessor for RCSService.Business.Suggestion);
    if (v99 == v67)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_1E4BC7C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 64);
  for (i = (a1 + 64); ; i += 40)
  {
    v13 = *(i - 4);
    v12 = *(i - 3);
    v15 = *(i - 2);
    v14 = *(i - 1);
    v16 = *i;
    v18 = *(v3 - 4);
    v17 = *(v3 - 3);
    v20 = *(v3 - 2);
    v19 = *(v3 - 1);
    if (*i)
    {
      break;
    }

    if (*v3)
    {
      goto LABEL_28;
    }

    if (v13 == v18 && v12 == v17)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      sub_1E4ADD6D8(*(i - 4), *(i - 3), v5, v6, 0);
      sub_1E4ADD6D8(v13, v12, v15, v14, 0);
      sub_1E4ADD764(v13, v12, v15, v14, 0);
      v7 = v13;
      v8 = v12;
      v9 = v5;
      v10 = v6;
      v11 = 0;
LABEL_6:
      sub_1E4ADD764(v7, v8, v9, v10, v11);
      goto LABEL_7;
    }

    v24 = *(v3 - 2);
    v38 = *(v3 - 1);
    v35 = sub_1E4BF099C();
    sub_1E4ADD6D8(v18, v17, v24, v38, 0);
    sub_1E4ADD6D8(v13, v12, v15, v14, 0);
    sub_1E4ADD764(v13, v12, v15, v14, 0);
    v25 = v18;
    v26 = v17;
    v27 = v24;
    v28 = v38;
    v29 = 0;
LABEL_25:
    sub_1E4ADD764(v25, v26, v27, v28, v29);
    if ((v35 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    v3 += 40;
    if (!--v2)
    {
      return 1;
    }
  }

  if (*v3)
  {
    v21 = v13 == v18 && v12 == v17;
    v36 = *(v3 - 2);
    v37 = *(v3 - 1);
    if (!v21)
    {
      v22 = sub_1E4BF099C();
      v20 = v36;
      v19 = v37;
      if ((v22 & 1) == 0)
      {
LABEL_28:
        v32 = 1;
        goto LABEL_30;
      }
    }

    if (v15 == v20 && v14 == v19)
    {
      sub_1E4ADD6D8(v18, v17, v15, v14, 1);
      sub_1E4ADD6D8(v13, v12, v15, v14, 1);
      sub_1E4ADD764(v13, v12, v15, v14, 1);
      v7 = v18;
      v8 = v17;
      v9 = v15;
      v10 = v14;
      v11 = 1;
      goto LABEL_6;
    }

    v30 = v20;
    v35 = sub_1E4BF099C();
    sub_1E4ADD6D8(v18, v17, v30, v37, 1);
    sub_1E4ADD6D8(v13, v12, v15, v14, 1);
    sub_1E4ADD764(v13, v12, v15, v14, 1);
    v25 = v18;
    v26 = v17;
    v27 = v36;
    v28 = v37;
    v29 = 1;
    goto LABEL_25;
  }

  v32 = 0;
LABEL_30:
  v33 = v20;
  v34 = v19;
  sub_1E4ADD6D8(v18, v17, v20, v19, v32);
  sub_1E4ADD6D8(v13, v12, v15, v14, v16);
  sub_1E4ADD764(v13, v12, v15, v14, v16);
  sub_1E4ADD764(v18, v17, v33, v34, v32);
  return 0;
}

uint64_t sub_1E4BC8038(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t *a4, uint64_t *a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v23 - v18;
  v20 = *(v5 + 16);
  os_unfair_lock_lock((v20 + 24));
  sub_1E4BC9128((v20 + 16), a1, a3, a4, a5, v14);
  os_unfair_lock_unlock((v20 + 24));
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1E4AE0AE4(v14, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  (*(v16 + 32))(v19, v14, v15);
  v23[0] = a2;
  v22 = a2;
  sub_1E4BF01AC();
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1E4BC8228(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  v22[0] = a1;
  v22[1] = a2;
  v16 = *(v3 + 16);
  v20 = v22;
  os_unfair_lock_lock(v16 + 6);
  sub_1E4B84E24(v10);
  os_unfair_lock_unlock(v16 + 6);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1E4AE0AE4(v10, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  (*(v12 + 32))(v15, v10, v11);
  v21 = a3;
  v18 = a3;
  sub_1E4BF01AC();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1E4BC8408(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F70, &unk_1E4C0E850);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944F8, &qword_1E4C05508);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  v22[0] = a1;
  v22[1] = a2;
  v16 = *(v3 + 16);
  v20 = v22;
  os_unfair_lock_lock(v16 + 6);
  sub_1E4B84DC8(v10);
  os_unfair_lock_unlock(v16 + 6);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1E4AE0AE4(v10, &qword_1ECF95F70, &unk_1E4C0E850);
  }

  (*(v12 + 32))(v15, v10, v11);
  v21 = a3;
  v18 = a3;
  sub_1E4BF01AC();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1E4BC85E8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F18, &qword_1E4C0E7F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944D0, &qword_1E4C0E800);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  v22[0] = a1;
  v22[1] = a2;
  v16 = *(v3 + 16);
  v20 = v22;
  os_unfair_lock_lock(v16 + 6);
  sub_1E4B84CB8(v10);
  os_unfair_lock_unlock(v16 + 6);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1E4AE0AE4(v10, &qword_1ECF95F18, &qword_1E4C0E7F8);
  }

  (*(v12 + 32))(v15, v10, v11);
  v21 = a3;
  v18 = a3;
  sub_1E4BF01AC();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1E4BC87C8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EF8, &unk_1E4C0E7C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944C0, &unk_1E4C18C50);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  v22[0] = a1;
  v22[1] = a2;
  v16 = *(v3 + 16);
  v20 = v22;
  os_unfair_lock_lock(v16 + 6);
  sub_1E4B84B84(v10);
  os_unfair_lock_unlock(v16 + 6);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1E4AE0AE4(v10, &qword_1ECF95EF8, &unk_1E4C0E7C0);
  }

  (*(v12 + 32))(v15, v10, v11);
  v21 = a3;
  v18 = a3;
  sub_1E4BF01AC();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1E4BC89A8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  v22[0] = a1;
  v22[1] = a2;
  v16 = *(v3 + 16);
  v20 = v22;
  os_unfair_lock_lock(v16 + 6);
  sub_1E4BE5A7C(v10);
  os_unfair_lock_unlock(v16 + 6);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1E4AE0AE4(v10, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  (*(v12 + 32))(v15, v10, v11);
  v21 = a3;
  v18 = a3;
  sub_1E4BF01AC();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1E4BC8B88(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F08, &unk_1E4C0E7E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944A0, &qword_1E4C054A8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  v22[0] = a1;
  v22[1] = a2;
  v16 = *(v3 + 16);
  v20 = v22;
  os_unfair_lock_lock(v16 + 6);
  sub_1E4B84C50(v10);
  os_unfair_lock_unlock(v16 + 6);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1E4AE0AE4(v10, &qword_1ECF95F08, &unk_1E4C0E7E0);
  }

  (*(v12 + 32))(v15, v10, v11);
  v21 = a3;
  v18 = a3;
  sub_1E4BF01AC();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1E4BC8D68(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F00, &unk_1E4C0E7D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94490, &unk_1E4C18C00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  v22[0] = a1;
  v22[1] = a2;
  v16 = *(v3 + 16);
  v20 = v22;
  os_unfair_lock_lock(v16 + 6);
  sub_1E4B84C18(v10);
  os_unfair_lock_unlock(v16 + 6);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1E4AE0AE4(v10, &qword_1ECF95F00, &unk_1E4C0E7D0);
  }

  (*(v12 + 32))(v15, v10, v11);
  v21 = a3;
  v18 = a3;
  sub_1E4BF01AC();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1E4BC8F48(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E50, &qword_1E4C0E6E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94450, qword_1E4C0E6F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  v22[0] = a1;
  v22[1] = a2;
  v16 = *(v3 + 16);
  v20 = v22;
  os_unfair_lock_lock(v16 + 6);
  sub_1E4B843A4(v10);
  os_unfair_lock_unlock(v16 + 6);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1E4AE0AE4(v10, &qword_1ECF95E50, &qword_1E4C0E6E8);
  }

  (*(v12 + 32))(v15, v10, v11);
  v21 = a3;
  v18 = a3;
  sub_1E4BF01AC();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1E4BC9128@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = a3(a2);
  if (v12)
  {
    v13 = v11;
    v14 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    v22 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4BDF740(a4, a5);
      v16 = v22;
    }

    v17 = *(v16 + 56);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    v19 = *(v18 - 8);
    (*(v19 + 32))(a6, v17 + *(v19 + 72) * v13, v18);
    sub_1E4BDEF9C(v13, v16);
    *a1 = v16;
    return (*(v19 + 56))(a6, 0, 1, v18);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    return (*(*(v21 - 8) + 56))(a6, 1, 1, v21);
  }
}

uint64_t sub_1E4BC92C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v34[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34[-v15];
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v18 = sub_1E4B8EFD0(a2);
    if (v19)
    {
      (*(v10 + 16))(v14, *(v17 + 56) + *(v10 + 72) * v18, v9);
      (*(v10 + 32))(v16, v14, v9);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v20 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v20, qword_1ECF940C8);
      v21 = sub_1E4BEFB5C();
      v22 = sub_1E4BF04BC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v36 = v23;
        v37 = swift_slowAlloc();
        v40 = v37;
        *v23 = 136315138;
        v39 = a2;
        v24 = sub_1E4BEFF0C();
        v26 = sub_1E4B30548(v24, v25, &v40);
        v35 = v22;
        v27 = a2;
        v28 = v26;

        v29 = v36;
        *(v36 + 1) = v28;
        a2 = v27;
        v30 = v29;
        _os_log_impl(&dword_1E4AD3000, v21, v35, "Found existing continuation with ID %s, cancelling", v29, 0xCu);
        v31 = v37;
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1E6921800](v31, -1, -1);
        MEMORY[0x1E6921800](v30, -1, -1);
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550]);
      v32 = swift_allocError();
      sub_1E4BEFD9C();
      v40 = v32;
      sub_1E4BF01AC();
      (*(v10 + 8))(v16, v9);
    }
  }

  (*(v10 + 16))(v8, v38, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  return sub_1E4BCBC14(v8, a2, sub_1E4B31790, sub_1E4B8EFD0, &qword_1ECF94608, &qword_1E4C18D20);
}

uint64_t sub_1E4BC96B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v34[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34[-v15];
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v18 = sub_1E4B8EFD0(a2);
    if (v19)
    {
      (*(v10 + 16))(v14, *(v17 + 56) + *(v10 + 72) * v18, v9);
      (*(v10 + 32))(v16, v14, v9);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v20 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v20, qword_1ECF940C8);
      v21 = sub_1E4BEFB5C();
      v22 = sub_1E4BF04BC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v36 = v23;
        v37 = swift_slowAlloc();
        v40 = v37;
        *v23 = 136315138;
        v39 = a2;
        v24 = sub_1E4BEFF0C();
        v26 = sub_1E4B30548(v24, v25, &v40);
        v35 = v22;
        v27 = a2;
        v28 = v26;

        v29 = v36;
        *(v36 + 1) = v28;
        a2 = v27;
        v30 = v29;
        _os_log_impl(&dword_1E4AD3000, v21, v35, "Found existing continuation with ID %s, cancelling", v29, 0xCu);
        v31 = v37;
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1E6921800](v31, -1, -1);
        MEMORY[0x1E6921800](v30, -1, -1);
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550]);
      v32 = swift_allocError();
      sub_1E4BEFD9C();
      v40 = v32;
      sub_1E4BF01AC();
      (*(v10 + 8))(v16, v9);
    }
  }

  (*(v10 + 16))(v8, v38, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  return sub_1E4BCBC14(v8, a2, sub_1E4B31BB4, sub_1E4B8EFD0, &qword_1ECF94558, &unk_1E4C05570);
}

uint64_t sub_1E4BC9AA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = *a1;
  if (*(*a1 + 16))
  {
    v20 = sub_1E4B8EFD4(a2, a3);
    if (v21)
    {
      v38 = a1;
      v39 = a2;
      (*(v12 + 16))(v16, *(v19 + 56) + *(v12 + 72) * v20, v11);
      (*(v12 + 32))(v18, v16, v11);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v22 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v22, qword_1ECF940C8);

      v23 = sub_1E4BEFB5C();
      v24 = sub_1E4BF04BC();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v39;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v36 = v27;
        v37 = swift_slowAlloc();
        v43 = v37;
        *v27 = 136315138;
        v41 = v26;
        v42 = a3;
        v28 = sub_1E4BEFF0C();
        v30 = sub_1E4B30548(v28, v29, &v43);

        v31 = v36;
        *(v36 + 1) = v30;
        v32 = v31;
        _os_log_impl(&dword_1E4AD3000, v23, v24, "Found existing continuation with ID %s, cancelling", v31, 0xCu);
        v33 = v37;
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1E6921800](v33, -1, -1);
        MEMORY[0x1E6921800](v32, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550]);
      v34 = swift_allocError();
      sub_1E4BEFD9C();
      v41 = v34;
      sub_1E4BF01AC();
      (*(v12 + 8))(v18, v11);
      a2 = v39;
    }
  }

  (*(v12 + 16))(v10, v40, v11);
  (*(v12 + 56))(v10, 0, 1, v11);

  return sub_1E4BCBE94(v10, a2, a3);
}

uint64_t sub_1E4BC9E84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F70, &unk_1E4C0E850);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944F8, &qword_1E4C05508);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = *a1;
  if (*(*a1 + 16))
  {
    v20 = sub_1E4B8EFD4(a2, a3);
    if (v21)
    {
      v38 = a1;
      v39 = a2;
      (*(v12 + 16))(v16, *(v19 + 56) + *(v12 + 72) * v20, v11);
      (*(v12 + 32))(v18, v16, v11);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v22 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v22, qword_1ECF940C8);

      v23 = sub_1E4BEFB5C();
      v24 = sub_1E4BF04BC();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v39;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v36 = v27;
        v37 = swift_slowAlloc();
        v43 = v37;
        *v27 = 136315138;
        v41 = v26;
        v42 = a3;
        v28 = sub_1E4BEFF0C();
        v30 = sub_1E4B30548(v28, v29, &v43);

        v31 = v36;
        *(v36 + 1) = v30;
        v32 = v31;
        _os_log_impl(&dword_1E4AD3000, v23, v24, "Found existing continuation with ID %s, cancelling", v31, 0xCu);
        v33 = v37;
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1E6921800](v33, -1, -1);
        MEMORY[0x1E6921800](v32, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550]);
      v34 = swift_allocError();
      sub_1E4BEFD9C();
      v41 = v34;
      sub_1E4BF01AC();
      (*(v12 + 8))(v18, v11);
      a2 = v39;
    }
  }

  (*(v12 + 16))(v10, v40, v11);
  (*(v12 + 56))(v10, 0, 1, v11);

  return sub_1E4BCC074(v10, a2, a3);
}

uint64_t sub_1E4BCA268(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F18, &qword_1E4C0E7F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944D0, &qword_1E4C0E800);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = *a1;
  if (*(*a1 + 16))
  {
    v20 = sub_1E4B8EFD4(a2, a3);
    if (v21)
    {
      v38 = a1;
      v39 = a2;
      (*(v12 + 16))(v16, *(v19 + 56) + *(v12 + 72) * v20, v11);
      (*(v12 + 32))(v18, v16, v11);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v22 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v22, qword_1ECF940C8);

      v23 = sub_1E4BEFB5C();
      v24 = sub_1E4BF04BC();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v39;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v36 = v27;
        v37 = swift_slowAlloc();
        v43 = v37;
        *v27 = 136315138;
        v41 = v26;
        v42 = a3;
        v28 = sub_1E4BEFF0C();
        v30 = sub_1E4B30548(v28, v29, &v43);

        v31 = v36;
        *(v36 + 1) = v30;
        v32 = v31;
        _os_log_impl(&dword_1E4AD3000, v23, v24, "Found existing continuation with ID %s, cancelling", v31, 0xCu);
        v33 = v37;
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1E6921800](v33, -1, -1);
        MEMORY[0x1E6921800](v32, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550]);
      v34 = swift_allocError();
      sub_1E4BEFD9C();
      v41 = v34;
      sub_1E4BF01AC();
      (*(v12 + 8))(v18, v11);
      a2 = v39;
    }
  }

  (*(v12 + 16))(v10, v40, v11);
  (*(v12 + 56))(v10, 0, 1, v11);

  return sub_1E4BCC254(v10, a2, a3);
}

uint64_t sub_1E4BCA64C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EF8, &unk_1E4C0E7C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944C0, &unk_1E4C18C50);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = *a1;
  if (*(*a1 + 16))
  {
    v20 = sub_1E4B8EFD4(a2, a3);
    if (v21)
    {
      v38 = a1;
      v39 = a2;
      (*(v12 + 16))(v16, *(v19 + 56) + *(v12 + 72) * v20, v11);
      (*(v12 + 32))(v18, v16, v11);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v22 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v22, qword_1ECF940C8);

      v23 = sub_1E4BEFB5C();
      v24 = sub_1E4BF04BC();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v39;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v36 = v27;
        v37 = swift_slowAlloc();
        v43 = v37;
        *v27 = 136315138;
        v41 = v26;
        v42 = a3;
        v28 = sub_1E4BEFF0C();
        v30 = sub_1E4B30548(v28, v29, &v43);

        v31 = v36;
        *(v36 + 1) = v30;
        v32 = v31;
        _os_log_impl(&dword_1E4AD3000, v23, v24, "Found existing continuation with ID %s, cancelling", v31, 0xCu);
        v33 = v37;
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1E6921800](v33, -1, -1);
        MEMORY[0x1E6921800](v32, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550]);
      v34 = swift_allocError();
      sub_1E4BEFD9C();
      v41 = v34;
      sub_1E4BF01AC();
      (*(v12 + 8))(v18, v11);
      a2 = v39;
    }
  }

  (*(v12 + 16))(v10, v40, v11);
  (*(v12 + 56))(v10, 0, 1, v11);

  return sub_1E4BCC434(v10, a2, a3);
}

uint64_t sub_1E4BCAA30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = *a1;
  if (*(*a1 + 16))
  {
    v20 = sub_1E4B8EFD4(a2, a3);
    if (v21)
    {
      v38 = a1;
      v39 = a2;
      (*(v12 + 16))(v16, *(v19 + 56) + *(v12 + 72) * v20, v11);
      (*(v12 + 32))(v18, v16, v11);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v22 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v22, qword_1ECF940C8);

      v23 = sub_1E4BEFB5C();
      v24 = sub_1E4BF04BC();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v39;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v36 = v27;
        v37 = swift_slowAlloc();
        v43 = v37;
        *v27 = 136315138;
        v41 = v26;
        v42 = a3;
        v28 = sub_1E4BEFF0C();
        v30 = sub_1E4B30548(v28, v29, &v43);

        v31 = v36;
        *(v36 + 1) = v30;
        v32 = v31;
        _os_log_impl(&dword_1E4AD3000, v23, v24, "Found existing continuation with ID %s, cancelling", v31, 0xCu);
        v33 = v37;
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1E6921800](v33, -1, -1);
        MEMORY[0x1E6921800](v32, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550]);
      v34 = swift_allocError();
      sub_1E4BEFD9C();
      v41 = v34;
      sub_1E4BF01AC();
      (*(v12 + 8))(v18, v11);
      a2 = v39;
    }
  }

  (*(v12 + 16))(v10, v40, v11);
  (*(v12 + 56))(v10, 0, 1, v11);

  return sub_1E4BCC614(v10, a2, a3);
}

uint64_t sub_1E4BCAE14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F08, &unk_1E4C0E7E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944A0, &qword_1E4C054A8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = *a1;
  if (*(*a1 + 16))
  {
    v20 = sub_1E4B8EFD4(a2, a3);
    if (v21)
    {
      v38 = a1;
      v39 = a2;
      (*(v12 + 16))(v16, *(v19 + 56) + *(v12 + 72) * v20, v11);
      (*(v12 + 32))(v18, v16, v11);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v22 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v22, qword_1ECF940C8);

      v23 = sub_1E4BEFB5C();
      v24 = sub_1E4BF04BC();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v39;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v36 = v27;
        v37 = swift_slowAlloc();
        v43 = v37;
        *v27 = 136315138;
        v41 = v26;
        v42 = a3;
        v28 = sub_1E4BEFF0C();
        v30 = sub_1E4B30548(v28, v29, &v43);

        v31 = v36;
        *(v36 + 1) = v30;
        v32 = v31;
        _os_log_impl(&dword_1E4AD3000, v23, v24, "Found existing continuation with ID %s, cancelling", v31, 0xCu);
        v33 = v37;
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1E6921800](v33, -1, -1);
        MEMORY[0x1E6921800](v32, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550]);
      v34 = swift_allocError();
      sub_1E4BEFD9C();
      v41 = v34;
      sub_1E4BF01AC();
      (*(v12 + 8))(v18, v11);
      a2 = v39;
    }
  }

  (*(v12 + 16))(v10, v40, v11);
  (*(v12 + 56))(v10, 0, 1, v11);

  return sub_1E4BCC7F4(v10, a2, a3);
}

uint64_t sub_1E4BCB1F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F00, &unk_1E4C0E7D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94490, &unk_1E4C18C00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = *a1;
  if (*(*a1 + 16))
  {
    v20 = sub_1E4B8EFD4(a2, a3);
    if (v21)
    {
      v38 = a1;
      v39 = a2;
      (*(v12 + 16))(v16, *(v19 + 56) + *(v12 + 72) * v20, v11);
      (*(v12 + 32))(v18, v16, v11);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v22 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v22, qword_1ECF940C8);

      v23 = sub_1E4BEFB5C();
      v24 = sub_1E4BF04BC();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v39;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v36 = v27;
        v37 = swift_slowAlloc();
        v43 = v37;
        *v27 = 136315138;
        v41 = v26;
        v42 = a3;
        v28 = sub_1E4BEFF0C();
        v30 = sub_1E4B30548(v28, v29, &v43);

        v31 = v36;
        *(v36 + 1) = v30;
        v32 = v31;
        _os_log_impl(&dword_1E4AD3000, v23, v24, "Found existing continuation with ID %s, cancelling", v31, 0xCu);
        v33 = v37;
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1E6921800](v33, -1, -1);
        MEMORY[0x1E6921800](v32, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550]);
      v34 = swift_allocError();
      sub_1E4BEFD9C();
      v41 = v34;
      sub_1E4BF01AC();
      (*(v12 + 8))(v18, v11);
      a2 = v39;
    }
  }

  (*(v12 + 16))(v10, v40, v11);
  (*(v12 + 56))(v10, 0, 1, v11);

  return sub_1E4BCC9D4(v10, a2, a3);
}

uint64_t sub_1E4BCB5DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E50, &qword_1E4C0E6E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94450, qword_1E4C0E6F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = *a1;
  if (*(*a1 + 16))
  {
    v20 = sub_1E4B8EFD4(a2, a3);
    if (v21)
    {
      v38 = a1;
      v39 = a2;
      (*(v12 + 16))(v16, *(v19 + 56) + *(v12 + 72) * v20, v11);
      (*(v12 + 32))(v18, v16, v11);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v22 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v22, qword_1ECF940C8);

      v23 = sub_1E4BEFB5C();
      v24 = sub_1E4BF04BC();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v39;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v36 = v27;
        v37 = swift_slowAlloc();
        v43 = v37;
        *v27 = 136315138;
        v41 = v26;
        v42 = a3;
        v28 = sub_1E4BEFF0C();
        v30 = sub_1E4B30548(v28, v29, &v43);

        v31 = v36;
        *(v36 + 1) = v30;
        v32 = v31;
        _os_log_impl(&dword_1E4AD3000, v23, v24, "Found existing continuation with ID %s, cancelling", v31, 0xCu);
        v33 = v37;
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1E6921800](v33, -1, -1);
        MEMORY[0x1E6921800](v32, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550]);
      v34 = swift_allocError();
      sub_1E4BEFD9C();
      v41 = v34;
      sub_1E4BF01AC();
      (*(v12 + 8))(v18, v11);
      a2 = v39;
    }
  }

  (*(v12 + 16))(v10, v40, v11);
  (*(v12 + 56))(v10, 0, 1, v11);

  return sub_1E4BCCBB4(v10, a2, a3);
}

uint64_t sub_1E4BCB9C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94368, &qword_1E4C04A30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for MMSMessage(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF94368, &qword_1E4C04A30);
    v15 = *v3;
    v16 = sub_1E4B8EFD0(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E4BDF394();
        v21 = v26;
      }

      sub_1E4BE68EC(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for MMSMessage);
      sub_1E4BDEDCC(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1E4AE0AE4(v9, &qword_1ECF94368, &qword_1E4C04A30);
  }

  else
  {
    sub_1E4BE68EC(a1, v14, type metadata accessor for MMSMessage);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1E4B31908(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1E4BCBC14(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t), uint64_t *a5, uint64_t *a6)
{
  v32 = a6;
  v10 = v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v32 - v20;
  if ((*(v18 + 48))(a1, 1, v17) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95EC0, &unk_1E4C0E780);
    v22 = *v10;
    v23 = a4(a2);
    if (v24)
    {
      v25 = v23;
      v26 = *v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *v10;
      v33 = *v10;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E4BDF740(a5, v32);
        v28 = v33;
      }

      (*(v18 + 32))(v16, *(v28 + 56) + *(v18 + 72) * v25, v17);
      sub_1E4BDEF9C(v25, v28);
      *v10 = v28;
      (*(v18 + 56))(v16, 0, 1, v17);
    }

    else
    {
      (*(v18 + 56))(v16, 1, 1, v17);
    }

    return sub_1E4AE0AE4(v16, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  else
  {
    (*(v18 + 32))(v21, a1, v17);
    v29 = *v10;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v10;
    result = a3(v21, a2, v30);
    *v10 = v33;
  }

  return result;
}

uint64_t sub_1E4BCBE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95EC0, &unk_1E4C0E780);
    sub_1E4BDDFCC(v10);

    return sub_1E4AE0AE4(v10, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E4B31D2C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E4BCC074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F70, &unk_1E4C0E850);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944F8, &qword_1E4C05508);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95F70, &unk_1E4C0E850);
    sub_1E4BDE18C(v10);

    return sub_1E4AE0AE4(v10, &qword_1ECF95F70, &unk_1E4C0E850);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E4B31EE8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E4BCC254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F18, &qword_1E4C0E7F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944D0, &qword_1E4C0E800);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95F18, &qword_1E4C0E7F8);
    sub_1E4BDE34C(v10);

    return sub_1E4AE0AE4(v10, &qword_1ECF95F18, &qword_1E4C0E7F8);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E4B320A4(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E4BCC434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EF8, &unk_1E4C0E7C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944C0, &unk_1E4C18C50);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95EF8, &unk_1E4C0E7C0);
    sub_1E4BDE50C(v10);

    return sub_1E4AE0AE4(v10, &qword_1ECF95EF8, &unk_1E4C0E7C0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E4B32260(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E4BCC614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95EC0, &unk_1E4C0E780);
    sub_1E4BDE6CC(v10);

    return sub_1E4AE0AE4(v10, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E4B3241C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E4BCC7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F08, &unk_1E4C0E7E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944A0, &qword_1E4C054A8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95F08, &unk_1E4C0E7E0);
    sub_1E4BDE88C(v10);

    return sub_1E4AE0AE4(v10, &qword_1ECF95F08, &unk_1E4C0E7E0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E4B325D8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E4BCC9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F00, &unk_1E4C0E7D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94490, &unk_1E4C18C00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95F00, &unk_1E4C0E7D0);
    sub_1E4BDEA4C(v10);

    return sub_1E4AE0AE4(v10, &qword_1ECF95F00, &unk_1E4C0E7D0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E4B32794(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E4BCCBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E50, &qword_1E4C0E6E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94450, qword_1E4C0E6F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95E50, &qword_1E4C0E6E8);
    sub_1E4BDEC0C(v10);

    return sub_1E4AE0AE4(v10, &qword_1ECF95E50, &qword_1E4C0E6E8);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E4B32950(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E4BCCD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a3;
  v5[4] = a1;
  v5[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BCCDBC, 0, 0);
}

uint64_t sub_1E4BCCDBC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1E4BCCEC0;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 80, 0, 0, 0xD000000000000014, 0x80000001E4BF1B10, sub_1E4BE5964, v2, v6);
}

uint64_t sub_1E4BCCEC0()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BCD000, 0, 0);
  }

  else
  {
    v4 = *(v3 + 56);

    v5 = *(v3 + 80);
    v6 = *(v3 + 8);

    return v6(v5);
  }
}

uint64_t sub_1E4BCD000()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2(0);
}

uint64_t sub_1E4BCD068(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18[-v12];
  v21 = a3;
  v14 = *(a2 + 16);
  v19 = &v21;
  v20 = a1;
  os_unfair_lock_lock((v14 + 24));
  sub_1E4BE673C((v14 + 16));
  os_unfair_lock_unlock((v14 + 24));
  v15 = sub_1E4BF01FC();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;

  sub_1E4BA8E24(0, 0, v13, &unk_1E4C18D30, v16);
}

uint64_t sub_1E4BCD1D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18[-v12];
  v21 = a3;
  v14 = *(a2 + 16);
  v19 = &v21;
  v20 = a1;
  os_unfair_lock_lock((v14 + 24));
  sub_1E4BE663C((v14 + 16));
  os_unfair_lock_unlock((v14 + 24));
  v15 = sub_1E4BF01FC();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;

  sub_1E4BA8E24(0, 0, v13, &unk_1E4C18D00, v16);
}

uint64_t sub_1E4BCD348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20[-v14];
  v23[0] = a3;
  v23[1] = a4;
  v16 = *(a2 + 16);
  v21 = v23;
  v22 = a1;
  os_unfair_lock_lock((v16 + 24));
  sub_1E4BE64EC((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
  v17 = sub_1E4BF01FC();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;

  sub_1E4BA8E24(0, 0, v15, &unk_1E4C18CE8, v18);
}

uint64_t sub_1E4BCD4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20[-v14];
  v23[0] = a3;
  v23[1] = a4;
  v16 = *(a2 + 16);
  v21 = v23;
  v22 = a1;
  os_unfair_lock_lock((v16 + 24));
  sub_1E4BE62C0((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
  v17 = sub_1E4BF01FC();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;

  sub_1E4BA8E24(0, 0, v15, &unk_1E4C18CC0, v18);
}

uint64_t sub_1E4BCD650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20[-v14];
  v23[0] = a3;
  v23[1] = a4;
  v16 = *(a2 + 16);
  v21 = v23;
  v22 = a1;
  os_unfair_lock_lock((v16 + 24));
  sub_1E4BE61A8((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
  v17 = sub_1E4BF01FC();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;

  sub_1E4BA8E24(0, 0, v15, &unk_1E4C18CA8, v18);
}

uint64_t sub_1E4BCD7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20[-v14];
  v23[0] = a3;
  v23[1] = a4;
  v16 = *(a2 + 16);
  v21 = v23;
  v22 = a1;
  os_unfair_lock_lock((v16 + 24));
  sub_1E4BE5DF8((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
  v17 = sub_1E4BF01FC();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;

  sub_1E4BA8E24(0, 0, v15, &unk_1E4C18C68, v18);
}

uint64_t sub_1E4BCD958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20[-v14];
  v23[0] = a3;
  v23[1] = a4;
  v16 = *(a2 + 16);
  v21 = v23;
  v22 = a1;
  os_unfair_lock_lock((v16 + 24));
  sub_1E4BE5CE0((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
  v17 = sub_1E4BF01FC();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;

  sub_1E4BA8E24(0, 0, v15, &unk_1E4C18C40, v18);
}

uint64_t sub_1E4BCDADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20[-v14];
  v23[0] = a3;
  v23[1] = a4;
  v16 = *(a2 + 16);
  v21 = v23;
  v22 = a1;
  os_unfair_lock_lock((v16 + 24));
  sub_1E4BE5BC8((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
  v17 = sub_1E4BF01FC();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;

  sub_1E4BA8E24(0, 0, v15, &unk_1E4C18C30, v18);
}

uint64_t sub_1E4BCDC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20[-v14];
  v23[0] = a3;
  v23[1] = a4;
  v16 = *(a2 + 16);
  v21 = v23;
  v22 = a1;
  os_unfair_lock_lock((v16 + 24));
  sub_1E4BE5AB0((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
  v17 = sub_1E4BF01FC();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;

  sub_1E4BA8E24(0, 0, v15, &unk_1E4C18C18, v18);
}

uint64_t sub_1E4BCDDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20[-v14];
  v23[0] = a3;
  v23[1] = a4;
  v16 = *(a2 + 16);
  v21 = v23;
  v22 = a1;
  os_unfair_lock_lock((v16 + 24));
  sub_1E4BE597C((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
  v17 = sub_1E4BF01FC();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;

  sub_1E4BA8E24(0, 0, v15, &unk_1E4C18BF8, v18);
}

uint64_t sub_1E4BCDF68()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF97928);
  v1 = __swift_project_value_buffer(v0, qword_1ECF97928);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1E4BCE044(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6C616E7265746E69;
    v6 = 0x646E756F46746F6ELL;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7261726F706D6574;
    if (a1 != 5)
    {
      v7 = 0x6E656E616D726570;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4164696C61766E69;
    v2 = 0x676E69646F636564;
    v3 = 0x6F70707553746F6ELL;
    if (a1 != 3)
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E4BCE1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BE2AB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BCE204(uint64_t a1)
{
  v2 = sub_1E4BCF098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE240(uint64_t a1)
{
  v2 = sub_1E4BCF098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE27C(uint64_t a1)
{
  v2 = sub_1E4BCF338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE2B8(uint64_t a1)
{
  v2 = sub_1E4BCF338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE2F4(uint64_t a1)
{
  v2 = sub_1E4BCF194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE330(uint64_t a1)
{
  v2 = sub_1E4BCF194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE36C(uint64_t a1)
{
  v2 = sub_1E4BCF38C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE3A8(uint64_t a1)
{
  v2 = sub_1E4BCF38C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE3E4(uint64_t a1)
{
  v2 = sub_1E4BCF0EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE420(uint64_t a1)
{
  v2 = sub_1E4BCF0EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE45C(uint64_t a1)
{
  v2 = sub_1E4BCF140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE498(uint64_t a1)
{
  v2 = sub_1E4BCF140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE4D4(uint64_t a1)
{
  v2 = sub_1E4BCF2E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE510(uint64_t a1)
{
  v2 = sub_1E4BCF2E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE54C(uint64_t a1)
{
  v2 = sub_1E4BCF1E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE588(uint64_t a1)
{
  v2 = sub_1E4BCF1E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE5C4(uint64_t a1)
{
  v2 = sub_1E4BCF3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE600(uint64_t a1)
{
  v2 = sub_1E4BCF3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE63C(uint64_t a1)
{
  v2 = sub_1E4BCF23C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE678(uint64_t a1)
{
  v2 = sub_1E4BCF23C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE6B4(uint64_t a1)
{
  v2 = sub_1E4BCF290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE6F0(uint64_t a1)
{
  v2 = sub_1E4BCF290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97940, &qword_1E4C17BB0);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97948, &qword_1E4C17BB8);
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97950, &qword_1E4C17BC0);
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97958, &qword_1E4C17BC8);
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97960, &qword_1E4C17BD0);
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97968, &qword_1E4C17BD8);
  v61 = *(v18 - 8);
  v62 = v18;
  v19 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v51 - v20;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97970, &qword_1E4C17BE0);
  v58 = *(v59 - 8);
  v21 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v51 - v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97978, &qword_1E4C17BE8);
  v55 = *(v56 - 8);
  v23 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v51 - v24;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97980, &qword_1E4C17BF0);
  v52 = *(v53 - 8);
  v25 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v27 = &v51 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97988, &qword_1E4C17BF8);
  v51 = *(v28 - 8);
  v29 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v51 - v30;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97990, &qword_1E4C17C00);
  v32 = *(v79 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v35 = &v51 - v34;
  v36 = *v1;
  v37 = a1;
  v39 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(v37, v39);
  sub_1E4BCF098();
  v78 = v35;
  sub_1E4BF0ACC();
  v40 = (v32 + 8);
  if (v36 > 4)
  {
    if (v36 <= 6)
    {
      if (v36 == 5)
      {
        v85 = 5;
        sub_1E4BCF23C();
        v44 = v63;
        v42 = v78;
        v43 = v79;
        sub_1E4BF08BC();
        v46 = v64;
        v45 = v65;
      }

      else
      {
        v86 = 6;
        sub_1E4BCF1E8();
        v44 = v66;
        v42 = v78;
        v43 = v79;
        sub_1E4BF08BC();
        v46 = v67;
        v45 = v68;
      }
    }

    else if (v36 == 7)
    {
      v87 = 7;
      sub_1E4BCF194();
      v44 = v69;
      v42 = v78;
      v43 = v79;
      sub_1E4BF08BC();
      v46 = v70;
      v45 = v71;
    }

    else if (v36 == 8)
    {
      v88 = 8;
      sub_1E4BCF140();
      v44 = v72;
      v42 = v78;
      v43 = v79;
      sub_1E4BF08BC();
      v46 = v73;
      v45 = v74;
    }

    else
    {
      v89 = 9;
      sub_1E4BCF0EC();
      v44 = v75;
      v42 = v78;
      v43 = v79;
      sub_1E4BF08BC();
      v46 = v76;
      v45 = v77;
    }

    goto LABEL_20;
  }

  if (v36 > 1)
  {
    if (v36 == 2)
    {
      v82 = 2;
      sub_1E4BCF338();
      v47 = v54;
      v42 = v78;
      v43 = v79;
      sub_1E4BF08BC();
      (*(v55 + 8))(v47, v56);
      return (*v40)(v42, v43);
    }

    if (v36 == 3)
    {
      v83 = 3;
      sub_1E4BCF2E4();
      v41 = v57;
      v42 = v78;
      v43 = v79;
      sub_1E4BF08BC();
      (*(v58 + 8))(v41, v59);
      return (*v40)(v42, v43);
    }

    v84 = 4;
    sub_1E4BCF290();
    v44 = v60;
    v42 = v78;
    v43 = v79;
    sub_1E4BF08BC();
    v46 = v61;
    v45 = v62;
LABEL_20:
    (*(v46 + 8))(v44, v45);
    return (*v40)(v42, v43);
  }

  if (v36)
  {
    v81 = 1;
    sub_1E4BCF38C();
    v48 = v78;
    v49 = v79;
    sub_1E4BF08BC();
    (*(v52 + 8))(v27, v53);
    return (*v40)(v48, v49);
  }

  v80 = 0;
  sub_1E4BCF3E0();
  v42 = v78;
  v43 = v79;
  sub_1E4BF08BC();
  (*(v51 + 8))(v31, v28);
  return (*v40)(v42, v43);
}

unint64_t sub_1E4BCF098()
{
  result = qword_1ECF97998;
  if (!qword_1ECF97998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97998);
  }

  return result;
}

unint64_t sub_1E4BCF0EC()
{
  result = qword_1ECF979A0;
  if (!qword_1ECF979A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF979A0);
  }

  return result;
}

unint64_t sub_1E4BCF140()
{
  result = qword_1ECF979A8;
  if (!qword_1ECF979A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF979A8);
  }

  return result;
}

unint64_t sub_1E4BCF194()
{
  result = qword_1ECF979B0;
  if (!qword_1ECF979B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF979B0);
  }

  return result;
}

unint64_t sub_1E4BCF1E8()
{
  result = qword_1ECF979B8;
  if (!qword_1ECF979B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF979B8);
  }

  return result;
}

unint64_t sub_1E4BCF23C()
{
  result = qword_1ECF979C0;
  if (!qword_1ECF979C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF979C0);
  }

  return result;
}

unint64_t sub_1E4BCF290()
{
  result = qword_1ECF979C8;
  if (!qword_1ECF979C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF979C8);
  }

  return result;
}

unint64_t sub_1E4BCF2E4()
{
  result = qword_1ECF979D0;
  if (!qword_1ECF979D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF979D0);
  }

  return result;
}

unint64_t sub_1E4BCF338()
{
  result = qword_1ECF979D8;
  if (!qword_1ECF979D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF979D8);
  }

  return result;
}

unint64_t sub_1E4BCF38C()
{
  result = qword_1ECF979E0;
  if (!qword_1ECF979E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF979E0);
  }

  return result;
}

unint64_t sub_1E4BCF3E0()
{
  result = qword_1ECF979E8;
  if (!qword_1ECF979E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF979E8);
  }

  return result;
}

uint64_t RCSService.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t RCSService.Error.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF979F0, &qword_1E4C17C08);
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF979F8, &qword_1E4C17C10);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v88 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97A00, &qword_1E4C17C18);
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v64 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97A08, &qword_1E4C17C20);
  v78 = *(v79 - 8);
  v12 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v93 = &v64 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97A10, &qword_1E4C17C28);
  v76 = *(v77 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v92 = &v64 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97A18, &qword_1E4C17C30);
  v75 = *(v74 - 8);
  v16 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v91 = &v64 - v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97A20, &qword_1E4C17C38);
  v72 = *(v73 - 8);
  v18 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v86 = &v64 - v19;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97A28, &qword_1E4C17C40);
  v70 = *(v71 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v90 = &v64 - v21;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97A30, &qword_1E4C17C48);
  v68 = *(v69 - 8);
  v22 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97A38, &qword_1E4C17C50);
  v67 = *(v25 - 8);
  v26 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v64 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97A40, &qword_1E4C17C58);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v64 - v32;
  v34 = a1[3];
  v35 = a1[4];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1E4BCF098();
  v36 = v96;
  sub_1E4BF0ABC();
  if (!v36)
  {
    v65 = v28;
    v64 = v25;
    v66 = v24;
    v37 = v90;
    v38 = v91;
    v39 = v92;
    v40 = v93;
    v96 = v30;
    v41 = v94;
    v42 = sub_1E4BF088C();
    v43 = (2 * *(v42 + 16)) | 1;
    v97 = v42;
    v98 = v42 + 32;
    v99 = 0;
    v100 = v43;
    v44 = sub_1E4ADD5F4();
    if (v44 != 10 && v99 == v100 >> 1)
    {
      v101 = v44;
      if (v44 <= 4u)
      {
        if (v44 <= 1u)
        {
          if (v44)
          {
            v102 = 1;
            sub_1E4BCF38C();
            v62 = v66;
            sub_1E4BF07EC();
            v63 = v96;
            (*(v68 + 8))(v62, v69);
            (*(v63 + 8))(v33, v29);
          }

          else
          {
            v102 = 0;
            sub_1E4BCF3E0();
            v58 = v65;
            sub_1E4BF07EC();
            v59 = v96;
            (*(v67 + 8))(v58, v64);
            (*(v59 + 8))(v33, v29);
          }

          swift_unknownObjectRelease();
          v51 = v95;
          v53 = v41;
        }

        else
        {
          if (v44 == 2)
          {
            v102 = 2;
            sub_1E4BCF338();
            sub_1E4BF07EC();
            (*(v70 + 8))(v37, v71);
            (*(v96 + 8))(v33, v29);
          }

          else
          {
            if (v44 == 3)
            {
              v102 = 3;
              sub_1E4BCF2E4();
              v45 = v86;
              sub_1E4BF07EC();
              v46 = v96;
              (*(v72 + 8))(v45, v73);
            }

            else
            {
              v102 = 4;
              sub_1E4BCF290();
              sub_1E4BF07EC();
              v46 = v96;
              (*(v75 + 8))(v38, v74);
            }

            (*(v46 + 8))(v33, v29);
          }

          swift_unknownObjectRelease();
          v53 = v94;
          v51 = v95;
        }

        goto LABEL_33;
      }

      if (v44 <= 6u)
      {
        v53 = v41;
        v60 = v96;
        if (v44 == 5)
        {
          v102 = 5;
          sub_1E4BCF23C();
          sub_1E4BF07EC();
          (*(v76 + 8))(v39, v77);
        }

        else
        {
          v102 = 6;
          sub_1E4BCF1E8();
          sub_1E4BF07EC();
          (*(v78 + 8))(v40, v79);
        }

        (*(v60 + 8))(v33, v29);
        goto LABEL_32;
      }

      v53 = v41;
      v54 = v96;
      if (v44 == 7)
      {
        v102 = 7;
        sub_1E4BCF194();
        v55 = v87;
        sub_1E4BF07EC();
        v57 = v80;
        v56 = v81;
      }

      else
      {
        if (v44 != 8)
        {
          v102 = 9;
          sub_1E4BCF0EC();
          v61 = v89;
          sub_1E4BF07EC();
          (*(v84 + 8))(v61, v85);
          goto LABEL_29;
        }

        v102 = 8;
        sub_1E4BCF140();
        v55 = v88;
        sub_1E4BF07EC();
        v57 = v82;
        v56 = v83;
      }

      (*(v57 + 8))(v55, v56);
LABEL_29:
      (*(v54 + 8))(v33, v29);
LABEL_32:
      swift_unknownObjectRelease();
      v51 = v95;
LABEL_33:
      *v53 = v101;
      return __swift_destroy_boxed_opaque_existential_1(v51);
    }

    v47 = sub_1E4BF06EC();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v49 = &type metadata for RCSService.Error;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    (*(v96 + 8))(v33, v29);
    swift_unknownObjectRelease();
  }

  v51 = v95;
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t RCSService.IncomingMessageNotification.groupContext.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RCSService.IncomingMessageNotification(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_1E4B440B4(v4, v5);
}

uint64_t RCSService.IncomingMessageNotification.suggestions.getter()
{
  v1 = *(v0 + *(type metadata accessor for RCSService.IncomingMessageNotification(0) + 24));
}

uint64_t RCSService.RemoteHandleUpdate.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

uint64_t RCSService.RemoteHandleUpdate.newHandle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 80);
  *(a1 + 32) = v6;
  return sub_1E4BE2A70(v2, v3, v4, v5, v6);
}

uint64_t RCSService.viabilityNotifications.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v3 + 6);
  if (Strong)
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = *(Strong + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);

    os_unfair_lock_lock((v6 + 96));
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1E4BE2AA8;
    *(v7 + 24) = v5;

    v8 = *(v6 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + 40);
    *(v6 + 40) = 0x8000000000000000;
    sub_1E4B31A54(sub_1E4BC1768, v7, 2, isUniquelyReferenced_nonNull_native);
    *(v6 + 40) = v13;
    os_unfair_lock_unlock((v6 + 96));

    v10 = *(v1 + 72);
    return sub_1E4B2BA10(a1);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v12 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1E4BD05E4(unsigned __int8 *a1, char a2)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 72);
    if (a2)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    sub_1E4B75CF8(v6 | v3);
  }

  return result;
}

uint64_t RCSService.configuration(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(v2 + 16);
  os_unfair_lock_lock(v6 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v6 + 6);
  if (Strong)
  {
    sub_1E4B35420(v12);

    if (!v3)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v13 = v5;
      v10 = *v9;
      sub_1E4BAABAC(&v13, a2);
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t RCSService.upload(_:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  v3[21] = v5;
  v6 = *(v5 - 8);
  v3[22] = v6;
  v7 = *(v6 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = *(*(type metadata accessor for RCSService.Configuration(0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v9 = sub_1E4BEFA1C();
  v3[27] = v9;
  v10 = *(v9 - 8);
  v3[28] = v10;
  v11 = *(v10 + 64) + 15;
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BD08F0, 0, 0);
}

uint64_t sub_1E4BD08F0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 144);
  v3 = *(type metadata accessor for RCSService.FileUploadRequest(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97A48, &qword_1E4C17C68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4BFCCE0;
  v5 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v6 = v5;
  sub_1E4BE2E10(inited);
  swift_setDeallocating();
  sub_1E4BE3004(inited + 32, type metadata accessor for URLResourceKey);
  sub_1E4BEFA3C();
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = *(v0 + 216);

  v10 = sub_1E4BEFA0C();
  v12 = v11;
  *(v0 + 240) = v10;
  (*(v8 + 8))(v7, v9);
  if (v12)
  {
    if (qword_1ECF92440 != -1)
    {
      swift_once();
    }

    v13 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v13, qword_1ECF97928);
    v14 = sub_1E4BEFB5C();
    v15 = sub_1E4BF04DC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1E4AD3000, v14, v15, "Cannot upload RCS file: unable to determine file size", v16, 2u);
      MEMORY[0x1E6921800](v16, -1, -1);
    }

    sub_1E4B843DC();
    goto LABEL_10;
  }

  v17 = *(*(v0 + 152) + 16);
  os_unfair_lock_lock(v17 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v17 + 6);
  if (!Strong)
  {
    sub_1E4B304F4();
LABEL_10:
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    v20 = *(v0 + 232);
    v21 = *(v0 + 200);
    v22 = *(v0 + 208);
    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    v25 = *(v0 + 160);

    v26 = *(v0 + 8);

    return v26();
  }

  sub_1E4B35420(v0 + 56);
  v28 = *(v0 + 144);

  v29 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  *(v0 + 296) = *v28;
  v30 = *v29;
  v31 = swift_task_alloc();
  *(v0 + 248) = v31;
  *v31 = v0;
  v31[1] = sub_1E4BD0C60;
  v32 = *(v0 + 208);

  return sub_1E4BAAF58(v32, (v0 + 296));
}

uint64_t sub_1E4BD0C60()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_1E4BD1344;
  }

  else
  {
    v3 = sub_1E4BD0D74;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BD0D74()
{
  v59 = v0;
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  RCSService.Configuration.maximumFileTransferSize.getter(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1E4AE0AE4(v0[20], &qword_1ECF92D68, &unk_1E4BFCDA0);
    if (qword_1ECF92440 != -1)
    {
      swift_once();
    }

    v5 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v5, qword_1ECF97928);
    v6 = sub_1E4BEFB5C();
    v7 = sub_1E4BF04DC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1E4AD3000, v6, v7, "Cannot upload RCS file: unable to determine max file transfer size", v8, 2u);
      MEMORY[0x1E6921800](v8, -1, -1);
    }

    v9 = v0[26];

    sub_1E4B843DC();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    goto LABEL_19;
  }

  v12 = v0[24];
  v11 = v0[25];
  v13 = v0[21];
  v14 = v0[22];
  v15 = v0[20];
  v16 = [objc_opt_self() bytes];
  sub_1E4BEF99C();

  v17 = *(v14 + 8);
  v0[33] = v17;
  v0[34] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v15, v13);
  (*(v14 + 32))(v11, v12, v13);
  sub_1E4BEF98C();
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v0[30] > v18)
  {
    if (qword_1ECF92440 == -1)
    {
LABEL_12:
      v19 = v0[25];
      v21 = v0[22];
      v20 = v0[23];
      v22 = v0[21];
      v23 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v23, qword_1ECF97928);
      (*(v21 + 16))(v20, v19, v22);
      v24 = sub_1E4BEFB5C();
      v25 = sub_1E4BF04DC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = v0[30];
        v27 = v0[23];
        v28 = v0[21];
        v29 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v58 = v57;
        *v29 = 134218242;
        *(v29 + 4) = v26;
        *(v29 + 12) = 2080;
        sub_1E4B14808(&qword_1ECF94618, &qword_1ECF92D70, &unk_1E4C07A60);
        v30 = sub_1E4BF096C();
        v32 = v31;
        v17(v27, v28);
        v33 = sub_1E4B30548(v30, v32, &v58);

        *(v29 + 14) = v33;
        _os_log_impl(&dword_1E4AD3000, v24, v25, "Cannot upload RCS file: file size (%ld bytes) exceeds maximum (%s)", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x1E6921800](v57, -1, -1);
        MEMORY[0x1E6921800](v29, -1, -1);
      }

      else
      {
        v38 = v0[23];
        v39 = v0[21];

        v17(v38, v39);
      }

      v40 = v0[25];
      v9 = v0[26];
      v41 = v0[21];
      sub_1E4B843DC();
      swift_allocError();
      *v42 = 9;
      swift_willThrow();
      v36 = v40;
      v37 = v41;
      goto LABEL_18;
    }

LABEL_28:
    swift_once();
    goto LABEL_12;
  }

  v34 = v0[32];
  v35 = sub_1E4B23668();
  if (v34)
  {
    v36 = v0[25];
    v9 = v0[26];
    v37 = v0[21];
LABEL_18:
    v17(v36, v37);
LABEL_19:
    sub_1E4BE3004(v9, type metadata accessor for RCSService.Configuration);
    v43 = v0[29];
    v45 = v0[25];
    v44 = v0[26];
    v47 = v0[23];
    v46 = v0[24];
    v48 = v0[20];

    v49 = v0[1];

    return v49();
  }

  v51 = v35;
  v52 = _s6ClientCMa();
  v0[15] = v52;
  v0[16] = &off_1F5EB14F0;
  v0[12] = v51;
  v53 = *__swift_project_boxed_opaque_existential_1(v0 + 12, v52);
  v54 = swift_task_alloc();
  v0[35] = v54;
  *v54 = v0;
  v54[1] = sub_1E4BD13F4;
  v55 = v0[17];
  v56 = v0[18];

  return sub_1E4B20F1C(v55, v56);
}

uint64_t sub_1E4BD1344()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[32];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E4BD13F4()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1E4BD15E4;
  }

  else
  {
    v3 = sub_1E4BD1508;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BD1508()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 160);
  (*(v0 + 264))(*(v0 + 200), *(v0 + 168));
  sub_1E4BE3004(v3, type metadata accessor for RCSService.Configuration);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E4BD15E4()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 208);
  (*(v0 + 264))(*(v0 + 200), *(v0 + 168));
  sub_1E4BE3004(v2, type metadata accessor for RCSService.Configuration);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v3 = *(v0 + 288);
  v4 = *(v0 + 232);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 160);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t RCSService.download(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD16E0, 0, 0);
}

uint64_t sub_1E4BD16E0()
{
  v1 = sub_1E4B23668();
  v2 = _s6ClientCMa();
  v0[5] = v2;
  v0[6] = &off_1F5EB14F0;
  v0[2] = v1;
  v3 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1E4BD17EC;
  v5 = v0[7];
  v6 = v0[8];

  return sub_1E4B2057C(v5, v6);
}

uint64_t sub_1E4BD17EC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1E4B28DE0;
  }

  else
  {
    v3 = sub_1E4BE6988;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t RCSService.sendMessage(_:to:using:messageID:)(uint64_t *a1, uint64_t a2, _BYTE *a3, void *a4)
{
  *(v5 + 88) = v4;
  v10 = type metadata accessor for RCSMessage.Content(0);
  *(v5 + 96) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v12 = type metadata accessor for RCSMessage(0);
  *(v5 + 112) = v12;
  v13 = *(v12 - 8);
  *(v5 + 120) = v13;
  *(v5 + 128) = *(v13 + 64);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v14 = sub_1E4BEFEEC();
  *(v5 + 152) = v14;
  v15 = *(v14 - 8);
  *(v5 + 160) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0) - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  *(v5 + 184) = v18;
  v19 = *(v18 - 8);
  *(v5 + 192) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  v21 = *(*(type metadata accessor for RCSService.Configuration(0) - 8) + 64) + 15;
  v22 = swift_task_alloc();
  v23 = *(a2 + 16);
  *(v5 + 248) = *a2;
  v24 = *a1;
  v25 = a1[1];
  *(v5 + 224) = v22;
  *(v5 + 232) = v24;
  *(v5 + 240) = v25;
  *(v5 + 264) = v23;
  *(v5 + 353) = *(a2 + 32);
  *(v5 + 354) = *a3;
  v26 = a4[1];
  *(v5 + 280) = *a4;
  *(v5 + 288) = v26;

  return MEMORY[0x1EEE6DFA0](sub_1E4BD1B94, 0, 0);
}

uint64_t sub_1E4BD1B94()
{
  v1 = *(*(v0 + 88) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);
    v15 = *(v0 + 354);

    v16 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 352) = v15;
    v17 = *v16;
    v18 = swift_task_alloc();
    *(v0 + 296) = v18;
    *v18 = v0;
    v18[1] = sub_1E4BD1D80;
    v19 = *(v0 + 224);

    return sub_1E4BAAF58(v19, (v0 + 352));
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 104);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1E4BD1D80()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1E4BD2620;
  }

  else
  {
    v3 = sub_1E4BD1E94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BD1E94()
{
  v78 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  RCSService.Configuration.maximumTextMessageSize.getter(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1E4AE0AE4(*(v0 + 176), &qword_1ECF92D68, &unk_1E4BFCDA0);
    if (qword_1ECF92440 != -1)
    {
      swift_once();
    }

    v5 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v5, qword_1ECF97928);
    v6 = sub_1E4BEFB5C();
    v7 = sub_1E4BF04DC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1E4AD3000, v6, v7, "Cannot send RCS text message: unable to determine max size", v8, 2u);
      MEMORY[0x1E6921800](v8, -1, -1);
    }

    v9 = *(v0 + 224);

    sub_1E4B843DC();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    goto LABEL_19;
  }

  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  v13 = *(v0 + 184);
  v14 = *(v0 + 192);
  v15 = *(v0 + 176);
  v16 = [objc_opt_self() bytes];
  sub_1E4BEF99C();

  v17 = *(v14 + 8);
  *(v0 + 312) = v17;
  *(v0 + 320) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v15, v13);
  (*(v14 + 32))(v11, v12, v13);
  sub_1E4BEF98C();
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = *(v0 + 240);
  v21 = *(v0 + 160);
  v20 = *(v0 + 168);
  v22 = *(v0 + 152);
  v23 = v18;
  *(v0 + 56) = *(v0 + 232);
  *(v0 + 64) = v19;

  sub_1E4BEFEDC();
  sub_1E4B20460();
  v12 = sub_1E4BF055C();
  (*(v21 + 8))(v20, v22);

  if (v12 > v23)
  {
    if (qword_1ECF92440 == -1)
    {
LABEL_12:
      v24 = *(v0 + 216);
      v26 = *(v0 + 192);
      v25 = *(v0 + 200);
      v27 = *(v0 + 184);
      v28 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v28, qword_1ECF97928);
      (*(v26 + 16))(v25, v24, v27);
      v29 = sub_1E4BEFB5C();
      v30 = sub_1E4BF04DC();
      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 200);
      v33 = *(v0 + 184);
      if (v31)
      {
        v34 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v77 = v75;
        *v34 = 134218242;
        *(v34 + 4) = v12;
        *(v34 + 12) = 2080;
        sub_1E4B14808(&qword_1ECF94618, &qword_1ECF92D70, &unk_1E4C07A60);
        v35 = sub_1E4BF096C();
        v37 = v36;
        v17(v32, v33);
        v38 = sub_1E4B30548(v35, v37, &v77);

        *(v34 + 14) = v38;
        _os_log_impl(&dword_1E4AD3000, v29, v30, "Cannot send RCS text message: body size (%ld bytes) exceeds maximum (%s)", v34, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x1E6921800](v75, -1, -1);
        MEMORY[0x1E6921800](v34, -1, -1);
      }

      else
      {

        v17(v32, v33);
      }

      v56 = *(v0 + 216);
      v9 = *(v0 + 224);
      v57 = *(v0 + 184);
      sub_1E4B843DC();
      swift_allocError();
      *v58 = 9;
      swift_willThrow();
      v17(v56, v57);
LABEL_19:
      sub_1E4BE3004(v9, type metadata accessor for RCSService.Configuration);
      v60 = *(v0 + 216);
      v59 = *(v0 + 224);
      v62 = *(v0 + 200);
      v61 = *(v0 + 208);
      v64 = *(v0 + 168);
      v63 = *(v0 + 176);
      v66 = *(v0 + 136);
      v65 = *(v0 + 144);
      v67 = *(v0 + 104);

      v68 = *(v0 + 8);

      return v68();
    }

LABEL_25:
    swift_once();
    goto LABEL_12;
  }

  v40 = *(v0 + 280);
  v39 = *(v0 + 288);
  v41 = *(v0 + 354);
  v71 = *(v0 + 353);
  v42 = *(v0 + 264);
  v44 = *(v0 + 248);
  v43 = *(v0 + 256);
  v69 = *(v0 + 240);
  v70 = *(v0 + 272);
  v45 = *(v0 + 144);
  v72 = *(v0 + 136);
  v73 = *(v0 + 120);
  v74 = *(v0 + 128);
  v46 = *(v0 + 104);
  v47 = *(v0 + 112);
  v48 = *(v0 + 96);
  v76 = *(v0 + 88);
  *v46 = *(v0 + 232);
  v46[1] = v69;
  swift_storeEnumTagMultiPayload();
  *(v45 + 16) = v41;
  *v45 = v40;
  *(v45 + 8) = v39;
  sub_1E4BE6884(v46, v45 + v47[6], type metadata accessor for RCSMessage.Content);
  v49 = v45 + v47[7];
  *v49 = v44;
  *(v49 + 8) = v43;
  *(v49 + 16) = v42;
  *(v49 + 24) = v70;
  *(v49 + 32) = v71;
  v50 = v47[8];

  sub_1E4ADD6D8(v44, v43, v42, v70, v71);
  sub_1E4BEFAAC();
  sub_1E4BE3004(v46, type metadata accessor for RCSMessage.Content);
  *(v0 + 72) = v40;
  *(v0 + 80) = v39;
  sub_1E4BE6884(v45, v72, type metadata accessor for RCSMessage);
  v51 = (*(v73 + 80) + 24) & ~*(v73 + 80);
  v52 = swift_allocObject();
  *(v0 + 328) = v52;
  *(v52 + 16) = v76;
  sub_1E4BE68EC(v72, v52 + v51, type metadata accessor for RCSMessage);

  v53 = swift_task_alloc();
  *(v0 + 336) = v53;
  *v53 = v0;
  v53[1] = sub_1E4BD26FC;
  v54 = *(v0 + 88);

  return sub_1E4BD2CFC((v0 + 72), &unk_1E4C17C88, v52);
}

uint64_t sub_1E4BD2620()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[38];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E4BD26FC()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  v4 = *(v2 + 328);

  if (v0)
  {
    v5 = sub_1E4BD294C;
  }

  else
  {
    v5 = sub_1E4BD2820;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E4BD2820()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[22];
  v7 = v0[23];
  v11 = v0[21];
  v12 = v0[17];
  v13 = v0[13];
  sub_1E4BE3004(v0[18], type metadata accessor for RCSMessage);
  v1(v3, v7);
  sub_1E4BE3004(v4, type metadata accessor for RCSService.Configuration);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E4BD294C()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[23];
  sub_1E4BE3004(v0[18], type metadata accessor for RCSMessage);
  v2(v3, v5);
  sub_1E4BE3004(v4, type metadata accessor for RCSService.Configuration);
  v6 = v0[43];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[21];
  v11 = v0[22];
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[13];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E4BD2A70(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD2A90, 0, 0);
}

uint64_t sub_1E4BD2A90()
{
  v1 = *(v0[7] + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420((v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1E4BD2BE8;
    v5 = v0[8];

    return sub_1E4BAB7CC(v5);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1E4BD2BE8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1E4BE6974;
  }

  else
  {
    v3 = sub_1E4BE6988;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BD2CFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a2;
  v4[10] = a3;
  v5 = *a1;
  v6 = a1[1];
  v4[11] = v3;
  v4[12] = v5;
  v4[13] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD2D28, 0, 0);
}

uint64_t sub_1E4BD2D28()
{
  v1 = *(*(v0 + 88) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 88);
    v16 = *(v0 + 72);

    v9 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v10 = swift_allocObject();
    swift_weakInit();
    sub_1E4B7E650(*v9, v10);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v11 = *(v8 + 96);
    *(v0 + 56) = v7;
    *(v0 + 64) = v6;
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *(v12 + 16) = v11;
    *(v12 + 24) = v0 + 56;
    *(v12 + 32) = v16;
    v13 = swift_task_alloc();
    *(v0 + 120) = v13;
    *(v13 + 16) = v11;
    *(v13 + 24) = v0 + 56;
    v14 = *(MEMORY[0x1E69E88F0] + 4);
    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *v15 = v0;
    v15[1] = sub_1E4BD2F74;

    return MEMORY[0x1EEE6DE18]();
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E4BD2F74()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1E4BD3098;
  }

  else
  {
    v6 = *(v2 + 112);
    v5 = *(v2 + 120);

    v4 = sub_1E4B86858;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E4BD3098()
{
  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[17];
  v4 = v0[1];

  return v4();
}

uint64_t RCSService.sendMessage(_:to:using:messageID:)(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  *(v5 + 32) = a1;
  *(v5 + 40) = v4;
  v9 = type metadata accessor for RCSMessage.Content(0);
  *(v5 + 48) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v11 = type metadata accessor for RCSMessage(0);
  *(v5 + 64) = v11;
  v12 = *(v11 - 8);
  *(v5 + 72) = v12;
  *(v5 + 80) = *(v12 + 64);
  *(v5 + 88) = swift_task_alloc();
  v13 = swift_task_alloc();
  v14 = *(a2 + 16);
  *(v5 + 104) = *a2;
  *(v5 + 96) = v13;
  *(v5 + 120) = v14;
  *(v5 + 176) = *(a2 + 32);
  *(v5 + 177) = *a3;
  v15 = a4[1];
  *(v5 + 136) = *a4;
  *(v5 + 144) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1E4BD3240, 0, 0);
}

{
  *(v5 + 32) = a1;
  *(v5 + 40) = v4;
  v9 = type metadata accessor for RCSMessage.Content(0);
  *(v5 + 48) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v11 = type metadata accessor for RCSMessage(0);
  *(v5 + 64) = v11;
  v12 = *(v11 - 8);
  *(v5 + 72) = v12;
  *(v5 + 80) = *(v12 + 64);
  *(v5 + 88) = swift_task_alloc();
  v13 = swift_task_alloc();
  v14 = *(a2 + 16);
  *(v5 + 104) = *a2;
  *(v5 + 96) = v13;
  *(v5 + 120) = v14;
  *(v5 + 176) = *(a2 + 32);
  *(v5 + 177) = *a3;
  v15 = a4[1];
  *(v5 + 136) = *a4;
  *(v5 + 144) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1E4BD3FFC, 0, 0);
}

uint64_t sub_1E4BD3240()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v17 = *(v0 + 177);
  v19 = *(v0 + 176);
  v3 = *(v0 + 120);
  v18 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  v20 = *(v0 + 88);
  v21 = *(v0 + 72);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 48);
  v22 = *(v0 + 80);
  v23 = *(v0 + 40);
  sub_1E4BE6884(*(v0 + 32), v8, type metadata accessor for RCSMessage.FileTransfer);
  swift_storeEnumTagMultiPayload();
  *(v6 + 16) = v17;
  *v6 = v1;
  *(v6 + 8) = v2;
  sub_1E4BE6884(v8, v6 + v7[6], type metadata accessor for RCSMessage.Content);
  v10 = v6 + v7[7];
  *v10 = v5;
  *(v10 + 8) = v4;
  *(v10 + 16) = v3;
  *(v10 + 24) = v18;
  *(v10 + 32) = v19;
  v11 = v7[8];

  sub_1E4ADD6D8(v5, v4, v3, v18, v19);
  sub_1E4BEFAAC();
  sub_1E4BE3004(v8, type metadata accessor for RCSMessage.Content);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  sub_1E4BE6884(v6, v20, type metadata accessor for RCSMessage);
  v12 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v13 = swift_allocObject();
  *(v0 + 152) = v13;
  *(v13 + 16) = v23;
  sub_1E4BE68EC(v20, v13 + v12, type metadata accessor for RCSMessage);

  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  *v14 = v0;
  v14[1] = sub_1E4BD34A8;
  v15 = *(v0 + 40);

  return sub_1E4BD2CFC((v0 + 16), &unk_1E4C17CA8, v13);
}

uint64_t sub_1E4BD34A8()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1E4BD3678;
  }

  else
  {
    v4 = sub_1E4BD35D8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E4BD35D8()
{
  v1 = v0[11];
  v2 = v0[7];
  sub_1E4BE3004(v0[12], type metadata accessor for RCSMessage);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E4BD3678()
{
  v1 = v0[11];
  v2 = v0[7];
  sub_1E4BE3004(v0[12], type metadata accessor for RCSMessage);

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_1E4BD3718(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD3738, 0, 0);
}

uint64_t sub_1E4BD3738()
{
  v1 = *(v0[7] + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420((v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1E4BD17EC;
    v5 = v0[8];

    return sub_1E4BAB7CC(v5);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t RCSService.sendMessage(_:to:using:messageID:)(_OWORD *a1, uint64_t a2, _BYTE *a3, void *a4)
{
  *(v5 + 32) = v4;
  v10 = type metadata accessor for RCSMessage.Content(0);
  *(v5 + 40) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v12 = type metadata accessor for RCSMessage(0);
  *(v5 + 56) = v12;
  v13 = *(v12 - 8);
  *(v5 + 64) = v13;
  *(v5 + 72) = *(v13 + 64);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  v14 = a1[1];
  *(v5 + 96) = *a1;
  *(v5 + 112) = v14;
  v15 = *(a2 + 16);
  *(v5 + 128) = *a2;
  *(v5 + 144) = v15;
  *(v5 + 200) = *(a2 + 32);
  *(v5 + 201) = *a3;
  v16 = a4[1];
  *(v5 + 160) = *a4;
  *(v5 + 168) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1E4BD39DC, 0, 0);
}

uint64_t sub_1E4BD39DC()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 201);
  v21 = *(v0 + 200);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v19 = *(v0 + 120);
  v20 = *(v0 + 152);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v22 = *(v0 + 80);
  v23 = *(v0 + 64);
  v24 = *(v0 + 72);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = *(v0 + 40);
  v25 = *(v0 + 32);
  *v9 = *(v0 + 96);
  *(v9 + 16) = v7;
  *(v9 + 24) = v19;
  swift_storeEnumTagMultiPayload();
  *(v8 + 16) = v3;
  *v8 = v2;
  *(v8 + 8) = v1;
  sub_1E4BE6884(v9, v8 + v10[6], type metadata accessor for RCSMessage.Content);
  v12 = v8 + v10[7];
  *v12 = v6;
  *(v12 + 8) = v5;
  *(v12 + 16) = v4;
  *(v12 + 24) = v20;
  *(v12 + 32) = v21;
  v13 = v10[8];

  sub_1E4ADD6D8(v6, v5, v4, v20, v21);
  sub_1E4BEFAAC();
  sub_1E4BE3004(v9, type metadata accessor for RCSMessage.Content);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_1E4BE6884(v8, v22, type metadata accessor for RCSMessage);
  v14 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v15 = swift_allocObject();
  *(v0 + 176) = v15;
  *(v15 + 16) = v25;
  sub_1E4BE68EC(v22, v15 + v14, type metadata accessor for RCSMessage);

  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = sub_1E4BD3C30;
  v17 = *(v0 + 32);

  return sub_1E4BD2CFC((v0 + 16), &unk_1E4C17CC0, v15);
}

uint64_t sub_1E4BD3C30()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_1E4BD3E00;
  }

  else
  {
    v4 = sub_1E4BD3D60;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E4BD3D60()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_1E4BE3004(v0[11], type metadata accessor for RCSMessage);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E4BD3E00()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_1E4BE3004(v0[11], type metadata accessor for RCSMessage);

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_1E4BD3EA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD2A90, 0, 0);
}

uint64_t sub_1E4BD3FFC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v17 = *(v0 + 177);
  v19 = *(v0 + 176);
  v3 = *(v0 + 120);
  v18 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  v20 = *(v0 + 88);
  v21 = *(v0 + 72);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 48);
  v22 = *(v0 + 80);
  v23 = *(v0 + 40);
  sub_1E4BE6884(*(v0 + 32), v8, type metadata accessor for RCSMessage.ComposingIndicator);
  swift_storeEnumTagMultiPayload();
  *(v6 + 16) = v17;
  *v6 = v1;
  *(v6 + 8) = v2;
  sub_1E4BE6884(v8, v6 + v7[6], type metadata accessor for RCSMessage.Content);
  v10 = v6 + v7[7];
  *v10 = v5;
  *(v10 + 8) = v4;
  *(v10 + 16) = v3;
  *(v10 + 24) = v18;
  *(v10 + 32) = v19;
  v11 = v7[8];

  sub_1E4ADD6D8(v5, v4, v3, v18, v19);
  sub_1E4BEFAAC();
  sub_1E4BE3004(v8, type metadata accessor for RCSMessage.Content);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  sub_1E4BE6884(v6, v20, type metadata accessor for RCSMessage);
  v12 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v13 = swift_allocObject();
  *(v0 + 152) = v13;
  *(v13 + 16) = v23;
  sub_1E4BE68EC(v20, v13 + v12, type metadata accessor for RCSMessage);

  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  *v14 = v0;
  v14[1] = sub_1E4BD4264;
  v15 = *(v0 + 40);

  return sub_1E4BD2CFC((v0 + 16), &unk_1E4C17CD8, v13);
}

uint64_t sub_1E4BD4264()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1E4BE6964;
  }

  else
  {
    v4 = sub_1E4BE696C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E4BD4394(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD2A90, 0, 0);
}

uint64_t RCSService.sendMessage(_:to:using:messageID:group:)(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t *a4, _OWORD *a5)
{
  v7 = a5[1];
  *(v6 + 88) = *a5;
  *(v6 + 144) = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(v6 + 32) = v5;
  *(v6 + 40) = v8;
  v10 = *a2;
  v11 = a2[1];
  *(v6 + 48) = v9;
  *(v6 + 56) = v10;
  *(v6 + 145) = *a3;
  v12 = *a4;
  v13 = a4[1];
  *(v6 + 64) = v11;
  *(v6 + 72) = v12;
  *(v6 + 80) = v13;
  *(v6 + 104) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD4408, 0, 0);
}

uint64_t sub_1E4BD4408()
{
  v16 = *(v0 + 104);
  v17 = *(v0 + 112);
  v1 = *(v0 + 88);
  v15 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v14 = *(v0 + 145);
  v4 = *(v0 + 64);
  v13 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 144);
  v8 = *(v0 + 32);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v9 = swift_allocObject();
  *(v0 + 120) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  *(v9 + 48) = v14;
  *(v9 + 56) = v2;
  *(v9 + 64) = v3;
  *(v9 + 72) = v13;
  *(v9 + 80) = v4;
  *(v9 + 88) = v1;
  *(v9 + 96) = v15;
  *(v9 + 104) = v16;
  *(v9 + 112) = v17;

  sub_1E4B440B4(v1, v15);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_1E4BD4594;
  v11 = *(v0 + 32);

  return sub_1E4BD2CFC((v0 + 16), &unk_1E4C17CF0, v9);
}

uint64_t sub_1E4BD4594()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BD46D0, 0, 0);
  }

  else
  {
    v4 = v3[15];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E4BD46D0()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_1E4BD4734(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = v12;
  *(v8 + 312) = v11;
  *(v8 + 296) = v10;
  *(v8 + 280) = a7;
  *(v8 + 288) = a8;
  *(v8 + 353) = a5;
  *(v8 + 264) = a4;
  *(v8 + 272) = a6;
  *(v8 + 352) = a2;
  *(v8 + 248) = a1;
  *(v8 + 256) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD4784, 0, 0);
}

uint64_t sub_1E4BD4784()
{
  v37 = v0;
  v1 = *(*(v0 + 248) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 208);

    v35 = *__swift_project_boxed_opaque_existential_1((v0 + 208), *(v0 + 232));
    if (qword_1ECF92418 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 296);
    v4 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v4, qword_1ECF97018);

    v5 = sub_1E4BEFB5C();
    v6 = sub_1E4BF04BC();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 288);
      v7 = *(v0 + 296);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1E4B30548(v8, v7, &v36);
      _os_log_impl(&dword_1E4AD3000, v5, v6, "Sending RCS disposition to %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E6921800](v10, -1, -1);
      MEMORY[0x1E6921800](v9, -1, -1);
    }

    v12 = *(v0 + 320);
    v11 = *(v0 + 328);
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v15 = *(v0 + 288);
    v16 = *(v0 + 296);
    v17 = *(v0 + 272);
    v18 = *(v0 + 280);
    v19 = *(v0 + 256);
    v20 = *(v0 + 264);
    v21 = *(v0 + 352);
    *(v0 + 16) = *(v0 + 353) & 1;
    *(v0 + 24) = v17;
    *(v0 + 32) = v18;
    *(v0 + 40) = v21;
    *(v0 + 48) = v19;
    *(v0 + 56) = v20;
    *(v0 + 64) = v15;
    *(v0 + 72) = v16;
    *(v0 + 80) = v14;
    *(v0 + 88) = v13;
    *(v0 + 96) = v12;
    *(v0 + 104) = v11;
    v22 = v35[7];
    v34 = v35[6];
    __swift_project_boxed_opaque_existential_1(v35 + 3, v34);
    v23 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v23;
    v24 = *(v0 + 96);
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 192) = v24;
    v25 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v25;
    v26 = *(v22 + 32);

    sub_1E4B440B4(v14, v13);
    v33 = (v26 + *v26);
    v27 = v26[1];
    v28 = swift_task_alloc();
    *(v0 + 336) = v28;
    v29 = sub_1E4B44B18();
    *v28 = v0;
    v28[1] = sub_1E4BD4B44;

    return v33(v0 + 112, &type metadata for RCSSendDispositionRequest, v29, v34, v22);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();
    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1E4BD4B44()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v6 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_1E4BD4CC4;
  }

  else
  {
    sub_1E4B44AC0(v2 + 16);
    v4 = sub_1E4BD4C60;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E4BD4C60()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 208));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BD4CC4()
{
  sub_1E4B44AC0((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);
  v1 = v0[43];
  v2 = v0[1];

  return v2();
}

uint64_t RCSService.remoteCapabilities(for:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  v5 = sub_1E4BEFAFC();
  *(v3 + 184) = v5;
  v6 = *(v5 - 8);
  *(v3 + 192) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v8 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v8;
  *(v3 + 42) = *(a2 + 26);

  return MEMORY[0x1EEE6DFA0](sub_1E4BD4E04, 0, 0);
}

uint64_t sub_1E4BD4E04()
{
  v1 = *(*(v0 + 176) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 112);
    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    v11 = __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
    v12 = swift_allocObject();
    swift_weakInit();
    sub_1E4B7EEAC(*v11, v12);

    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
    sub_1E4BEFAEC();
    v13 = sub_1E4BEFACC();
    v15 = v14;
    *(v0 + 208) = v14;
    (*(v8 + 8))(v7, v10);
    v16 = *(v9 + 136);
    v17 = swift_allocObject();
    *(v0 + 216) = v17;
    *(v17 + 16) = v9;
    v18 = *(v0 + 32);
    *(v17 + 24) = *(v0 + 16);
    *(v17 + 40) = v18;
    *(v17 + 50) = *(v0 + 42);
    *(v17 + 72) = v13;
    *(v17 + 80) = v15;
    *(v0 + 152) = v13;
    *(v0 + 160) = v15;

    sub_1E4BE3DA4(v0 + 16, v0 + 64);

    v19 = swift_task_alloc();
    *(v0 + 224) = v19;
    v19[2] = v16;
    v19[3] = v0 + 152;
    v19[4] = &unk_1E4C17D08;
    v19[5] = v17;
    v20 = swift_task_alloc();
    *(v0 + 232) = v20;
    *(v20 + 16) = v16;
    *(v20 + 24) = v0 + 152;
    v21 = *(MEMORY[0x1E69E88F0] + 4);
    v22 = swift_task_alloc();
    *(v0 + 240) = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
    *v22 = v0;
    v22[1] = sub_1E4BD50F4;
    v24 = *(v0 + 168);

    return MEMORY[0x1EEE6DE18](v24, &unk_1E4C17D18, v19, sub_1E4BE3ECC, v20, 0, 0, v23);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 200);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1E4BD50F4()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BD5268, 0, 0);
  }

  else
  {
    v5 = v3[28];
    v4 = v3[29];
    v7 = v3[26];
    v6 = v3[27];
    v8 = v3[25];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1E4BD5268()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];

  v5 = v0[31];
  v6 = v0[25];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E4BD52F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD531C, 0, 0);
}

uint64_t sub_1E4BD531C()
{
  v1 = *(*(v0 + 120) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 64);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = *(v0 + 128);

    v9 = __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
    v10 = *(v8 + 26);
    v11 = v8[1];
    *(v0 + 16) = *v8;
    *(v0 + 32) = v11;
    *(v0 + 42) = v10;
    *(v0 + 104) = v7;
    *(v0 + 112) = v6;
    v12 = *v9;
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    *v13 = v0;
    v13[1] = sub_1E4BD54B4;

    return sub_1E4BABE18(v0 + 16, (v0 + 104));
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E4BD54B4()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1E4BD562C;
  }

  else
  {
    v3 = sub_1E4BD55C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BD55C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BD562C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v1 = v0[20];
  v2 = v0[1];

  return v2();
}

uint64_t RCSService.remoteHandleUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = *(v1 + 16);
  os_unfair_lock_lock(v5 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v5 + 6);
  if (!Strong)
  {
    goto LABEL_5;
  }

  sub_1E4B35420(v15);

  if (v2)
  {
    return result;
  }

  v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_1E4B80504(*v8, v9);

  __swift_destroy_boxed_opaque_existential_1(v15);
  os_unfair_lock_lock(v5 + 6);
  v10 = swift_weakLoadStrong();
  os_unfair_lock_unlock(v5 + 6);
  if (v10)
  {
    sub_1E4B35420(v15);

    v11 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v12 = swift_allocObject();
    swift_weakInit();
    sub_1E4B7F94C(*v11, v12);

    __swift_destroy_boxed_opaque_existential_1(v15);
    v13 = *(v3 + 88);
    return sub_1E4B2C104(a1);
  }

  else
  {
LABEL_5:
    sub_1E4B304F4();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1E4BD5830(unsigned __int8 *a1)
{
  v2 = type metadata accessor for RCSService.RemoteHandleUpdate(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v29 = *(a1 + 4);
  v30 = v7;
  LODWORD(v4) = a1[40];
  v27 = v6;
  v28 = v4;
  v10 = *(a1 + 6);
  v31 = *(a1 + 7);
  v11 = *(a1 + 8);
  v12 = *(a1 + 9);
  v13 = a1[80];
  v14 = a1[81];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *(v2 + 32);
    v18 = type metadata accessor for RCSService.RemoteCapabilities();
    (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
    v19 = v28;
    *v5 = v27;
    v21 = v29;
    v20 = v30;
    *(v5 + 1) = v30;
    *(v5 + 2) = v8;
    *(v5 + 3) = v9;
    *(v5 + 4) = v21;
    v5[40] = v19;
    v22 = v10;
    v23 = v14;
    v24 = v31;
    *(v5 + 6) = v10;
    *(v5 + 7) = v24;
    *(v5 + 8) = v11;
    *(v5 + 9) = v12;
    v5[80] = v13;
    v5[81] = v23;
    v25 = *(v16 + 88);
    sub_1E4ADD6D8(v20, v8, v9, v21, v19);
    sub_1E4ADD6D8(v22, v24, v11, v12, v13);
    sub_1E4B7602C(v5);
    sub_1E4BE3004(v5, type metadata accessor for RCSService.RemoteHandleUpdate);
  }

  return result;
}

uint64_t sub_1E4BD59E4(uint64_t a1)
{
  v2 = type metadata accessor for RCSCapabilityDiscoveryNotification(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for RCSService.RemoteHandleUpdate(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1E4BE6884(a1, v5, type metadata accessor for RCSCapabilityDiscoveryNotification);
    v23 = *v5;
    v12 = *(v5 + 1);
    v13 = *(v5 + 2);
    v14 = *(v5 + 3);
    v15 = *(v5 + 4);
    v16 = v5[40];
    v17 = &v5[*(v2 + 24)];
    v18 = *(v17 + 11);
    v19 = *(v6 + 32);
    sub_1E4BE6884(v17, &v9[v19], type metadata accessor for RCSService.RemoteCapabilities);
    sub_1E4ADD6D8(v12, v13, v14, v15, v16);
    sub_1E4BE3004(v5, type metadata accessor for RCSCapabilityDiscoveryNotification);
    v20 = type metadata accessor for RCSService.RemoteCapabilities();
    (*(*(v20 - 8) + 56))(&v9[v19], 0, 1, v20);
    *v9 = v23;
    *(v9 + 1) = v12;
    *(v9 + 2) = v13;
    *(v9 + 3) = v14;
    *(v9 + 4) = v15;
    v9[40] = v16;
    *(v9 + 3) = 0u;
    *(v9 + 4) = 0u;
    v9[80] = -1;
    v9[81] = v18;
    v21 = *(v11 + 88);
    sub_1E4B7602C(v9);
    sub_1E4BE3004(v9, type metadata accessor for RCSService.RemoteHandleUpdate);
  }

  return result;
}

uint64_t RCSService.sendSuggestionResponse(_:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD5C38, 0, 0);
}

uint64_t sub_1E4BD5C38()
{
  v1 = *(v0[8] + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420((v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1E4BD2BE8;
    v5 = v0[7];

    return sub_1E4BAF08C(v5);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t RCSService.sendDeviceSpecifics(to:using:messageID:)(uint64_t *a1, _BYTE *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 88) = v3;
  *(v4 + 96) = v5;
  *(v4 + 145) = *a2;
  v7 = *a3;
  v8 = a3[1];
  *(v4 + 104) = v6;
  *(v4 + 112) = v7;
  *(v4 + 120) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD5DC8, 0, 0);
}

uint64_t sub_1E4BD5DC8()
{
  v1 = *(*(v0 + 88) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 145);
    v12 = *(v0 + 96);

    v9 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 56) = v12;
    *(v0 + 144) = v8;
    *(v0 + 72) = v7;
    *(v0 + 80) = v6;
    v10 = *v9;
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_1E4BD5F78;

    return sub_1E4BB0164((v0 + 56), (v0 + 144), (v0 + 72));
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E4BD5F78()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1E4BD608C;
  }

  else
  {
    v3 = sub_1E4BE6988;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BD608C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[17];
  v2 = v0[1];

  return v2();
}

uint64_t RCSService.businessInformation(for:)(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  *(v5 + 32) = v8;
  v9 = type metadata accessor for RCSService.Business(0);
  *(v5 + 40) = v9;
  v10 = *(v9 - 8);
  *(v5 + 48) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a2;
  *(v5 + 120) = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  *(v5 + 56) = v12;
  *(v5 + 64) = v14;
  *(v5 + 72) = v15;
  if (*(a2 + 24))
  {
    if (*(a2 + 24) == 1)
    {
      v16 = swift_task_alloc();
      *(v5 + 88) = v16;
      *v16 = v5;
      v16[1] = sub_1E4BD6498;

      return sub_1E4BD6D64(a1, v2, v13, v14, v15, 1);
    }

    v25 = swift_task_alloc();
    *(v5 + 96) = v25;
    *v25 = v5;
    v25[1] = sub_1E4BD65CC;
    v19 = v8;
    v20 = v2;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = 2;
  }

  else
  {
    v18 = swift_task_alloc();
    *(v5 + 80) = v18;
    *v18 = v5;
    v18[1] = sub_1E4BD6364;
    v19 = a1;
    v20 = v2;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = 0;
  }

  return sub_1E4BD6A2C(v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1E4BD6364()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v7 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 32);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1E4BD6498()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v7 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 32);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1E4BD65CC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1E4BD69BC;
  }

  else
  {
    v3 = sub_1E4BD66E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BD66E0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 120);
    sub_1E4AE0AE4(v3, &qword_1ECF95F10, &qword_1E4C0E7F0);
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_1E4BD6888;
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);

    return sub_1E4BD6D64(v8, v9, v4, v6, v7, 2);
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = *(v0 + 16);
    sub_1E4BE68EC(v3, v11, type metadata accessor for RCSService.Business);
    sub_1E4BE68EC(v11, v12, type metadata accessor for RCSService.Business);
    (*(v2 + 56))(v12, 0, 1, v1);
    v13 = *(v0 + 56);
    v14 = *(v0 + 32);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1E4BD6888()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v7 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 32);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1E4BD69BC()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E4BD6A2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 82) = a6;
  *(v6 + 104) = a4;
  *(v6 + 112) = a5;
  *(v6 + 81) = a3;
  *(v6 + 88) = a1;
  *(v6 + 96) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD6A58, 0, 0);
}

uint64_t sub_1E4BD6A58()
{
  v1 = *(*(v0 + 96) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);
    v6 = *(v0 + 82);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 81);

    v10 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 56) = v9 & 1;
    *(v0 + 64) = v8;
    *(v0 + 72) = v7;
    *(v0 + 80) = v6;
    v11 = *v10;
    v12 = swift_task_alloc();
    *(v0 + 120) = v12;
    *v12 = v0;
    v12[1] = sub_1E4BD6BEC;
    v13 = *(v0 + 88);

    return sub_1E4BAE954(v13, v0 + 56);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E4BD6BEC()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1E4BD6D00;
  }

  else
  {
    v3 = sub_1E4BE6988;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BD6D00()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[16];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1E4BD6D64(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 177) = a6;
  *(v6 + 88) = a4;
  *(v6 + 96) = a5;
  *(v6 + 176) = a3;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2;
  v7 = sub_1E4BEFAFC();
  *(v6 + 104) = v7;
  v8 = *(v7 - 8);
  *(v6 + 112) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BD6E30, 0, 0);
}

uint64_t sub_1E4BD6E30()
{
  v1 = *(*(v0 + 80) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v27 = *(v0 + 177);
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);
    v11 = *(v0 + 176);
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);

    v14 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v15 = swift_allocObject();
    swift_weakInit();
    sub_1E4B80E80(*v14, v15);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    sub_1E4BEFAEC();
    v16 = sub_1E4BEFACC();
    v18 = v17;
    *(v0 + 128) = v17;
    (*(v8 + 8))(v7, v10);
    v19 = *(v12 + 160);
    v20 = swift_allocObject();
    *(v0 + 136) = v20;
    *(v20 + 16) = v12;
    *(v20 + 24) = v11 & 1;
    *(v20 + 32) = v13;
    *(v20 + 40) = v9;
    *(v20 + 48) = v27;
    *(v20 + 56) = v16;
    *(v20 + 64) = v18;
    *(v0 + 56) = v16;
    *(v0 + 64) = v18;

    v21 = swift_task_alloc();
    *(v0 + 144) = v21;
    v21[2] = v19;
    v21[3] = v0 + 56;
    v21[4] = &unk_1E4C18C80;
    v21[5] = v20;
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *(v22 + 16) = v19;
    *(v22 + 24) = v0 + 56;
    v23 = *(MEMORY[0x1E69E88F0] + 4);
    v24 = swift_task_alloc();
    *(v0 + 160) = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
    *v24 = v0;
    v24[1] = sub_1E4BD7138;
    v26 = *(v0 + 72);

    return MEMORY[0x1EEE6DE18](v26, &unk_1E4C18C90, v21, sub_1E4BE6160, v22, 0, 0, v25);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 120);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1E4BD7138()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BD72AC, 0, 0);
  }

  else
  {
    v5 = v3[18];
    v4 = v3[19];
    v7 = v3[16];
    v6 = v3[17];
    v8 = v3[15];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1E4BD72AC()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];

  v5 = v0[21];
  v6 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E4BD733C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = a7;
  *(v7 + 82) = a5;
  *(v7 + 112) = a3;
  *(v7 + 120) = a4;
  *(v7 + 81) = a2;
  *(v7 + 104) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD736C, 0, 0);
}

uint64_t sub_1E4BD736C()
{
  v1 = *(*(v0 + 104) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 82);
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 81);

    v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 56) = v11 & 1;
    *(v0 + 64) = v10;
    *(v0 + 72) = v9;
    *(v0 + 80) = v8;
    *(v0 + 88) = v7;
    *(v0 + 96) = v6;
    v13 = *v12;
    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *v14 = v0;
    v14[1] = sub_1E4BD7518;

    return sub_1E4BAE4B0(v0 + 56, (v0 + 88));
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E4BD7518()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1E4BD762C;
  }

  else
  {
    v3 = sub_1E4BE6988;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BD762C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[19];
  v2 = v0[1];

  return v2();
}

uint64_t RCSService.createGroupChat(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v5 = sub_1E4BEFAFC();
  *(v3 + 88) = v5;
  v6 = *(v5 - 8);
  *(v3 + 96) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 201) = *a2;
  *(v3 + 112) = *(a2 + 8);
  *(v3 + 128) = *(a2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1E4BD776C, 0, 0);
}

uint64_t sub_1E4BD776C()
{
  v1 = *(*(v0 + 112) + 16);
  *(v0 + 200) = *(v0 + 201);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1E4BD7820;
  v3 = *(v0 + 80);

  return sub_1E4BD7EA8(v1, (v0 + 200));
}

uint64_t sub_1E4BD7820()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1E4BD7E44;
  }

  else
  {
    v3 = sub_1E4BD7934;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BD7934()
{
  v1 = *(v0 + 128);
  v28 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 201);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  sub_1E4BEFAEC();
  v8 = sub_1E4BEFACC();
  v10 = v9;
  *(v0 + 152) = v9;
  (*(v6 + 8))(v2, v5);
  v11 = *(v7 + 112);
  v12 = swift_allocObject();
  *(v0 + 160) = v12;
  *(v12 + 16) = v7;
  *(v12 + 24) = v4;
  *(v12 + 32) = v3;
  *(v12 + 40) = v28;
  *(v12 + 48) = v1;
  *(v12 + 56) = v8;
  *(v12 + 64) = v10;
  v13 = *(v7 + 16);

  os_unfair_lock_lock(v13 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v13 + 6);
  if (!Strong)
  {
    sub_1E4B304F4();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v15 = *(v0 + 144);
  sub_1E4B35420(v0 + 16);
  if (v15)
  {

LABEL_5:

    v17 = *(v0 + 104);

    v18 = *(v0 + 8);

    return v18();
  }

  v20 = *(v0 + 80);

  v21 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v22 = swift_allocObject();
  swift_weakInit();
  sub_1E4B819E4(*v21, v22);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 56) = v8;
  *(v0 + 64) = v10;
  v23 = swift_task_alloc();
  *(v0 + 168) = v23;
  v23[2] = v11;
  v23[3] = v0 + 56;
  v23[4] = &unk_1E4C17D68;
  v23[5] = v12;
  v24 = swift_task_alloc();
  *(v0 + 176) = v24;
  *(v24 + 16) = v11;
  *(v24 + 24) = v0 + 56;
  v25 = *(MEMORY[0x1E69E88F0] + 4);
  v26 = swift_task_alloc();
  *(v0 + 184) = v26;
  *v26 = v0;
  v26[1] = sub_1E4BD7C40;
  v27 = *(v0 + 72);

  return MEMORY[0x1EEE6DE18](v27, &unk_1E4C17D78, v23, sub_1E4BE409C, v24, 0, 0, &type metadata for RCSService.CreateGroupChatRequest.Result);
}

uint64_t sub_1E4BD7C40()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BD7DB4, 0, 0);
  }

  else
  {
    v5 = v3[21];
    v4 = v3[22];
    v7 = v3[19];
    v6 = v3[20];
    v8 = v3[13];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1E4BD7DB4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];

  v5 = v0[24];
  v6 = v0[13];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E4BD7E44()
{
  v1 = v0[18];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E4BD7EA8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v5 = type metadata accessor for RCSService.Configuration(0);
  *(v3 + 72) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 105) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1E4BD7F48, 0, 0);
}

uint64_t sub_1E4BD7F48()
{
  v1 = *(*(v0 + 64) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);
    v7 = *(v0 + 105);

    v8 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 104) = v7;
    v9 = *v8;
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v10[1] = sub_1E4BD80C4;
    v11 = *(v0 + 80);

    return sub_1E4BAAF58(v11, (v0 + 104));
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 80);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1E4BD80C4()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1E4BD8490;
  }

  else
  {
    v3 = sub_1E4BD81D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BD81D8()
{
  v1 = v0[9];
  v2 = v0[10];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v2 + *(v1 + 24);
  if (*(v3 + 8))
  {
    if (qword_1ECF92440 != -1)
    {
      swift_once();
    }

    v4 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v4, qword_1ECF97928);
    v5 = sub_1E4BEFB5C();
    v6 = sub_1E4BF04DC();
    if (!os_log_type_enabled(v5, v6))
    {
      v8 = 3;
      goto LABEL_18;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1E4AD3000, v5, v6, "Cannot complete RCS group chat operation: unable to determine max group size", v7, 2u);
    v8 = 3;
  }

  else
  {
    v9 = *v3;
    if (v9 >= 100)
    {
      v10 = 100;
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= v0[7])
    {
      sub_1E4BE3004(v0[10], type metadata accessor for RCSService.Configuration);

      v14 = v0[1];
      goto LABEL_19;
    }

    if (qword_1ECF92440 != -1)
    {
      swift_once();
    }

    v11 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v11, qword_1ECF97928);
    v5 = sub_1E4BEFB5C();
    v12 = sub_1E4BF04DC();
    if (!os_log_type_enabled(v5, v12))
    {
      v8 = 9;
      goto LABEL_18;
    }

    v13 = v0[7];
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = v13;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v10;
    _os_log_impl(&dword_1E4AD3000, v5, v12, "Cannot complete RCS group chat operation: size (%ld) exceeds maximum (%ld)", v7, 0x16u);
    v8 = 9;
  }

  MEMORY[0x1E6921800](v7, -1, -1);
LABEL_18:
  v15 = v0[10];

  sub_1E4B843DC();
  swift_allocError();
  *v16 = v8;
  swift_willThrow();
  sub_1E4BE3004(v15, type metadata accessor for RCSService.Configuration);
  v17 = v0[10];

  v14 = v0[1];
LABEL_19:

  return v14();
}

uint64_t sub_1E4BD8490()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E4BD84FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 136) = a6;
  *(v7 + 144) = a7;
  *(v7 + 120) = a4;
  *(v7 + 128) = a5;
  *(v7 + 168) = a2;
  *(v7 + 104) = a1;
  *(v7 + 112) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD8528, 0, 0);
}

uint64_t sub_1E4BD8528()
{
  v1 = *(*(v0 + 104) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);
    v6 = *(v0 + 144);
    v11 = *(v0 + 112);
    v12 = *(v0 + 128);
    v7 = *(v0 + 168);

    v8 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 56) = v7 & 1;
    *(v0 + 64) = v11;
    *(v0 + 80) = v12;
    *(v0 + 96) = v6;
    v9 = *v8;
    v10 = swift_task_alloc();
    *(v0 + 152) = v10;
    *v10 = v0;
    v10[1] = sub_1E4BD86B4;

    return sub_1E4BADE58(v0 + 56, (v0 + 88));
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E4BD86B4()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1E4BD87C8;
  }

  else
  {
    v3 = sub_1E4BE6988;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BD87C8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[20];
  v2 = v0[1];

  return v2();
}

uint64_t RCSService.leaveGroupChat(_:)(uint64_t a1)
{
  *(v2 + 152) = v1;
  v4 = sub_1E4BEFAFC();
  *(v2 + 160) = v4;
  v5 = *(v4 - 8);
  *(v2 + 168) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  v7 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v7;
  *(v2 + 48) = *(a1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1E4BD8900, 0, 0);
}

uint64_t sub_1E4BD8900()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  sub_1E4BEFAEC();
  v5 = sub_1E4BEFACC();
  v7 = v6;
  *(v0 + 184) = v6;
  (*(v2 + 8))(v1, v3);
  v8 = *(v4 + 104);
  v9 = swift_allocObject();
  *(v0 + 192) = v9;
  *(v9 + 16) = v4;
  v10 = *(v0 + 32);
  *(v9 + 24) = *(v0 + 16);
  *(v9 + 40) = v10;
  *(v9 + 56) = *(v0 + 48);
  *(v9 + 64) = v5;
  *(v9 + 72) = v7;

  sub_1E4BE4178(v0 + 16, v0 + 56);
  v11 = *(v4 + 16);
  os_unfair_lock_lock(v11 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v11 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 96);
    v17 = *(v0 + 152);

    v18 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    v19 = swift_allocObject();
    swift_weakInit();
    sub_1E4B819E4(*v18, v19);

    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    *(v0 + 136) = v5;
    *(v0 + 144) = v7;
    v20 = swift_task_alloc();
    *(v0 + 200) = v20;
    v20[2] = v8;
    v20[3] = v0 + 136;
    v20[4] = &unk_1E4C17D90;
    v20[5] = v9;
    v21 = swift_task_alloc();
    *(v0 + 208) = v21;
    *(v21 + 16) = v8;
    *(v21 + 24) = v0 + 136;
    v22 = *(MEMORY[0x1E69E88F0] + 4);
    v23 = swift_task_alloc();
    *(v0 + 216) = v23;
    *v23 = v0;
    v23[1] = sub_1E4BD8BEC;
    v24 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE18](v23, &unk_1E4C17DA0, v20, sub_1E4BE42A0, v21, 0, 0, v24);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();

    v14 = *(v0 + 176);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1E4BD8BEC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v11 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_1E4BD8D90;
  }

  else
  {
    v6 = v2[25];
    v5 = v2[26];
    v9 = v2 + 23;
    v8 = v2[23];
    v7 = v9[1];

    v4 = sub_1E4BD8D2C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E4BD8D2C()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E4BD8D90()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];

  v5 = v0[28];
  v6 = v0[22];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E4BD8E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD8E44, 0, 0);
}

uint64_t sub_1E4BD8E44()
{
  v1 = *(*(v0 + 112) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 120);

    v9 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v10 = *(v8 + 32);
    v11 = *(v8 + 16);
    *(v0 + 56) = *v8;
    *(v0 + 72) = v11;
    *(v0 + 88) = v10;
    *(v0 + 96) = v7;
    *(v0 + 104) = v6;
    v12 = *v9;
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_1E4BD7518;

    return sub_1E4BAD7E4(v0 + 56, (v0 + 96));
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t RCSService.addGroupChatParticipants(_:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  v5 = sub_1E4BEFAFC();
  *(v3 + 184) = v5;
  v6 = *(v5 - 8);
  *(v3 + 192) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v8 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v8;
  *(v3 + 48) = a2[2];

  return MEMORY[0x1EEE6DFA0](sub_1E4BD90B4, 0, 0);
}

uint64_t sub_1E4BD90B4()
{
  v1 = *(*(v0 + 56) + 16);
  *(v0 + 272) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_1E4BD915C;
  v3 = *(v0 + 176);

  return sub_1E4BD7EA8(v1, (v0 + 272));
}

uint64_t sub_1E4BD915C()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1E4BD9764;
  }

  else
  {
    v3 = sub_1E4BD9270;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BD9270()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  sub_1E4BEFAEC();
  v5 = sub_1E4BEFACC();
  v7 = v6;
  *(v0 + 224) = v6;
  (*(v2 + 8))(v1, v3);
  v8 = *(v4 + 120);
  v9 = swift_allocObject();
  *(v0 + 232) = v9;
  *(v9 + 16) = v4;
  v10 = *(v0 + 32);
  *(v9 + 24) = *(v0 + 16);
  *(v9 + 40) = v10;
  *(v9 + 56) = *(v0 + 48);
  *(v9 + 72) = v5;
  *(v9 + 80) = v7;

  sub_1E4BE437C(v0 + 16, v0 + 64);
  v11 = *(v4 + 16);
  os_unfair_lock_lock(v11 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v11 + 6);
  if (!Strong)
  {
    sub_1E4B304F4();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v13 = *(v0 + 216);
  sub_1E4B35420(v0 + 112);
  if (v13)
  {

LABEL_5:

    v15 = *(v0 + 200);

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 176);

  v19 = __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
  v20 = swift_allocObject();
  swift_weakInit();
  sub_1E4B819E4(*v19, v20);

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  *(v0 + 152) = v5;
  *(v0 + 160) = v7;
  v21 = swift_task_alloc();
  *(v0 + 240) = v21;
  v21[2] = v8;
  v21[3] = v0 + 152;
  v21[4] = &unk_1E4C17DB8;
  v21[5] = v9;
  v22 = swift_task_alloc();
  *(v0 + 248) = v22;
  *(v22 + 16) = v8;
  *(v22 + 24) = v0 + 152;
  v23 = *(MEMORY[0x1E69E88F0] + 4);
  v24 = swift_task_alloc();
  *(v0 + 256) = v24;
  *v24 = v0;
  v24[1] = sub_1E4BD9560;
  v25 = *(v0 + 168);

  return MEMORY[0x1EEE6DE18](v25, &unk_1E4C17DC8, v21, sub_1E4BE44A4, v22, 0, 0, &type metadata for RCSService.AddGroupChatParticipantsRequest.Result);
}

uint64_t sub_1E4BD9560()
{
  v2 = *(*v1 + 256);
  v3 = *v1;
  v3[33] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BD96D4, 0, 0);
  }

  else
  {
    v5 = v3[30];
    v4 = v3[31];
    v7 = v3[28];
    v6 = v3[29];
    v8 = v3[25];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1E4BD96D4()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];

  v5 = v0[33];
  v6 = v0[25];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E4BD9764()
{
  v1 = v0[27];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E4BD97C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BD97EC, 0, 0);
}

uint64_t sub_1E4BD97EC()
{
  v1 = *(*(v0 + 120) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 64);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = *(v0 + 128);

    v9 = __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
    v11 = v8[1];
    v10 = v8[2];
    *(v0 + 16) = *v8;
    *(v0 + 32) = v11;
    *(v0 + 48) = v10;
    *(v0 + 104) = v7;
    *(v0 + 112) = v6;
    v12 = *v9;
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    *v13 = v0;
    v13[1] = sub_1E4BD9984;

    return sub_1E4BAC520(v0 + 16, (v0 + 104));
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E4BD9984()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1E4BD562C;
  }

  else
  {
    v3 = sub_1E4BE698C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t RCSService.removeGroupChatParticipants(_:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  v5 = sub_1E4BEFAFC();
  *(v3 + 184) = v5;
  v6 = *(v5 - 8);
  *(v3 + 192) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v8 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v8;
  *(v3 + 48) = a2[2];

  return MEMORY[0x1EEE6DFA0](sub_1E4BD9B6C, 0, 0);
}

uint64_t sub_1E4BD9B6C()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  sub_1E4BEFAEC();
  v5 = sub_1E4BEFACC();
  v7 = v6;
  *(v0 + 208) = v6;
  (*(v2 + 8))(v1, v3);
  v8 = *(v4 + 128);
  v9 = swift_allocObject();
  *(v0 + 216) = v9;
  *(v9 + 16) = v4;
  v10 = *(v0 + 32);
  *(v9 + 24) = *(v0 + 16);
  *(v9 + 40) = v10;
  *(v9 + 56) = *(v0 + 48);
  *(v9 + 72) = v5;
  *(v9 + 80) = v7;

  sub_1E4BE45D8(v0 + 16, v0 + 64);
  v11 = *(v4 + 16);
  os_unfair_lock_lock(v11 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v11 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 112);
    v17 = *(v0 + 176);

    v18 = __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
    v19 = swift_allocObject();
    swift_weakInit();
    sub_1E4B819E4(*v18, v19);

    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
    *(v0 + 152) = v5;
    *(v0 + 160) = v7;
    v20 = swift_task_alloc();
    *(v0 + 224) = v20;
    v20[2] = v8;
    v20[3] = v0 + 152;
    v20[4] = &unk_1E4C17DE0;
    v20[5] = v9;
    v21 = swift_task_alloc();
    *(v0 + 232) = v21;
    *(v21 + 16) = v8;
    *(v21 + 24) = v0 + 152;
    v22 = *(MEMORY[0x1E69E88F0] + 4);
    v23 = swift_task_alloc();
    *(v0 + 240) = v23;
    *v23 = v0;
    v23[1] = sub_1E4BD9E5C;
    v24 = *(v0 + 168);

    return MEMORY[0x1EEE6DE18](v24, &unk_1E4C17DF0, v20, sub_1E4BE4700, v21, 0, 0, &type metadata for RCSService.RemoveGroupChatParticipantsRequest.Result);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();

    v14 = *(v0 + 200);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1E4BD9E5C()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BD9FD0, 0, 0);
  }

  else
  {
    v5 = v3[28];
    v4 = v3[29];
    v7 = v3[26];
    v6 = v3[27];
    v8 = v3[25];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1E4BD9FD0()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];

  v5 = v0[31];
  v6 = v0[25];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E4BDA060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BDA084, 0, 0);
}

uint64_t sub_1E4BDA084()
{
  v1 = *(*(v0 + 120) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 64);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = *(v0 + 128);

    v9 = __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
    v11 = v8[1];
    v10 = v8[2];
    *(v0 + 16) = *v8;
    *(v0 + 32) = v11;
    *(v0 + 48) = v10;
    *(v0 + 104) = v7;
    *(v0 + 112) = v6;
    v12 = *v9;
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    *v13 = v0;
    v13[1] = sub_1E4BDA21C;

    return sub_1E4BACB50(v0 + 16, (v0 + 104));
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E4BDA21C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1E4BE6978;
  }

  else
  {
    v3 = sub_1E4BE698C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t RCSService.changeGroupChatSubject(_:)(uint64_t a1)
{
  *(v2 + 184) = v1;
  v4 = sub_1E4BEFAFC();
  *(v2 + 192) = v4;
  v5 = *(v4 - 8);
  *(v2 + 200) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v7 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v7;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E4BDA40C, 0, 0);
}

uint64_t sub_1E4BDA40C()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  sub_1E4BEFAEC();
  v5 = sub_1E4BEFACC();
  v7 = v6;
  *(v0 + 216) = v6;
  (*(v2 + 8))(v1, v4);
  v8 = *(v3 + 104);
  v9 = swift_allocObject();
  *(v0 + 224) = v9;
  *(v9 + 16) = v3;
  v10 = *(v0 + 32);
  *(v9 + 24) = *(v0 + 16);
  *(v9 + 40) = v10;
  *(v9 + 56) = *(v0 + 48);
  *(v9 + 72) = *(v0 + 64);
  *(v9 + 80) = v5;
  *(v9 + 88) = v7;

  sub_1E4BE47DC(v0 + 16, v0 + 72);
  v11 = *(v3 + 16);
  os_unfair_lock_lock(v11 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v11 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 128);
    v17 = *(v0 + 184);

    v18 = __swift_project_boxed_opaque_existential_1((v0 + 128), *(v0 + 152));
    v19 = swift_allocObject();
    swift_weakInit();
    sub_1E4B819E4(*v18, v19);

    __swift_destroy_boxed_opaque_existential_1((v0 + 128));
    *(v0 + 168) = v5;
    *(v0 + 176) = v7;
    v20 = swift_task_alloc();
    *(v0 + 232) = v20;
    v20[2] = v8;
    v20[3] = v0 + 168;
    v20[4] = &unk_1E4C17E08;
    v20[5] = v9;
    v21 = swift_task_alloc();
    *(v0 + 240) = v21;
    *(v21 + 16) = v8;
    *(v21 + 24) = v0 + 168;
    v22 = *(MEMORY[0x1E69E88F0] + 4);
    v23 = swift_task_alloc();
    *(v0 + 248) = v23;
    *v23 = v0;
    v23[1] = sub_1E4BDA700;
    v24 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE18](v23, &unk_1E4C17E10, v20, sub_1E4BE697C, v21, 0, 0, v24);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();

    v14 = *(v0 + 208);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1E4BDA700()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v11 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_1E4BDA8A4;
  }

  else
  {
    v6 = v2[29];
    v5 = v2[30];
    v9 = v2 + 27;
    v8 = v2[27];
    v7 = v9[1];

    v4 = sub_1E4BDA840;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E4BDA840()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E4BDA8A4()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];

  v5 = v0[32];
  v6 = v0[26];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E4BDA934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BDA958, 0, 0);
}

uint64_t sub_1E4BDA958()
{
  v1 = *(*(v0 + 128) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 72);
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 136);

    v9 = __swift_project_boxed_opaque_existential_1((v0 + 72), *(v0 + 96));
    v11 = v8[1];
    v10 = v8[2];
    v12 = *v8;
    *(v0 + 64) = *(v8 + 6);
    *(v0 + 32) = v11;
    *(v0 + 48) = v10;
    *(v0 + 16) = v12;
    *(v0 + 112) = v7;
    *(v0 + 120) = v6;
    v13 = *v9;
    v14 = swift_task_alloc();
    *(v0 + 160) = v14;
    *v14 = v0;
    v14[1] = sub_1E4BDAAF8;

    return sub_1E4BAD190(v0 + 16, (v0 + 112));
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E4BDAAF8()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1E4BDAC0C;
  }

  else
  {
    v3 = sub_1E4B27504;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BDAC0C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v1 = v0[21];
  v2 = v0[1];

  return v2();
}

uint64_t RCSService.incomingMessageNotifications.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = *(v1 + 16);
  os_unfair_lock_lock(v5 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v5 + 6);
  if (Strong)
  {
    sub_1E4B35420(v12);

    if (!v2)
    {
      v8 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v9 = swift_allocObject();
      swift_weakInit();
      sub_1E4B81EA0(*v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v12);
      v10 = *(v3 + 64);
      return sub_1E4B2C800(a1);
    }
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E4BDAD84(uint64_t a1)
{
  v2 = type metadata accessor for RCSReceivedNotification();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RCSService.IncomingMessageNotification(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1E4BE6884(a1, v5, type metadata accessor for RCSReceivedNotification);
    sub_1E4BE68EC(v5, v9, type metadata accessor for RCSMessage);
    v12 = &v5[*(v2 + 20)];
    v13 = *&v5[*(v2 + 24)];
    v14 = &v9[*(v6 + 20)];
    v15 = *(v12 + 1);
    *v14 = *v12;
    *(v14 + 1) = v15;
    *&v9[*(v6 + 24)] = v13;
    v16 = *(v11 + 64);
    sub_1E4B763C4(v9);
    sub_1E4BE3004(v9, type metadata accessor for RCSService.IncomingMessageNotification);
  }

  return result;
}

uint64_t RCSService.groupChatEvents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = *(v1 + 16);
  os_unfair_lock_lock(v5 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v5 + 6);
  if (Strong)
  {
    sub_1E4B35420(v12);

    if (!v2)
    {
      v8 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v9 = swift_allocObject();
      swift_weakInit();
      sub_1E4B829D0(*v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v12);
      v10 = *(v3 + 80);
      return sub_1E4B2CEFC(a1);
    }
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E4BDB024(__n128 *a1)
{
  v1 = a1[3];
  v10 = a1[2];
  v11 = v1;
  v12 = a1[4];
  v2 = a1[1];
  v8 = *a1;
  v9 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v6[2] = v10;
    v6[3] = v11;
    v6[4] = v12;
    v6[0] = v8;
    v6[1] = v9;
    sub_1E4B84A40(&v8, v7);
    sub_1E4BDB0DC(v6, v7);
    v5 = *(v4 + 80);
    sub_1E4B7675C(v7);

    return sub_1E4B84AF8(v7);
  }

  return result;
}

__n128 sub_1E4BDB0DC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[1];
  v18 = *a1;
  v19 = v3;
  v4 = a1[3];
  v20 = a1[2];
  v21 = v4;
  v22 = a1[4];
  v5 = v18.n128_u8[0];
  v6 = v18.n128_i64[1];
  v7 = v20;
  v8 = v4;
  v9 = v22.n128_u8[0];
  v10 = *(v22.n128_u32 + 1) | ((*(&v22.n128_u16[2] + 1) | (v22.n128_u8[7] << 16)) << 32);
  v11 = v22.n128_i64[1];
  v12 = v18.n128_u8[7] >> 5;
  v17 = v19;
  if (v12 <= 1)
  {
    if (v12)
    {

      sub_1E4B1BEC4(&v18);
      v9 &= 1u;
      v13 = 0x6000000000000000;
      goto LABEL_11;
    }

    sub_1E4B1BEC4(&v18);
    v9 |= v10 << 8;
    v14 = v5 & 1;
  }

  else
  {
    if (v12 == 2)
    {

      sub_1E4B1BEC4(&v18);
      v15 = 0x4000000000000000;
    }

    else
    {
      if (v12 == 3)
      {
        v9 = v22.n128_u8[0] | (v10 << 8);

        sub_1E4B1BEC4(&v18);
        v13 = 0x8000000000000000;
LABEL_11:
        v14 = v13 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
        goto LABEL_12;
      }

      sub_1E4B1BEC4(&v18);
      v15 = 0x2000000000000000;
    }

    v14 = v15 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  }

LABEL_12:
  a2->n128_u64[0] = v14;
  a2->n128_u64[1] = v6;
  result = v17;
  a2[1] = v17;
  a2[2] = v7;
  a2[3] = v8;
  a2[4].n128_u64[0] = v9;
  a2[4].n128_u64[1] = v11;
  return result;
}

uint64_t RCSService.reportSpam(_:)(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(type metadata accessor for RCSService.ReportSpamRequest(0) - 8);
  v2[18] = v3;
  v2[19] = *(v3 + 64);
  v2[20] = swift_task_alloc();
  v4 = sub_1E4BEFAFC();
  v2[21] = v4;
  v5 = *(v4 - 8);
  v2[22] = v5;
  v6 = *(v5 + 64) + 15;
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for RCSMessage(0);
  v2[24] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BDB408, 0, 0);
}

uint64_t sub_1E4BDB408()
{
  v94 = v0;
  if (qword_1ECF92440 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 128);
  v5 = sub_1E4BEFB7C();
  *(v0 + 224) = __swift_project_value_buffer(v5, qword_1ECF97928);
  sub_1E4BE6884(v4, v2, type metadata accessor for RCSMessage);
  sub_1E4BE6884(v4, v1, type metadata accessor for RCSMessage);
  sub_1E4BE6884(v4, v3, type metadata accessor for RCSMessage);
  v6 = sub_1E4BEFB5C();
  v7 = sub_1E4BF04BC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  v11 = *(v0 + 200);
  if (v8)
  {
    v84 = *(v0 + 192);
    v12 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v88 = v86;
    *v12 = 136315650;
    v13 = *(v10 + 16);
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v13);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    sub_1E4BE3004(v10, type metadata accessor for RCSMessage);
    v14 = sub_1E4B30548(0, 0xE000000000000000, &v88);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    v15 = v9 + *(v84 + 28);
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    v89 = *v15;
    v90 = v16;
    v91 = v17;
    v92 = v18;
    v93 = v19;
    sub_1E4ADD6D8(v89, v16, v17, v18, v19);
    v20 = RCSHandle.description.getter();
    v22 = v21;
    sub_1E4ADD764(v89, v90, v91, v92, v93);
    sub_1E4BE3004(v9, type metadata accessor for RCSMessage);
    v23 = sub_1E4B30548(v20, v22, &v88);

    *(v12 + 14) = v23;
    *(v12 + 22) = 2080;
    v24 = *(v84 + 32);
    sub_1E4BEFABC();
    sub_1E4BC3EF0(&qword_1ECF94378, MEMORY[0x1E6969530]);
    v25 = sub_1E4BF096C();
    v27 = v26;
    sub_1E4BE3004(v11, type metadata accessor for RCSMessage);
    v28 = sub_1E4B30548(v25, v27, &v88);

    *(v12 + 24) = v28;
    _os_log_impl(&dword_1E4AD3000, v6, v7, "[%s] Reporting RCS message as spam. (RCSMessage: sender: [%s], receivedAt: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v86, -1, -1);
    MEMORY[0x1E6921800](v12, -1, -1);
  }

  else
  {

    sub_1E4BE3004(v11, type metadata accessor for RCSMessage);
    sub_1E4BE3004(v9, type metadata accessor for RCSMessage);
    sub_1E4BE3004(v10, type metadata accessor for RCSMessage);
  }

  v30 = *(v0 + 176);
  v29 = *(v0 + 184);
  v31 = *(v0 + 168);
  v32 = *(v0 + 136);
  sub_1E4BEFAEC();
  v33 = sub_1E4BEFACC();
  v35 = v34;
  *(v0 + 232) = v34;
  v36 = *(v30 + 8);
  *(v0 + 240) = v36;
  *(v0 + 248) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v29, v31);
  v37 = *(v32 + 16);
  *(v0 + 256) = v37;
  os_unfair_lock_lock(v37 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v37 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 56);

    v39 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    *(v0 + 112) = v33;
    *(v0 + 120) = v35;
    *(v0 + 328) = 1;
    v40 = *v39;
    v41 = swift_task_alloc();
    *(v0 + 264) = v41;
    *v41 = v0;
    v41[1] = sub_1E4BDBD08;
    v42 = *(v0 + 128);

    return sub_1E4BAF59C(v42, (v0 + 112), (v0 + 328));
  }

  else
  {
    sub_1E4B304F4();
    v44 = swift_allocError();
    *v45 = 1;
    swift_willThrow();

    v46 = *(v0 + 224);
    v47 = v44;
    v48 = sub_1E4BEFB5C();
    v49 = sub_1E4BF04BC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      v52 = v44;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v53;
      *v51 = v53;
      _os_log_impl(&dword_1E4AD3000, v48, v49, "Could't report spam via SMS to carrier Error: %@", v50, 0xCu);
      sub_1E4AE0AE4(v51, &qword_1ECF93B50, &qword_1E4C05660);
      MEMORY[0x1E6921800](v51, -1, -1);
      MEMORY[0x1E6921800](v50, -1, -1);
    }

    else
    {
    }

    v54 = *(v0 + 256);
    os_unfair_lock_lock(v54 + 6);
    v55 = swift_weakLoadStrong();
    os_unfair_lock_unlock(v54 + 6);
    if (v55)
    {
      sub_1E4B35420(v0 + 16);
      v64 = *(v0 + 240);
      v63 = *(v0 + 248);
      v65 = *(v0 + 184);
      v66 = *(v0 + 160);
      v67 = *(v0 + 168);
      v85 = *(v0 + 144);
      v87 = *(v0 + 152);
      v69 = *(v0 + 128);
      v68 = *(v0 + 136);

      v70 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v71 = swift_allocObject();
      swift_weakInit();
      sub_1E4B8323C(*v70, v71);

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      sub_1E4BEFAEC();
      v72 = sub_1E4BEFACC();
      v74 = v73;
      *(v0 + 280) = v73;
      v64(v65, v67);
      v75 = *(v68 + 152);
      sub_1E4BE6884(v69, v66, type metadata accessor for RCSService.ReportSpamRequest);
      v76 = (*(v85 + 80) + 24) & ~*(v85 + 80);
      v77 = swift_allocObject();
      *(v0 + 288) = v77;
      *(v77 + 16) = v68;
      sub_1E4BE68EC(v66, v77 + v76, type metadata accessor for RCSService.ReportSpamRequest);
      v78 = (v77 + ((v87 + v76 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v78 = v72;
      v78[1] = v74;
      *(v0 + 96) = v72;
      *(v0 + 104) = v74;

      v79 = swift_task_alloc();
      *(v0 + 296) = v79;
      v79[2] = v75;
      v79[3] = v0 + 96;
      v79[4] = &unk_1E4C17E28;
      v79[5] = v77;
      v80 = swift_task_alloc();
      *(v0 + 304) = v80;
      *(v80 + 16) = v75;
      *(v80 + 24) = v0 + 96;
      v81 = *(MEMORY[0x1E69E88F0] + 4);
      v82 = swift_task_alloc();
      *(v0 + 312) = v82;
      *v82 = v0;
      v82[1] = sub_1E4BDC5E0;
      v83 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DE18](v82, &unk_1E4C17E30, v79, sub_1E4BE697C, v80, 0, 0, v83);
    }

    else
    {
      sub_1E4B304F4();
      swift_allocError();
      *v56 = 1;
      swift_willThrow();
      v58 = *(v0 + 208);
      v57 = *(v0 + 216);
      v59 = *(v0 + 200);
      v60 = *(v0 + 184);
      v61 = *(v0 + 160);

      v62 = *(v0 + 8);

      return v62();
    }
  }
}

uint64_t sub_1E4BDBD08()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_1E4BDC184;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_1E4BDBE24;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E4BDBE24()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[34];
  v2 = v0[32];
  os_unfair_lock_lock(v2 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v2 + 6);
  if (!Strong)
  {
    sub_1E4B304F4();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  sub_1E4B35420((v0 + 2));
  if (v1)
  {

LABEL_5:
    v6 = v0[26];
    v5 = v0[27];
    v7 = v0[25];
    v8 = v0[23];
    v9 = v0[20];

    v10 = v0[1];

    return v10();
  }

  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[23];
  v15 = v0[20];
  v16 = v0[21];
  v33 = v0[18];
  v34 = v0[19];
  v18 = v0[16];
  v17 = v0[17];

  v19 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v20 = swift_allocObject();
  swift_weakInit();
  sub_1E4B8323C(*v19, v20);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_1E4BEFAEC();
  v21 = sub_1E4BEFACC();
  v23 = v22;
  v0[35] = v22;
  v13(v14, v16);
  v24 = *(v17 + 152);
  sub_1E4BE6884(v18, v15, type metadata accessor for RCSService.ReportSpamRequest);
  v25 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v26 = swift_allocObject();
  v0[36] = v26;
  *(v26 + 16) = v17;
  sub_1E4BE68EC(v15, v26 + v25, type metadata accessor for RCSService.ReportSpamRequest);
  v27 = (v26 + ((v34 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = v21;
  v27[1] = v23;
  v0[12] = v21;
  v0[13] = v23;

  v28 = swift_task_alloc();
  v0[37] = v28;
  v28[2] = v24;
  v28[3] = v0 + 12;
  v28[4] = &unk_1E4C17E28;
  v28[5] = v26;
  v29 = swift_task_alloc();
  v0[38] = v29;
  *(v29 + 16) = v24;
  *(v29 + 24) = v0 + 12;
  v30 = *(MEMORY[0x1E69E88F0] + 4);
  v31 = swift_task_alloc();
  v0[39] = v31;
  *v31 = v0;
  v31[1] = sub_1E4BDC5E0;
  v32 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v31, &unk_1E4C17E30, v28, sub_1E4BE697C, v29, 0, 0, v32);
}

uint64_t sub_1E4BDC184()
{
  v1 = v0[29];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v0[34];
  v3 = v0[28];
  v4 = v2;
  v5 = sub_1E4BEFB5C();
  v6 = sub_1E4BF04BC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E4AD3000, v5, v6, "Could't report spam via SMS to carrier Error: %@", v7, 0xCu);
    sub_1E4AE0AE4(v8, &qword_1ECF93B50, &qword_1E4C05660);
    MEMORY[0x1E6921800](v8, -1, -1);
    MEMORY[0x1E6921800](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[32];
  os_unfair_lock_lock(v11 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v11 + 6);
  if (Strong)
  {
    sub_1E4B35420((v0 + 2));
    v22 = v0[30];
    v21 = v0[31];
    v23 = v0[23];
    v24 = v0[20];
    v25 = v0[21];
    v42 = v0[18];
    v43 = v0[19];
    v27 = v0[16];
    v26 = v0[17];

    v28 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v29 = swift_allocObject();
    swift_weakInit();
    sub_1E4B8323C(*v28, v29);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    sub_1E4BEFAEC();
    v30 = sub_1E4BEFACC();
    v32 = v31;
    v0[35] = v31;
    v22(v23, v25);
    v33 = *(v26 + 152);
    sub_1E4BE6884(v27, v24, type metadata accessor for RCSService.ReportSpamRequest);
    v34 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v35 = swift_allocObject();
    v0[36] = v35;
    *(v35 + 16) = v26;
    sub_1E4BE68EC(v24, v35 + v34, type metadata accessor for RCSService.ReportSpamRequest);
    v36 = (v35 + ((v43 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v36 = v30;
    v36[1] = v32;
    v0[12] = v30;
    v0[13] = v32;

    v37 = swift_task_alloc();
    v0[37] = v37;
    v37[2] = v33;
    v37[3] = v0 + 12;
    v37[4] = &unk_1E4C17E28;
    v37[5] = v35;
    v38 = swift_task_alloc();
    v0[38] = v38;
    *(v38 + 16) = v33;
    *(v38 + 24) = v0 + 12;
    v39 = *(MEMORY[0x1E69E88F0] + 4);
    v40 = swift_task_alloc();
    v0[39] = v40;
    *v40 = v0;
    v40[1] = sub_1E4BDC5E0;
    v41 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE18](v40, &unk_1E4C17E30, v37, sub_1E4BE697C, v38, 0, 0, v41);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    v15 = v0[26];
    v14 = v0[27];
    v16 = v0[25];
    v17 = v0[23];
    v18 = v0[20];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1E4BDC5E0()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v11 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_1E4BDC7B8;
  }

  else
  {
    v6 = v2[37];
    v5 = v2[38];
    v9 = v2 + 35;
    v8 = v2[35];
    v7 = v9[1];

    v4 = sub_1E4BDC720;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E4BDC720()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E4BDC7B8()
{
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v3 = v0[36];

  v5 = v0[40];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[20];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E4BDC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BDC8A0, 0, 0);
}

uint64_t sub_1E4BDC8A0()
{
  v1 = *(*(v0 + 72) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);

    v8 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 56) = v7;
    *(v0 + 64) = v6;
    *(v0 + 120) = 0;
    v9 = *v8;
    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = sub_1E4BDCA30;
    v11 = *(v0 + 80);

    return sub_1E4BAF59C(v11, (v0 + 56), (v0 + 120));
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E4BDCA30()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1E4BDCB44;
  }

  else
  {
    v3 = sub_1E4B28D7C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BDCB44()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[14];
  v2 = v0[1];

  return v2();
}

uint64_t RCSService.revokeMessage(_:)(_OWORD *a1)
{
  *(v2 + 248) = v1;
  v4 = sub_1E4BEFAFC();
  *(v2 + 256) = v4;
  v5 = *(v4 - 8);
  *(v2 + 264) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  v7 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v7;
  v8 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E4BDCC7C, 0, 0);
}

uint64_t sub_1E4BDCC7C()
{
  v37 = v0;
  v1 = *(*(v0 + 248) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 144);
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 248);
    v10 = *(v0 + 256);

    v11 = __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
    v12 = swift_allocObject();
    swift_weakInit();
    sub_1E4B83A98(*v11, v12);

    __swift_destroy_boxed_opaque_existential_1((v0 + 144));
    *(v0 + 184) = *(v0 + 64);
    sub_1E4BEFAEC();
    v13 = sub_1E4BEFACC();
    v15 = v14;
    (*(v8 + 8))(v7, v10);
    if (qword_1ECF92440 != -1)
    {
      swift_once();
    }

    v16 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v16, qword_1ECF97928);
    sub_1E4BE4950(v0 + 184, v0 + 200);

    v17 = sub_1E4BEFB5C();
    v18 = sub_1E4BF04BC();
    sub_1E4BE49AC(v0 + 184);

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35 = v20;
      v36[0] = 0;
      *v19 = 136315394;
      v21 = *(v0 + 184);
      v22 = *(v0 + 192);
      sub_1E4BE4950(v0 + 184, v0 + 232);
      sub_1E4BF069C();

      strcpy(v36, "RCSMessageID(");
      HIWORD(v36[1]) = -4864;
      MEMORY[0x1E69205B0](v21, v22);
      MEMORY[0x1E69205B0](41, 0xE100000000000000);
      sub_1E4BE49AC(v0 + 184);
      v23 = sub_1E4B30548(v36[0], v36[1], &v35);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v36[0] = 0;
      v36[1] = 0xE000000000000000;

      sub_1E4BF069C();

      strcpy(v36, "RCSMessageID(");
      HIWORD(v36[1]) = -4864;
      MEMORY[0x1E69205B0](v13, v15);
      MEMORY[0x1E69205B0](41, 0xE100000000000000);

      v24 = sub_1E4B30548(v36[0], v36[1], &v35);

      *(v19 + 14) = v24;
      _os_log_impl(&dword_1E4AD3000, v17, v18, "Revoking RCS message: %s, message ID for request: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6921800](v20, -1, -1);
      MEMORY[0x1E6921800](v19, -1, -1);
    }

    v25 = *(v0 + 248);
    v26 = *(v25 + 144);
    v27 = swift_allocObject();
    v28 = *(v0 + 32);
    *(v27 + 24) = *(v0 + 16);
    *(v27 + 40) = v28;
    v29 = *(v0 + 64);
    *(v27 + 56) = *(v0 + 48);
    *(v0 + 280) = v27;
    *(v27 + 16) = v25;
    *(v27 + 72) = v29;
    *(v27 + 88) = v13;
    *(v27 + 96) = v15;
    *(v0 + 216) = *(v0 + 184);

    sub_1E4BE4AAC(v0 + 16, v0 + 80);
    v30 = swift_task_alloc();
    *(v0 + 288) = v30;
    v30[2] = v26;
    v30[3] = v0 + 216;
    v30[4] = &unk_1E4C17E50;
    v30[5] = v27;
    v31 = swift_task_alloc();
    *(v0 + 296) = v31;
    *(v31 + 16) = v26;
    *(v31 + 24) = v0 + 216;
    v32 = *(MEMORY[0x1E69E88F0] + 4);
    v33 = swift_task_alloc();
    *(v0 + 304) = v33;
    *v33 = v0;
    v33[1] = sub_1E4BDD1C0;
    v34 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DE18](v0 + 320, &unk_1E4C17E60, v30, sub_1E4BE4BD4, v31, 0, 0, v34);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 272);

    v5 = *(v0 + 8);

    return v5(0);
  }
}

uint64_t sub_1E4BDD1C0()
{
  v2 = *(*v1 + 304);
  v3 = *v1;
  *(v3 + 312) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BDD330, 0, 0);
  }

  else
  {
    v5 = *(v3 + 288);
    v4 = *(v3 + 296);
    v7 = *(v3 + 272);
    v6 = *(v3 + 280);

    v8 = *(v3 + 320);

    v9 = *(v3 + 8);

    return v9(v8);
  }
}

uint64_t sub_1E4BDD330()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];

  v4 = v0[39];
  v5 = v0[34];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1E4BDD3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BDD3D8, 0, 0);
}

uint64_t sub_1E4BDD3D8()
{
  v1 = *(*(v0 + 136) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 80);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);

    v9 = __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
    v10 = v8[3];
    v12 = *v8;
    v11 = v8[1];
    *(v0 + 48) = v8[2];
    *(v0 + 64) = v10;
    *(v0 + 16) = v12;
    *(v0 + 32) = v11;
    *(v0 + 120) = v7;
    *(v0 + 128) = v6;
    v13 = *v9;
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *v14 = v0;
    v14[1] = sub_1E4BDD570;

    return sub_1E4BAFBD8(v0 + 16, (v0 + 120));
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E4BDD570()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1E4BDD6E8;
  }

  else
  {
    v3 = sub_1E4BDD684;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BDD684()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BDD6E8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  v1 = v0[22];
  v2 = v0[1];

  return v2();
}

void *RCSService.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  v9 = v0[15];

  v10 = v0[16];

  v11 = v0[17];

  v12 = v0[18];

  v13 = v0[19];

  v14 = v0[20];

  return v0;
}

uint64_t RCSService.__deallocating_deinit()
{
  RCSService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

void sub_1E4BDD810(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 96);
    if (v3 == 10)
    {
      sub_1E4B74398(v2, v1);
    }

    else
    {
      sub_1E4B843DC();
      v6 = swift_allocError();
      *v7 = v3;
      sub_1E4BC8228(v2, v1, v6);
    }
  }
}

void sub_1E4BDD8DC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *(a1 + 40);
  v20 = *(a1 + 24);
  v21 = v3;
  *v22 = *(a1 + 56);
  *&v22[9] = *(a1 + 65);
  v4 = *(a1 + 81);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v22[24] > 1u)
    {
      if (v22[24] != 2)
      {
        v9 = Strong[13];
        if (v4 != 10)
        {
          sub_1E4B843DC();
          v11 = swift_allocError();
          *v17 = v4;
          sub_1E4BC89A8(v2, v1, v11);
          goto LABEL_19;
        }

        sub_1E4B74564(v2, v1);
        goto LABEL_16;
      }

      if (v4 != 10)
      {
        v13 = Strong[15];
        sub_1E4B843DC();
        v11 = swift_allocError();
        *v14 = v4;
        sub_1E4BC8B88(v2, v1, v11);
        goto LABEL_19;
      }

      v7 = Strong[15];
      sub_1E4BE5EF8(v20, *(&v20 + 1), v21, *(&v21 + 1), *v22, *&v22[8], *&v22[16], 2u);
      sub_1E4B738F8(v2, v1, v20);
    }

    else
    {
      if (!v22[24])
      {
        if (v4 != 10)
        {
          v10 = Strong[14];
          sub_1E4B843DC();
          v11 = swift_allocError();
          *v12 = v4;
          sub_1E4BC87C8(v2, v1, v11);
LABEL_19:

          return;
        }

        v6 = Strong[14];
        v18[0] = v20;
        v18[1] = v21;
        v18[2] = *v22;
        v19 = *&v22[16];

        sub_1E4B73520(v2, v1, v18);
        sub_1E4BE5F6C(v18);
LABEL_16:

        return;
      }

      if (v4 != 10)
      {
        v15 = Strong[16];
        sub_1E4B843DC();
        v11 = swift_allocError();
        *v16 = v4;
        sub_1E4BC8D68(v2, v1, v11);
        goto LABEL_19;
      }

      v8 = Strong[16];
      sub_1E4BE5EF8(v20, *(&v20 + 1), v21, *(&v21 + 1), *v22, *&v22[8], *&v22[16], 1u);
      sub_1E4B73718(v2, v1, v20);
    }

    sub_1E4AE0AE4(&v20, &qword_1ECF93DB8, &qword_1E4C18C70);
  }
}

void sub_1E4BDDB98(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v6 = type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0);
    v7 = *(a1 + *(v6 + 32));
    v8 = *(v3 + 136);
    if (v7 == 10)
    {
      sub_1E4B73AD8(v5, v4, a1 + *(v6 + 28));
    }

    else
    {
      sub_1E4B843DC();
      v9 = swift_allocError();
      *v10 = v7;
      sub_1E4BC8408(v5, v4, v9);
    }
  }
}

void sub_1E4BDDC7C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 144);
    if (v4 == 10)
    {
      sub_1E4B73D1C(v2, v1, v3);
    }

    else
    {
      sub_1E4B843DC();
      v7 = swift_allocError();
      *v8 = v4;
      sub_1E4BC8F48(v2, v1, v7);
    }
  }
}

void sub_1E4BDDD50(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 152);
    if (v3 == 10)
    {
      sub_1E4B74564(v2, v1);
    }

    else
    {
      sub_1E4B843DC();
      v6 = swift_allocError();
      *v7 = v3;
      sub_1E4BC89A8(v2, v1, v6);
    }
  }
}

void sub_1E4BDDE1C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = type metadata accessor for RCSChatbotRenderInformationResponse();
    v5 = (a1 + *(v4 + 20));
    v6 = v5[1];
    if (!v6)
    {
      if (qword_1ECF92440 != -1)
      {
        swift_once();
      }

      v10 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v10, qword_1ECF97928);
      v11 = sub_1E4BEFB5C();
      v12 = sub_1E4BF04DC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1E4AD3000, v11, v12, "Received render info response with missing operation ID", v13, 2u);
        MEMORY[0x1E6921800](v13, -1, -1);
      }

      goto LABEL_10;
    }

    v7 = *v5;
    v8 = *(a1 + *(v4 + 24));
    v9 = *(v3 + 160);
    if (v8 == 10)
    {
      sub_1E4B73EF8(v7, v6, a1);
LABEL_10:

      return;
    }

    sub_1E4B843DC();
    v14 = swift_allocError();
    *v15 = v8;
    sub_1E4BC85E8(v7, v6, v14);
  }
}

uint64_t sub_1E4BDDFCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1E4B8EFD4();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v21 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4BDFAD0(&qword_1ECF944B0, &qword_1E4C0EF40, &qword_1ECF94508, &unk_1E4C05518);
      v10 = v21;
    }

    v11 = *(*(v10 + 48) + 16 * v7 + 8);

    v12 = *(v10 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a1, v12 + *(v20 + 72) * v7, v13);
    sub_1E4BDF184(v7, v10, &qword_1ECF944B0, &qword_1E4C0EF40);
    *v2 = v10;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1E4BDE18C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1E4B8EFD4();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v21 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4BDFAD0(&qword_1ECF944F8, &qword_1E4C05508, &qword_1ECF94500, &qword_1E4C05510);
      v10 = v21;
    }

    v11 = *(*(v10 + 48) + 16 * v7 + 8);

    v12 = *(v10 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944F8, &qword_1E4C05508);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a1, v12 + *(v20 + 72) * v7, v13);
    sub_1E4BDF184(v7, v10, &qword_1ECF944F8, &qword_1E4C05508);
    *v2 = v10;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944F8, &qword_1E4C05508);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1E4BDE34C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1E4B8EFD4();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v21 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4BDFAD0(&qword_1ECF944D0, &qword_1E4C0E800, &qword_1ECF944D8, &unk_1E4C054E0);
      v10 = v21;
    }

    v11 = *(*(v10 + 48) + 16 * v7 + 8);

    v12 = *(v10 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944D0, &qword_1E4C0E800);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a1, v12 + *(v20 + 72) * v7, v13);
    sub_1E4BDF184(v7, v10, &qword_1ECF944D0, &qword_1E4C0E800);
    *v2 = v10;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944D0, &qword_1E4C0E800);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1E4BDE50C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1E4B8EFD4();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v21 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4BDFAD0(&qword_1ECF944C0, &unk_1E4C18C50, &qword_1ECF944C8, &unk_1E4C054D0);
      v10 = v21;
    }

    v11 = *(*(v10 + 48) + 16 * v7 + 8);

    v12 = *(v10 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944C0, &unk_1E4C18C50);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a1, v12 + *(v20 + 72) * v7, v13);
    sub_1E4BDF184(v7, v10, &qword_1ECF944C0, &unk_1E4C18C50);
    *v2 = v10;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944C0, &unk_1E4C18C50);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1E4BDE6CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1E4B8EFD4();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v21 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4BDFAD0(&qword_1ECF944B0, &qword_1E4C0EF40, &qword_1ECF944B8, &unk_1E4C054C0);
      v10 = v21;
    }

    v11 = *(*(v10 + 48) + 16 * v7 + 8);

    v12 = *(v10 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a1, v12 + *(v20 + 72) * v7, v13);
    sub_1E4BDF184(v7, v10, &qword_1ECF944B0, &qword_1E4C0EF40);
    *v2 = v10;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1E4BDE88C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1E4B8EFD4();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v21 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4BDFAD0(&qword_1ECF944A0, &qword_1E4C054A8, &qword_1ECF944A8, &unk_1E4C054B0);
      v10 = v21;
    }

    v11 = *(*(v10 + 48) + 16 * v7 + 8);

    v12 = *(v10 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944A0, &qword_1E4C054A8);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a1, v12 + *(v20 + 72) * v7, v13);
    sub_1E4BDF184(v7, v10, &qword_1ECF944A0, &qword_1E4C054A8);
    *v2 = v10;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944A0, &qword_1E4C054A8);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1E4BDEA4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1E4B8EFD4();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v21 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4BDFAD0(&qword_1ECF94490, &unk_1E4C18C00, &qword_1ECF94498, &qword_1E4C054A0);
      v10 = v21;
    }

    v11 = *(*(v10 + 48) + 16 * v7 + 8);

    v12 = *(v10 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94490, &unk_1E4C18C00);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a1, v12 + *(v20 + 72) * v7, v13);
    sub_1E4BDF184(v7, v10, &qword_1ECF94490, &unk_1E4C18C00);
    *v2 = v10;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94490, &unk_1E4C18C00);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1E4BDEC0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1E4B8EFD4();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v21 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4BDFAD0(&qword_1ECF94450, qword_1E4C0E6F0, &qword_1ECF94458, &unk_1E4C05450);
      v10 = v21;
    }

    v11 = *(*(v10 + 48) + 16 * v7 + 8);

    v12 = *(v10 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94450, qword_1E4C0E6F0);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a1, v12 + *(v20 + 72) * v7, v13);
    sub_1E4BDF184(v7, v10, &qword_1ECF94450, qword_1E4C0E6F0);
    *v2 = v10;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94450, qword_1E4C0E6F0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_1E4BDEDCC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E4BF05EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 4 * v6);
      sub_1E4BF0A6C();
      sub_1E4BF0A8C();
      result = sub_1E4BF0A9C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 4 * v3);
      v14 = (v12 + 4 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for MMSMessage(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1E4BDEF9C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E4BF05EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 4 * v6);
      sub_1E4BF0A6C();
      sub_1E4BF0A8C();
      result = sub_1E4BF0A9C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 4 * v3);
      v14 = (v12 + 4 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}