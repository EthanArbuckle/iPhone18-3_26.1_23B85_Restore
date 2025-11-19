unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

uint64_t ResolvedTransferRepresentation.exporter.getter()
{
  v1 = (v0 + *(type metadata accessor for ResolvedTransferRepresentation() + 32));
  v2 = *v1;
  v3 = v1[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(*v1);
  return v2;
}

uint64_t ResolvedTransferRepresentation.exporter.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ResolvedTransferRepresentation() + 32));
  v6 = v5[1];
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ResolvedTransferRepresentation.importer.getter()
{
  v1 = (v0 + *(type metadata accessor for ResolvedTransferRepresentation() + 36));
  v2 = *v1;
  v3 = v1[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(*v1);
  return v2;
}

uint64_t ResolvedTransferRepresentation.importer.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ResolvedTransferRepresentation() + 36));
  v6 = v5[1];
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporter:importer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v34 = a4;
  v32 = a2;
  v33 = a3;
  v35 = a9;
  v30 = a11;
  v31 = a10;
  v28 = a13;
  v29 = a12;
  v18 = type metadata accessor for UTType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMd, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMR);
  v23 = *(type metadata accessor for ResolvedTransferRepresentation() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20E3FD830;
  (*(v19 + 16))(v22, a1, v18);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(a5);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(a7);
  ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(v22, v32, v33, v34, a5, a6, a7, a8, v26 + v25, v31, *(&v31 + 1), v30, *(&v30 + 1), v29, v28);
  _TransferRepresentationOutputs.init(_:)(v26);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(a7);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(a5);
  result = (*(v19 + 8))(a1, v18);
  *v35 = v36;
  return result;
}

uint64_t TransferRepresentation.visibility(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v8;
  (*(v6 + 16))(v10, v3, a2);
  (*(v6 + 32))(a3, v10, a2);
  result = type metadata accessor for _VisibleTransferRepresentation();
  *(a3 + *(result + 36)) = v11;
  return result;
}

uint64_t static _VisibleTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23[0] = a1;
  v23[1] = a4;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _TransferRepresentationValue();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - v13;
  v15 = type metadata accessor for _VisibleTransferRepresentation();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v23 - v18;
  (*(v16 + 16))(v23 - v18, v23[0], v15);
  (*(v6 + 16))(v9, v19, a2);
  _TransferRepresentationValue.init(_:)(v9, a2, v14);
  (*(a3 + 48))(&v28, v14);
  (*(v11 + 8))(v14, v10);
  v25 = a2;
  v26 = a3;
  v27 = v19;
  v20 = type metadata accessor for ResolvedTransferRepresentation();
  v21 = _TransferRepresentationOutputs.map<A>(_:)(partial apply for closure #1 in static _VisibleTransferRepresentation._decomposedTransferRepresentation(_:inputs:), v24, v20);

  _TransferRepresentationOutputs.init(_:)(v21);
  return (*(v16 + 8))(v19, v15);
}

uint64_t partial apply for closure #1 in static _VisibleTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  outlined init with copy of ResolvedTransferRepresentation(a1, a2);
  v7 = *(v6 + *(type metadata accessor for _VisibleTransferRepresentation() + 36));
  result = type metadata accessor for ResolvedTransferRepresentation();
  *(a2 + *(result + 44)) = v7;
  return result;
}

uint64_t associated type witness table accessor for TransferRepresentation.Item : Transferable in _VisibleTransferRepresentation<A>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t instantiation function for generic protocol witness table for _VisibleTransferRepresentation<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for _VisibleTransferRepresentation(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for _VisibleTransferRepresentation(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for _VisibleTransferRepresentation(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t outlined init with copy of ResolvedTransferRepresentation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedTransferRepresentation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static Data.transferRepresentation.getter()
{
  v0 = type metadata accessor for UTType();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  static UTType.data.getter();
  v11 = lazy protocol witness table accessor for type Data and conformance Data();
  v12 = MEMORY[0x277CC9318];
  DataRepresentation.init(contentType:exporting:importing:)(v3, &async function pointer to closure #1 in static Data.transferRepresentation.getter, 0, &async function pointer to closure #2 in static Data.transferRepresentation.getter, 0, MEMORY[0x277CC9318], v11);
  v13 = lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type DataRepresentation<Data> and conformance DataRepresentation<A>, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v8, v12, v4, v13);
  outlined destroy of UTType?(v8, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v10, v12, v4, v13);
  return outlined destroy of UTType?(v10, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
}

uint64_t closure #1 in static Data.transferRepresentation.getter(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  outlined copy of Data._Representation(*a1, v2);
  v4 = *(v1 + 8);

  return v4(v3, v2);
}

uint64_t closure #2 in static Data.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](closure #2 in static Data.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static Data.transferRepresentation.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  *v3 = v1;
  v3[1] = v2;
  outlined copy of Data._Representation(v1, v2);
  v4 = v0[1];

  return v4();
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t protocol witness for static Transferable.transferRepresentation.getter in conformance Data(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  static UTType.data.getter();
  DataRepresentation.init(contentType:exporting:importing:)(v7, &async function pointer to closure #1 in static Data.transferRepresentation.getter, 0, &async function pointer to closure #2 in static Data.transferRepresentation.getter, 0, a1, a2);
  v15 = lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type DataRepresentation<Data> and conformance DataRepresentation<A>, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v12, a1, v8, v15);
  outlined destroy of UTType?(v12, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v14, a1, v8, v15);
  return outlined destroy of UTType?(v14, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
}

uint64_t static String.transferRepresentation.getter()
{
  v0 = type metadata accessor for UTType();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  static UTType.utf8PlainText.getter();
  v11 = lazy protocol witness table accessor for type String and conformance String();
  v12 = MEMORY[0x277D837D0];
  DataRepresentation.init(contentType:exporting:importing:)(v3, &async function pointer to closure #1 in static String.transferRepresentation.getter, 0, &async function pointer to closure #2 in static String.transferRepresentation.getter, 0, MEMORY[0x277D837D0], v11);
  v13 = lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type DataRepresentation<String> and conformance DataRepresentation<A>, &_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v8, v12, v4, v13);
  outlined destroy of UTType?(v8, &_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v10, v12, v4, v13);
  return outlined destroy of UTType?(v10, &_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
}

uint64_t closure #1 in static String.transferRepresentation.getter(uint64_t *a1)
{
  v3 = type metadata accessor for String.Encoding();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a1;
  v8 = a1[1];
  v1[4] = v6;
  v1[5] = v7;
  v1[6] = v8;

  return MEMORY[0x2822009F8](closure #1 in static String.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static String.transferRepresentation.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  (*(v4 + 8))(v3, v5);
  v9 = v0[4];
  if (v8 >> 60 == 15)
  {
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[4];

    v13 = v0[1];

    return v13(v6, v8);
  }
}

uint64_t closure #2 in static String.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in static String.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static String.transferRepresentation.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  static String.Encoding.utf8.getter();
  v4 = String.init(data:encoding:)();
  if (v5)
  {
    v6 = v0[5];
    v7 = v0[2];
    *v7 = v4;
    v7[1] = v5;
  }

  else
  {
    v9 = v0[5];
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

uint64_t protocol witness for static Transferable.transferRepresentation.getter in conformance String(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  static UTType.utf8PlainText.getter();
  DataRepresentation.init(contentType:exporting:importing:)(v7, &async function pointer to closure #1 in static String.transferRepresentation.getter, 0, &async function pointer to closure #2 in static String.transferRepresentation.getter, 0, a1, a2);
  v15 = lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type DataRepresentation<String> and conformance DataRepresentation<A>, &_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v12, a1, v8, v15);
  outlined destroy of UTType?(v12, &_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v14, a1, v8, v15);
  return outlined destroy of UTType?(v14, &_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
}

uint64_t static URL.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMR);
  v1 = *(*(v26 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v25 = &v24 - v5;
  v6 = type metadata accessor for UTType();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  static UTType.url.getter();
  v17 = type metadata accessor for URL();
  v18 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  DataRepresentation.init(contentType:exporting:importing:)(v9, &async function pointer to closure #1 in static URL.transferRepresentation.getter, 0, &async function pointer to partial apply for closure #2 in static URL.transferRepresentation.getter, 0, v17, v18);
  v19 = lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type DataRepresentation<URL> and conformance DataRepresentation<A>, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v14, v17, v10, v19);
  outlined destroy of UTType?(v14, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMR);
  static UTType.fileURL.getter();
  DataRepresentation.init(contentType:exporting:importing:)(v9, &async function pointer to closure #3 in static URL.transferRepresentation.getter, 0, &async function pointer to partial apply for closure #4 in static URL.transferRepresentation.getter, 0, v17, v18);
  TransferRepresentation.exportingCondition(_:)(closure #5 in static URL.transferRepresentation.getter, 0, v10, v4);
  outlined destroy of UTType?(v14, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMR);
  v20 = lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type _ConditionalTransferRepresentation<DataRepresentation<URL>> and conformance _ConditionalTransferRepresentation<A>, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMR);
  v21 = v25;
  v22 = v26;
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v4, v17, v26, v20);
  outlined destroy of UTType?(v4, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMR);
  static TransferRepresentationBuilder.buildBlock<A, B>(_:_:)(v16, v21, v10, v22, v27);
  outlined destroy of UTType?(v21, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMR);
  return outlined destroy of UTType?(v16, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMR);
}

uint64_t closure #1 in static URL.transferRepresentation.getter(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for UTType();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static URL.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static URL.transferRepresentation.getter()
{
  v1 = v0[7];
  v2 = v0[4];
  static UTType.url.getter();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = closure #1 in static URL.transferRepresentation.getter;
  v6 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000020E3FF2B0, closure #1 in URL.data(contentType:)partial apply, v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = closure #1 in static URL.transferRepresentation.getter;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = closure #1 in static URL.transferRepresentation.getter;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t closure #2 in static URL.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UTType();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in static URL.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static URL.transferRepresentation.getter()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  static UTType.url.getter();
  static URL.url(contentType:data:)();
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t partial apply for closure #2 in static URL.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = Transferable.file(contentType:fileHandler:);

  return closure #2 in static URL.transferRepresentation.getter(a1, a2, a3);
}

void static URL.url(contentType:data:)()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = UTType.identifier.getter();
  v3 = MEMORY[0x20F32D490](v2);

  v9[0] = 0;
  v4 = [v0 objectWithItemProviderData:isa typeIdentifier:v3 error:v9];

  v5 = v9[0];
  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v7 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t closure #3 in static URL.transferRepresentation.getter(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for UTType();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #3 in static URL.transferRepresentation.getter, 0, 0);
}

uint64_t closure #3 in static URL.transferRepresentation.getter()
{
  v1 = v0[7];
  v2 = v0[4];
  static UTType.fileURL.getter();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = closure #3 in static URL.transferRepresentation.getter;
  v6 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000020E3FF2B0, partial apply for closure #1 in URL.data(contentType:), v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = closure #3 in static URL.transferRepresentation.getter;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = closure #3 in static URL.transferRepresentation.getter;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v3 = v0[1];

  return v3(v1, v2);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];
  v6 = v0[10];

  return v5();
}

uint64_t closure #4 in static URL.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UTType();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #4 in static URL.transferRepresentation.getter, 0, 0);
}

uint64_t closure #4 in static URL.transferRepresentation.getter()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  static UTType.fileURL.getter();
  static URL.url(contentType:data:)();
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t partial apply for closure #4 in static URL.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #4 in static URL.transferRepresentation.getter(a1, a2, a3);
}

void closure #1 in URL.data(contentType:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (aBlock - v5);
  URL._bridgeToObjectiveC()(v5);
  v8 = v7;
  v9 = UTType.identifier.getter();
  v10 = MEMORY[0x20F32D490](v9);

  (*(v3 + 16))(v6, a1, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v6, v2);
  aBlock[4] = partial apply for closure #1 in closure #1 in URL.data(contentType:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  v14 = [v8 loadDataWithTypeIdentifier:v10 forItemProviderCompletionHandler:v13];
  _Block_release(v13);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  outlined consume of Data?(v4, v9);
}

void partial apply for closure #1 in URL.data(contentType:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  closure #1 in URL.data(contentType:)(a1);
}

uint64_t partial apply for closure #1 in closure #1 in URL.data(contentType:)(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v7 = a2;
  v8 = (*(*(v6 - 8) + 80) + 16) & ~*(*(v6 - 8) + 80);
  if (v7 >> 60 == 15)
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      type metadata accessor for TransferableError();
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    outlined copy of Data._Representation(a1, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  return static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, a2, a3);
}

{
  v21[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for _TransferRepresentationValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v21 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v21 - v17;
  (*(a2 + 40))(a1, a2);
  (*(v12 + 16))(v16, v18, AssociatedTypeWitness);
  _TransferRepresentationValue.init(_:)(v16, AssociatedTypeWitness, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(v11);
  (*(v7 + 8))(v11, v6);
  return (*(v12 + 8))(v18, AssociatedTypeWitness);
}

void TransferRepresentation.bodyError()()
{
  _StringGuts.grow(_:)(34);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x20F32D540](v0);

  MEMORY[0x20F32D540](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static TransferRepresentationBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(*(TupleTypeMetadata2 - 8) + 64);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v17 - v13;
  v15 = *(v12 + 48);
  (*(*(a3 - 8) + 16))(&v17 - v13, a1, a3);
  (*(*(a4 - 8) + 16))(&v14[v15], a2, a4);
  swift_getAssociatedConformanceWitness();
  return TupleTransferRepresentation.init(_:)(v14, TupleTypeMetadata2, a5);
}

uint64_t static TransferRepresentationBuilder.buildBlock<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v28 = a5;
  v29 = a9;
  v25 = a3;
  v26 = a4;
  v24 = a2;
  v27 = a11;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v33 = a10;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v19 = &v24 - v18;
  v20 = v17[12];
  v21 = v17[16];
  v22 = v17[20];
  (*(*(a6 - 8) + 16))(&v24 - v18, a1, a6);
  (*(*(a7 - 8) + 16))(&v19[v20], v24, a7);
  (*(*(a8 - 8) + 16))(&v19[v21], v25, a8);
  (*(*(a10 - 8) + 16))(&v19[v22], v26, a10);
  swift_getAssociatedConformanceWitness();
  return TupleTransferRepresentation.init(_:)(v19, TupleTypeMetadata, v29);
}

uint64_t getEnumTagSinglePayload for TransferRepresentationBuilder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TransferRepresentationBuilder(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t AtomicBox.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized AtomicBox.init(wrappedValue:)(a1);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

void AtomicBox.wrappedValue.getter(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = (*(v6 + 80) + 20) & ~*(v6 + 80);
  os_unfair_lock_lock(a1 + 4);
  (*(v6 + 16))(a3, a1 + v7, a2);

  os_unfair_lock_unlock(a1 + 4);
}

void (*AtomicBox.wrappedValue.modify(os_unfair_lock_s **a1, os_unfair_lock_s *a2, uint64_t a3))(os_unfair_lock_s **a1)
{
  *a1 = a2;
  v3 = (*(*(a3 - 8) + 80) + 20) & ~*(*(a3 - 8) + 80);
  os_unfair_lock_lock(a2 + 4);
  return AtomicBox.wrappedValue.modify;
}

uint64_t closure #2 in static AtomicBuffer.allocate(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  return (*(v5 + 32))(a1, v8, a3);
}

uint64_t AtomicBuffer.__deallocating_deinit()
{
  v1 = *(*(*(*v0 + class metadata base offset for AtomicBuffer) - 8) + 80);
  v2 = UnsafeMutablePointer.deinitialize(count:)();
  v3 = MEMORY[0x20F32D780](v2);

  return MEMORY[0x2821FE8D8](v3, 20, 7);
}

uint64_t specialized AtomicBox.init(wrappedValue:)(uint64_t a1)
{
  v2 = type metadata accessor for AtomicBuffer();
  v3 = static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
  closure #2 in static AtomicBuffer.allocate(value:)(v3 + ((*(*(*(v2 + class metadata base offset for AtomicBuffer) - 8) + 80) + 20) & ~*(*(*(v2 + class metadata base offset for AtomicBuffer) - 8) + 80)), a1, *(v2 + class metadata base offset for AtomicBuffer));
  return v3;
}

uint64_t type metadata instantiation function for AtomicBox()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

uint64_t TransferRepresentation.exportingCondition(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4);
  v13 = type metadata accessor for _ConditionalTransferRepresentation();
  (*(v9 + 32))(&a4[*(v13 + 36)], v12, a3);
  *a4 = a1;
  *(a4 + 1) = a2;
}

uint64_t static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23[0] = a1;
  v23[1] = a4;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _TransferRepresentationValue();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - v13;
  v15 = type metadata accessor for _ConditionalTransferRepresentation();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v23 - v18;
  (*(v16 + 16))(v23 - v18, v23[0], v15);
  (*(v6 + 16))(v9, &v19[*(v15 + 36)], a2);
  _TransferRepresentationValue.init(_:)(v9, a2, v14);
  (*(a3 + 48))(&v28, v14);
  (*(v11 + 8))(v14, v10);
  v25 = a2;
  v26 = a3;
  v27 = v19;
  v20 = type metadata accessor for ResolvedTransferRepresentation();
  v21 = _TransferRepresentationOutputs.map<A>(_:)(partial apply for closure #1 in static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:), v24, v20);

  _TransferRepresentationOutputs.init(_:)(v21);
  return (*(v16 + 8))(v19, v15);
}

uint64_t closure #1 in static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v7 = type metadata accessor for _ConditionalTransferRepresentation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ResolvedTransferRepresentation();
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ResolvedTransferRepresentation(a1, a5);
  outlined init with copy of ResolvedTransferRepresentation(a1, v16);
  (*(v8 + 16))(v11, v25, v7);
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = (v15 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 16) = v26;
  *(v19 + 24) = v20;
  outlined init with take of ResolvedTransferRepresentation(v16, v19 + v17);
  (*(v8 + 32))(v19 + v18, v11, v7);
  v21 = (a5 + *(v13 + 48));
  v22 = v21[1];
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v21);
  *v21 = partial apply for closure #1 in closure #1 in static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:);
  v21[1] = v19;
  return result;
}

uint64_t closure #1 in closure #1 in static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v21 - v11;
  v13 = a2 + *(type metadata accessor for ResolvedTransferRepresentation() + 40);
  v14 = *v13;
  if (!*v13 || (v22 = a3, v15 = *(v13 + 8), , v16 = v14(a1), outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v14), a3 = v22, (v16 & 1) != 0))
  {
    v18 = *a3;
    v19 = *(a3 + 8);
    outlined init with copy of Transferable(a1, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
    swift_dynamicCast();
    v17 = v18(v12);
    (*(v9 + 8))(v12, AssociatedTypeWitness);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t instantiation function for generic protocol witness table for _ConditionalTransferRepresentation<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t type metadata completion function for _ConditionalTransferRepresentation(uint64_t a1)
{
  result = type metadata accessor for ()();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ConditionalTransferRepresentation(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void storeEnumTagSinglePayload for _ConditionalTransferRepresentation(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t outlined init with take of ResolvedTransferRepresentation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedTransferRepresentation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for ResolvedTransferRepresentation() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(type metadata accessor for _ConditionalTransferRepresentation() - 8);
  v9 = v1 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return closure #1 in closure #1 in static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, v1 + v6, v9);
}

uint64_t outlined init with copy of Transferable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TransferRepresentation.suggestedFileName(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4);
  (*(v9 + 32))(a4, v12, a3);
  v13 = a4 + *(type metadata accessor for _FileNamedTransferRepresentation() + 36);
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = 0;
}

{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4);
  (*(v9 + 32))(a4, v12, a3);
  v13 = a4 + *(type metadata accessor for _FileNamedTransferRepresentation() + 36);
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = 1;
}

uint64_t static _FileNamedTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23[0] = a1;
  v23[1] = a4;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _TransferRepresentationValue();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - v13;
  v15 = type metadata accessor for _FileNamedTransferRepresentation();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v23 - v18;
  (*(v16 + 16))(v23 - v18, v23[0], v15);
  (*(v6 + 16))(v9, v19, a2);
  _TransferRepresentationValue.init(_:)(v9, a2, v14);
  (*(a3 + 48))(&v28, v14);
  (*(v11 + 8))(v14, v10);
  v25 = a2;
  v26 = a3;
  v27 = v19;
  v20 = type metadata accessor for ResolvedTransferRepresentation();
  v21 = _TransferRepresentationOutputs.map<A>(_:)(partial apply for closure #1 in static _FileNamedTransferRepresentation._decomposedTransferRepresentation(_:inputs:), v24, v20);

  _TransferRepresentationOutputs.init(_:)(v21);
  return (*(v16 + 8))(v19, v15);
}

uint64_t partial apply for closure #1 in static _FileNamedTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  outlined init with copy of ResolvedTransferRepresentation(a1, a2);
  v7 = (v6 + *(type metadata accessor for _FileNamedTransferRepresentation() + 36));
  v9 = *v7;
  v8 = v7[1];
  if (v7[2])
  {
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = v5;
    v10[4] = v9;
    v10[5] = v8;
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);

    result = outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage?(v11, v12, v13);
    *a2 = partial apply for closure #1 in closure #1 in static _FileNamedTransferRepresentation._decomposedTransferRepresentation(_:inputs:);
    *(a2 + 8) = v10;
    *(a2 + 16) = 1;
  }

  else
  {
    v16 = *a2;
    v15 = *(a2 + 8);
    v17 = *(a2 + 16);

    result = outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage?(v16, v15, v17);
    *a2 = v9;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t closure #1 in closure #1 in static _FileNamedTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(void *a1, uint64_t (*a2)(char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v21 - v13;
  outlined init with copy of Transferable(a1, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, AssociatedTypeWitness);
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    v17 = a2(v14);
    (*(v11 + 8))(v14, AssociatedTypeWitness);
    return v17;
  }

  else
  {
    v16(v10, 1, 1, AssociatedTypeWitness);
    (*(v6 + 8))(v10, v5);
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v22 = 0x6465746365707845;
    v23 = 0xE900000000000020;
    v19 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v19);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v20 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v20);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _FileNamedTransferRepresentation<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for _FileNamedTransferRepresentation(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = type metadata accessor for _FileNamedTransferRepresentation.Storage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _FileNamedTransferRepresentation(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for _FileNamedTransferRepresentation(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 16) = 0;
          *v18 = a2 - 255;
          *(v18 + 8) = 0;
        }

        else
        {
          *(v18 + 16) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t type metadata instantiation function for _FileNamedTransferRepresentation.Storage()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _FileNamedTransferRepresentation.Storage(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for _FileNamedTransferRepresentation.Storage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for closure #1 in closure #1 in static _FileNamedTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return closure #1 in closure #1 in static _FileNamedTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, *(v1 + 32));
}

uint64_t outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(result, a2, a3 & 1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t CodableRepresentation.init<>(for:contentType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24 = a2;
  v25 = a3;
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  v15 = type metadata accessor for JSONEncoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v27 = JSONEncoder.init()();
  v18 = type metadata accessor for JSONDecoder();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v26 = JSONDecoder.init()();
  v21 = lazy protocol witness table accessor for type JSONEncoder and conformance JSONEncoder(&lazy protocol witness table cache variable for type JSONEncoder and conformance JSONEncoder, MEMORY[0x277CC87B8]);
  v22 = lazy protocol witness table accessor for type JSONEncoder and conformance JSONEncoder(&lazy protocol witness table cache variable for type JSONDecoder and conformance JSONDecoder, MEMORY[0x277CC8710]);
  CodableRepresentation.init(for:contentType:encoder:decoder:)(v14, &v27, &v26, v24, v15, v18, v25, a6, a4, a5, v21, v22);
  return (*(v11 + 8))(a1, v10);
}

uint64_t CodableRepresentation.init(for:contentType:encoder:decoder:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = type metadata accessor for UTType();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = *(a5 - 8);
  v18 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v19 = *(v17 + 64);
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  *(v20 + 4) = a6;
  *(v20 + 5) = a7;
  *(v20 + 6) = a9;
  *(v20 + 7) = a10;
  *(v20 + 8) = a11;
  *(v20 + 9) = a12;
  (*(v17 + 32))(&v20[v18], a2);
  v34 = a5;
  v21 = type metadata accessor for CodableRepresentation();
  v22 = (a8 + *(v21 + 84));
  *v22 = partial apply for closure #1 in CodableRepresentation.init(for:contentType:encoder:decoder:);
  v22[1] = v20;
  v23 = *(a6 - 8);
  v24 = (*(v23 + 80) + 80) & ~*(v23 + 80);
  v25 = *(v23 + 64);
  v26 = swift_allocObject();
  *(v26 + 2) = a4;
  *(v26 + 3) = v34;
  *(v26 + 4) = a6;
  *(v26 + 5) = a7;
  *(v26 + 6) = a9;
  *(v26 + 7) = a10;
  *(v26 + 8) = a11;
  *(v26 + 9) = a12;
  result = (*(v23 + 32))(&v26[v24], a3, a6);
  v28 = (a8 + *(v21 + 88));
  *v28 = partial apply for closure #2 in CodableRepresentation.init(for:contentType:encoder:decoder:);
  v28[1] = v26;
  return result;
}

uint64_t lazy protocol witness table accessor for type JSONEncoder and conformance JSONEncoder(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in CodableRepresentation.init(for:contentType:encoder:decoder:)()
{
  v2 = v0[2];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0 + ((*(*(v0[3] - 8) + 80) + 80) & ~*(*(v0[3] - 8) + 80));
  result = dispatch thunk of TopLevelEncoder.encode<A>(_:)();
  if (!v1)
  {
    return v7;
  }

  return result;
}

uint64_t partial apply for closure #2 in CodableRepresentation.init(for:contentType:encoder:decoder:)()
{
  v1 = v0[2];
  v2 = v0[6];
  v3 = v0[9];
  v4 = *(*(v0[4] - 8) + 80);
  return dispatch thunk of TopLevelDecoder.decode<A>(_:from:)();
}

uint64_t static CodableRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v55 = a2;
  v56 = a6;
  v49 = a3;
  v54 = a8;
  v17 = type metadata accessor for UTType();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v53 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 16);
  v51 = a1;
  v21();
  v57 = a2;
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v61 = a6;
  v62 = a7;
  v63 = a9;
  v64 = a10;
  v50 = type metadata accessor for CodableRepresentation();
  v22 = (a1 + *(v50 + 84));
  v23 = v22[1];
  v46 = *v22;
  v52 = v23;
  v24 = swift_allocObject();
  v25 = v55;
  v26 = v49;
  v24[2] = v55;
  v24[3] = v26;
  v24[4] = a4;
  v24[5] = a5;
  v27 = a5;
  v47 = a5;
  v48 = a10;
  v28 = v56;
  v24[6] = v56;
  v24[7] = a7;
  v24[8] = a9;
  v24[9] = a10;
  v24[10] = v46;
  v24[11] = v23;
  v29 = swift_allocObject();
  v29[2] = v25;
  v29[3] = v26;
  v29[4] = a4;
  v29[5] = v27;
  v44 = a7;
  v45 = a4;
  v29[6] = v28;
  v29[7] = a7;
  v29[8] = a9;
  v29[9] = a10;
  v29[10] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@owned Data, @error @owned Error);
  v29[11] = v24;
  v30 = (v51 + *(v50 + 88));
  v31 = v30[1];
  v51 = *v30;
  v32 = swift_allocObject();
  v34 = v55;
  v33 = v56;
  v32[2] = v55;
  v32[3] = v26;
  v35 = v26;
  v32[4] = a4;
  v36 = v47;
  v37 = v48;
  v32[5] = v47;
  v32[6] = v33;
  v32[7] = a7;
  v32[8] = a9;
  v38 = v51;
  v32[9] = v37;
  v32[10] = v38;
  v32[11] = v31;
  v39 = swift_allocObject();
  v39[2] = v34;
  v39[3] = v35;
  v40 = v44;
  v39[4] = v45;
  v39[5] = v36;
  v39[6] = v33;
  v39[7] = v40;
  v39[8] = a9;
  v39[9] = v37;
  v39[10] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data) -> (@out A, @error @owned Error);
  v39[11] = v32;

  *&v43 = MEMORY[0x277CC9318];
  *(&v43 + 1) = v36;
  *&v42 = v34;
  *(&v42 + 1) = MEMORY[0x277CC9318];
  return _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(v53, 0, 0, 2, &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error), v29, &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed Data) -> (@out A, @error @owned Error), v39, v54, v42, v43, &protocol witness table for Data, &protocol witness table for Data);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@owned Data, @error @owned Error)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = *(v2 + 8);

  return v4(v3);
}

void partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@owned Data, @error @owned Error)()
{
  v2 = *(v0 + 24);
  v12 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v10 = *(v0 + 56);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@owned Data, @error @owned Error);

  JUMPOUT(0x20E3DF9E0);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@owned Data, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error);

  return v8(a2);
}

{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error);

  return v8(a2);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

void partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error)()
{
  v2 = *(v0 + 24);
  v11 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v10 = *(v0 + 48);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  JUMPOUT(0x20E3DFCB0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data) -> (@out A, @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a2, a3);
  v5 = *(v4 + 8);

  return v5();
}

void partial apply for thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data) -> (@out A, @error @owned Error)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  JUMPOUT(0x20E3DFFD0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed Data) -> (@out A, @error @owned Error)(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = Transferable.file(contentType:fileHandler:);

  return v10(a1, v5, v6);
}

{
  v5 = *a2;
  v6 = a2[1];
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = Transferable.file(contentType:fileHandler:);

  return v10(a1, v5, v6);
}

void partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed Data) -> (@out A, @error @owned Error)()
{
  v2 = *(v0 + 24);
  v11 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v10 = *(v0 + 48);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = Transferable.file(contentType:fileHandler:);

  JUMPOUT(0x20E3E017CLL);
}

uint64_t instantiation function for generic protocol witness table for CodableRepresentation<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t type metadata completion function for CodableRepresentation()
{
  result = type metadata accessor for UTType();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

CoreTransferable::_TransferRepresentationOutputs static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v43 = a4;
  v42 = a2;
  v44 = a6;
  v9 = type metadata accessor for ResolvedTransferRepresentation();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  v39 = *(v41 - 8);
  v12 = *(v39 + 64);
  v13 = MEMORY[0x28223BE20](v41);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v39 - v20;
  v40 = type metadata accessor for _TransferRepresentationValue();
  v22 = *(v40 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v40);
  v25 = &v39 - v24;
  v26 = a1[1];
  v56 = *a1;
  v57 = v26;
  v58 = a1[2];
  (*(a5 + 24))(a3, a5);
  _TransferRepresentationValue.init(_:)(v21, AssociatedTypeWitness, v25);
  _TransferRepresentationInputs.init()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v55, v25);
  (*(v22 + 8))(v25, v40);
  v48 = v42;
  v49 = a3;
  v50 = v43;
  v51 = a5;
  v52 = (v57 | v56) != 0;
  v53 = v58 != 0;
  v54 = &v56;
  v28 = _TransferRepresentationOutputs.map<A>(_:)(partial apply for closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:), v47, v41);

  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = *(v39 + 80);
    v43 = v28;
    v31 = v28 + ((v30 + 32) & ~v30);
    v32 = *(v39 + 72);
    v33 = (v45 + 48);
    v34 = MEMORY[0x277D84F90];
    v35 = v9;
    do
    {
      outlined init with copy of ResolvedTransferRepresentation?(v31, v17);
      outlined init with take of ResolvedTransferRepresentation?(v17, v15);
      if ((*v33)(v15, 1, v9) == 1)
      {
        outlined destroy of ResolvedTransferRepresentation?(v15);
      }

      else
      {
        outlined init with take of ResolvedTransferRepresentation(v15, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
        }

        v37 = v34[2];
        v36 = v34[3];
        if (v37 >= v36 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v34);
        }

        v34[2] = v37 + 1;
        outlined init with take of ResolvedTransferRepresentation(v46, v34 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v37);
        v9 = v35;
      }

      v31 += v32;
      --v29;
    }

    while (v29);
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  return _TransferRepresentationOutputs.init(_:)(v34);
}

uint64_t closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t (**a4)(uint64_t a1)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t (*a8)(uint64_t a1)@<X7>, uint64_t a9@<X8>)
{
  v69 = a5;
  v70 = a6;
  v71 = a4;
  v68 = a9;
  v14 = type metadata accessor for ResolvedTransferRepresentation();
  v67 = *(v14 - 1);
  v15 = *(v67 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ResolvedTransferRepresentation(a1, v17);
  if (a2)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = &v17[v14[8]];
    v19 = v18[1];
    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v18);
    *v18 = 0;
    v18[1] = 0;
    if (a3)
    {
LABEL_3:
      if ((a2 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  v20 = &v17[v14[9]];
  v21 = v20[1];
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v20);
  *v20 = 0;
  v20[1] = 0;
  if ((a2 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v22 = v71[2];
  v23 = v71[3];
  if (v22)
  {
    v24 = swift_allocObject();
    v25 = v70;
    *(v24 + 2) = v69;
    *(v24 + 3) = v25;
    *(v24 + 4) = a7;
    *(v24 + 5) = a8;
    *(v24 + 6) = v22;
    *(v24 + 7) = v23;
    v65 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B, @error @owned Error);
  }

  else
  {
    if (!*v71)
    {
      goto LABEL_13;
    }

    v65 = *v71;
    v24 = v71[1];
  }

  v26 = (a1 + v14[8]);
  v27 = *v26;
  if (!*v26)
  {
    outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v22);

    if ((a3 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v64 = a1;
  v28 = v26[1];
  v29 = swift_allocObject();
  v66 = a7;
  v30 = v29;
  v31 = v70;
  v29[2] = v69;
  v29[3] = v31;
  v32 = v65;
  v29[4] = v66;
  v29[5] = a8;
  v29[6] = v32;
  v29[7] = v24;
  v29[8] = v27;
  v29[9] = v28;
  v33 = &v17[v14[8]];
  v65 = a8;
  v34 = *v33;
  v35 = v33[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v22);
  a1 = v64;
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v27);
  a8 = v65;
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v34);
  *v33 = &async function pointer to partial apply for closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  v33[1] = v30;
  a7 = v66;
LABEL_13:
  if ((a3 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v36 = v71[4];
  if (v36)
  {
    v37 = (a1 + v14[9]);
    v38 = *v37;
    if (*v37)
    {
      v39 = v71[5];
      v64 = v37[1];
      v40 = v64;
      v41 = swift_allocObject();
      v42 = v70;
      v41[2] = v69;
      v41[3] = v42;
      v41[4] = a7;
      v41[5] = a8;
      v41[6] = v38;
      v41[7] = v40;
      v41[8] = v36;
      v41[9] = v39;
      v43 = v14[9];
      v65 = a8;
      v66 = a7;
      v44 = &v17[v43];
      v45 = *&v17[v43];
      v46 = *&v17[v43 + 8];
      outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v36);
      outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v38);
      v47 = v45;
      a8 = v65;
      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v47);
      *v44 = &async function pointer to partial apply for closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
      *(v44 + 1) = v41;
      a7 = v66;
    }
  }

LABEL_18:
  v48 = (a1 + v14[10]);
  v49 = *v48;
  if (*v48)
  {
    v50 = v48[1];
    v51 = swift_allocObject();
    v52 = v69;
    v53 = v70;
    *(v51 + 16) = v69;
    *(v51 + 24) = v53;
    *(v51 + 32) = a7;
    *(v51 + 40) = a8;
    v54 = v71;
    v55 = *(v71 + 1);
    *(v51 + 48) = *v71;
    *(v51 + 64) = v55;
    *(v51 + 80) = *(v54 + 2);
    *(v51 + 96) = v49;
    *(v51 + 104) = v50;
    v56 = a8;
    v57 = &v17[v14[10]];
    v66 = v17;
    v58 = v14;
    v59 = *v57;
    v65 = v57[1];
    outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v49);
    v72[0] = v52;
    v72[1] = v53;
    v72[2] = a7;
    v72[3] = v56;
    v60 = type metadata accessor for ProxyRepresentation();
    (*(*(v60 - 8) + 16))(v72, v71, v60);
    v61 = v59;
    v14 = v58;
    v17 = v66;
    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v61);
    *v57 = partial apply for closure #3 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
    v57[1] = v51;
  }

  v62 = v68;
  outlined init with copy of ResolvedTransferRepresentation(v17, v68);
  (*(v67 + 56))(v62, 0, 1, v14);
  return outlined destroy of ResolvedTransferRepresentation(v17);
}

uint64_t outlined init with copy of ResolvedTransferRepresentation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ResolvedTransferRepresentation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ResolvedTransferRepresentation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v19;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  v8[13] = a2;
  v8[14] = a3;
  v8[12] = a1;
  v10 = *(a8 - 8);
  v8[21] = v10;
  v11 = *(v10 + 64) + 15;
  v8[22] = swift_task_alloc();
  v12 = type metadata accessor for Optional();
  v8[23] = v12;
  v13 = *(v12 - 8);
  v8[24] = v13;
  v14 = *(v13 + 64) + 15;
  v8[25] = swift_task_alloc();
  v15 = *(a7 - 8);
  v8[26] = v15;
  v16 = *(v15 + 64) + 15;
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:), 0, 0);
}

uint64_t closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)()
{
  v1 = v0[25];
  v2 = v0[18];
  outlined init with copy of Transferable(v0[13], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v4 = v0[26];
    v3 = v0[27];
    v5 = v0[25];
    v6 = v0[18];
    v7 = v0[14];
    (*(v4 + 56))(v5, 0, 1, v6);
    (*(v4 + 32))(v3, v5, v6);
    v22 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[28] = v9;
    *v9 = v0;
    v9[1] = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
    v10 = v0[27];
    v11 = v0[22];
    v12 = v0[15];

    return v22(v11, v10);
  }

  else
  {
    v15 = v0[25];
    v14 = v0[26];
    v16 = v0[23];
    v17 = v0[24];
    v18 = v0[18];
    v19 = v0[13];
    (*(v14 + 56))(v15, 1, 1, v18);
    (*(v17 + 8))(v15, v16);
    _StringGuts.grow(_:)(33);

    v20 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v20);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    swift_getDynamicType();
    v21 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v21);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  else
  {
    v3 = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 128);
  v10 = *(v0 + 152);
  *(v0 + 80) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(v2 + 16))(boxed_opaque_existential_1, v1, v10);
  v11 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v0 + 240) = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  v7 = *(v0 + 136);
  v8 = *(v0 + 96);

  return v11(v8, v0 + 56);
}

{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v6 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v4 = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[18];
  (*(v0[21] + 8))(v0[22], v0[19]);
  (*(v2 + 8))(v1, v4);

  v5 = v0[1];

  return v5();
}

{
  (*(v0[26] + 8))(v0[27], v0[18]);
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[22];

  v5 = v0[1];

  return v5();
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  (*(v0[21] + 8))(v0[22], v0[19]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v4 = v0[31];
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[22];

  v8 = v0[1];

  return v8();
}

uint64_t closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v22;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a1;
  v8[13] = a5;
  v12 = type metadata accessor for Optional();
  v8[18] = v12;
  v13 = *(v12 - 8);
  v8[19] = v13;
  v14 = *(v13 + 64) + 15;
  v8[20] = swift_task_alloc();
  v15 = *(a8 - 8);
  v8[21] = v15;
  v16 = *(v15 + 64) + 15;
  v8[22] = swift_task_alloc();
  v20 = (a3 + *a3);
  v17 = a3[1];
  v18 = swift_task_alloc();
  v8[23] = v18;
  *v18 = v8;
  v18[1] = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);

  return (v20)(v8 + 2, a2);
}

uint64_t closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  else
  {
    v3 = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[20];
  v2 = v0[16];
  outlined init with copy of Transferable((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v3 = swift_dynamicCast();
  v4 = v0[16];
  if (v3)
  {
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = v0[17];
    v9 = v0[15];
    v11 = v0[12];
    v10 = v0[13];
    (*(v6 + 56))(v7, 0, 1, v0[16]);
    (*(v6 + 32))(v5, v7, v4);
    v11[3] = v9;
    v11[4] = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    v23 = (v10 + *v10);
    v13 = v10[1];
    v14 = swift_task_alloc();
    v0[25] = v14;
    *v14 = v0;
    v14[1] = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
    v15 = v0[22];
    v16 = v0[14];

    return v23(boxed_opaque_existential_1, v15);
  }

  else
  {
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[19];
    (*(v0[21] + 56))(v18, 1, 1, v0[16]);
    (*(v20 + 8))(v18, v19);
    _StringGuts.grow(_:)(33);

    v21 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v21);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    swift_getDynamicType();
    v22 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v22);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  else
  {
    v3 = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[20];
  (*(v0[21] + 8))(v0[22], v0[16]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[12];
  (*(v0[21] + 8))(v0[22], v0[16]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t closure #3 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v17[2];
  if (v25)
  {
    v37 = v22;
    v38 = v21;
    v41 = v19;
    v39 = v18;
    v26 = v17[3];
    outlined init with copy of Transferable(v16, v40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
    swift_dynamicCast();
    v27 = v26;
    v25(v13);
    if (v6)
    {
      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v25);
      (*(v9 + 8))(v13, a5);
    }

    else
    {
      (*(v9 + 8))(v13, a5);
      v40[3] = a6;
      v40[4] = v38;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
      v35 = v37;
      (*(v37 + 16))(boxed_opaque_existential_1, v24, a6);
      v27 = (v39)(v40);
      (*(v35 + 8))(v24, a6);
      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v25);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
    }
  }

  else
  {
    v28 = *v17;
    if (*v17)
    {
      v29 = v17[1];
      v30 = v16;
      v31 = v20;
      v32 = v18;
      v41 = v19;
      v33 = v21;
      v38 = type metadata accessor for MainActor();
      v39 = &v37;
      MEMORY[0x28223BE20](v38);
      *(&v37 - 10) = a5;
      *(&v37 - 9) = a6;
      *(&v37 - 8) = v31;
      *(&v37 - 7) = v33;
      *(&v37 - 6) = v28;
      *(&v37 - 5) = v29;
      *(&v37 - 4) = v30;
      *(&v37 - 3) = v32;
      *(&v37 - 2) = v41;

      v27 = specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #1 in closure #3 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:), (&v37 - 12), "CoreTransferable/ProxyRepresentation.swift");
      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v28);
    }

    else
    {
      v27 = 1;
    }
  }

  return v27 & 1;
}

uint64_t closure #1 in closure #3 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v40 = a8;
  v34 = a5;
  v35 = a4;
  v38 = a1;
  v39 = a2;
  v36 = a9;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v43 = a10;
  MEMORY[0x28223BE20](a1);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Optional();
  v31 = *(v33 - 8);
  v17 = *(v31 + 64);
  v18 = MEMORY[0x28223BE20](v33);
  v20 = &v31 - v19;
  v37 = *(a7 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x28223BE20](v18);
  v32 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  outlined init with copy of Transferable(a3, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  swift_dynamicCast();
  v23 = v41;
  v24 = v43;
  static LegacyExporterCaller.callSynchronously<A, B>(_:item:)(v38, v39, v16, a6, a7, v40, v43, v20);
  (*(v13 + 8))(v16, a6);
  if (v23)
  {
  }

  v26 = v37;
  if ((*(v37 + 48))(v20, 1, a7) == 1)
  {
    (*(v31 + 8))(v20, v33);

    v27 = 1;
  }

  else
  {
    v28 = v32;
    (*(v26 + 32))(v32, v20, a7);
    v42[3] = a7;
    v42[4] = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
    (*(v26 + 16))(boxed_opaque_existential_1, v28, a7);
    v30 = v35(v42);
    (*(v26 + 8))(v28, a7);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);

    v27 = v30 & 1;
  }

  *v36 = v27;
  return result;
}

uint64_t specialized static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, char a3)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)(v12);
    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a3 & 1;
      }

      __break(1u);
    }

    a3 = v12[0];
    v9 = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      return a3 & 1;
    }

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  MEMORY[0x20F32D540](0xD00000000000003FLL, 0x800000020E3FF3B0);
  v11 = _typeName(_:qualified:)();
  MEMORY[0x20F32D540](v11);

  MEMORY[0x20F32D540](46, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *ProxyRepresentation.init(importing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0u;
  *(a7 + 16) = 0u;
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  result[6] = a1;
  result[7] = a2;
  *(a7 + 32) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed B) -> (@out A, @error @owned Error);
  *(a7 + 40) = result;
  return result;
}

double ProxyRepresentation.init(importing:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

uint64_t ProxyRepresentation.init(exporting:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = result;
  a3[3] = a2;
  a3[4] = 0;
  a3[5] = 0;
  return result;
}

double ProxyRepresentation.init(exporting:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  return result;
}

void *ProxyRepresentation.init(exporting:importing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = 0;
  a9[1] = 0;
  a9[2] = a1;
  a9[3] = a2;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a7;
  result[5] = a8;
  result[6] = a3;
  result[7] = a4;
  a9[4] = &thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed B) -> (@out A, @error @owned Error)partial apply;
  a9[5] = result;
  return result;
}

uint64_t ProxyRepresentation.init(exporting:importing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[4] = a3;
  a5[5] = a4;
  a5[2] = 0;
  a5[3] = 0;
  return result;
}

{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = result;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMd, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMR);
  v10 = *(type metadata accessor for ResolvedTransferRepresentation() - 8);
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
  v15 = *(type metadata accessor for ResolvedTransferRepresentation() - 8);
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed B) -> (@out A, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B, @error @owned Error)(a1, a2, v11);
}

uint64_t instantiation function for generic protocol witness table for ProxyRepresentation<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata instantiation function for ProxyRepresentation()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ProxyRepresentation(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for ProxyRepresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t outlined destroy of ResolvedTransferRepresentation(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedTransferRepresentation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #3 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return closure #3 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, (v1 + 6), v1[12], v1[13], v1[2], v1[3]) & 1;
}

uint64_t partial apply for closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[6];
  v10 = v2[7];
  v12 = v2[8];
  v11 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = Transferable.file(contentType:fileHandler:);

  return closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, a2, v9, v10, v12, v11, v6, v7);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t partial apply for closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[5];
  v8 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, a2, v8, v10, v11, v12, v6, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B, @error @owned Error)(a1, a2, v11);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x20F32E080);
  }

  return result;
}

void *partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t static DataTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v34 = a4;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DataTransferRepresentation();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - v14;
  v32 = v16;
  (*(v16 + 16))(v30 - v14, a1, v12);
  v17 = *(v8 + 16);
  v33 = v11;
  v17(v11, v15, v7);
  v18 = &v15[*(v12 + 36)];
  v20 = *v18;
  v19 = v18[1];
  if (*v18)
  {
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a3;
    v21[4] = v20;
    v21[5] = v19;
    v31 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error);
  }

  else
  {
    v31 = 0;
    v21 = 0;
  }

  v30[1] = v19;
  v22 = &v15[*(v12 + 40)];
  v24 = *v22;
  v23 = v22[1];
  if (*v22)
  {
    v25 = swift_allocObject();
    v25[2] = a2;
    v25[3] = a3;
    v25[4] = v24;
    v25[5] = v23;
    v26 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed Data) -> (@out A, @error @owned Error);
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v20);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v24);
  *&v29 = MEMORY[0x277CC9318];
  *(&v29 + 1) = a3;
  *&v28 = a2;
  *(&v28 + 1) = MEMORY[0x277CC9318];
  _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporter:importer:)(v33, 0, 0, 2, v31, v21, v26, v25, v34, v28, v29, &protocol witness table for Data, &protocol witness table for Data);
  return (*(v32 + 8))(v15, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed Data) -> (@out A, @error @owned Error)(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = Transferable.file(contentType:fileHandler:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed Data) -> (@out A, @error @owned Error)(a1, a2, v9);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error)(a1, a2, v9);
}

uint64_t DataTransferRepresentation.init(contentType:exporter:importer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UTType();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for DataTransferRepresentation();
  v14 = (a6 + *(result + 36));
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + *(result + 40));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t DataTransferRepresentation.init(exportedContentType:exporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;

  return DataTransferRepresentation.init(contentType:exporter:importer:)(a1, a2, a3, &async function pointer to partial apply for closure #1 in DataTransferRepresentation.init(exportedContentType:exporter:), v12, a6);
}

uint64_t closure #1 in DataTransferRepresentation.init(exportedContentType:exporter:)()
{
  return MEMORY[0x2822009F8](closure #1 in DataTransferRepresentation.init(exportedContentType:exporter:), 0, 0);
}

{
  lazy protocol witness table accessor for type TransferableSupportError and conformance TransferableSupportError();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in DataTransferRepresentation.init(exportedContentType:exporter:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in DataTransferRepresentation.init(exportedContentType:exporter:)();
}

uint64_t DataTransferRepresentation.init(importedContentType:importer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;

  return DataTransferRepresentation.init(contentType:exporter:importer:)(a1, &async function pointer to partial apply for closure #1 in DataTransferRepresentation.init(importedContentType:importer:), v12, a2, a3, a6);
}

uint64_t closure #1 in DataTransferRepresentation.init(importedContentType:importer:)()
{
  return MEMORY[0x2822009F8](closure #1 in DataTransferRepresentation.init(importedContentType:importer:), 0, 0);
}

{
  lazy protocol witness table accessor for type TransferableSupportError and conformance TransferableSupportError();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in DataTransferRepresentation.init(importedContentType:importer:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@owned Data, @error @owned Error);

  return closure #1 in DataTransferRepresentation.init(importedContentType:importer:)();
}

uint64_t instantiation function for generic protocol witness table for DataTransferRepresentation<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for DataTransferRepresentation()
{
  type metadata accessor for UTType();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (())?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for (())?()
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (())?);
    }
  }
}

uint64_t static DataRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v34 = a4;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DataRepresentation();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - v14;
  v32 = v16;
  (*(v16 + 16))(v30 - v14, a1, v12);
  v17 = *(v8 + 16);
  v33 = v11;
  v17(v11, v15, v7);
  v18 = &v15[*(v12 + 36)];
  v20 = *v18;
  v19 = v18[1];
  if (*v18)
  {
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a3;
    v21[4] = v20;
    v21[5] = v19;
    v31 = &_sx10Foundation4DataVs5Error_pIeghHnozo_xACsAD_pIeghHnrzo_16CoreTransferable0E0RzlTRTATu_0;
  }

  else
  {
    v31 = 0;
    v21 = 0;
  }

  v30[1] = v19;
  v22 = &v15[*(v12 + 40)];
  v24 = *v22;
  v23 = v22[1];
  if (*v22)
  {
    v25 = swift_allocObject();
    v25[2] = a2;
    v25[3] = a3;
    v25[4] = v24;
    v25[5] = v23;
    v26 = &_s10Foundation4DataVxs5Error_pIeghHgrzo_ACxsAD_pIeghHnrzo_16CoreTransferable0E0RzlTRTATu_0;
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v20);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v24);
  *&v29 = MEMORY[0x277CC9318];
  *(&v29 + 1) = a3;
  *&v28 = a2;
  *(&v28 + 1) = MEMORY[0x277CC9318];
  _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporter:importer:)(v33, 0, 0, 2, v31, v21, v26, v25, v34, v28, v29, &protocol witness table for Data, &protocol witness table for Data);
  return (*(v32 + 8))(v15, v12);
}

uint64_t DataRepresentation.init(_:exporting:importing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UTType();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for DataRepresentation();
  v14 = (a6 + *(result + 36));
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + *(result + 40));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t instantiation function for generic protocol witness table for DataRepresentation<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t SentTransferredFile.init(_:allowAccessingOriginalFile:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SentTransferredFile(0);
  *(a3 + *(result + 20)) = a2;
  *(a3 + *(result + 24)) = 0;
  return result;
}

uint64_t SentTransferredFile.init(_:isTemporary:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SentTransferredFile(0);
  *(a3 + *(result + 20)) = 0;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t SentTransferredFile.file.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for SentTransferredFile(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReceivedTransferredFile.init(file:isOriginalFile:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ReceivedTransferredFile(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t static FileRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v35 = a3;
  v36 = a2;
  v37 = a4;
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FileRepresentation();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  (*(v11 + 16))(&v32 - v13, a1, v10);
  (*(v6 + 16))(v9, v14, v5);
  v15 = v10[10];
  v16 = &v14[v10[9]];
  v17 = *v16;
  v18 = v16[1];
  v19 = v10[12];
  v20 = &v14[v10[11]];
  v21 = *v20;
  v22 = v20[1];
  if (*v20)
  {
    v23 = v20[1];
  }

  else
  {
    v23 = 0;
  }

  v33 = v23;
  v34 = v17;
  v24 = *&v14[v19];
  v25 = *&v14[v19 + 8];
  if (v24)
  {
    v26 = *&v14[v19 + 8];
  }

  else
  {
    v26 = 0;
  }

  v32 = v26;
  v27 = v14[v15];

  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v21);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v24);
  v28 = type metadata accessor for SentTransferredFile(0);
  *&v31 = type metadata accessor for ReceivedTransferredFile(0);
  *(&v31 + 1) = v35;
  *(&v30 + 1) = v28;
  *&v30 = v36;
  _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(v9, v34, v18, v27, v21, v33, v24, v32, v37, v30, v31, &protocol witness table for SentTransferredFile, &protocol witness table for ReceivedTransferredFile);
  return (*(v11 + 8))(v14, v10);
}

uint64_t FileRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporting:importing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for FileRepresentation();
  v15 = v14[10];
  v16 = type metadata accessor for UTType();
  result = (*(*(v16 - 8) + 32))(a7, a1, v16);
  *(a7 + v15) = a2;
  v18 = (a7 + v14[9]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a7 + v14[11]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a7 + v14[12]);
  *v20 = a5;
  v20[1] = a6;
  return result;
}

uint64_t FileRepresentation.init(exportedContentType:shouldAllowToOpenInPlace:exporting:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for FileRepresentation();
  v11 = v10[10];
  v12 = type metadata accessor for UTType();
  result = (*(*(v12 - 8) + 32))(a5, a1, v12);
  *(a5 + v11) = a2;
  v14 = (a5 + v10[9]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a5 + v10[11]);
  *v15 = a3;
  v15[1] = a4;
  v16 = (a5 + v10[12]);
  *v16 = 0;
  v16[1] = 0;
  return result;
}

uint64_t FileRepresentation.init(importedContentType:shouldAttemptToOpenInPlace:importing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for FileRepresentation();
  v11 = v10[10];
  v12 = type metadata accessor for UTType();
  result = (*(*(v12 - 8) + 32))(a5, a1, v12);
  *(a5 + v11) = a2;
  v14 = (a5 + v10[9]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a5 + v10[11]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a5 + v10[12]);
  *v16 = a3;
  v16[1] = a4;
  return result;
}

uint64_t instantiation function for generic protocol witness table for FileRepresentation<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for SentTransferredFile()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata completion function for ReceivedTransferredFile()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for FileRepresentation()
{
  type metadata accessor for UTType();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for (())?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t _TransferRepresentationValue.applying<A>(offset:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a3 + 16);
  v12 = a4;
  v13 = a1;
  return _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in _TransferRepresentationValue.applying<A>(offset:to:), &v10, v11, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], a8);
}

uint64_t partial apply for closure #1 in _TransferRepresentationValue.applying<A>(offset:to:)()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  return UnsafeRawBufferPointer.load<A>(fromByteOffset:as:)();
}

uint64_t _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

void *__TupleType.indices.getter(void *result)
{
  if (*result != 769)
  {
    return 0;
  }

  if ((result[1] & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t __TupleType.type(at:)(uint64_t result, void *a2)
{
  if (*a2 != 769 || a2[1] <= result)
  {
    return a2;
  }

  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if ((2 * result - 0x1000000000000000) >> 61 == 7)
  {
    return a2[2 * result + 3];
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall __TupleType.offset(at:)(Swift::Int at)
{
  if (*(v1 + 8) > at)
  {
    if (at + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else if ((2 * at - 0x1000000000000000) >> 61 == 7)
    {
      return *(v1 + 16 * at + 32);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t type metadata completion function for _TransferRepresentationValue(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for _TransferRepresentationValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *storeEnumTagSinglePayload for _TransferRepresentationValue(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for __TupleType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for __TupleType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t static FileTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v35 = a3;
  v36 = a2;
  v37 = a4;
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FileTransferRepresentation();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  (*(v11 + 16))(&v32 - v13, a1, v10);
  (*(v6 + 16))(v9, v14, v5);
  v15 = v10[10];
  v16 = &v14[v10[9]];
  v17 = *v16;
  v18 = v16[1];
  v19 = v10[12];
  v20 = &v14[v10[11]];
  v21 = *v20;
  v22 = v20[1];
  if (*v20)
  {
    v23 = v20[1];
  }

  else
  {
    v23 = 0;
  }

  v33 = v23;
  v34 = v17;
  v24 = *&v14[v19];
  v25 = *&v14[v19 + 8];
  if (v24)
  {
    v26 = *&v14[v19 + 8];
  }

  else
  {
    v26 = 0;
  }

  v32 = v26;
  v27 = v14[v15];

  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v21);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v24);
  v28 = type metadata accessor for SentTransferredFile(0);
  *&v31 = type metadata accessor for ReceivedTransferredFile(0);
  *(&v31 + 1) = v35;
  *(&v30 + 1) = v28;
  *&v30 = v36;
  _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporter:importer:)(v9, v34, v18, v27, v21, v33, v24, v32, v37, v30, v31, &protocol witness table for SentTransferredFile, &protocol witness table for ReceivedTransferredFile);
  return (*(v11 + 8))(v14, v10);
}

uint64_t FileTransferRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporter:importer:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for FileTransferRepresentation();
  v15 = v14[10];
  v16 = type metadata accessor for UTType();
  result = (*(*(v16 - 8) + 32))(a7, a1, v16);
  *(a7 + v15) = a2;
  v18 = (a7 + v14[9]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a7 + v14[11]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a7 + v14[12]);
  *v20 = a5;
  v20[1] = a6;
  return result;
}

uint64_t FileTransferRepresentation.init(exportedContentType:shouldAllowToOpenInPlace:exporter:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;

  return FileTransferRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporter:importer:)(a1, a2, a3, a4, &async function pointer to partial apply for closure #1 in FileTransferRepresentation.init(exportedContentType:shouldAllowToOpenInPlace:exporter:), v14, a7);
}

uint64_t partial apply for closure #1 in FileTransferRepresentation.init(exportedContentType:shouldAllowToOpenInPlace:exporter:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = Transferable.file(contentType:fileHandler:);

  return closure #1 in DataTransferRepresentation.init(exportedContentType:exporter:)();
}

uint64_t FileTransferRepresentation.init(importedContentType:shouldAttemptToOpenInPlace:importer:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;

  return FileTransferRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporter:importer:)(a1, a2, &async function pointer to partial apply for closure #1 in FileTransferRepresentation.init(importedContentType:shouldAttemptToOpenInPlace:importer:), v14, a3, a4, a7);
}

uint64_t partial apply for closure #1 in FileTransferRepresentation.init(importedContentType:shouldAttemptToOpenInPlace:importer:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in DataTransferRepresentation.init(importedContentType:importer:)();
}

uint64_t instantiation function for generic protocol witness table for FileTransferRepresentation<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t CodableTransferRepresentation.init<>(for:contentType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24 = a2;
  v25 = a3;
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  v15 = type metadata accessor for JSONEncoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v27 = JSONEncoder.init()();
  v18 = type metadata accessor for JSONDecoder();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v26 = JSONDecoder.init()();
  v21 = lazy protocol witness table accessor for type JSONEncoder and conformance JSONEncoder(&lazy protocol witness table cache variable for type JSONEncoder and conformance JSONEncoder, MEMORY[0x277CC87B8]);
  v22 = lazy protocol witness table accessor for type JSONEncoder and conformance JSONEncoder(&lazy protocol witness table cache variable for type JSONDecoder and conformance JSONDecoder, MEMORY[0x277CC8710]);
  CodableTransferRepresentation.init(for:contentType:encoder:decoder:)(v22, v14, &v27, &v26, v24, v15, v18, v25, a6, a4, a5, v21, v22);
  return (*(v11 + 8))(a1, v10);
}

uint64_t CodableTransferRepresentation.init(for:contentType:encoder:decoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v65 = a5;
  v66 = a4;
  v60 = a3;
  v56 = a13;
  v57 = a8;
  v64 = a12;
  v67 = *(a7 - 8);
  v18 = *(v67 + 64);
  v58 = a11;
  v62 = v18;
  v63 = a10;
  v19 = MEMORY[0x28223BE20](a1);
  v61 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v59 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UTType();
  v25 = *(*(v24 - 8) + 32);
  v54 = a9;
  v25(a9, a2, v24);
  v26 = v65;
  v68 = v65;
  v69 = a6;
  v70 = a7;
  v71 = a8;
  v27 = v63;
  v72 = v63;
  v73 = a11;
  v74 = a12;
  v75 = a13;
  v28 = type metadata accessor for CodableTransferRepresentation();
  v29 = *(v28 + 84);
  v30 = v28;
  v55 = v28;
  v31 = v60;
  (*(v22 + 16))(a9 + v29, v60, a6);
  (*(v67 + 16))(a9 + *(v30 + 88), v66, a7);
  v32 = *(v22 + 32);
  v33 = v59;
  v32(v59, v31, a6);
  v34 = (*(v22 + 80) + 80) & ~*(v22 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = v26;
  *(v35 + 3) = a6;
  v36 = a6;
  v53 = a6;
  v37 = v56;
  v38 = v57;
  *(v35 + 4) = a7;
  *(v35 + 5) = v38;
  *(v35 + 6) = v27;
  v39 = v58;
  v40 = v64;
  *(v35 + 7) = v58;
  *(v35 + 8) = v40;
  *(v35 + 9) = v37;
  v32(v35 + v34, v33, v36);
  v41 = v55;
  v42 = v54;
  v43 = (v54 + *(v55 + 92));
  *v43 = partial apply for closure #1 in CodableRepresentation.init(for:contentType:encoder:decoder:);
  v43[1] = v35;
  v45 = *(v67 + 32);
  v67 += 32;
  v44 = v67;
  v46 = v61;
  v45(v61, v66, a7);
  v47 = (*(v44 + 48) + 80) & ~*(v44 + 48);
  v48 = swift_allocObject();
  v49 = v53;
  *(v48 + 2) = v65;
  *(v48 + 3) = v49;
  *(v48 + 4) = a7;
  *(v48 + 5) = v38;
  v50 = v64;
  *(v48 + 6) = v63;
  *(v48 + 7) = v39;
  *(v48 + 8) = v50;
  *(v48 + 9) = v37;
  result = (v45)(v48 + v47, v46, a7);
  v52 = (v42 + *(v41 + 96));
  *v52 = partial apply for closure #2 in CodableRepresentation.init(for:contentType:encoder:decoder:);
  v52[1] = v48;
  return result;
}

uint64_t static CodableTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v55 = a2;
  v56 = a6;
  v49 = a3;
  v54 = a8;
  v17 = type metadata accessor for UTType();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v53 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 16);
  v51 = a1;
  v21();
  v57 = a2;
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v61 = a6;
  v62 = a7;
  v63 = a9;
  v64 = a10;
  v50 = type metadata accessor for CodableTransferRepresentation();
  v22 = (a1 + *(v50 + 92));
  v23 = v22[1];
  v46 = *v22;
  v52 = v23;
  v24 = swift_allocObject();
  v25 = v55;
  v26 = v49;
  v24[2] = v55;
  v24[3] = v26;
  v24[4] = a4;
  v24[5] = a5;
  v27 = a5;
  v47 = a5;
  v48 = a10;
  v28 = v56;
  v24[6] = v56;
  v24[7] = a7;
  v24[8] = a9;
  v24[9] = a10;
  v24[10] = v46;
  v24[11] = v23;
  v29 = swift_allocObject();
  v29[2] = v25;
  v29[3] = v26;
  v29[4] = a4;
  v29[5] = v27;
  v44 = a7;
  v45 = a4;
  v29[6] = v28;
  v29[7] = a7;
  v29[8] = a9;
  v29[9] = a10;
  v29[10] = &_sx10Foundation4DataVs5Error_pIeghnozo_xACsAD_pIeghHnozo_16CoreTransferable0E0RzSeRzSERz7Combine15TopLevelEncoderR_s8SendableR_AG0gH7DecoderR0_sAIR0_AC6OutputRt_AC5InputRt0_r1_lTRTATu_0;
  v29[11] = v24;
  v30 = (v51 + *(v50 + 96));
  v31 = v30[1];
  v51 = *v30;
  v32 = swift_allocObject();
  v34 = v55;
  v33 = v56;
  v32[2] = v55;
  v32[3] = v26;
  v35 = v26;
  v32[4] = a4;
  v36 = v47;
  v37 = v48;
  v32[5] = v47;
  v32[6] = v33;
  v32[7] = a7;
  v32[8] = a9;
  v38 = v51;
  v32[9] = v37;
  v32[10] = v38;
  v32[11] = v31;
  v39 = swift_allocObject();
  v39[2] = v34;
  v39[3] = v35;
  v40 = v44;
  v39[4] = v45;
  v39[5] = v36;
  v39[6] = v33;
  v39[7] = v40;
  v39[8] = a9;
  v39[9] = v37;
  v39[10] = &_s10Foundation4DataVxs5Error_pIeghgrzo_ACxsAD_pIeghHgrzo_16CoreTransferable0E0RzSeRzSERz7Combine15TopLevelEncoderR_s8SendableR_AG0gH7DecoderR0_sAIR0_AC6OutputRt_AC5InputRt0_r1_lTRTATu_0;
  v39[11] = v32;

  *&v43 = MEMORY[0x277CC9318];
  *(&v43 + 1) = v36;
  *&v42 = v34;
  *(&v42 + 1) = MEMORY[0x277CC9318];
  return _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporter:importer:)(v53, 0, 0, 2, &_sx10Foundation4DataVs5Error_pIeghHnozo_xACsAD_pIeghHnrzo_16CoreTransferable0E0RzSeRzSERz7Combine15TopLevelEncoderR_s8SendableR_AG0gH7DecoderR0_sAIR0_AC6OutputRt_AC5InputRt0_r1_lTRTATu_0, v29, &_s10Foundation4DataVxs5Error_pIeghHgrzo_ACxsAD_pIeghHnrzo_16CoreTransferable0E0RzSeRzSERz7Combine15TopLevelEncoderR_s8SendableR_AG0gH7DecoderR0_sAIR0_AC6OutputRt_AC5InputRt0_r1_lTRTATu_0, v39, v54, v42, v43, &protocol witness table for Data, &protocol witness table for Data);
}

uint64_t instantiation function for generic protocol witness table for CodableTransferRepresentation<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t type metadata completion function for CodableTransferRepresentation(uint64_t a1)
{
  result = type metadata accessor for UTType();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 32);
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        result = type metadata accessor for ()();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableTransferRepresentation(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = *(a3 + 32);
  v9 = *(*(a3 + 24) - 8);
  v10 = *(v7 + 84);
  v11 = v9;
  v12 = *(v9 + 84);
  if (v12 <= v10)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = *(v8 - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v14 + 80);
  if (v15 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(*(v6 - 8) + 64) + v16;
  v21 = *(*(v8 - 8) + 64) + 7;
  if (v19 >= a2)
  {
    goto LABEL_32;
  }

  v22 = ((((v21 + ((v17 + v18 + (v20 & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v23 = v22 & 0xFFFFFFF8;
  if ((v22 & 0xFFFFFFF8) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = a2 - v19 + 1;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v29 = v27 - 1;
    if (v23)
    {
      v29 = 0;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
    }

    return v19 + (v30 | v29) + 1;
  }

  if (v26)
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  if (v10 == v19)
  {
    v31 = *(v7 + 48);

    return v31(a1, v10, v6);
  }

  else
  {
    v32 = (a1 + v20) & ~v16;
    if (v12 == v19)
    {
      v33 = *(v11 + 48);

      return v33(v32);
    }

    else
    {
      v34 = (v32 + v17 + v18) & ~v18;
      if (v15 == v19)
      {
        v35 = *(v14 + 48);

        return v35(v34, v15, v8);
      }

      else
      {
        v36 = *((v21 + v34) & 0xFFFFFFFFFFFFFFF8);
        if (v36 >= 0xFFFFFFFF)
        {
          LODWORD(v36) = -1;
        }

        return (v36 + 1);
      }
    }
  }
}

void storeEnumTagSinglePayload for CodableTransferRepresentation(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(a4 + 32);
  v11 = *(*(a4 + 24) - 8);
  v12 = *(v9 + 84);
  v13 = v11;
  v14 = *(v11 + 84);
  if (v14 <= v12)
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = *(v11 + 84);
  }

  v16 = *(v10 - 8);
  v17 = *(v16 + 84);
  v18 = *(*(v8 - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(v11 + 64);
  v21 = *(v16 + 80);
  if (v17 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = *(v16 + 84);
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  v23 = v18 + v19;
  v24 = *(*(v10 - 8) + 64) + 7;
  v25 = ((((v24 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v22 >= a3)
  {
    v28 = 0;
    v29 = a2 - v22;
    if (a2 <= v22)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = a3 - v22 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = a2 - v22;
    if (a2 <= v22)
    {
LABEL_22:
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *(a1 + v25) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v25) = 0;
      }

      else if (v28)
      {
        *(a1 + v25) = 0;
        if (!a2)
        {
          return;
        }

LABEL_38:
        if (v12 == v22)
        {
          v32 = *(v9 + 56);

          v32(a1, a2, v12, v8);
        }

        else
        {
          v33 = (a1 + v23) & ~v19;
          if (v14 == v22)
          {
            v34 = *(v13 + 56);

            v34(v33, a2);
          }

          else
          {
            v35 = (v33 + v20 + v21) & ~v21;
            if (v17 == v22)
            {
              v36 = *(v16 + 56);

              v36(v35, a2, v17, v10);
            }

            else
            {
              v37 = ((v24 + v35) & 0xFFFFFFFFFFFFFFF8);
              if ((a2 & 0x80000000) != 0)
              {
                *v37 = a2 & 0x7FFFFFFF;
                v37[1] = 0;
              }

              else
              {
                *v37 = (a2 - 1);
              }
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }
  }

  if (v25)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  if (v25)
  {
    v31 = ~v22 + a2;
    bzero(a1, v25);
    *a1 = v31;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      *(a1 + v25) = v30;
    }

    else
    {
      *(a1 + v25) = v30;
    }
  }

  else if (v28)
  {
    *(a1 + v25) = v30;
  }
}

uint64_t _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v34 = a4;
  v32 = a2;
  v33 = a3;
  v35 = a9;
  v30 = a11;
  v31 = a10;
  v28 = a13;
  v29 = a12;
  v18 = type metadata accessor for UTType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMd, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMR);
  v23 = *(type metadata accessor for ResolvedTransferRepresentation() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20E3FD830;
  (*(v19 + 16))(v22, a1, v18);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(a5);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(a7);
  ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(v22, v32, v33, v34, a5, a6, a7, a8, v26 + v25, v31, *(&v31 + 1), v30, *(&v30 + 1), v29, v28);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(a7);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(a5);
  result = (*(v19 + 8))(a1, v18);
  *v35 = v26;
  return result;
}

uint64_t type metadata accessor for ResolvedTransferRepresentation()
{
  result = type metadata singleton initialization cache for ResolvedTransferRepresentation;
  if (!type metadata singleton initialization cache for ResolvedTransferRepresentation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = -1;
  v20 = type metadata accessor for ResolvedTransferRepresentation();
  v21 = (a9 + v20[10]);
  *v21 = 0;
  v21[1] = 0;
  v22 = v20[11];
  *(a9 + v22) = *TransferRepresentationVisibility.all.unsafeMutableAddressor();
  v23 = (a9 + v20[12]);
  *v23 = 0;
  v23[1] = 0;
  v24 = v20[5];
  v25 = type metadata accessor for UTType();
  (*(*(v25 - 8) + 32))(a9 + v24, a1, v25);
  if (a3)
  {
    outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage?(*a9, *(a9 + 8), *(a9 + 16));
    *a9 = a2;
    *(a9 + 8) = a3;
    *(a9 + 16) = 0;
  }

  v26 = (a9 + v20[8]);
  *(a9 + v20[6]) = a4;
  v27 = (a9 + v20[7]);
  *v27 = a11;
  v27[1] = a14;
  if (a5)
  {
    v28 = swift_allocObject();
    v28[2] = a10;
    v28[3] = a11;
    v28[4] = a12;
    v28[5] = a13;
    v28[6] = a14;
    v28[7] = a15;
    v28[8] = a5;
    v28[9] = a6;
    v29 = &async function pointer to partial apply for closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  *v26 = v29;
  v26[1] = v28;
  v30 = v20[9];
  if (a7)
  {
    result = swift_allocObject();
    result[2] = a10;
    result[3] = a11;
    result[4] = a12;
    result[5] = a13;
    result[6] = a14;
    result[7] = a15;
    result[8] = a7;
    result[9] = a8;
    v32 = &async function pointer to partial apply for closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
  }

  else
  {
    v32 = 0;
    result = 0;
  }

  v33 = (a9 + v30);
  *v33 = v32;
  v33[1] = result;
  return result;
}

Swift::Void __swiftcall _TransferRepresentationOutputs.append(_:)(CoreTransferable::_TransferRepresentationOutputs a1)
{
  v1 = *a1.storage._rawValue;

  specialized Array.append<A>(contentsOf:)(v2);
}

uint64_t _TransferRepresentationOutputs.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *v3;
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16CoreTransferable30ResolvedTransferRepresentationVGMd, &_sSay16CoreTransferable30ResolvedTransferRepresentationVGMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v7 = lazy protocol witness table accessor for type [ResolvedTransferRepresentation] and conformance [A]();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed ResolvedTransferRepresentation) -> (@out A, @error @owned Error), v10, v5, a3, v6, v7, MEMORY[0x277D84950], v11);

  return v8;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*ResolvedTransferRepresentation.SuggestedFileNameStorage.resolved(_:)(uint64_t a1))(uint64_t *)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 16))
  {
    outlined init with copy of Transferable?(a1, &v6);
    if (v7)
    {
      outlined init with take of Transferable(&v6, v8);
      v2 = v2(v8);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    else
    {
      outlined destroy of Transferable?(&v6);
      return 0;
    }
  }

  else
  {
    v4 = *(v1 + 8);
  }

  return v2;
}

uint64_t ResolvedTransferRepresentation.suggestedFileNameStorage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage?(v2, v3, v4);
}

uint64_t ResolvedTransferRepresentation.suggestedFileNameStorage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage?(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ResolvedTransferRepresentation.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvedTransferRepresentation() + 20);
  v4 = type metadata accessor for UTType();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResolvedTransferRepresentation.contentType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResolvedTransferRepresentation() + 20);
  v4 = type metadata accessor for UTType();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ResolvedTransferRepresentation.shouldAttemptToOpenInPlace.setter(char a1)
{
  result = type metadata accessor for ResolvedTransferRepresentation();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t ResolvedTransferRepresentation.representationType.getter()
{
  v1 = (v0 + *(type metadata accessor for ResolvedTransferRepresentation() + 28));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t ResolvedTransferRepresentation.representationType.setter(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for ResolvedTransferRepresentation();
  v6 = (v2 + *(result + 28));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t key path getter for ResolvedTransferRepresentation.exporting : ResolvedTransferRepresentation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ResolvedTransferRepresentation() + 32));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v4);
}

uint64_t key path setter for ResolvedTransferRepresentation.exporting : ResolvedTransferRepresentation(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for ResolvedTransferRepresentation() + 32));
  v6 = *v5;
  v7 = v5[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v2);
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v6);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t ResolvedTransferRepresentation.exporting.getter()
{
  v1 = (v0 + *(type metadata accessor for ResolvedTransferRepresentation() + 32));
  v2 = *v1;
  v3 = v1[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(*v1);
  return v2;
}

uint64_t ResolvedTransferRepresentation.exporting.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ResolvedTransferRepresentation() + 32));
  v6 = v5[1];
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t key path getter for ResolvedTransferRepresentation.importing : ResolvedTransferRepresentation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ResolvedTransferRepresentation() + 36));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v4);
}

uint64_t key path setter for ResolvedTransferRepresentation.importing : ResolvedTransferRepresentation(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for ResolvedTransferRepresentation() + 36));
  v6 = *v5;
  v7 = v5[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v2);
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v6);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t ResolvedTransferRepresentation.importing.getter()
{
  v1 = (v0 + *(type metadata accessor for ResolvedTransferRepresentation() + 36));
  v2 = *v1;
  v3 = v1[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(*v1);
  return v2;
}

uint64_t ResolvedTransferRepresentation.importing.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ResolvedTransferRepresentation() + 36));
  v6 = v5[1];
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t key path getter for ResolvedTransferRepresentation.exportingCondition : ResolvedTransferRepresentation@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ResolvedTransferRepresentation() + 40));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Transferable) -> (@unowned Bool, @error @owned Error);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v4);
}

uint64_t key path setter for ResolvedTransferRepresentation.exportingCondition : ResolvedTransferRepresentation(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Transferable) -> (@out Bool, @error @owned Error);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for ResolvedTransferRepresentation() + 40));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v3);
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ResolvedTransferRepresentation.exportingCondition.getter()
{
  v1 = (v0 + *(type metadata accessor for ResolvedTransferRepresentation() + 40));
  v2 = *v1;
  v3 = v1[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(*v1);
  return v2;
}

uint64_t ResolvedTransferRepresentation.exportingCondition.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ResolvedTransferRepresentation() + 40));
  v6 = v5[1];
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ResolvedTransferRepresentation.visibility.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ResolvedTransferRepresentation();
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t ResolvedTransferRepresentation.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for ResolvedTransferRepresentation();
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t ResolvedTransferRepresentation.suggestedFileName.getter()
{
  v1 = (v0 + *(type metadata accessor for ResolvedTransferRepresentation() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ResolvedTransferRepresentation.suggestedFileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ResolvedTransferRepresentation() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a6;
  v6[13] = v15;
  v6[10] = a4;
  v6[11] = a5;
  v6[8] = a2;
  v6[9] = a3;
  v6[7] = a1;
  v8 = type metadata accessor for Optional();
  v6[14] = v8;
  v9 = *(v8 - 8);
  v6[15] = v9;
  v10 = *(v9 + 64) + 15;
  v6[16] = swift_task_alloc();
  v11 = *(a5 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:), 0, 0);
}

uint64_t closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  outlined init with copy of Transferable(*(v0 + 64), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 128);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = *(v0 + 56);
    v23 = *(v0 + 96);
    (*(v4 + 56))(v5, 0, 1, v6);
    (*(v4 + 32))(v3, v5, v6);
    *(v8 + 24) = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    v24 = (v7 + *v7);
    v10 = v7[1];
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
    v12 = *(v0 + 144);
    v13 = *(v0 + 80);

    return v24(boxed_opaque_existential_1, v12);
  }

  else
  {
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 112);
    v18 = *(v0 + 120);
    v19 = *(v0 + 88);
    v20 = *(v0 + 64);
    (*(v15 + 56))(v16, 1, 1, v19);
    (*(v18 + 8))(v16, v17);
    _StringGuts.grow(_:)(33);

    v21 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v21);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    swift_getDynamicType();
    v22 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v22);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
  }

  else
  {
    v3 = closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[16];
  (*(v0[17] + 8))(v0[18], v0[11]);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[16];
  v2 = v0[7];
  (*(v0[17] + 8))(v0[18], v0[11]);
  __swift_deallocate_boxed_opaque_existential_1(v2);

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a4;
  v8[11] = a5;
  v8[8] = a2;
  v8[9] = a3;
  v8[7] = a1;
  v10 = type metadata accessor for Optional();
  v8[14] = v10;
  v11 = *(v10 - 8);
  v8[15] = v11;
  v12 = *(v11 + 64) + 15;
  v8[16] = swift_task_alloc();
  v13 = *(a7 - 8);
  v8[17] = v13;
  v14 = *(v13 + 64) + 15;
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:), 0, 0);
}

uint64_t closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)()
{
  v1 = v0[16];
  v2 = v0[12];
  outlined init with copy of Transferable(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  v3 = swift_dynamicCast();
  v4 = v0[12];
  if (v3)
  {
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[16];
    v8 = v0[13];
    v9 = v0[11];
    v10 = v0[9];
    v11 = v0[7];
    (*(v6 + 56))(v7, 0, 1, v0[12]);
    (*(v6 + 32))(v5, v7, v4);
    v11[3] = v9;
    v11[4] = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    v25 = (v10 + *v10);
    v13 = v10[1];
    v14 = swift_task_alloc();
    v0[19] = v14;
    *v14 = v0;
    v14[1] = closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
    v15 = v0[18];
    v16 = v0[10];

    return v25(boxed_opaque_existential_1, v15);
  }

  else
  {
    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[14];
    v21 = v0[15];
    v22 = v0[8];
    (*(v18 + 56))(v19, 1, 1, v4);
    (*(v21 + 8))(v19, v20);
    _StringGuts.grow(_:)(33);

    v23 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v23);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    swift_getDynamicType();
    v24 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v24);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
  }

  else
  {
    v3 = closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[16];
  (*(v0[17] + 8))(v0[18], v0[12]);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[16];
  v2 = v0[7];
  (*(v0[17] + 8))(v0[18], v0[12]);
  __swift_deallocate_boxed_opaque_existential_1(v2);

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t partial apply for closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[4];
  v8 = v2[5];
  v10 = v2[8];
  v9 = v2[9];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = Transferable.file(contentType:fileHandler:);

  return closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(a1, a2, v10, v9, v6, v11, v7, v8);
}

uint64_t partial apply for closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[6];
  v10 = v2[8];
  v9 = v2[9];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(a1, a2, v10, v9, v6, v7);
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed ResolvedTransferRepresentation) -> (@out A, @error @owned Error)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ResolvedTransferRepresentation] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ResolvedTransferRepresentation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ResolvedTransferRepresentation] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16CoreTransferable30ResolvedTransferRepresentationVGMd, &_sSay16CoreTransferable30ResolvedTransferRepresentationVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ResolvedTransferRepresentation] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with copy of Transferable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Transferable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Transferable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for _TransferRepresentationOutputs(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for _TransferRepresentationOutputs(uint64_t result, int a2, int a3)
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

void type metadata completion function for ResolvedTransferRepresentation()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for ResolvedTransferRepresentation.SuggestedFileNameStorage?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UTType();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for @thick TransferableCurrency.Type();
        if (v3 <= 0x3F)
        {
          type metadata accessor for (())?();
          if (v4 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for @thick TransferableCurrency.Type()
{
  result = lazy cache variable for type metadata for @thick TransferableCurrency.Type;
  if (!lazy cache variable for type metadata for @thick TransferableCurrency.Type)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for @thick TransferableCurrency.Type);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Transferable) -> (@out Bool, @error @owned Error)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2(&var1);
  if (!v1)
  {
    v4 = var1;
  }

  return v4 & 1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Transferable) -> (@unowned Bool, @error @owned Error)@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t one-time initialization function for transferableRunLoopMode()
{
  result = MEMORY[0x20F32D490](0xD000000000000017, 0x800000020E3FF5D0);
  static CFRunLoopMode.transferableRunLoopMode = result;
  return result;
}

uint64_t RunLoopSource.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*(v0 + 120));

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t closure #1 in closure #1 in variable initialization expression of performCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in variable initialization expression of performCallback, v6, v5);
}

uint64_t closure #1 in closure #1 in variable initialization expression of performCallback()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 120);
  *(v0 + 56) = v2;
  if (v2)
  {
    *(v0 + 64) = *(v1 + 128);

    v8 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = closure #1 in closure #1 in variable initialization expression of performCallback;

    return v8();
  }

  else
  {
    v6 = *(v0 + 32);

    **(v0 + 16) = *(v0 + 56) == 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v8 = *v0;

  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v4);
  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in variable initialization expression of performCallback, v6, v5);
}

{
  v1 = *(v0 + 32);

  **(v0 + 16) = *(v0 + 56) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t @objc closure #1 in variable initialization expression of performCallback(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v11 - v5;
  if (a1)
  {

    static TaskPriority.userInitiated.getter();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    type metadata accessor for MainActor();

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = a1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in variable initialization expression of performCallback, v9);
  }

  return result;
}

void static LegacyExporterCaller.callSynchronously<A, B>(_:item:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v94 = a7;
  v93 = a6;
  v91 = a3;
  v96 = a2;
  v92 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v109 = type metadata accessor for Result();
  v98 = type metadata accessor for Optional();
  v97 = *(v98 - 8);
  v12 = *(v97 + 64);
  v13 = MEMORY[0x28223BE20](v98);
  v99 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v86 - v16;
  v95 = a4;
  v90 = *(a4 - 8);
  v18 = *(v90 + 64);
  MEMORY[0x28223BE20](v15);
  v89 = v19;
  v108 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchWorkItemFlags();
  v110 = *(v20 - 8);
  v111 = v20;
  isa = v110[2].isa;
  MEMORY[0x28223BE20](v20);
  v105 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v106 = *(v23 - 8);
  v107 = v23;
  v24 = *(v106 + 8);
  MEMORY[0x28223BE20](v23);
  v104 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = CFRunLoopGetMain();
  if (v31)
  {
    v32 = v31;
    v103 = v8;
    v87 = a8;
    v100 = a5;
    if (one-time initialization token for transferableRunLoopMode != -1)
    {
      swift_once();
    }

    v33 = static CFRunLoopMode.transferableRunLoopMode;
    type metadata accessor for RunLoopSource();
    v34 = swift_allocObject();
    *(v34 + 96) = 0u;
    v35 = (v34 + 96);
    *(v34 + 112) = 0u;
    *(v34 + 128) = 0;
    *(v34 + 104) = v32;
    *(v34 + 112) = v33;
    *(v34 + 16) = 0;
    *(v34 + 24) = v34;
    *(v34 + 32) = 0u;
    *(v34 + 48) = 0u;
    *(v34 + 64) = 0;
    *(v34 + 72) = @objc closure #1 in variable initialization expression of scheduleCallback;
    *(v34 + 80) = @objc closure #1 in variable initialization expression of cancelCallback;
    *(v34 + 88) = @objc closure #1 in variable initialization expression of performCallback;
    v36 = v33;
    v37 = v32;
    *&context.version = *(v34 + 16);
    *&context.release = *(v34 + 40);
    *&context.equal = *(v34 + 56);
    *&context.schedule = *(v34 + 72);
    v102 = v34;
    context.perform = *(v34 + 88);
    context.retain = 0;
    v38 = v37;
    v39 = v36;
    v40 = v38;
    v41 = v39;
    CFRunLoopAddCommonMode(v40, v41);
    v42 = CFRunLoopSourceCreate(0, 0, &context);
    v43 = *v35;
    *v35 = v42;

    v86 = v35;
    v44 = *v35;
    CFRunLoopAddSource(v40, v44, v41);

    v88 = v40;
    static Date.distantFuture.getter();
    Date.timeIntervalSinceNow.getter();
    v46 = v45;
    (*(v27 + 8))(v30, v26);
    type metadata accessor for LegacyExporterCaller.MainQueueDrainingFlag();
    v47 = swift_allocObject();
    *(v47 + 16) = 1;
    type metadata accessor for OS_dispatch_queue();
    v48 = static OS_dispatch_queue.main.getter();
    context.copyDescription = partial apply for closure #1 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:);
    context.equal = v47;
    context.version = MEMORY[0x277D85DD0];
    context.info = 1107296256;
    context.retain = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    context.release = &block_descriptor_0;
    v49 = _Block_copy(&context);
    v101 = v47;

    v50 = v104;
    static DispatchQoS.unspecified.getter();
    v113 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v51 = v105;
    v52 = v111;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F32D6C0](0, v50, v51, v49);
    _Block_release(v49);

    (v110->info)(v51, v52);
    (*(v106 + 1))(v50, v107);

    if (CFRunLoopRunInMode(v41, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v41, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v41, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v41, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v41, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v41, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v41, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v41, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v41, 0.001, 0) != kCFRunLoopRunFinished)
    {
      CFRunLoopRunInMode(v41, 0.001, 0);
    }

    if (*(v101 + 16) == 1)
    {

      (*(*(v100 - 8) + 56))(v87, 1, 1);
    }

    else
    {
      v53 = v98;
      v54 = swift_allocBox();
      v110 = v41;
      v111 = v55;
      v107 = *(v109 - 8);
      (*(v107 + 56))(v55, 1, 1, v109);
      v56 = v90;
      v57 = v95;
      (*(v90 + 16))(v108, v91, v95);
      v58 = (*(v56 + 80) + 72) & ~*(v56 + 80);
      v59 = (v89 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      v61 = v100;
      *(v60 + 2) = v57;
      *(v60 + 3) = v61;
      v62 = v94;
      *(v60 + 4) = v93;
      *(v60 + 5) = v62;
      v63 = v92;
      *(v60 + 6) = v54;
      *(v60 + 7) = v63;
      *(v60 + 8) = v96;
      (*(v56 + 32))(&v60[v58], v108, v57);
      v64 = v88;
      *&v60[v59] = v88;
      v65 = v102;
      v67 = v102[15];
      v66 = v102[16];
      v102[15] = &async function pointer to partial apply for closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:);
      v65[16] = v60;
      v106 = v64;
      v108 = v54;

      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v67);
      v68 = v65[12];

      CFRunLoopSourceSignal(v68);
      CFRunLoopWakeUp(v65[13]);

      v69 = v111;
      swift_beginAccess();
      v70 = v97;
      v71 = *(v97 + 16);
      v71(v17, v69, v53);
      v72 = *(v107 + 48);
      v73 = v109;
      v74 = v72(v17, 1);
      v75 = v70 + 8;
      v76 = *(v70 + 8);
      if (v74 == 1)
      {
        do
        {
          v77 = v75;
          v76(v17, v53);
          CFRunLoopRunInMode(v110, v46, 0);
          v71(v17, v111, v53);
          v78 = (v72)(v17, 1, v73);
          v75 = v77;
        }

        while (v78 == 1);
      }

      v76(v17, v53);
      v79 = v102[13];
      if (v79)
      {
        if (*v86)
        {
          v80 = v102[14];
          if (v80)
          {
            CFRunLoopRemoveSource(v79, *v86, v80);
          }
        }
      }

      v81 = v99;
      v71(v99, v111, v53);
      v82 = v109;
      v83 = (v72)(v81, 1, v109);
      v84 = v103;
      if (v83 == 1)
      {
        __break(1u);
      }

      else
      {
        v85 = v87;
        _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF(v82, &v113, v87);

        if (v84)
        {
        }

        else
        {

          (*(*(v100 - 8) + 56))(v85, 0, 1);
        }
      }
    }
  }

  else
  {
    (*(*(a5 - 8) + 56))(a8, 1, 1);
  }
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t partial apply for closure #1 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(v0 + 16) = 0;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5[9] = type metadata accessor for Result();
  v8 = type metadata accessor for Optional();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v10 = *(v9 + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[13] = v11;
  v5[14] = swift_projectBox();
  v5[15] = type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v15 = (a2 + *a2);
  v12 = a2[1];
  v13 = swift_task_alloc();
  v5[17] = v13;
  *v13 = v5;
  v13[1] = closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:);

  return v15(v11, a4);
}

uint64_t closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:)()
{
  v2 = v0;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 144) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:);
  }

  else
  {
    v8 = closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);

  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  swift_beginAccess();
  (*(v5 + 40))(v3, v2, v4);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  CFRunLoopStop(*(v0 + 64));

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);

  *v4 = v1;
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  swift_beginAccess();
  (*(v5 + 40))(v3, v4, v6);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  CFRunLoopStop(*(v0 + 64));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t partial apply for closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:)()
{
  v2 = v0[3];
  v3 = (*(*(v0[2] - 8) + 80) + 72) & ~*(*(v0[2] - 8) + 80);
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = *(v0 + ((*(*(v0[2] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:)(v4, v5, v6, v0 + v3, v7);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CFRunLoopSourceContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for CFRunLoopSourceContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in variable initialization expression of performCallback(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = Transferable.file(contentType:fileHandler:);

  return closure #1 in closure #1 in variable initialization expression of performCallback(a1, v5, v6, v4);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v6(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_25(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = Transferable.file(contentType:fileHandler:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v5);
}

void type metadata accessor for CFRunLoopMode(uint64_t a1, unint64_t *a2)
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

CoreTransferable::_TransferRepresentationOutputs static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v44 = a2;
  v45 = a4;
  *&v42 = a1;
  v46 = a6;
  v8 = type metadata accessor for ResolvedTransferRepresentation();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  v39 = *(v43 - 8);
  v11 = *(v39 + 64);
  v12 = MEMORY[0x28223BE20](v43);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v38 - v19;
  v41 = type metadata accessor for _TransferRepresentationValue();
  v21 = *(v41 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v41);
  v24 = &v38 - v23;
  (*(a5 + 24))(a3);
  v25 = *(v42 + 16);
  v40 = *v42;
  v42 = v25;
  _TransferRepresentationValue.init(_:)(v20, AssociatedTypeWitness, v24);
  _TransferRepresentationInputs.init()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v56, v24);
  (*(v21 + 8))(v24, v41);
  v50 = v44;
  v51 = a3;
  v52 = v45;
  v53 = a5;
  v54 = v40;
  v55 = v42;
  v27 = _TransferRepresentationOutputs.map<A>(_:)(partial apply for closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:), v49, v43);

  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = *(v39 + 80);
    v45 = v27;
    v30 = v27 + ((v29 + 32) & ~v29);
    v31 = *(v39 + 72);
    v32 = (v47 + 48);
    v33 = MEMORY[0x277D84F90];
    v34 = v8;
    do
    {
      outlined init with copy of ResolvedTransferRepresentation?(v30, v16);
      outlined init with take of ResolvedTransferRepresentation?(v16, v14);
      if ((*v32)(v14, 1, v8) == 1)
      {
        outlined destroy of ResolvedTransferRepresentation?(v14);
      }

      else
      {
        outlined init with take of ResolvedTransferRepresentation(v14, v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
        }

        v36 = v33[2];
        v35 = v33[3];
        if (v36 >= v35 >> 1)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v33);
        }

        v33[2] = v36 + 1;
        outlined init with take of ResolvedTransferRepresentation(v48, v33 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v36);
        v8 = v34;
      }

      v30 += v31;
      --v28;
    }

    while (v28);
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  return _TransferRepresentationOutputs.init(_:)(v33);
}

uint64_t closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v41 = a7;
  v42 = a8;
  v39 = a10;
  v40 = a6;
  v16 = type metadata accessor for ResolvedTransferRepresentation();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ResolvedTransferRepresentation(a1, v20);
  if (a2)
  {
    v38 = a4;
    v21 = a5;

    v22 = ResolvedTransferRepresentation.exporter.getter();
    if (v22)
    {
      v24 = v22;
      v25 = v23;
      v26 = swift_allocObject();
      v27 = v41;
      v26[2] = v40;
      v26[3] = v27;
      v28 = v39;
      v26[4] = v42;
      v26[5] = v28;
      v26[6] = a2;
      v26[7] = a3;
      v26[8] = v24;
      v26[9] = v25;
      ResolvedTransferRepresentation.exporter.setter(&async function pointer to partial apply for closure #1 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:), v26);
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(a2);
    }

    a5 = v21;
    a4 = v38;
  }

  if (a4)
  {

    v29 = ResolvedTransferRepresentation.importer.getter();
    if (v29)
    {
      v31 = v29;
      v32 = v30;
      v33 = swift_allocObject();
      v34 = v41;
      v33[2] = v40;
      v33[3] = v34;
      v35 = v39;
      v33[4] = v42;
      v33[5] = v35;
      v33[6] = v31;
      v33[7] = v32;
      v33[8] = a4;
      v33[9] = a5;
      ResolvedTransferRepresentation.importer.setter(&async function pointer to partial apply for closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:), v33);
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(a4);
    }
  }

  outlined init with take of ResolvedTransferRepresentation(v20, a9);
  return (*(v17 + 56))(a9, 0, 1, v16);
}

uint64_t closure #1 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v19;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  v8[13] = a2;
  v8[14] = a3;
  v8[12] = a1;
  v10 = *(a8 - 8);
  v8[21] = v10;
  v11 = *(v10 + 64) + 15;
  v8[22] = swift_task_alloc();
  v12 = type metadata accessor for Optional();
  v8[23] = v12;
  v13 = *(v12 - 8);
  v8[24] = v13;
  v14 = *(v13 + 64) + 15;
  v8[25] = swift_task_alloc();
  v15 = *(a7 - 8);
  v8[26] = v15;
  v16 = *(v15 + 64) + 15;
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:), 0, 0);
}

uint64_t closure #1 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)()
{
  v1 = v0[25];
  v2 = v0[18];
  outlined init with copy of Transferable(v0[13], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v4 = v0[26];
    v3 = v0[27];
    v5 = v0[25];
    v6 = v0[18];
    v7 = v0[14];
    (*(v4 + 56))(v5, 0, 1, v6);
    (*(v4 + 32))(v3, v5, v6);
    v22 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[28] = v9;
    *v9 = v0;
    v9[1] = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
    v10 = v0[27];
    v11 = v0[22];
    v12 = v0[15];

    return v22(v11, v10);
  }

  else
  {
    v15 = v0[25];
    v14 = v0[26];
    v16 = v0[23];
    v17 = v0[24];
    v18 = v0[18];
    v19 = v0[13];
    (*(v14 + 56))(v15, 1, 1, v18);
    (*(v17 + 8))(v15, v16);
    _StringGuts.grow(_:)(33);

    v20 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v20);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    swift_getDynamicType();
    v21 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v21);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v22;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a1;
  v8[13] = a5;
  v12 = type metadata accessor for Optional();
  v8[18] = v12;
  v13 = *(v12 - 8);
  v8[19] = v13;
  v14 = *(v13 + 64) + 15;
  v8[20] = swift_task_alloc();
  v15 = *(a8 - 8);
  v8[21] = v15;
  v16 = *(v15 + 64) + 15;
  v8[22] = swift_task_alloc();
  v20 = (a3 + *a3);
  v17 = a3[1];
  v18 = swift_task_alloc();
  v8[23] = v18;
  *v18 = v8;
  v18[1] = closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:);

  return (v20)(v8 + 2, a2);
}

uint64_t closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  else
  {
    v3 = closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[20];
  v2 = v0[16];
  outlined init with copy of Transferable((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v3 = swift_dynamicCast();
  v4 = v0[16];
  if (v3)
  {
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = v0[17];
    v9 = v0[15];
    v11 = v0[12];
    v10 = v0[13];
    (*(v6 + 56))(v7, 0, 1, v0[16]);
    (*(v6 + 32))(v5, v7, v4);
    v11[3] = v9;
    v11[4] = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    v23 = (v10 + *v10);
    v13 = v10[1];
    v14 = swift_task_alloc();
    v0[25] = v14;
    *v14 = v0;
    v14[1] = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
    v15 = v0[22];
    v16 = v0[14];

    return v23(boxed_opaque_existential_1, v15);
  }

  else
  {
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[19];
    (*(v0[21] + 56))(v18, 1, 1, v0[16]);
    (*(v20 + 8))(v18, v19);
    _StringGuts.grow(_:)(33);

    v21 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v21);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    swift_getDynamicType();
    v22 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v22);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

void *ProxyTransferRepresentation.init(importer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  result[6] = a1;
  result[7] = a2;
  a7[2] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed B) -> (@out A);
  a7[3] = result;
  return result;
}

void *ProxyTransferRepresentation.init(exporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  result[6] = a1;
  result[7] = a2;
  *a7 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B);
  a7[1] = result;
  a7[2] = 0;
  a7[3] = 0;
  return result;
}

void *ProxyTransferRepresentation.init(exporter:importer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a8;
  v18[6] = a1;
  v18[7] = a2;
  *a9 = &thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B)partial apply;
  a9[1] = v18;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a7;
  result[5] = a8;
  result[6] = a3;
  result[7] = a4;
  a9[2] = &thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed B) -> (@out A)partial apply;
  a9[3] = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed B) -> (@out A)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B)(a1, a2, v11);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B)(a1, a2, v11);
}

uint64_t instantiation function for generic protocol witness table for ProxyTransferRepresentation<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata instantiation function for ProxyTransferRepresentation()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ProxyTransferRepresentation(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ProxyTransferRepresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[6];
  v10 = v2[7];
  v12 = v2[8];
  v11 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = Transferable.file(contentType:fileHandler:);

  return closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, a2, v9, v10, v12, v11, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[5];
  v8 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, a2, v8, v10, v11, v12, v6, v7);
}

void *static __TupleDescriptor.tupleDescription(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = destructiveProjectEnumData for _FileNamedTransferRepresentation.Storage();
  v7 = (*(a3 + 16))(a2, a3);
  v15 = v6;
  v8 = *(a3 + 8);
  v9 = type metadata accessor for __TupleTypeDescription();
  MEMORY[0x20F32D450](v14, &v15, v7, MEMORY[0x277D83690], v9, MEMORY[0x277D83698]);

  result = v14[0];
  if (!v14[0])
  {
    v11 = __TupleTypeDescription.init(_:)(a1, a2, v8);
    v14[4] = v6;
    v15 = v11;
    v12 = *(a3 + 32);

    v13 = v12(v14, a2, a3);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v13(v14, 0);
    return v11;
  }

  return result;
}

void *__TupleTypeDescription.init(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TypeConformance();
  swift_getTupleTypeMetadata2();
  v6 = Array.init()();
  result = __TupleType.indices.getter(a1);
  if (result == v8)
  {
    return v6;
  }

  v9 = result;
  v10 = v8;
  if (v8 < result)
  {
    __break(1u);
  }

  else if (result < v8)
  {
    do
    {
      v11 = __TupleType.type(at:)(v9, a1);
      (*(a3 + 8))(a2, a3);
      if (swift_conformsToProtocol())
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        type metadata accessor for Array();
        Array.append(_:)();
      }

      ++v9;
    }

    while (v10 != v9);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t type metadata instantiation function for TypeConformance()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TypeConformance(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for TypeConformance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for __TupleTypeDescription()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static TupleTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v33 = a1;
  v35[3] = *MEMORY[0x277D85DE8];
  type metadata accessor for TupleTransferRepresentation();
  v5 = type metadata accessor for _TransferRepresentationValue();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for TupleTransferRepresentation.Visitor();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = destructiveProjectEnumData for _FileNamedTransferRepresentation.Storage(a2);
  v16 = static __TupleDescriptor.tupleDescription(_:)(v15, &type metadata for TransferRepresentationDescriptor, &protocol witness table for TransferRepresentationDescriptor);
  _TransferRepresentationOutputs.init()();
  v17 = v16[2];
  if (v17)
  {
    v27 = v16;
    v28 = a3;
    v31 = (v6 + 32);
    v32 = (v6 + 16);
    v29 = v15;
    v30 = (v11 + 8);
    v18 = v9;
    v19 = v16 + 6;
    do
    {
      v20 = *(v19 - 2);
      v21 = *(v19 - 1);
      v22 = *v19;
      v19 += 3;
      v23 = __TupleType.offset(at:)(v20);
      (*v32)(v18, v33, v5);
      _TransferRepresentationOutputs.init()();
      v24 = v35[0];
      (*v31)(v14, v18, v5);
      *&v14[*(v10 + 44)] = v23;
      *&v14[*(v10 + 48)] = v24;
      v35[0] = v14;
      v35[1] = v10;
      v35[2] = &protocol witness table for TupleTransferRepresentation<A, B>.Visitor;
      _callVisitTransferRepresentationType1(v35, v21, v22);
      v35[0] = *&v14[*(v10 + 48)];

      _TransferRepresentationOutputs.append(_:)(v35);

      (*v30)(v14, v10);
      --v17;
    }

    while (v17);

    a3 = v28;
  }

  else
  {
  }

  *a3 = v34;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TupleTransferRepresentation.Visitor.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v7 = type metadata accessor for _TransferRepresentationValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = *(v3 + *(a1 + 44));
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = *(a1 + 32);
  type metadata accessor for TupleTransferRepresentation();
  v24 = type metadata accessor for _TransferRepresentationValue();
  _TransferRepresentationValue.applying<A>(offset:to:)(v20, a2, v24, a2, v25, v26, v27, v28);
  (*(v13 + 16))(v17, v19, a2);
  _TransferRepresentationValue.init(_:)(v17, a2, v12);
  (*(v31 + 48))(&v32, v12);
  (*(v8 + 8))(v12, v7);
  v29 = v4 + *(a1 + 48);
  _TransferRepresentationOutputs.append(_:)(&v32);

  return (*(v13 + 8))(v19, a2);
}

uint64_t protocol witness for static TransferRepresentation._decomposedTransferRepresentation(_:inputs:) in conformance TupleTransferRepresentation<A, B>@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v3 = a2[2];
  v4 = a2[4];
  return static TupleTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, a2[3], a3);
}

uint64_t one-time initialization function for _typeCache()
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_16CoreTransferable22__TupleTypeDescriptionVyAC32TransferRepresentationDescriptorVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMd, &_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMR);
  result = AtomicBox.init(wrappedValue:)(&v2, v0);
  static TransferRepresentationDescriptor._typeCache = result;
  return result;
}

uint64_t associated type witness table accessor for TransferRepresentation.Body : TransferRepresentation in TupleTransferRepresentation<A, B>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t protocol witness for static __TupleDescriptor.typeCache.getter in conformance TransferRepresentationDescriptor()
{
  if (one-time initialization token for _typeCache != -1)
  {
    swift_once();
  }

  v0 = static TransferRepresentationDescriptor._typeCache;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMd, &_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMR);
  AtomicBox.wrappedValue.getter(v0, v1, &v3);
  return v3;
}

uint64_t protocol witness for static __TupleDescriptor.typeCache.setter in conformance TransferRepresentationDescriptor(uint64_t a1)
{
  if (one-time initialization token for _typeCache != -1)
  {
    swift_once();
  }

  v2 = static TransferRepresentationDescriptor._typeCache;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMd, &_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMR);
  v4 = AtomicBox.wrappedValue.modify(v8, v2, v3);
  v6 = *v5;
  *v5 = a1;

  return (v4)(v8, 0);
}

uint64_t (*protocol witness for static __TupleDescriptor.typeCache.modify in conformance TransferRepresentationDescriptor(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (one-time initialization token for _typeCache != -1)
  {
    swift_once();
  }

  v4 = static TransferRepresentationDescriptor._typeCache;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMd, &_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMR);
  *(v3 + 32) = AtomicBox.wrappedValue.modify(v3, v4, v5);
  return protocol witness for static __TupleDescriptor.typeCache.modify in conformance TransferRepresentationDescriptor;
}

void static TransferRepresentationDescriptor.typeCache.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t type metadata completion function for TupleTransferRepresentation(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TupleTransferRepresentation(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

char *storeEnumTagSinglePayload for TupleTransferRepresentation(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
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

uint64_t type metadata completion function for TupleTransferRepresentation.Visitor(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  type metadata accessor for TupleTransferRepresentation();
  result = type metadata accessor for _TransferRepresentationValue();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TupleTransferRepresentation.Visitor(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
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

void storeEnumTagSinglePayload for TupleTransferRepresentation.Visitor(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&a1[v9] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v6 < 0x7FFFFFFF)
        {
          v22 = (((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v23 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v23 = a2 - 1;
          }

          *v22 = v23;
        }

        else if (v6 >= a2)
        {
          v24 = *(v5 + 56);

          v24();
        }

        else
        {
          if (v8 <= 3)
          {
            v18 = ~(-1 << (8 * v8));
          }

          else
          {
            v18 = -1;
          }

          if (v8)
          {
            v19 = v18 & (~v6 + a2);
            if (v8 <= 3)
            {
              v20 = v8;
            }

            else
            {
              v20 = 4;
            }

            v21 = a1;
            bzero(a1, v8);
            if (v20 > 2)
            {
              if (v20 == 3)
              {
                *v21 = v19;
                v21[2] = BYTE2(v19);
              }

              else
              {
                *v21 = v19;
              }
            }

            else if (v20 == 1)
            {
              *v21 = v19;
            }

            else
            {
              *v21 = v19;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, v9);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_16CoreTransferable22__TupleTypeDescriptionVyAC32TransferRepresentationDescriptorVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO16CoreTransferable22__TupleTypeDescriptionVyAC32TransferRepresentationDescriptorVGGMd, &_ss18_DictionaryStorageCySO16CoreTransferable22__TupleTypeDescriptionVyAC32TransferRepresentationDescriptorVGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t TransferableError.description.getter()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransferableError();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TransferableError(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v10, v14, v6);
      v23 = 0;
      v24 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      MEMORY[0x20F32D540](0xD000000000000032, 0x800000020E3FF670);
      v21 = UTType.identifier.getter();
      MEMORY[0x20F32D540](v21);

      v17 = 0xD000000000000012;
      v18 = 0x800000020E3FF6B0;
    }

    else
    {
      (*(v7 + 32))(v10, v14, v6);
      v23 = 0;
      v24 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      MEMORY[0x20F32D540](0xD000000000000032, 0x800000020E3FF670);
      v16 = UTType.identifier.getter();
      MEMORY[0x20F32D540](v16);

      v17 = 0x2E646E756F6620;
      v18 = 0xE700000000000000;
    }

    MEMORY[0x20F32D540](v17, v18);
    v20 = v23;
    (*(v7 + 8))(v10, v6);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    (*(v2 + 32))(v5, v14, v1);
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    MEMORY[0x20F32D540](0xD00000000000003FLL, 0x800000020E3FF630);
    v19 = URL.path.getter();
    MEMORY[0x20F32D540](v19);

    MEMORY[0x20F32D540](46, 0xE100000000000000);
    v20 = v23;
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    return 0xD000000000000042;
  }

  return v20;
}

uint64_t type metadata accessor for TransferableError()
{
  result = type metadata singleton initialization cache for TransferableError;
  if (!type metadata singleton initialization cache for TransferableError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of TransferableError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferableError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TransferableError.hash(into:)()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransferableError();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TransferableError(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v10, v14, v6);
      v17 = 3;
    }

    else
    {
      (*(v7 + 32))(v10, v14, v6);
      v17 = 2;
    }

    MEMORY[0x20F32D8B0](v17);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v7 + 8))(v10, v6);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    (*(v2 + 32))(v5, v14, v1);
    MEMORY[0x20F32D8B0](4);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v2 + 8))(v5, v1);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return MEMORY[0x20F32D8B0](0);
  }

  else
  {
    return MEMORY[0x20F32D8B0](1);
  }
}

Swift::Int TransferableError.hashValue.getter()
{
  Hasher.init(_seed:)();
  TransferableError.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferableError()
{
  Hasher.init(_seed:)();
  TransferableError.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferableError()
{
  Hasher.init(_seed:)();
  TransferableError.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferableSupportError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F32D8B0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferableSupportError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F32D8B0](v1);
  return Hasher._finalize()();
}

uint64_t specialized static TransferableError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for URL();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UTType();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for TransferableError();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B5ErrorO_ACtMd, &_s16CoreTransferable0B5ErrorO_ACtMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v40 - v26;
  v28 = *(v25 + 56);
  outlined init with copy of TransferableError(a1, &v40 - v26);
  outlined init with copy of TransferableError(v45, &v27[v28]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v30 = v44;
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of TransferableError(v27, v20);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v30 + 8))(v20, v6);
        goto LABEL_17;
      }

      (*(v30 + 32))(v10, &v27[v28], v6);
      v35 = static UTType.== infix(_:_:)();
      v37 = *(v30 + 8);
      v37(v10, v6);
      v37(v20, v6);
    }

    else
    {
      outlined init with copy of TransferableError(v27, v22);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v30 + 8))(v22, v6);
        goto LABEL_17;
      }

      (*(v30 + 32))(v12, &v27[v28], v6);
      v35 = static UTType.== infix(_:_:)();
      v38 = *(v30 + 8);
      v38(v12, v6);
      v38(v22, v6);
    }

LABEL_19:
    outlined destroy of TransferableError(v27);
    return v35 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of TransferableError(v27, v17);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v42 + 8))(v17, v43);
      goto LABEL_17;
    }

    v32 = v42;
    v31 = v43;
    v33 = &v27[v28];
    v34 = v41;
    (*(v42 + 32))(v41, v33, v43);
    v35 = static URL.== infix(_:_:)();
    v36 = *(v32 + 8);
    v36(v34, v31);
    v36(v17, v31);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_12;
    }

LABEL_17:
    outlined destroy of (TransferableError, TransferableError)(v27);
    v35 = 0;
    return v35 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_17;
  }

LABEL_12:
  outlined destroy of TransferableError(v27);
  v35 = 1;
  return v35 & 1;
}

void type metadata completion function for TransferableError()
{
  type metadata accessor for (to: UTType)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (to: UTType)()
{
  if (!lazy cache variable for type metadata for (to: UTType))
  {
    v0 = type metadata accessor for UTType();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (to: UTType));
    }
  }
}

uint64_t getEnumTagSinglePayload for TransferableSupportError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TransferableSupportError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TransferRepresentationVisibility(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TransferRepresentationVisibility(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t outlined destroy of (TransferableError, TransferableError)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B5ErrorO_ACtMd, &_s16CoreTransferable0B5ErrorO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of TransferableError(uint64_t a1)
{
  v2 = type metadata accessor for TransferableError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

uint64_t logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, logger);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t closure #1 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = a6;
  v32 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v15 = type metadata accessor for Result();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v31 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v31 - v22;
  if (a2 >> 60 != 15)
  {
    v24 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (!v24)
      {
        if ((a2 & 0xFF000000000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_16:
        v28 = type metadata accessor for TaskPriority();
        (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
        v29 = swift_allocObject();
        v29[2] = 0;
        v29[3] = 0;
        v29[4] = a8;
        v29[5] = a9;
        v30 = v32;
        v29[6] = v31;
        v29[7] = a7;
        v29[8] = a1;
        v29[9] = a2;
        v29[10] = v30;
        v29[11] = a5;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v23, &async function pointer to partial apply for closure #1 in closure #1 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:), v29);
      }

      if (a1 == a1 >> 32)
      {
        goto LABEL_11;
      }

LABEL_15:
      outlined copy of Data?(a1, a2);
      goto LABEL_16;
    }

    if (v24 != 2)
    {
LABEL_9:
      outlined consume of Data?(a1, a2);
      goto LABEL_11;
    }

    if (*(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  if (a3)
  {
    v25 = a3;
  }

  else
  {
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError();
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  *v19 = v25;
  swift_storeEnumTagMultiPayload();
  v26 = a3;
  v32(v19);
  return (*(v16 + 8))(v19, v15);
}