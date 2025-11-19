uint64_t sub_185084()
{
  v1 = sub_261180();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorConstants.Environment(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  if (*(v0 + *(type metadata accessor for ButtonViewModel(0) + 36)) == 1)
  {
    sub_184C2C(v16);
    sub_18692C(v16, v9, type metadata accessor for ColorConstants.Environment);
    (*(v2 + 104))(v5, enum case for ColorScheme.dark(_:), v1);
    sub_60AB0();
    v17 = sub_264390();
    v18 = *(v2 + 8);
    v18(v5, v1);
    v18(v9, v1);
    if (v17)
    {
      v19 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      v19 = ColorConstants.booksButtonBackground.getter();
    }

    v20 = v19;
  }

  else
  {
    sub_184C2C(v14);
    v20 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    v16 = v14;
  }

  sub_185798(v16, type metadata accessor for ColorConstants);
  return v20;
}

uint64_t sub_1852E0()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants.Environment(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18692C(v1, v15, type metadata accessor for ColorConstants.Environment);
  (*(v8 + 104))(v11, enum case for ColorScheme.dark(_:), v7);
  sub_60AB0();
  sub_264390();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v15, v7);
  (*(v3 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ButtonTheme.init(foregroundColor:backgroundColor:disabledBackgroundColor:disabledForegroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ButtonViewModel.useClearBackgroundColor.getter()
{
  v1 = type metadata accessor for ButtonViewModel.Content(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for ButtonViewModel(0);
  if (*(v0 + *(v11 + 28)) == 2)
  {
    v12 = *(v11 + 44);
    sub_18692C(v0 + v12, v10, type metadata accessor for ButtonViewModel.Content);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_185798(v10, type metadata accessor for ButtonViewModel.Content);
    if (EnumCaseMultiPayload == 1)
    {
      return 1;
    }

    sub_18692C(v0 + v12, v7, type metadata accessor for ButtonViewModel.Content);
    v14 = swift_getEnumCaseMultiPayload();
    sub_185798(v7, type metadata accessor for ButtonViewModel.Content);
    if (v14 == 7)
    {
      return 1;
    }

    sub_18692C(v0 + v12, v4, type metadata accessor for ButtonViewModel.Content);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return 1;
    }

    sub_185798(v4, type metadata accessor for ButtonViewModel.Content);
  }

  return 0;
}

unint64_t sub_185734(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_185798(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7BooksUI11ButtonThemeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if ((sub_262F10() & 1) == 0 || (sub_262F10() & 1) == 0 || (sub_262F10() & 1) == 0)
  {
    return 0;
  }

  return sub_262F10();
}

BOOL _s7BooksUI15ButtonViewModelV5StyleO2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if (!*a1)
  {
    if (!v7)
    {
      sub_185B20(0);
      v10 = 0;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      if (v7 == 2)
      {
        sub_185B20(2uLL);
        v10 = 2;
LABEL_10:
        sub_185B20(v10);
        return 1;
      }
    }

    else if (v7 >= 3)
    {
      v16 = *a2;
      v17 = a2[1];
      sub_185734(v16);
      sub_185734(v3);
      sub_185734(v7);
      sub_185734(v3);
      if (sub_262F10() & 1) != 0 && (sub_262F10() & 1) != 0 && (sub_262F10())
      {
        v18 = sub_262F10();
        sub_185B20(v3);
        sub_185B20(v7);
        sub_185B20(v7);
        sub_185B20(v3);
        return (v18 & 1) != 0;
      }

      sub_185B20(v3);
      sub_185B20(v7);
      sub_185B20(v7);
      v14 = v3;
LABEL_13:
      sub_185B20(v14);
      return 0;
    }

LABEL_12:
    v12 = *a2;
    v13 = a2[1];
    sub_185734(v12);
    sub_185734(v3);
    sub_185B20(v3);
    v14 = v7;
    goto LABEL_13;
  }

  if (v7 != 1)
  {
    goto LABEL_12;
  }

  v11 = 1;
  sub_185B20(1uLL);
  sub_185B20(1uLL);
  return v11;
}

unint64_t sub_185B20(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_185B88()
{
  result = qword_321DD8;
  if (!qword_321DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321DD8);
  }

  return result;
}

unint64_t sub_185BE0()
{
  result = qword_321DE0;
  if (!qword_321DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321DE0);
  }

  return result;
}

uint64_t sub_185C48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_318288, &unk_27F080);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483644)
  {
    v15 = *(a1 + a3[10]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 3;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = type metadata accessor for ButtonViewModel.Content(0);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[11];
      goto LABEL_5;
    }

    v18 = type metadata accessor for ButtonViewModel.ActionKind(0);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[13];
      goto LABEL_5;
    }

    v19 = sub_2EF0(&qword_316208, &qword_268BD0);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[14];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_185E90(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_318288, &unk_27F080);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483644)
  {
    *(a1 + a4[10]) = (a2 + 2);
    return result;
  }

  v16 = type metadata accessor for ButtonViewModel.Content(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  v17 = type metadata accessor for ButtonViewModel.ActionKind(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[13];
    goto LABEL_5;
  }

  v18 = sub_2EF0(&qword_316208, &qword_268BD0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[14];

  return v19(v20, a2, a2, v18);
}

void sub_1860B8()
{
  sub_4BCBC();
  if (v0 <= 0x3F)
  {
    sub_186218(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ButtonViewModel.Content(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ButtonViewModel.ActionKind(319);
        if (v3 <= 0x3F)
        {
          sub_186218(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_186218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_18627C()
{
  sub_1862F0();
  if (v0 <= 0x3F)
  {
    sub_260060();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1862F0()
{
  if (!qword_31A7D0)
  {
    sub_2F9C(&qword_316BA8, &unk_275850);
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_31A7D0);
    }
  }
}

uint64_t getEnumTagSinglePayload for ButtonViewModel.Size(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ButtonViewModel.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1864C8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1864E4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_18651C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_186534(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
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

uint64_t sub_186590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1865E4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[2] = 0;
    result[3] = 0;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void sub_186618()
{
  sub_260BD0();
  if (v0 <= 0x3F)
  {
    sub_1866E4();
    if (v1 <= 0x3F)
    {
      sub_1867AC();
      if (v2 <= 0x3F)
      {
        sub_186818();
        if (v3 <= 0x3F)
        {
          sub_186884();
          if (v4 <= 0x3F)
          {
            sub_1868EC();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1866E4()
{
  if (!qword_321FC8)
  {
    sub_186760();
    sub_260BD0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_321FC8);
    }
  }
}

unint64_t sub_186760()
{
  result = qword_321FD0;
  if (!qword_321FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_321FD0);
  }

  return result;
}

void sub_1867AC()
{
  if (!qword_321FD8)
  {
    sub_260BD0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_321FD8);
    }
  }
}

void sub_186818()
{
  if (!qword_321FE0)
  {
    sub_260BD0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_321FE0);
    }
  }
}

void sub_186884()
{
  if (!qword_321FE8)
  {
    sub_260BD0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_321FE8);
    }
  }
}

void *sub_1868EC()
{
  result = qword_321FF0;
  if (!qword_321FF0)
  {
    result = &type metadata for Double;
    atomic_store(&type metadata for Double, &qword_321FF0);
  }

  return result;
}

uint64_t sub_18692C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_186994(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316C00, &qword_26A520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ListItemMetadataEditionsDescriptor.init<>(authorName:assetInfo:additionalDescriptors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[5] = a1;
  a5[6] = a2;
  sub_F7CC(a3, a5);
  a5[7] = a4;
  v7 = (a5 + *(sub_2EF0(&qword_31DB40, &qword_276F20) + 44));
  *v7 = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v8 = *(type metadata accessor for ListItemEditionsDescriptorExternals() + 20);
  *(v7 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ListItemEditionsDescriptorExternals.spacing.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316DC8, &qword_276F60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_186FAC(v12, a1, type metadata accessor for SizeConstants.Spacing);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t ListItemEditionsDescriptorExternals.fonts.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318170, &unk_26AF40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ListItemEditionsDescriptorExternals();
  sub_8198(v1 + *(v12 + 20), v11, &qword_318170, &unk_26AF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_186FAC(v11, a1, type metadata accessor for FontConstants.ListItem);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ListItemEditionsDescriptorExternals.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v2 = *(type metadata accessor for ListItemEditionsDescriptorExternals() + 20);
  *(a1 + v2) = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for ListItemEditionsDescriptorExternals()
{
  result = qword_3220F8;
  if (!qword_3220F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_186FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ListItemMetadataEditionsDescriptor.content(localizer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SizeConstants.Spacing(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261E60();
  v13 = *(a2 + 24);
  v17[0] = *(a2 + 16);
  v12 = v17[0];
  v17[1] = v13;
  KeyPath = swift_getKeyPath();
  swift_getWitnessTable();
  ViewModelWithExternals.subscript.getter(KeyPath);

  sub_18A7C4(v10, type metadata accessor for SizeConstants.Spacing);
  *a3 = v11;
  *(a3 + 8) = 0x4000000000000000;
  *(a3 + 16) = 0;
  v15 = sub_2EF0(&qword_322020, &qword_2802F8);
  return sub_1871F4(v3, a1, v12, v13, a3 + *(v15 + 44));
}

__n128 sub_1871E8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1871F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a2;
  v97 = a5;
  v99 = a3;
  v100 = a4;
  v6 = type metadata accessor for ListItemMetadataEditionsDescriptor();
  v92 = *(v6 - 8);
  v88 = *(v92 + 64);
  __chkstk_darwin(v6);
  v89 = v79 - v7;
  v91 = sub_2EF0(&qword_322260, &unk_280820);
  v90 = *(v91 - 8);
  v8 = *(v90 + 64);
  __chkstk_darwin(v91);
  v96 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = v79 - v11;
  v12 = sub_2626C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FontConstants.ListItem(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2EF0(&qword_319FD8, &qword_26E010);
  v87 = *(v21 - 8);
  v22 = *(v87 + 64);
  __chkstk_darwin(v21);
  v24 = v79 - v23;
  v25 = sub_2EF0(&qword_319FD0, &qword_280830);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v94 = v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v79 - v29;
  v31 = *(a1 + 48);
  v93 = v6;
  v84 = v12;
  v83 = v13;
  v98 = v79 - v29;
  v81 = v16;
  v85 = v20;
  if (v31)
  {
    v80 = v21;
    v79[1] = *(a1 + 40);
    __chkstk_darwin(v30);
    KeyPath = swift_getKeyPath();
    v86 = a1;
    v33 = KeyPath;

    swift_getWitnessTable();
    ViewModelWithExternals.subscript.getter(v33);

    sub_262700();
    (*(v13 + 104))(v16, enum case for Font.Leading.tight(_:), v12);
    sub_2626E0();

    (*(v13 + 8))(v16, v12);
    sub_18A7C4(v20, type metadata accessor for FontConstants.ListItem);
    v34 = sub_262840();
    v36 = v35;
    v38 = v37;

    LODWORD(v105) = sub_262140();
    v39 = sub_2627F0();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_39DBC(v34, v36, v38 & 1);

    v46 = swift_getKeyPath();
    v47 = v80;
    v48 = *(v80 + 36);
    *&v24[v48] = swift_getKeyPath();
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    *v24 = v39;
    *(v24 + 1) = v41;
    v24[16] = v43 & 1;
    *(v24 + 3) = v45;
    *(v24 + 4) = v46;
    a1 = v86;
    *(v24 + 5) = 2;
    v24[48] = 0;
    v49 = v98;
    sub_76B24(v24, v98);
    (*(v87 + 56))(v49, 0, 1, v47);
  }

  else
  {
    (*(v87 + 56))(v30, 1, 1, v21);
  }

  sub_30CC(a1, &v105);
  AssetMetadataRatingInfo.init(assetInfo:)(&v105, &v101);
  v50 = a1;
  if (v102)
  {
    goto LABEL_5;
  }

  v52 = *(&v101 + 1);
  v53 = v101;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  v54 = v85;
  if (byte_31C408 == 1 && (v55 = [objc_opt_self() standardUserDefaults], v56 = sub_264420(), v57 = objc_msgSend(v55, "integerForKey:", v56), v55, v56, (v57 & 0x10) != 0))
  {
LABEL_5:
    v110 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v105 = 0u;
    v106 = 0u;
    v51 = v93;
  }

  else
  {
    sub_30CC(v82, v103);
    *&v101 = swift_getKeyPath();
    BYTE8(v101) = 0;
    *&v102 = v53;
    *(&v102 + 1) = v52;
    __chkstk_darwin(v101);
    v58 = swift_getKeyPath();
    v51 = v93;
    swift_getWitnessTable();
    ViewModelWithExternals.subscript.getter(v58);

    sub_2626F0();
    v59 = v83;
    v60 = v81;
    v61 = v84;
    (*(v83 + 104))(v81, enum case for Font.Leading.tight(_:), v84);
    v62 = sub_2626E0();

    (*(v59 + 8))(v60, v61);
    sub_18A7C4(v54, type metadata accessor for FontConstants.ListItem);
    *(&v104 + 1) = swift_getKeyPath();
    v110 = v62;
    v107 = v103[0];
    v108 = v103[1];
    v105 = v101;
    v106 = v102;
    v109 = v104;
  }

  *&v101 = *(v50 + 56);
  v63 = v92;
  v64 = v89;
  (*(v92 + 16))(v89, v50, v51);
  v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v66 = swift_allocObject();
  v67 = v100;
  *(v66 + 16) = v99;
  *(v66 + 24) = v67;
  (*(v63 + 32))(v66 + v65, v64, v51);

  sub_2EF0(&qword_31DB30, &qword_276F18);
  sub_2EF0(&qword_322268, &qword_280838);
  sub_8E38(&qword_322270, &qword_31DB30, &qword_276F18);
  sub_18A5E8();
  sub_18A71C();
  v68 = v95;
  sub_2633C0();
  v69 = v98;
  v70 = v94;
  sub_8198(v98, v94, &qword_319FD0, &qword_280830);
  sub_8198(&v105, &v101, &qword_322288, &qword_280840);
  v71 = v90;
  v72 = *(v90 + 16);
  v73 = v96;
  v74 = v91;
  v72(v96, v68, v91);
  v75 = v97;
  sub_8198(v70, v97, &qword_319FD0, &qword_280830);
  v76 = sub_2EF0(&qword_322290, &qword_280848);
  sub_8198(&v101, v75 + *(v76 + 48), &qword_322288, &qword_280840);
  v72((v75 + *(v76 + 64)), v73, v74);
  v77 = *(v71 + 8);
  v77(v68, v74);
  sub_8E80(&v105, &qword_322288, &qword_280840);
  sub_8E80(v69, &qword_319FD0, &qword_280830);
  v77(v73, v74);
  sub_8E80(&v101, &qword_322288, &qword_280840);
  return sub_8E80(v70, &qword_319FD0, &qword_280830);
}

uint64_t sub_187DC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v63 = a3;
  v69 = a2;
  v76 = a5;
  v6 = sub_262370();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  __chkstk_darwin(v6);
  v71 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2626C0();
  v67 = *(v68 - 8);
  v9 = *(v67 + 64);
  __chkstk_darwin(v68);
  v62 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FontConstants.ListItem(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_322298, &qword_280938);
  v74 = *(v14 - 8);
  v75 = v14;
  v15 = *(v74 + 64);
  __chkstk_darwin(v14);
  v65 = &v58 - v16;
  v18 = *a1;
  v17 = a1[1];
  v20 = a1[2];
  v19 = a1[3];
  v21 = a1[5];
  v60 = a1[4];
  v66 = v21;

  sub_2630B0();
  v22 = sub_262900();
  v24 = v23;
  LOBYTE(v18) = v25;
  v26 = sub_262820();
  v28 = v27;
  v30 = v29;
  sub_39DBC(v22, v24, v18 & 1);

  swift_bridgeObjectRetain_n();
  v59 = v20;
  v31 = sub_262820();
  v77 = v32;
  LODWORD(v24) = v33;
  v35 = v34;
  v70 = v19;

  sub_39DBC(v26, v28, v30 & 1);

  v78 = v63;
  v79 = v64;
  KeyPath = swift_getKeyPath();
  type metadata accessor for ListItemMetadataEditionsDescriptor();
  swift_getWitnessTable();
  v37 = v61;
  ViewModelWithExternals.subscript.getter(KeyPath);

  sub_2626F0();
  v38 = v67;
  v39 = v62;
  v40 = v68;
  (*(v67 + 104))(v62, enum case for Font.Leading.tight(_:), v68);
  sub_2626E0();

  (*(v38 + 8))(v39, v40);
  sub_18A7C4(v37, type metadata accessor for FontConstants.ListItem);
  LODWORD(v67) = v24;
  v68 = v31;
  v69 = v35;
  v41 = sub_262840();
  v43 = v42;
  LOBYTE(v35) = v44;

  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v45 = sub_2627E0();
  v47 = v46;
  LOBYTE(v37) = v48;
  v50 = v49;

  sub_39DBC(v41, v43, v35 & 1);
  v51 = v65;

  v82 = v45;
  v83 = v47;
  LOBYTE(KeyPath) = v37 & 1;
  v84 = v37 & 1;
  v85 = v50;
  v52 = v71;
  sub_262340();
  sub_262C70();
  v53 = v66;
  (*(v72 + 8))(v52, v73);
  sub_39DBC(v45, v47, KeyPath);

  if (v53)
  {

    v54 = v60;
    v55 = v53;
  }

  else
  {
    v55 = v70;
    v54 = v59;
  }

  v82 = v54;
  v83 = v55;
  v80 = &type metadata for Text;
  v81 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  sub_10A84();
  v56 = v75;
  sub_262C00();
  sub_39DBC(v68, v77, v67 & 1);

  return (*(v74 + 8))(v51, v56);
}

uint64_t sub_188408(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301268;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_188458(char a1)
{
  if (!a1)
  {
    return 0x614E726F68747561;
  }

  if (a1 == 1)
  {
    return 0x666E497465737361;
  }

  return 0xD000000000000015;
}

uint64_t sub_1884C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_188538(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1885A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_188614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_188684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = sub_188408(*a1, *(a1 + 8));
  *a3 = result;
  return result;
}

uint64_t sub_1886BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_188458(*v2);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1886EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_188458(*v1);
}

uint64_t sub_1886F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_188454(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_188728(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_18877C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t ListItemMetadataEditionsDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v54 = a3;
  type metadata accessor for ListItemMetadataEditionsDescriptor.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_264E20();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  __chkstk_darwin(v4);
  v62 = &v53 - v6;
  v7 = sub_264A60();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  __chkstk_darwin(v7);
  v10 = &v53 - v9;
  v11 = type metadata accessor for ListItemEditionsDescriptorExternals();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ListItemMetadataEditionsDescriptor();
  v53 = *(v61 - 8);
  v20 = *(v53 + 64);
  __chkstk_darwin(v61);
  v22 = &v53 - v21;
  *v14 = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v23 = *(v11 + 20);
  *(v14 + v23) = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);
  swift_storeEnumTagMultiPayload();
  v24 = swift_dynamicCast();
  v25 = *(v15 + 56);
  if (v24)
  {
    v25(v10, 0, 1, a2);
    (*(v15 + 32))(v19, v10, a2);
    v26 = *(v15 + 16);
    v27 = v22;
    v58 = *(v61 + 44);
    v26(&v22[v58], v19, a2);
    v28 = v63;
    v29 = v63[4];
    sub_2E18(v63, v63[3]);
    v30 = v60;
    sub_265120();
    v31 = v28;
    v32 = v15;
    if (v30)
    {
      v33 = *(v15 + 8);
      v33(v19, a2);
      sub_3080(v31);
      return (v33)(v27 + v58, a2);
    }

    else
    {
      v60 = v19;
      LOBYTE(v66[0]) = 0;
      v41 = v27;
      *(v27 + 40) = sub_264D70();
      *(v27 + 48) = v42;
      sub_2EF0(&qword_317FB8, &unk_26AA50);
      LOBYTE(v64) = 1;
      sub_8E38(&qword_317FC0, &qword_317FB8, &unk_26AA50);
      sub_264DF0();
      v44 = v66[0];
      sub_260810();
      if (v65)
      {
        sub_F7CC(&v64, v66);
        sub_30CC(v66, v27);
        sub_2EF0(&qword_31DB30, &qword_276F18);
        v67 = 2;
        sub_18914C();
        v45 = v56;
        v46 = v62;
        sub_264DF0();

        sub_3080(v66);
        (*(v55 + 8))(v46, v45);
        (*(v32 + 8))(v60, a2);
        *(v41 + 56) = v64;
        v51 = v53;
        v52 = v61;
        (*(v53 + 16))(v54, v41, v61);
        sub_3080(v63);
        return (*(v51 + 8))(v41, v52);
      }

      else
      {
        sub_8E80(&v64, &qword_316D40, &unk_268FC0);
        v47 = sub_264C10();
        swift_allocError();
        v49 = v48;
        v61 = sub_264D60();
        sub_4401C();
        swift_allocError();
        *v50 = 0;
        sub_264BF0();
        (*(*(v47 - 8) + 104))(v49, enum case for DecodingError.dataCorrupted(_:), v47);
        swift_willThrow();

        (*(v55 + 8))(v62, v56);
        v43 = *(v32 + 8);
        v43(v60, a2);
        sub_3080(v63);

        return (v43)(v27 + v58, a2);
      }
    }
  }

  else
  {
    v25(v10, 1, 1, a2);
    (*(v57 + 8))(v10, v58);
    v35 = sub_264C10();
    swift_allocError();
    v37 = v36;
    v38 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
    *v37 = a2;
    v39 = v63;
    v40 = v63[4];
    sub_2E18(v63, v63[3]);
    sub_2650E0();
    v66[0] = 0;
    v66[1] = 0xE000000000000000;
    sub_264BC0(88);
    v68._countAndFlagsBits = 0xD000000000000056;
    v68._object = 0x8000000000293F40;
    sub_264530(v68);
    v69._countAndFlagsBits = sub_265260();
    sub_264530(v69);

    sub_264BF0();
    (*(*(v35 - 8) + 104))(v37, enum case for DecodingError.typeMismatch(_:), v35);
    swift_willThrow();
    return sub_3080(v39);
  }
}

unint64_t sub_18914C()
{
  result = qword_322028;
  if (!qword_322028)
  {
    sub_2F9C(&qword_31DB30, &qword_276F18);
    sub_FB148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322028);
  }

  return result;
}

uint64_t sub_1891F0()
{
  v1 = 1954047348;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x614E6C6F626D7973;
  }
}

uint64_t sub_18924C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18A324(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_189274(uint64_t a1)
{
  v2 = sub_18958C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1892B0(uint64_t a1)
{
  v2 = sub_18958C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListItemMetadataDescriptorModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2EF0(&qword_322030, &qword_280300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_18958C();
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  LOBYTE(v23) = 0;
  v11 = sub_264DC0();
  v13 = v12;
  v22 = v11;
  LOBYTE(v23) = 1;
  v20 = sub_264DC0();
  v21 = v14;
  sub_2EF0(&qword_321868, &unk_2891C0);
  v25 = 2;
  sub_1895E0();
  sub_264DF0();
  (*(v6 + 8))(v9, v5);
  v15 = v23;
  v16 = v24;
  v17 = v21;
  *a2 = v22;
  a2[1] = v13;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v15;
  a2[5] = v16;

  sub_3080(a1);
}

unint64_t sub_18958C()
{
  result = qword_322038;
  if (!qword_322038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322038);
  }

  return result;
}

unint64_t sub_1895E0()
{
  result = qword_321870;
  if (!qword_321870)
  {
    sub_2F9C(&qword_321868, &unk_2891C0);
    sub_17E69C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321870);
  }

  return result;
}

uint64_t sub_189664(uint64_t a1)
{
  result = sub_18A6D4(&qword_322040, type metadata accessor for ListItemEditionsDescriptorExternals);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_189700(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_189748(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_189784(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1897C0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1897FC(uint64_t a1)
{
  result = sub_FB148();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_189824@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_189848@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_189854(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 40);

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1898D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F78, &unk_269C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_322098, &unk_28B530);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1899F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F78, &unk_269C60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_322098, &unk_28B530);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_189B04()
{
  sub_189BC0(319, &qword_317008, type metadata accessor for SizeConstants.Spacing);
  if (v0 <= 0x3F)
  {
    sub_189BC0(319, &qword_319360, type metadata accessor for FontConstants.ListItem);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_189BC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_189C14(uint64_t a1)
{
  sub_44744();
  if (v2 <= 0x3F)
  {
    sub_18A114(319, &qword_316CB8, &type metadata for String, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      sub_18A114(319, &qword_3221B0, &type metadata for ListItemMetadataDescriptorModel, &type metadata accessor for Array);
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        swift_checkMetadataState();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_189D14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 64) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
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

void sub_189EA8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 64) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = (((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

void sub_18A114(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_18A1E8()
{
  result = qword_322248;
  if (!qword_322248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322248);
  }

  return result;
}

unint64_t sub_18A240()
{
  result = qword_322250;
  if (!qword_322250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322250);
  }

  return result;
}

unint64_t sub_18A298()
{
  result = qword_322258;
  if (!qword_322258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322258);
  }

  return result;
}

uint64_t sub_18A324(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000293FA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

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

uint64_t sub_18A44C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for ListItemMetadataEditionsDescriptor() - 8);
  v4 = *(*v3 + 64);
  v5 = (v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80)));
  sub_3080(v5);
  v6 = v5[6];

  v7 = v5[7];

  (*(*(v2 - 8) + 8))(v5 + v3[13], v2);

  return swift_deallocObject();
}

uint64_t sub_18A54C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ListItemMetadataEditionsDescriptor() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_187DC4(a1, v8, v5, v6, a2);
}

unint64_t sub_18A5E8()
{
  result = qword_322278;
  if (!qword_322278)
  {
    sub_2F9C(&qword_322268, &qword_280838);
    swift_getOpaqueTypeConformance2();
    sub_18A6D4(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322278);
  }

  return result;
}

uint64_t sub_18A6D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18A71C()
{
  result = qword_322280;
  if (!qword_322280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322280);
  }

  return result;
}

uint64_t sub_18A7C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PaddleButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = sub_25FFD0();
  v34 = *(v42 - 8);
  v2 = v34;
  v3 = *(v34 + 64);
  __chkstk_darwin(v42);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v35 = sub_2EF0(&qword_3222A0, &qword_280940);
  v37 = *(v35 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v35);
  v10 = &v33 - v9;
  v38 = sub_2EF0(&qword_3222A8, &qword_280948);
  v40 = *(v38 - 8);
  v11 = *(v40 + 64);
  __chkstk_darwin(v38);
  v33 = &v33 - v12;
  v14 = *(v1 + 1);
  v15 = *(v1 + 8);
  v16 = *(v1 + 16);
  LOBYTE(v44) = *v1;
  v13 = v44;

  sub_18AC4C(v7);
  v43 = v7;
  sub_263230();
  v36 = *(v2 + 8);
  v17 = v42;
  v36(v7, v42);
  v49 = 0;
  sub_2631D0();
  v18 = v44;
  v19 = v45;
  KeyPath = swift_getKeyPath();
  LOBYTE(v44) = v13;
  BYTE1(v44) = v14;
  LOBYTE(v45) = v18;
  v46 = v19;
  v47 = KeyPath;
  v48 = 0;
  v21 = sub_18B300();
  v22 = sub_18B364();
  v23 = v35;
  sub_262A60();
  v24 = v47;
  v25 = v48;

  sub_4054(v24, v25);
  (*(v37 + 8))(v10, v23);
  v49 = v13;
  sub_18AC4C(v7);
  (*(v34 + 16))(v39, v7, v17);
  v26 = sub_2628E0();
  v28 = v27;
  LOBYTE(v10) = v29;
  v44 = v23;
  v45 = &type metadata for PaddleButton.Style;
  v46 = v21;
  v47 = v22;
  swift_getOpaqueTypeConformance2();
  v30 = v38;
  v31 = v33;
  sub_262BF0();
  sub_39DBC(v26, v28, v10 & 1);

  v36(v7, v42);
  return (*(v40 + 8))(v31, v30);
}

uint64_t sub_18AC4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v25 = sub_25FFC0();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v25);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_260290();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v28 = sub_264410();
  v14 = *(v28 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v28);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v24 - v19;
  v21 = *v2;
  sub_2643A0();
  sub_260260();
  (*(v14 + 16))(v17, v20, v28);
  v22 = v26;
  (*(v7 + 16))(v10, v13, v26);
  *v6 = type metadata accessor for BundleFinder();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v25);
  sub_25FFE0();
  (*(v7 + 8))(v13, v22);
  return (*(v14 + 8))(v20, v28);
}

uint64_t sub_18AFF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 16);
  *v19 = *v1;
  *&v19[16] = v8;
  v20 = *(v1 + 32);
  v9 = *(v1 + 24);
  v21 = v9;
  v22 = v20;
  if (v20 == 1)
  {
    if ((v9 & 1) == 0)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_10;
    }
  }

  else
  {

    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_18B604(&v21);
    (*(v4 + 8))(v7, v3);
    if (LOBYTE(v18[0]) != 1)
    {
      goto LABEL_3;
    }
  }

  if (sub_2622B0())
  {
    v10 = 3;
  }

  else
  {
    v18[0] = *&v19[8];
    sub_2EF0(&qword_3210B8, &qword_27EE90);
    sub_2631E0();
    if (v17[15])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

LABEL_10:
  v12 = v19[0];
  v13 = v19[1];
  v14 = swift_allocObject();
  v15 = *&v19[16];
  *(v14 + 16) = *v19;
  *(v14 + 32) = v15;
  *(v14 + 48) = v20;
  *a1 = v12;
  *(a1 + 1) = v13;
  *(a1 + 2) = v10;
  *(a1 + 8) = sub_18B6B0;
  *(a1 + 16) = v14;
  return sub_18B704(v19, v18);
}

uint64_t sub_18B218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25FFD0();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  (*(v8 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  result = sub_2628E0();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

unint64_t sub_18B300()
{
  result = qword_3222B0;
  if (!qword_3222B0)
  {
    sub_2F9C(&qword_3222A0, &qword_280940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3222B0);
  }

  return result;
}

unint64_t sub_18B364()
{
  result = qword_3222B8;
  if (!qword_3222B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3222B8);
  }

  return result;
}

unint64_t sub_18B3E8()
{
  result = qword_3222C0;
  if (!qword_3222C0)
  {
    sub_2F9C(&qword_3222C8, &qword_280A10);
    sub_2F9C(&qword_3222A0, &qword_280940);
    sub_18B300();
    sub_18B364();
    swift_getOpaqueTypeConformance2();
    sub_18B4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3222C0);
  }

  return result;
}

unint64_t sub_18B4CC()
{
  result = qword_3173C8;
  if (!qword_3173C8)
  {
    sub_262420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3173C8);
  }

  return result;
}

uint64_t sub_18B524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_18B580(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_18B604(uint64_t a1)
{
  v2 = sub_2EF0(&qword_3222D0, &unk_28CA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B66C()
{
  v1 = *(v0 + 32);

  sub_4054(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_18B6B0()
{
  v2 = *(v0 + 24);
  sub_2EF0(&qword_3210B8, &qword_27EE90);
  return sub_2631F0();
}

unint64_t sub_18B740()
{
  result = qword_3222D8;
  if (!qword_3222D8)
  {
    sub_2F9C(&qword_3222E0, &qword_280AC8);
    sub_18B7CC();
    sub_179DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3222D8);
  }

  return result;
}

unint64_t sub_18B7CC()
{
  result = qword_3222E8[0];
  if (!qword_3222E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3222E8);
  }

  return result;
}

uint64_t sub_18B874(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18B8B0@<X0>(void *a1@<X8>)
{
  result = static SynchronousStaticIntent.kind.getter();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B8EC(uint64_t a1)
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

uint64_t sub_18B95C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_18BA9C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_18BCBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for SeriesEntityCardView(0);
  sub_8198(v1 + *(v12 + 20), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_18D338(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t SeriesEntityCardView.init(seriesIDForLogging:preheader:title:subtitle:footnote:coverViewModels:allowDoubleWide:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v30 = a8;
  v29 = a7;
  v16 = sub_262730();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v31 = 0x3FF0000000000000;
  (*(v20 + 104))(&v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Font.TextStyle.largeTitle(_:), v18);
  sub_78E78();
  sub_2612E0();
  v21 = type metadata accessor for SeriesEntityCardView(0);
  v22 = v21[5];
  *(a9 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v23 = (a9 + v21[6]);
  *v23 = a1;
  v23[1] = a2;
  v24 = v21[7];
  v25 = sub_260BD0();
  v26 = *(*(v25 - 8) + 32);
  v26(a9 + v24, a3, v25);
  v26(a9 + v21[8], a4, v25);
  sub_22148(a5, a9 + v21[9], &qword_316208, &qword_268BD0);
  result = sub_22148(a6, a9 + v21[10], &qword_316208, &qword_268BD0);
  *(a9 + v21[11]) = v29;
  *(a9 + v21[12]) = v30;
  return result;
}

uint64_t sub_18C0FC()
{
  v34 = type metadata accessor for SizeConstants.Environment(0);
  v1 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v31 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_261C90();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v32);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v31 - v9);
  v11 = type metadata accessor for SizeConstants(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v18 = type metadata accessor for SeriesEntityCardView(0);
  v19 = *(v18 + 20);
  v33 = v0;
  sub_8198(v0 + v19, v10, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18D338(v10, v17, type metadata accessor for SizeConstants);
  }

  else
  {
    v20 = *v10;
    sub_264900();
    v21 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v32);
  }

  v22 = v34;
  v23 = &v17[*(v34 + 32)];
  v24 = *v23 | (v23[2] << 16);
  if (*v23 == 2)
  {
    result = sub_264CD0();
    __break(1u);
  }

  else
  {
    sub_18D3B0(v17, type metadata accessor for SizeConstants.Environment);
    if ((v24 & 0x10000) != 0 && *(v33 + *(v18 + 48)) == 1)
    {
      sub_18BCBC(v14);
      v25 = v31;
      sub_18D338(v14, v31, type metadata accessor for SizeConstants.Environment);
      v26 = *(v22 + 24);
      v27 = sub_261660();
      v28 = sub_261690();
      (*(*(v28 - 8) + 8))(v25 + v26, v28);
      v29 = v27 ^ 1;
    }

    else
    {
      v29 = 0;
    }

    return v29 & 1;
  }

  return result;
}

uint64_t SeriesEntityCardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v143 = a1;
  v3 = sub_261D50();
  v140 = *(v3 - 8);
  v141 = v3;
  v4 = *(v140 + 64);
  __chkstk_darwin(v3);
  v139 = &v123[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SizeConstants.CornerRadius(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v142 = &v123[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for SizeConstants(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v150 = &v123[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v128 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
  v12 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v130 = &v123[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v129 = type metadata accessor for SeriesEntityCardView.CardContents(0);
  v14 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v132 = &v123[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v131 = sub_2EF0(&qword_322370, &qword_280BB8);
  v16 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131);
  v18 = &v123[-v17];
  v133 = sub_2EF0(&qword_322378, &qword_280BC0);
  v19 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v21 = &v123[-v20];
  *&v145 = sub_2EF0(&qword_322380, &qword_280BC8);
  v22 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v148 = &v123[-v23];
  v147 = sub_2EF0(&qword_322388, &qword_280BD0);
  v24 = *(*(v147 - 1) + 64);
  __chkstk_darwin(v147);
  v149 = &v123[-v25];
  v134 = sub_2EF0(&qword_322390, &qword_280BD8);
  v26 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v135 = &v123[-v27];
  v28 = sub_2EF0(&qword_322398, &unk_280BE0);
  v137 = *(v28 - 8);
  v138 = v28;
  v29 = *(v137 + 64);
  __chkstk_darwin(v28);
  v136 = &v123[-v30];
  v31 = type metadata accessor for SeriesEntityCardView(0);
  v32 = *(*(v31 - 1) + 64);
  __chkstk_darwin(v31);
  v34 = &v123[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_315868 != -1)
  {
    swift_once();
  }

  v144 = v18;
  v35 = sub_260D50();
  sub_B080(v35, qword_315FE8);
  sub_191910(v2, v34, type metadata accessor for SeriesEntityCardView);
  v36 = sub_260D30();
  v37 = sub_2648E0();
  v38 = os_log_type_enabled(v36, v37);
  v146 = v21;
  if (v38)
  {
    v39 = v2;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v184 = v41;
    *v40 = 136315138;
    v42 = &v34[v31[6]];
    v43 = *v42;
    v44 = v42[1];

    sub_18D3B0(v34, type metadata accessor for SeriesEntityCardView);
    v45 = sub_191368(v43, v44, &v184);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_0, v36, v37, "SwiftUI::SeriesEntityCardView::body evaluated, series=%s", v40, 0xCu);
    sub_3080(v41);

    v2 = v39;
  }

  else
  {

    sub_18D3B0(v34, type metadata accessor for SeriesEntityCardView);
  }

  v46 = (v2 + v31[6]);
  v47 = *v46;
  v125 = v46[1];
  v126 = v47;

  v48 = v2;
  v124 = sub_18C0FC();
  v49 = v31[7];
  v50 = v128;
  v51 = *(v128 + 20);
  v52 = sub_260BD0();
  v53 = *(*(v52 - 8) + 16);
  v54 = v130;
  v53(&v130[v51], v2 + v49, v52);
  v53(&v54[v50[6]], v2 + v31[8], v52);
  sub_8198(v2 + v31[9], &v54[v50[7]], &qword_316208, &qword_268BD0);
  sub_8198(v2 + v31[10], &v54[v50[8]], &qword_316208, &qword_268BD0);
  *v54 = (v124 & 1) == 0;
  v55 = *(v2 + v31[11]);

  v56 = sub_18C0FC();
  KeyPath = swift_getKeyPath();
  v58 = v132;
  *v132 = KeyPath;
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v59 = v129;
  v60 = (v58 + *(v129 + 20));
  v61 = v125;
  *v60 = v126;
  v60[1] = v61;
  sub_18D338(v54, v58 + v59[6], type metadata accessor for SeriesEntityCardView.TextLockupViewModel);
  *(v58 + v59[7]) = v55;
  *(v58 + v59[8]) = v56 & 1;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v62 = v144;
  sub_18D338(v58, v144, type metadata accessor for SeriesEntityCardView.CardContents);
  v63 = (v62 + *(v131 + 36));
  v64 = v197;
  v63[4] = v196;
  v63[5] = v64;
  v63[6] = v198;
  v65 = v193;
  *v63 = v192;
  v63[1] = v65;
  v66 = v195;
  v63[2] = v194;
  v63[3] = v66;
  if (sub_18C0FC())
  {
    sub_2EF0(&qword_31A020, &qword_26E220);
    sub_261300();
    v67 = *&v184;
    v68 = 2.0;
  }

  else
  {
    sub_2EF0(&qword_31A020, &qword_26E220);
    sub_261300();
    v67 = *&v184 * 4.0;
    v68 = 3.0;
  }

  v69 = v68 / v67;
  v70 = v146;
  sub_22148(v62, v146, &qword_322370, &qword_280BB8);
  v71 = v70 + *(v133 + 36);
  *v71 = v69;
  *(v71 + 4) = 0;
  if (*(v55 + 2))
  {
    v72 = v55[7];
    v172 = v55[6];
    v173 = v72;
    v73 = v55[9];
    v174 = v55[8];
    v175 = v73;
    v74 = v55[3];
    v168 = v55[2];
    v169 = v74;
    v75 = v55[5];
    v170 = v55[4];
    v171 = v75;
    memmove(&v176, v55 + 2, 0x80uLL);
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v176);
    sub_5757C(&v168, &v184);
    v188 = v180;
    v189 = v181;
    v190 = v182;
    v191 = v183;
    v184 = v176;
    v185 = v177;
    v186 = v178;
    v187 = v179;
  }

  else
  {
    sub_7DC78(&v184);
  }

  v76 = [objc_opt_self() systemGroupedBackgroundColor];
  v77 = sub_262EE0();
  v180 = v188;
  v181 = v189;
  v182 = v190;
  v183 = v191;
  v176 = v184;
  v177 = v185;
  v178 = v186;
  v179 = v187;
  if (sub_7E6BC(&v176) == 1)
  {
    sub_7DC78(&v168);
  }

  else
  {
    v155 = v180;
    v156 = v181;
    v157 = v182;
    v158 = v183;
    v151 = v176;
    v152 = v177;
    v153 = v178;
    v154 = v179;
    sub_7DE1C(&v151);
    v164 = v155;
    v165 = v156;
    v166 = v157;
    v167 = v158;
    v160 = v151;
    v161 = v152;
    v162 = v153;
    v163 = v154;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v160);
    v172 = v164;
    v173 = v165;
    v174 = v166;
    v175 = v167;
    v168 = v160;
    v169 = v161;
    v170 = v162;
    v171 = v163;
  }

  v164 = v172;
  v165 = v173;
  v166 = v174;
  v167 = v175;
  v160 = v168;
  v161 = v169;
  v162 = v170;
  v163 = v171;
  v78 = swift_getKeyPath();
  LOBYTE(v151) = 0;
  v79 = swift_getKeyPath();
  v159 = 0;
  v80 = v70;
  v81 = v148;
  sub_22148(v80, v148, &qword_322378, &qword_280BC0);
  v82 = &v81[*(v145 + 36)];
  v83 = v165;
  *(v82 + 4) = v164;
  *(v82 + 5) = v83;
  v84 = v167;
  *(v82 + 6) = v166;
  *(v82 + 7) = v84;
  v85 = v161;
  *v82 = v160;
  *(v82 + 1) = v85;
  v86 = v163;
  *(v82 + 2) = v162;
  *(v82 + 3) = v86;
  *(v82 + 16) = v77;
  v82[136] = 1;
  *(v82 + 18) = v78;
  v82[184] = v151;
  *(v82 + 24) = v79;
  v82[200] = v159;
  v87 = &v149[*(v147 + 9)];
  v88 = sub_2EF0(&qword_3223A0, &unk_280C48);
  v89 = v87 + *(v88 + 40);
  sub_261880();
  v90 = v150;
  sub_18BCBC(v150);
  v147 = type metadata accessor for SizeConstants.Environment;
  v91 = v142;
  sub_18D338(v90, v142, type metadata accessor for SizeConstants.Environment);
  v146 = type metadata accessor for SizeConstants.CornerRadius;
  sub_18D3B0(v91, type metadata accessor for SizeConstants.CornerRadius);
  v144 = sub_2617E0();
  v92 = *(v144 + 5);
  v127 = v48;
  v93 = enum case for RoundedCornerStyle.continuous(_:);
  v94 = sub_261DD0();
  v95 = *(v94 - 8);
  v130 = *(v95 + 104);
  v131 = v94;
  v96 = v95 + 104;
  LODWORD(v132) = v93;
  (v130)(v87 + v92, v93, v94);
  v133 = v96;
  __asm { FMOV            V0.2D, #16.0 }

  v145 = _Q0;
  *v87 = _Q0;
  *(v87 + *(v88 + 36)) = 0;
  v102 = v149;
  sub_22148(v148, v149, &qword_322380, &qword_280BC8);
  v103 = v150;
  sub_18BCBC(v150);
  sub_18D338(v103, v91, v147);
  sub_18D3B0(v91, v146);
  v104 = v135;
  v105 = &v135[*(v134 + 36)];
  v106 = v94;
  v107 = v130;
  (v130)(v105 + *(v144 + 5), v93, v106);
  *v105 = v145;
  *(v105 + *(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)) = 256;
  sub_22148(v102, v104, &qword_322388, &qword_280BD0);
  v109 = v139;
  v108 = v140;
  v110 = v141;
  (*(v140 + 104))(v139, enum case for ColorRenderingMode.nonLinear(_:), v141);
  sub_18D410();
  v111 = v136;
  sub_262AD0();
  (*(v108 + 8))(v109, v110);
  sub_8E80(v104, &qword_322390, &qword_280BD8);
  v112 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v114 = v113;
  v115 = sub_2EF0(&qword_3223E0, &qword_280C58);
  v116 = v143;
  v117 = (v143 + *(v115 + 36));
  v118 = v150;
  sub_18BCBC(v150);
  sub_18D338(v118, v91, v147);
  sub_18D3B0(v91, v146);
  (v107)(v117 + *(v144 + 5), v132, v131);
  *v117 = v145;
  sub_262F80();
  v119 = sub_263000();

  v120 = v117 + *(sub_2EF0(&qword_318970, &unk_280C60) + 36);
  *v120 = v119;
  *(v120 + 8) = xmmword_26BA30;
  *(v120 + 3) = 0x4018000000000000;
  v121 = (v117 + *(sub_2EF0(&qword_318978, &qword_26BEA8) + 36));
  *v121 = v112;
  v121[1] = v114;
  return (*(v137 + 32))(v116, v111, v138);
}

uint64_t sub_18D338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18D3B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_18D410()
{
  result = qword_3223A8;
  if (!qword_3223A8)
  {
    sub_2F9C(&qword_322390, &qword_280BD8);
    sub_18D4C8();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3223A8);
  }

  return result;
}

unint64_t sub_18D4C8()
{
  result = qword_3223B0;
  if (!qword_3223B0)
  {
    sub_2F9C(&qword_322388, &qword_280BD0);
    sub_18D580();
    sub_8E38(&qword_3223D8, &qword_3223A0, &unk_280C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3223B0);
  }

  return result;
}

unint64_t sub_18D580()
{
  result = qword_3223B8;
  if (!qword_3223B8)
  {
    sub_2F9C(&qword_322380, &qword_280BC8);
    sub_18D60C();
    sub_7DEDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3223B8);
  }

  return result;
}

unint64_t sub_18D60C()
{
  result = qword_3223C0;
  if (!qword_3223C0)
  {
    sub_2F9C(&qword_322378, &qword_280BC0);
    sub_18D698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3223C0);
  }

  return result;
}

unint64_t sub_18D698()
{
  result = qword_3223C8;
  if (!qword_3223C8)
  {
    sub_2F9C(&qword_322370, &qword_280BB8);
    sub_1934A8(&qword_3223D0, type metadata accessor for SeriesEntityCardView.CardContents);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3223C8);
  }

  return result;
}

uint64_t sub_18D758@<X0>(uint64_t a1@<X8>)
{
  v31[1] = a1;
  v2 = type metadata accessor for SeriesEntityCardView.CardContents(0);
  v3 = v2 - 8;
  v31[0] = *(v2 - 8);
  v4 = *(v31[0] + 64);
  __chkstk_darwin(v2);
  v5 = sub_2EF0(&qword_3225F8, &qword_280DE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (v31 - v7);
  v9 = type metadata accessor for SizeConstants.Spacing(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SizeConstants(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2EF0(&qword_322600, &qword_280DE8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v31 - v19;
  if (*(v1 + *(v3 + 40)) == 1)
  {
    sub_40CA0(v16);
    sub_18D338(v16, v12, type metadata accessor for SizeConstants.Environment);
    sub_18D3B0(v12, type metadata accessor for SizeConstants.Spacing);
    *v20 = sub_261D30();
    *(v20 + 1) = 0x4034000000000000;
    v20[16] = 0;
    v21 = sub_2EF0(&qword_322630, &qword_280E00);
    sub_18DBD0(v1, &v20[*(v21 + 44)]);
    v22 = sub_262530();
    sub_40CA0(v16);
    sub_18D338(v16, v12, type metadata accessor for SizeConstants.Environment);
    sub_18D3B0(v12, type metadata accessor for SizeConstants.Spacing);
    sub_2610C0();
    v23 = &v20[*(v17 + 36)];
    *v23 = v22;
    *(v23 + 1) = v24;
    *(v23 + 2) = v25;
    *(v23 + 3) = v26;
    *(v23 + 4) = v27;
    v23[40] = 0;
    sub_8198(v20, v8, &qword_322600, &qword_280DE8);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_322608, &qword_280DF0);
    sub_192980();
    sub_8E38(&qword_322628, &qword_322608, &qword_280DF0);
    sub_261F80();
    return sub_8E80(v20, &qword_322600, &qword_280DE8);
  }

  else
  {
    sub_191910(v1, v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SeriesEntityCardView.CardContents);
    v29 = (*(v31[0] + 80) + 16) & ~*(v31[0] + 80);
    v30 = swift_allocObject();
    sub_18D338(v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for SeriesEntityCardView.CardContents);
    *v8 = sub_192900;
    v8[1] = v30;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_322608, &qword_280DF0);
    sub_192980();
    sub_8E38(&qword_322628, &qword_322608, &qword_280DF0);
    return sub_261F80();
  }
}

uint64_t sub_18DBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for SeriesEntityCardView.CardContents(0);
  v4 = v3 - 8;
  v67 = *(v3 - 8);
  v66 = *(v67 + 64);
  __chkstk_darwin(v3);
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v64 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SizeConstants(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v62 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SeriesEntityCardView.TextLockupView(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2EF0(&qword_322638, &qword_280E08);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v62 - v23;
  v25 = sub_2EF0(&qword_322640, &qword_280E10);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v63 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v62 - v30;
  __chkstk_darwin(v32);
  v34 = &v62 - v33;
  sub_191910(a1 + *(v4 + 32), v16 + v13[9], type metadata accessor for SeriesEntityCardView.TextLockupViewModel);
  *v16 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v35 = v13[7];
  *(v16 + v35) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v36 = v13[8];
  *(v16 + v36) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  sub_263580();
  sub_261830();
  sub_18D338(v16, v21, type metadata accessor for SeriesEntityCardView.TextLockupView);
  v37 = &v21[*(v18 + 44)];
  v38 = v74;
  *(v37 + 4) = v73;
  *(v37 + 5) = v38;
  *(v37 + 6) = v75;
  v39 = v70;
  *v37 = v69;
  *(v37 + 1) = v39;
  v40 = v72;
  *(v37 + 2) = v71;
  *(v37 + 3) = v40;
  sub_262F60();

  sub_22148(v21, v24, &qword_322638, &qword_280E08);
  LOBYTE(v36) = sub_262560();
  v41 = v62;
  sub_40CA0(v62);
  v42 = v41;
  v43 = v64;
  sub_18D338(v42, v64, type metadata accessor for SizeConstants.Environment);
  sub_18D3B0(v43, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_22148(v24, v31, &qword_322638, &qword_280E08);
  v52 = &v31[*(v26 + 44)];
  *v52 = v36;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  sub_22148(v31, v34, &qword_322640, &qword_280E10);
  v53 = v65;
  sub_191910(a1, v65, type metadata accessor for SeriesEntityCardView.CardContents);
  v54 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v55 = swift_allocObject();
  sub_18D338(v53, v55 + v54, type metadata accessor for SeriesEntityCardView.CardContents);
  v56 = v63;
  sub_8198(v34, v63, &qword_322640, &qword_280E10);
  v57 = v56;
  v58 = v56;
  v59 = v68;
  sub_8198(v57, v68, &qword_322640, &qword_280E10);
  v60 = (v59 + *(sub_2EF0(&qword_322648, &qword_280E78) + 48));
  *v60 = sub_192CB0;
  v60[1] = v55;

  sub_8E80(v34, &qword_322640, &qword_280E10);

  return sub_8E80(v58, &qword_322640, &qword_280E10);
}

double sub_18E210@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SizeConstants(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(type metadata accessor for SeriesEntityCardView.CardContents(0) + 28));

  sub_261420();
  if (v13 <= 50.0)
  {
    v13 = 50.0;
  }

  SeriesCardCoverStackLayout.init(covers:containingWidth:)(v12, &v50, v13);
  v14 = v51;
  if (v51)
  {
    v15 = sub_262510();
    sub_40CA0(v11);
    sub_18D338(v11, v7, type metadata accessor for SizeConstants.Environment);
    sub_18D3B0(v7, type metadata accessor for SizeConstants.Spacing);
    sub_2610C0();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    LOBYTE(v42) = 0;
    sub_262F30();

    v28 = v50;
    v30 = v52;
    v41 = 0;
    v29 = v14;
    v31 = v53;
    v32 = v54;
    v33 = 0;
    v34 = v15;
    v35 = v17;
    v36 = v19;
    v37 = v21;
    v38 = v23;
    v39 = 0;
  }

  else
  {
    v41 = 0;
    v40 = 1;
    v28 = xmmword_26F1B0;
    LOBYTE(v29) = 0;
    *&v30 = _swiftEmptyArrayStorage;
    HIBYTE(v39) = 1;
  }

  sub_2EF0(&qword_322650, &qword_280E80);
  sub_192D30();
  sub_261F80();
  v24 = v47;
  *(a2 + 64) = v46;
  *(a2 + 80) = v24;
  *(a2 + 96) = v48;
  *(a2 + 112) = v49;
  v25 = v43;
  *a2 = v42;
  *(a2 + 16) = v25;
  result = *&v44;
  v27 = v45;
  *(a2 + 32) = v44;
  *(a2 + 48) = v27;
  return result;
}

uint64_t sub_18E488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v32 = a3;
  v5 = sub_261460();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SeriesEntityCardView.CardContents(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_315868 != -1)
  {
    swift_once();
  }

  v14 = sub_260D50();
  sub_B080(v14, qword_315FE8);
  sub_191910(a2, v13, type metadata accessor for SeriesEntityCardView.CardContents);
  (*(v6 + 16))(v9, a1, v5);
  v15 = sub_260D30();
  v16 = sub_2648E0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = a2;
    v20 = v19;
    v33 = v19;
    *v18 = 136315394;
    v21 = &v13[*(v10 + 20)];
    v22 = *v21;
    v23 = v21[1];

    sub_18D3B0(v13, type metadata accessor for SeriesEntityCardView.CardContents);
    v24 = sub_191368(v22, v23, &v33);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2048;
    sub_261420();
    v26 = v25;
    (*(v6 + 8))(v9, v5);
    *(v18 + 14) = v26;
    _os_log_impl(&dword_0, v15, v16, "SwiftUI::SeriesEntityCardView::body evaluated, series=%s, width=%f", v18, 0x16u);
    sub_3080(v20);
    a2 = v30;

    a1 = v31;
  }

  else
  {

    (*(v6 + 8))(v9, v5);
    sub_18D3B0(v13, type metadata accessor for SeriesEntityCardView.CardContents);
  }

  v27 = v32;
  *v32 = xmmword_280B70;
  *(v27 + 2) = 0x4018000000000000;
  v28 = sub_2EF0(&qword_322670, &qword_280E90);
  return sub_18E7D8(a2, a1, v27 + *(v28 + 44));
}

uint64_t sub_18E7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51[1] = a2;
  v52 = a3;
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SizeConstants(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_322678, &qword_280E98);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v53 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (v51 - v17);
  v51[0] = type metadata accessor for SeriesEntityCardView.CardContents(0);
  v19 = *(v51[0] + 24);
  v20 = type metadata accessor for SeriesEntityCardView.TextLockupView(0);
  sub_191910(a1 + v19, v18 + v20[7], type metadata accessor for SeriesEntityCardView.TextLockupViewModel);
  *v18 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v21 = v20[5];
  *(v18 + v21) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v22 = v20[6];
  *(v18 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  sub_262F60();

  v23 = sub_2624F0();
  sub_40CA0(v11);
  sub_18D338(v11, v7, type metadata accessor for SizeConstants.Environment);
  sub_18D3B0(v7, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v24 = v18 + *(v13 + 44);
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_261420();
  v30 = v29;
  sub_40CA0(v11);
  sub_18D338(v11, v7, type metadata accessor for SizeConstants.Environment);
  sub_18D3B0(v7, type metadata accessor for SizeConstants.Spacing);
  v31 = *(a1 + *(v51[0] + 28));
  if (v30 + -48.0 > 50.0)
  {
    v32 = v30 + -48.0;
  }

  else
  {
    v32 = 50.0;
  }

  SeriesCardCoverStackLayout.init(covers:containingWidth:)(v33, &v78, v32);
  v34 = v79;
  if (v79)
  {
    sub_262F30();

    v35 = sub_2624F0();
    sub_40CA0(v11);
    sub_18D338(v11, v7, type metadata accessor for SizeConstants.Environment);
    sub_18D3B0(v7, type metadata accessor for SizeConstants.Spacing);
    sub_2610C0();
    LOBYTE(v70) = 0;
    LOBYTE(v62[0]) = 0;
    v64 = v78;
    *(v65 + 8) = v80;
    *(&v65[1] + 8) = v81;
    *&v65[0] = v34;
    *(&v65[2] + 1) = v82;
    LOBYTE(v66) = 0;
    BYTE8(v66) = v35;
    *&v67 = v36;
    *(&v67 + 1) = v37;
    *&v68 = v38;
    *(&v68 + 1) = v39;
    v69 = 0;
  }

  else
  {
    LOBYTE(v62[0]) = 0;
    LOBYTE(v54) = 1;
    v64 = xmmword_26F1B0;
    LOBYTE(v65[0]) = 0;
    *(&v65[0] + 1) = _swiftEmptyArrayStorage;
    HIBYTE(v69) = 1;
  }

  sub_2EF0(&qword_322650, &qword_280E80);
  sub_192D30();
  sub_261F80();
  v40 = v53;
  sub_8198(v18, v53, &qword_322678, &qword_280E98);
  v58 = v74;
  v59 = v75;
  v60 = v76;
  v61 = v77;
  v54 = v70;
  v55 = v71;
  v56 = v72;
  v57 = v73;
  v41 = v52;
  sub_8198(v40, v52, &qword_322678, &qword_280E98);
  v42 = v41 + *(sub_2EF0(&qword_322680, &qword_280EA0) + 48);
  v43 = v58;
  v44 = v59;
  v62[4] = v58;
  v62[5] = v59;
  v45 = v60;
  v62[6] = v60;
  v46 = v61;
  v63 = v61;
  v47 = v54;
  v48 = v55;
  v62[0] = v54;
  v62[1] = v55;
  v49 = v57;
  v62[2] = v56;
  v62[3] = v57;
  *(v42 + 32) = v56;
  *(v42 + 48) = v49;
  *v42 = v47;
  *(v42 + 16) = v48;
  *(v42 + 112) = v46;
  *(v42 + 80) = v44;
  *(v42 + 96) = v45;
  *(v42 + 64) = v43;
  sub_8198(v62, &v64, &qword_322688, &qword_280EA8);
  sub_8E80(v18, &qword_322678, &qword_280E98);
  v66 = v58;
  v67 = v59;
  v68 = v60;
  v69 = v61;
  v64 = v54;
  v65[0] = v55;
  v65[1] = v56;
  v65[2] = v57;
  sub_8E80(&v64, &qword_322688, &qword_280EA8);
  return sub_8E80(v40, &qword_322678, &qword_280E98);
}

void sub_18ED70(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, uint64_t a8, char a9)
{
  v16 = sub_261490();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261570();
  sub_1934A8(&qword_31D960, &type metadata accessor for LayoutSubviews);
  sub_264820();
  sub_264860();
  if (sub_264850() == 2)
  {
    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = a4;
    if (CGRectGetHeight(v29) > 0.0)
    {
      sub_261580();
      v21 = a9 & 1;
      v28 = v21;
      v27 = 0;
      sub_261470();
      v26[2] = v22;
      *&v26[4] = a7;
      v23 = *(v17 + 8);
      v23(v20, v16);
      sub_261580();
      v28 = v21;
      v27 = 0;
      sub_261470();
      v26[5] = v24;
      v26[3] = v25;
      v23(v20, v16);
      sub_261580();
      v30.origin.x = a1;
      v30.origin.y = a2;
      v30.size.width = a3;
      v30.size.height = a4;
      CGRectGetMidX(v30);
      *&v26[1] = a6;
      v31.origin.x = a1;
      v31.origin.y = a2;
      v31.size.width = a3;
      v31.size.height = a4;
      CGRectGetMinY(v31);
      sub_263700();
      v28 = 0;
      v27 = 0;
      sub_261480();
      v23(v20, v16);
      v32.origin.x = a1;
      v32.origin.y = a2;
      v32.size.width = a3;
      v32.size.height = a4;
      CGRectGetHeight(v32);
      sub_261580();
      v33.origin.x = a1;
      v33.origin.y = a2;
      v33.size.width = a3;
      v33.size.height = a4;
      CGRectGetMidX(v33);
      v34.origin.x = a1;
      v34.origin.y = a2;
      v34.size.width = a3;
      v34.size.height = a4;
      CGRectGetMinY(v34);
      sub_263700();
      v28 = 0;
      v27 = 0;
      sub_261480();
      v23(v20, v16);
    }
  }
}

double sub_18F108(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_18F148(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261040();
  return sub_F4138;
}

uint64_t sub_18F1D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2EF0(&qword_322748, &qword_281018);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_2EF0(&qword_322750, &qword_281020);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = *(v2 + *(type metadata accessor for SeriesEntityCardView.TextLockupView(0) + 28));
  if (v12)
  {
    v13 = sub_261E50();
  }

  else
  {
    v13 = sub_261E60();
  }

  *v7 = v13;
  *(v7 + 1) = 0;
  v7[16] = 0;
  v14 = sub_2EF0(&qword_322758, &qword_281028);
  sub_18F3DC(v2, &v7[*(v14 + 44)]);
  KeyPath = swift_getKeyPath();
  sub_22148(v7, v11, &qword_322748, &qword_281018);
  v16 = &v11[*(v8 + 36)];
  *v16 = KeyPath;
  v16[8] = v12;
  v17 = swift_getKeyPath();
  v18 = (a1 + *(sub_2EF0(&qword_322760, &unk_281090) + 36));
  v19 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v20 = enum case for ColorScheme.dark(_:);
  v21 = sub_261180();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = v17;
  return sub_22148(v11, a1, &qword_322750, &qword_281020);
}

uint64_t sub_18F3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v179 = sub_2EF0(&qword_322768, &qword_2810A0);
  v169 = *(v179 - 8);
  v3 = *(v169 + 64);
  __chkstk_darwin(v179);
  v156 = &v134 - v4;
  v5 = sub_2EF0(&qword_316208, &qword_268BD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v166 = &v134 - v7;
  v8 = sub_2EF0(&qword_322770, &qword_2810A8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v171 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v168 = &v134 - v12;
  v13 = sub_2EF0(&qword_322778, &unk_2810B0);
  v14 = *(v13 - 8);
  v164 = v13 - 8;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v170 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v178 = &v134 - v18;
  v19 = type metadata accessor for SizeConstants.Spacing(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v163 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SizeConstants(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v162 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ColorConstants(0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v173 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_2626C0();
  v180 = *(v177 - 8);
  v28 = *(v180 + 64);
  __chkstk_darwin(v177);
  v176 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2EF0(&qword_318458, &unk_26B270);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v134 - v32;
  v175 = sub_262730();
  v34 = *(v175 - 8);
  v35 = v34[8];
  __chkstk_darwin(v175);
  v37 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for FontConstants(0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v174 = &v134 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_260BD0();
  v159 = v41;
  v158 = *(v41 - 8);
  v42 = v158;
  v43 = *(v158 + 64);
  __chkstk_darwin(v41);
  v155 = &v134 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v134 - v46;
  v48 = sub_2EF0(&qword_322780, &qword_2810C0);
  v49 = *(v48 - 8);
  v165 = (v48 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48 - 8);
  v167 = &v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v134 - v53;
  v55 = type metadata accessor for SeriesEntityCardView.TextLockupView(0);
  v160 = (a1 + v55[7]);
  v56 = v160;
  v161 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
  v57 = *(v42 + 16);
  v58 = &v56[*(v161 + 20)];
  v150 = v42 + 16;
  v149 = v57;
  v57(v47, v58, v41);
  v151 = v47;
  sub_260B10();
  v59 = a1;
  v60 = v174;
  v148 = a1 + v55[5];
  sub_40D40(v174);
  v61 = v34[13];
  v146 = enum case for Font.TextStyle.footnote(_:);
  v62 = v175;
  v147 = v34 + 13;
  v145 = v61;
  v61(v37);
  v63 = sub_2625C0();
  v64 = *(v63 - 8);
  v65 = *(v64 + 56);
  v144 = v63;
  v143 = v65;
  v142 = v64 + 56;
  (v65)(v33, 1, 1);
  sub_262650();
  sub_262680();
  v154 = v33;
  sub_8E80(v33, &qword_318458, &unk_26B270);
  v66 = v34[1];
  v153 = v37;
  v152 = v34 + 1;
  v141 = v66;
  v66(v37, v62);
  v67 = v180;
  v68 = *(v180 + 104);
  v69 = v176;
  v139 = enum case for Font.Leading.tight(_:);
  v70 = v177;
  v140 = v180 + 104;
  v138 = v68;
  v68(v176);
  v71 = sub_2626E0();

  v72 = *(v67 + 8);
  v180 = v67 + 8;
  v137 = v72;
  v72(v69, v70);
  sub_18D3B0(v60, type metadata accessor for FontConstants);
  KeyPath = swift_getKeyPath();
  v136 = sub_2EF0(&qword_318470, &qword_26FBB0);
  v74 = &v54[*(v136 + 36)];
  *v74 = KeyPath;
  v74[1] = v71;
  v75 = swift_getKeyPath();
  v135 = sub_2EF0(&qword_322788, &qword_281130);
  v76 = &v54[*(v135 + 36)];
  *v76 = v75;
  *(v76 + 1) = 1;
  v76[16] = 0;
  v77 = v59 + v55[6];
  v78 = v173;
  sub_404B8(v173);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v79 = sub_263000();

  v80 = v78;
  sub_18D3B0(v78, type metadata accessor for ColorConstants);
  v81 = swift_getKeyPath();
  v82 = &v54[*(v179 + 36)];
  *v82 = v81;
  v82[1] = v79;
  LOBYTE(v78) = sub_262520();
  v83 = v162;
  sub_40CA0(v162);
  v157 = type metadata accessor for SizeConstants.Environment;
  v84 = v163;
  sub_18D338(v83, v163, type metadata accessor for SizeConstants.Environment);
  sub_18D3B0(v84, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v85 = *(v165 + 11);
  v165 = v54;
  v86 = &v54[v85];
  v87 = v158;
  *v86 = v78;
  *(v86 + 1) = v88;
  *(v86 + 2) = v89;
  *(v86 + 3) = v90;
  *(v86 + 4) = v91;
  v86[40] = 0;
  sub_262F90();

  v92 = v178;
  sub_190318(v59, v178);
  v134 = v77;
  sub_404B8(v80);
  v93 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_18D3B0(v80, type metadata accessor for ColorConstants);
  v94 = swift_getKeyPath();
  v95 = (v92 + *(sub_2EF0(&qword_322790, &qword_281168) + 36));
  *v95 = v94;
  v95[1] = v93;
  LOBYTE(v94) = sub_262520();
  sub_40CA0(v83);
  sub_18D338(v83, v84, v157);
  v96 = v159;
  sub_18D3B0(v84, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v97 = v92 + *(v164 + 44);
  *v97 = v94;
  v98 = v166;
  *(v97 + 8) = v99;
  *(v97 + 16) = v100;
  *(v97 + 24) = v101;
  *(v97 + 32) = v102;
  *(v97 + 40) = 0;
  LODWORD(v164) = *v160;
  sub_8198(&v160[*(v161 + 32)], v98, &qword_316208, &qword_268BD0);
  if ((*(v87 + 48))(v98, 1, v96) == 1)
  {
    sub_8E80(v98, &qword_316208, &qword_268BD0);
    v103 = 1;
    v104 = v168;
    v105 = v179;
  }

  else
  {
    v106 = v155;
    (*(v87 + 32))(v155, v98, v96);
    v149(v151, v106, v96);
    v107 = v156;
    sub_260B10();
    v108 = v174;
    sub_40D40(v174);
    v109 = v153;
    v110 = v175;
    v145(v153, v146, v175);
    v111 = v154;
    v143(v154, 1, 1, v144);
    sub_262630();
    sub_262680();
    sub_8E80(v111, &qword_318458, &unk_26B270);
    v141(v109, v110);
    v112 = v176;
    v113 = v177;
    v138(v176, v139, v177);
    v114 = sub_2626E0();

    v137(v112, v113);
    sub_18D3B0(v108, type metadata accessor for FontConstants);
    v115 = swift_getKeyPath();
    v116 = (v107 + *(v136 + 36));
    *v116 = v115;
    v116[1] = v114;
    v117 = swift_getKeyPath();
    v118 = v107 + *(v135 + 36);
    *v118 = v117;
    *(v118 + 8) = 1;
    *(v118 + 16) = 0;
    v119 = v173;
    sub_404B8(v173);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v120 = sub_263000();

    sub_18D3B0(v119, type metadata accessor for ColorConstants);
    v121 = swift_getKeyPath();
    v122 = v179;
    v123 = (v107 + *(v179 + 36));
    *v123 = v121;
    v123[1] = v120;
    sub_262F90();

    (*(v87 + 8))(v106, v96);
    v104 = v168;
    sub_22148(v107, v168, &qword_322768, &qword_2810A0);
    v103 = 0;
    v105 = v122;
  }

  (*(v169 + 56))(v104, v103, 1, v105);
  v124 = v164;
  LODWORD(v180) = v164 ^ 1;
  v125 = v165;
  v126 = v167;
  sub_8198(v165, v167, &qword_322780, &qword_2810C0);
  v127 = v178;
  v128 = v170;
  sub_8198(v178, v170, &qword_322778, &unk_2810B0);
  v129 = v171;
  sub_8198(v104, v171, &qword_322770, &qword_2810A8);
  v130 = v172;
  sub_8198(v126, v172, &qword_322780, &qword_2810C0);
  v131 = sub_2EF0(&qword_322798, &qword_281170);
  sub_8198(v128, v130 + v131[12], &qword_322778, &unk_2810B0);
  v132 = v130 + v131[16];
  *v132 = 0;
  *(v132 + 8) = v180;
  *(v132 + 9) = v124;
  sub_8198(v129, v130 + v131[20], &qword_322770, &qword_2810A8);
  sub_8E80(v104, &qword_322770, &qword_2810A8);
  sub_8E80(v127, &qword_322778, &unk_2810B0);
  sub_8E80(v125, &qword_322780, &qword_2810C0);
  sub_8E80(v129, &qword_322770, &qword_2810A8);
  sub_8E80(v128, &qword_322778, &unk_2810B0);
  return sub_8E80(v126, &qword_322780, &qword_2810C0);
}

uint64_t sub_190318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v106 = &v87 - v5;
  v6 = sub_2EF0(&qword_3227A0, &qword_281178);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v112 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v111 = &v87 - v10;
  v117 = sub_2626C0();
  v119 = *(v117 - 8);
  v11 = *(v119 + 64);
  __chkstk_darwin(v117);
  v116 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_318458, &unk_26B270);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v87 - v15;
  v115 = sub_262730();
  v17 = *(v115 - 8);
  v18 = v17[8];
  __chkstk_darwin(v115);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FontConstants(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v102 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_260BD0();
  v114 = v24;
  v105 = *(v24 - 8);
  v25 = v105;
  v26 = *(v105 + 64);
  __chkstk_darwin(v24);
  v108 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v87 - v29;
  v118 = sub_2EF0(&qword_322788, &qword_281130);
  v109 = *(v118 - 8);
  v31 = *(v109 + 64);
  __chkstk_darwin(v118);
  v107 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v87 - v34;
  v36 = type metadata accessor for SeriesEntityCardView.TextLockupView(0);
  v103 = a1 + *(v36 + 28);
  v37 = v103;
  v104 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
  v38 = *(v25 + 16);
  v39 = (v37 + *(v104 + 24));
  v97 = v25 + 16;
  v96 = v38;
  v38(v30, v39, v24);
  v98 = v30;
  sub_260B10();
  v40 = a1 + *(v36 + 20);
  v41 = v102;
  sub_40D40(v102);
  v42 = v17[13];
  v43 = v115;
  v95 = v17 + 13;
  v94 = v42;
  v42(v20, enum case for Font.TextStyle.title3(_:), v115);
  v44 = enum case for Font.Design.serif (_:);
  v45 = sub_2625C0();
  v46 = *(v45 - 8);
  (*(v46 + 104))(v16, v44, v45);
  v91 = *(v46 + 56);
  v91(v16, 0, 1, v45);
  sub_262680();
  v101 = v16;
  sub_8E80(v16, &qword_318458, &unk_26B270);
  v47 = v17[1];
  v99 = v20;
  v100 = v17 + 1;
  v93 = v47;
  v47(v20, v43);
  v48 = v41;
  v49 = v119;
  v50 = *(v119 + 104);
  v51 = v116;
  v90 = enum case for Font.Leading.tight(_:);
  v52 = v117;
  v92 = v119 + 104;
  v89 = v50;
  v50(v116);
  v53 = sub_2626E0();

  v54 = v49 + 8;
  v55 = *(v49 + 8);
  v119 = v54;
  v55(v51, v52);
  v56 = v48;
  sub_18D3B0(v48, type metadata accessor for FontConstants);
  KeyPath = swift_getKeyPath();
  v88 = sub_2EF0(&qword_318470, &qword_26FBB0);
  v58 = &v35[*(v88 + 36)];
  *v58 = KeyPath;
  v58[1] = v53;
  v59 = v106;
  v60 = v114;
  v61 = swift_getKeyPath();
  v62 = *(v118 + 36);
  v110 = v35;
  v63 = &v35[v62];
  *v63 = v61;
  *(v63 + 1) = 3;
  v63[16] = 0;
  sub_262F90();

  sub_8198(v103 + *(v104 + 28), v59, &qword_316208, &qword_268BD0);
  v64 = v105;
  v65 = v60;
  if ((*(v105 + 48))(v59, 1, v60) == 1)
  {
    sub_8E80(v59, &qword_316208, &qword_268BD0);
    v66 = 1;
    v67 = v111;
    v68 = v107;
  }

  else
  {
    v69 = v108;
    (*(v64 + 32))(v108, v59, v65);
    v96(v98, v69, v65);
    v70 = v107;
    sub_260B10();
    v71 = v56;
    sub_40D40(v56);
    v72 = v99;
    v73 = v115;
    v94(v99, enum case for Font.TextStyle.subheadline(_:), v115);
    v74 = v101;
    v91(v101, 1, 1, v45);
    sub_262630();
    sub_262680();
    sub_8E80(v74, &qword_318458, &unk_26B270);
    v93(v72, v73);
    v76 = v116;
    v75 = v117;
    v89(v116, v90, v117);
    v77 = sub_2626E0();

    v55(v76, v75);
    sub_18D3B0(v71, type metadata accessor for FontConstants);
    v78 = swift_getKeyPath();
    v79 = (v70 + *(v88 + 36));
    *v79 = v78;
    v79[1] = v77;
    v80 = swift_getKeyPath();
    v81 = v70 + *(v118 + 36);
    *v81 = v80;
    *(v81 + 8) = 2;
    *(v81 + 16) = 0;
    sub_262F90();

    (*(v64 + 8))(v108, v114);
    v67 = v111;
    sub_22148(v70, v111, &qword_322788, &qword_281130);
    v66 = 0;
    v68 = v70;
  }

  (*(v109 + 56))(v67, v66, 1, v118);
  v82 = v110;
  sub_8198(v110, v68, &qword_322788, &qword_281130);
  v83 = v112;
  sub_8198(v67, v112, &qword_3227A0, &qword_281178);
  v84 = v113;
  sub_8198(v68, v113, &qword_322788, &qword_281130);
  v85 = sub_2EF0(&qword_3227A8, &qword_281180);
  sub_8198(v83, v84 + *(v85 + 48), &qword_3227A0, &qword_281178);
  sub_8E80(v67, &qword_3227A0, &qword_281178);
  sub_8E80(v82, &qword_322788, &qword_281130);
  sub_8E80(v83, &qword_3227A0, &qword_281178);
  return sub_8E80(v68, &qword_322788, &qword_281130);
}

uint64_t static ShelfGridLayout.seriesEntityCard(context:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ShelfGridLayoutContext();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = *(a1 + 64);
  sub_191910(a1, &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShelfGridLayoutContext);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_18D338(&v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ShelfGridLayoutContext);
  v27 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v26[0] = *(a1 + 16);
  v26[1] = v11;
  v26[2] = v12;
  v26[3] = v13;
  v26[4] = v14;
  v26[5] = v15;
  v16 = *(v5 + 40);

  v17 = ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(v26, a1 + v16);

  v18 = (a2 + *(sub_2EF0(&qword_3223E8, &qword_280C70) + 48));
  *a2 = v8;
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = sub_191A80;
  *(v19 + 32) = v10;
  *(v19 + 40) = 1;
  *v18 = sub_519A0;
  v18[1] = v19;
  v20 = enum case for ShelfGridItemWidth.calculate(_:);
  v21 = sub_260C90();
  (*(*(v21 - 8) + 104))(v18, v20, v21);
  v22 = enum case for ShelfGridLayout.horizontal(_:);
  v23 = sub_260B40();
  return (*(*(v23 - 8) + 104))(a2, v22, v23);
}

void sub_191000(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_319810, &unk_26D490);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_2EF0(&qword_317280, &qword_2697E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = *a1 < 1;
  v17 = *a1 - 1;
  v36 = a2;
  if (v16)
  {
    goto LABEL_5;
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    if (v17 / v18 > 2)
    {
      v19 = 0;
      goto LABEL_6;
    }

LABEL_5:
    v19 = *(a1 + *(type metadata accessor for ShelfGridLayoutContext() + 36) + 2);
LABEL_6:
    v20 = *(a1 + 56);
    v21 = type metadata accessor for ShelfGridLayoutContext();
    v22 = a1 + *(v21 + 32);
    __chkstk_darwin(v21);
    *(&v36 - 2) = v22;
    sub_6DF9C(sub_6DF7C, v20, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_8E80(v7, &qword_319810, &unk_26D490);
      v23 = v36;
      if (v19)
      {
        v24 = 0;
        v25 = xmmword_280B80;
LABEL_11:
        *v23 = v25;
        *(v23 + 16) = v24;
        return;
      }
    }

    else
    {
      sub_22148(v7, v15, &qword_317280, &qword_2697E0);
      sub_22148(v15, v12, &qword_317280, &qword_2697E0);
      v26 = *v12;
      v27 = *(v12 + 1);
      v28 = *(v12 + 2);
      v29 = *(v8 + 48);
      v30 = sub_261690();
      (*(*(v30 - 8) + 8))(&v12[v29], v30);

      v23 = v36;
    }

    v31 = *(a1 + 24);
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    v34 = *(a1 + 48);
    v35 = *(a1 + 56);
    v38 = *(a1 + 16);
    v39 = v31;
    v40 = v32;
    v41 = v33;
    v42 = v34;
    v43 = v35;
    v37 = *(a1 + 8);

    sub_110348(v22, &v37, &v44);

    v25 = v44;
    v24 = v45;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_191368(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_191434(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_A7C18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3080(v11);
  return v7;
}

unint64_t sub_191434(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_191540(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_264C20();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_191540(uint64_t a1, unint64_t a2)
{
  v4 = sub_19158C(a1, a2);
  sub_1916BC(&off_2FF5B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_19158C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1917A8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_264C20();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_264540();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1917A8(v10, 0);
        result = sub_264BB0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1916BC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_19181C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1917A8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_2EF0(&qword_322690, &qword_280EB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_19181C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_322690, &qword_280EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_191910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_191978()
{
  v1 = (type metadata accessor for ShelfGridLayoutContext() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *(v3 + 3);

  v5 = *(v3 + 4);

  v6 = *(v3 + 5);

  v7 = *(v3 + 6);

  v8 = *(v3 + 7);

  v9 = v1[10];
  v10 = sub_261690();
  (*(*(v10 - 8) + 8))(&v3[v9], v10);

  return swift_deallocObject();
}

void sub_191A80(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfGridLayoutContext() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_191000(v4, a1);
}

uint64_t sub_191B00()
{
  sub_51990(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_191B6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_31A020, &qword_26E220);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_260BD0();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = sub_2EF0(&qword_316208, &qword_268BD0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_191D64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_31A020, &qword_26E220);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_260BD0();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_2EF0(&qword_316208, &qword_268BD0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_191F48()
{
  sub_78E1C();
  if (v0 <= 0x3F)
  {
    sub_193314(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_260BD0();
      if (v2 <= 0x3F)
      {
        sub_193314(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_192084();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_192084()
{
  if (!qword_3195C0)
  {
    v0 = sub_2646F0();
    if (!v1)
    {
      atomic_store(v0, &qword_3195C0);
    }
  }
}

unint64_t sub_1920D8()
{
  result = qword_3224A0;
  if (!qword_3224A0)
  {
    sub_2F9C(&qword_3223E0, &qword_280C58);
    sub_2F9C(&qword_322390, &qword_280BD8);
    sub_18D410();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_3224A8, &qword_318978, &qword_26BEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3224A0);
  }

  return result;
}

uint64_t sub_1921E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_192328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_317BF8, &unk_26F930);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_19245C()
{
  sub_193314(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SeriesEntityCardView.TextLockupViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_192084();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_19254C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_260BD0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2EF0(&qword_316208, &qword_268BD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 28)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_192688(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_260BD0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2EF0(&qword_316208, &qword_268BD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 28)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1927B4()
{
  sub_260BD0();
  if (v0 <= 0x3F)
  {
    sub_193314(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_19288C()
{
  result = qword_3225F0;
  if (!qword_3225F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3225F0);
  }

  return result;
}

uint64_t sub_192900@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for SeriesEntityCardView.CardContents(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_18E488(a1, v6, a2);
}

unint64_t sub_192980()
{
  result = qword_322610;
  if (!qword_322610)
  {
    sub_2F9C(&qword_322600, &qword_280DE8);
    sub_8E38(&qword_322618, &qword_322620, &qword_280DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322610);
  }

  return result;
}

uint64_t sub_192A60()
{
  v1 = type metadata accessor for SeriesEntityCardView.CardContents(0);
  v19 = *(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((v19 + 16) & ~v19));
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v4 = sub_261690();
    (*(*(v4 - 8) + 8))(&v2[v3], v4);
  }

  else
  {
    v5 = *v2;
  }

  v6 = *&v2[v1[5] + 8];

  v7 = &v2[v1[6]];
  v8 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
  v9 = v8[5];
  v10 = sub_260BD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(&v7[v9], v10);
  v12(&v7[v8[6]], v10);
  v13 = v8[7];
  v14 = *(v11 + 48);
  if (!v14(&v7[v13], 1, v10))
  {
    v12(&v7[v13], v10);
  }

  v15 = v8[8];
  if (!v14(&v7[v15], 1, v10))
  {
    v12(&v7[v15], v10);
  }

  v16 = *&v2[v1[7]];

  return swift_deallocObject();
}

double sub_192CB0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesEntityCardView.CardContents(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_18E210(v4, a1);
}

unint64_t sub_192D30()
{
  result = qword_322658;
  if (!qword_322658)
  {
    sub_2F9C(&qword_322650, &qword_280E80);
    sub_8E38(&qword_322660, &qword_322668, &qword_280E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322658);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SeriesEntityCardView.RegularCardLayout(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SeriesEntityCardView.RegularCardLayout(uint64_t result, int a2, int a3)
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

uint64_t sub_192E58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_193018(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_1931D0()
{
  sub_193314(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_193314(319, &qword_31A7B8, type metadata accessor for FontConstants, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_193314(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SeriesEntityCardView.TextLockupViewModel(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_193314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_19337C()
{
  result = qword_322730;
  if (!qword_322730)
  {
    sub_2F9C(&qword_322738, qword_280EF8);
    sub_192980();
    sub_8E38(&qword_322628, &qword_322608, &qword_280DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322730);
  }

  return result;
}

unint64_t sub_193454()
{
  result = qword_322740;
  if (!qword_322740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322740);
  }

  return result;
}

uint64_t sub_1934A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19351C()
{
  result = qword_3227B0;
  if (!qword_3227B0)
  {
    sub_2F9C(&qword_322760, &unk_281090);
    sub_1935D4();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3227B0);
  }

  return result;
}

unint64_t sub_1935D4()
{
  result = qword_3227B8;
  if (!qword_3227B8)
  {
    sub_2F9C(&qword_322750, &qword_281020);
    sub_8E38(qword_3227C0, &qword_322748, &qword_281018);
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3227B8);
  }

  return result;
}

uint64_t _CodeAnyActionModel_KeyedBy.description.getter(uint64_t a1)
{
  v6 = *v1;
  v3 = *(a1 + 16);
  sub_2F9C(&qword_316A30, &qword_2697B0);
  v4 = *(a1 + 32);
  sub_2642E0();
  swift_getWitnessTable();
  sub_264EF0();
  return 0;
}

uint64_t _CodeAnyActionModel_KeyedBy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_30CC(a1, v7);
  sub_3FC1C();
  sub_2642F0();
  if (v2)
  {
    return sub_3080(a1);
  }

  sub_2EF0(&qword_316A30, &qword_2697B0);
  v6 = sub_2642D0();

  result = sub_3080(a1);
  *a2 = v6;
  return result;
}

uint64_t sub_193860@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  return _CodeAnyActionModel_KeyedBy.init(from:)(a1, a3);
}

uint64_t _CodeAnyActionModel_KeyedBy<>.init(_partiallyFrom:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_30CC(a1, v7);
  sub_3FC1C();
  v4 = sub_2642A0();
  v5 = sub_1938FC(v4);

  result = sub_3080(a1);
  *a2 = v5;
  return result;
}

uint64_t sub_1938FC(uint64_t a1)
{
  sub_2EF0(&qword_322848, &qword_281278);
  result = sub_264CF0();
  v3 = result;
  v4 = 0;
  v31 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v27 = result + 64;
  v28 = result;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = 16 * v15;
      v17 = (*(v31 + 48) + 16 * v15);
      v19 = *v17;
      v18 = v17[1];
      v20 = 40 * v15;
      sub_AAFC8(*(v31 + 56) + 40 * v15, v30);
      sub_30CC(v30, v29);

      sub_3FCA0(v30);
      v21 = (v15 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v22 = 1 << v15;
      v3 = v28;
      *(v27 + v21) |= v22;
      v23 = (v28[6] + v16);
      *v23 = v19;
      v23[1] = v18;
      result = sub_F7CC(v29, v28[7] + v20);
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v28[2] = v26;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_193A9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ViewModelWithExternals.subscript.getter(void *a1)
{
  v1 = *(*a1 + class metadata base offset for KeyPath);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v9 - v4;
  (*(v6 + 32))(v7, v6);
  swift_getAtKeyPath();
  return (*(v2 + 8))(v5, v1);
}

uint64_t static GridItemViewModel.topCharts(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  sub_2E18(a1, a1[3]);
  v5 = sub_2609A0();
  v7 = v6;
  v8 = a1[4];
  sub_2E18(a1, a1[3]);
  v9 = sub_2609B0();
  v11 = v10;
  *(&v21 + 1) = &type metadata for GridItemMetadataTitleWithSubtitle;
  v22 = sub_2004C();
  v12 = swift_allocObject();
  *&v20 = v12;
  v12[1].i64[0] = v5;
  v12[1].i64[1] = v7;
  v12[2].i64[0] = v9;
  v12[2].i64[1] = v11;
  v12[3] = vdupq_n_s64(1uLL);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  sub_34A0(&v20, a2, &qword_316BC0, &qword_2707C0);
  *(a2 + 40) = 1;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_30CC(a1, a2 + 96);
  sub_30CC(a1, v19);
  v13 = type metadata accessor for GridItemViewModel();
  CardInfo.init(with:alwaysPresentNewCardSet:)(v19, 1, a2 + v13[8]);
  v14 = v13[12];
  v15 = sub_260570();
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  v16 = v13[11];
  v17 = sub_2605C0();
  (*(*(v17 - 8) + 56))(a2 + v16, 1, 1, v17);
  *(a2 + 80) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 48) = 0u;
  result = sub_34A0(&v20, a2 + 48, &qword_316D48, &unk_28CD20);
  *(a2 + 88) = 1;
  *(a2 + v13[9]) = 0;
  *(a2 + v13[10]) = 0;
  return result;
}

uint64_t sub_193E28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_193E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_261240();
  v6 = v30;
  v7 = v30 * 0.5;
  v8 = v31;
  v9 = DWORD1(v31);
  v10 = *(&v31 + 1);
  v11 = v32;

  v12 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v14 = v13;
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v37 = *v29;
  v38 = *&v29[16];
  v35 = v33[0];
  v36 = v31;
  *&v39 = v12;
  *(&v39 + 1) = v13;
  v15 = sub_2EF0(&qword_3228A8, &qword_2814D0);
  (*(*(v15 - 8) + 16))(a2, v3, v15);
  v16 = (a2 + *(sub_2EF0(&qword_3228A0, &qword_2814C8) + 36));
  v17 = *&v29[16];
  v16[2] = *v29;
  v16[3] = v17;
  v16[4] = v39;
  v18 = v36;
  *v16 = v35;
  v16[1] = v18;
  v40[2] = *v29;
  v40[3] = *&v29[16];
  v40[0] = v27;
  v40[1] = v28;
  v41 = v12;
  v42 = v14;
  sub_8198(v33, v20, &qword_3228D0, &qword_2814E0);
  sub_8198(&v35, v20, &qword_3228C8, &qword_2814D8);
  sub_8E80(v40, &qword_3228C8, &qword_2814D8);
  *v20 = v7;
  *&v20[1] = v6;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a1;
  v26 = 256;
  return sub_8E80(v20, &qword_3228D0, &qword_2814E0);
}

uint64_t sub_194074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v48 = a2;
  v47 = sub_2EF0(&qword_322860, &qword_2813A8);
  v2 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v4 = &v35[-v3];
  v5 = sub_2EF0(&qword_322868, &unk_2813B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v35[-v7];
  v9 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35[-v12];
  if (qword_315938 != -1)
  {
    swift_once();
  }

  v14 = sub_B080(v9, qword_31CB20);
  (*(v10 + 16))(v13, v14, v9);
  sub_260740();
  (*(v10 + 8))(v13, v9);
  if (v61 == 1)
  {
    v15 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v42 = v16;
    v43 = v15;
    KeyPath = swift_getKeyPath();
    v41 = KeyPath;
    v18 = swift_getKeyPath();
    v19 = swift_getKeyPath();
    v20 = swift_getKeyPath();
    v52 = 0;
    v21 = swift_getKeyPath();
    v44 = v5;
    v22 = v21;
    v40 = v21;
    v51 = 0;
    v23 = swift_getKeyPath();
    v50 = 0;
    v24 = swift_getKeyPath();
    v45 = v4;
    v39 = v24;
    v49[128] = 0;
    v36 = v52;
    v37 = v51;
    v38 = v50;
    LOBYTE(v61) = 0;
    v49[0] = 0;
    *&v53 = KeyPath;
    BYTE8(v53) = 0;
    *&v54 = v18;
    BYTE8(v54) = 0;
    *&v55 = v19;
    BYTE8(v55) = 0;
    *&v56 = v20;
    BYTE8(v56) = v52;
    *&v57 = v22;
    BYTE8(v57) = v51;
    *&v58 = v23;
    BYTE8(v58) = v50;
    *&v59 = v24;
    BYTE8(v59) = 0;
    *(&v59 + 9) = 1;
    v26 = v42;
    v25 = v43;
    *&v60 = v43;
    *(&v60 + 1) = v42;
    v27 = sub_2EF0(&qword_322870, &qword_2813C0);
    (*(*(v27 - 8) + 16))(v8, v46, v27);
    v28 = &v8[*(v5 + 36)];
    v29 = v58;
    v28[4] = v57;
    v28[5] = v29;
    v30 = v60;
    v28[6] = v59;
    v28[7] = v30;
    v31 = v54;
    *v28 = v53;
    v28[1] = v31;
    v32 = v56;
    v28[2] = v55;
    v28[3] = v32;
    v61 = v41;
    v62 = 0;
    v63 = v18;
    v64 = 0;
    v65 = v19;
    v66 = 0;
    v67 = v20;
    v68 = v36;
    v69 = v40;
    v70 = v37;
    v71 = v23;
    v72 = v38;
    v73 = v39;
    v74 = 0;
    v75 = 1;
    v76 = v25;
    v77 = v26;
    sub_8198(&v53, v49, &qword_322890, &qword_2813C8);
    sub_8E80(&v61, &qword_322890, &qword_2813C8);
    sub_8198(v8, v45, &qword_322868, &unk_2813B0);
    swift_storeEnumTagMultiPayload();
    sub_1959D4();
    sub_8E38(&qword_322880, &qword_322870, &qword_2813C0);
    sub_261F80();
    return sub_8E80(v8, &qword_322868, &unk_2813B0);
  }

  else
  {
    v34 = sub_2EF0(&qword_322870, &qword_2813C0);
    (*(*(v34 - 8) + 16))(v4, v46, v34);
    swift_storeEnumTagMultiPayload();
    sub_1959D4();
    sub_8E38(&qword_322880, &qword_322870, &qword_2813C0);
    return sub_261F80();
  }
}

uint64_t sub_194608@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_261C90();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_3228F8, &qword_281670);
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v50 = sub_2EF0(&qword_322900, &qword_281678);
  v12 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v14 = &v48 - v13;
  v51 = sub_2EF0(&qword_322908, &qword_281680);
  v15 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v53 = &v48 - v16;
  v52 = sub_2EF0(&qword_322910, &qword_281688);
  v17 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v54 = &v48 - v18;
  v19 = sub_261D30();
  v20 = &v11[v8[13]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v11[v8[14]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v11[v8[15]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  *v11 = v19;
  v11[8] = 1;
  v23 = &v11[v8[12]];
  sub_194CC4(v2);
  v86 = *(v2 + 8);
  v24 = *v2;
  v85 = *v2;
  if ((v86 & 1) == 0)
  {

    sub_264900();
    v25 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v85, &qword_322918, &qword_2816B8);
    (*(v48 + 8))(v6, v49);
    v24 = v73;
  }

  if (v24 <= 1)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = 1.0;
  }

  sub_22148(v11, v14, &qword_3228F8, &qword_281670);
  *&v14[*(v50 + 36)] = v26;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v27 = v53;
  sub_22148(v14, v53, &qword_322900, &qword_281678);
  v28 = (v27 + *(v51 + 36));
  v29 = v83;
  v28[4] = v82;
  v28[5] = v29;
  v28[6] = v84;
  v30 = v79;
  *v28 = v78;
  v28[1] = v30;
  v31 = v81;
  v28[2] = v80;
  v28[3] = v31;
  v32 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v34 = v33;
  v35 = sub_261D30();
  v56[0] = 0;
  sub_194EFC(v2, &v73);
  v66 = *&v74[112];
  v67 = *&v74[128];
  v68 = *&v74[144];
  v62 = *&v74[48];
  v63 = *&v74[64];
  v64 = *&v74[80];
  v65 = *&v74[96];
  v58 = v73;
  v59 = *v74;
  v60 = *&v74[16];
  v61 = *&v74[32];
  v69[8] = *&v74[112];
  v69[9] = *&v74[128];
  v69[10] = *&v74[144];
  v69[4] = *&v74[48];
  v69[5] = *&v74[64];
  v69[6] = *&v74[80];
  v69[7] = *&v74[96];
  v69[0] = v73;
  v69[1] = *v74;
  v69[2] = *&v74[16];
  v69[3] = *&v74[32];
  sub_8198(&v58, &v70, &qword_322920, &qword_2816C0);
  sub_8E80(v69, &qword_322920, &qword_2816C0);
  *&v57[119] = v65;
  *&v57[135] = v66;
  *&v57[151] = v67;
  *&v57[167] = v68;
  *&v57[55] = v61;
  *&v57[71] = v62;
  *&v57[87] = v63;
  *&v57[103] = v64;
  *&v57[7] = v58;
  *&v57[23] = v59;
  *&v57[39] = v60;
  *(&v71[8] + 1) = *&v57[128];
  *(&v71[9] + 1) = *&v57[144];
  *(&v71[10] + 1) = *&v57[160];
  *(&v71[4] + 1) = *&v57[64];
  *(&v71[5] + 1) = *&v57[80];
  *(&v71[6] + 1) = *&v57[96];
  *(&v71[7] + 1) = *&v57[112];
  *(v71 + 1) = *v57;
  *(&v71[1] + 1) = *&v57[16];
  *(&v71[2] + 1) = *&v57[32];
  v36 = v56[0];
  v70 = v35;
  LOBYTE(v71[0]) = v56[0];
  *(&v71[3] + 1) = *&v57[48];
  *&v71[11] = *(&v68 + 1);
  *(&v71[11] + 1) = v32;
  v72 = v34;
  v37 = v54;
  sub_22148(v27, v54, &qword_322908, &qword_281680);
  v38 = v37 + *(v52 + 36);
  v39 = v71[10];
  *(v38 + 160) = v71[9];
  *(v38 + 176) = v39;
  *(v38 + 192) = v71[11];
  v40 = v71[6];
  *(v38 + 96) = v71[5];
  *(v38 + 112) = v40;
  v41 = v71[8];
  *(v38 + 128) = v71[7];
  *(v38 + 144) = v41;
  v42 = v71[2];
  *(v38 + 32) = v71[1];
  *(v38 + 48) = v42;
  v43 = v71[4];
  *(v38 + 64) = v71[3];
  *(v38 + 80) = v43;
  v44 = v71[0];
  *v38 = v70;
  *(v38 + 16) = v44;
  *&v74[129] = *&v57[128];
  *&v74[145] = *&v57[144];
  *v75 = *&v57[160];
  *&v74[65] = *&v57[64];
  *&v74[81] = *&v57[80];
  *&v74[97] = *&v57[96];
  *&v74[113] = *&v57[112];
  *&v74[1] = *v57;
  *&v74[17] = *&v57[16];
  v45 = *&v57[48];
  *&v74[33] = *&v57[32];
  *(v38 + 208) = v72;
  v73 = v35;
  v74[0] = v36;
  *&v74[49] = v45;
  *&v75[15] = *&v57[175];
  v76 = v32;
  v77 = v34;
  sub_8198(&v70, v56, &qword_322928, &qword_2816C8);
  sub_8E80(&v73, &qword_322928, &qword_2816C8);
  v46 = v55;
  sub_22148(v37, v55, &qword_322910, &qword_281688);
  result = sub_2EF0(&qword_322930, &qword_2816D0);
  *(v46 + *(result + 36)) = 0;
  return result;
}

void sub_194CC4(uint64_t *a1)
{
  v2 = sub_261C90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  v7 = *a1;
  v10 = v7;
  if ((v11 & 1) == 0)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v10, &qword_322918, &qword_2816B8);
    (*(v3 + 8))(v6, v2);
    v7 = v9[0];
  }

  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v9[0] = 0;
    v9[1] = v7;
    swift_getKeyPath();
    sub_2EF0(&qword_31BEA8, &qword_271FD0);
    sub_C092C();
    sub_2633B0();
  }
}

uint64_t sub_194EB4@<X0>(uint64_t *a1@<X8>)
{
  sub_262F70();
  v2 = sub_263000();

  *a1 = v2;
  return result;
}

double sub_194EFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262FD0();
  v40 = sub_263000();

  v66 = *(a1 + 24);
  v9 = *(a1 + 16);
  v65 = v9;
  v10 = v66;
  if ((v66 & 1) == 0)
  {

    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v65, &qword_322938, &unk_2816D8);
    (*(v5 + 8))(v8, v4);
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v39 = v46;
  v38 = v47;
  v37 = v48;
  v34 = v49;
  v36 = v50;
  v35 = v51;
  v12 = *(a1 + 32);
  v63 = v12;
  v64 = *(a1 + 40);
  v33 = v4;
  v32 = v5;
  if (v64 == 1)
  {
    v45 = v12;
  }

  else
  {

    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v63, &qword_322938, &unk_2816D8);
    (*(v5 + 8))(v8, v4);
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v14 = v52;
  v15 = v54;
  v16 = v56;
  v17 = v57;
  v44 = 0;
  v43 = v53;
  v42 = v55;
  sub_262FD0();
  v18 = sub_263000();

  if (v10)
  {
    v41 = v9;
  }

  else
  {

    sub_264900();
    v19 = v17;
    v20 = sub_2624B0();
    sub_260D10();

    v17 = v19;
    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v65, &qword_322938, &unk_2816D8);
    (*(v32 + 8))(v8, v33);
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v21 = v58;
  v22 = v60;
  v23 = v44;
  v24 = v43;
  v25 = v42;
  v26 = v38;
  v27 = v34;
  v28 = v59;
  v29 = v61;
  *a2 = v40;
  *(a2 + 8) = v39;
  *(a2 + 16) = v26;
  *(a2 + 24) = v37;
  *(a2 + 32) = v27;
  *(a2 + 40) = v36;
  *(a2 + 48) = v35;
  *(a2 + 56) = 0;
  *(a2 + 64) = v23;
  *(a2 + 72) = v14;
  *(a2 + 80) = v24;
  *(a2 + 88) = v15;
  *(a2 + 96) = v25;
  *(a2 + 104) = v16;
  *(a2 + 112) = v17;
  *(a2 + 120) = v18;
  *(a2 + 128) = v21;
  *(a2 + 136) = v28;
  *(a2 + 144) = v22;
  *(a2 + 152) = v29;
  result = *&v62;
  *(a2 + 160) = v62;
  return result;
}

uint64_t sub_195404@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return sub_194608(a1);
}

uint64_t sub_195440(uint64_t a1)
{
  v2 = sub_2EF0(&qword_322898, &qword_2814C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v19[-v4];
  v6 = sub_2EF0(&qword_3228A0, &qword_2814C8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v19[-v8];
  v10 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19[-v13];
  if (qword_315938 != -1)
  {
    swift_once();
  }

  v15 = sub_B080(v10, qword_31CB20);
  (*(v11 + 16))(v14, v15, v10);
  sub_260740();
  (*(v11 + 8))(v14, v10);
  if (v19[15] == 1)
  {
    v16 = sub_262F20();
    sub_193E68(v16, v9);

    sub_8198(v9, v5, &qword_3228A0, &qword_2814C8);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_3228A8, &qword_2814D0);
    sub_195AE0();
    sub_8E38(&qword_3228B8, &qword_3228A8, &qword_2814D0);
    sub_261F80();
    return sub_8E80(v9, &qword_3228A0, &qword_2814C8);
  }

  else
  {
    v18 = sub_2EF0(&qword_3228A8, &qword_2814D0);
    (*(*(v18 - 8) + 16))(v5, a1, v18);
    swift_storeEnumTagMultiPayload();
    sub_195AE0();
    sub_8E38(&qword_3228B8, &qword_3228A8, &qword_2814D0);
    return sub_261F80();
  }
}

unint64_t sub_1957EC()
{
  result = qword_322850;
  if (!qword_322850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322850);
  }

  return result;
}

uint64_t sub_195860@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  sub_261730();
  a2();
  swift_getWitnessTable();
  v7 = *(*(a1 - 8) + 16);

  return v7(a3, v3, a1);
}

unint64_t sub_195920()
{
  result = qword_322858;
  if (!qword_322858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322858);
  }

  return result;
}

unint64_t sub_1959D4()
{
  result = qword_322878;
  if (!qword_322878)
  {
    sub_2F9C(&qword_322868, &unk_2813B0);
    sub_8E38(&qword_322880, &qword_322870, &qword_2813C0);
    sub_8E38(&qword_322888, &qword_322890, &qword_2813C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322878);
  }

  return result;
}

unint64_t sub_195AE0()
{
  result = qword_3228B0;
  if (!qword_3228B0)
  {
    sub_2F9C(&qword_3228A0, &qword_2814C8);
    sub_8E38(&qword_3228B8, &qword_3228A8, &qword_2814D0);
    sub_8E38(&qword_3228C0, &qword_3228C8, &qword_2814D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3228B0);
  }

  return result;
}

uint64_t sub_195BC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_195C0C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_195C70()
{
  result = qword_3228D8;
  if (!qword_3228D8)
  {
    sub_2F9C(&qword_3228E0, &qword_281610);
    sub_1959D4();
    sub_8E38(&qword_322880, &qword_322870, &qword_2813C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3228D8);
  }

  return result;
}

unint64_t sub_195D2C()
{
  result = qword_3228E8;
  if (!qword_3228E8)
  {
    sub_2F9C(&qword_3228F0, qword_281618);
    sub_195AE0();
    sub_8E38(&qword_3228B8, &qword_3228A8, &qword_2814D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3228E8);
  }

  return result;
}

unint64_t sub_195E08()
{
  result = qword_322940;
  if (!qword_322940)
  {
    sub_2F9C(&qword_322930, &qword_2816D0);
    sub_195E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322940);
  }

  return result;
}

unint64_t sub_195E94()
{
  result = qword_322948;
  if (!qword_322948)
  {
    sub_2F9C(&qword_322910, &qword_281688);
    sub_195F4C();
    sub_8E38(&qword_322968, &qword_322928, &qword_2816C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322948);
  }

  return result;
}

unint64_t sub_195F4C()
{
  result = qword_322950;
  if (!qword_322950)
  {
    sub_2F9C(&qword_322908, &qword_281680);
    sub_195FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322950);
  }

  return result;
}

unint64_t sub_195FD8()
{
  result = qword_322958;
  if (!qword_322958)
  {
    sub_2F9C(&qword_322900, &qword_281678);
    sub_8E38(&qword_322960, &qword_3228F8, &qword_281670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322958);
  }

  return result;
}

uint64_t sub_196094@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (!*(*v2 + 16))
  {
    if (a1)
    {
LABEL_8:
      if (qword_315A88 != -1)
      {
        swift_once();
      }

      v6 = &xmmword_353FC0;
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  sub_30CC(*v2 + 32, v12);
  sub_2E18(v12, v12[3]);
  v5 = sub_260860();
  sub_3080(v12);
  if (a1)
  {
    if (!v5)
    {
      if (qword_315A78 != -1)
      {
        swift_once();
      }

      v6 = &xmmword_353F60;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if (v5)
  {
LABEL_12:
    if (qword_315A90 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_353FF0;
    goto LABEL_18;
  }

  if (qword_315A80 != -1)
  {
    swift_once();
  }

  v6 = &xmmword_353F90;
LABEL_18:
  v7 = *(v6 + 2);
  v8 = *(v6 + 3);
  v9 = *(v6 + 4);
  v10 = *(v6 + 5);
  *a2 = *v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
}

double sub_196238()
{
  result = 152.0;
  xmmword_353F60 = xmmword_281700;
  *&qword_353F70 = xmmword_281710;
  qword_353F80 = &off_300A80;
  qword_353F88 = 0x4020000000000000;
  return result;
}

double sub_196268()
{
  result = 248.0;
  xmmword_353F90 = xmmword_281720;
  *&qword_353FA0 = xmmword_281730;
  qword_353FB0 = &off_300B28;
  qword_353FB8 = 0x4028000000000000;
  return result;
}

double sub_196298()
{
  result = 157.0;
  xmmword_353FC0 = xmmword_281740;
  *&qword_353FD0 = xmmword_281750;
  qword_353FE0 = &off_300AD0;
  qword_353FE8 = 0x4020000000000000;
  return result;
}

double sub_1962C8()
{
  result = 221.0;
  xmmword_353FF0 = xmmword_281760;
  *&qword_354000 = xmmword_281770;
  qword_354010 = &off_300BB8;
  qword_354018 = 0x4028000000000000;
  return result;
}

uint64_t sub_196314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1963A4(uint64_t a1)
{
  v2 = sub_19659C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1963E0(uint64_t a1)
{
  v2 = sub_19659C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FanViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2EF0(&qword_322970, &qword_281780);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_19659C();
  sub_265120();
  if (!v2)
  {
    sub_2EF0(&qword_322980, &qword_281788);
    sub_1965F0();
    sub_264DF0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_3080(a1);
}

unint64_t sub_19659C()
{
  result = qword_322978;
  if (!qword_322978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322978);
  }

  return result;
}

unint64_t sub_1965F0()
{
  result = qword_322988;
  if (!qword_322988)
  {
    sub_2F9C(&qword_322980, &qword_281788);
    sub_AD668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322988);
  }

  return result;
}

unint64_t sub_1966C0()
{
  result = qword_322990;
  if (!qword_322990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322990);
  }

  return result;
}

unint64_t sub_196718()
{
  result = qword_322998;
  if (!qword_322998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322998);
  }

  return result;
}

unint64_t sub_196770()
{
  result = qword_3229A0;
  if (!qword_3229A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3229A0);
  }

  return result;
}

uint64_t WantToReadButton.init(assetInfo:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 66) = 0;

  return sub_F7CC(a1, a2 + 72);
}

uint64_t WantToReadButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2604E0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AssetAction(0);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v28 - v10);
  if (sub_196BB4())
  {
    sub_196DBC(v11);
  }

  else
  {
    sub_197B28(v11);
  }

  v12 = sub_2EF0(&qword_319AD0, &qword_26D8C0);
  v13 = (a1 + v12[12]);
  v30 = sub_2EF0(&qword_319AD8, &qword_281960);
  v13[3] = v30;
  v13[4] = sub_8E38(&qword_319AE0, &qword_319AD8, &qword_281960);
  v14 = sub_10934(v13);
  v15 = sub_2610B0();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = (a1 + v12[13]);
  v16[3] = v6;
  v16[4] = sub_723E4(&qword_319AE8);
  v17 = sub_10934(v16);
  sub_199378(v11, v17, type metadata accessor for AssetAction);
  sub_198ED4(v1, v32);
  sub_199378(v11, v8, type metadata accessor for AssetAction);
  v18 = (*(v29 + 80) + 128) & ~*(v29 + 80);
  v19 = swift_allocObject();
  v20 = v32[5];
  *(v19 + 5) = v32[4];
  *(v19 + 6) = v20;
  *(v19 + 7) = v32[6];
  v21 = v32[1];
  *(v19 + 1) = v32[0];
  *(v19 + 2) = v21;
  v22 = v32[3];
  *(v19 + 3) = v32[2];
  *(v19 + 4) = v22;
  sub_19944C(v8, v19 + v18, type metadata accessor for AssetAction);
  sub_2604C0();
  sub_260420();
  v23 = a1 + v12[9];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = v12[10];
  *(a1 + v24) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v25 = a1 + v12[11];
  *v25 = swift_getKeyPath();
  *(v25 + 40) = 0;
  v26 = (v14 + *(v30 + 36));
  *v26 = sub_1991B0;
  v26[1] = v19;
  return sub_1993E0(v11, type metadata accessor for AssetAction);
}

uint64_t sub_196BB4()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25[15] = *(v0 + 63);
  v6 = v0[3];
  v24[2] = v0[2];
  *v25 = v6;
  v7 = v0[1];
  v24[0] = *v0;
  v24[1] = v7;
  if (v25[18])
  {
    v8 = v0[3];
    v21 = v0[2];
    v22 = v8;
    v23 = *(v0 + 32);
    v9 = v0[1];
    v19 = *v0;
    v20 = v9;
    v17 = v21;
    v18[0] = v8;
    *(v18 + 15) = *(v0 + 63);
    v15 = v19;
    v16 = v9;
    sub_8198(&v15, &v14, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v24, &qword_317F40, &qword_26E9D0);
    (*(v2 + 8))(v5, v1);
  }

  v15 = v19;
  v16 = v20;
  v17 = v21;
  v18[0] = v22;
  LOWORD(v18[1]) = v23;
  if (*(&v19 + 1))
  {
    v11 = BYTE2(v18[0]);
    sub_8E80(&v15, &qword_317F48, &qword_26A9A0);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_196DBC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v108 = a1;
  v87 = sub_260560();
  v86 = *(v87 - 8);
  v3 = *(v86 + 64);
  __chkstk_darwin(v87);
  v85 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260600();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v84 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_2601E0();
  v102 = *(v103 - 8);
  v8 = *(v102 + 8);
  __chkstk_darwin(v103);
  v100 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_316B98, &unk_275840);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v104 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v105 = &v84 - v14;
  __chkstk_darwin(v15);
  v107 = &v84 - v16;
  v99 = type metadata accessor for AssetAction.Kind(0);
  v17 = *(*(v99 - 1) + 64);
  __chkstk_darwin(v99);
  v101 = (&v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_263DD0();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v97 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_263A10();
  v22 = *(v96 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v96);
  v90 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2EF0(&qword_322C70, &qword_272AD0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v84 - v27;
  v106 = sub_263AF0();
  v98 = *(v106 - 8);
  v29 = *(v98 + 64);
  __chkstk_darwin(v106);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v1[13];
  sub_2E18(v1 + 9, v1[12]);
  v33 = *(v32 + 8);
  v95 = sub_2606E0();
  v94 = v34;
  v35 = v1[13];
  sub_2E18(v2 + 9, v2[12]);
  v36 = *(v35 + 8);
  v93 = sub_2606E0();
  v92 = v37;
  v38 = v1[13];
  sub_2E18(v2 + 9, v2[12]);
  v91 = sub_260870();
  v39 = v1[13];
  sub_2E18(v2 + 9, v2[12]);
  v40 = *(v39 + 8);
  v89 = sub_2606E0();
  LOBYTE(v113[0]) = 26;
  v41 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(v113, v1 + 9);
  v42 = v1[13];
  sub_2E18(v2 + 9, v2[12]);
  sub_2608C0();
  v43 = sub_260060();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v28, 1, v43) == 1)
  {
    sub_8E80(v28, &qword_322C70, &qword_272AD0);
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v45 = sub_260020();
    v46 = v47;
    (*(v44 + 8))(v28, v43);
  }

  if (qword_315900 != -1)
  {
    swift_once();
  }

  v113[8] = xmmword_31ADC0;
  v113[9] = xmmword_31ADD0;
  v113[10] = xmmword_31ADE0;
  v113[4] = xmmword_31AD80;
  v113[5] = xmmword_31AD90;
  v113[6] = xmmword_31ADA0;
  v113[7] = xmmword_31ADB0;
  v113[0] = xmmword_31AD40;
  v113[3] = xmmword_31AD70;
  v113[1] = *algn_31AD50;
  v113[2] = xmmword_31AD60;
  v48 = &_swiftEmptyDictionarySingleton;
  if (v41)
  {
    v112 = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v111 = v41;
    sub_FBD8(&v111, v110);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = &_swiftEmptyDictionarySingleton;
    sub_DC90(v110, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
    v48 = v109;
  }

  if (v46)
  {
    v112 = &type metadata for String;
    *&v111 = v45;
    *(&v111 + 1) = v46;
    sub_FBD8(&v111, v110);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v109 = v48;
    sub_DC90(v110, 0x72556E6F69746361, 0xE90000000000006CLL, v50);
    v48 = v109;
  }

  v112 = &type metadata for String;
  *&v111 = 0xD000000000000014;
  *(&v111 + 1) = 0x800000000028F900;
  sub_FBD8(&v111, v110);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v109 = v48;
  sub_DC90(v110, 0x79546E6F69746361, 0xEA00000000006570, v51);
  v52 = v109;
  sub_2EF0(&qword_317218, &unk_269760);
  v53 = swift_allocObject();
  v88 = xmmword_267D30;
  *(v53 + 16) = xmmword_267D30;
  *(v53 + 32) = sub_1694E0();
  v112 = sub_2EF0(&qword_319B10, &qword_2777B0);
  *&v111 = v53;
  sub_FBD8(&v111, v110);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v109 = v52;
  sub_DC90(v110, 0x6E6F697461636F6CLL, 0xE800000000000000, v54);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v55 = sub_2639E0();
  sub_B080(v55, qword_353F10);
  v56 = v90;
  sub_2639C0();

  sub_2EF0(&qword_3160D8, &qword_267D60);
  v57 = *(v22 + 72);
  v58 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = v88;
  v60 = v96;
  (*(v22 + 16))(v59 + v58, v56, v96);
  sub_263DC0();
  sub_263AD0();
  (*(v22 + 8))(v56, v60);
  v61 = v101;
  *v101 = 0xD00000000000001ALL;
  *(v61 + 8) = 0x8000000000291540;
  *(v61 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v62 = sub_260620();
  v63 = *(v62 - 8);
  v64 = v31;
  v65 = v107;
  v99 = *(v63 + 56);
  v99(v107, 1, 1, v62);
  v66 = v100;
  sub_2601D0();
  v67 = sub_2601C0();
  v69 = v68;
  (*(v102 + 1))(v66, v103);
  v70 = v108;
  *v108 = v67;
  v70[1] = v69;
  v71 = v65;
  v72 = v94;
  v70[2] = v95;
  v70[3] = v72;
  v73 = v92;
  v70[4] = v93;
  v70[5] = v73;
  *(v70 + 48) = v91 & 1;
  v74 = type metadata accessor for AssetAction(0);
  v75 = v98;
  v76 = *(v98 + 16);
  v77 = v70 + *(v74 + 32);
  v102 = v64;
  v78 = v64;
  v79 = v106;
  v76(v77, v78, v106);
  v103 = v74;
  sub_199378(v61, v70 + *(v74 + 40), type metadata accessor for AssetAction.Kind);
  v80 = v104;
  sub_8198(v65, v104, &qword_316B98, &unk_275840);
  v81 = *(v63 + 48);
  if (v81(v80, 1, v62) == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v84);
    (*(v86 + 104))(v85, enum case for LinkActionType.click(_:), v87);
    v82 = v105;
    sub_260610();
    sub_8E80(v107, &qword_316B98, &unk_275840);
    sub_1993E0(v61, type metadata accessor for AssetAction.Kind);
    (*(v75 + 8))(v102, v106);
    if (v81(v80, 1, v62) != 1)
    {
      sub_8E80(v80, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v71, &qword_316B98, &unk_275840);
    sub_1993E0(v61, type metadata accessor for AssetAction.Kind);
    (*(v75 + 8))(v102, v79);
    v82 = v105;
    (*(v63 + 32))(v105, v80, v62);
  }

  v99(v82, 0, 1, v62);
  return sub_129C04(v82, v108 + *(v103 + 36));
}

uint64_t sub_197B28@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v108 = a1;
  v87 = sub_260560();
  v86 = *(v87 - 8);
  v3 = *(v86 + 64);
  __chkstk_darwin(v87);
  v85 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260600();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v84 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_2601E0();
  v102 = *(v103 - 8);
  v8 = *(v102 + 8);
  __chkstk_darwin(v103);
  v100 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_316B98, &unk_275840);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v104 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v105 = &v84 - v14;
  __chkstk_darwin(v15);
  v107 = &v84 - v16;
  v99 = type metadata accessor for AssetAction.Kind(0);
  v17 = *(*(v99 - 1) + 64);
  __chkstk_darwin(v99);
  v101 = (&v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_263DD0();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v97 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_263A10();
  v22 = *(v96 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v96);
  v90 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2EF0(&qword_322C70, &qword_272AD0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v84 - v27;
  v106 = sub_263AF0();
  v98 = *(v106 - 8);
  v29 = *(v98 + 64);
  __chkstk_darwin(v106);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v1[13];
  sub_2E18(v1 + 9, v1[12]);
  v33 = *(v32 + 8);
  v95 = sub_2606E0();
  v94 = v34;
  v35 = v1[13];
  sub_2E18(v2 + 9, v2[12]);
  v36 = *(v35 + 8);
  v93 = sub_2606E0();
  v92 = v37;
  v38 = v1[13];
  sub_2E18(v2 + 9, v2[12]);
  v91 = sub_260870();
  v39 = v1[13];
  sub_2E18(v2 + 9, v2[12]);
  v40 = *(v39 + 8);
  v89 = sub_2606E0();
  LOBYTE(v113[0]) = 1;
  v41 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(v113, v1 + 9);
  v42 = v1[13];
  sub_2E18(v2 + 9, v2[12]);
  sub_2608C0();
  v43 = sub_260060();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v28, 1, v43) == 1)
  {
    sub_8E80(v28, &qword_322C70, &qword_272AD0);
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v45 = sub_260020();
    v46 = v47;
    (*(v44 + 8))(v28, v43);
  }

  if (qword_315900 != -1)
  {
    swift_once();
  }

  v113[8] = xmmword_31ADC0;
  v113[9] = xmmword_31ADD0;
  v113[10] = xmmword_31ADE0;
  v113[4] = xmmword_31AD80;
  v113[5] = xmmword_31AD90;
  v113[6] = xmmword_31ADA0;
  v113[7] = xmmword_31ADB0;
  v113[0] = xmmword_31AD40;
  v113[3] = xmmword_31AD70;
  v113[1] = *algn_31AD50;
  v113[2] = xmmword_31AD60;
  v48 = &_swiftEmptyDictionarySingleton;
  if (v41)
  {
    v112 = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v111 = v41;
    sub_FBD8(&v111, v110);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = &_swiftEmptyDictionarySingleton;
    sub_DC90(v110, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
    v48 = v109;
  }

  if (v46)
  {
    v112 = &type metadata for String;
    *&v111 = v45;
    *(&v111 + 1) = v46;
    sub_FBD8(&v111, v110);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v109 = v48;
    sub_DC90(v110, 0x72556E6F69746361, 0xE90000000000006CLL, v50);
    v48 = v109;
  }

  v112 = &type metadata for String;
  *&v111 = 0x6E61576F54646461;
  *(&v111 + 1) = 0xEF646165526F5474;
  sub_FBD8(&v111, v110);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v109 = v48;
  sub_DC90(v110, 0x79546E6F69746361, 0xEA00000000006570, v51);
  v52 = v109;
  sub_2EF0(&qword_317218, &unk_269760);
  v53 = swift_allocObject();
  v88 = xmmword_267D30;
  *(v53 + 16) = xmmword_267D30;
  *(v53 + 32) = sub_1694E0();
  v112 = sub_2EF0(&qword_319B10, &qword_2777B0);
  *&v111 = v53;
  sub_FBD8(&v111, v110);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v109 = v52;
  sub_DC90(v110, 0x6E6F697461636F6CLL, 0xE800000000000000, v54);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v55 = sub_2639E0();
  sub_B080(v55, qword_353F10);
  v56 = v90;
  sub_2639C0();

  sub_2EF0(&qword_3160D8, &qword_267D60);
  v57 = *(v22 + 72);
  v58 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = v88;
  v60 = v96;
  (*(v22 + 16))(v59 + v58, v56, v96);
  sub_263DC0();
  sub_263AD0();
  (*(v22 + 8))(v56, v60);
  v61 = v101;
  *v101 = 0xD00000000000001ALL;
  *(v61 + 8) = 0x8000000000291540;
  *(v61 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v62 = sub_260620();
  v63 = *(v62 - 8);
  v64 = v31;
  v65 = v107;
  v99 = *(v63 + 56);
  v99(v107, 1, 1, v62);
  v66 = v100;
  sub_2601D0();
  v67 = sub_2601C0();
  v69 = v68;
  (*(v102 + 1))(v66, v103);
  v70 = v108;
  *v108 = v67;
  v70[1] = v69;
  v71 = v65;
  v72 = v94;
  v70[2] = v95;
  v70[3] = v72;
  v73 = v92;
  v70[4] = v93;
  v70[5] = v73;
  *(v70 + 48) = v91 & 1;
  v74 = type metadata accessor for AssetAction(0);
  v75 = v98;
  v76 = *(v98 + 16);
  v77 = v70 + *(v74 + 32);
  v102 = v64;
  v78 = v64;
  v79 = v106;
  v76(v77, v78, v106);
  v103 = v74;
  sub_199378(v61, v70 + *(v74 + 40), type metadata accessor for AssetAction.Kind);
  v80 = v104;
  sub_8198(v65, v104, &qword_316B98, &unk_275840);
  v81 = *(v63 + 48);
  if (v81(v80, 1, v62) == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v84);
    (*(v86 + 104))(v85, enum case for LinkActionType.click(_:), v87);
    v82 = v105;
    sub_260610();
    sub_8E80(v107, &qword_316B98, &unk_275840);
    sub_1993E0(v61, type metadata accessor for AssetAction.Kind);
    (*(v75 + 8))(v102, v106);
    if (v81(v80, 1, v62) != 1)
    {
      sub_8E80(v80, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v71, &qword_316B98, &unk_275840);
    sub_1993E0(v61, type metadata accessor for AssetAction.Kind);
    (*(v75 + 8))(v102, v79);
    v82 = v105;
    (*(v63 + 32))(v105, v80, v62);
  }

  v99(v82, 0, 1, v62);
  return sub_129C04(v82, v108 + *(v103 + 36));
}

uint64_t sub_1988A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a1;
  v50 = a2;
  v2 = sub_262730();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  __chkstk_darwin(v2);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_264010();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_263FA0();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v43);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ButtonViewModel.Content(0);
  v13 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ButtonViewModel(0);
  v17 = (v16 - 8);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_196BB4();
  if (v21)
  {
    v22 = 0xD000000000000010;
  }

  else
  {
    v22 = 0x7269632E73756C70;
  }

  if (v21)
  {
    v23 = 0x80000000002931F0;
  }

  else
  {
    v23 = 0xEB00000000656C63;
  }

  v24 = *(sub_2EF0(&qword_319AF8, &qword_279110) + 48);
  *v15 = v22;
  v15[1] = v23;
  sub_263F90();
  v25 = v44;
  (*(v5 + 104))(v8, enum case for LocalizerLookupStrategy.default(_:), v44);
  v45 = v15;
  sub_260B80();
  (*(v5 + 8))(v8, v25);
  (*(v9 + 8))(v12, v43);
  swift_storeEnumTagMultiPayload();
  v26 = &v20[v17[15]];
  v26[3] = type metadata accessor for AssetAction(0);
  v26[4] = sub_723E4(&qword_319B08);
  v27 = sub_10934(v26);
  sub_199378(v47, v27, type metadata accessor for AssetAction);
  type metadata accessor for ButtonViewModel.ActionKind(0);
  swift_storeEnumTagMultiPayload();
  v51 = 0x403C000000000000;
  v28 = enum case for Font.TextStyle.subheadline(_:);
  v29 = v49;
  v30 = *(v48 + 104);
  v31 = v46;
  v30(v46, enum case for Font.TextStyle.subheadline(_:), v49);
  sub_40130();
  sub_2612E0();
  v32 = v17[7];
  v51 = 0x4008000000000000;
  v30(v31, v28, v29);
  sub_2612E0();
  v33 = v17[8];
  *&v20[v33] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v34 = v17[16];
  v35 = sub_260BD0();
  (*(*(v35 - 8) + 56))(&v20[v34], 1, 1, v35);
  v20[v17[9]] = 1;
  v20[v17[10]] = 0;
  v20[v17[11]] = 1;
  v36 = &v20[v17[12]];
  *v36 = 1;
  *(v36 + 1) = 0;
  *(v36 + 2) = 0;
  *(v36 + 3) = 0;
  sub_19944C(v45, &v20[v17[13]], type metadata accessor for ButtonViewModel.Content);
  v20[v17[14]] = 1;
  v51 = 0x4020000000000000;
  v30(v31, v28, v29);
  v37 = v50;
  sub_2612E0();
  v38 = type metadata accessor for ButtonView();
  v39 = v38[5];
  v51 = 0x3FF8000000000000;
  v30(v31, v28, v29);
  sub_2612E0();
  v40 = v38[6];
  *(v37 + v40) = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  return sub_19944C(v20, v37 + v38[7], type metadata accessor for ButtonViewModel);
}

uint64_t sub_198F0C()
{
  v1 = type metadata accessor for AssetAction(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 128) & ~*(*(v1 - 1) + 80);
  sub_3060(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 82));
  sub_3080((v0 + 88));
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = v1[8];
  v9 = sub_263AF0();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[9];
  v11 = sub_260620();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v13 = v4 + v1[10];
  type metadata accessor for AssetAction.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v19 = *(v13 + 8);

        v16 = *(v13 + 24);
        goto LABEL_15;
      }

LABEL_14:
      v16 = *v13;
LABEL_15:

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
LABEL_19:
      v17 = *(v13 + 8);

      goto LABEL_20;
    }

    v15 = sub_260060();
LABEL_18:
    (*(*(v15 - 8) + 8))(v13, v15);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 7)
  {
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
  {
    v15 = sub_2601B0();
    goto LABEL_18;
  }

LABEL_20:

  return swift_deallocObject();
}

uint64_t sub_1991B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetAction(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 128) & ~*(v3 + 80));

  return sub_1988A0(v4, a1);
}

__n128 sub_19925C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_199280(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1992C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_199378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1993E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19944C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1994F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F666E4964726163;
  }

  else
  {
    v4 = 0x6C676E695377656ELL;
  }

  if (v3)
  {
    v5 = 0xED00006472614365;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6F666E4964726163;
  }

  else
  {
    v6 = 0x6C676E695377656ELL;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xED00006472614365;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264F10();
  }

  return v9 & 1;
}

Swift::Int sub_1995AC()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_19963C()
{
  *v0;
  sub_264500();
}

Swift::Int sub_1996B8()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_199744@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_3012D0;
  v8._object = v3;
  v5 = sub_264D40(v4, v8);

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

void sub_1997A4(uint64_t *a1@<X8>)
{
  v2 = 0x6C676E695377656ELL;
  if (*v1)
  {
    v2 = 0x6F666E4964726163;
  }

  v3 = 0xED00006472614365;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1997F0()
{
  if (*v0)
  {
    result = 0x6F666E4964726163;
  }

  else
  {
    result = 0x6C676E695377656ELL;
  }

  *v0;
  return result;
}

uint64_t sub_199838@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_3012D0;
  v9._object = a2;
  v6 = sub_264D40(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_19989C(uint64_t a1)
{
  v2 = sub_19A394();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1998D8(uint64_t a1)
{
  v2 = sub_19A394();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_199914()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_199980()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

uint64_t sub_1999D0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_301320;
  v7._object = v3;
  v5 = sub_264D40(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_199A58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_301358;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_199AB0(uint64_t a1)
{
  v2 = sub_19A4B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_199AEC(uint64_t a1)
{
  v2 = sub_19A4B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowAction.NewSingleCardDestination.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_263840();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  __chkstk_darwin(v3);
  v73 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v61 - v7;
  v8 = sub_2EF0(&qword_3229A8, &qword_281B60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v65 = &v61 - v12;
  v13 = sub_2EF0(&qword_3229B0, &qword_281B68);
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  __chkstk_darwin(v13);
  v16 = &v61 - v15;
  v17 = sub_2EF0(&qword_3229B8, &unk_281B70);
  v72 = *(v17 - 8);
  v18 = *(v72 + 64);
  __chkstk_darwin(v17);
  v20 = &v61 - v19;
  v21 = type metadata accessor for FlowAction.NewSingleCardDestination();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_19A394();
  v26 = v74;
  sub_265120();
  if (v26)
  {
    goto LABEL_16;
  }

  v63 = v13;
  v64 = v16;
  v27 = v72;
  v28 = v73;
  v62 = v24;
  v74 = a1;
  v77 = 0;
  v29 = v17;
  if ((sub_264E10() & 1) == 0)
  {
    v76 = 1;
    sub_19A564(&qword_3229C8, &type metadata accessor for JSONObject);
    sub_264DF0();
    v30 = v27;
    v34 = v68;
    sub_263800();
    v35 = v34;
    v36 = sub_263C10();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {
      sub_19A3E8(v35);
    }

    else
    {
      sub_2EF0(&unk_3165C0, &qword_28B080);
      v38 = sub_263C00();
      (*(v37 + 8))(v35, v36);
      if (v38)
      {
        v39 = v38;
        v40 = type metadata accessor for CardInfo();
        v41 = v62;
        v42 = v62 + *(v40 + 20);
        sub_2601D0();
        (*(v70 + 8))(v28, v71);
        goto LABEL_13;
      }
    }

    v43 = sub_264C10();
    swift_allocError();
    v45 = v44;
    sub_264D60();
    sub_264BF0();
    (*(*(v43 - 8) + 104))(v45, enum case for DecodingError.dataCorrupted(_:), v43);
    swift_willThrow();
    (*(v70 + 8))(v28, v71);
LABEL_15:
    (*(v30 + 8))(v20, v29);
    a1 = v74;
LABEL_16:
    v54 = a1;
    return sub_3080(v54);
  }

  v75 = 0;
  sub_19A4B8();
  sub_264D50();
  v30 = v27;
  v31 = v70;
  sub_19A564(&qword_3229C8, &type metadata accessor for JSONObject);
  v32 = v67;
  v33 = v71;
  sub_264DF0();
  v46 = v32;
  v47 = v65;
  sub_263800();
  (*(v31 + 8))(v46, v33);
  v48 = sub_263C10();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    sub_19A3E8(v47);
LABEL_14:
    v55 = sub_264C10();
    swift_allocError();
    v57 = v56;
    v59 = v63;
    v58 = v64;
    sub_264D60();
    sub_264BF0();
    (*(*(v55 - 8) + 104))(v57, enum case for DecodingError.dataCorrupted(_:), v55);
    swift_willThrow();
    (*(v69 + 8))(v58, v59);
    goto LABEL_15;
  }

  sub_2EF0(&unk_3165C0, &qword_28B080);
  v50 = sub_263C00();
  (*(v49 + 8))(v47, v48);
  if (!v50)
  {
    goto LABEL_14;
  }

  v39 = v50;
  v51 = type metadata accessor for CardInfo();
  v41 = v62;
  v52 = v62 + *(v51 + 20);
  sub_2601D0();
  (*(v69 + 8))(v64, v63);
LABEL_13:
  v53 = v66;
  (*(v30 + 8))(v20, v29);
  *v41 = v39;
  sub_19A450(v41, v53, type metadata accessor for FlowAction.NewSingleCardDestination);
  v54 = v74;
  return sub_3080(v54);
}

uint64_t type metadata accessor for FlowAction.NewSingleCardDestination()
{
  result = qword_322A38;
  if (!qword_322A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_19A394()
{
  result = qword_3229C0;
  if (!qword_3229C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3229C0);
  }

  return result;
}

uint64_t sub_19A3E8(uint64_t a1)
{
  v2 = sub_2EF0(&qword_3229A8, &qword_281B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A4B8()
{
  result = qword_3229D0;
  if (!qword_3229D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3229D0);
  }

  return result;
}

uint64_t sub_19A50C(uint64_t a1)
{
  result = sub_19A564(&qword_3229D8, type metadata accessor for FlowAction.NewSingleCardDestination);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A5D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardInfo();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19A658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardInfo();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19A6C8()
{
  result = type metadata accessor for CardInfo();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_19A758()
{
  result = qword_322A70;
  if (!qword_322A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322A70);
  }

  return result;
}

unint64_t sub_19A7B0()
{
  result = qword_322A78;
  if (!qword_322A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322A78);
  }

  return result;
}

unint64_t sub_19A808()
{
  result = qword_322A80;
  if (!qword_322A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322A80);
  }

  return result;
}

unint64_t sub_19A860()
{
  result = qword_322A88;
  if (!qword_322A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322A88);
  }

  return result;
}

unint64_t sub_19A8B8()
{
  result = qword_322A90;
  if (!qword_322A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322A90);
  }

  return result;
}

unint64_t sub_19A910()
{
  result = qword_322A98;
  if (!qword_322A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322A98);
  }

  return result;
}

uint64_t PageScrollAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageScrollAction() + 20);
  v4 = sub_263AF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PageScrollAction()
{
  result = qword_322AF8;
  if (!qword_322AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageScrollAction.location.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for PageScrollAction();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PageScrollAction.init(location:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_260620();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = type metadata accessor for PageScrollAction();
  v6 = a2 + *(v5 + 20);
  result = sub_263AC0();
  *(a2 + *(v5 + 24)) = v3;
  return result;
}

unint64_t sub_19AB94(uint64_t a1)
{
  result = sub_E3C84();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19ABD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316B98, &unk_275840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_263AF0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_19ACE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316B98, &unk_275840);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_263AF0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_19ADE8()
{
  sub_143274();
  if (v0 <= 0x3F)
  {
    sub_263AF0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t CodeAssetInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_30CC(a1, v14);
  sub_19B018(v14, &v12);
  if (!v2)
  {
    v5 = v12;
    sub_260810();

    if (v13)
    {

      sub_F7CC(&v12, v14);
      sub_F7CC(v14, v15);
      v6 = v15[1];
      *a2 = v15[0];
      *(a2 + 16) = v6;
      *(a2 + 32) = v16;
    }

    else
    {
      sub_8E80(&v12, &qword_316D40, &unk_268FC0);
      v7 = sub_264C10();
      swift_allocError();
      v9 = v8;
      v10 = a1[4];
      sub_2E18(a1, a1[3]);
      sub_2650E0();
      sub_264BF0();
      (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.dataCorrupted(_:), v7);
      swift_willThrow();
    }
  }

  return sub_3080(a1);
}

uint64_t sub_19B018@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v56 = sub_2641D0();
  v53 = *(v56 - 8);
  v3 = *(v53 + 64);
  __chkstk_darwin(v56);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v49 - v6;
  v7 = sub_2EF0(&qword_3229A8, &qword_281B60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v49 - v9;
  v11 = sub_263840();
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  __chkstk_darwin(v11);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_322B38, &qword_281FA0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v49 - v16;
  v18 = sub_260820();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v23 = a1[4];
  v57 = a1;
  sub_2E18(a1, v24);
  sub_265100();
  if (qword_315AB0 != -1)
  {
    swift_once();
  }

  v25 = sub_2EF0(&qword_322B40, &unk_282F70);
  sub_B080(v25, qword_323388);
  sub_2642C0();

  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    (*(v19 + 32))(v22, v17, v18);
    v27 = v57;
    v28 = v57[4];
    sub_2E18(v57, v57[3]);
    v29 = v54;
    sub_2650F0();
    v26 = v29;
    if (v29)
    {
      (*(v19 + 8))(v22, v18);
      goto LABEL_12;
    }

    v54 = v10;
    sub_2E18(v58, v58[3]);
    sub_19B934(&qword_3229C8, &type metadata accessor for JSONObject);
    sub_264F30();
    v30 = v54;
    sub_263800();
    v31 = sub_263C10();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      sub_8E80(v30, &qword_3229A8, &qword_281B60);
      v27 = v57;
      v33 = v11;
    }

    else
    {
      v34 = sub_263C00();
      v35 = v30;
      v36 = v34;
      (*(v32 + 8))(v35, v31);
      v27 = v57;
      v33 = v11;
      if (v36)
      {
LABEL_11:
        v37 = v51;
        sub_260A00();
        sub_260840();
        v48 = sub_2609F0();

        (*(v50 + 8))(v37, v33);
        (*(v19 + 8))(v22, v18);
        sub_3080(v58);
        *v49 = v48;
        return sub_3080(v27);
      }
    }

    sub_EEE8(_swiftEmptyArrayStorage);

    goto LABEL_11;
  }

  sub_8E80(v17, &qword_322B38, &qword_281FA0);
  sub_2EF0(&qword_322B48, &qword_281FA8);
  sub_19B8D0();
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v57;
LABEL_12:
  v58[6] = v26;
  swift_errorRetain();
  sub_2EF0(&qword_31E968, &qword_27B490);
  v38 = v55;
  v39 = v56;
  if (swift_dynamicCast())
  {

    v40 = v52;
    v41 = v53;
    (*(v53 + 32))(v52, v38, v39);
    v42 = sub_264C10();
    swift_allocError();
    v55 = v43;
    v44 = v27[4];
    sub_2E18(v27, v27[3]);
    v54 = sub_2650E0();
    v58[0] = 0;
    v58[1] = 0xE000000000000000;
    sub_264BC0(23);
    v59._object = 0x80000000002941B0;
    v59._countAndFlagsBits = 0xD000000000000011;
    sub_264530(v59);
    v60._countAndFlagsBits = 0x74657373414DLL;
    v60._object = 0xE600000000000000;
    sub_264530(v60);
    v61._countAndFlagsBits = 8250;
    v61._object = 0xE200000000000000;
    sub_264530(v61);
    sub_264CC0();
    sub_19B934(&qword_322B58, &type metadata accessor for JSONError);
    swift_allocError();
    (*(v41 + 16))(v45, v40, v39);
    v46 = v55;
    v27 = v57;
    sub_264BF0();
    (*(*(v42 - 8) + 104))(v46, enum case for DecodingError.dataCorrupted(_:), v42);
    swift_willThrow();
    (*(v41 + 8))(v40, v39);
  }

  return sub_3080(v27);
}

unint64_t sub_19B8D0()
{
  result = qword_322B50;
  if (!qword_322B50)
  {
    sub_2F9C(&qword_322B48, &qword_281FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322B50);
  }

  return result;
}

uint64_t sub_19B934(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19B980@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_2EF0(&qword_322B68, &qword_281FC0);
  v2 = *(v1 - 8);
  v52 = v1;
  v53 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v51 = &v47 - v4;
  v5 = sub_2EF0(&qword_322B70, &qword_281FC8);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v48 = &v47 - v8;
  v9 = sub_2EF0(&qword_322B78, &qword_281FD0);
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  v13 = sub_2EF0(&qword_31FC40, &qword_27B488);
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v56 = &v47 - v19;
  __chkstk_darwin(v20);
  v61 = &v47 - v21;
  __chkstk_darwin(v22);
  v62 = &v47 - v23;
  __chkstk_darwin(v24);
  v26 = &v47 - v25;
  __chkstk_darwin(v27);
  v29 = &v47 - v28;
  v63[3] = sub_263E70();
  v63[4] = &protocol witness table for SyncTaskScheduler;
  sub_10934(v63);
  sub_263E60();
  v30 = sub_263C70();
  sub_2640B0();
  sub_263D00();
  v31 = v14[2];
  v58 = v29;
  v31(v29, v26, v13);
  sub_8E38(&qword_322B80, &qword_322B78, &qword_281FD0);
  sub_263CD0();
  v59 = v14[1];
  v60 = v14 + 1;
  v59(v26, v13);
  (*(v47 + 8))(v12, v9);
  v32 = v48;
  sub_2640E0();
  v33 = v62;
  sub_263D00();
  v57 = v26;
  v31(v26, v33, v13);
  sub_8E38(&qword_322B88, &qword_322B70, &qword_281FC8);
  v34 = v49;
  sub_263CD0();
  v59(v33, v13);
  (*(v50 + 8))(v32, v34);
  v35 = v51;
  v55 = v30;
  sub_264070();
  v36 = v61;
  sub_263D00();
  v31(v33, v36, v13);
  sub_8E38(&qword_322B90, &qword_322B68, &qword_281FC0);
  v37 = v52;
  sub_263CD0();
  v38 = v59;
  v39 = v60;
  v59(v36, v13);
  (*(v53 + 8))(v35, v37);
  v40 = v56;
  sub_263D00();
  v31(v36, v40, v13);
  sub_19C4E4();
  sub_263CD0();
  v41 = v40;
  v38(v40, v13);
  sub_263D00();
  v31(v40, v17, v13);
  sub_19C538();
  sub_263CD0();
  v38(v17, v13);
  sub_2EF0(&qword_322BA8, qword_281FD8);
  v42 = v39[8];
  v43 = (*(v39 + 72) + 32) & ~*(v39 + 72);
  v52 = 4 * v42;
  v53 = swift_allocObject();
  v44 = v53 + v43;
  v31((v53 + v43), v58, v13);
  v31((v44 + v42), v57, v13);
  v50 = 2 * v42;
  v31((v44 + 2 * v42), v62, v13);
  v51 = 3 * v42;
  v31((v44 + 3 * v42), v61, v13);
  v31((v44 + 4 * v42), v41, v13);
  sub_263D00();
  v31(v17, v44, v13);
  sub_263CC0();
  v45 = v59;
  v59(v17, v13);
  v31(v17, (v44 + v42), v13);
  sub_263CC0();
  v45(v17, v13);
  v31(v17, (v44 + v50), v13);
  sub_263CC0();
  v45(v17, v13);
  v31(v17, (v44 + v51), v13);
  sub_263CC0();
  v45(v17, v13);
  v31(v17, (v44 + v52), v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_263CC0();
  v45(v17, v13);
  v45(v56, v13);
  v45(v61, v13);
  v45(v62, v13);
  v45(v57, v13);
  return (v45)(v58, v13);
}

uint64_t ActionDispatcher<>.withBuiltInActionImplementations.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2EF0(&qword_322B60, &qword_281FB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_2EF0(&qword_31FC40, &qword_27B488);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v18 - v14;
  sub_19B980(&v18 - v14);
  v16 = *(v12 + 16);
  v16(v10, v2, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v16(a1, v15, v11);
  sub_19C40C(v10, v7);
  sub_263CE0();
  sub_19C47C(v10);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_19C40C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_322B60, &qword_281FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19C47C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_322B60, &qword_281FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19C4E4()
{
  result = qword_322B98;
  if (!qword_322B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322B98);
  }

  return result;
}

unint64_t sub_19C538()
{
  result = qword_322BA0;
  if (!qword_322BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322BA0);
  }

  return result;
}

void AttributedString.init(html:font:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  objc_allocWithZone(type metadata accessor for BooksHTMLConverter());

  v8 = sub_19C6C8(a1, a2, a3);
  [*&v8[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];

  v9 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  v10 = sub_25FF40();
  (*(*(v10 - 8) + 16))(a4, &v8[v9], v10);
}

uint64_t type metadata accessor for BooksHTMLConverter()
{
  result = qword_322C00;
  if (!qword_322C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_19C6C8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_25FF40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0x3E79646F623CLL;
  v25 = 0xE600000000000000;
  v26._countAndFlagsBits = a1;
  v26._object = a2;
  sub_264530(v26);
  v27._countAndFlagsBits = 0x3E79646F622F3CLL;
  v27._object = 0xE700000000000000;
  sub_264530(v27);
  v13 = objc_allocWithZone(BUINQMLParser);
  v14 = sub_264420();

  v15 = [v13 initWithString:v14];

  *&v4[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] = v15;
  *&v4[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_tagStack] = &_swiftEmptyArrayStorage;
  v16 = &v4[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_html];
  *v16 = a1;
  v16[1] = a2;
  *&v4[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_font] = a3;

  sub_25FF10();
  (*(v9 + 32))(&v4[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString], v12, v8);
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v23, "init");
  v18 = *&v17[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser];
  v19 = v17;
  [v18 setDelegate:v19];

  return v19;
}

id sub_19C918()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_19CA08()
{
  result = sub_25FF40();
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

uint64_t sub_19CDD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_19CE2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_19CE90(uint64_t a1, uint64_t a2)
{
  if (a1 == 4)
  {
    if (*(a2 + 16))
    {
      v4 = sub_D5E0(@"href");
      if (v5)
      {
        v6 = (*(a2 + 56) + 16 * v4);
        v8 = *v6;
        v7 = v6[1];
      }

      else
      {
        v8 = 0;
        v7 = 0;
      }
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v16 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_tagStack;
    swift_beginAccess();
    v17 = *(v2 + v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_E9894(0, *(v17 + 2) + 1, 1, v17);
      *(v2 + v16) = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_E9894((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[24 * v20];
    *(v21 + 4) = 4;
    *(v21 + 5) = v8;
    *(v21 + 6) = v7;
    *(v2 + v16) = v17;
  }

  else
  {
    v10 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_tagStack;
    swift_beginAccess();
    v11 = *(v2 + v10);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((v12 & 1) == 0)
    {
      v11 = sub_E9894(0, *(v11 + 2) + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_E9894((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[24 * v14];
    *(v15 + 5) = 0;
    *(v15 + 6) = 0;
    *(v15 + 4) = a1;
    *(v2 + v10) = v11;
  }

  return swift_endAccess();
}

uint64_t sub_19D078()
{
  v1 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_tagStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16))
  {
    __break(1u);
LABEL_6:
    result = sub_228E38(v2);
    v2 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = *(v0 + v1);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v2 + 16);
  if (v5)
  {
LABEL_4:
    v6 = *(v2 + 24 * v5 + 24);
    *(v2 + 16) = v5 - 1;
    *(v0 + v1) = v2;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_19D124()
{
  v1 = v0;
  v2 = sub_2EF0(&qword_322C70, &qword_272AD0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v40 - v6;
  v7 = sub_2EF0(&qword_322C78, &qword_282058);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v13 = sub_25FF90();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_25FF40();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_25FF80();
  sub_25FF50();
  v49 = *(v1 + OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_font);
  sub_19D89C();

  sub_25FF70();
  v20 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_tagStack;
  swift_beginAccess();
  v21 = *(*(v1 + v20) + 16);
  if (v21)
  {
    v41 = v16;
    v42 = v15;
    v43 = v1;

    v22 = (v40 + 48);
    v44 = v12;
    while (1)
    {
      v24 = *(v22 - 2);
      if (v24 > 1)
      {
        if (v24 == 2)
        {
          v34 = *v22;

          sub_262880();
          v35 = sub_2628B0();
          (*(*(v35 - 8) + 56))(v12, 0, 1, v35);
          sub_8198(v12, v47, &qword_322C78, &qword_282058);
          sub_19D944();
        }

        else
        {
          if (v24 != 3)
          {
            if (v24 != 4 || *v22 == 0)
            {
              goto LABEL_5;
            }

            v26 = *(v22 - 1);
            v27 = *v22;

            v28 = v45;
            sub_260050();
            sub_8198(v28, v46, &qword_322C70, &qword_272AD0);
            sub_19D8F0();
            sub_25FF70();

            v29 = v28;
            v30 = &qword_322C70;
            v12 = v44;
            v31 = &qword_272AD0;
            goto LABEL_21;
          }

          v36 = *v22;

          sub_262880();
          v37 = sub_2628B0();
          (*(*(v37 - 8) + 56))(v12, 0, 1, v37);
          sub_8198(v12, v47, &qword_322C78, &qword_282058);
          sub_19D998();
        }

        sub_25FF70();

        v29 = v12;
        v30 = &qword_322C78;
        v31 = &qword_282058;
LABEL_21:
        sub_8E80(v29, v30, v31);
        goto LABEL_5;
      }

      if (v24)
      {
        if (v24 != 1)
        {
          goto LABEL_5;
        }

        v32 = *v22;

        sub_25FF60();
        if (v48)
        {
          v33 = sub_262660();
LABEL_24:
          v23 = v33;

          goto LABEL_4;
        }
      }

      else
      {
        v38 = *v22;

        sub_25FF60();
        if (v48)
        {
          v33 = sub_2625A0();
          goto LABEL_24;
        }
      }

      v23 = 0;
LABEL_4:
      v48 = v23;
      sub_25FF70();

LABEL_5:
      v22 += 3;
      if (!--v21)
      {

        v15 = v42;
        v16 = v41;
        break;
      }
    }
  }

  swift_beginAccess();
  sub_25FF30();
  swift_endAccess();
  return (*(v16 + 8))(v19, v15);
}

void sub_19D6C0()
{
  if (qword_315838 != -1)
  {
    swift_once();
  }

  v1 = sub_260D50();
  sub_B080(v1, qword_315F58);
  v2 = v0;
  swift_errorRetain();
  oslog = sub_260D30();
  v3 = sub_2648F0();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_191368(*&v2[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_html], *&v2[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_html + 8], &v9);
    *(v4 + 12) = 2080;
    swift_getErrorValue();
    v5 = sub_264FF0();
    v7 = sub_191368(v5, v6, &v9);

    *(v4 + 14) = v7;
    _os_log_impl(&dword_0, oslog, v3, "Failed to parse the provided HTML string %s with error: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

unint64_t sub_19D89C()
{
  result = qword_322C80;
  if (!qword_322C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322C80);
  }

  return result;
}

unint64_t sub_19D8F0()
{
  result = qword_322C88;
  if (!qword_322C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322C88);
  }

  return result;
}

unint64_t sub_19D944()
{
  result = qword_322C90;
  if (!qword_322C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322C90);
  }

  return result;
}

unint64_t sub_19D998()
{
  result = qword_322C98;
  if (!qword_322C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322C98);
  }

  return result;
}

unint64_t sub_19D9EC()
{
  result = qword_322CA0;
  if (!qword_322CA0)
  {
    type metadata accessor for NQMLAttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322CA0);
  }

  return result;
}

uint64_t View.synchronousNativeIntentDispatcher(_:with:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_30CC(a1, v6);
  v4 = swift_allocObject();
  sub_F7CC(v6, v4 + 16);
  *(v4 + 56) = a2;

  sub_262CA0();
}

uint64_t EnvironmentValues.dispatchSynchronousNativeIntent.getter()
{
  sub_19DE58();

  return sub_261CB0();
}

uint64_t sub_19DB64@<X0>(void *a1@<X8>)
{
  sub_19DE58();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_19DBB4@<X0>(void *a1@<X8>)
{
  sub_19DE58();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_19DC04(uint64_t *a1)
{
  v2 = *a1;
  sub_19DE58();

  return sub_261CC0();
}

uint64_t sub_19DC68(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2637F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(a2, v15);
  v9 = swift_allocObject();
  sub_F7CC(v15, v9 + 16);
  v10 = *a1;
  sub_2EF0(&qword_322D18, &qword_282088);
  v11 = swift_allocObject();
  v11[2] = sub_19E664;
  v11[3] = v9;
  v11[4] = v10;

  sub_2637E0();
  v12 = sub_263C60();

  result = (*(v5 + 8))(v8, v4);
  *a1 = v12;
  return result;
}

uint64_t sub_19DE0C()
{
  sub_3080((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

unint64_t sub_19DE58()
{
  result = qword_322D10;
  if (!qword_322D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322D10);
  }

  return result;
}

uint64_t View.synchronousNativeIntentDispatcher(from:)()
{
  swift_getKeyPath();

  sub_262CA0();
}

uint64_t sub_19DF48(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2637F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_2EF0(&qword_322D18, &qword_282088);
  v10 = swift_allocObject();
  v10[2] = sub_19E5B0;
  v10[3] = a2;
  v10[4] = v9;
  swift_retain_n();
  sub_2637E0();
  v11 = sub_263C60();

  result = (*(v5 + 8))(v8, v4);
  *a1 = v11;
  return result;
}

uint64_t sub_19E0B8()
{
  sub_2EF0(&qword_322D18, &qword_282088);
  sub_263C70();

  return sub_264190();
}

uint64_t View.synchronousNativeIntentDispatcher(with:implementations:)(uint64_t a1, void (*a2)(void))
{
  v5[3] = &type metadata for SynchronousNativeIntentDispatcher;
  v5[4] = &protocol witness table for SynchronousNativeIntentDispatcher;
  v5[0] = swift_allocObject();
  a2();
  View.synchronousNativeIntentDispatcher(_:with:)(v5, a1);
  return sub_3080(v5);
}

uint64_t sub_19E1DC()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_3080(v0 + 3);
  }

  return swift_deallocObject();
}

uint64_t sub_19E224@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = a1();
  if (a2)
  {
    sub_2EF0(&qword_322D18, &qword_282088);
    sub_263C70();

    sub_264190();
    v6 = a3[3];
    v7 = a3[4];
    sub_2E18(a3, v6);
    sub_30CC(v10, v8);
    (*(v7 + 16))(v9, v8, v6, v7);

    sub_19E5C4(v8);
    sub_3080(v10);
    sub_3080(a3);
    return sub_F7CC(v9, a3);
  }

  return result;
}