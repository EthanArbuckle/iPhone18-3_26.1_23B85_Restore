void *protocol witness for Decodable.init(from:) in conformance ExpressionStructure.Argument@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized ExpressionStructure.Argument.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t outlined destroy of KeyedDecodingContainer<ExpressionStructure.CodingKeys>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV10CodingKeysOGSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PredicateBindings.init<each A>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    v35 = a4;
    v4 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v5 = MEMORY[0x1E69E7CC0];
    v34 = a3 & 0xFFFFFFFFFFFFFFFELL;
    v36 = result;
    v37 = a2;
    v6 = result;
    v7 = a2;
    do
    {
      v41 = v7;
      v42 = v5;
      v8 = *v4;
      v9 = *v6;
      type metadata accessor for PredicateExpressions.Variable();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v40 = &v34;
      v11 = *(TupleTypeMetadata2 - 8);
      v12 = *(v11 + 64);
      v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
      v14 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *(v11 + 16);
      v16 = v15(v14, v9, TupleTypeMetadata2, v13);
      v39 = &v34;
      v38 = *v14;
      v17 = MEMORY[0x1EEE9AC00](v16);
      v15(v14, v9, TupleTypeMetadata2, v17);
      v18 = *(TupleTypeMetadata2 + 48);
      v46 = v8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v45);
      v20 = *(v8 - 8);
      v21 = &v14[v18];
      v5 = v42;
      (*(v20 + 32))(boxed_opaque_existential_0, v21, v8);
      *&v43[0] = v38;
      outlined init with take of Any(&v45, (v43 + 8));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      }

      v23 = v5[2];
      v22 = v5[3];
      if (v23 >= v22 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
      }

      v24 = v41;
      v25 = *(TupleTypeMetadata2 + 48);
      v5[2] = v23 + 1;
      v26 = &v5[5 * v23];
      v27 = v43[0];
      v28 = v43[1];
      v26[8] = v44;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      (*(v20 + 8))(&v14[v25], v8);
      ++v6;
      ++v4;
      v7 = v24 - 1;
    }

    while (v7);
    *v35 = v5;
    v29 = v37;
    v30 = v36 - 8;
    do
    {
      v31 = v29 - 1;
      v32 = *(v30 + 8 * v29);
      type metadata accessor for PredicateExpressions.Variable();
      v33 = swift_getTupleTypeMetadata2();
      result = (*(*(v33 - 8) + 8))(v32, v33);
      v29 = v31;
    }

    while (v31);
  }

  else
  {
    *a4 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t PredicateExpressions.Variable.evaluate(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  v11 = *a1;
  v15[0] = *v3;
  v15[1] = v11;
  PredicateBindings.subscript.getter(v15, v6, v10);
  v12 = *(v6 - 8);
  if ((*(v12 + 48))(v10, 1, v6) != 1)
  {
    return (*(v12 + 32))(a3, v10, v6);
  }

  (*(v8 + 8))(v10, v7);
  lazy protocol witness table accessor for type PredicateError and conformance PredicateError();
  swift_allocError();
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 3;
  return swift_willThrow();
}

uint64_t outlined init with copy of (id: PredicateExpressions.VariableID, value: Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10VariableIDV2id_yp5valuetMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UnkeyedDecodingContainer.decodePredicateExpression<A>(input:predicateConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = a8;
  v73 = a6;
  v66 = a3;
  v77 = a2;
  v70 = a1;
  if (a5 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; i < a5; ++i)
    {
      *&v13[8 * i] = swift_getMetatypeMetadata();
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
  }

  v92[7] = &v59;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v62 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a7;
  v64 = v15;
  if (a5 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v15);
    v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (j = 0; j < a5; ++j)
    {
      *&v19[8 * j] = type metadata accessor for PredicateExpressions.Variable();
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v65 = TupleTypeMetadata;
  v59 = *(TupleTypeMetadata - 8);
  v80 = &v59;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v63 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = &v59;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v59 - v23;
  v78 = &v59;
  MEMORY[0x1EEE9AC00](v25);
  v60 = &v59 - v26;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd);
  v72 = *(v75 - 8);
  v76 = &v59;
  MEMORY[0x1EEE9AC00](v75);
  v28 = &v59 - v27;
  v29 = *a4;
  v30 = a4[1];
  v31 = *(a4 + 16);
  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v32 = v61;
  result = dispatch thunk of UnkeyedDecodingContainer.nestedContainer<A>(keyedBy:)();
  if (!v32)
  {
    v69 = &v59;
    MEMORY[0x1EEE9AC00](result);
    v36 = &v59 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (k = 0; k != a5; ++k)
    {
      if (a5 == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = *(v65 + 24 + 16 * k + 8);
      }

      *&v36[8 * k] = &v24[v38];
    }

    v67 = &v59;
    MEMORY[0x1EEE9AC00](v34);
    v42 = &v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (m = 0; m != a5; ++m)
    {
      if (a5 == 1)
      {
        v44 = 0;
      }

      else
      {
        v44 = *(v40 + 24 + 16 * m + 8);
      }

      v45 = &v62[v44];
      *v45 = **(v66 + 8 * m);
      *&v42[8 * m] = v45;
    }

    *&v89 = v29;
    *(&v89 + 1) = v30;
    v90 = v31 & 1;
    KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:)(v91, v39, v42, MEMORY[0x1E69E6370], &v89, a5, v68, MEMORY[0x1E69E6370]);
    outlined init with take of Equatable(v91, v92);
    v46 = *(v59 + 32);
    v47 = v60;
    v48 = v24;
    v49 = v65;
    v46(v60, v48, v65);
    outlined init with copy of Hashable & Sendable(v92, v87);
    outlined init with take of Equatable(v87, &v85);
    if (v86)
    {
      outlined init with take of Equatable(&v85, v88);
      outlined init with copy of Hashable & Sendable(v88, v70);
      v50 = v63;
      v46(v63, v47, v49);
      for (n = 0; n != a5; ++n)
      {
        if (a5 == 1)
        {
          v52 = 0;
        }

        else
        {
          v52 = *(v49 + 24 + 16 * n + 8);
        }

        **(v77 + 8 * n) = *&v50[v52];
      }

      __swift_destroy_boxed_opaque_existential_1(v88);
      __swift_destroy_boxed_opaque_existential_1(v92);
      return (*(v72 + 8))(v28, v75);
    }

    else
    {
      v53 = v73;
      v84[3] = v73;
      v84[4] = v71;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v84);
      (*(*(v53 - 8) + 16))(boxed_opaque_existential_0, v74, v53);
      v82 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v83 = v55;
      v56 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("This expression has an unsupported output type of ", 0x32uLL, 1);
      MEMORY[0x1865CCB90](v56._countAndFlagsBits, v56._object);

      __swift_project_boxed_opaque_existential_1(v92, v92[3]);
      swift_getDynamicType();
      static PredicateExpression.outputType.getter();
      protocol witness for static Equatable.== infix(_:_:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys();
      v81[0] = _typeName(_:qualified:)();
      v81[1] = v57;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String(v81);
      v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" (expected Bool)", 0x10uLL, 1);
      MEMORY[0x1865CCB90](v58._countAndFlagsBits, v58._object);

      MEMORY[0x1865CAFA0](v82, v83);
      type metadata accessor for DecodingError();
      swift_allocError();
      static DecodingError.dataCorruptedError(in:debugDescription:)();

      __swift_destroy_boxed_opaque_existential_1(v84);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v92);
      return (*(v72 + 8))(v28, v75);
    }
  }

  return result;
}

uint64_t *PredicateBindings.subscript.getter@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *result;
    v10 = v6 + 32;
    while (v8 < *(v6 + 16))
    {
      outlined init with copy of (id: PredicateExpressions.VariableID, value: Any)(v10, &v12);
      if (v12 == v9)
      {
        v15[0] = v12;
        v15[1] = v13;
        v16 = v14;
        outlined init with take of Any((v15 + 8), &v12);
        goto LABEL_8;
      }

      ++v8;
      result = outlined destroy of (id: PredicateExpressions.VariableID, value: Any)(&v12);
      v10 += 40;
      if (v7 == v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v12 = 0u;
    v13 = 0u;
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
    v11 = swift_dynamicCast();
    return (*(*(a2 - 8) + 56))(a3, v11 ^ 1u, 1, a2);
  }

  return result;
}

uint64_t PredicateExpressions.Equal.evaluate(_:)(uint64_t *a1, void *a2)
{
  v6 = a2[4];
  v7 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v15 = *a1;
  v21 = v15;
  (*(v6 + 16))(&v21, v7, v6, v12);
  if (!v3)
  {
    v16 = v20;
    v21 = v15;
    (*(a2[5] + 16))(&v21, a2[3]);
    v2 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v16 + 8);
    v18(v10, AssociatedTypeWitness);
    v18(v14, AssociatedTypeWitness);
  }

  return v2 & 1;
}

uint64_t PredicateExpressions.Equal<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v34 = a4;
  v36 = a3;
  v32 = a5;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v13;
  v37[0] = v13;
  v37[1] = v14;
  v37[2] = v15;
  v38 = v16;
  v39 = v17;
  v18 = type metadata accessor for PredicateExpressions.Equal();
  v30 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v20;
  v29 = a1;
  v27 = v18;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v21 = v35;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v22 = v28;
  (*(v33 + 32))(v28, v21, v40);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v23 = v27;
  (*(v31 + 32))(&v22[*(v27 + 60)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v37);
  v24 = v30;
  (*(v30 + 16))(v32, v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return (*(v24 + 8))(v22, v23);
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.Equal<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.Equal.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

void DateComponents.hash(into:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = *(v1 + 48);
  v30 = *(v1 + 40);
  v31 = *(v1 + 56);
  v16 = *(v1 + 64);
  v17 = *(v1 + 80);
  v32 = *(v1 + 72);
  v33 = *(v1 + 88);
  v28 = *(v1 + 96);
  v44 = *(v1 + 104);
  v18 = *(v1 + 112);
  v34 = *(v1 + 120);
  v19 = *(v1 + 128);
  v35 = *(v1 + 136);
  v20 = *(v1 + 144);
  v36 = *(v1 + 152);
  v21 = *(v1 + 160);
  v37 = *(v1 + 168);
  v22 = *(v1 + 176);
  v38 = *(v1 + 184);
  v23 = *(v1 + 192);
  v39 = *(v1 + 200);
  v24 = *(v1 + 208);
  v40 = *(v1 + 216);
  v25 = *(v1 + 240);
  v41 = *(v1 + 248);
  v26 = *(v1 + 256);
  v42 = *(v1 + 264);
  v27 = *(v1 + 272);
  v43 = *(v1 + 280);
  v29 = *(v1 + 281);
  v5 = *(v1 + 282);
  if (*v1)
  {
    v6 = *(v1 + 8);
    Hasher._combine(_:)(1u);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 120);
    swift_unknownObjectRetain();
    v8(a1, ObjectType, v6);
    swift_unknownObjectRelease();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v4)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      v9 = swift_getObjectType();
      v10 = *(v3 + 120);
      swift_unknownObjectRetain();
      v10(a1, v9, v3);
      swift_unknownObjectRelease();
      v11 = v29;
      if (v30)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  Hasher._combine(_:)(0);
  v11 = v29;
  if (v30)
  {
LABEL_4:
    Hasher._combine(_:)(0);
    if (!v31)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v14);
  if (!v31)
  {
LABEL_5:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v15);
    if (!v32)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  Hasher._combine(_:)(0);
  if (!v32)
  {
LABEL_6:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v16);
    if (!v33)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  Hasher._combine(_:)(0);
  if (!v33)
  {
LABEL_7:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v17);
    if (!v34)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  Hasher._combine(_:)(0);
  if (!v34)
  {
LABEL_8:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v18);
    if (!v35)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  Hasher._combine(_:)(0);
  if (!v35)
  {
LABEL_9:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v19);
    if (!v36)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  Hasher._combine(_:)(0);
  if (!v36)
  {
LABEL_10:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v20);
    if (!v37)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  Hasher._combine(_:)(0);
  if (!v37)
  {
LABEL_11:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v21);
    if (!v38)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  Hasher._combine(_:)(0);
  if (!v38)
  {
LABEL_12:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v22);
    if (!v39)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  Hasher._combine(_:)(0);
  if (!v39)
  {
LABEL_13:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v23);
    if (!v40)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  Hasher._combine(_:)(0);
  if (!v40)
  {
LABEL_14:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v24);
    if (!v41)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  Hasher._combine(_:)(0);
  if (!v41)
  {
LABEL_15:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v25);
    if (!v42)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  Hasher._combine(_:)(0);
  if (!v42)
  {
LABEL_16:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v26);
    if (!v43)
    {
      goto LABEL_17;
    }

LABEL_34:
    Hasher._combine(_:)(0);
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_33:
  Hasher._combine(_:)(0);
  if (v43)
  {
    goto LABEL_34;
  }

LABEL_17:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v27);
  if (v11 != 2)
  {
LABEL_18:
    Hasher._combine(_:)(1u);
    v12 = v11 & 1;
    goto LABEL_36;
  }

LABEL_35:
  v12 = 0;
LABEL_36:
  Hasher._combine(_:)(v12);
  if (v5 == 2)
  {
    v13 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v13 = v5 & 1;
  }

  Hasher._combine(_:)(v13);
  if (v44)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v28);
  }
}

uint64_t static NSTimer.publish(every:tolerance:on:in:options:)(double a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char *a6)
{
  v9 = *a6;
  type metadata accessor for NSTimer.TimerPublisher();
  v10 = swift_allocObject();
  *(v10 + 64) = MEMORY[0x1E69E7CC8];
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 72) = v11;
  *(v10 + 16) = a1;
  *(v10 + 24) = 0;
  *(v10 + 32) = 1;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = v9;
  v12 = a4;
  v13 = a5;
  return v10;
}

uint64_t JSONEncoder.dataEncodingStrategy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[17];

  os_unfair_lock_lock(v4 + 4);

  v5 = v1[6];
  v1[6] = v2;
  v1[7] = v3;
  sub_1807A5C7C(v5);
  v6 = v1[17];

  os_unfair_lock_unlock(v6 + 4);
}

uint64_t JSONEncoder.nonConformingFloatEncodingStrategy.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 136);

  os_unfair_lock_lock(v5 + 4);

  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v8;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(v6, v7);
  v9 = *(v1 + 136);

  os_unfair_lock_unlock(v9 + 4);
}

double destructiveInjectEnumTag for JSONDecoder.NonConformingFloatDecodingStrategy(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t _SwiftURL.relativePath.getter()
{
  if (*(*(v0 + 16) + 168))
  {
    v1 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v1 = String.subscript.getter();
  }

  v2 = MEMORY[0x1865CAE80](v1);
  v4 = v3;

  v5 = String._droppingTrailingSlashes.getter(v2, v4);
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v8 = static _SetStorage.allocate(capacity:)();
  v9 = v8 + 56;
  v10 = *(v8 + 40);
  v11 = byte_1EEED3AA0;
  result = MEMORY[0x1865CD020](v10, byte_1EEED3AA0, 1);
  v13 = -1 << *(v8 + 32);
  v14 = result & ~v13;
  v15 = v14 >> 6;
  v16 = *(v8 + 56 + 8 * (v14 >> 6));
  v17 = 1 << v14;
  v18 = *(v8 + 48);
  if (((1 << v14) & v16) != 0)
  {
    v19 = ~v13;
    while (*(v18 + v14) != v11)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = *(v9 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    *(v9 + 8 * v15) = v17 | v16;
    *(v18 + v14) = v11;
    v20 = *(v8 + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    *(v8 + 16) = v22;
  }

  v23 = byte_1EEED3AA1;
  result = MEMORY[0x1865CD020](v10, byte_1EEED3AA1, 1);
  v24 = -1 << *(v8 + 32);
  v25 = result & ~v24;
  v26 = v25 >> 6;
  v27 = *(v9 + 8 * (v25 >> 6));
  v28 = 1 << v25;
  v29 = *(v8 + 48);
  if (((1 << v25) & v27) == 0)
  {
LABEL_14:
    *(v9 + 8 * v26) = v28 | v27;
    *(v29 + v25) = v23;
    v31 = *(v8 + 16);
    v21 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v21)
    {
      *(v8 + 16) = v32;
      goto LABEL_16;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  v30 = ~v24;
  while (*(v29 + v25) != v23)
  {
    v25 = (v25 + 1) & v30;
    v26 = v25 >> 6;
    v27 = *(v9 + 8 * (v25 >> 6));
    v28 = 1 << v25;
    if (((1 << v25) & v27) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  v33 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v33 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    return 0;
  }

  v40[0] = v5;
  v40[1] = v7;
  MEMORY[0x1EEE9AC00](result);
  v39[2] = v40;
  v39[3] = v8;
  v39[4] = 4;

  v34 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v39, v5, v7);
  if (v35 == 1)
  {
    v36 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v5, v7, v8, 4);
    v38 = v37;
  }

  else
  {
    v38 = v35;
    v36 = v34;
  }

  result = v36;
  if (!v38)
  {
    return 0;
  }

  return result;
}

id StringProtocol.write(to:atomically:encoding:)(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v77[4] = *MEMORY[0x1E69E9840];
  v71 = *a1;
  v4 = *a3;
  v77[0] = *a3;
  v5 = StringProtocol.data(using:allowLossyConversion:)(v77, 0);
  if (v6 >> 60 != 15)
  {
    v11 = v6;
    v12 = v5;
    v77[0] = v4;
    v13 = extendedAttributeData(for:)(v77);
    if (v14 >> 60 == 15)
    {
      v15 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      v16 = v13;
      v17 = v14;
      v70 = v3;
      v76[0] = 0xD000000000000016;
      v76[1] = 0x800000018147D4A0;
      v76[2] = v13;
      v76[3] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd);
      v15 = static _DictionaryStorage.allocate(capacity:)();
      outlined copy of Data?(v16, v17);

      outlined copy of Data._Representation(v16, v17);
      outlined destroy of TermOfAddress?(v76, &_sSS_10Foundation4DataVtMd);
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000018147D4A0);
      v20 = v19;

      if (v20)
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
      }

      *(&v15[2].isa + (v18 >> 6)) |= 1 << v18;
      v21 = &v15[1].data[16 * v18];
      *v21 = 0xD000000000000016;
      *(v21 + 1) = 0x800000018147D4A0;
      v22 = (v15[1].length + 16 * v18);
      *v22 = v16;
      v22[1] = v17;
      v13 = outlined consume of Data?(v16, v17);
      data = v15->data;
      v24 = __OFADD__(data, 1);
      v25 = data + 1;
      if (v24)
      {
        goto LABEL_88;
      }

      v15->data = v25;
    }

    MEMORY[0x1EEE9AC00](v13);
    v65[1] = v71;
    v66 = 1;
    v67 = v26;
    v68 = v15;
    v69 = 0;
    swift_unknownObjectRetain();
    specialized Data._Representation.withUnsafeBytes<A>(_:)(closure #1 in writeToFile(path:data:options:attributes:reportProgress:)partial apply, v65, v12, v11);
    outlined consume of Data?(v12, v11);

    return swift_unknownObjectRelease();
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v8 = @"NSCocoaErrorDomain";
  v9 = v8;
  if (!isTaggedPointer)
  {
    goto LABEL_9;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  switch(TaggedPointerTag)
  {
    case 0:
LABEL_23:
      v74 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v31)
      {
        [(__CFString *)v9 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0x16:
      result = [(__CFString *)v9 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      String.init(utf8String:)(result);
      if (v30)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_23;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v68 = v9;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_31;
  }

LABEL_9:
  LOBYTE(v72) = 0;
  v77[0] = 0;
  LOBYTE(v74) = 0;
  v75 = 0;
  if (!__CFStringIsCF())
  {
    v28 = v9;
    String.init(_nativeStorage:)();
    if (v29 || (v77[0] = [(__CFString *)v28 length]) == 0)
    {

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (!v77[0])
  {
LABEL_29:

    goto LABEL_31;
  }

  if (v75 == 1)
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_31;
  }

LABEL_30:
  String.init(_cocoaString:)();
LABEL_31:
  v32 = objc_allocWithZone(NSError);
  v33 = String._bridgeToObjectiveCImpl()();

  v34 = [v32 initWithDomain:v33 code:517 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v35 = [v34 domain];
  if (!v35)
  {
    goto LABEL_44;
  }

  v36 = v35;
  v37 = _objc_isTaggedPointer(v35);
  v38 = v36;
  v39 = v38;
  if ((v37 & 1) == 0)
  {
LABEL_37:
    LOBYTE(v72) = 0;
    v77[0] = 0;
    LOBYTE(v74) = 0;
    v75 = 0;
    if (!__CFStringIsCF())
    {
      v44 = v39;
      v45 = String.init(_nativeStorage:)();
      if (v46)
      {
        v41 = v45;
        v43 = v46;

        goto LABEL_58;
      }

      v77[0] = [(__CFString *)v44 length];
      if (!v77[0])
      {

        v41 = 0;
        v43 = 0xE000000000000000;
        goto LABEL_58;
      }

      goto LABEL_55;
    }

    if (v77[0])
    {
      if (v75 == 1)
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        v49 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_56:
        v41 = v49;
        v43 = v50;
        goto LABEL_57;
      }

LABEL_55:
      v49 = String.init(_cocoaString:)();
      goto LABEL_56;
    }

LABEL_44:
    v41 = 0;
    v43 = 0xE000000000000000;
    goto LABEL_58;
  }

  v40 = _objc_getTaggedPointerTag(v38);
  if (!v40)
  {
    goto LABEL_48;
  }

  if (v40 != 22)
  {
    if (v40 == 2)
    {
      MEMORY[0x1EEE9AC00](v40);
      v68 = v39;
      v41 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v43 = v42;

LABEL_58:
      v51 = v9;
      v52 = v51;
      if (!isTaggedPointer)
      {
        goto LABEL_63;
      }

      v53 = _objc_getTaggedPointerTag(v51);
      if (!v53)
      {
        goto LABEL_73;
      }

      if (v53 != 22)
      {
        if (v53 == 2)
        {
          MEMORY[0x1EEE9AC00](v53);
          v68 = v52;
          v54 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v56 = v55;

          goto LABEL_81;
        }

LABEL_63:
        LOBYTE(v72) = 0;
        v77[0] = 0;
        LOBYTE(v74) = 0;
        v75 = 0;
        if (__CFStringIsCF())
        {
          v54 = v77[0];
          if (!v77[0])
          {

            v56 = 0xE000000000000000;
            goto LABEL_81;
          }

          if (v75 == 1)
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            v62 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_80:
            v54 = v62;
            v56 = v63;
LABEL_81:
            if (v41 == v54 && v43 == v56)
            {

              return swift_willThrow();
            }

            v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v64)
            {
              return swift_willThrow();
            }

            goto LABEL_87;
          }
        }

        else
        {
          v57 = v52;
          v58 = String.init(_nativeStorage:)();
          if (v59)
          {
            v54 = v58;
            v56 = v59;

            goto LABEL_81;
          }

          v77[0] = [(__CFString *)v57 length];
          if (!v77[0])
          {

            v54 = 0;
            v56 = 0xE000000000000000;
            goto LABEL_81;
          }
        }

        v62 = String.init(_cocoaString:)();
        goto LABEL_80;
      }

      result = [(__CFString *)v52 UTF8String];
      if (result)
      {
        v60 = String.init(utf8String:)(result);
        if (v61)
        {
          goto LABEL_74;
        }

        __break(1u);
LABEL_73:
        v74 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v60 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v61)
        {
          [(__CFString *)v52 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v54 = v72;
          v56 = v73;
          goto LABEL_81;
        }

LABEL_74:
        v54 = v60;
        v56 = v61;

        goto LABEL_81;
      }

      goto LABEL_90;
    }

    goto LABEL_37;
  }

  result = [(__CFString *)v39 UTF8String];
  if (result)
  {
    v47 = String.init(utf8String:)(result);
    if (v48)
    {
      goto LABEL_49;
    }

    __break(1u);
LABEL_48:
    v74 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v47 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v48)
    {
      [(__CFString *)v39 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v41 = v72;
      v43 = v73;
      goto LABEL_57;
    }

LABEL_49:
    v41 = v47;
    v43 = v48;

LABEL_57:
    goto LABEL_58;
  }

LABEL_91:
  __break(1u);
  return result;
}

uint64_t Calendar.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation8CalendarV10CodingKeys33_F3BDB2D973DC43C399EBDEAB6295AE62LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.CodingKeys and conformance Calendar.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v37[0]) = 5;
    lazy protocol witness table accessor for type Calendar.Current and conformance Calendar.Current();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v38 > 1u)
    {
      if (v38 == 2)
      {
        type metadata accessor for _CalendarAutoupdating();
        inited = swift_initStaticObject();
        (*(v6 + 8))(v8, v5);
        v11 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating);
        goto LABEL_9;
      }
    }

    else if (v38)
    {
      static Calendar.current.getter(&v38);
      (*(v6 + 8))(v8, v5);
      v11 = *(&v38 + 1);
      inited = v38;
LABEL_9:
      *a2 = inited;
      a2[1] = v11;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    LOBYTE(v38) = 0;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    Calendar.Identifier.init(identifierString:)(v15);
    if (v38 == 27)
    {
      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v16 = a1[3];
      v32 = a1[4];
      v33 = v17;
      __swift_project_boxed_opaque_existential_1(a1, v16);
      dispatch thunk of Decoder.codingPath.getter();
      *&v38 = 0;
      *(&v38 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      *&v38 = 0xD00000000000001CLL;
      *(&v38 + 1) = 0x8000000181480D70;
      MEMORY[0x1865CB0E0](v12, v14);

      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v18 = v33;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v18, *MEMORY[0x1E69E6B00]);
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    LODWORD(v34) = v38;

    LOBYTE(v37[0]) = 1;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v38;
    LOBYTE(v37[0]) = 2;
    lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = *(&v19 + 1);
    v33 = v19;
    v20 = v38;
    LOBYTE(v38) = 3;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v20 >> 64;
    v31 = v20;
    LOBYTE(v38) = 4;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v33;
    if (!v33)
    {
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v38 = static LocaleCache.cache;
      v39 = qword_1ED4404B0;
      v21 = LocaleCache._currentAndCache.getter();
      v32 = v22;
    }

    v23 = one-time initialization token for cache;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v23 != -1)
    {
      swift_once();
    }

    v27 = v21;
    if (v34 != 7 && v34)
    {
      v24 = type metadata accessor for _CalendarICU();
      v25 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v26 = type metadata accessor for _CalendarICU;
    }

    else
    {
      v24 = type metadata accessor for _CalendarGregorian();
      v25 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v26 = type metadata accessor for _CalendarGregorian;
    }

    v11 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v25, v26);
    v40 = v34;
    *&v38 = v31;
    *(&v38 + 1) = v29;
    v37[0] = v27;
    v37[1] = v32;
    v35 = 0;
    v36 = 1;
    inited = (*(v11 + 16))(&v40, &v38, v37, v30, 0, v28, 0, &v35, v24, v11);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v8, v5);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type DateComponents and conformance DateComponents()
{
  result = lazy protocol witness table cache variable for type DateComponents and conformance DateComponents;
  if (!lazy protocol witness table cache variable for type DateComponents and conformance DateComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents and conformance DateComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents and conformance DateComponents;
  if (!lazy protocol witness table cache variable for type DateComponents and conformance DateComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents and conformance DateComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents and conformance DateComponents;
  if (!lazy protocol witness table cache variable for type DateComponents and conformance DateComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents and conformance DateComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents and conformance DateComponents;
  if (!lazy protocol witness table cache variable for type DateComponents and conformance DateComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents and conformance DateComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents and conformance DateComponents;
  if (!lazy protocol witness table cache variable for type DateComponents and conformance DateComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents and conformance DateComponents);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys);
  }

  return result;
}

uint64_t IndexPath.subscript.getter(unint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 <= 1)
  {
    if (*(v1 + 16))
    {
      if (a1 <= 1)
      {
        if (a1)
        {
          return v1[1];
        }

        return v2;
      }

      goto LABEL_14;
    }

    if (!a1)
    {
      return v2;
    }

    __break(1u);
  }

  if (v3 == 2)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(v2 + 16) > a1)
      {
        return *(v2 + 8 * a1 + 32);
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  _StringGuts.grow(_:)(33);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v5);

  MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181487780);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void static AttributedString.+ infix(_:_:)(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *a1;

  specialized AttributedString.append<A>(_:)(v3);
}

id @objc _NSSwiftURLComponents.user.getter(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void))
{
  v4 = *&a1[OBJC_IVAR____NSSwiftURLComponents_lock];
  v5 = a1;
  os_unfair_lock_lock((v4 + 172));
  v6 = *(v4 + 128);
  v30 = *(v4 + 112);
  v31 = v6;
  v32[0] = *(v4 + 144);
  *(v32 + 10) = *(v4 + 154);
  v7 = *(v4 + 64);
  v26 = *(v4 + 48);
  v27 = v7;
  v8 = *(v4 + 96);
  v28 = *(v4 + 80);
  v29 = v8;
  v9 = *(v4 + 32);
  v24 = *(v4 + 16);
  v25 = v9;
  outlined init with copy of URLComponents(&v24, v22);
  os_unfair_lock_unlock((v4 + 172));
  v22[6] = v30;
  v22[7] = v31;
  v23[0] = v32[0];
  *(v23 + 10) = *(v32 + 10);
  a3(v10, v11, v12, v13, v14, v15, v16, v17, v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1));
  v19 = v18;
  outlined destroy of URLComponents(&v24);

  if (v19)
  {
    v20 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t closure #1 in _NSSwiftURLComponents.query.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 15) = 0;
  if (!a3)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v22 = a2;
    v23 = a3;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v10 = String._bridgeToObjectiveCImpl()();

    v11 = [v10 _fastCharacterContents];
    v12 = v10;
    if (v11)
    {
      StringProtocol._ephemeralString.getter();
      v13 = String._bridgeToObjectiveCImpl()();

      v14 = [v13 length];
      swift_unknownObjectRelease();
      v8 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v11, v14, 0x40u, 0);
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = specialized Sequence.allSatisfy(_:)(a2, a3, 64);
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_8:

    *(a1 + 120) = a2;
    *(a1 + 128) = a3;
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a3) & 0xF;
    v22 = a2;
    v23 = a3 & 0xFFFFFFFFFFFFFFLL;
    v6 = &v22;
  }

  else if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = _StringObject.sharedUTF8.getter();
  }

  v8 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 0x40u, 0);
  if (v8)
  {
    goto LABEL_8;
  }

LABEL_11:
  v15 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v15 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v22 = a2;
    v23 = a3;
    MEMORY[0x1EEE9AC00](v8);
    v20[2] = &v22;
    v21 = 64;

    v16 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v20, a2, a3);
    if (!v17)
    {
      v16 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(a2, a3, 0x40u, 0);
    }

    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  *(a1 + 120) = v18;
  *(a1 + 128) = v19;
  return result;
}

uint64_t NSTimer.TimerPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v73 = type metadata accessor for CombineIdentifier();
  v9 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 16);
  v74 = a1;
  v19(v17, a1, a2, v15);
  v72 = a3;
  v20 = type metadata accessor for NSTimer.TimerPublisher.Inner();
  swift_allocObject();

  v21 = specialized NSTimer.TimerPublisher.Inner.init(_:parent:)(v17);

  v71 = *(v5 + 72);
  os_unfair_lock_lock(v71);
  swift_getWitnessTable();
  CustomCombineIdentifierConvertible<>.combineIdentifier.getter();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75[0] = *(v5 + 64);
  v23 = v75[0];
  *(v5 + 64) = 0x8000000000000000;
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  v26 = *(v23 + 16);
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v24;
  v29 = *(v23 + 24);
  v70 = a2;
  if (v29 >= v28)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v32 = v9;
      if (v24)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }

LABEL_10:
    v61 = v25;
    v62 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7Combine0C10IdentifierVSo7NSTimerC10FoundationE14TimerPublisherC4SideVGMd);
    v68 = static _DictionaryStorage.copy(original:)();
    if (*(v23 + 16))
    {
      v35 = (v68 + 64);
      v36 = (v23 + 64);
      v37 = ((1 << *(v68 + 32)) + 63) >> 6;
      v60 = v23 + 64;
      if (v68 != v23 || v35 >= &v36[8 * v37])
      {
        memmove(v35, v36, 8 * v37);
      }

      v38 = 0;
      *(v68 + 16) = *(v23 + 16);
      v39 = 1 << *(v23 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v41 = v40 & *(v23 + 64);
      v42 = (v39 + 63) >> 6;
      v64 = v9 + 32;
      v65 = v9 + 16;
      v63 = v42;
      if (v41)
      {
        do
        {
          v43 = __clz(__rbit64(v41));
          v67 = (v41 - 1) & v41;
LABEL_23:
          v46 = v43 | (v38 << 6);
          v47 = *(v9 + 72) * v46;
          (*(v9 + 16))(v69, *(v23 + 48) + v47, v73);
          v48 = 16 * v46;
          v49 = v68;
          v50 = *(v68 + 48);
          v51 = *(v9 + 32);
          v66 = *(*(v23 + 56) + v48);
          v52 = v48;
          v51(v50 + v47, v69, v73);
          *(*(v49 + 56) + v52) = v66;

          v42 = v63;
          v41 = v67;
        }

        while (v67);
      }

      v44 = v38;
      while (1)
      {
        v38 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v38 >= v42)
        {
          goto LABEL_25;
        }

        v45 = *(v60 + 8 * v38);
        ++v44;
        if (v45)
        {
          v43 = __clz(__rbit64(v45));
          v67 = (v45 - 1) & v45;
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_25:

    v32 = v9;
    v25 = v61;
    v21 = v62;
    v23 = v68;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_26:
    v53 = v69;
    v54 = v13;
    v34 = v73;
    v55 = v13;
    v56 = v21;
    v57 = v25;
    (*(v32 + 16))(v69, v54, v73);
    v58 = v57;
    v21 = v56;
    v13 = v55;
    specialized _NativeDictionary._insert(at:key:value:)(v58, v53, partial apply for implicit closure #2 in implicit closure #1 in NSTimer.TimerPublisher.Side.init<A>(_:), v21, v23);
    goto LABEL_27;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
  v23 = v75[0];
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  if ((v4 & 1) == (v31 & 1))
  {
    v25 = v30;
    v32 = v9;
    if ((v4 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_8:
    v33 = (*(v23 + 56) + 16 * v25);
    *v33 = partial apply for implicit closure #2 in implicit closure #1 in NSTimer.TimerPublisher.Side.init<A>(_:);
    v33[1] = v21;

    v34 = v73;
LABEL_27:
    (*(v32 + 8))(v13, v34);
    *(v5 + 64) = v23;
    os_unfair_lock_unlock(v71);
    v75[3] = v20;
    v75[4] = swift_getWitnessTable();
    v75[0] = v21;
    dispatch thunk of Subscriber.receive(subscription:)();
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t type metadata completion function for NSTimer.TimerPublisher.Inner()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized NSTimer.TimerPublisher.Inner.init(_:parent:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v5(v1 + *(*v1 + 96), 1, 1, v3);
  v6 = *(*v1 + 104);
  *(v1 + v6) = static Subscribers.Demand.none.getter();
  swift_weakInit();
  v7 = *(*v1 + 120);
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(v1 + v7) = v8;
  v9 = *(*v1 + 96);
  v10 = type metadata accessor for Optional();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  (*(v4 + 32))(v1 + v9, a1, v3);
  v5(v1 + v9, 0, 1, v3);
  swift_weakAssign();
  return v1;
}

uint64_t lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void NSTimer.TimerPublisher.Inner.request(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = *(v1 + *(v3 + 120));
  os_unfair_lock_lock(v9);
  (*(v6 + 16))(v8, v1 + *(*v1 + 96), v5);
  LODWORD(v4) = (*(*(v4 - 8) + 48))(v8, 1, v4);
  (*(v6 + 8))(v8, v5);
  if (v4 == 1)
  {
    goto LABEL_11;
  }

  v10 = *(*v1 + 104);
  v11 = *(v1 + v10);
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
    goto LABEL_11;
  }

  static Subscribers.Demand.unlimited.getter();
  v12 = static Subscribers.Demand.== infix(_:_:)();
  v13 = static Subscribers.Demand.unlimited.getter();
  if (v12)
  {
LABEL_10:
    *(v1 + v10) = v13;
LABEL_11:
    os_unfair_lock_unlock(v9);
    return;
  }

  if (static Subscribers.Demand.== infix(_:_:)())
  {
    goto LABEL_8;
  }

  if ((v11 | a1) < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11 + a1;
  if (__OFADD__(v11, a1))
  {
LABEL_8:
    v13 = static Subscribers.Demand.unlimited.getter();
    goto LABEL_10;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

unint64_t NSTimer.TimerPublisher.connect()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for implicit closure #2 in implicit closure #1 in NSTimer.TimerPublisher.connect();
  *(v4 + 24) = v1;
  v9[4] = partial apply for closure #1 in NSTimer.TimerPublisher.connect();
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v9[3] = &block_descriptor_23;
  v5 = _Block_copy(v9);
  v6 = objc_opt_self();
  swift_retain_n();
  v7 = [v6 timerWithTimeInterval:1 repeats:v5 block:v3];
  _Block_release(v5);

  [*(v1 + 40) addTimer:v7 forMode:*(v1 + 48)];
  a1[3] = &unk_1EEEF6DD0;
  result = lazy protocol witness table accessor for type CancellableTimer #1 in NSTimer.TimerPublisher.connect() and conformance CancellableTimer #1 in NSTimer.TimerPublisher.connect()();
  a1[4] = result;
  *a1 = v7;
  a1[1] = v1;
  return result;
}

uint64_t sub_180A08B80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

BOOL _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA46450LL6buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(_WORD *a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    if (!a1 || !a2)
    {
      return 1;
    }

    v6 = 2 * a2;
    while (1)
    {
      v7 = *a1;
      if (v7 > 0x7F)
      {
        return 0;
      }

      v8 = *a1;
      if (v8 > 0x2A)
      {
        if (*a1 <= 0x2Cu)
        {
          if (v8 == 43)
          {
            if ((a3 & 0xF7) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          }

          if (v8 == 44)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v8 == 45 || v8 == 46)
          {
            goto LABEL_51;
          }

          if (v8 == 47)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v9 = a3 & 0xF6;
        if (*a1 > 0x26u || (v9 = a3 & 0xF6, v8 == 33) || (v9 = a3 & 0xF6, v8 == 36) || (v9 = a3 & 0x76, v8 == 38))
        {
          if (!v9)
          {
            return 0;
          }

          goto LABEL_9;
        }
      }

      if ((v7 - 58) > 0xF5u)
      {
        goto LABEL_51;
      }

      v10 = *a1;
      if (v10 <= 0x3C)
      {
        if (v10 == 58)
        {
          if ((a3 & 0xD2) == 0)
          {
            return 0;
          }

          goto LABEL_9;
        }

        if (v10 == 59)
        {
LABEL_25:
          if ((a3 & 0xF6) == 0)
          {
            return 0;
          }

          goto LABEL_9;
        }
      }

      else
      {
        switch(v10)
        {
          case '=':
            if ((a3 & 0x76) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case '?':
            if (a3 < 0x40u)
            {
              return 0;
            }

            goto LABEL_9;
          case '@':
LABEL_21:
            if (a3 < 0x10u)
            {
              return 0;
            }

            goto LABEL_9;
        }
      }

      if ((v7 - 91) > 0xE5u)
      {
        goto LABEL_51;
      }

      if (*a1 == 95)
      {
        if (a3 < 2u)
        {
          return 0;
        }

        goto LABEL_9;
      }

      if ((v7 - 123) > 0xE5u)
      {
LABEL_51:
        if (!a3)
        {
          return 0;
        }

        goto LABEL_9;
      }

      if (*a1 != 126 || a3 < 2u)
      {
        return 0;
      }

LABEL_9:
      ++a1;
      v6 -= 2;
      if (!v6)
      {
        return 1;
      }
    }
  }

  if (a1 && a2)
  {
    v4 = 0;
    v5 = 2 * a2;
    while (1)
    {
      v12 = *a1;
      if (v12 >= 0x80)
      {
        return 0;
      }

      if (v12 != 37)
      {
        break;
      }

      if (v4)
      {
        return 0;
      }

      v4 = 2;
LABEL_55:
      ++a1;
      v5 -= 2;
      if (!v5)
      {
        return v4 == 0;
      }
    }

    v13 = *a1;
    if (v13 > 0x29)
    {
      if (*a1 > 0x2Cu)
      {
        if (v13 == 45 || v13 == 46)
        {
          goto LABEL_104;
        }

        if (v13 == 47)
        {
          goto LABEL_80;
        }
      }

      else
      {
        switch(v13)
        {
          case '*':
            goto LABEL_75;
          case '+':
            if ((a3 & 0xF7) == 0)
            {
              return 0;
            }

            goto LABEL_105;
          case ',':
            goto LABEL_75;
        }
      }
    }

    else if (*a1 > 0x26u)
    {
      if (v13 == 39 || v13 == 40 || v13 == 41)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v13 == 33 || v13 == 36)
      {
        goto LABEL_75;
      }

      if (v13 == 38)
      {
        goto LABEL_65;
      }
    }

    if ((v12 - 58) <= 0xF5u)
    {
      v14 = *a1;
      if (v14 > 0x3C)
      {
        if (v14 == 61)
        {
LABEL_65:
          if ((a3 & 0x76) == 0)
          {
            return 0;
          }

          goto LABEL_105;
        }

        if (v14 == 63)
        {
          if (a3 < 0x40u)
          {
            return 0;
          }

          goto LABEL_105;
        }

        if (v14 != 64)
        {
LABEL_92:
          if ((v12 - 91) <= 0xE5u)
          {
            if (*a1 == 95)
            {
              if (a3 < 2u)
              {
                return 0;
              }

              goto LABEL_105;
            }

            if ((v12 - 123) <= 0xE5u)
            {
              if (*a1 != 126 || a3 < 2u)
              {
                return 0;
              }

              goto LABEL_105;
            }
          }

          goto LABEL_104;
        }

LABEL_80:
        if (a3 < 0x10u)
        {
          return 0;
        }

        goto LABEL_105;
      }

      if (v14 == 58)
      {
        if ((a3 & 0xD2) == 0)
        {
          return 0;
        }

        goto LABEL_105;
      }

      if (v14 != 59)
      {
        goto LABEL_92;
      }

LABEL_75:
      if ((a3 & 0xF6) == 0)
      {
        return 0;
      }

      goto LABEL_105;
    }

LABEL_104:
    if (!a3)
    {
      return 0;
    }

LABEL_105:
    if (v4-- < 1)
    {
      v4 = 0;
    }

    else if ((v12 - 58) <= 0xF5u)
    {
      v16 = *a1 - 65;
      if (v16 > 0x25 || ((1 << v16) & 0x3F0000003FLL) == 0)
      {
        return 0;
      }
    }

    goto LABEL_55;
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type CancellableTimer #1 in NSTimer.TimerPublisher.connect() and conformance CancellableTimer #1 in NSTimer.TimerPublisher.connect()()
{
  result = lazy protocol witness table cache variable for type CancellableTimer #1 in NSTimer.TimerPublisher.connect() and conformance CancellableTimer #1 in NSTimer.TimerPublisher.connect();
  if (!lazy protocol witness table cache variable for type CancellableTimer #1 in NSTimer.TimerPublisher.connect() and conformance CancellableTimer #1 in NSTimer.TimerPublisher.connect())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CancellableTimer #1 in NSTimer.TimerPublisher.connect() and conformance CancellableTimer #1 in NSTimer.TimerPublisher.connect());
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PredicateExpressions.ComparisonOperator.CodingKeys()
{
  v1 = 0x5472657461657267;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return 0x6E6168547373656CLL;
  }

  else
  {
    return v1;
  }
}

uint64_t storeEnumTagSinglePayload for TermOfAddress.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int_optional __swiftcall DateComponents.value(for:)(Foundation::Calendar::Component a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  switch(v2)
  {
    case 1:
      v4 = *(v1 + 56);
      v3 = *(v1 + 48);
      break;
    case 2:
      v4 = *(v1 + 72);
      v3 = *(v1 + 64);
      break;
    case 3:
      v4 = *(v1 + 88);
      v3 = *(v1 + 80);
      break;
    case 4:
      v4 = *(v1 + 120);
      v3 = *(v1 + 112);
      break;
    case 5:
      v4 = *(v1 + 136);
      v3 = *(v1 + 128);
      break;
    case 6:
      v4 = *(v1 + 152);
      v3 = *(v1 + 144);
      break;
    case 7:
      v4 = *(v1 + 184);
      v3 = *(v1 + 176);
      break;
    case 8:
      v4 = *(v1 + 200);
      v3 = *(v1 + 192);
      break;
    case 9:
      v4 = *(v1 + 216);
      v3 = *(v1 + 208);
      break;
    case 10:
      v4 = *(v1 + 248);
      v3 = *(v1 + 240);
      break;
    case 11:
      v4 = *(v1 + 264);
      v3 = *(v1 + 256);
      break;
    case 12:
      v4 = *(v1 + 280);
      v3 = *(v1 + 272);
      break;
    case 13:
      v4 = *(v1 + 168);
      v3 = *(v1 + 160);
      break;
    case 14:
    case 15:
    case 16:
    case 17:
      v3 = 0;
      v4 = 1;
      break;
    case 18:
      v4 = *(v1 + 104);
      v3 = *(v1 + 96);
      break;
    default:
      break;
  }

  result.value = v3;
  result.is_nil = v4;
  return result;
}

void protocol witness for Collection.endIndex.getter in conformance IndexPath(uint64_t *a1@<X8>)
{
  if (v1[16] > 1u)
  {
    if (v1[16] == 2)
    {
      *a1 = *(*v1 + 16);
    }

    else
    {
      *a1 = 0;
    }
  }

  else
  {
    if (v1[16])
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    *a1 = v2;
  }
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance UInt64()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithUnsignedLongLong_];
}

uint64_t protocol witness for _LocaleProtocol.numberingSystem.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 312))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

NSValue __swiftcall CGRect._bridgeToObjectiveC()()
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = v0;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  type metadata accessor for CGRect(0);
  return [objc_allocWithZone(NSValue) initWithBytes:&v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
}

NSValue __swiftcall CGPoint._bridgeToObjectiveC()()
{

  return CGPoint._bridgeToObjectiveC()(type metadata accessor for CGPoint, "{CGPoint=dd}", v0, v1);
}

uint64_t _NSGetUnsignedInt2(void *a1)
{
  v1 = (*a1)++;
  v2 = *v1;
  if (v2 < 0)
  {
    return v2 & 0x7F | (_NSGetUnsignedInt2() << 7);
  }

  return v2;
}

uint64_t IndexPath.appending(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *v2;
  if (*(v2 + 16) > 1u)
  {
    if (*(v2 + 16) == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 32) = v3;

      result = specialized Array.append<A>(contentsOf:)(inited);
      v3 = 0;
      v6 = 2;
      goto LABEL_9;
    }

    v6 = 0;
    v5 = result;
LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }

  if (*(v2 + 16))
  {
    v8 = *(v2 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    result = swift_allocObject();
    *(result + 16) = xmmword_18121D6B0;
    *(result + 32) = v5;
    *(result + 40) = v8;
    *(result + 48) = v3;
    v6 = 2;
    v5 = result;
    goto LABEL_8;
  }

  v6 = 1;
LABEL_9:
  *a2 = v5;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UInt8(void *a1, _BYTE *a2)
{
  v3 = [a1 unsignedCharValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedChar_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    a2[1] = 0;
  }

  return v5 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance Int16(void *a1, uint64_t a2)
{
  v3 = [a1 shortValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithShort_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    *(a2 + 2) = 0;
  }

  return v5 & 1;
}

BOOL specialized static Float._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  [a1 floatValue];
  if ((~v4 & 0x7F800000) != 0 || (v4 & 0x7FFFFF) == 0)
  {
    v6 = specialized Float.init(exactly:)(a1);
    v7 = v6;
    v9 = (v6 & 0x100000000) >> 32;
    result = (v6 & 0x100000000) == 0;
    v8 = v7;
  }

  else
  {
    [a1 floatValue];
    LOBYTE(v9) = 0;
    result = 1;
  }

  *a2 = v8;
  *(a2 + 4) = v9 & 1;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance Int8(void *a1, _BYTE *a2)
{
  v3 = [a1 charValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithChar_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    a2[1] = 0;
  }

  return v5 & 1;
}

unint64_t specialized Float.init(exactly:)(void *a1)
{
  v2 = *[a1 objCType] - 73;
  if (v2 > 0x28)
  {
LABEL_9:
    [a1 doubleValue];
    v4 = v7;
    if (v7 == v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    v6 = 0;
    v5 = 1;
    return v6 | (v5 << 32);
  }

  if (((1 << v2) & 0x109) == 0)
  {
    if (((1 << v2) & 0x10900000000) != 0)
    {
      v3 = _sSf7exactlySfSgx_tcSzRzlufCs5Int64V_Tt0g5([a1 longLongValue]);
      if ((v3 & 0x100000000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v3 = _sSf7exactlySfSgx_tcSzRzlufCs6UInt64V_Tt0g5([a1 unsignedLongLongValue]);
  if ((v3 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v4 = *&v3;
LABEL_8:
  v5 = 0;
  v6 = LODWORD(v4);
  return v6 | (v5 << 32);
}

uint64_t storeEnumTagSinglePayload for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t specialized _parseInteger<A>(_:)(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_28;
  }

  v2 = *a1;
  if (v2 == 43)
  {
    if (a2 >= 2)
    {
      v10 = a1 + 1;
      if (a1 + 1 < &a1[a2])
      {
        LOBYTE(v11) = 0;
        v12 = a2 - 1;
        while (1)
        {
          v13 = *v10 - 48;
          if (v13 > 9)
          {
            break;
          }

          v7 = 0;
          v14 = 10 * v11;
          v9 = 1;
          if ((v14 & 0xF00) == 0)
          {
            v11 = (v14 & 0xFE) + v13;
            if (((v11 >> 8) & 1) == 0)
            {
              v9 = 0;
              ++v10;
              v7 = v11;
              if (--v12)
              {
                continue;
              }
            }
          }

          return v7 | (v9 << 8);
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v2 != 45)
  {
    if (a2 >= 1)
    {
      LOBYTE(v15) = 0;
      v16 = &a1[a2];
      while (1)
      {
        v17 = *a1 - 48;
        if (v17 > 9)
        {
          break;
        }

        v7 = 0;
        v18 = 10 * v15;
        v9 = 1;
        if ((v18 & 0xF00) == 0)
        {
          v15 = (v18 & 0xFE) + v17;
          if (((v15 >> 8) & 1) == 0)
          {
            v9 = 0;
            ++a1;
            v7 = v15;
            if (a1 < v16)
            {
              continue;
            }
          }
        }

        return v7 | (v9 << 8);
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (a2 < 2)
  {
LABEL_28:
    v7 = 0;
    v9 = 1;
    return v7 | (v9 << 8);
  }

  v3 = a1 + 1;
  if (a1 + 1 < &a1[a2])
  {
    LOBYTE(v4) = 0;
    v5 = a2 - 1;
    while (1)
    {
      v6 = *v3 - 48;
      if (v6 > 9)
      {
        break;
      }

      v7 = 0;
      v8 = 10 * v4;
      v4 = (10 * v4) - v6;
      v9 = 1;
      if ((v8 & 0xF00) == 0 && (v4 & 0xFFFFFF00) == 0)
      {
        v9 = 0;
        ++v3;
        v7 = v4;
        if (--v5)
        {
          continue;
        }
      }

      return v7 | (v9 << 8);
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = 0;
  v9 = 0;
  return v7 | (v9 << 8);
}

{
  if (!a2)
  {
    goto LABEL_28;
  }

  v2 = *a1;
  if (v2 == 43)
  {
    if (a2 >= 2)
    {
      v12 = a1 + 1;
      if (a1 + 1 < &a1[a2])
      {
        LOBYTE(v13) = 0;
        v14 = a2 - 1;
        while (1)
        {
          v15 = *v12 - 48;
          if (v15 > 9)
          {
            break;
          }

          v7 = 0;
          v16 = 10 * v13;
          v17 = (10 * v13);
          v13 = v17 + v15;
          v18 = v13 != (v17 + v15);
          v11 = 1;
          if (v17 == v16 && !v18)
          {
            v11 = 0;
            ++v12;
            v7 = v13;
            if (--v14)
            {
              continue;
            }
          }

          return v7 | (v11 << 8);
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v2 != 45)
  {
    if (a2 >= 1)
    {
      LOBYTE(v19) = 0;
      v20 = &a1[a2];
      while (1)
      {
        v21 = *a1 - 48;
        if (v21 > 9)
        {
          break;
        }

        v7 = 0;
        v22 = 10 * v19;
        v23 = (10 * v19);
        v19 = v23 + v21;
        v24 = v19 != (v23 + v21);
        v11 = 1;
        if (v23 == v22 && !v24)
        {
          v11 = 0;
          ++a1;
          v7 = v19;
          if (a1 < v20)
          {
            continue;
          }
        }

        return v7 | (v11 << 8);
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (a2 < 2)
  {
LABEL_28:
    v7 = 0;
    v11 = 1;
    return v7 | (v11 << 8);
  }

  v3 = a1 + 1;
  if (a1 + 1 < &a1[a2])
  {
    LOBYTE(v4) = 0;
    v5 = a2 - 1;
    while (1)
    {
      v6 = *v3 - 48;
      if (v6 > 9)
      {
        break;
      }

      v7 = 0;
      v8 = 10 * v4;
      v9 = (10 * v4);
      v4 = v9 - v6;
      v10 = v4 != (v9 - v6);
      v11 = 1;
      if (v9 == v8 && !v10)
      {
        v11 = 0;
        ++v3;
        v7 = v4;
        if (--v5)
        {
          continue;
        }
      }

      return v7 | (v11 << 8);
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = 0;
  v11 = 0;
  return v7 | (v11 << 8);
}

{
  if (!a2)
  {
    goto LABEL_28;
  }

  v2 = *a1;
  if (v2 == 43)
  {
    if (a2 >= 2)
    {
      v10 = a1 + 1;
      if (a1 + 1 < &a1[a2])
      {
        LOWORD(v11) = 0;
        v12 = a2 - 1;
        while (1)
        {
          v13 = *v10 - 48;
          if (v13 > 9)
          {
            break;
          }

          v7 = 0;
          v14 = 10 * v11;
          v9 = 1;
          if ((v14 & 0xF0000) == 0)
          {
            v11 = (v14 & 0xFFFE) + v13;
            if ((v11 & 0x10000) == 0)
            {
              v9 = 0;
              ++v10;
              v7 = v11;
              if (--v12)
              {
                continue;
              }
            }
          }

          return v7 | (v9 << 16);
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v2 != 45)
  {
    if (a2 >= 1)
    {
      LOWORD(v15) = 0;
      v16 = &a1[a2];
      while (1)
      {
        v17 = *a1 - 48;
        if (v17 > 9)
        {
          break;
        }

        v7 = 0;
        v18 = 10 * v15;
        v9 = 1;
        if ((v18 & 0xF0000) == 0)
        {
          v15 = (v18 & 0xFFFE) + v17;
          if ((v15 & 0x10000) == 0)
          {
            v9 = 0;
            ++a1;
            v7 = v15;
            if (a1 < v16)
            {
              continue;
            }
          }
        }

        return v7 | (v9 << 16);
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (a2 < 2)
  {
LABEL_28:
    v7 = 0;
    v9 = 1;
    return v7 | (v9 << 16);
  }

  v3 = a1 + 1;
  if (a1 + 1 < &a1[a2])
  {
    LOWORD(v4) = 0;
    v5 = a2 - 1;
    while (1)
    {
      v6 = *v3 - 48;
      if (v6 > 9)
      {
        break;
      }

      v7 = 0;
      v8 = 10 * v4;
      v4 = (10 * v4) - v6;
      v9 = 1;
      if ((v8 & 0xF0000) == 0 && (v4 & 0xFFFF0000) == 0)
      {
        v9 = 0;
        ++v3;
        v7 = v4;
        if (--v5)
        {
          continue;
        }
      }

      return v7 | (v9 << 16);
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = 0;
  v9 = 0;
  return v7 | (v9 << 16);
}

{
  if (!a2)
  {
    goto LABEL_28;
  }

  v2 = *a1;
  if (v2 == 43)
  {
    if (a2 >= 2)
    {
      v12 = a1 + 1;
      if (a1 + 1 < &a1[a2])
      {
        LOWORD(v13) = 0;
        v14 = a2 - 1;
        while (1)
        {
          v15 = *v12 - 48;
          if (v15 > 9)
          {
            break;
          }

          v7 = 0;
          v16 = 10 * v13;
          v17 = (10 * v13);
          v13 = v17 + v15;
          v18 = v13 != (v17 + v15);
          v11 = 1;
          if (v17 == v16 && !v18)
          {
            v11 = 0;
            ++v12;
            v7 = v13;
            if (--v14)
            {
              continue;
            }
          }

          return v7 | (v11 << 16);
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v2 != 45)
  {
    if (a2 >= 1)
    {
      LOWORD(v19) = 0;
      v20 = &a1[a2];
      while (1)
      {
        v21 = *a1 - 48;
        if (v21 > 9)
        {
          break;
        }

        v7 = 0;
        v22 = 10 * v19;
        v23 = (10 * v19);
        v19 = v23 + v21;
        v24 = v19 != (v23 + v21);
        v11 = 1;
        if (v23 == v22 && !v24)
        {
          v11 = 0;
          ++a1;
          v7 = v19;
          if (a1 < v20)
          {
            continue;
          }
        }

        return v7 | (v11 << 16);
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (a2 < 2)
  {
LABEL_28:
    v7 = 0;
    v11 = 1;
    return v7 | (v11 << 16);
  }

  v3 = a1 + 1;
  if (a1 + 1 < &a1[a2])
  {
    LOWORD(v4) = 0;
    v5 = a2 - 1;
    while (1)
    {
      v6 = *v3 - 48;
      if (v6 > 9)
      {
        break;
      }

      v7 = 0;
      v8 = 10 * v4;
      v9 = (10 * v4);
      v4 = v9 - v6;
      v10 = v4 != (v9 - v6);
      v11 = 1;
      if (v9 == v8 && !v10)
      {
        v11 = 0;
        ++v3;
        v7 = v4;
        if (--v5)
        {
          continue;
        }
      }

      return v7 | (v11 << 16);
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = 0;
  v11 = 0;
  return v7 | (v11 << 16);
}

{
  if (!a2)
  {
    return 0;
  }

  v2 = *a1;
  if (v2 == 43)
  {
    if (a2 >= 2)
    {
      v21 = a1 + 1;
      if (a1 + 1 < &a1[a2])
      {
        v4 = 0;
        v22 = 0;
        v23 = a2 - 1;
        while (1)
        {
          v24 = *v21 - 48;
          if (v24 > 9)
          {
            break;
          }

          if ((v22 & 0x8000000000000000) != 0)
          {
            v9 = v4 == 0;
            v29 = -v4;
            v30 = -(v22 + !v9);
            v31 = !is_mul_ok(v30, 0xAuLL);
            v9 = __CFADD__((v29 * 0xAuLL) >> 64, 10 * v30);
            v32 = (__PAIR128__(v30, v29) * 0xA) >> 64;
            if (v9)
            {
              v31 = 1;
            }

            if (v31)
            {
              return 0;
            }

            v33 = 10 * v29;
            v9 = v33 == 0;
            v27 = -v33;
            v26 = -(v32 + !v9);
            LOBYTE(v28) = v27 != 0;
          }

          else
          {
            v25 = !is_mul_ok(v22, 0xAuLL);
            v9 = __CFADD__((v4 * 0xAuLL) >> 64, 10 * v22);
            v26 = (__PAIR128__(v22, v4) * 0xA) >> 64;
            if (v9)
            {
              v25 = 1;
            }

            if (v25)
            {
              return 0;
            }

            v27 = 10 * v4;
            v28 = v26 >> 63;
          }

          result = 0;
          v19 = __OFADD__(__CFADD__(v27, v24), v26);
          v22 = (__PAIR128__(v26, v27) + v24) >> 64;
          v4 = v27 + v24;
          v34 = v19;
          if (v28 & 1) != 0 || (v34)
          {
            return result;
          }

          ++v21;
          if (!--v23)
          {
            return v4;
          }
        }

        return 0;
      }

      return 0;
    }
  }

  else
  {
    if (v2 != 45)
    {
      if (a2 >= 1)
      {
        v35 = 0;
        v36 = 0;
        v37 = &a1[a2];
        while (1)
        {
          v38 = *a1 - 48;
          if (v38 > 9)
          {
            break;
          }

          if ((v36 & 0x8000000000000000) != 0)
          {
            v9 = v35 == 0;
            v44 = -v35;
            v45 = -(v36 + !v9);
            v46 = !is_mul_ok(v45, 0xAuLL);
            v9 = __CFADD__((v44 * 0xAuLL) >> 64, 10 * v45);
            v47 = (__PAIR128__(v45, v44) * 0xA) >> 64;
            if (v9)
            {
              v46 = 1;
            }

            if (v46)
            {
              return 0;
            }

            v41 = a1;
            v48 = 10 * v44;
            v9 = v48 == 0;
            v42 = -v48;
            v40 = -(v47 + !v9);
            LOBYTE(v43) = v42 != 0;
          }

          else
          {
            v39 = !is_mul_ok(v36, 0xAuLL);
            v9 = __CFADD__((v35 * 0xAuLL) >> 64, 10 * v36);
            v40 = (__PAIR128__(v36, v35) * 0xA) >> 64;
            if (v9)
            {
              v39 = 1;
            }

            if (v39)
            {
              return 0;
            }

            v41 = a1;
            v42 = 10 * v35;
            v43 = v40 >> 63;
          }

          result = 0;
          v19 = __OFADD__(__CFADD__(v42, v38), v40);
          v49 = v42 + v38;
          v36 = (__PAIR128__(v40, v42) + v38) >> 64;
          v35 = v49;
          v50 = v19;
          if (v43 & 1) != 0 || (v50)
          {
            return result;
          }

          a1 = v41 + 1;
          if ((v41 + 1) >= v37)
          {
            return v49;
          }
        }

        return 0;
      }

      return 0;
    }

    if (a2 >= 2)
    {
      v3 = a1 + 1;
      if (a1 + 1 < &a1[a2])
      {
        v4 = 0;
        v5 = 0;
        v6 = a2 - 1;
        while (1)
        {
          v7 = *v3 - 48;
          if (v7 > 9)
          {
            break;
          }

          if ((v5 & 0x8000000000000000) != 0)
          {
            v9 = v4 == 0;
            v13 = -v4;
            v14 = -(v5 + !v9);
            v15 = !is_mul_ok(v14, 0xAuLL);
            v9 = __CFADD__((v13 * 0xAuLL) >> 64, 10 * v14);
            v16 = (__PAIR128__(v14, v13) * 0xA) >> 64;
            if (v9)
            {
              v15 = 1;
            }

            if (v15)
            {
              return 0;
            }

            v17 = 10 * v13;
            v9 = v17 == 0;
            v11 = -v17;
            v10 = -(v16 + !v9);
            LOBYTE(v12) = v11 != 0;
          }

          else
          {
            v8 = !is_mul_ok(v5, 0xAuLL);
            v9 = __CFADD__((v4 * 0xAuLL) >> 64, 10 * v5);
            v10 = (__PAIR128__(v5, v4) * 0xA) >> 64;
            if (v9)
            {
              v8 = 1;
            }

            if (v8)
            {
              return 0;
            }

            v11 = 10 * v4;
            v12 = v10 >> 63;
          }

          result = 0;
          v19 = __OFSUB__(__PAIR128__(v10, v11), v7);
          v5 = (__PAIR128__(v10, v11) - v7) >> 64;
          v4 = v11 - v7;
          v20 = v19;
          if (v12 & 1) != 0 || (v20)
          {
            return result;
          }

          ++v3;
          if (!--v6)
          {
            return v4;
          }
        }

        return 0;
      }

      return 0;
    }
  }

  return 0;
}

{
  if (!a2)
  {
    return 0;
  }

  v2 = *a1;
  if (v2 == 43)
  {
    if (a2 >= 2)
    {
      v15 = a1 + 1;
      if (a1 + 1 < &a1[a2])
      {
        v4 = 0;
        v16 = 0;
        v17 = a2 - 1;
        while (1)
        {
          v18 = *v15 - 48;
          if (v18 > 9)
          {
            break;
          }

          result = 0;
          v19 = !is_mul_ok(v16, 0xAuLL);
          v10 = __CFADD__((v4 * 0xAuLL) >> 64, 10 * v16);
          v20 = (__PAIR128__(v16, v4) * 0xA) >> 64;
          if (v10)
          {
            v19 = 1;
          }

          v21 = 10 * v4;
          v10 = __CFADD__(v21, v18);
          v4 = v21 + v18;
          v22 = v10;
          v10 = __CFADD__(v10, v20);
          v16 = v22 + v20;
          v23 = v10;
          if (v19 || (v23 & 1) != 0)
          {
            return result;
          }

          ++v15;
          if (!--v17)
          {
            return v4;
          }
        }

        return 0;
      }

      return 0;
    }
  }

  else
  {
    if (v2 != 45)
    {
      if (a2 >= 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = &a1[a2];
        while (1)
        {
          v27 = *a1 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = a1;
          result = 0;
          v29 = !is_mul_ok(v25, 0xAuLL);
          v10 = __CFADD__((v24 * 0xAuLL) >> 64, 10 * v25);
          v30 = (__PAIR128__(v25, v24) * 0xA) >> 64;
          if (v10)
          {
            v29 = 1;
          }

          v31 = 10 * v24;
          v10 = __CFADD__(v31, v27);
          v24 = v31 + v27;
          v32 = v10;
          v10 = __CFADD__(v10, v30);
          v25 = v32 + v30;
          v33 = v10;
          if (v29 || (v33 & 1) != 0)
          {
            return result;
          }

          a1 = v28 + 1;
          if ((v28 + 1) >= v26)
          {
            return v24;
          }
        }

        return 0;
      }

      return 0;
    }

    if (a2 >= 2)
    {
      v3 = a1 + 1;
      if (a1 + 1 < &a1[a2])
      {
        v4 = 0;
        v5 = 0;
        v6 = a2 - 1;
        while (1)
        {
          v7 = *v3 - 48;
          if (v7 > 9)
          {
            break;
          }

          result = 0;
          v9 = !is_mul_ok(v5, 0xAuLL);
          v10 = __CFADD__((v4 * 0xAuLL) >> 64, 10 * v5);
          v11 = (__PAIR128__(v5, v4) * 0xA) >> 64;
          if (v10)
          {
            v9 = 1;
          }

          v12 = 10 * v4;
          v10 = v12 >= v7;
          v4 = v12 - v7;
          v13 = v10;
          v10 = v11 >= !v10;
          v5 = v11 - !v13;
          v14 = !v10;
          if (v9 || (v14 & 1) != 0)
          {
            return result;
          }

          ++v3;
          if (!--v6)
          {
            return v4;
          }
        }

        return 0;
      }

      return 0;
    }
  }

  return 0;
}

uint64_t static Data._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined consume of Data?(*a2, *(a2 + 8));
  *a2 = specialized Data.init(referencing:)(a1);
  *(a2 + 8) = v4;
  return 1;
}

id DateInterval.description.getter()
{

  return DateInterval.description.getter();
}

{
  v1 = *v0;
  v2 = v0[1];
  v3 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v4 = [v3 description];

  if (!v4)
  {
    goto LABEL_11;
  }

  isTaggedPointer = _objc_isTaggedPointer(v4);
  v6 = v4;
  v7 = v6;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v6);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_15;
    case 0x16:
      result = [v7 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v14 = String.init(utf8String:)(result);
      if (v15)
      {
LABEL_16:
        v9 = v14;

        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      LOWORD(v36) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v14 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v16)
      {
        [v7 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v9 = v38;
        goto LABEL_21;
      }

      goto LABEL_16;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_22;
  }

LABEL_7:
  LOBYTE(v36) = 0;
  if (__CFStringIsCF())
  {

LABEL_11:
    v9 = 0;
    goto LABEL_22;
  }

  v10 = v7;
  v11 = String.init(_nativeStorage:)();
  if (v12)
  {
    v9 = v11;

    goto LABEL_22;
  }

  if (![v10 length])
  {

    goto LABEL_11;
  }

  v9 = String.init(_cocoaString:)();
LABEL_21:

LABEL_22:
  v39 = v9;
  MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
  v17 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v18 = [v17 description];

  if (!v18)
  {
LABEL_32:
    v26 = 0;
    v25 = 0xE000000000000000;
    goto LABEL_43;
  }

  v19 = _objc_isTaggedPointer(v18);
  v20 = v18;
  v21 = v20;
  if ((v19 & 1) == 0)
  {
    goto LABEL_28;
  }

  v22 = _objc_getTaggedPointerTag(v20);
  if (!v22)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v33 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v34)
    {
      v25 = v34;
      v32 = v33;
    }

    else
    {
      [v21 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v32 = v36;
      v25 = v37;
    }

    goto LABEL_42;
  }

  if (v22 != 22)
  {
    if (v22 == 2)
    {
      MEMORY[0x1EEE9AC00](v22);
      v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v25 = v24;

      v26 = v23;
LABEL_43:
      MEMORY[0x1865CB0E0](v26, v25);

      return v39;
    }

LABEL_28:
    if (__CFStringIsCF())
    {

      goto LABEL_32;
    }

    v27 = v21;
    v28 = String.init(_nativeStorage:)();
    if (v29)
    {
      v25 = v29;
      v30 = v28;

      v26 = v30;
      goto LABEL_43;
    }

    if (![v27 length])
    {

      goto LABEL_32;
    }

    v32 = String.init(_cocoaString:)();
    v25 = v35;
LABEL_42:

    v26 = v32;
    goto LABEL_43;
  }

  result = [v21 UTF8String];
  if (!result)
  {
    goto LABEL_45;
  }

  result = String.init(utf8String:)(result);
  if (v31)
  {
    v32 = result;
    v25 = v31;

    goto LABEL_42;
  }

LABEL_46:
  __break(1u);
  return result;
}

Swift::Void __swiftcall URL.appendPathExtension(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = *v1;
  v6 = v2[1];
  ObjectType = swift_getObjectType();
  (*(v6 + 376))(v9, countAndFlagsBits, object, ObjectType, v6);
  v8 = v9[0];
  if (v9[0])
  {
    v6 = v9[1];
    swift_unknownObjectRelease();
    v5 = v8;
  }

  *v2 = v5;
  v2[1] = v6;
}

uint64_t PropertyListDecoder.userInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  os_unfair_lock_lock(v3 + 4);

  *(v1 + 16) = a1;

  v4 = *(v1 + 24);

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t specialized _PlistDecoder.unwrapData<A>(from:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v28 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = &type metadata for Data;
    if (a6 == -1)
    {
      v20 = _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      v20 = _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v22 = swift_allocObject();
      *(inited + 32) = v22;
      *(v22 + 16) = a3;
      *(v22 + 24) = a4;
      *(v22 + 32) = a5;
      *(v22 + 40) = a6;
      v29 = v20;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    swift_willThrow();
  }

  else
  {
    v23 = v7[3];
    v24 = *(v16 + 64);
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v20 = v24(a1, v23, a2, v27, &type metadata for _CodingKey, v25, v15, v16);
    swift_unknownObjectRelease();
  }

  return v20;
}

uint64_t static PredicateExpressions.build_Disjunction<A, B>(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.Disjunction();
  return (*(*(a4 - 8) + 16))(a5 + *(v8 + 52), a2, a4);
}

float _PlistKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v98 = a2;
  v99 = a7;
  v93 = a4;
  v97 = a3;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Optional();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  swift_getAssociatedTypeWitness();
  v91 = a8;
  v92 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  v90 = a1;
  v94 = a5;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  if (!v97[2])
  {

    goto LABEL_6;
  }

  v77 = v20;
  v32 = v97;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    (*(v95 + 56))(v27, 1, 1, v96);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v90, v93, v94, v99, v45, &_sSfmMd, &_sSfmMR, &_sSfmmMd);
    swift_willThrow();
    return result;
  }

  v36 = v87;
  v37 = v32[7] + *(v87 + 72) * v33;
  v38 = v77;
  v39 = AssociatedTypeWitness;
  (*(v87 + 16))(v77, v37, AssociatedTypeWitness);
  v40 = v86;
  (*(v36 + 32))(v86, v38, v39);
  v41 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v42 = swift_checkMetadataState();
  v43 = v89;
  v41(v40, v42, AssociatedConformanceWitness);
  if (v43)
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
    v47 = v95;
    v46 = v96;
    (*(v95 + 56))(v27, 0, 1, v96);
    v48 = v85;
    (*(v47 + 32))(v85, v27, v46);
    v49 = v83;
    v50 = *(v83 + 16);
    v51 = v84;
    v52 = v94;
    v50(v84, v90, v94);
    (*(v49 + 56))(v51, 0, 1, v52);
    v54 = v91;
    v53 = v92;
    if ((*(v91 + 40))(v48, v92, v91))
    {
      v92 = v50;
      v98 = type metadata accessor for DecodingError();
      swift_allocError();
      v97 = v55;
      *v55 = MEMORY[0x1E69E6448];
      v56 = v52;
      v57 = v81;
      v58 = *(v81 + 16);
      v59 = v80;
      v60 = v82;
      v58();
      v61 = v79;
      (v58)(v79, v59, v60);
      v62 = v61;
      v63 = v83;
      if ((*(v83 + 48))(v61, 1, v56) == 1)
      {
        v64 = *(v57 + 8);
        v64(v61, v60);
        _CodingPathNode.path.getter(v93);
        v64(v59, v60);
      }

      else
      {
        v70 = v78;
        (*(v63 + 32))(v78, v62, v56);
        v71 = _CodingPathNode.path.getter(v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v72 = v63;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v74 = v99;
        *(inited + 56) = v56;
        *(inited + 64) = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v92(boxed_opaque_existential_0, v70, v56);
        v100 = v71;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v72 + 8))(v70, v56);
        v64 = *(v57 + 8);
        v64(v80, v60);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v76 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v98 - 8) + 104))(v76, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v64(v84, v60);
      (*(v95 + 8))(v85, v96);
    }

    else
    {
      v65 = *(v98 + 24);
      v66 = *(v54 + 80);
      v67 = lazy protocol witness table accessor for type Float and conformance Float();
      swift_unknownObjectRetain();
      v66(&v101, v48, v65, v93, v51, MEMORY[0x1E69E6448], v52, v67, v99, v53, v54);
      v68 = v48;
      v69 = v81;
      swift_unknownObjectRelease();
      (*(v69 + 8))(v51, v82);
      (*(v95 + 8))(v68, v96);
      return *&v101;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

uint64_t Locale.measurementSystem.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 296))(ObjectType, v1);
}

uint64_t static Locale.MeasurementSystem.metric.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for metric != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B00F8;
  v2 = xmmword_1EA7B0100;
  *a1 = static Locale.MeasurementSystem.metric;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t static Locale.MeasurementSystem.us.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for us != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B2448;
  v2 = xmmword_1EA7B2450;
  *a1 = static Locale.MeasurementSystem.us;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t Locale.hourCycle.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 360))(ObjectType, v1);
}

BOOL specialized static CGPoint._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for CGPoint(0);
  v5 = strcmp(v4, "{CGPoint=dd}");
  *a2 = 0;
  *(a2 + 8) = 0;
  if (v5)
  {
    *(a2 + 16) = 1;
  }

  else
  {
    *(a2 + 16) = 0;
    [a1 getValue:a2 size:16];
  }

  return v5 == 0;
}

unint64_t lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys()
{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys);
  }

  return result;
}

uint64_t _LocaleAutoupdating.firstDayOfWeek.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static LocaleCache.cache;
  v9 = *(&static LocaleCache.cache + 8);
  v1 = *(&static LocaleCache.cache + 1);
  os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  if (!v3)
  {
    *&v11[0] = v0;
    *(v11 + 8) = v9;
    LocaleCache.preferences()(v13);
    v5 = v4;
    type metadata accessor for _LocaleICU();
    v2 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
    v11[6] = v13[6];
    v12[0] = v14[0];
    *(v12 + 12) = *(v14 + 12);
    v11[2] = v13[2];
    v11[3] = v13[3];
    v11[4] = v13[4];
    v11[5] = v13[5];
    v11[0] = v13[0];
    v11[1] = v13[1];
    swift_allocObject();
    outlined init with copy of LocalePreferences(v13, &v10);
    v6 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v11, 0);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      os_unfair_lock_lock((v1 + 32));
      closure #2 in LocaleCache._currentAndCache.getterpartial apply((v1 + 16), v11);
      os_unfair_lock_unlock((v1 + 32));
      outlined destroy of LocalePreferences(v13);

      v2 = *(&v11[0] + 1);
    }

    else
    {
      outlined destroy of LocalePreferences(v13);
    }
  }

  ObjectType = swift_getObjectType();
  (*(v2 + 328))(ObjectType, v2);
  return swift_unknownObjectRelease();
}

uint64_t specialized _LocaleAutoupdating.minimumDaysInFirstWeek.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static LocaleCache.cache;
  v10 = *(&static LocaleCache.cache + 8);
  v1 = *(&static LocaleCache.cache + 1);
  os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  if (!v3)
  {
    *&v12[0] = v0;
    *(v12 + 8) = v10;
    LocaleCache.preferences()(v14);
    v5 = v4;
    type metadata accessor for _LocaleICU();
    v2 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
    v12[6] = v14[6];
    v13[0] = v15[0];
    *(v13 + 12) = *(v15 + 12);
    v12[2] = v14[2];
    v12[3] = v14[3];
    v12[4] = v14[4];
    v12[5] = v14[5];
    v12[0] = v14[0];
    v12[1] = v14[1];
    swift_allocObject();
    outlined init with copy of LocalePreferences(v14, &v11);
    v6 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v12, 0);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      os_unfair_lock_lock((v1 + 32));
      closure #2 in LocaleCache._currentAndCache.getterpartial apply((v1 + 16), v12);
      os_unfair_lock_unlock((v1 + 32));
      outlined destroy of LocalePreferences(v14);

      v2 = *(&v12[0] + 1);
    }

    else
    {
      outlined destroy of LocalePreferences(v14);
    }
  }

  ObjectType = swift_getObjectType();
  v8 = (*(v2 + 344))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v8;
}

void *Data.copyBytes(to:count:)(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!a2)
  {
    return result;
  }

  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(a3 + 16);
    }
  }

  else if (v5)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  v7 = __OFADD__(v6, a2);
  v8 = v6 + a2;
  if (v7)
  {
    goto LABEL_34;
  }

  v9 = v8 - v6;
  if (v8 < v6)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v8 == v6)
  {
    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (!(v8 | v6))
      {
        return result;
      }

      __break(1u);
      goto LABEL_30;
    }

    if (v6 >= *(a3 + 16))
    {
      if (*(a3 + 24) >= v8)
      {
        return __DataStorage.copyBytes(to:from:)(result, v6, v8);
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v5)
  {
LABEL_23:
    if (a3 >> 32 >= v8 && v6 >= a3 && a3 >> 32 >= v6 && v8 >= a3)
    {
      return __DataStorage.copyBytes(to:from:)(result, v6, v8);
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  if (BYTE6(a4) < v6 || BYTE6(a4) < v8)
  {
    goto LABEL_38;
  }

  v10 = a3;
  v11 = a4;
  v12 = WORD2(a4);
  if (v9 <= 13)
  {
    if (v9 < 1)
    {
      return result;
    }

    return memcpy(result, &v10 + v6, v9);
  }

LABEL_30:
  v9 = 14;
  return memcpy(result, &v10 + v6, v9);
}

void *__DataStorage.copyBytes(to:from:)(void *result, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  if (!v4)
  {
    if (!__OFSUB__(a3, a2))
    {
      return result;
    }

    goto LABEL_11;
  }

  v5 = v3[5];
  v6 = a2 - v5;
  if (__OFSUB__(a2, v5))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (__OFSUB__(a3, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 + v4)
  {
    if (v3[3] >= a3 - a2)
    {
      v7 = a3 - a2;
    }

    else
    {
      v7 = v3[3];
    }

    return memmove(result, (v6 + v4), v7);
  }

  return result;
}

id _NSGetUnsignedShortValueWithMethod(uint64_t a1, uint64_t a2, objc_method *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  Implementation = method_getImplementation(a3);
  Name = method_getName(a3);
  v8 = [v5 initWithUnsignedShort:{(Implementation)(a1, Name)}];

  return v8;
}

uint64_t _NSSetUnsignedShortValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    v9 = [a3 unsignedShortValue];

    return (Implementation)(a1, Name, v9);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

uint64_t __dictionaryThatCanCode_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 conformsToProtocol:&unk_1EEF5E4A0];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 32);

    return [v6 removeObjectForKey:a2];
  }

  return result;
}

void *CFBasicHashApply(void *result, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = result[2];
  v3 = (v2 >> 16) & 0x3F;
  v4 = v2 < 0x400000 || v3 == 0;
  if (!v4 && v3 != 63)
  {
    v6 = result;
    v7 = __CFBasicHashTableSizes[v3];
    v8 = v2 >> 22;
    v9 = 1;
    do
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      result = CFBasicHashGetBucket(v6, v9 - 1, &v15);
      if (*(&v17 + 1))
      {
        v10 = *(a2 + 16);
        v13[0] = v15;
        v13[1] = v16;
        v13[2] = v17;
        v14 = v18;
        result = v10(a2, v13);
        if (!result)
        {
          return result;
        }

        v8 -= result != 0;
      }

      if (v8 >= 1)
      {
        v12 = __OFSUB__(v9, v7);
        v11 = v9 - v7 < 0;
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }

      ++v9;
    }

    while (v11 != v12);
  }

  return result;
}

NSUInteger NSCountMapTable(NSMapTable *table)
{
  if (!table)
  {
    NSLog(@"%s: map table argument is NULL", "NSUInteger NSCountMapTable(NSMapTable * _Nonnull)");
  }

  return [(NSMapTable *)table count];
}

uint64_t SortDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v11[0] = *(a2 + 16);
  type metadata accessor for SortDescriptor.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v3;
  v14 = 0;
  lazy protocol witness table accessor for type SortOrder and conformance SortOrder();
  v9 = v11[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v9)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 2;
    type metadata accessor for SortDescriptor.AllowedComparison();
    swift_getWitnessTable();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SortDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  type metadata accessor for SortDescriptor.CodingKeys();
  swift_getWitnessTable();
  v34 = type metadata accessor for KeyedDecodingContainer();
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v14 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v7 = v4;
  v8 = v15;
  v23 = 0;
  lazy protocol witness table accessor for type SortOrder and conformance SortOrder();
  v9 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24[0] = v16;
  LOBYTE(v16) = 1;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v10;
  v14 = v10;
  type metadata accessor for SortDescriptor.AllowedComparison();
  v23 = 2;
  swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v7 + 8))(v6, v9);
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v11 = type metadata accessor for SortDescriptor();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, v24, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v12 + 8))(v24, v11);
}

uint64_t SortDescriptor.AllowedComparison.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  type metadata accessor for SortDescriptor.AllowedComparison.CodingKeys();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedDecodingContainer();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_13;
  }

  v8 = a1;
  v9 = v22;
  v29 = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v5;
  if (v10 == 1)
  {
    v27 = 1;
    lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v4;
    v12 = v23;
    v17 = v24;
    v18 = v25;
    if (one-time initialization token for lexical != -1)
    {
      swift_once();
    }

    if (v12 != static String.StandardComparator.lexical || ((v17 ^ word_1EA7AE628) & 1) != 0)
    {
      (*(v11 + 8))(v7, v16);
      v20 = 256;
      if (!v18)
      {
        v20 = 0;
      }

      v13 = v20 | v17;
      v14 = 3;
      goto LABEL_5;
    }

    v26 = 0;
    type metadata accessor for DecodingError();
    swift_allocError();
    swift_getWitnessTable();
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
    swift_willThrow();
    (*(v11 + 8))(v7, v16);
    goto LABEL_12;
  }

  if (v10)
  {
    v28 = 0;
    type metadata accessor for DecodingError();
    swift_allocError();
    swift_getWitnessTable();
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
    swift_willThrow();
    (*(v5 + 8))(v7, v4);
LABEL_12:
    a1 = v8;
LABEL_13:
    v15 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  (*(v5 + 8))(v7, v4);
  v12 = 0;
  v13 = 0;
  v14 = 4;
LABEL_5:
  *v9 = v12;
  *(v9 + 8) = v13;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = v14;
  v15 = v8;
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t specialized SortOrder.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (v3 & 1) == 0;
}

id partial apply for closure #1 in NSRunLoop.schedule(after:tolerance:options:_:)(void *a1)
{
  (*(v1 + 16))();

  return [a1 invalidate];
}

uint64_t protocol witness for Decodable.init(from:) in conformance SortOrder@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SortOrder.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t SortDescriptor.AllowedComparison.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x65756C6156776172;
  }
}

uint64_t SortDescriptor.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x726564726FLL;
  }

  if (a1 == 1)
  {
    return 0x6E6972745379656BLL;
  }

  return 0x73697261706D6F63;
}

unint64_t lazy protocol witness table accessor for type SortOrder and conformance SortOrder()
{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t NSSortDescriptor.init<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SortDescriptor();
  v3 = *(v2 - 8);
  v4 = *(v3 + 16);
  v4(v14, a1, v2);
  v4(v12, v14, v2);
  if (v13)
  {
    v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v6 = String._bridgeToObjectiveCImpl()();
    v7 = v12[0];
    v8 = type metadata accessor for SortDescriptor.AllowedComparison();
    v9 = [v5 initWithKey:v6 ascending:(v7 & 1) == 0 selector:SortDescriptor.AllowedComparison.selector.getter(v8)];
    swift_unknownObjectRelease();
    v10 = *(v3 + 8);
    v10(a1, v2);
    v10(v14, v2);
    v10(v12, v2);
    return v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *SortDescriptor.AllowedComparison.selector.getter(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 - 8);
  (*(v4 + 16))(&v15, v2, a1);
  if (v18 > 2u)
  {
    if (v18 == 3)
    {
      v5 = v15;
      LODWORD(v3) = v16;
      v6 = v17;
      if (one-time initialization token for validAlgorithms == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

    v11 = &selRef_compare_;
  }

  else
  {
    if (v18 && v18 != 1)
    {

      outlined destroy of AnySortComparator(&v15);
    }

    else
    {
      (*(v4 + 8))(&v15, v3);
    }

    while (1)
    {
      v5 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_17:
      v14 = v6;
      v13 = v5;
      swift_once();
      v6 = v14;
      v5 = v13;
LABEL_7:
      v7 = static String.StandardComparator.validAlgorithms;
      if (*(static String.StandardComparator.validAlgorithms + 2))
      {
        v8 = v6 ? 256 : 0;
        v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v8 | v3);
        if (v10)
        {
          break;
        }
      }
    }

    v11 = (v7[7] + 8 * v9);
  }

  return *v11;
}

id @objc static NSLocale._currentLocaleWithBundleLocalizations(_:allowsMixedLocalizations:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = _sSa10FoundationE36_unconditionallyBridgeFromObjectiveCySayxGSo7NSArrayCSgFZSS_Tt0g5(a3);
  v6 = specialized static NSLocale._currentLocaleWithBundleLocalizations(_:allowsMixedLocalizations:)(v5, a4);

  return v6;
}

id specialized static NSLocale._currentLocaleWithBundleLocalizations(_:allowsMixedLocalizations:)(uint64_t isUniquelyReferenced_nonNull_native, char object)
{
  v133 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for cache != -1)
  {
    goto LABEL_140;
  }

  while (1)
  {
    v2 = static LocaleCache.cache;
    v3 = qword_1ED4404B0;
    if (object)
    {
      v117 = static LocaleCache.cache;
      *&v118 = qword_1ED4404B0;
      LocaleCache.preferences()(&v125);
      type metadata accessor for _LocaleICU();
      swift_allocObject();
      v4 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, &v125, 1);
LABEL_4:
      v5 = v4;
      v6 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU);
      v7 = type metadata accessor for _NSSwiftLocale();
      v8 = objc_allocWithZone(v7);
      v9 = &v8[OBJC_IVAR____NSSwiftLocale_locale];
      *v9 = v5;
      *(v9 + 1) = v6;
      v10 = String._bridgeToObjectiveCImpl()();
      v114.receiver = v8;
      v114.super_class = v7;
      v11 = objc_msgSendSuper2(&v114, sel_initWithLocaleIdentifier_, v10);
      swift_unknownObjectRelease();
      return v11;
    }

    v103 = isUniquelyReferenced_nonNull_native;
    v12 = String._bridgeToObjectiveCImpl()();
    v13 = CFPreferencesCopyAppValue(v12, *MEMORY[0x1E695E8A8]);
    isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
    if (v13 && (*&v125 = v13, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), isUniquelyReferenced_nonNull_native = swift_dynamicCast(), (isUniquelyReferenced_nonNull_native & 1) != 0))
    {
      v14 = v117;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v109 = v14;
    v104 = v3;
    v15 = MEMORY[0x1E69E7CC0];
    v107 = *(v14 + 16);
    if (!v107)
    {
      break;
    }

    v16 = 0;
    v105 = *MEMORY[0x1E695E4A8];
    v17 = v14 + 40;
    v18 = MEMORY[0x1E69E7CC0];
    while (v16 < *(v109 + 16))
    {
      v19 = v15;
      v20 = String._bridgeToObjectiveCImpl()();

      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v105, v20);
      swift_unknownObjectRelease();
      if (CanonicalLanguageIdentifierFromString)
      {
        v112 = v18;
        isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
        v23 = CanonicalLanguageIdentifierFromString;
        v24 = v23;
        if ((isTaggedPointer & 1) == 0)
        {
          goto LABEL_18;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v23);
        if (TaggedPointerTag)
        {
          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              v26 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v28 = v27;

LABEL_34:
              v18 = v112;
              goto LABEL_35;
            }

LABEL_18:
            LOBYTE(v117) = 0;
            *&v125 = 0;
            LOBYTE(v115) = 0;
            v116 = 0;
            if (__CFStringIsCF())
            {

LABEL_23:
              v26 = 0;
              v28 = 0xE000000000000000;
              goto LABEL_34;
            }

            v29 = v24;
            v30 = String.init(_nativeStorage:)();
            if (v31)
            {
              v26 = v30;
              v28 = v31;

              goto LABEL_34;
            }

            *&v125 = [(__CFString *)v29 length];
            if (!v125)
            {

              goto LABEL_23;
            }

            v26 = String.init(_cocoaString:)();
            v28 = v34;
LABEL_33:

            goto LABEL_34;
          }

          result = [(__CFString *)v24 UTF8String];
          if (!result)
          {
            goto LABEL_141;
          }

          result = String.init(utf8String:)(result);
          if (!v33)
          {
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            return result;
          }
        }

        else
        {
          v115 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v33)
          {
            [(__CFString *)v24 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v28 = *(&v117 + 1);
            v26 = v117;
            goto LABEL_33;
          }
        }

        v26 = result;
        v28 = v33;

        goto LABEL_34;
      }

      v26 = 0;
      v28 = 0xE000000000000000;
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
        v18 = isUniquelyReferenced_nonNull_native;
      }

      v36 = *(v18 + 16);
      v35 = *(v18 + 24);
      if (v36 >= v35 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v18);
        v18 = isUniquelyReferenced_nonNull_native;
      }

      ++v16;
      *(v18 + 16) = v36 + 1;
      v37 = v18 + 16 * v36;
      *(v37 + 32) = v26;
      *(v37 + 40) = v28;
      v17 += 16;
      v15 = v19;
      if (v107 == v16)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    v100 = isUniquelyReferenced_nonNull_native;
    v101 = object;
    swift_once();
    isUniquelyReferenced_nonNull_native = v100;
    object = v101;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_42:

  v125 = v2;
  *&v126 = v104;
  v38 = LocaleCache.preferredLocale()();
  object = v38.value._object;
  isUniquelyReferenced_nonNull_native = v38.value._countAndFlagsBits;
  if (!v38.value._object)
  {
LABEL_129:

    return 0;
  }

  countAndFlagsBits = v38.value._countAndFlagsBits;
  v106 = v38.value._object;
  v39 = *(v103 + 16);
  v113 = v18;
  if (v39)
  {
    v110 = *MEMORY[0x1E695E4A8];
    v40 = v103 + 40;
    v41 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v42 = String._bridgeToObjectiveCImpl()();

      v43 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v110, v42);
      swift_unknownObjectRelease();
      if (!v43)
      {
        break;
      }

      v44 = _objc_isTaggedPointer(v43);
      v45 = v43;
      v46 = v45;
      if ((v44 & 1) == 0)
      {
        goto LABEL_51;
      }

      v47 = _objc_getTaggedPointerTag(v45);
      if (!v47)
      {
        v115 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v54)
        {
          [(__CFString *)v46 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v50 = *(&v117 + 1);
          v48 = v117;
LABEL_67:

          goto LABEL_68;
        }

        goto LABEL_62;
      }

      if (v47 == 22)
      {
        result = [(__CFString *)v46 UTF8String];
        if (!result)
        {
          goto LABEL_143;
        }

        result = String.init(utf8String:)(result);
        if (!v54)
        {
          goto LABEL_142;
        }

LABEL_62:
        v48 = result;
        v50 = v54;

        goto LABEL_68;
      }

      if (v47 != 2)
      {
LABEL_51:
        LOBYTE(v117) = 0;
        *&v125 = 0;
        LOBYTE(v115) = 0;
        v116 = 0;
        if (__CFStringIsCF())
        {
          v48 = v125;

LABEL_55:
          v50 = 0xE000000000000000;
          goto LABEL_68;
        }

        v51 = v46;
        v52 = String.init(_nativeStorage:)();
        if (v53)
        {
          v48 = v52;
          v50 = v53;

          goto LABEL_68;
        }

        *&v125 = [(__CFString *)v51 length];
        if (v125)
        {
          v48 = String.init(_cocoaString:)();
          v50 = v55;
          goto LABEL_67;
        }

LABEL_54:
        v48 = 0;
        goto LABEL_55;
      }

      MEMORY[0x1EEE9AC00](v47);
      v48 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v50 = v49;

LABEL_68:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 16) + 1, 1, v41);
        v41 = isUniquelyReferenced_nonNull_native;
      }

      v57 = *(v41 + 16);
      v56 = *(v41 + 24);
      if (v57 >= v56 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v41);
        v41 = isUniquelyReferenced_nonNull_native;
      }

      *(v41 + 16) = v57 + 1;
      v58 = v41 + 16 * v57;
      *(v58 + 32) = v48;
      *(v58 + 40) = v50;
      v40 += 16;
      --v39;
      v18 = v113;
      if (!v39)
      {
        goto LABEL_76;
      }
    }

    goto LABEL_54;
  }

  if (!*(v15 + 16))
  {
LABEL_117:

    goto LABEL_129;
  }

LABEL_76:
  v59 = *(v18 + 16);
  if (!v59)
  {
    goto LABEL_117;
  }

  v60 = (v38.value._object >> 56) & 0xF;
  if ((v38.value._object & 0x2000000000000000) == 0)
  {
    v60 = v38.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v60)
  {
    goto LABEL_117;
  }

  v61 = 0;
  v111 = *MEMORY[0x1E695E4A8];
  v62 = v18 + 40;
  v63 = MEMORY[0x1E69E7CC0];
  v108 = *(v18 + 16);
  do
  {
    if (v61 >= *(v18 + 16))
    {
      goto LABEL_139;
    }

    v64 = String._bridgeToObjectiveCImpl()();

    v65 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v111, v64);
    swift_unknownObjectRelease();
    if (!v65)
    {

      goto LABEL_91;
    }

    v66 = _objc_isTaggedPointer(v65);
    v67 = v65;
    v68 = v67;
    if (v66)
    {
      v69 = _objc_getTaggedPointerTag(v67);
      switch(v69)
      {
        case 0:
          v115 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v77)
          {
            goto LABEL_98;
          }

          [(__CFString *)v68 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v72 = *(&v117 + 1);
          v70 = v117;

          v59 = v108;
          goto LABEL_104;
        case 0x16:
          result = [(__CFString *)v68 UTF8String];
          if (!result)
          {
            goto LABEL_145;
          }

          result = String.init(utf8String:)(result);
          if (!v77)
          {
            goto LABEL_144;
          }

LABEL_98:
          v70 = result;
          v72 = v77;

          goto LABEL_105;
        case 2:
          MEMORY[0x1EEE9AC00](v69);
          v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v72 = v71;

          v59 = v108;
          goto LABEL_105;
      }
    }

    LOBYTE(v117) = 0;
    *&v125 = 0;
    LOBYTE(v115) = 0;
    v116 = 0;
    if (__CFStringIsCF())
    {

LABEL_91:
      v70 = 0;
      v72 = 0xE000000000000000;
      goto LABEL_105;
    }

    v73 = v68;
    v74 = v68;
    v75 = String.init(_nativeStorage:)();
    if (v76)
    {
      v70 = v75;
      v72 = v76;

LABEL_103:
      v59 = v108;
      goto LABEL_105;
    }

    *&v125 = [(__CFString *)v74 length];
    if (!v125)
    {

      v70 = 0;
      v72 = 0xE000000000000000;
      goto LABEL_103;
    }

    v78 = v73;
    v59 = v108;
    v70 = String.init(_cocoaString:)();
    v72 = v79;

LABEL_104:

LABEL_105:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 16) + 1, 1, v63);
      v63 = isUniquelyReferenced_nonNull_native;
    }

    v81 = *(v63 + 16);
    v80 = *(v63 + 24);
    if (v81 >= v80 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v63);
      v63 = isUniquelyReferenced_nonNull_native;
    }

    ++v61;
    *(v63 + 16) = v81 + 1;
    v82 = v63 + 16 * v81;
    *(v82 + 32) = v70;
    *(v82 + 40) = v72;
    v62 += 16;
    v18 = v113;
  }

  while (v59 != v61);

  v83 = objc_opt_self();

  v84 = _ContiguousArrayBuffer._asCocoaArray()();
  v85 = [v83 preferredLocalizationsFromArray:v84 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v85)
  {
    type metadata accessor for __SwiftDeferredNSArray();
    if (swift_dynamicCastClass())
    {
    }

    else
    {
      v87 = v85;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v88 = swift_dynamicCastClass();
    if (v88)
    {
      v86 = v88;

      if (!*(v86 + 2))
      {
        goto LABEL_117;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      [v85 copy];
      v95 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
      v86 = specialized _arrayForceCast<A, B>(_:)(v95);

      if (!*(v86 + 2))
      {
        goto LABEL_117;
      }
    }
  }

  else
  {
    v86 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_117;
    }
  }

  v89 = *(v86 + 4);

  v90 = static Locale.languageIdentifierWithScriptCodeForLocaleIdentifier(_:)();
  v92 = v91;
  v93 = static Locale.languageIdentifierWithScriptCodeForLocaleIdentifier(_:)();
  if (!v92 || !v94)
  {

    goto LABEL_129;
  }

  if (v90 == v93 && v92 == v94)
  {

    goto LABEL_134;
  }

  v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v96)
  {

LABEL_134:

LABEL_135:
    LocaleCache.preferences()(&v125);
    _NSBundleDeallocatingImmortalBundle(&v125, v97);
    v123 = v131;
    v124[0] = v132[0];
    *(v124 + 12) = *(v132 + 12);
    v119 = v127;
    v120 = v128;
    v121 = v129;
    v122 = v130;
    v117 = v125;
    v118 = v126;
    type metadata accessor for _LocaleICU();
    swift_allocObject();
    v4 = _LocaleICU.init(identifier:prefs:)(countAndFlagsBits, v106, &v117);
    goto LABEL_4;
  }

  countAndFlagsBits = static Locale.localeIdentifierByReplacingLanguageCodeAndScriptCode(localeIDWithDesiredLangCode:localeIDWithDesiredComponents:)(v89);
  v99 = v98;

  if (v99)
  {
    v106 = v99;
    goto LABEL_135;
  }

  return 0;
}

void *Locale.calendar.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  (*(v2 + 192))(ObjectType, v2);
  v5[0] = v1;
  v5[1] = v2;
  swift_unknownObjectRetain();
  return Calendar.locale.setter(v5);
}

uint64_t static Locale.characterDirection(forLanguage:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E69E5738];

  return static Locale.characterDirection(forLanguage:)(a1, a2, v2);
}

uint64_t protocol witness for _CalendarProtocol.isDateInWeekend(_:) in conformance _CalendarAutoupdating(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  CalendarCache.current.getter();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = v1;
  LOBYTE(v3) = (*(v3 + 168))(&v6, ObjectType, v3);
  swift_unknownObjectRelease();
  return v3 & 1;
}

unint64_t JSONError.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  switch(*(v0 + 48))
  {
    case 1:
      v23 = 0;
      if (v1)
      {
        _StringGuts.grow(_:)(55);
        MEMORY[0x1865CB0E0](0xD000000000000016, 0x80000001814828E0);
        v18 = static String._uncheckedFromUTF8(_:)();
        MEMORY[0x1865CB0E0](v18);

        MEMORY[0x1865CB0E0](8231, 0xE200000000000000);
        MEMORY[0x1865CB0E0](v2, v1);
        v7 = 0x20646E756F726120;
        v16 = 0xED000020656E696CLL;
      }

      else
      {
        _StringGuts.grow(_:)(52);
        MEMORY[0x1865CB0E0](0xD000000000000016, 0x80000001814828E0);
        v20 = static String._uncheckedFromUTF8(_:)();
        MEMORY[0x1865CB0E0](v20);

        v7 = 0x646E756F72612027;
        v16 = 0xEE0020656E696C20;
      }

      goto LABEL_28;
    case 2:
      if (v4)
      {
        return 0xD000000000000027;
      }

      v23 = 0;
      _StringGuts.grow(_:)(65);
      v6 = "arrays or dictionaries.";
      v7 = 0xD000000000000033;
LABEL_24:
      v16 = v6 | 0x8000000000000000;
LABEL_28:
      MEMORY[0x1865CB0E0](v7, v16);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v21);

      MEMORY[0x1865CB0E0](0x6E6D756C6F63202CLL, 0xE900000000000020);
LABEL_29:
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v22);

      v8 = 46;
      v9 = 0xE100000000000000;
LABEL_30:
      MEMORY[0x1865CB0E0](v8, v9);
      return v23;
    case 3:
      v23 = 0;
      _StringGuts.grow(_:)(76);
      MEMORY[0x1865CB0E0](0xD00000000000002ELL, 0x8000000181482820);
      MEMORY[0x1865CB0E0](v2, v1);
      v7 = 0x646E756F72612027;
      v16 = 0xEE0020656E696C20;
      goto LABEL_28;
    case 4:
      v23 = 0;
      _StringGuts.grow(_:)(51);
      v10 = "Unsupported escaped null around line ";
      goto LABEL_21;
    case 5:
      _StringGuts.grow(_:)(43);

      v23 = 0x2064696C61766E49;
      MEMORY[0x1865CB0E0](v2, v1);
      v7 = 0xD000000000000013;
      v16 = 0x80000001814827D0;
      goto LABEL_28;
    case 6:
      v23 = 0;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x80000001814827B0);
      v17 = static String._uncheckedFromUTF8(_:)();
      goto LABEL_19;
    case 7:
      v23 = 0;
      _StringGuts.grow(_:)(61);
      MEMORY[0x1865CB0E0](0xD00000000000001FLL, 0x8000000181482790);
      lazy protocol witness table accessor for type UInt8 and conformance UInt8();
      v17 = String.init<A>(_:radix:uppercase:)();
LABEL_19:
      MEMORY[0x1865CB0E0](v17);

      MEMORY[0x1865CB0E0](0x646E756F72612027, 0xEE0020656E696C20);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v19);

      MEMORY[0x1865CB0E0](0x6E6D756C6F63202CLL, 0xE900000000000020);
      goto LABEL_29;
    case 8:
      v23 = 0;
      _StringGuts.grow(_:)(67);
      v6 = "scalar value '0x";
      v7 = 0xD000000000000035;
      goto LABEL_24;
    case 9:
      v23 = 0;
      _StringGuts.grow(_:)(62);
      MEMORY[0x1865CB0E0](0xD000000000000020, 0x8000000181482720);
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v15 = String.init<A>(_:radix:uppercase:)();
      MEMORY[0x1865CB0E0](v15);

      v7 = 0x646E756F72612027;
      v16 = 0xEE0020656E696C20;
      goto LABEL_28;
    case 0xA:
      v23 = 0;
      _StringGuts.grow(_:)(51);
      v10 = "Number with leading zero around line ";
LABEL_21:
      v6 = (v10 - 32);
      v7 = 0xD000000000000025;
      goto LABEL_24;
    case 0xB:
      _StringGuts.grow(_:)(40);

      v23 = 0x207265626D754ELL;
      MEMORY[0x1865CB0E0](v2, v1);
      v8 = 0xD00000000000001FLL;
      v9 = 0x80000001814826D0;
      goto LABEL_30;
    case 0xC:
      result = 0xD000000000000016;
      v12 = v4 | ((*(v0 + 25) | ((*(v0 + 29) | (*(v0 + 31) << 16)) << 32)) << 8);
      v13 = v0[5];
      if (!(v3 | v1 | v2 | v5 | v13 | v12))
      {
        return 0xD000000000000058;
      }

      v14 = v3 | v1 | v5 | v13 | v12;
      if (v2 != 1 || v14)
      {
        if (v2 != 2 || v14)
        {
          return 0xD00000000000001ALL;
        }

        else
        {
          return 0xD000000000000045;
        }
      }

      return result;
    default:
      v23 = 0;
      _StringGuts.grow(_:)(61);
      v6 = "Unexpected character '";
      v7 = 0xD00000000000002FLL;
      goto LABEL_24;
  }
}

unint64_t JSONError.sourceLocation.getter()
{
  result = 0;
  v2 = *(v0 + 48);
  if (v2 <= 4)
  {
    if (*(v0 + 48) <= 1u)
    {
      if (*(v0 + 48))
      {
        return *(v0 + 24) | ((*(v0 + 25) | ((*(v0 + 29) | (*(v0 + 31) << 16)) << 32)) << 8);
      }

      else
      {
        return *v0;
      }
    }

    if (v2 == 2)
    {
      return *v0;
    }

    if (v2 != 3)
    {
      if (v2 == 4)
      {
        return *v0;
      }

      else
      {
        return 0;
      }
    }

    return v0[2];
  }

  if (*(v0 + 48) <= 7u)
  {
    if (v2 != 5)
    {
      if (v2 == 6 || v2 == 7)
      {
        return v0[1];
      }

      return result;
    }

    return v0[2];
  }

  if (v2 == 10)
  {
    v3 = *v0;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 9)
  {
    v3 = *v0;
  }

  if (v2 == 8)
  {
    return *v0;
  }

  else
  {
    return v3;
  }
}

void _NSSetUnsignedLongLongValueAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v11[8] = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v8 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v9 = [CFDictionaryGetValue(v8[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v8[5])
    {
      [a1 willChangeValueForKey:v9];
      MethodImplementation = class_getMethodImplementation(*v8, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v9];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___NSSetUnsignedLongLongValueAndNotify_block_invoke;
      v11[3] = &unk_1E69F4690;
      v11[4] = a1;
      v11[5] = v8;
      v11[6] = a2;
      v11[7] = a3;
      [a1 _changeValueForKey:v9 key:0 key:0 usingBlock:v11];
    }
  }

  else
  {

    [a1 a2];
  }
}

os_log_t ___userInteractionLog_block_invoke()
{
  result = os_log_create("com.apple.Foundation", "NSProcessInfoInteractionTracking");
  qword_1ED43F748 = result;
  return result;
}

uint64_t NSKeyedArchiver.encodeEncodable<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  type metadata accessor for __PlistDictionaryEncoder();
  result = static __PlistDictionaryEncoder.encodeToTopLevelContainer<A>(_:)(a1, a4, a5, v18);
  if (!v6)
  {
    v12 = v19;
    v13 = __swift_project_boxed_opaque_existential_1(v18, v19);
    result = _swift_isClassOrObjCExistentialType();
    if (result)
    {
      if (*(*(v12 - 8) + 64) != 8)
      {
        __break(1u);
        return result;
      }

      v14 = *v13;
      swift_unknownObjectRetain();
    }

    else
    {
      v15 = MEMORY[0x1EEE9AC00](result);
      (*(v17 + 16))(v18 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v12, v15);
      v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    [v7 encodeObject:v14 forKey:String._bridgeToObjectiveCImpl()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return result;
}

uint64_t static __PlistDictionaryEncoder.encodeToTopLevelContainer<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for __PlistDictionaryEncoder();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC8];
  v11 = MEMORY[0x1E69E7CC0];
  *(v9 + 24) = 200;
  *(v9 + 32) = v10;
  *(v9 + 16) = v11;
  *(v9 + 40) = xmmword_181248570;
  v12 = specialized __PlistDictionaryEncoder.boxGeneric<A, B>(_:for:_:)(a1, 0x8000000000000000, 0, 0, 0, 255, a2, a3);
  if (v4)
  {
  }

  if (!v12)
  {
    v15 = type metadata accessor for EncodingError();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
    v17[3] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
    _StringGuts.grow(_:)(39);

    v19 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v19);

    MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x8000000181482320);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B30], v15);
    swift_willThrow();
  }

  v14 = v12;
  a4[3] = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);

  *a4 = v14;
  return result;
}

uint64_t specialized __PlistDictionaryEncoder.boxGeneric<A, B>(_:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_dynamicCastMetatype())
  {
    (*(v15 + 16))(v17, a1, a7);
    v18 = &lazy cache variable for type metadata for NSDate;
  }

  else
  {
    if (!swift_dynamicCastMetatype())
    {
      MEMORY[0x1EEE9AC00](0);
      v20 = v22;
      *(&v21 - 4) = a7;
      *(&v21 - 3) = v20;
      *(&v21 - 2) = a1;
      return specialized __PlistDictionaryEncoder._boxGeneric<A>(_:for:_:)(closure #1 in __PlistDictionaryEncoder.boxGeneric<A, B>(_:for:_:)specialized partial apply, (&v21 - 6), a2, a3, a4, a5, a6);
    }

    (*(v15 + 16))(v17, a1, a7);
    v18 = &lazy cache variable for type metadata for NSData;
  }

  type metadata accessor for NSMorphologyPronoun(0, v18);
  swift_dynamicCast();
  return v23;
}

uint64_t specialized closure #1 in __PlistDictionaryEncoder.boxGeneric<A, B>(_:for:_:)(uint64_t a1)
{
  v3[3] = type metadata accessor for __PlistDictionaryEncoder();
  v3[4] = lazy protocol witness table accessor for type __PlistDictionaryEncoder and conformance __PlistDictionaryEncoder(&lazy protocol witness table cache variable for type __PlistDictionaryEncoder and conformance __PlistDictionaryEncoder, type metadata accessor for __PlistDictionaryEncoder);
  v3[0] = a1;

  dispatch thunk of Encodable.encode(to:)();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t specialized __PlistDictionaryEncoder._boxGeneric<A>(_:for:_:)(void (*a1)(void), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = v7;
  v14 = a3;
  v15 = a1;
  v16 = v7 + 2;
  v17 = *(v7[2] + 16);
  v24 = v7 + 2;
  if (a7 != -1)
  {
    v25 = a1;
    v26 = v8;
    v23 = *(v7[2] + 16);
    v17 = swift_allocObject();
    v17[5] = &type metadata for _CodingKey;
    v17[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v18 = swift_allocObject();
    v17[2] = v18;
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    *(v18 + 32) = a6;
    *(v18 + 40) = a7;
    v17[7] = v14;
    if (v14 >> 62)
    {
      if (v14 >> 62 != 1)
      {
        v20 = 1;
        goto LABEL_10;
      }

      v19 = ((v14 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v19 = (v14 + 64);
    }

    v8 = *v19;

    v20 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
LABEL_10:
      v17[8] = v20;
      v16 = v9[5];
      v27 = v9[6];
      v9[5] = v17;

      v14 = v17;
      v17 = v23;
LABEL_15:
      outlined copy of _CodingKey?(a4, a5, a6, a7);
      v15 = v25;
      v8 = v26;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_13;
  }

  v16 = v7[5];
  v27 = v7[6];
  v7[5] = a3;
  if (!(a3 >> 62))
  {
LABEL_13:
    v25 = v15;
    v26 = v8;
    v20 = *(v14 + 64);
    goto LABEL_14;
  }

  if (a3 >> 62 == 1)
  {
    v25 = a1;
    v26 = v8;
    v20 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_14:
    swift_retain_n();
    goto LABEL_15;
  }

  v20 = 0;
LABEL_16:
  v9[6] = v20;
  v15(v9);
  if (v8)
  {
    outlined consume of _CodingPathNode?(v14);
    v9[5] = v16;

    v9[6] = v27;
    if (v17 < *(v9[2] + 16))
    {
      v21 = specialized ContiguousArray._customRemoveLast()();
      if (!v21)
      {
        v21 = specialized ContiguousArray.remove(at:)(*(*v24 + 16) - 1);
      }
    }

    return swift_willThrow();
  }

  else
  {
    outlined consume of _CodingPathNode?(v14);
    v9[5] = v16;

    v9[6] = v27;
    if (v17 >= *(v9[2] + 16))
    {
      return 0;
    }

    else
    {
      result = specialized ContiguousArray._customRemoveLast()();
      if (!result)
      {
        return specialized ContiguousArray.remove(at:)(*(*v24 + 16) - 1);
      }
    }
  }

  return result;
}

uint64_t sub_180A12208()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_180A1224C()
{
  outlined consume of _CodingKey(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t lazy protocol witness table accessor for type __PlistDictionaryEncoder and conformance __PlistDictionaryEncoder(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for Encoder.singleValueContainer() in conformance __PlistDictionaryEncoder@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for __PlistDictionaryEncoder();
  a1[4] = lazy protocol witness table accessor for type __PlistDictionaryEncoder and conformance __PlistDictionaryEncoder(&lazy protocol witness table cache variable for type __PlistDictionaryEncoder and conformance __PlistDictionaryEncoder, type metadata accessor for __PlistDictionaryEncoder);
  *a1 = v3;
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(a1, a2, a3, &selRef_initWithInteger_);
}

{
  protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(a1, a2, a3, &selRef_initWithInt_);
}

{
  protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(a1, a2, a3, &selRef_initWithLongLong_);
}

{
  protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(a1, a2, a3, &selRef_initWithUnsignedInteger_);
}

{
  protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(a1, a2, a3, &selRef_initWithUnsignedInt_);
}

{
  protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(a1, a2, a3, &selRef_initWithUnsignedLongLong_);
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if ((*(**v4 + 208))())
  {
    v7 = [objc_allocWithZone(NSNumber) *a4];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t __PlistDictionaryEncoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _NSSwiftTimeZone.nextDaylightSavingTimeTransition.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
  ObjectType = swift_getObjectType();
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  swift_unknownObjectRetain();
  clock_gettime(_CLOCK_REALTIME, &__tp);
  *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  (*(v1 + 88))(&__tp, ObjectType, v1);
  return swift_unknownObjectRelease();
}

void _performFileHandleSource(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  _CFAutoreleasePoolPush();
  v4 = 0;
  v5 = 1;
  if (v2 > 15)
  {
    if (v2 == 16)
    {
      if (atomic_load((v1 + 12)))
      {
        v14 = atomic_load((v1 + 12));
        v22 = [NSNumber numberWithInteger:v14];
        v23 = [MEMORY[0x1E695DEF0] data];
        v21 = xmmword_1E69F3558;
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:2];
        v5 = 0;
      }

      else
      {
        os_unfair_lock_lock((v1 + 8));
        v18 = *(v1 + 32);
        if (!v18)
        {
          v18 = [MEMORY[0x1E695DEF0] data];
        }

        v22 = v18;
        *&v21 = @"NSFileHandleNotificationDataItem";
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        os_unfair_lock_unlock((v1 + 8));
        v19 = *(v1 + 32);
        if (v19)
        {
          dispatch_release(v19);
        }

        v5 = 0;
        *(v1 + 32) = 0;
      }

      v4 = @"NSFileHandleReadToEndOfFileCompletionNotification";
    }

    else
    {
      v6 = 0;
      if (v2 == 20)
      {
        if (atomic_load((v1 + 12)))
        {
          v10 = atomic_load((v1 + 12));
          v22 = [NSNumber numberWithInteger:v10];
          *&v21 = @"NSFileHandleError";
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        }

        else
        {
          v11 = [MEMORY[0x1E695DF20] dictionary];
        }

        v6 = v11;
        v5 = 0;
        v4 = @"NSFileHandleDataAvailableNotification";
      }
    }
  }

  else if (v2 == 12)
  {
    v12 = atomic_load((v1 + 16));
    if (v12 == -1)
    {
      v17 = atomic_load((v1 + 12));
      v22 = [NSNumber numberWithInteger:v17];
      *&v21 = @"NSFileHandleError";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    }

    else
    {
      v22 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:v12 closeOnDealloc:1];
      *&v21 = @"NSFileHandleNotificationFileHandleItem";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    }

    v5 = 0;
    v4 = @"NSFileHandleConnectionAcceptedNotification";
  }

  else
  {
    v6 = 0;
    if (v2 == 14)
    {
      if (atomic_load((v1 + 12)))
      {
        v8 = atomic_load((v1 + 12));
        v22 = [NSNumber numberWithInteger:v8];
        v23 = [MEMORY[0x1E695DEF0] data];
        v21 = xmmword_1E69F3558;
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:2];
        v5 = 0;
      }

      else
      {
        v15 = *(v1 + 32);
        if (!v15)
        {
          v15 = [MEMORY[0x1E695DEF0] data];
        }

        v22 = v15;
        *&v21 = @"NSFileHandleNotificationDataItem";
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v16 = *(v1 + 32);
        if (v16)
        {
          dispatch_release(v16);
        }

        v5 = 0;
        *(v1 + 32) = 0;
      }

      v4 = @"NSFileHandleReadCompletionNotification";
    }
  }

  CFRunLoopSourceInvalidate(v3);
  CFRelease(v3);
  v20 = v6;
  _CFAutoreleasePoolPop();
  if ((v5 & 1) == 0)
  {
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:v4 userInfo:v1, v6];
  }

  CFRelease(v1);
}

void _NSFileHandlePerformSourceContextRelease(void *a1)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    free(a1);
  }
}

double protocol witness for _LocaleProtocol.forceMeasurementSystem.getter in conformance _LocaleBridged@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSLocaleKey(id *a1, void **a2)
{
  v2 = *a2;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(*a1);
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(char a1)
{
  if ((*(**v1 + 208))())
  {
    v3 = [objc_allocWithZone(NSNumber) initWithBool_];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

{
  if ((*(**v1 + 208))())
  {
    v3 = [objc_allocWithZone(NSNumber) initWithChar_];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

void __PlistDictionaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*v3 + 208))())
  {
    v12[3] = a2;
    v12[4] = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
    v9 = v3[5];

    v10 = specialized __PlistDictionaryEncoder.box<A>(_:for:_:)(v12, v9, 0, 0, 0, 255);

    __swift_destroy_boxed_opaque_existential_1(v12);
    if (!v4)
    {
      v11 = v10;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }
  }

  else
  {
    __break(1u);
  }
}

id specialized __PlistDictionaryEncoder.box<A>(_:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v25 = *(a1 + 24);
  v12 = __swift_project_boxed_opaque_existential_1(a1, v25);
  v13 = swift_dynamicCastMetatype();
  if (v13)
  {
    v14 = MEMORY[0x1EEE9AC00](v13);
    (*(v16 + 16))(&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v25, v14);
    v17 = &lazy cache variable for type metadata for NSDate;
LABEL_5:
    type metadata accessor for NSMorphologyPronoun(0, v17);
    swift_dynamicCast();
    return v26;
  }

  v18 = swift_dynamicCastMetatype();
  if (v18)
  {
    v19 = MEMORY[0x1EEE9AC00](v18);
    (*(v21 + 16))(&v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v25, v19);
    v17 = &lazy cache variable for type metadata for NSData;
    goto LABEL_5;
  }

  MEMORY[0x1EEE9AC00](0);
  v23[1] = v25;
  v24 = v12;
  result = specialized __PlistDictionaryEncoder._boxGeneric<A>(_:for:_:)(partial apply for specialized closure #1 in __PlistDictionaryEncoder.boxGeneric<A, B>(_:for:_:), v23, a2, a3, a4, a5, a6);
  if (!v6 && !result)
  {
    return [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
  }

  return result;
}

void __PlistDictionaryEncoder.container<A>(keyedBy:)()
{
  if ((*(*v0 + 208))())
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v2 = v1;
LABEL_6:
    type metadata accessor for _PlistDictionaryKeyedEncodingContainer();
    swift_retain_n();

    swift_getWitnessTable();
    KeyedEncodingContainer.init<A>(_:)();

    return;
  }

  v3 = specialized BidirectionalCollection.last.getter(v0[2]);
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v2 = v5;
      v6 = v4;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)()
{
  v1 = *(v0 + 8);
  v2 = dispatch thunk of CodingKey.stringValue.getter();
  v4 = v3;
  v5 = [objc_allocWithZone(NSString) initWithString_];
  swift_unknownObjectRelease();
  [v1 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

void NSKeyedUnarchiver.decodeTopLevelDecodable<A>(_:forKey:)(ValueMetadata *a1@<X3>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for __plistClasses != -1)
  {
    swift_once();
  }

  if (*(static NSKeyedUnarchiver.__plistClasses + 2) == 1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = String._bridgeToObjectiveCImpl()();
    *&v18 = 0;
    v8 = __NSCoderDecodeObjectOfClassForKey(v2, ObjCClassFromMetadata, v7, &v18);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
    v9 = _ContiguousArrayBuffer._asCocoaArray()();
    v10 = String._bridgeToObjectiveCImpl()();
    *&v18 = 0;
    v8 = __NSCoderDecodeObjectOfClassesForKey(v2, v9, v10, &v18);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v11 = v18;
  if (v8)
  {
    v12 = v18;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v13 = v11;
  }

  v20 = v18;
  v21 = v19;
  if (v11)
  {
    v14 = v11;
    if ([v14 code] != 4865)
    {
      swift_willThrow();

      outlined destroy of TermOfAddress?(&v20, &_sypSgMd);
      return;
    }
  }

  v18 = v20;
  v19 = v21;
  if (*(&v21 + 1))
  {
    outlined init with take of Any(&v18, &v22);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  if (*(&v23 + 1))
  {
    outlined init with take of Any(&v22, v24);
    type metadata accessor for PropertyListDecoder();
    inited = swift_initStackObject();
    *(inited + 16) = MEMORY[0x1E69E7CC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(inited + 24) = v16;
    PropertyListDecoder.decode<A>(_:fromTopLevel:)(a1, v24, a1, a2);
    if (v3)
    {
      v17 = v3;
      [v2 failWithError_];
      swift_unknownObjectRelease();
      swift_willThrow();
      swift_setDeallocating();

      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v24);
      swift_setDeallocating();

      (*(a1[-1].Description + 7))(a2, 0, 1, a1);
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(&v22, &_sypSgMd);
    (*(a1[-1].Description + 7))(a2, 1, 1, a1);
  }
}

uint64_t PropertyListDecoder.decode<A>(_:fromTopLevel:)@<X0>(ValueMetadata *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-v11];
  outlined init with copy of Any(a2, v21);
  v13 = *(v4 + 16);
  type metadata accessor for __PlistDictionaryDecoder();
  swift_allocObject();

  __PlistDictionaryDecoder.init(referencing:at:options:)(v21, MEMORY[0x1E69E7CC0], v13);
  __PlistDictionaryDecoder.unbox<A>(_:as:)(a2, a1, a3, v12);
  if (v5)
  {
  }

  v14 = v10;
  v15 = v22;
  v16 = *(a3 - 8);
  if ((*(v16 + 48))(v12, 1, a3) == 1)
  {
    (*(v14 + 8))(v12, v9);
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v19 = a1;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    swift_willThrow();
  }

  return (*(v16 + 32))(v15, v12, a3);
}

uint64_t __PlistDictionaryDecoder.unbox<A>(_:as:)@<X0>(void *a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == &type metadata for Date)
  {
    result = __PlistDictionaryDecoder.unbox(_:as:)(a1, &v18);
    if (v5)
    {
      return result;
    }

    *&v22[0] = v18;
    BYTE8(v22[0]) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
LABEL_14:
    v17 = swift_dynamicCast();
    return (*(*(a3 - 8) + 56))(a4, v17 ^ 1u, 1, a3);
  }

  if (a2 == &type metadata for Data)
  {
    result = specialized __PlistDictionaryDecoder.unbox(_:as:)(a1);
    if (v5)
    {
      return result;
    }

    v18 = result;
    v19 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd);
    goto LABEL_14;
  }

  v23 = v5;
  outlined init with copy of Any(a1, &v18);
  outlined init with copy of Any(&v18, v22);
  v8 = (v4 + 16);
  v9 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    *v8 = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    *v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(&v18);
  v13 = *(v4 + 16);
  *(v13 + 16) = v12 + 1;
  outlined init with take of Any(v22, (v13 + 32 * v12 + 32));
  *(v4 + 16) = v13;
  v20 = type metadata accessor for __PlistDictionaryDecoder();
  v21 = lazy protocol witness table accessor for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder(&lazy protocol witness table cache variable for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder);
  v18 = v4;

  v14 = v23;
  dispatch thunk of Decodable.init(from:)();
  if (!v14)
  {
    (*(*(a3 - 8) + 56))(a4, 0, 1, a3);
  }

  return specialized _PlistDecodingStorage.popContainer()();
}

uint64_t protocol witness for SingleValueDecodingContainer.decodeNil() in conformance __PlistDictionaryDecoder()
{

  specialized _PlistDecodingStorage.topContainer.getter(v0, &v6);

  if (swift_dynamicCast())
  {
    if (v4 == 0x6C6C756E24 && v5 == 0xE500000000000000)
    {

      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t __PlistDictionaryDecoder.container<A>(keyedBy:)()
{
  if (__PlistDictionaryDecoder.topValueIsNull.getter())
  {
    v1 = type metadata accessor for DecodingError();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v3 = type metadata accessor for KeyedDecodingContainer();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6B08], v1);
  }

  else
  {

    specialized _PlistDecodingStorage.topContainer.getter(v4, &v14);

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 32);
      *&v14 = v0;
      *(&v14 + 1) = v13;
      v15 = v6;
      type metadata accessor for _PlistDictionaryKeyedDecodingContainer();

      swift_getWitnessTable();
      return KeyedDecodingContainer.init<A>(_:)();
    }

    specialized _PlistDecodingStorage.topContainer.getter(v8, &v14);

    v9 = type metadata accessor for DecodingError();
    swift_allocError();
    v11 = v10;
    _StringGuts.grow(_:)(43);

    v12 = specialized static DecodingError._typeDescription(of:)(&v14);
    MEMORY[0x1865CB0E0](v12);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v11 = v5;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6AF8], v9);
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  return swift_willThrow();
}

uint64_t __PlistDictionaryDecoder.topValueIsNull.getter()
{

  specialized _PlistDecodingStorage.topContainer.getter(v0, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  swift_dynamicCast();
  v1 = v5[3];
  outlined destroy of TermOfAddress?(v5, &_sypSgMd);
  if (!v1)
  {
    return 1;
  }

  specialized _PlistDecodingStorage.topContainer.getter(v2, v6);

  if (swift_dynamicCast())
  {
    if (v5[0] == 0x6C6C756E24 && v5[1] == 0xE500000000000000)
    {

      return 1;
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      return 1;
    }
  }

  return 0;
}

__int128 *_PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_10;
  }

  v39[1] = a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_10:
    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v32[3] = a5;
    v32[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    (*(v11 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v41 = 0xD00000000000001DLL;
    *(&v41 + 1) = 0x8000000181482300;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v34);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v35 = dispatch thunk of CodingKey.stringValue.getter();
    v26 = &v41;
    MEMORY[0x1865CB0E0](v35);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF0], v30);
    swift_willThrow();
    return v26;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v16, &v41);
  outlined init with take of Any(&v41, v44);
  v39[0] = *(v11 + 16);
  (v39[0])(v13, a1, a5);
  v19 = v45;
  v20 = *(v45 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 32) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    *(v45 + 32) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    *(v45 + 32) = v20;
  }

  v42 = a5;
  v43 = a6;
  v24 = __swift_allocate_boxed_opaque_existential_0(&v41);
  (v39[0])(v24, v13, a5);
  v20[2] = v23 + 1;
  outlined init with take of Equatable(&v41, &v20[5 * v23 + 4]);
  (*(v11 + 8))(v13, a5);
  v25 = v45;
  v26 = v45;
  v27 = v40;
  v28 = specialized __PlistDictionaryDecoder.unbox(_:as:)(v44);
  if (!v27)
  {
    if (v29)
    {
      v26 = v28;
      $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
      __swift_destroy_boxed_opaque_existential_1(v44);
      return v26;
    }

    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v38 = MEMORY[0x1E69E6158];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 1) + 104))(v38, *MEMORY[0x1E69E6B08], v26);
    swift_willThrow();
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v26;
}

{
  v45 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_12;
  }

  v39[1] = a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_12:
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v34[3] = a5;
    v34[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
    (*(v11 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v41 = 0xD00000000000001DLL;
    *(&v41 + 1) = 0x8000000181482300;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v36);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v37 = dispatch thunk of CodingKey.stringValue.getter();
    v26 = &v41;
    MEMORY[0x1865CB0E0](v37);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0], v32);
    swift_willThrow();
    return v26;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v16, &v41);
  outlined init with take of Any(&v41, v44);
  v39[0] = *(v11 + 16);
  (v39[0])(v13, a1, a5);
  v19 = v45;
  v20 = *(v45 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 32) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    *(v19 + 32) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    *(v45 + 32) = v20;
  }

  v42 = a5;
  v43 = a6;
  v24 = __swift_allocate_boxed_opaque_existential_0(&v41);
  (v39[0])(v24, v13, a5);
  v20[2] = v23 + 1;
  outlined init with take of Equatable(&v41, &v20[5 * v23 + 4]);
  (*(v11 + 8))(v13, a5);
  v25 = v45;
  v26 = v45;
  v27 = v40;
  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFSi_Tt1g5(v44);
  if (!v27)
  {
    if ((v29 & 1) == 0)
    {
      v26 = v28;
      $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
      __swift_destroy_boxed_opaque_existential_1(v44);
      return v26;
    }

    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v31 = MEMORY[0x1E69E6530];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 1) + 104))(v31, *MEMORY[0x1E69E6B08], v26);
    swift_willThrow();
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v26;
}

{
  v44 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_11;
  }

  v38[1] = a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_11:
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v31[3] = a5;
    v31[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    (*(v11 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v40 = 0xD00000000000001DLL;
    *(&v40 + 1) = 0x8000000181482300;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v33);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v34 = dispatch thunk of CodingKey.stringValue.getter();
    v26 = &v40;
    MEMORY[0x1865CB0E0](v34);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF0], v29);
    swift_willThrow();
    return v26;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v16, &v40);
  outlined init with take of Any(&v40, v43);
  v38[0] = *(v11 + 16);
  (v38[0])(v13, a1, a5);
  v19 = v44;
  v20 = *(v44 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 32) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    *(v19 + 32) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    *(v44 + 32) = v20;
  }

  v41 = a5;
  v42 = a6;
  v24 = __swift_allocate_boxed_opaque_existential_0(&v40);
  (v38[0])(v24, v13, a5);
  v20[2] = v23 + 1;
  outlined init with take of Equatable(&v40, &v20[5 * v23 + 4]);
  (*(v11 + 8))(v13, a5);
  v25 = v44;
  v26 = v44;
  v27 = v39;
  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs4Int8V_Tt1g5(v43);
  if (!v27)
  {
    v26 = v28;
    if ((v28 & 0x100) != 0)
    {
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v36 = MEMORY[0x1E69E7230];

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 1) + 104))(v36, *MEMORY[0x1E69E6B08], v26);
      swift_willThrow();
    }
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v26;
}

{
  v44 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_11;
  }

  v38[1] = a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_11:
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v31[3] = a5;
    v31[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    (*(v11 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v40 = 0xD00000000000001DLL;
    *(&v40 + 1) = 0x8000000181482300;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v33);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v34 = dispatch thunk of CodingKey.stringValue.getter();
    v26 = &v40;
    MEMORY[0x1865CB0E0](v34);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF0], v29);
    swift_willThrow();
    return v26;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v16, &v40);
  outlined init with take of Any(&v40, v43);
  v38[0] = *(v11 + 16);
  (v38[0])(v13, a1, a5);
  v19 = v44;
  v20 = *(v44 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 32) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    *(v19 + 32) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    *(v44 + 32) = v20;
  }

  v41 = a5;
  v42 = a6;
  v24 = __swift_allocate_boxed_opaque_existential_0(&v40);
  (v38[0])(v24, v13, a5);
  v20[2] = v23 + 1;
  outlined init with take of Equatable(&v40, &v20[5 * v23 + 4]);
  (*(v11 + 8))(v13, a5);
  v25 = v44;
  v26 = v44;
  v27 = v39;
  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5Int16V_Tt1g5(v43);
  if (!v27)
  {
    v26 = v28;
    if ((v28 & 0x10000) != 0)
    {
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v36 = MEMORY[0x1E69E7290];

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 1) + 104))(v36, *MEMORY[0x1E69E6B08], v26);
      swift_willThrow();
    }
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v26;
}

{
  v44 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_11;
  }

  v38[1] = a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_11:
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v31[3] = a5;
    v31[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    (*(v11 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v40 = 0xD00000000000001DLL;
    *(&v40 + 1) = 0x8000000181482300;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v33);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v34 = dispatch thunk of CodingKey.stringValue.getter();
    v26 = &v40;
    MEMORY[0x1865CB0E0](v34);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF0], v29);
    swift_willThrow();
    return v26;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v16, &v40);
  outlined init with take of Any(&v40, v43);
  v38[0] = *(v11 + 16);
  (v38[0])(v13, a1, a5);
  v19 = v44;
  v20 = *(v44 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 32) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    *(v19 + 32) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    *(v44 + 32) = v20;
  }

  v41 = a5;
  v42 = a6;
  v24 = __swift_allocate_boxed_opaque_existential_0(&v40);
  (v38[0])(v24, v13, a5);
  v20[2] = v23 + 1;
  outlined init with take of Equatable(&v40, &v20[5 * v23 + 4]);
  (*(v11 + 8))(v13, a5);
  v25 = v44;
  v26 = v44;
  v27 = v39;
  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5Int32V_Tt1g5(v43);
  if (!v27)
  {
    v26 = v28;
    if ((v28 & 0x100000000) != 0)
    {
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v36 = MEMORY[0x1E69E72F0];

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 1) + 104))(v36, *MEMORY[0x1E69E6B08], v26);
      swift_willThrow();
    }
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v26;
}

{
  v45 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_12;
  }

  v39[1] = a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_12:
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v34[3] = a5;
    v34[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
    (*(v11 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v41 = 0xD00000000000001DLL;
    *(&v41 + 1) = 0x8000000181482300;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v36);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v37 = dispatch thunk of CodingKey.stringValue.getter();
    v26 = &v41;
    MEMORY[0x1865CB0E0](v37);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0], v32);
    swift_willThrow();
    return v26;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v16, &v41);
  outlined init with take of Any(&v41, v44);
  v39[0] = *(v11 + 16);
  (v39[0])(v13, a1, a5);
  v19 = v45;
  v20 = *(v45 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 32) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    *(v19 + 32) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    *(v45 + 32) = v20;
  }

  v42 = a5;
  v43 = a6;
  v24 = __swift_allocate_boxed_opaque_existential_0(&v41);
  (v39[0])(v24, v13, a5);
  v20[2] = v23 + 1;
  outlined init with take of Equatable(&v41, &v20[5 * v23 + 4]);
  (*(v11 + 8))(v13, a5);
  v25 = v45;
  v26 = v45;
  v27 = v40;
  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5Int64V_Tt1g5(v44);
  if (!v27)
  {
    if ((v29 & 1) == 0)
    {
      v26 = v28;
      $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
      __swift_destroy_boxed_opaque_existential_1(v44);
      return v26;
    }

    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v31 = MEMORY[0x1E69E7360];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 1) + 104))(v31, *MEMORY[0x1E69E6B08], v26);
    swift_willThrow();
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v26;
}

{
  v45 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_12;
  }

  v39[1] = a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_12:
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v34[3] = a5;
    v34[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
    (*(v11 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v41 = 0xD00000000000001DLL;
    *(&v41 + 1) = 0x8000000181482300;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v36);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v37 = dispatch thunk of CodingKey.stringValue.getter();
    v26 = &v41;
    MEMORY[0x1865CB0E0](v37);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0], v32);
    swift_willThrow();
    return v26;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v16, &v41);
  outlined init with take of Any(&v41, v44);
  v39[0] = *(v11 + 16);
  (v39[0])(v13, a1, a5);
  v19 = v45;
  v20 = *(v45 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 32) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    *(v19 + 32) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    *(v45 + 32) = v20;
  }

  v42 = a5;
  v43 = a6;
  v24 = __swift_allocate_boxed_opaque_existential_0(&v41);
  (v39[0])(v24, v13, a5);
  v20[2] = v23 + 1;
  outlined init with take of Equatable(&v41, &v20[5 * v23 + 4]);
  (*(v11 + 8))(v13, a5);
  v25 = v45;
  v26 = v45;
  v27 = v40;
  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFSu_Tt1g5(v44);
  if (!v27)
  {
    if ((v29 & 1) == 0)
    {
      v26 = v28;
      $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
      __swift_destroy_boxed_opaque_existential_1(v44);
      return v26;
    }

    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v31 = MEMORY[0x1E69E6810];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 1) + 104))(v31, *MEMORY[0x1E69E6B08], v26);
    swift_willThrow();
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v26;
}

{
  v44 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_11;
  }

  v38[1] = a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_11:
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v31[3] = a5;
    v31[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    (*(v11 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v40 = 0xD00000000000001DLL;
    *(&v40 + 1) = 0x8000000181482300;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v33);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v34 = dispatch thunk of CodingKey.stringValue.getter();
    v26 = &v40;
    MEMORY[0x1865CB0E0](v34);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF0], v29);
    swift_willThrow();
    return v26;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v16, &v40);
  outlined init with take of Any(&v40, v43);
  v38[0] = *(v11 + 16);
  (v38[0])(v13, a1, a5);
  v19 = v44;
  v20 = *(v44 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 32) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    *(v19 + 32) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    *(v44 + 32) = v20;
  }

  v41 = a5;
  v42 = a6;
  v24 = __swift_allocate_boxed_opaque_existential_0(&v40);
  (v38[0])(v24, v13, a5);
  v20[2] = v23 + 1;
  outlined init with take of Equatable(&v40, &v20[5 * v23 + 4]);
  (*(v11 + 8))(v13, a5);
  v25 = v44;
  v26 = v44;
  v27 = v39;
  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5UInt8V_Tt1g5(v43);
  if (!v27)
  {
    v26 = v28;
    if ((v28 & 0x100) != 0)
    {
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v36 = MEMORY[0x1E69E7508];

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 1) + 104))(v36, *MEMORY[0x1E69E6B08], v26);
      swift_willThrow();
    }
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v26;
}

{
  v44 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_11;
  }

  v38[1] = a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_11:
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v31[3] = a5;
    v31[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    (*(v11 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v40 = 0xD00000000000001DLL;
    *(&v40 + 1) = 0x8000000181482300;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v33);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v34 = dispatch thunk of CodingKey.stringValue.getter();
    v26 = &v40;
    MEMORY[0x1865CB0E0](v34);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF0], v29);
    swift_willThrow();
    return v26;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v16, &v40);
  outlined init with take of Any(&v40, v43);
  v38[0] = *(v11 + 16);
  (v38[0])(v13, a1, a5);
  v19 = v44;
  v20 = *(v44 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 32) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    *(v19 + 32) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    *(v44 + 32) = v20;
  }

  v41 = a5;
  v42 = a6;
  v24 = __swift_allocate_boxed_opaque_existential_0(&v40);
  (v38[0])(v24, v13, a5);
  v20[2] = v23 + 1;
  outlined init with take of Equatable(&v40, &v20[5 * v23 + 4]);
  (*(v11 + 8))(v13, a5);
  v25 = v44;
  v26 = v44;
  v27 = v39;
  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs6UInt16V_Tt1g5(v43);
  if (!v27)
  {
    v26 = v28;
    if ((v28 & 0x10000) != 0)
    {
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v36 = MEMORY[0x1E69E75F8];

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 1) + 104))(v36, *MEMORY[0x1E69E6B08], v26);
      swift_willThrow();
    }
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v26;
}

{
  v44 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_11;
  }

  v38[1] = a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_11:
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v31[3] = a5;
    v31[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    (*(v11 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v40 = 0xD00000000000001DLL;
    *(&v40 + 1) = 0x8000000181482300;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v33);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v34 = dispatch thunk of CodingKey.stringValue.getter();
    v26 = &v40;
    MEMORY[0x1865CB0E0](v34);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF0], v29);
    swift_willThrow();
    return v26;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v16, &v40);
  outlined init with take of Any(&v40, v43);
  v38[0] = *(v11 + 16);
  (v38[0])(v13, a1, a5);
  v19 = v44;
  v20 = *(v44 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 32) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    *(v19 + 32) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    *(v44 + 32) = v20;
  }

  v41 = a5;
  v42 = a6;
  v24 = __swift_allocate_boxed_opaque_existential_0(&v40);
  (v38[0])(v24, v13, a5);
  v20[2] = v23 + 1;
  outlined init with take of Equatable(&v40, &v20[5 * v23 + 4]);
  (*(v11 + 8))(v13, a5);
  v25 = v44;
  v26 = v44;
  v27 = v39;
  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs6UInt32V_Tt1g5(v43);
  if (!v27)
  {
    v26 = v28;
    if ((v28 & 0x100000000) != 0)
    {
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v36 = MEMORY[0x1E69E7668];

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 1) + 104))(v36, *MEMORY[0x1E69E6B08], v26);
      swift_willThrow();
    }
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v26;
}

{
  v45 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_12;
  }

  v39[1] = a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_12:
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v34[3] = a5;
    v34[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
    (*(v11 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v41 = 0xD00000000000001DLL;
    *(&v41 + 1) = 0x8000000181482300;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v36);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v37 = dispatch thunk of CodingKey.stringValue.getter();
    v26 = &v41;
    MEMORY[0x1865CB0E0](v37);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0], v32);
    swift_willThrow();
    return v26;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v16, &v41);
  outlined init with take of Any(&v41, v44);
  v39[0] = *(v11 + 16);
  (v39[0])(v13, a1, a5);
  v19 = v45;
  v20 = *(v45 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 32) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    *(v19 + 32) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    *(v45 + 32) = v20;
  }

  v42 = a5;
  v43 = a6;
  v24 = __swift_allocate_boxed_opaque_existential_0(&v41);
  (v39[0])(v24, v13, a5);
  v20[2] = v23 + 1;
  outlined init with take of Equatable(&v41, &v20[5 * v23 + 4]);
  (*(v11 + 8))(v13, a5);
  v25 = v45;
  v26 = v45;
  v27 = v40;
  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs6UInt64V_Tt1g5(v44);
  if (!v27)
  {
    if ((v29 & 1) == 0)
    {
      v26 = v28;
      $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
      __swift_destroy_boxed_opaque_existential_1(v44);
      return v26;
    }

    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v31 = MEMORY[0x1E69E76D8];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 1) + 104))(v31, *MEMORY[0x1E69E6B08], v26);
    swift_willThrow();
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v26;
}

uint64_t $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    result = __swift_destroy_boxed_opaque_existential_1(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 32) = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t specialized __PlistDictionaryDecoder.decode(_:)()
{

  specialized _PlistDecodingStorage.topContainer.getter(v1, v12);

  if (swift_dynamicCast())
  {
    if (v10 == 0x6C6C756E24 && v11 == 0xE500000000000000)
    {
      goto LABEL_10;
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
LABEL_11:
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v8 = MEMORY[0x1E69E6370];
      v5 = "but found null value instead.";

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
      swift_willThrow();
      return v5 & 1;
    }
  }

  specialized _PlistDecodingStorage.topContainer.getter(v4, v12);

  LOBYTE(v5) = specialized __PlistDictionaryDecoder.unbox(_:as:)(v12);
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (!v0 && v5 == 2)
  {
    __break(1u);
LABEL_10:

    goto LABEL_11;
  }

  return v5 & 1;
}

{

  specialized _PlistDecodingStorage.topContainer.getter(v2, v15);

  if (swift_dynamicCast())
  {
    if (v13 == 0x6C6C756E24 && v14 == 0xE500000000000000)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v8 = type metadata accessor for DecodingError();
    swift_allocError();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v10 = MEMORY[0x1E69E6810];
    v0 = "ut found null value instead.";

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B08], v8);
    swift_willThrow();
    return v0;
  }

LABEL_7:

  specialized _PlistDecodingStorage.topContainer.getter(v5, v15);

  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFSu_Tt1g5(v15);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v0;
  }

  v0 = v6;
  v11 = v7;
  result = __swift_destroy_boxed_opaque_existential_1(v15);
  if ((v11 & 1) == 0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

{

  specialized _PlistDecodingStorage.topContainer.getter(v1, v13);

  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if (v11 == 0x6C6C756E24 && v12 == 0xE500000000000000)
  {

    goto LABEL_10;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v3)
  {
LABEL_10:
    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v9 = MEMORY[0x1E69E63B0];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    return swift_willThrow();
  }

LABEL_7:

  specialized _PlistDecodingStorage.topContainer.getter(v4, v13);

  _s10Foundation24__PlistDictionaryDecoderC18unboxFloatingPoint33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKSBRzlFSd_Tt1g5(v13);
  if (v0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v10 = v5;
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  if (v10)
  {
    __break(1u);
  }

  return result;
}

{

  specialized _PlistDecodingStorage.topContainer.getter(v2, v15);

  if (swift_dynamicCast())
  {
    if (v13 == 0x6C6C756E24 && v14 == 0xE500000000000000)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v8 = type metadata accessor for DecodingError();
    swift_allocError();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v10 = MEMORY[0x1E69E6530];
    v0 = "t found null value instead.";

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B08], v8);
    swift_willThrow();
    return v0;
  }

LABEL_7:

  specialized _PlistDecodingStorage.topContainer.getter(v5, v15);

  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFSi_Tt1g5(v15);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v0;
  }

  v0 = v6;
  v11 = v7;
  result = __swift_destroy_boxed_opaque_existential_1(v15);
  if ((v11 & 1) == 0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

{

  specialized _PlistDecodingStorage.topContainer.getter(v2, v13);

  if (swift_dynamicCast())
  {
    if (v11 == 0x6C6C756E24 && v12 == 0xE500000000000000)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v9 = MEMORY[0x1E69E7230];
    v0 = "ut found null value instead.";

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    swift_willThrow();
    return v0;
  }

LABEL_7:

  specialized _PlistDecodingStorage.topContainer.getter(v5, v13);

  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs4Int8V_Tt1g5(v13);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v0;
  }

  v0 = v6;
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  if ((v0 & 0x100) == 0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

{

  specialized _PlistDecodingStorage.topContainer.getter(v2, v13);

  if (swift_dynamicCast())
  {
    if (v11 == 0x6C6C756E24 && v12 == 0xE500000000000000)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v9 = MEMORY[0x1E69E7290];
    v0 = "ut found null value instead.";

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    swift_willThrow();
    return v0;
  }

LABEL_7:

  specialized _PlistDecodingStorage.topContainer.getter(v5, v13);

  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5Int16V_Tt1g5(v13);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v0;
  }

  v0 = v6;
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  if ((v0 & 0x10000) == 0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

{

  specialized _PlistDecodingStorage.topContainer.getter(v2, v13);

  if (swift_dynamicCast())
  {
    if (v11 == 0x6C6C756E24 && v12 == 0xE500000000000000)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v9 = MEMORY[0x1E69E72F0];
    v0 = "ut found null value instead.";

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    swift_willThrow();
    return v0;
  }

LABEL_7:

  specialized _PlistDecodingStorage.topContainer.getter(v5, v13);

  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5Int32V_Tt1g5(v13);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v0;
  }

  v0 = v6;
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  if ((v0 & 0x100000000) == 0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

{

  specialized _PlistDecodingStorage.topContainer.getter(v2, v15);

  if (swift_dynamicCast())
  {
    if (v13 == 0x6C6C756E24 && v14 == 0xE500000000000000)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v8 = type metadata accessor for DecodingError();
    swift_allocError();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v10 = MEMORY[0x1E69E7360];
    v0 = "t found null value instead.";

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B08], v8);
    swift_willThrow();
    return v0;
  }

LABEL_7:

  specialized _PlistDecodingStorage.topContainer.getter(v5, v15);

  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5Int64V_Tt1g5(v15);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v0;
  }

  v0 = v6;
  v11 = v7;
  result = __swift_destroy_boxed_opaque_existential_1(v15);
  if ((v11 & 1) == 0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

{

  specialized _PlistDecodingStorage.topContainer.getter(v2, v13);

  if (swift_dynamicCast())
  {
    if (v11 == 0x6C6C756E24 && v12 == 0xE500000000000000)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v9 = MEMORY[0x1E69E7508];
    v0 = "but found null value instead.";

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    swift_willThrow();
    return v0;
  }

LABEL_7:

  specialized _PlistDecodingStorage.topContainer.getter(v5, v13);

  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5UInt8V_Tt1g5(v13);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v0;
  }

  v0 = v6;
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  if ((v0 & 0x100) == 0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

{

  specialized _PlistDecodingStorage.topContainer.getter(v2, v13);

  if (swift_dynamicCast())
  {
    if (v11 == 0x6C6C756E24 && v12 == 0xE500000000000000)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v9 = MEMORY[0x1E69E75F8];
    v0 = "but found null value instead.";

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    swift_willThrow();
    return v0;
  }

LABEL_7:

  specialized _PlistDecodingStorage.topContainer.getter(v5, v13);

  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs6UInt16V_Tt1g5(v13);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v0;
  }

  v0 = v6;
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  if ((v0 & 0x10000) == 0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

{

  specialized _PlistDecodingStorage.topContainer.getter(v2, v13);

  if (swift_dynamicCast())
  {
    if (v11 == 0x6C6C756E24 && v12 == 0xE500000000000000)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v9 = MEMORY[0x1E69E7668];
    v0 = "but found null value instead.";

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    swift_willThrow();
    return v0;
  }

LABEL_7:

  specialized _PlistDecodingStorage.topContainer.getter(v5, v13);

  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs6UInt32V_Tt1g5(v13);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v0;
  }

  v0 = v6;
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  if ((v0 & 0x100000000) == 0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

{

  specialized _PlistDecodingStorage.topContainer.getter(v2, v15);

  if (swift_dynamicCast())
  {
    if (v13 == 0x6C6C756E24 && v14 == 0xE500000000000000)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v8 = type metadata accessor for DecodingError();
    swift_allocError();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v10 = MEMORY[0x1E69E76D8];
    v0 = "de Data but found ";

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B08], v8);
    swift_willThrow();
    return v0;
  }

LABEL_7:

  specialized _PlistDecodingStorage.topContainer.getter(v5, v15);

  _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs6UInt64V_Tt1g5(v15);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v0;
  }

  v0 = v6;
  v11 = v7;
  result = __swift_destroy_boxed_opaque_existential_1(v15);
  if ((v11 & 1) == 0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

{

  specialized _PlistDecodingStorage.topContainer.getter(v1, v13);

  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if (v11 == 0x6C6C756E24 && v12 == 0xE500000000000000)
  {

    goto LABEL_10;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v3)
  {
LABEL_10:
    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v9 = MEMORY[0x1E69E6448];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    return swift_willThrow();
  }

LABEL_7:

  specialized _PlistDecodingStorage.topContainer.getter(v4, v13);

  _s10Foundation24__PlistDictionaryDecoderC18unboxFloatingPoint33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKSBRzlFSf_Tt1g5(v13);
  if (v0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v10 = v5;
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  if ((v10 & 0x100000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance __PlistDictionaryDecoder()
{
  return specialized __PlistDictionaryDecoder.decode(_:)() & 1;
}

{
  return specialized __PlistDictionaryDecoder.decode(_:)();
}

{
  return specialized __PlistDictionaryDecoder.decode(_:)();
}

{
  return specialized __PlistDictionaryDecoder.decode(_:)();
}

{
  return specialized __PlistDictionaryDecoder.decode(_:)();
}

{
  return specialized __PlistDictionaryDecoder.decode(_:)();
}

{
  return specialized __PlistDictionaryDecoder.decode(_:)();
}

{
  return specialized __PlistDictionaryDecoder.decode(_:)();
}

{
  return specialized __PlistDictionaryDecoder.decode(_:)();
}

{
  return specialized __PlistDictionaryDecoder.decode(_:)();
}

{
  return specialized __PlistDictionaryDecoder.decode(_:)();
}

{
  return specialized __PlistDictionaryDecoder.decode(_:)();
}

{
  return specialized __PlistDictionaryDecoder.decode(_:)();
}

uint64_t specialized __PlistDictionaryDecoder.unbox(_:as:)(void *a1)
{
  outlined init with copy of Any(a1, &v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v10 == 0x6C6C756E24 && v11 == 0xE500000000000000)
  {

    return 2;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v3)
  {
    return 2;
  }

LABEL_7:
  outlined init with copy of Any(a1, &v12);
  v4 = MEMORY[0x1E69E6370];
  if (swift_dynamicCast())
  {
    return v10;
  }

  v6 = type metadata accessor for DecodingError();
  swift_allocError();
  v8 = v7;
  v12 = 0;
  v13 = 0xE000000000000000;

  _StringGuts.grow(_:)(43);

  v12 = 0xD000000000000022;
  v13 = 0x8000000181482220;
  v9 = specialized static DecodingError._typeDescription(of:)(a1);
  MEMORY[0x1865CB0E0](v9);

  MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v8 = v4;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6AF8], v6);
  return swift_willThrow();
}

{
  outlined init with copy of Any(a1, &v11);
  v2 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    v2 = v9;
    v3 = v9 == 0x6C6C756E24 && v10 == 0xE500000000000000;
    if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 0;
    }
  }

  else
  {
    v4 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v5;
    v11 = 0;
    v12 = 0xE000000000000000;

    _StringGuts.grow(_:)(43);

    v11 = 0xD000000000000024;
    v12 = 0x8000000181481E20;
    v7 = specialized static DecodingError._typeDescription(of:)(a1);
    MEMORY[0x1865CB0E0](v7);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v6 = v2;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
    swift_willThrow();
  }

  return v2;
}

{
  outlined init with copy of Any(a1, &v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v9 == 0x6C6C756E24 && v10 == 0xE500000000000000)
  {

    return 0;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v3)
  {
    return 0;
  }

LABEL_7:
  outlined init with copy of Any(a1, &v11);
  if (swift_dynamicCast())
  {
    return v9;
  }

  v5 = type metadata accessor for DecodingError();
  swift_allocError();
  v7 = v6;
  v11 = 0;
  v12 = 0xE000000000000000;

  _StringGuts.grow(_:)(43);

  v11 = 0xD000000000000022;
  v12 = 0x8000000181485400;
  v8 = specialized static DecodingError._typeDescription(of:)(a1);
  MEMORY[0x1865CB0E0](v8);

  MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v7 = &type metadata for Data;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69E6AF8], v5);
  return swift_willThrow();
}

void *__PlistDictionaryDecoder.init(referencing:at:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E69E7CC0];
  v3[2] = MEMORY[0x1E69E7CC0];
  outlined init with copy of Any(a1, v14);
  outlined init with copy of Any(v14, v13);
  v3[2] = v7;
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v7);
  v3[2] = v8;
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v3[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v11 = v3[2];
  *(v11 + 16) = v10 + 1;
  outlined init with take of Any(v13, (v11 + 32 * v10 + 32));
  v3[3] = a3;
  v3[4] = a2;
  v3[2] = v11;
  return v3;
}

uint64_t lazy protocol witness table accessor for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for __PlistDictionaryDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for Decoder.singleValueContainer() in conformance __PlistDictionaryDecoder@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for __PlistDictionaryDecoder();
  a1[4] = lazy protocol witness table accessor for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder(&lazy protocol witness table cache variable for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder);
  *a1 = v3;
}

_OWORD *specialized _PlistDecodingStorage.topContainer.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    outlined init with copy of Any(a1 + 32 * v3, v7);
    outlined init with copy of Any?(v7, &v5);
    if (v6)
    {
      outlined destroy of TermOfAddress?(v7, &_sypSgMd);
      return outlined init with take of Any(&v5, a2);
    }
  }

  else
  {
    __break(1u);
  }

  result = outlined destroy of TermOfAddress?(&v5, &_sypSgMd);
  __break(1u);
  return result;
}

uint64_t __PlistDictionaryDecoder.decode<A>(_:)@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - v12;
  v14 = (v4 + 16);

  specialized _PlistDecodingStorage.topContainer.getter(v15, &v35);

  if (swift_dynamicCast())
  {
    v40 = a2;
    if (v39[0] == __PAIR128__(0xE500000000000000, 0x6C6C756E24))
    {

LABEL_5:
      v17 = type metadata accessor for DecodingError();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v19 = a1;
      *&v35 = 0;
      *(&v35 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(41);

      *&v35 = 0x6465746365707845;
      *(&v35 + 1) = 0xE900000000000020;
      v20 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v20);

      MEMORY[0x1865CB0E0](0xD00000000000001ELL, 0x80000001814853B0);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
      return swift_willThrow();
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5;
    a2 = v40;
    if (v16)
    {
      goto LABEL_5;
    }
  }

  specialized _PlistDecodingStorage.topContainer.getter(v22, v39);

  if (a1 == &type metadata for Date)
  {
    __PlistDictionaryDecoder.unbox(_:as:)(v39, &v35);
    result = __swift_destroy_boxed_opaque_existential_1(v39);
    if (v6)
    {
      return result;
    }

    *&v38[0] = v35;
    BYTE8(v38[0]) = BYTE8(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  }

  else
  {
    if (a1 != &type metadata for Data)
    {
      v40 = a3;
      outlined init with copy of Any(v39, &v35);
      outlined init with copy of Any(&v35, v38);
      v23 = *v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v14 = v23;
      v34 = a4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
        *v14 = v23;
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      if (v26 >= v25 >> 1)
      {
        *v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
      }

      __swift_destroy_boxed_opaque_existential_1(&v35);
      v27 = *(v4 + 16);
      *(v27 + 16) = v26 + 1;
      outlined init with take of Any(v38, (v27 + 32 * v26 + 32));
      *(v4 + 16) = v27;
      v36 = type metadata accessor for __PlistDictionaryDecoder();
      v37 = lazy protocol witness table accessor for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder(&lazy protocol witness table cache variable for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder);
      *&v35 = v4;

      dispatch thunk of Decodable.init(from:)();
      if (v6)
      {
        specialized _PlistDecodingStorage.popContainer()();
        return __swift_destroy_boxed_opaque_existential_1(v39);
      }

      v30 = *(a2 - 8);
      (*(v30 + 56))(v13, 0, 1, a2);
      specialized _PlistDecodingStorage.popContainer()();
      __swift_destroy_boxed_opaque_existential_1(v39);
      a4 = v34;
      goto LABEL_21;
    }

    v28 = specialized __PlistDictionaryDecoder.unbox(_:as:)(v39);
    if (v6)
    {
      return __swift_destroy_boxed_opaque_existential_1(v39);
    }

    v31 = v28;
    v32 = v29;
    __swift_destroy_boxed_opaque_existential_1(v39);
    *&v35 = v31;
    *(&v35 + 1) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd);
  }

  v33 = swift_dynamicCast();
  v30 = *(a2 - 8);
  (*(v30 + 56))(v13, v33 ^ 1u, 1, a2);
LABEL_21:
  result = (*(v30 + 48))(v13, 1, a2);
  if (result != 1)
  {
    return (*(v30 + 32))(a4, v13, a2);
  }

  __break(1u);
  return result;
}