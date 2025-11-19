uint64_t sub_1920D8F14()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v6 = *v1;

  if (v0)
  {

    v4 = sub_1920D91A8;
  }

  else
  {
    sub_192033970(v2 + 56, &unk_1EADEF330, &unk_19222CD40);
    v4 = sub_1920D9044;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1920D9044()
{
  v24 = v0;

  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  *(v1 + 64) = *(v0 + 16);
  *(v1 + 80) = v3;
  *(v1 + 96) = v2;
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  InternalWidgetFamily.init(_:)([v4 family], &v21);
  v6 = v21;
  *(v5 + 32) = v21;
  v23 = v6;
  sub_19206E384(&v23, &v22);
  *(v5 + 8) = v22;
  *(v5 + 40) = [v4 family];
  v7 = [v4 kind];
  v8 = sub_192227960();
  v10 = v9;

  *(v5 + 16) = v8;
  *(v5 + 24) = v10;
  v11 = [v4 personaIdentifier];
  v12 = *(v0 + 96);
  v13 = *(v0 + 104);
  if (v11)
  {
    v14 = v11;
    v15 = sub_192227960();
    v17 = v16;

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v15 = 0;
    v17 = 0;
  }

  v18 = *(v0 + 88);
  *(v18 + 48) = v15;
  *(v18 + 56) = v17;
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1920D91A8()
{
  v22 = v0;

  sub_192033970(v0 + 56, &unk_1EADEF330, &unk_19222CD40);
  v1 = *(v0 + 88);
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  InternalWidgetFamily.init(_:)([v2 family], &v19);
  v4 = v19;
  *(v3 + 32) = v19;
  v21 = v4;
  sub_19206E384(&v21, &v20);
  *(v3 + 8) = v20;
  *(v3 + 40) = [v2 family];
  v5 = [v2 kind];
  v6 = sub_192227960();
  v8 = v7;

  *(v3 + 16) = v6;
  *(v3 + 24) = v8;
  v9 = [v2 personaIdentifier];
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  if (v9)
  {
    v12 = v9;
    v13 = sub_192227960();
    v15 = v14;

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v13 = 0;
    v15 = 0;
  }

  v16 = *(v0 + 88);
  *(v16 + 48) = v13;
  *(v16 + 56) = v15;
  v17 = *(v0 + 8);

  return v17();
}

id WidgetInfo.configuration.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t WidgetInfo.widgetConfigurationIntent<A>(of:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1920D93EC(v2 + 64, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF888, &qword_19222EAB0);
  v5 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v5 ^ 1u, 1, a1);
}

uint64_t sub_1920D93EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF888, &qword_19222EAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WidgetInfo.kind.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WidgetInfo.persona.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

BOOL static WidgetInfo.== infix(_:_:)()
{
  sub_192228AD0();
  WidgetInfo.hash(into:)();
  v0 = sub_192228B30();
  sub_192228AD0();
  WidgetInfo.hash(into:)();
  return v0 == sub_192228B30();
}

uint64_t WidgetInfo.hashValue.getter()
{
  sub_192228AD0();
  WidgetInfo.hash(into:)();
  return sub_192228B30();
}

void WidgetInfo.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  if (*v0)
  {
    sub_192228AF0();
    v3 = v2;
    sub_1922281E0();
  }

  else
  {
    sub_192228AF0();
  }

  MEMORY[0x193B0BA90](*(v1 + 8));
  MEMORY[0x193B0BA90](*(v1 + 32));
  v4 = v1[2];
  v5 = v1[3];
  sub_1922279B0();
  if (v1[7])
  {
    v6 = v1[6];
    sub_192228AF0();
    sub_1922279B0();
  }

  else
  {
    sub_192228AF0();
  }

  sub_1920D93EC((v1 + 8), v8);
  if (!v9)
  {
    sub_192033970(v8, &qword_1EADEF888, &qword_19222EAB0);
    v10 = 0u;
    v11 = 0u;
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_192224C70();
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (!*(&v11 + 1))
  {
LABEL_12:
    sub_192033970(&v10, &unk_1EADEF330, &unk_19222CD40);
    goto LABEL_13;
  }

  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  if (swift_dynamicCast())
  {
    v7 = v8[0];
    sub_192228AF0();
    sub_1922281E0();

    return;
  }

LABEL_13:
  sub_192228AF0();
}

uint64_t sub_1920D976C()
{
  sub_192228AD0();
  WidgetInfo.hash(into:)();
  return sub_192228B30();
}

uint64_t sub_1920D97B0()
{
  sub_192228AD0();
  WidgetInfo.hash(into:)();
  return sub_192228B30();
}

BOOL sub_1920D97EC()
{
  sub_192228AD0();
  WidgetInfo.hash(into:)();
  v0 = sub_192228B30();
  sub_192228AD0();
  WidgetInfo.hash(into:)();
  return v0 == sub_192228B30();
}

uint64_t WidgetInfo.debugDescription.getter()
{
  v1 = v0;
  v2 = 7104878;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_192228400();
  v14 = 0;
  v15 = 0xE000000000000000;
  MEMORY[0x193B0A990](0xD00000000000001DLL, 0x8000000192249F30);
  if (*v0)
  {
    v3 = *v0;
    v4 = [v3 description];
    v5 = sub_192227960();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x193B0A990](v5, v7);

  MEMORY[0x193B0A990](0xD00000000000001ELL, 0x8000000192249F50);
  sub_1920D93EC((v1 + 8), v12);
  v8 = v13;
  sub_192033970(v12, &qword_1EADEF888, &qword_19222EAB0);
  if (!v8)
  {
    v11 = 0xE300000000000000;
    goto LABEL_8;
  }

  result = sub_1920D93EC((v1 + 8), v12);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF890, &qword_19222EAB8);
    v2 = sub_192227990();
    v11 = v10;
LABEL_8:
    MEMORY[0x193B0A990](v2, v11);

    MEMORY[0x193B0A990](0x6C696D6166202D0ALL, 0xEB00000000203A79);
    sub_1920D8A88(*(v1 + 8));
    MEMORY[0x193B0A990](0x3A646E696B202D0ALL, 0xE900000000000020);
    MEMORY[0x193B0A990](v1[2], v1[3]);
    return v14;
  }

  __break(1u);
  return result;
}

unint64_t sub_1920D9A68()
{
  result = qword_1EADEF898;
  if (!qword_1EADEF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF898);
  }

  return result;
}

unint64_t sub_1920D9AC0()
{
  result = qword_1EADEF8A0[0];
  if (!qword_1EADEF8A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADEF8A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents0A6Intent_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1920D9B58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1920D9BA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1920D9C08()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1920D9C5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1922283A0();
  if (v3 <= 0x3F)
  {
    result = sub_1920DA1D8();
    if (v4 <= 0x3F)
    {
      result = sub_192228240();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1920D9D04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 24) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1920D9EC4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 24) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;
      v28 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

      v26(v28, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}

unint64_t sub_1920DA1D8()
{
  result = qword_1ED74A2D8[0];
  if (!qword_1ED74A2D8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_1ED74A2D8);
  }

  return result;
}

uint64_t sub_1920DA228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_192228240();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - v12;
  (*(*(a4 - 8) + 56))(&v15 - v12, 1, 1, a4);
  sub_1920DA314(a1, a2, a3, v13, a5);
}

uint64_t sub_1920DA314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for DedupedSequence.DedupedIterator() + 32);
  v8 = sub_192228240();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t sub_1920DA3A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ViewableTimelineEntry();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  sub_1920D86C4(a1, v10);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    v20 = v10;
  }

  else
  {
    sub_1920DA8FC(v10, v18);
    sub_1920D86C4(a2, v8);
    if (v19(v8, 1, v11) != 1)
    {
      sub_1920DA8FC(v8, v16);
      v21 = sub_192225120();
      sub_1920DA960(v16);
      sub_1920DA960(v18);
      return v21 & 1;
    }

    sub_1920DA960(v18);
    v20 = v8;
  }

  sub_1920DA894(v20);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1920DA5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v4 = *(a1 + 16);
  v5 = sub_192228240();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v26 = v25 - v11;
  v12 = *(v4 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v27 = v4;
  v13(a2, 1, 1, v4);
  v28 = v2;
  v15 = *v2;
  v25[0] = v6;
  v25[1] = v15;
  v16 = (v6 + 8);
  v17 = (v6 + 32);
  v18 = (v6 + 16);
  v19 = (v14 - 8);
  do
  {
    v20 = v26;
    v21 = v27;
    sub_192228390();
    v22 = *v16;
    (*v16)(a2, v5);
    (*v17)(a2, v20, v5);
    (*v18)(v10, a2, v5);
    LODWORD(v21) = (*v19)(v10, 1, v21);
    v22(v10, v5);
    if (v21 == 1)
    {
      break;
    }

    v23 = *(v28 + 2);
  }

  while (((*(v28 + 1))(a2, &v28[*(v29 + 32)]) & 1) != 0);
  return (*(v25[0] + 24))(&v28[*(v29 + 32)], a2, v5);
}

uint64_t sub_1920DA7F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1920DA228(*v2, v2[1], v2[2], *(a1 + 16), a2);
}

uint64_t sub_1920DA848()
{
  v1 = sub_1920DA890();
  v2 = *v0;

  v3 = v0[2];

  return v1;
}

uint64_t sub_1920DA894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1920DA8FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewableTimelineEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920DA960(uint64_t a1)
{
  v2 = type metadata accessor for ViewableTimelineEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WidgetMountingStyle.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

unint64_t sub_1920DAB10()
{
  result = qword_1ED74ABA8;
  if (!qword_1ED74ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ABA8);
  }

  return result;
}

unint64_t sub_1920DAB88()
{
  result = qword_1EADEF928;
  if (!qword_1EADEF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF928);
  }

  return result;
}

unint64_t sub_1920DABDC()
{
  result = qword_1EADEF930;
  if (!qword_1EADEF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF930);
  }

  return result;
}

uint64_t sub_1920DAC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char **a8@<X8>, uint64_t a9)
{
  v25 = a3;
  v26 = a6;
  v15 = *(a9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a9;
  v28 = v19;
  v29 = v21;
  v30 = v20;
  v22 = type metadata accessor for TimelineEntryProvider();
  (*(v15 + 16))(v18, a5, a9);
  v23 = sub_192084960(a1, a2, v25, a4, v18, v26, a7);
  a8[3] = v22;
  a8[4] = swift_getWitnessTable();
  *a8 = v23;
}

uint64_t sub_1920DAD98@<X0>(char **a1@<X8>)
{
  v2 = v1[2];
  v3 = (*(*(v1[3] - 8) + 80) + 80) & ~*(*(v1[3] - 8) + 80);
  v4 = (v1 + ((*(*(v1[3] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v1[4];
  v7 = v1[5];
  return sub_1920DAC30(v1[6], v1[7], v1[8], v1[9], v1 + v3, *v4, v4[1], a1, v1[3]);
}

uint64_t sub_1920DAE34(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1920DAEE0()
{
  v1 = *v0;
  v2 = sub_192228BD0();
  MEMORY[0x193B0A990](v2);

  MEMORY[0x193B0A990](32, 0xE100000000000000);
  MEMORY[0x193B0A990](v0[2], v0[3]);
  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1920DAF90(void *a1, id *a2)
{
  v3 = v2;
  v128 = a1;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v142 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v144 = &v121 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v121 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v145 = &v121 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v121 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v132 = &v121 - v20;
  v21 = type metadata accessor for ViewableTimelineEntry();
  v136 = *(v21 - 8);
  v139 = v21 - 8;
  v149 = v136;
  v22 = v136[8];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v140 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v141 = &v121 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v121 - v27;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v28 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v147 = (&v121 - v29);
  v143 = sub_192225150();
  v146 = *(v143 - 8);
  v30 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v138 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for BundleStub();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v137 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for TimelineReloadPolicy();
  v35 = *(*(v135 - 1) + 64);
  v36 = MEMORY[0x1EEE9AC00](v135);
  v127 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = *(v5 + 88);
  v126 = *(v134 - 8);
  v38 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v125 = &v121 - v39;
  v40 = v5;
  v41 = *(v5 + 96);
  v131 = v40;
  v42 = *(v40 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v123 = *(AssociatedTypeWitness - 8);
  v43 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v121 - v44;
  v46 = v2 + *(v40 + 120);
  (*(v41 + 24))(a2, v42, v41);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v48 = *(v149 + 80);
  v49 = (v48 + 32) & ~v48;
  v139 = v136[9];
  v129 = v48;
  v130 = v47;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_19222B480;
  v51 = v3 + *(*v3 + 128);
  v52 = *v51;
  v53 = *(v51 + 1);
  v54 = v125;
  v122 = v45;
  v52(v45);
  v55 = *(v131 + 104);
  v131 = v49;
  v56 = v134;
  sub_19221A9D4(v54, v134, v55);
  (*(v126 + 8))(v54, v56);
  v57 = qword_1ED74B558;
  v125 = *a2;
  if (v57 != -1)
  {
LABEL_50:
    swift_once();
  }

  v58 = __swift_project_value_buffer(v135, qword_1ED74B570);
  sub_192055544(v58, v127, type metadata accessor for TimelineReloadPolicy);
  v59 = type metadata accessor for WidgetViewCollection();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  v62 = swift_allocObject();
  v63 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v64 = sub_192224E00();
  (*(*(v64 - 8) + 56))(v62 + v63, 1, 1, v64);
  v65 = [v128 extensionIdentity];
  v66 = v137;
  BundleStub.init(_:)(v65, v137);
  sub_1920E07FC(v66, v62 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v67 = v138;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v68 = *(v146 + 32);
  v126 = v62;
  v68(v62 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v67, v143);
  v150 = v50;

  sub_19209B0C4(&v150);

  v69 = v150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v69;
  *(inited + 24) = 0;
  v71 = v131;
  v136 = MEMORY[0x1E69E7CC0];
  v135 = (MEMORY[0x1E69E7CC0] + v131);
  v73 = v149 + 7;
  v72 = v149[7];
  v74 = v147;
  v146 = *(v148 + 32);
  v148 = v72;
  v72(v147 + v146, 1, 1, v21);
  *v74 = inited;
  v74[1] = sub_1920DA3A8;
  v74[2] = 0;
  v143 = v69;
  v137 = v69 + v71;
  v138 = inited;
  v149 = v73;
  v50 = (v73 - 1);

  v134 = 0;
  v75 = 0;
  v76 = v142;
  while (2)
  {
    (v148)(v19, 1, 1, v21);
    while (1)
    {
      v77 = *(v143 + 16);
      if (v75 == v77)
      {
        v78 = 1;
        v80 = v144;
        v79 = v145;
      }

      else
      {
        v80 = v144;
        v79 = v145;
        if (v75 >= v77)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_192055544(v137 + v75 * v139, v145, type metadata accessor for ViewableTimelineEntry);
        v78 = 0;
        *(v138 + 3) = ++v75;
      }

      (v148)(v79, v78, 1, v21);
      v81 = &unk_19222A7D0;
      sub_192033970(v19, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v79, v19);
      sub_1920D86C4(v19, v14);
      v82 = *v50;
      if ((*v50)(v14, 1, v21) == 1)
      {
        v85 = v14;
        goto LABEL_16;
      }

      sub_192033970(v14, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v19, v80);
      if ((v82)(v80, 1, v21) == 1)
      {
        v85 = v80;
        goto LABEL_16;
      }

      v81 = v141;
      sub_1920E07FC(v80, v141, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v147 + v146, v76);
      if ((v82)(v76, 1, v21) == 1)
      {
        break;
      }

      v83 = v140;
      sub_1920E07FC(v76, v140, type metadata accessor for ViewableTimelineEntry);
      v84 = sub_192225120();
      sub_192046F48(v83, type metadata accessor for ViewableTimelineEntry);
      v76 = v142;
      sub_192046F48(v81, type metadata accessor for ViewableTimelineEntry);
      if ((v84 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_192046F48(v81, type metadata accessor for ViewableTimelineEntry);
    v85 = v76;
LABEL_16:
    sub_192033970(v85, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v19, v147 + v146);
    v86 = v132;
    sub_1920D8654(v19, v132);
    if ((v82)(v86, 1, v21) != 1)
    {
      sub_1920E07FC(v86, v133, type metadata accessor for ViewableTimelineEntry);
      v87 = v139;
      if (v134)
      {
        v88 = v136;
        v89 = v134 - 1;
        if (__OFSUB__(v134, 1))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v90 = v136[3];
      if (((v90 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v91 = v90 & 0xFFFFFFFFFFFFFFFELL;
      if (v91 <= 1)
      {
        v92 = 1;
      }

      else
      {
        v92 = v91;
      }

      v93 = v131;
      v88 = swift_allocObject();
      v94 = _swift_stdlib_malloc_size(v88);
      if (!v87)
      {
        goto LABEL_48;
      }

      if (v94 - v93 == 0x8000000000000000 && v87 == -1)
      {
        goto LABEL_49;
      }

      v96 = v87;
      v97 = (v94 - v93) / v87;
      v88[2] = v92;
      v88[3] = 2 * v97;
      v98 = v88 + v93;
      v99 = v136;
      v100 = v136[3] >> 1;
      v101 = v100 * v96;
      if (!v136[2])
      {
LABEL_39:
        v135 = &v98[v101];
        v102 = (v97 & 0x7FFFFFFFFFFFFFFFLL) - v100;

        v103 = v102;
        v76 = v142;
        v87 = v139;
        v104 = __OFSUB__(v103, 1);
        v89 = v103 - 1;
        if (v104)
        {
          goto LABEL_46;
        }

LABEL_40:
        v134 = v89;
        v105 = v135;
        sub_1920E07FC(v133, v135, type metadata accessor for ViewableTimelineEntry);
        v135 = (v105 + v87);
        v136 = v88;
        continue;
      }

      if (v88 < v136 || v98 >= v136 + v93 + v101)
      {
        v135 = (v136[3] >> 1);
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v88 == v136)
        {
LABEL_38:
          v99[2] = 0;
          goto LABEL_39;
        }

        v135 = (v136[3] >> 1);
        swift_arrayInitWithTakeBackToFront();
      }

      v100 = v135;
      v99 = v136;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v147, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v86, &qword_1EADEE9F8, &unk_19222A7D0);
  v106 = v136;
  v107 = v136[3];
  v108 = v128;
  v109 = v127;
  if (v107 < 2)
  {
    goto LABEL_44;
  }

  v110 = v107 >> 1;
  v104 = __OFSUB__(v110, v134);
  v111 = v110 - v134;
  if (!v104)
  {
    v136[2] = v111;
LABEL_44:
    v112 = v138;
    v113 = v106;
    swift_setDeallocating();
    v114 = *(v112 + 2);

    v115 = v126;
    *(v126 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v113;
    *(v115 + 16) = v125;
    *(v115 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v108;
    sub_192055544(v109, v115 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    LOBYTE(v112) = byte_1ED74B5B8;
    v116 = v108;
    sub_192046F48(v109, type metadata accessor for TimelineReloadPolicy);
    (*(v123 + 8))(v122, AssociatedTypeWitness);
    *(v115 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v112;
    *(v115 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    return v115;
  }

  __break(1u);

  v118 = v126;
  sub_192046F48(v81 + v126, type metadata accessor for BundleStub);
  sub_192033970(v118 + *(v82 + 1848), &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v146 + 8))(v118 + *v75, &qword_1EADEE9F8);
  v119 = *(*v118 + 48);
  v120 = *(*v118 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1920DBE98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v8 = *v4;
  v9 = type metadata accessor for TimelineProviderContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = v8[15];
  sub_192055544(a2, v12, type metadata accessor for TimelineProviderContext);
  v13 = (*(v10 + 80) + 80) & ~*(v10 + 80);
  v14 = swift_allocObject();
  v15 = v8[10];
  v14[2] = v15;
  v14[3] = v8[11];
  v16 = v8[12];
  v14[4] = v16;
  v14[5] = v8[13];
  v14[6] = v4;
  v14[7] = v20[0];
  v14[8] = a4;
  v14[9] = a1;
  sub_1920E07FC(v12, v14 + v13, type metadata accessor for TimelineProviderContext);
  v17 = *(v16 + 32);

  v18 = a1;
  v17(a2, sub_1920E09C4, v14, v15, v16);
}

uint64_t sub_1920DC0A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v36 = a4;
  v37 = a5;
  v35 = a3;
  v9 = *a2;
  v10 = type metadata accessor for TimelineProviderContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v9;
  v33 = *(v9 + 96);
  v32 = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v30 - v16;
  (*(v14 + 16))(&v30 - v16, a1, AssociatedTypeWitness);
  sub_192055544(a6, &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  v18 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v11 + 80) + v21 + 8) & ~*(v11 + 80);
  v23 = swift_allocObject();
  v24 = v34;
  *(v23 + 2) = v32;
  *(v23 + 3) = *(v24 + 88);
  *(v23 + 4) = v33;
  *(v23 + 5) = *(v24 + 104);
  (*(v14 + 32))(&v23[v18], v17, AssociatedTypeWitness);
  *&v23[v19] = a2;
  v25 = &v23[v20];
  v26 = v36;
  *v25 = v35;
  *(v25 + 1) = v26;
  v27 = v37;
  *&v23[v21] = v37;
  sub_1920E07FC(v31, &v23[v22], type metadata accessor for TimelineProviderContext);

  v28 = v27;
  sub_1920873B4(sub_1920E0A68, v23);
}

uint64_t sub_1920DC394(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5, id *a6)
{
  v143 = a6;
  v134 = a5;
  v127[1] = a4;
  v128 = a3;
  v142 = a1;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v147 = v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v148 = v127 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v127 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v150 = v127 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v127 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v138 = v127 - v22;
  v23 = type metadata accessor for ViewableTimelineEntry();
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v146 = v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v127 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v140 = v127 - v31;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v32 = *(*(v151 - 8) + 64);
  MEMORY[0x1EEE9AC00](v151);
  v152 = (v127 - v33);
  v34 = type metadata accessor for BundleStub();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v144 = v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for TimelineReloadPolicy();
  v37 = *(*(v139 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v139);
  v133 = v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v7[11];
  v40 = (*(*(v132 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v131 = v127 - v41;
  v153 = sub_192225150();
  v149 = *(v153 - 1);
  v42 = v149[8];
  MEMORY[0x1EEE9AC00](v153);
  v44 = v127 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v46 = *(v24 + 72);
  v154 = v24;
  v47 = *(v24 + 80);
  v48 = (v47 + 32) & ~v47;
  v145 = v46;
  v135 = v47;
  v136 = v45;
  v49 = swift_allocObject();
  v129 = v7;
  *(v49 + 16) = xmmword_19222B480;
  v137 = v48;
  v141 = v49;
  v130 = v49 + v48;
  v50 = v7[12];
  v51 = v7[10];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = *(AssociatedConformanceWitness + 8);
  v54 = swift_checkMetadataState();
  v55 = v142;
  v53(v54, AssociatedConformanceWitness);
  v56 = a2 + *(*a2 + 128);
  v57 = *(v56 + 8);
  (*v56)(v55);
  v58 = v129[13];
  v59 = sub_192227570();
  v60 = v23[7];
  v61 = type metadata accessor for WidgetViewMetadata();
  v62 = v130;
  (*(*(v61 - 8) + 56))(v130 + v60, 1, 1, v61);
  v63 = v149[4];
  v142 = v44;
  (v63)(v62, v44, v153);
  *(v62 + v23[5]) = v59;
  v64 = v62 + v23[6];
  *v64 = 0;
  *(v64 + 8) = 0;
  *(v64 + 16) = 1;
  *(v62 + v23[8]) = xmmword_19222A790;
  v65 = qword_1ED74B558;
  v131 = *v143;
  if (v65 != -1)
  {
LABEL_50:
    swift_once();
  }

  v66 = __swift_project_value_buffer(v139, qword_1ED74B570);
  sub_192055544(v66, v133, type metadata accessor for TimelineReloadPolicy);
  v67 = type metadata accessor for WidgetViewCollection();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  v70 = swift_allocObject();
  v71 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v72 = sub_192224E00();
  (*(*(v72 - 8) + 56))(v70 + v71, 1, 1, v72);
  v73 = [v134 extensionIdentity];
  v74 = v144;
  BundleStub.init(_:)(v73, v144);
  sub_1920E07FC(v74, v70 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v75 = v142;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v132 = v70;
  (v63)(v70 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v75, v153);
  v155 = v141;

  sub_19209B0C4(&v155);

  v76 = v155;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v76;
  *(inited + 24) = 0;
  v78 = v137;
  v142 = MEMORY[0x1E69E7CC0];
  v139 = MEMORY[0x1E69E7CC0] + v137;
  v79 = v152;
  v81 = v154 + 56;
  v80 = *(v154 + 56);
  v151 = *(v151 + 32);
  v153 = v80;
  v80(v152 + v151, 1, 1, v23);
  *v79 = inited;
  v79[1] = sub_1920DA3A8;
  v79[2] = 0;
  v149 = v76;
  v143 = (v76 + v78);
  v144 = inited;
  v154 = v81;
  v63 = (v81 - 8);

  v141 = 0;
  v82 = 0;
  v83 = v147;
  while (2)
  {
    v153(v21, 1, 1, v23);
    while (1)
    {
      v84 = v149[2];
      if (v82 == v84)
      {
        v85 = 1;
        v86 = v150;
      }

      else
      {
        v86 = v150;
        if (v82 >= v84)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_192055544(v143 + v82 * v145, v150, type metadata accessor for ViewableTimelineEntry);
        v85 = 0;
        *(v144 + 24) = ++v82;
      }

      v153(v86, v85, 1, v23);
      sub_192033970(v21, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v86, v21);
      sub_1920D86C4(v21, v16);
      v87 = *v63;
      if ((*v63)(v16, 1, v23) == 1)
      {
        v91 = v16;
        goto LABEL_16;
      }

      sub_192033970(v16, &qword_1EADEE9F8, &unk_19222A7D0);
      v88 = v148;
      sub_1920D86C4(v21, v148);
      if (v87(v88, 1, v23) == 1)
      {
        v91 = v88;
        goto LABEL_16;
      }

      sub_1920E07FC(v88, v30, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v152 + v151, v83);
      if (v87(v83, 1, v23) == 1)
      {
        break;
      }

      v89 = v146;
      sub_1920E07FC(v83, v146, type metadata accessor for ViewableTimelineEntry);
      v90 = sub_192225120();
      sub_192046F48(v89, type metadata accessor for ViewableTimelineEntry);
      v83 = v147;
      sub_192046F48(v30, type metadata accessor for ViewableTimelineEntry);
      if ((v90 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_192046F48(v30, type metadata accessor for ViewableTimelineEntry);
    v91 = v83;
LABEL_16:
    sub_192033970(v91, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v21, v152 + v151);
    v92 = v138;
    sub_1920D8654(v21, v138);
    if (v87(v92, 1, v23) != 1)
    {
      sub_1920E07FC(v92, v140, type metadata accessor for ViewableTimelineEntry);
      v93 = v139;
      if (v141)
      {
        v94 = v142;
        v95 = (v141 - 1);
        if (__OFSUB__(v141, 1))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v96 = v142[3];
      if (((v96 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v97 = v96 & 0xFFFFFFFFFFFFFFFELL;
      if (v97 <= 1)
      {
        v98 = 1;
      }

      else
      {
        v98 = v97;
      }

      v99 = v145;
      v100 = v137;
      v94 = swift_allocObject();
      v101 = _swift_stdlib_malloc_size(v94);
      if (!v99)
      {
        goto LABEL_48;
      }

      if (v101 - v100 == 0x8000000000000000 && v99 == -1)
      {
        goto LABEL_49;
      }

      v103 = v99;
      v104 = (v101 - v100) / v99;
      v94[2] = v98;
      v94[3] = 2 * v104;
      v105 = v94 + v100;
      v106 = v142;
      v107 = (v142[3] >> 1);
      v108 = v107 * v103;
      if (!v142[2])
      {
LABEL_39:
        v93 = v105 + v108;
        v109 = (v104 & 0x7FFFFFFFFFFFFFFFLL) - v107;

        v110 = v109;
        v83 = v147;
        v111 = __OFSUB__(v110, 1);
        v95 = (v110 - 1);
        if (v111)
        {
          goto LABEL_46;
        }

LABEL_40:
        v141 = v95;
        sub_1920E07FC(v140, v93, type metadata accessor for ViewableTimelineEntry);
        v139 = v93 + v145;
        v142 = v94;
        continue;
      }

      if (v94 < v142 || v105 >= v142 + v100 + v108)
      {
        v141 = (v142[3] >> 1);
        v139 = v94 + v100;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v94 == v142)
        {
LABEL_38:
          v106[2] = 0;
          goto LABEL_39;
        }

        v141 = (v142[3] >> 1);
        v139 = v94 + v100;
        swift_arrayInitWithTakeBackToFront();
      }

      v107 = v141;
      v105 = v139;
      v106 = v142;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v152, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v92, &qword_1EADEE9F8, &unk_19222A7D0);
  v112 = v142;
  v113 = v142[3];
  v114 = v134;
  v115 = v133;
  if (v113 < 2)
  {
    goto LABEL_44;
  }

  v116 = v113 >> 1;
  v111 = __OFSUB__(v116, v141);
  v117 = v116 - v141;
  if (!v111)
  {
    v142[2] = v117;
LABEL_44:
    v118 = v144;
    v119 = v112;
    swift_setDeallocating();
    v120 = *(v118 + 16);

    v121 = v132;
    *(v132 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v119;
    *(v121 + 16) = v131;
    *(v121 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v114;
    sub_192055544(v115, v121 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    LOBYTE(v118) = byte_1ED74B5B8;
    v122 = v114;
    sub_192046F48(v115, type metadata accessor for TimelineReloadPolicy);
    *(v121 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v118;
    *(v121 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    v128(v121);
  }

  __break(1u);

  v124 = v132;
  sub_192046F48(v132 + v82, type metadata accessor for BundleStub);
  sub_192033970(v124 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  (v149[1])(v124 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, &qword_1EADEE9F8);
  v125 = *(*v124 + 48);
  v126 = *(*v124 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1920DD294(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22[0] = a4;
  v22[1] = a2;
  v10 = *v5;
  v11 = type metadata accessor for TimelineProviderContext();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192055544(a3, v14, type metadata accessor for TimelineProviderContext);
  v15 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v10[10];
  v16[2] = v17;
  v16[3] = v10[11];
  v18 = v10[12];
  v16[4] = v18;
  v16[5] = v10[13];
  v16[6] = v6;
  v16[7] = v22[0];
  v16[8] = a5;
  v16[9] = a1;
  sub_1920E07FC(v14, v16 + v15, type metadata accessor for TimelineProviderContext);
  v19 = *(v18 + 40);

  v20 = a1;
  v19(a3, sub_1920E0674, v16, v17, v18);
}

uint64_t sub_1920DD488(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v9 = *a2;
  v10 = type metadata accessor for TimelineProviderContext();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v9;
  v31 = *(v9 + 96);
  v30 = *(v9 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Timeline();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  (*(v13 + 16))(&v29 - v15, a1, v12);
  sub_192055544(a6, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v33 + 80) + v20 + 8) & ~*(v33 + 80);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 2) = v30;
  *(v22 + 3) = *(v23 + 88);
  *(v22 + 4) = v31;
  *(v22 + 5) = *(v23 + 104);
  (*(v13 + 32))(&v22[v17], v16, v12);
  *&v22[v18] = a2;
  v24 = &v22[v19];
  v25 = v35;
  *v24 = v34;
  *(v24 + 1) = v25;
  v26 = v36;
  *&v22[v20] = v36;
  sub_1920E07FC(v29, &v22[v21], type metadata accessor for TimelineProviderContext);

  v27 = v26;
  sub_1920873B4(sub_1920E068C, v22);
}

uint64_t sub_1920DD7B8(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4, void *a5, void **a6)
{
  v139 = a6;
  v121 = a5;
  v118 = a4;
  v119 = a3;
  v138 = a1;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v134 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v141 = &v114 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v114 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v136 = (&v114 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v114 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v124 = (&v114 - v22);
  v23 = type metadata accessor for ViewableTimelineEntry();
  v131 = *(v23 - 8);
  v24 = *(v131 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v132 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v140 = (&v114 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v125 = &v114 - v29;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v30 = *(*(v142 - 8) + 64);
  MEMORY[0x1EEE9AC00](v142);
  v120 = &v114 - v31;
  v137 = sub_192225150();
  v135 = *(v137 - 8);
  v32 = v135[8];
  MEMORY[0x1EEE9AC00](v137);
  v133 = (&v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for BundleStub();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v130 = &v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TimelineReloadPolicy();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = a2;
  v41 = *(v7 + 96);
  v42 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = type metadata accessor for Timeline();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v48 = (&v114 - v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7E8, &qword_19222E9C0);
  v50 = v49 - 8;
  v51 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v53 = (&v114 - v52);
  (*(v45 + 16))(v48, v138, v44);
  sub_192203450(v48, sub_1920E07E0, v129, v23, AssociatedTypeWitness, &protocol witness table for ViewableTimelineEntry, AssociatedConformanceWitness, v53);
  v138 = 0;
  v54 = *v139;
  v55 = *v53;
  v56 = *(v50 + 44);
  v116 = v53;
  v117 = v40;
  sub_192055544(v53 + v56, v40, type metadata accessor for TimelineReloadPolicy);
  v57 = type metadata accessor for WidgetViewCollection();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  v139 = v57;
  v60 = swift_allocObject();
  v61 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v62 = sub_192224E00();
  (*(*(v62 - 8) + 56))(v60 + v61, 1, 1, v62);
  v114 = v54;
  v63 = [v121 extensionIdentity];
  v64 = v130;
  BundleStub.init(_:)(v63, v130);
  v65 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle;
  sub_1920E07FC(v64, v60 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v66 = v133;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v67 = &OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  v68 = v135;
  v69 = v135[4];
  v115 = v60;
  v70 = v137;
  v69(v60 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v66, v137);
  v143 = v55;

  v71 = v138;
  sub_19209B0C4(&v143);
  if (v71)
  {
    goto LABEL_51;
  }

  v72 = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v72;
  *(inited + 24) = 0;
  v65 = v131 + 56;
  v74 = *(v131 + 56);
  v123 = *(v131 + 80);
  v75 = (v123 + 32) & ~v123;
  AssociatedConformanceWitness = MEMORY[0x1E69E7CC0];
  v127 = MEMORY[0x1E69E7CC0] + v75;
  v137 = *(v142 + 32);
  v67 = v120;
  v138 = v74;
  (v74)(&v120[v137], 1, 1, v23);
  *v67 = inited;
  *(v67 + 8) = sub_1920DA3A8;
  *(v67 + 16) = 0;
  v135 = v72;
  v122 = v75;
  v129 = (v72 + v75);
  v139 = v65;
  v76 = (v65 - 8);
  v130 = inited;

  v126 = 0;
  v142 = 0;
  v68 = v134;
  v77 = v67;
  v133 = (v65 - 8);
  while (2)
  {
    (v138)(v21, 1, 1, v23);
    while (1)
    {
      v78 = v135[2];
      if (v142 == v78)
      {
        v79 = 1;
        v71 = v136;
      }

      else
      {
        v71 = v136;
        if (v142 >= v78)
        {
          __break(1u);
          goto LABEL_46;
        }

        v80 = v142;
        sub_192055544(v129 + *(v131 + 72) * v142, v136, type metadata accessor for ViewableTimelineEntry);
        v79 = 0;
        v142 = v80 + 1;
        *(v130 + 24) = v80 + 1;
      }

      (v138)(v71, v79, 1, v23);
      v70 = &qword_1EADEE9F8;
      v67 = &unk_19222A7D0;
      sub_192033970(v21, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v71, v21);
      sub_1920D86C4(v21, v16);
      v65 = *v76;
      if ((*v76)(v16, 1, v23) == 1)
      {
        break;
      }

      sub_192033970(v16, &qword_1EADEE9F8, &unk_19222A7D0);
      v81 = v141;
      sub_1920D86C4(v21, v141);
      if ((v65)(v81, 1, v23) == 1)
      {
        v83 = v141;
        goto LABEL_16;
      }

      sub_1920E07FC(v141, v140, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v77 + v137, v68);
      if ((v65)(v68, 1, v23) == 1)
      {
        sub_192046F48(v140, type metadata accessor for ViewableTimelineEntry);
        v83 = v68;
        goto LABEL_16;
      }

      v70 = v140;
      v67 = v132;
      sub_1920E07FC(v68, v132, type metadata accessor for ViewableTimelineEntry);
      v82 = sub_192225120();
      v76 = v133;
      sub_192046F48(v67, type metadata accessor for ViewableTimelineEntry);
      v68 = v134;
      sub_192046F48(v70, type metadata accessor for ViewableTimelineEntry);
      if ((v82 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v83 = v16;
LABEL_16:
    sub_192033970(v83, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v21, v77 + v137);
    v71 = v124;
    sub_1920D8654(v21, v124);
    if ((v65)(v71, 1, v23) != 1)
    {
      sub_1920E07FC(v71, v125, type metadata accessor for ViewableTimelineEntry);
      v65 = v131;
      if (v126)
      {
        v71 = AssociatedConformanceWitness;
        v84 = v126 - 1;
        if (!__OFSUB__(v126, 1))
        {
          goto LABEL_40;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v85 = *(AssociatedConformanceWitness + 24);
      if (((v85 >> 1) + 0x4000000000000000) < 0)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v86 = v85 & 0xFFFFFFFFFFFFFFFELL;
      if (v86 <= 1)
      {
        v68 = 1;
      }

      else
      {
        v68 = v86;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
      v65 = *(v65 + 72);
      v87 = v122;
      v71 = swift_allocObject();
      v88 = _swift_stdlib_malloc_size(v71);
      if (!v65)
      {
        goto LABEL_48;
      }

      v89 = v88 - v87;
      if (v88 - v87 == 0x8000000000000000 && v65 == -1)
      {
        goto LABEL_49;
      }

      v91 = v87;
      v67 = v89 / v65;
      v71[2] = v68;
      v71[3] = 2 * (v89 / v65);
      v70 = (v71 + v87);
      v92 = AssociatedConformanceWitness;
      v93 = *(AssociatedConformanceWitness + 24) >> 1;
      v94 = v93 * v65;
      v76 = v133;
      v68 = v134;
      if (!*(AssociatedConformanceWitness + 16))
      {
LABEL_39:
        v127 = v70 + v94;
        v95 = (v67 & 0x7FFFFFFFFFFFFFFFLL) - v93;

        v96 = v95;
        v65 = v131;
        v97 = __OFSUB__(v96, 1);
        v84 = v96 - 1;
        if (!v97)
        {
LABEL_40:
          v126 = v84;
          v98 = v127;
          sub_1920E07FC(v125, v127, type metadata accessor for ViewableTimelineEntry);
          v67 = v98 + *(v65 + 72);
          v127 = v67;
          AssociatedConformanceWitness = v71;
          continue;
        }

        goto LABEL_46;
      }

      if (v71 < AssociatedConformanceWitness || v70 >= AssociatedConformanceWitness + v91 + v94)
      {
        v127 = *(AssociatedConformanceWitness + 24) >> 1;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v71 == AssociatedConformanceWitness)
        {
LABEL_38:
          *(v92 + 16) = 0;
          goto LABEL_39;
        }

        v127 = *(AssociatedConformanceWitness + 24) >> 1;
        swift_arrayInitWithTakeBackToFront();
      }

      v93 = v127;
      v92 = AssociatedConformanceWitness;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v77, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v71, &qword_1EADEE9F8, &unk_19222A7D0);
  v99 = AssociatedConformanceWitness;
  v100 = *(AssociatedConformanceWitness + 24);
  if (v100 < 2)
  {
LABEL_44:
    v103 = v130;
    v104 = v99;
    swift_setDeallocating();
    v105 = *(v103 + 16);

    v106 = v115;
    *(v115 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v104;
    *(v106 + 16) = v114;
    v107 = v121;
    *(v106 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v121;
    v108 = v117;
    sub_192055544(v117, v106 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    LOBYTE(v103) = byte_1ED74B5B8;
    v109 = v107;
    sub_192046F48(v108, type metadata accessor for TimelineReloadPolicy);
    *(v106 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v103;
    *(v106 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    v119(v106);

    return sub_192033970(v116, &qword_1EADEF7E8, &qword_19222E9C0);
  }

  v101 = v100 >> 1;
  v97 = __OFSUB__(v101, v126);
  v102 = v101 - v126;
  if (!v97)
  {
    *(AssociatedConformanceWitness + 16) = v102;
    goto LABEL_44;
  }

LABEL_50:
  __break(1u);
LABEL_51:

  v111 = v115;
  sub_192046F48(v115 + v65, type metadata accessor for BundleStub);
  sub_192033970(v111 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v68 + 8))(v111 + *v67, v70);
  v112 = *(*v111 + 48);
  v113 = *(*v111 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1920DE5FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 120);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  sub_1920DD294(a1, v4 + v9, a2, sub_192030B68, v10);
}

uint64_t sub_1920DE6B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v43 = a7;
  v44 = a4;
  v35 = a5;
  v38 = a3;
  v39 = a2;
  v40 = a1;
  v10 = *v7;
  v11 = type metadata accessor for TimelineProviderContext();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a6;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - v18;
  v42 = &v33 - v18;
  v20 = sub_192227CF0();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v14 + 16))(&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v38, a6);
  sub_192055544(v39, &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  sub_192227CC0();

  v40 = v40;

  v21 = sub_192227CB0();
  v22 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v41 + 80) + v24 + 8) & ~*(v41 + 80);
  v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  *(v27 + 2) = v21;
  *(v27 + 3) = v28;
  *(v27 + 4) = v10[10];
  v29 = v34;
  *(v27 + 5) = v10[11];
  *(v27 + 6) = v29;
  *(v27 + 7) = v10[12];
  *(v27 + 8) = v10[13];
  *(v27 + 9) = v43;
  (*(v14 + 32))(&v27[v22], v36);
  *&v27[v23] = v8;
  *&v27[v24] = v40;
  sub_1920E07FC(v37, &v27[v25], type metadata accessor for TimelineProviderContext);
  v30 = &v27[v26];
  v31 = v35;
  *v30 = v44;
  *(v30 + 1) = v31;
  sub_19211CA04(0, 0, v42, &unk_19222F0C8, v27);
}

uint64_t sub_1920DEA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = v15;
  v8[44] = v16;
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a5;
  v8[40] = a6;
  v8[38] = a4;
  v8[45] = *a5;
  v9 = *(v16 - 8);
  v8[46] = v9;
  v10 = *(v9 + 64) + 15;
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  sub_192227CC0();
  v8[49] = sub_192227CB0();
  v12 = sub_192227C70();
  v8[50] = v12;
  v8[51] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1920DEB84, v12, v11);
}

uint64_t sub_1920DEB84()
{
  v1 = *(*(v0 + 368) + 16);
  v1(*(v0 + 384), *(v0 + 304), *(v0 + 352));
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    *(v0 + 416) = v3;
    *(v0 + 424) = v6;
    *(v0 + 232) = v2;
    *(v0 + 240) = v3;
    *(v0 + 248) = v4;
    *(v0 + 256) = v5;
    *(v0 + 264) = v6;
    v7 = swift_task_alloc();
    *(v0 + 432) = v7;
    *v7 = v0;
    v7[1] = sub_1920D58D8;
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    v10 = *(v0 + 312);

    return sub_1920DEE88(v9, v8, v0 + 232);
  }

  else
  {
    v1(*(v0 + 376), *(v0 + 304), *(v0 + 352));
    if (swift_dynamicCast())
    {
      v12 = *(v0 + 152);
      *(v0 + 48) = *(v0 + 136);
      *(v0 + 64) = v12;
      *(v0 + 80) = *(v0 + 168);
      *(v0 + 96) = *(v0 + 184);
      v13 = *(v0 + 120);
      *(v0 + 16) = *(v0 + 104);
      *(v0 + 32) = v13;
      v14 = swift_task_alloc();
      *(v0 + 456) = v14;
      *v14 = v0;
      v14[1] = sub_1920D5ABC;
      v16 = *(v0 + 320);
      v15 = *(v0 + 328);
      v17 = *(v0 + 312);

      return sub_1920DF940(v16, v15, v0 + 16);
    }

    else
    {
      v18 = *(v0 + 392);
      v19 = *(v0 + 360);

      *(v0 + 184) = 0;
      *(v0 + 168) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 104) = 0u;
      sub_192033970(v0 + 104, &qword_1EADEF7F0, &unk_19222F0D0);
      v20 = *(v19 + 96);
      *(v0 + 272) = *(v19 + 80);
      *(v0 + 288) = v20;
      type metadata accessor for TimelineEntryProvider.Errors();
      swift_getWitnessTable();
      v21 = swift_allocError();
      swift_willThrow();
      v23 = *(v0 + 336);
      v22 = *(v0 + 344);
      v24 = v21;
      v23(v21, 1);

      v26 = *(v0 + 376);
      v25 = *(v0 + 384);

      v27 = *(v0 + 8);

      return v27();
    }
  }
}

uint64_t sub_1920DEE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 80) = a1;
  v6 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7E8, &qword_19222E9C0);
  *(v4 + 104) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v9 = type metadata accessor for TimelineReloadPolicy();
  *(v4 + 120) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v11 = *(v6 + 96);
  v12 = *(v6 + 80);
  *(v4 + 136) = swift_getAssociatedTypeWitness();
  *(v4 + 144) = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Timeline();
  *(v4 + 152) = v13;
  v14 = *(v13 - 8);
  *(v4 + 160) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = *a3;
  *(v4 + 272) = *(a3 + 16);
  *(v4 + 200) = *(a3 + 24);
  sub_192227CC0();
  *(v4 + 216) = sub_192227CB0();
  v17 = sub_192227C70();
  *(v4 + 224) = v17;
  *(v4 + 232) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1920DF0A4, v17, v16);
}

uint64_t sub_1920DF0A4()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  *(v0 + 240) = __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview entries request being handled by StaticConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v5 = *(v0 + 272);
  v10 = *(v0 + 184);
  v11 = *(v0 + 200);

  *(v0 + 16) = v10;
  *(v0 + 32) = v5;
  *(v0 + 40) = v11;
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = sub_1920DF220;
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);

  return TimelineEntryPreviewSource.unwrapTimeline<A>(for:)(v7, v7, v8);
}

uint64_t sub_1920DF220(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v9 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  v5 = v3[28];
  v6 = v3[29];
  if (v1)
  {
    v7 = sub_1920D66BC;
  }

  else
  {
    v7 = sub_1920DF334;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1920DF334()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[27];

  v4 = sub_192225890();
  v5 = sub_192227FB0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  if (v6)
  {
    v8 = v0[17];
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = sub_192227C10();

    _os_log_impl(&dword_192028000, v4, v5, "StaticConfiguration resolved entry source to have %{public}ld entries", v9, 0xCu);
    MEMORY[0x193B0C7F0](v9, -1, -1);
  }

  else
  {
    v10 = v0[32];
  }

  if (qword_1ED74B558 != -1)
  {
    swift_once();
  }

  v11 = v0[32];
  v12 = v0[21];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[20];
  v40 = v15;
  v16 = v0[17];
  v17 = v0[18];
  v18 = v0[16];
  v19 = v0[14];
  v37 = v0[13];
  v38 = v0[33];
  v35 = v0[12];
  v36 = v0[11];
  v39 = v0[10];
  v20 = __swift_project_value_buffer(v0[15], qword_1ED74B570);
  sub_192055544(v20, v18, type metadata accessor for TimelineReloadPolicy);
  Timeline.init(entries:policy:)(v11, v18, v13);
  (*(v15 + 16))(v12, v13, v14);
  v21 = type metadata accessor for ViewableTimelineEntry();
  sub_192203450(v12, sub_1920E0B9C, v35, v21, v16, &protocol witness table for ViewableTimelineEntry, v17, v19);
  v22 = *v36;
  v23 = *v19;
  sub_192055544(v19 + *(v37 + 36), v18, type metadata accessor for TimelineReloadPolicy);
  v24 = type metadata accessor for WidgetViewCollection();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v28 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v29 = sub_192224E00();
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  v30 = v22;

  v31 = [v39 extensionIdentity];
  BundleStub.init(_:)(v31, v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  *(v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v23;
  *(v27 + 16) = v30;
  *(v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v39;
  sub_192055544(v18, v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  LOBYTE(v30) = byte_1ED74B5B8;
  v32 = v39;
  sub_192046F48(v18, type metadata accessor for TimelineReloadPolicy);
  sub_192033970(v19, &qword_1EADEF7E8, &qword_19222E9C0);
  (*(v40 + 8))(v13, v14);
  *(v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v30;
  *(v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];

  v33 = v0[1];

  return v33(v27);
}

double sub_1920DF74C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = *a2;
  v21 = *(*a2 + 88);
  v6 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - v7;
  v9 = v5[12];
  v10 = v5[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v21 - v13;
  (*(v15 + 16))(&v21 - v13, a1, AssociatedTypeWitness);
  v16 = a2 + *(*a2 + 128);
  v17 = *(v16 + 8);
  (*v16)(a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = v5[13];
  return sub_19221A6E4(v14, v8, AssociatedTypeWitness, v21, AssociatedConformanceWitness, v22);
}

uint64_t sub_1920DF940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[7] = *v3;
  v6 = *(v5 + 80);
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = sub_192227CC0();
  v4[12] = sub_192227CB0();
  v10 = sub_192227C70();
  v4[13] = v10;
  v4[14] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1920DFA74, v10, v9);
}

uint64_t sub_1920DFA74()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview provider request being handled by StaticConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[5];

  v9 = *(v7 + 96);
  TimelineProviderPreviewSource.unwrapContent<A>(for:)(v6, v5);
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[6];
  v14 = v0[3];
  v13 = v0[4];
  v15 = sub_192227CB0();
  v0[15] = v15;
  v16 = swift_task_alloc();
  v0[16] = v16;
  v16[2] = v12;
  v16[3] = v14;
  v16[4] = v11;
  v16[5] = v13;
  v17 = *(MEMORY[0x1E69E88D0] + 4);
  v18 = swift_task_alloc();
  v0[17] = v18;
  v19 = type metadata accessor for WidgetViewCollection();
  *v18 = v0;
  v18[1] = sub_1920DFCCC;
  v20 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 2, v15, v20, 0xD000000000000029, 0x8000000192249FF0, sub_1920E0404, v16, v19);
}

uint64_t sub_1920DFCCC()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v8 = *v0;

  v5 = *(v1 + 112);
  v6 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1920DFE2C, v6, v5);
}

uint64_t sub_1920DFE2C()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  v5 = v0[2];
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1920DFEC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF938, &qword_19222F0B8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_1920DD294(a3, a4, a5, sub_1920E0410, v15);
}

uint64_t sub_1920E0030()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF938, &qword_19222F0B8);
  return sub_192227C90();
}

uint64_t sub_1920E0128()
{
  swift_getWitnessTable();

  return sub_192141600();
}

uint64_t sub_1920E01A0(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 96);
  v6 = *(v5 + 56);
  v7 = *(*v1 + 80);
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920A59A8;

  return v11(a1, v7, v5);
}

uint64_t sub_1920E0308(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920B3B44;

  return sub_1920E01A0(a1);
}

uint64_t sub_1920E03A4(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1920E0410()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF938, &qword_19222F0B8) - 8) + 80);

  return sub_1920E0030();
}

uint64_t sub_1920E048C(uint64_t a1)
{
  v3 = v2;
  v4 = v1[6];
  v19 = v1[9];
  v5 = (*(*(v4 - 8) + 80) + 80) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TimelineProviderContext() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v18 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = v1[2];
  v12 = v1[3];
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v13;
  v14 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1920A59A8;

  return sub_1920DEA54(a1, v11, v12, v1 + v5, v18, v10, v1 + v9, v15);
}

uint64_t sub_1920E068C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(type metadata accessor for Timeline() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TimelineProviderContext() - 8);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *(v0 + v6 + 8);
  v12 = *(v0 + v7);
  v13 = (v0 + ((*(v8 + 80) + v7 + 8) & ~*(v8 + 80)));

  return sub_1920DD7B8((v0 + v4), v9, v10, v11, v12, v13);
}

uint64_t sub_1920E07FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_22Tm()
{
  v1 = (type metadata accessor for TimelineProviderContext() - 8);
  v2 = (*(*v1 + 80) + 80) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  v6 = *(v0 + v2 + 8);

  v7 = *(v0 + v2 + 16);

  v8 = *(v0 + v2 + 24);

  v9 = *(v0 + v2 + 48);

  v10 = v1[12];
  v11 = sub_192224EA0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v0 + v2 + v10, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_1920E09DC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for TimelineProviderContext() - 8);
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[8];
  v8 = v2[9];
  v9 = v2 + ((*(v4 + 80) + 80) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_1920E0A68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TimelineProviderContext() - 8);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *(v0 + v6 + 8);
  v12 = *(v0 + v7);
  v13 = (v0 + ((*(v8 + 80) + v7 + 8) & ~*(v8 + 80)));

  return sub_1920DC394((v0 + v4), v9, v10, v11, v12, v13);
}

uint64_t EnvironmentValues._localizations.getter()
{
  sub_192056FC0();
  sub_1922261E0();
  return v1;
}

uint64_t sub_1920E0BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1922289A0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1920E0C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226B70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v59 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D8, qword_19222E730);
  v11 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v59 - v12;
  v14 = type metadata accessor for ControlTemplatePicker.Option(0);
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v21 = (&v59 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v64 = v14;
  v65 = (v5 + 48);
  v59 = (v5 + 32);
  v60 = (v5 + 8);
  v63 = *(v19 + 72);
  while (1)
  {
    sub_1920E1AEC(v24, v21);
    sub_1920E1AEC(v25, v18);
    v26 = v21[1];
    v27 = v18[1];
    if (v26)
    {
      if (!v27 || (*v21 != *v18 || v26 != v27) && (sub_1922289A0() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v27)
    {
      goto LABEL_41;
    }

    v28 = v14[5];
    v29 = *(v67 + 48);
    sub_1920E1BAC(v21 + v28, v13);
    sub_1920E1BAC(v18 + v28, &v13[v29]);
    v30 = *v65;
    if ((*v65)(v13, 1, v4) != 1)
    {
      break;
    }

    if (v30(&v13[v29], 1, v4) != 1)
    {
      goto LABEL_40;
    }

    sub_192033970(v13, &qword_1EADEF720, &unk_19222E2F0);
    v14 = v64;
LABEL_17:
    v38 = v14[6];
    v39 = (v21 + v38);
    v40 = *(v21 + v38 + 16);
    v41 = v18 + v38;
    v42 = v41[16];
    if (v40)
    {
      if ((v41[16] & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v41[16])
      {
        goto LABEL_41;
      }

      v44 = *v39;
      v43 = v39[1];
      v46 = *v41;
      v45 = *(v41 + 1);
      if ((sub_192227290() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v47 = v14[7];
    v48 = (v21 + v47);
    v49 = *(v21 + v47 + 8);
    v50 = (v18 + v47);
    v51 = v50[1];
    if (v49)
    {
      if (!v51 || (*v48 != *v50 || v49 != v51) && (sub_1922289A0() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v51)
    {
      goto LABEL_41;
    }

    v52 = v14[8];
    v53 = (v21 + v52);
    v54 = *(v21 + v52 + 8);
    v55 = (v18 + v52);
    v56 = v55[1];
    v57 = v56 == 0;
    if (!v54)
    {
      goto LABEL_35;
    }

    if (!v56)
    {
      goto LABEL_41;
    }

    if (*v53 != *v55 || v54 != v56)
    {
      v57 = sub_1922289A0();
LABEL_35:
      sub_1920E1B50(v18);
      sub_1920E1B50(v21);
      if ((v57 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_36;
    }

    sub_1920E1B50(v18);
    sub_1920E1B50(v21);
LABEL_36:
    v25 += v63;
    v24 += v63;
    result = 1;
    if (!--v22)
    {
      return result;
    }
  }

  sub_1920E1BAC(v13, v68);
  if (v30(&v13[v29], 1, v4) != 1)
  {
    v31 = *v59;
    v62 = v25;
    v32 = v24;
    v33 = v68;
    v34 = v66;
    v31(v66, &v13[v29], v4);
    sub_192046D84(&qword_1EADEF7E0, 255, MEMORY[0x1E697CB10]);
    v61 = sub_192227910();
    v35 = *v60;
    v36 = v34;
    v37 = v33;
    v24 = v32;
    v25 = v62;
    (*v60)(v36, v4);
    v35(v37, v4);
    sub_192033970(v13, &qword_1EADEF720, &unk_19222E2F0);
    v14 = v64;
    if ((v61 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_17;
  }

  (*v60)(v68, v4);
LABEL_40:
  sub_192033970(v13, &qword_1EADEF7D8, qword_19222E730);
LABEL_41:
  sub_1920E1B50(v18);
  sub_1920E1B50(v21);
  return 0;
}

uint64_t sub_1920E1294(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_19202A7A8(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x193B0B410](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x193B0B410](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1922281D0();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1922281D0();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_192228340();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_192228340();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1920E1510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1920E1778();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues._localizations.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  sub_192056FC0();
  sub_1922261E0();
  return sub_1920E15D0;
}

uint64_t sub_1920E15D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return EnvironmentValues._localizations.setter(*a1);
  }

  v4 = *a1;

  EnvironmentValues._localizations.setter(v5);
}

uint64_t sub_1920E1628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1920E16AC(uint64_t a1)
{
  v2 = sub_192046438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920E16E8(uint64_t a1)
{
  v2 = sub_192046438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1920E1730()
{
  if (*(*v0 + 16))
  {
    return sub_19216A63C();
  }

  else
  {
    return 7104878;
  }
}

unint64_t sub_1920E1778()
{
  result = qword_1EADEF9C8;
  if (!qword_1EADEF9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEECE8, &unk_19222B0D0);
    sub_192046D84(&qword_1EADF1230, 255, type metadata accessor for WidgetLocalizations);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF9C8);
  }

  return result;
}

uint64_t sub_1920E1830(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(a2 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
    sub_1920E1A88();
    sub_192227B00();
    sub_192227B00();
    if (v13 == v11 && v14 == v12)
    {
    }

    else
    {
      v7 = sub_1922289A0();

      if ((v7 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if (sub_1920E0BF0(*(v2 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations), *(v3 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations)))
    {
      v8 = *(v2 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations);
      v9 = *(v3 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations);

      v4 = v8 ^ v9 ^ 1;
      return v4 & 1;
    }

LABEL_11:

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1920E1988(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(a1 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
      v3 = sub_192225510();
      v5 = v4;
      if (v3 == sub_192225510() && v5 == v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = sub_1922289A0();
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_1920E1A88()
{
  result = qword_1EADED350;
  if (!qword_1EADED350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1200, &qword_19222F370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED350);
  }

  return result;
}

uint64_t sub_1920E1AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplatePicker.Option(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920E1B50(uint64_t a1)
{
  v2 = type metadata accessor for ControlTemplatePicker.Option(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1920E1BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1920E1C20()
{
  result = qword_1EADEF9E8;
  if (!qword_1EADEF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF9E8);
  }

  return result;
}

uint64_t sub_1920E1CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WidgetArchivableMetadata.EntryMetadata(0);
  v13 = a4 + *(v12 + 20);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = a4 + *(v12 + 24);
  *v14 = xmmword_19222A790;
  (*(a3 + 8))(a2, a3);
  (*(a3 + 16))(&v25, a2, a3);
  v15 = v26;
  *v13 = v25;
  *(v13 + 16) = v15;
  (*(v8 + 32))(v11, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA20, &qword_19222F5C8);
  if (swift_dynamicCast())
  {
    sub_19203832C(v23, &v25);
    v16 = __swift_project_boxed_opaque_existential_1(&v25, v27);
    v17 = (v16 + *(type metadata accessor for ViewableTimelineEntry() + 32));
    v18 = *v17;
    v19 = v17[1];
    v20 = *v14;
    v21 = *(v14 + 8);
    sub_19206A874(*v17, v19);
    sub_192046ED4(v20, v21);
    *v14 = v18;
    *(v14 + 8) = v19;
    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    return sub_1920E28D8(v23);
  }
}

uint64_t sub_1920E1EB8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA18, &qword_19222F5C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19204D7FC();
  sub_192228B90();
  LOBYTE(v19) = 0;
  sub_192225150();
  sub_19203EDF0(&qword_1ED74BB00, MEMORY[0x1E6969530]);
  sub_1922288C0();
  if (!v2)
  {
    v11 = type metadata accessor for WidgetArchivableMetadata.EntryMetadata(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *(v12 + 16);
    v19 = *v12;
    v20 = v13;
    v18 = 1;
    sub_1920E2884();
    sub_192228850();
    v14 = (v3 + *(v11 + 24));
    v15 = v14[1];
    *&v19 = *v14;
    *(&v19 + 1) = v15;
    v18 = 2;
    sub_19206A874(v19, v15);
    sub_1920593E0();
    sub_192228850();
    sub_192046ED4(v19, *(&v19 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1920E20EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1920E29F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1920E2120(uint64_t a1)
{
  v2 = sub_19204D7FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920E215C(uint64_t a1)
{
  v2 = sub_19204D7FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1920E21B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1920E2B18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1920E21E4(uint64_t a1)
{
  v2 = sub_19203D274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920E2220(uint64_t a1)
{
  v2 = sub_19203D274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1920E225C(void *a1)
{
  v3 = v1;
  v28[2] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA08, &qword_19222F5B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19203D274();
  sub_192228B90();
  LOBYTE(v28[0]) = 6;
  sub_1922288A0();
  if (!v2)
  {
    v28[0] = *v3;
    HIBYTE(v27) = 8;
    sub_1920E27DC();
    sub_1922288C0();
    v11 = type metadata accessor for WidgetArchivableMetadata(0);
    v12 = v11[6];
    LOBYTE(v28[0]) = 7;
    type metadata accessor for BundleStub();
    sub_19203EDF0(&qword_1ED74BAF8, type metadata accessor for BundleStub);
    sub_1922288C0();
    v28[0] = *(v3 + v11[7]);
    v13 = v28[0];
    HIBYTE(v27) = 1;
    sub_1920E2830();
    v14 = v13;
    sub_1922288C0();

    v28[0] = *(v3 + v11[9]);
    HIBYTE(v27) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9F8, &qword_19222F590);
    sub_19204D670(&qword_1ED74AE08, &qword_1ED74AE18);
    sub_1922288C0();
    v28[0] = *(v3 + v11[10]);
    HIBYTE(v27) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA00, &qword_19222F598);
    sub_19204D760(&qword_1ED74A008, &qword_1ED74A080);
    sub_1922288C0();
    v15 = v11[11];
    LOBYTE(v28[0]) = 5;
    type metadata accessor for TimelineReloadPolicy();
    sub_19203EDF0(qword_1ED74B6A0, type metadata accessor for TimelineReloadPolicy);
    sub_1922288C0();
    v16 = v11[5];
    LOBYTE(v28[0]) = 0;
    sub_192225150();
    sub_19203EDF0(&qword_1ED74BB00, MEMORY[0x1E6969530]);
    sub_1922288C0();
    v19 = objc_opt_self();
    v20 = *(v3 + v11[8]);
    v28[0] = 0;
    v21 = [v19 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:v28];
    v22 = v28[0];
    if (v21)
    {
      v23 = sub_192225080();
      v25 = v24;

      v28[0] = v23;
      v28[1] = v25;
      HIBYTE(v27) = 2;
      sub_1920593E0();
      sub_1922288C0();
      (*(v6 + 8))(v9, v5);
      result = sub_192039140(v23, v25);
      goto LABEL_4;
    }

    v26 = v22;
    sub_192224F90();

    swift_willThrow();
  }

  result = (*(v6 + 8))(v9, v5);
LABEL_4:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1920E27DC()
{
  result = qword_1ED74BAE0;
  if (!qword_1ED74BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BAE0);
  }

  return result;
}

unint64_t sub_1920E2830()
{
  result = qword_1ED74BB70;
  if (!qword_1ED74BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BB70);
  }

  return result;
}

unint64_t sub_1920E2884()
{
  result = qword_1ED74B698;
  if (!qword_1ED74B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B698);
  }

  return result;
}

uint64_t sub_1920E28D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA28, &qword_19222F5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1920E2944()
{
  result = qword_1EADEFA30;
  if (!qword_1EADEFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFA30);
  }

  return result;
}

unint64_t sub_1920E299C()
{
  result = qword_1EADEFA38;
  if (!qword_1EADEFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFA38);
  }

  return result;
}

uint64_t sub_1920E29F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E6176656C6572 && a2 == 0xE900000000000065 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447972746E65 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = sub_1922289A0();

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

uint64_t sub_1920E2B18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746567646977 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74654D7972746E65 && a2 == 0xED00006174616461 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174654D77656976 && a2 == 0xEC00000061746164 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F5064616F6C6572 && a2 == 0xEC0000007963696CLL || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5665766968637261 && a2 == 0xEE006E6F69737265 || (sub_1922289A0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEF656C646E75426ELL || (sub_1922289A0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372)
  {

    return 8;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1920E2E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v46 = a3;
  v4 = sub_1922265A0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v48 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = v5[2];
  v47 = a2;
  v49 = v11;
  v11(&v33 - v9, a2, v4);
  v37 = v5;
  v44 = v5[11];
  v12 = v44(v10, v4);
  v13 = v12;
  v43 = *MEMORY[0x1E697F658];
  v14 = *MEMORY[0x1E697F690];
  v42 = *MEMORY[0x1E697F690];
  v16 = v12 == v43 || v12 == v14;
  v17 = *MEMORY[0x1E697F698];
  v40 = v16;
  v41 = v17;
  if (v12 == v17)
  {
    v16 = 1;
  }

  v18 = *MEMORY[0x1E697F680];
  v19 = 1;
  v38 = v16;
  v39 = v18;
  if (v16)
  {
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    v24 = 1;
    v25 = 1;
    v26 = 1;
  }

  else
  {
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    v24 = 1;
    v25 = 1;
    v26 = 1;
    if (v12 == v18)
    {
      goto LABEL_28;
    }

    if (v12 == *MEMORY[0x1E697F650])
    {
      goto LABEL_26;
    }

    if (v12 == *MEMORY[0x1E697F660])
    {
LABEL_25:
      v25 = 0;
LABEL_26:
      v26 = 0;
      goto LABEL_28;
    }

    if (v12 == *MEMORY[0x1E697F630])
    {
LABEL_24:
      v24 = 0;
      goto LABEL_25;
    }

    if (v12 == *MEMORY[0x1E697F670])
    {
LABEL_23:
      v23 = 0;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F668])
    {
LABEL_22:
      v22 = 0;
      goto LABEL_23;
    }

    if (v12 == *MEMORY[0x1E697F678])
    {
LABEL_21:
      v21 = 0;
      goto LABEL_22;
    }

    if (v12 == *MEMORY[0x1E697F640])
    {
LABEL_20:
      v20 = 0;
      goto LABEL_21;
    }

    if (v12 == *MEMORY[0x1E697F648])
    {
      v19 = 0;
      goto LABEL_20;
    }

    (v37[1])(v10, v4);
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
  }

LABEL_28:
  v35 = v21;
  v36 = v22;
  v33 = v19;
  v34 = v20;
  v27 = v48;
  v28 = v45;
  v49(v48, v45, v4);
  v29 = v44(v27, v4);
  if (v29 != v43)
  {
    v30 = v47;
    if (v29 == v42)
    {
      if (v13 != v43)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == v41)
    {
      if (!v40)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == v39)
    {
      if (!v38)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F650])
    {
      if ((v26 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F660])
    {
      if ((v25 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F630])
    {
      if ((v24 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F670])
    {
      if ((v23 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F668])
    {
      if ((v36 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F678])
    {
      if ((v35 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F640])
    {
      if ((v34 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F648])
    {
      if ((v33 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else
    {
      v32 = v47;
      (v37[1])(v48, v4);
      v30 = v32;
      if (!v38)
      {
        return (v49)(v46, v30, v4);
      }
    }

    v30 = v28;
    return (v49)(v46, v30, v4);
  }

  v30 = v47;
  return (v49)(v46, v30, v4);
}

uint64_t sub_1920E32C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for ActivityMetricsDefinition();
  __swift_allocate_value_buffer(v4, qword_1EADEFA40);
  v5 = __swift_project_value_buffer(v4, qword_1EADEFA40);
  v6 = *(type metadata accessor for MetricsRequest() + 40);
  v7 = sub_192226600();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *v5 = xmmword_19222F800;
  *(v5 + 16) = 0;
  *(v5 + 24) = xmmword_19222F800;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0x4036000000000000;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 1;
  *(v5 + 96) = xmmword_19222F810;
  v8 = type metadata accessor for JindoMetricsDefinition();
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 1, 1, v8);
  v10 = *(v4 + 20);
  v9((v5 + v10), 1, 1, v8);
  return sub_1920E3564(v3, v5 + v10);
}

uint64_t ActivityMetricsDefinition.init(listItemMetrics:jindoMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ActivityMetricsDefinition() + 20);
  v7 = type metadata accessor for JindoMetricsDefinition();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  sub_1920E5194(a1, a3, type metadata accessor for MetricsRequest);

  return sub_1920E3564(a2, a3 + v6);
}

uint64_t type metadata accessor for ActivityMetricsDefinition()
{
  result = qword_1ED74BC40;
  if (!qword_1ED74BC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1920E3564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static ActivityMetricsDefinition.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ActivityMetricsDefinition();
  v3 = __swift_project_value_buffer(v2, qword_1EADEFA40);
  return sub_1920E5260(v3, a1, type metadata accessor for ActivityMetricsDefinition);
}

uint64_t ActivityMetricsDefinition._rawJindoMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActivityMetricsDefinition() + 20);

  return sub_1920E3698(v3, a1);
}

uint64_t sub_1920E3698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ActivityMetricsDefinition._rawJindoMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ActivityMetricsDefinition() + 20);

  return sub_1920E3564(a1, v3);
}

uint64_t ActivityMetricsDefinition.listItemMetrics(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC50, &qword_19222B040);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_1922265A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v33 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - v19;
  v21 = *(v8 + 104);
  v21(v18, *MEMORY[0x1E697F680], v7);
  v21(v12, *MEMORY[0x1E697F648], v7);
  sub_1920E4394(v34, v12, v15);
  v22 = *(v8 + 8);
  v22(v12, v7);
  v23 = v22;
  v35 = v20;
  sub_1920E2E24(v18, v15, v20);
  v22(v15, v7);
  v22(v18, v7);
  sub_1920E5260(v36, a2, type metadata accessor for MetricsRequest);
  v24 = *(a2 + 24);
  v25 = *(a2 + 32);
  LODWORD(v18) = *(a2 + 40);
  (*(v8 + 16))(v6, v20, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v26 = sub_192228110();
  v27 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v28 = [objc_opt_self() defaultMetrics];
  if (!v18)
  {
    v25 = v24;
  }

  v29 = v27;
  [v28 scaledValueForValue:v29 compatibleWithTraitCollection:v25];
  v31 = v30;

  result = v23(v35, v7);
  *(a2 + 24) = v24;
  *(a2 + 32) = v31;
  *(a2 + 40) = 1;
  return result;
}

uint64_t ActivityMetricsDefinition.jindoMetrics(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v57 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC50, &qword_19222B040);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v52 = &v50[-v4];
  v5 = type metadata accessor for MetricsRequest();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v50[-v10];
  v12 = type metadata accessor for JindoMetricsDefinition();
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1922265A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v50[-v22];
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v50[-v25];
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v50[-v27];
  v29 = *(v16 + 104);
  v29(v26, *MEMORY[0x1E697F680], v15);
  v29(v20, *MEMORY[0x1E697F648], v15);
  sub_1920E4394(v56, v20, v23);
  v30 = *(v16 + 8);
  v31 = v20;
  v32 = v12;
  v30(v31, v15);
  v56 = v28;
  sub_1920E2E24(v26, v23, v28);
  v30(v23, v15);
  v30(v26, v15);
  v33 = type metadata accessor for ActivityMetricsDefinition();
  sub_1920E3698(v55 + *(v33 + 20), v11);
  if ((*(v58 + 48))(v11, 1, v12) == 1)
  {
    v30(v56, v15);
    sub_192033970(v11, &qword_1EADEFA58, &unk_19222F820);
    return (*(v58 + 56))(v57, 1, 1, v12);
  }

  else
  {
    v35 = v11;
    v36 = v53;
    sub_1920E5194(v35, v53, type metadata accessor for JindoMetricsDefinition);
    v55 = *(v12 + 32);
    v37 = v54;
    sub_1920E5260(&v36[v55], v54, type metadata accessor for MetricsRequest);
    v38 = v37[3];
    v39 = v37[4];
    v51 = *(v37 + 40);
    v40 = v52;
    v41 = v56;
    (*(v16 + 16))(v52, v56, v15);
    (*(v16 + 56))(v40, 0, 1, v15);
    v42 = sub_192228110();
    v43 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v52 = v32;
    v44 = v43;
    v45 = [objc_opt_self() defaultMetrics];
    if (!v51)
    {
      v39 = v38;
    }

    v46 = v44;
    [v45 scaledValueForValue:v46 compatibleWithTraitCollection:v39];
    v48 = v47;

    v30(v41, v15);
    v37[3] = v38;
    *(v37 + 4) = v48;
    *(v37 + 40) = 1;
    sub_1920E51FC(v37, &v36[v55]);
    v49 = v57;
    sub_1920E5260(v36, v57, type metadata accessor for JindoMetricsDefinition);
    (*(v58 + 56))(v49, 0, 1, v52);
    return sub_1920E5CA0(v36, type metadata accessor for JindoMetricsDefinition);
  }
}

uint64_t ActivityMetricsDefinition.filePath.getter()
{
  sub_192228400();

  v8 = *v0;
  v10 = *(v0 + 16);
  v1 = DimensionRequest.filePath.getter();
  MEMORY[0x193B0A990](v1);

  MEMORY[0x193B0A990](3827757, 0xE300000000000000);
  v9 = *(v0 + 24);
  v11 = *(v0 + 40);
  v2 = DimensionRequest.filePath.getter();
  MEMORY[0x193B0A990](v2);

  MEMORY[0x193B0A990](980575021, 0xE400000000000000);
  v3 = *(v0 + 6);
  v4 = sub_192227D10();
  MEMORY[0x193B0A990](v4);

  MEMORY[0x193B0A990](3830573, 0xE300000000000000);
  v5 = *(v0 + 13);
  v6 = sub_192227D10();
  MEMORY[0x193B0A990](v6);

  return 14967;
}

uint64_t ActivityMetricsDefinition.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v13 - v3;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x800000019224A100);
  v5 = MetricsRequest.description.getter();
  MEMORY[0x193B0A990](v5);

  MEMORY[0x193B0A990](0x6E694A776172202CLL, 0xEB000000003D6F64);
  v6 = type metadata accessor for ActivityMetricsDefinition();
  sub_1920E3698(v0 + *(v6 + 20), v4);
  v7 = type metadata accessor for JindoMetricsDefinition();
  if ((*(*(v7 - 8) + 48))(v4, 1, v7) == 1)
  {
    sub_192033970(v4, &qword_1EADEFA58, &unk_19222F820);
    v8 = 0xE300000000000000;
    v9 = 7104878;
  }

  else
  {
    v10 = JindoMetricsDefinition.description.getter();
    v8 = v11;
    sub_1920E5CA0(v4, type metadata accessor for JindoMetricsDefinition);
    v9 = v10;
  }

  MEMORY[0x193B0A990](v9, v8);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return v13[0];
}

uint64_t sub_1920E4394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v46 = a3;
  v4 = sub_1922265A0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v48 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = v5[2];
  v47 = a2;
  v49 = v11;
  v11(&v33 - v9, a2, v4);
  v37 = v5;
  v44 = v5[11];
  v12 = v44(v10, v4);
  v13 = v12;
  v43 = *MEMORY[0x1E697F658];
  v14 = *MEMORY[0x1E697F690];
  v42 = *MEMORY[0x1E697F690];
  v16 = v12 == v43 || v12 == v14;
  v17 = *MEMORY[0x1E697F698];
  v40 = v16;
  v41 = v17;
  if (v12 == v17)
  {
    v16 = 1;
  }

  v18 = *MEMORY[0x1E697F680];
  v19 = 1;
  v38 = v16;
  v39 = v18;
  if (v16)
  {
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    v24 = 1;
    v25 = 1;
    v26 = 1;
  }

  else
  {
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    v24 = 1;
    v25 = 1;
    v26 = 1;
    if (v12 == v18)
    {
      goto LABEL_28;
    }

    if (v12 == *MEMORY[0x1E697F650])
    {
      goto LABEL_26;
    }

    if (v12 == *MEMORY[0x1E697F660])
    {
LABEL_25:
      v25 = 0;
LABEL_26:
      v26 = 0;
      goto LABEL_28;
    }

    if (v12 == *MEMORY[0x1E697F630])
    {
LABEL_24:
      v24 = 0;
      goto LABEL_25;
    }

    if (v12 == *MEMORY[0x1E697F670])
    {
LABEL_23:
      v23 = 0;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F668])
    {
LABEL_22:
      v22 = 0;
      goto LABEL_23;
    }

    if (v12 == *MEMORY[0x1E697F678])
    {
LABEL_21:
      v21 = 0;
      goto LABEL_22;
    }

    if (v12 == *MEMORY[0x1E697F640])
    {
LABEL_20:
      v20 = 0;
      goto LABEL_21;
    }

    if (v12 == *MEMORY[0x1E697F648])
    {
      v19 = 0;
      goto LABEL_20;
    }

    (v37[1])(v10, v4);
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
  }

LABEL_28:
  v35 = v21;
  v36 = v22;
  v33 = v19;
  v34 = v20;
  v27 = v48;
  v28 = v45;
  v49(v48, v45, v4);
  v29 = v44(v27, v4);
  v30 = v47;
  if (v29 != v43)
  {
    if (v29 == v42)
    {
      if (v13 == v43)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == v41)
    {
      if (v40)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == v39)
    {
      if (v38)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F650])
    {
      if (v26)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F660])
    {
      if (v25)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F630])
    {
      if (v24)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F670])
    {
      if (v23)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F668])
    {
      if (v36)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F678])
    {
      if (v35)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F640])
    {
      if (v34)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F648])
    {
      if (v33)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else
    {
      v32 = v47;
      (v37[1])(v48, v4);
      v30 = v32;
      if (v38)
      {
        return (v49)(v46, v30, v4);
      }
    }
  }

  v30 = v28;
  return (v49)(v46, v30, v4);
}

unint64_t sub_1920E4830()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_1920E486C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x800000019224A130 == a2;
  if (v5 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000019224A150 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

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

uint64_t sub_1920E4950(uint64_t a1)
{
  v2 = sub_1920E5C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920E498C(uint64_t a1)
{
  v2 = sub_1920E5C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityMetricsDefinition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA60, &qword_19222F830);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920E5C4C();
  sub_192228B90();
  v11[15] = 0;
  type metadata accessor for MetricsRequest();
  sub_1920E5D90(&qword_1EADED168, type metadata accessor for MetricsRequest);
  sub_1922288C0();
  if (!v1)
  {
    v9 = *(type metadata accessor for ActivityMetricsDefinition() + 20);
    v11[14] = 1;
    type metadata accessor for JindoMetricsDefinition();
    sub_1920E5D90(&qword_1EADED028, type metadata accessor for JindoMetricsDefinition);
    sub_192228850();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ActivityMetricsDefinition.hash(into:)()
{
  MetricsRequest.hash(into:)();
  v1 = v0 + *(type metadata accessor for ActivityMetricsDefinition() + 20);
  return sub_1920E52C8();
}

uint64_t ActivityMetricsDefinition.hashValue.getter()
{
  sub_192228AD0();
  MetricsRequest.hash(into:)();
  v1 = v0 + *(type metadata accessor for ActivityMetricsDefinition() + 20);
  sub_1920E52C8();
  return sub_192228B30();
}

uint64_t ActivityMetricsDefinition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for MetricsRequest();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA68, &qword_19222F838);
  v28 = *(v30 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v27 - v11;
  v13 = type metadata accessor for ActivityMetricsDefinition();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 28);
  v19 = type metadata accessor for JindoMetricsDefinition();
  v20 = *(*(v19 - 8) + 56);
  v32 = v18;
  v20(&v17[v18], 1, 1, v19);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920E5C4C();
  v22 = v31;
  sub_192228B70();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_192033970(&v17[v32], &qword_1EADEFA58, &unk_19222F820);
  }

  else
  {
    v23 = v28;
    v34 = 0;
    sub_1920E5D90(&qword_1EADEDF50, type metadata accessor for MetricsRequest);
    sub_1922287C0();
    sub_1920E5194(v29, v17, type metadata accessor for MetricsRequest);
    v33 = 1;
    sub_1920E5D90(&qword_1EADEDF38, type metadata accessor for JindoMetricsDefinition);
    v24 = v6;
    v25 = v30;
    sub_192228750();
    (*(v23 + 8))(v12, v25);
    sub_1920E3564(v24, &v17[v32]);
    sub_1920E5260(v17, v27, type metadata accessor for ActivityMetricsDefinition);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1920E5CA0(v17, type metadata accessor for ActivityMetricsDefinition);
  }
}

uint64_t sub_1920E5068(uint64_t a1)
{
  sub_192228AD0();
  MetricsRequest.hash(into:)();
  v3 = v1 + *(a1 + 20);
  sub_1920E52C8();
  return sub_192228B30();
}

uint64_t sub_1920E50BC(uint64_t a1, uint64_t a2)
{
  MetricsRequest.hash(into:)();
  v4 = v2 + *(a2 + 20);
  return sub_1920E52C8();
}

uint64_t sub_1920E50FC(uint64_t a1, uint64_t a2)
{
  sub_192228AD0();
  MetricsRequest.hash(into:)();
  v4 = v2 + *(a2 + 20);
  sub_1920E52C8();
  return sub_192228B30();
}

uint64_t sub_1920E5194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920E51FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsRequest();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920E5260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920E52C8()
{
  v1 = v0;
  v2 = type metadata accessor for JindoMetricsDefinition();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  sub_1920E3698(v1, &v18 - v9);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_192228AF0();
  }

  sub_1920E5194(v10, v6, type metadata accessor for JindoMetricsDefinition);
  sub_192228AF0();
  v12 = *v6;
  if (*v6 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v12);
  v13 = v6[1];
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v13);
  v14 = v6 + v2[5];
  MetricsRequest.hash(into:)();
  v15 = v6 + v2[6];
  MetricsRequest.hash(into:)();
  v16 = v6 + v2[7];
  MetricsRequest.hash(into:)();
  v17 = v6 + v2[8];
  MetricsRequest.hash(into:)();
  return sub_1920E5CA0(v6, type metadata accessor for JindoMetricsDefinition);
}

BOOL sub_1920E54C0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_1922265A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x1E697F658];
  if (v13 != *MEMORY[0x1E697F658])
  {
    if (v13 == *MEMORY[0x1E697F690])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F698])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x1E697F650])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x1E697F660])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x1E697F630])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x1E697F670])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x1E697F668])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x1E697F678])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x1E697F640])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E697F690])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x1E697F698])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x1E697F680])
    {
      if (v16 == *MEMORY[0x1E697F650])
      {
        v17 = 4;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F660])
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F630])
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F670])
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F668])
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F678])
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F640])
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F648])
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
}

BOOL _s9WidgetKit25ActivityMetricsDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JindoMetricsDefinition();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA78, &qword_19222FAC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if ((static MetricsRequest.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for ActivityMetricsDefinition() + 20);
  v18 = *(v13 + 48);
  sub_1920E3698(a1 + v17, v16);
  sub_1920E3698(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_192033970(v16, &qword_1EADEFA58, &unk_19222F820);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1920E3698(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1920E5CA0(v12, type metadata accessor for JindoMetricsDefinition);
LABEL_7:
    v21 = &qword_1EADEFA78;
    v22 = &qword_19222FAC0;
LABEL_19:
    sub_192033970(v16, v21, v22);
    return 0;
  }

  sub_1920E5194(&v16[v18], v8, type metadata accessor for JindoMetricsDefinition);
  v23 = *v12 == *v8 && v12[1] == v8[1];
  if (!v23 || (static MetricsRequest.== infix(_:_:)(v12 + v4[5], v8 + v4[5]) & 1) == 0 || (static MetricsRequest.== infix(_:_:)(v12 + v4[6], v8 + v4[6]) & 1) == 0 || (static MetricsRequest.== infix(_:_:)(v12 + v4[7], v8 + v4[7]) & 1) == 0)
  {
    sub_1920E5CA0(v8, type metadata accessor for JindoMetricsDefinition);
    sub_1920E5CA0(v12, type metadata accessor for JindoMetricsDefinition);
    v21 = &qword_1EADEFA58;
    v22 = &unk_19222F820;
    goto LABEL_19;
  }

  v24 = static MetricsRequest.== infix(_:_:)(v12 + v4[8], v8 + v4[8]);
  sub_1920E5CA0(v8, type metadata accessor for JindoMetricsDefinition);
  sub_1920E5CA0(v12, type metadata accessor for JindoMetricsDefinition);
  sub_192033970(v16, &qword_1EADEFA58, &unk_19222F820);
  return (v24 & 1) != 0;
}

unint64_t sub_1920E5C4C()
{
  result = qword_1EADEE110;
  if (!qword_1EADEE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE110);
  }

  return result;
}

uint64_t sub_1920E5CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1920E5D90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1920E5E00()
{
  type metadata accessor for MetricsRequest();
  if (v0 <= 0x3F)
  {
    sub_1920E5E84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1920E5E84()
{
  if (!qword_1ED74B948[0])
  {
    type metadata accessor for JindoMetricsDefinition();
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, qword_1ED74B948);
    }
  }
}

unint64_t sub_1920E5EF0()
{
  result = qword_1EADEFA70;
  if (!qword_1EADEFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFA70);
  }

  return result;
}

unint64_t sub_1920E5F48()
{
  result = qword_1EADEE100;
  if (!qword_1EADEE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE100);
  }

  return result;
}

unint64_t sub_1920E5FA0()
{
  result = qword_1EADEE108;
  if (!qword_1EADEE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE108);
  }

  return result;
}

BOOL sub_1920E5FF4(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_1922265A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x1E697F658];
  if (v13 != *MEMORY[0x1E697F658])
  {
    if (v13 == *MEMORY[0x1E697F690])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F698])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x1E697F650])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x1E697F660])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x1E697F630])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x1E697F670])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x1E697F668])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x1E697F678])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x1E697F640])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E697F690])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x1E697F698])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x1E697F680])
    {
      if (v16 == *MEMORY[0x1E697F650])
      {
        v17 = 4;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F660])
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F630])
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F670])
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F668])
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F678])
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F640])
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F648])
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
}

uint64_t sub_1920E640C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_192226B50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_192226B70();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11);
  if ((*(v12 + 88))(v15, v11) == *MEMORY[0x1E697CB08])
  {
    (*(v12 + 96))(v15, v11);
    (*(v7 + 32))(v10, v15, v6);
    v16 = sub_192226AF0();
    v18 = sub_1921B01A8(v16, v17, a2);

    if (v18)
    {
      sub_192226AA0();
      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
      return (*(v12 + 56))(a3, 1, 1, v11);
    }
  }

  else
  {
    (*(v12 + 56))(a3, 1, 1, v11);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_1920E66A0()
{
  v0 = type metadata accessor for ControlTemplateButton(0);
  __swift_allocate_value_buffer(v0, qword_1EADED060);
  v1 = __swift_project_value_buffer(v0, qword_1EADED060);
  return sub_1920E66EC(v1);
}

uint64_t sub_1920E66EC@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v38 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for ControlTemplateButton.Option(0);
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v15 = sub_192226B70();
  v16 = *(*(v15 - 8) + 56);
  v16(v7, 1, 1, v15);
  v17 = v9[8];
  v16(&v14[v17], 1, 1, v15);
  v18 = &v14[v9[9]];
  v19 = &v14[v9[10]];
  v20 = &v14[v9[11]];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  sub_19204193C(v7, &v14[v17], &qword_1EADEF720, &unk_19222E2F0);
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  *v19 = 0;
  *(v19 + 1) = 0;
  *v20 = 0;
  *(v20 + 1) = 0;
  v16(v7, 1, 1, v15);
  v21 = v9[8];
  v22 = v36;
  v16(&v36[v21], 1, 1, v15);
  v23 = v22 + v9[9];
  v24 = (v22 + v9[10]);
  v25 = (v22 + v9[11]);
  *v22 = 0u;
  v22[1] = 0u;
  sub_19204193C(v7, v22 + v21, &qword_1EADEF720, &unk_19222E2F0);
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 1;
  *v24 = 0;
  v24[1] = 0;
  *v25 = 0;
  v25[1] = 0;
  v26 = v37;
  sub_1920ECD2C(v14, v37, type metadata accessor for ControlTemplateButton.Option);
  v27 = type metadata accessor for ControlTemplateButton(0);
  v28 = v26;
  sub_1920ECD2C(v22, v26 + v27[5], type metadata accessor for ControlTemplateButton.Option);
  v29 = sub_192225020();
  v30 = *(*(v29 - 8) + 56);
  v31 = v38;
  v30(v38, 1, 1, v29);
  v32 = v27[7];
  v30((v28 + v32), 1, 1, v29);
  v33 = (v28 + v27[10]);
  *(v28 + v27[6]) = 0;
  sub_19204193C(v31, v28 + v32, &qword_1EADEEE10, &unk_19222B630);
  *(v28 + v27[8]) = 0;
  *(v28 + v27[9]) = 1;
  *v33 = 0;
  v33[1] = 0;
  *(v28 + v27[11]) = 0;
  sub_1920ECC84(v22, type metadata accessor for ControlTemplateButton.Option);
  return sub_1920ECC84(v14, type metadata accessor for ControlTemplateButton.Option);
}

uint64_t ControlTemplateButton.Option.init(title:subtitle:icon:tint:status:actionHint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = type metadata accessor for ControlTemplateButton.Option(0);
  v20 = v19[6];
  v21 = sub_192226B70();
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = &a9[v19[7]];
  v23 = &a9[v19[8]];
  v24 = &a9[v19[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  result = sub_19204193C(a5, &a9[v20], &qword_1EADEF720, &unk_19222E2F0);
  *v22 = a6;
  *(v22 + 1) = a7;
  v22[16] = a8 & 1;
  *v23 = a10;
  *(v23 + 1) = a11;
  *v24 = a12;
  *(v24 + 1) = a13;
  return result;
}

uint64_t ControlTemplateButton.init(inactive:active:action:associatedURL:privacySensitive:disabled:accessibilityIdentifier:rasterizedImagesAllowed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v15 = *a3;
  v16 = type metadata accessor for ControlTemplateButton(0);
  v17 = v16[7];
  v18 = sub_192225020();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = (a9 + v16[10]);
  sub_1920ED888(a1, a9, type metadata accessor for ControlTemplateButton.Option);
  sub_1920ED888(a2, a9 + v16[5], type metadata accessor for ControlTemplateButton.Option);
  *(a9 + v16[6]) = v15;
  result = sub_19204193C(a4, a9 + v17, &qword_1EADEEE10, &unk_19222B630);
  *(a9 + v16[8]) = a5;
  *(a9 + v16[9]) = a6;
  *v19 = a7;
  v19[1] = a8;
  *(a9 + v16[11]) = a10;
  return result;
}

uint64_t static ControlTemplateButton.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADED058 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateButton(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADED060);
  swift_beginAccess();
  return sub_1920ECD2C(v3, a1, type metadata accessor for ControlTemplateButton);
}

uint64_t static ControlTemplateButton.empty.setter(uint64_t a1)
{
  if (qword_1EADED058 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateButton(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADED060);
  swift_beginAccess();
  sub_1920E6E94(a1, v3);
  swift_endAccess();
  return sub_1920ECC84(a1, type metadata accessor for ControlTemplateButton);
}

uint64_t sub_1920E6E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateButton(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static ControlTemplateButton.empty.modify())()
{
  if (qword_1EADED058 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ControlTemplateButton(0);
  __swift_project_value_buffer(v0, qword_1EADED060);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1920E6F8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADED058 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateButton(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADED060);
  swift_beginAccess();
  return sub_1920ECD2C(v3, a1, type metadata accessor for ControlTemplateButton);
}

uint64_t sub_1920E702C(uint64_t a1)
{
  if (qword_1EADED058 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateButton(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADED060);
  swift_beginAccess();
  sub_1920E6E94(a1, v3);
  return swift_endAccess();
}

uint64_t ControlTemplateButton.Option.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ControlTemplateButton.Option.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ControlTemplateButton.Option.subtitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ControlTemplateButton.Option.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ControlTemplateButton.Option.tint.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlTemplateButton.Option(0) + 28));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t ControlTemplateButton.Option.tint.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for ControlTemplateButton.Option(0);
  v8 = v3 + *(result + 28);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t ControlTemplateButton.Option.status.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlTemplateButton.Option(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlTemplateButton.Option.status.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplateButton.Option(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlTemplateButton.Option.actionHint.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlTemplateButton.Option(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlTemplateButton.Option.actionHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplateButton.Option(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1920E750C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 1953393012;
  v4 = 0x737574617473;
  if (v1 != 4)
  {
    v4 = 0x69486E6F69746361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 1)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1920E75B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1920ED3EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1920E75E8(uint64_t a1)
{
  v2 = sub_1920ECC30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920E7624(uint64_t a1)
{
  v2 = sub_1920ECC30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplateButton.Option.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA80, &qword_19222FAE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920ECC30();
  sub_192228B90();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v27) = 0;
  sub_192228830();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v27) = 1;
    sub_192228830();
    v16 = type metadata accessor for ControlTemplateButton.Option(0);
    v17 = v16[6];
    LOBYTE(v27) = 2;
    sub_192226B70();
    sub_1920ECCE4(&qword_1EADEE4B0, MEMORY[0x1E697CB10]);
    sub_192228850();
    v18 = v3 + v16[7];
    v19 = v18[16];
    v27 = *v18;
    v28 = v19;
    v26[15] = 3;
    sub_1920CF350();
    sub_192228850();
    v20 = (v3 + v16[8]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v27) = 4;
    sub_192228830();
    v23 = (v3 + v16[9]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v27) = 5;
    sub_192228830();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ControlTemplateButton.Option.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v38 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA88, &qword_19222FAE8);
  v41 = *(v43 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v38 - v7;
  v9 = type metadata accessor for ControlTemplateButton.Option(0);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = v10[8];
  v15 = sub_192226B70();
  v16 = *(*(v15 - 8) + 56);
  v40 = v14;
  v16(v13 + v14, 1, 1, v15);
  v17 = v13 + v10[9];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = (v13 + v10[10]);
  *v18 = 0;
  v18[1] = 0;
  v19 = v10[11];
  v46 = v13;
  v47 = a1;
  v20 = (v13 + v19);
  *v20 = 0;
  v20[1] = 0;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920ECC30();
  v44 = v8;
  v22 = v45;
  sub_192228B70();
  if (v22)
  {
    v23 = v46;
  }

  else
  {
    v45 = v17;
    v38 = v18;
    v25 = v41;
    v24 = v42;
    LOBYTE(v48) = 0;
    v26 = sub_192228730();
    v23 = v46;
    *v46 = v26;
    v23[1] = v27;
    LOBYTE(v48) = 1;
    v23[2] = sub_192228730();
    v23[3] = v28;
    LOBYTE(v48) = 2;
    sub_1920ECCE4(&qword_1EADEDCE8, MEMORY[0x1E697CB10]);
    sub_192228750();
    sub_19204193C(v24, v23 + v40, &qword_1EADEF720, &unk_19222E2F0);
    v50 = 3;
    sub_1920CF44C();
    sub_192228750();
    v29 = v49;
    v30 = v45;
    *v45 = v48;
    *(v30 + 16) = v29;
    LOBYTE(v48) = 4;
    v31 = sub_192228730();
    v33 = v38;
    *v38 = v31;
    v33[1] = v34;
    LOBYTE(v48) = 5;
    v35 = sub_192228730();
    v37 = v36;
    (*(v25 + 8))(v44, v43);
    *v20 = v35;
    v20[1] = v37;
    sub_1920ECD2C(v23, v39, type metadata accessor for ControlTemplateButton.Option);
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_1920ECC84(v23, type metadata accessor for ControlTemplateButton.Option);
}

uint64_t ControlTemplateButton.active.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ControlTemplateButton(0) + 20);

  return sub_1920ECD94(a1, v3);
}

id ControlTemplateButton.action.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ControlTemplateButton(0) + 24));
  *a1 = v3;

  return v3;
}

void ControlTemplateButton.action.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for ControlTemplateButton(0) + 24);

  *(v1 + v3) = v2;
}

uint64_t ControlTemplateButton.privacySensitive.setter(char a1)
{
  result = type metadata accessor for ControlTemplateButton(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ControlTemplateButton.disabled.setter(char a1)
{
  result = type metadata accessor for ControlTemplateButton(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ControlTemplateButton.accessibilityIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlTemplateButton(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlTemplateButton.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplateButton(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlTemplateButton.rasterizedImagesAllowed.setter(char a1)
{
  result = type metadata accessor for ControlTemplateButton(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ControlTemplateButton.asPlaceholder()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v47[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v47[-v9];
  if (qword_1EADECB28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = *algn_1EADECB38;
  v57 = qword_1EADECB30;
  v12 = qword_1EADECB10;

  if (v12 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_1EADECB20;
  v52 = qword_1EADECB18;
  v14 = type metadata accessor for ControlTemplateButton.Option(0);
  sub_19202CFFC(v1 + v14[6], v10, &qword_1EADEF720, &unk_19222E2F0);
  v15 = v14[6];
  v16 = (v1 + v14[7]);
  v17 = *v16;
  v49 = v16[1];
  v50 = v17;
  v48 = *(v16 + 16);
  v55 = sub_192226B70();
  v18 = *(v55 - 8);
  v54 = *(v18 + 56);
  v56 = v18 + 56;
  v54(a1 + v15, 1, 1, v55);
  v19 = v14[7];
  v20 = v14[8];
  v53 = v1;
  v21 = a1 + v19;
  v22 = (a1 + v20);
  v23 = (a1 + v14[9]);
  *a1 = v57;
  a1[1] = v11;
  a1[2] = v52;
  a1[3] = v13;

  v51 = v10;
  sub_19204193C(v10, a1 + v15, &qword_1EADEF720, &unk_19222E2F0);
  v24 = v49;
  *v21 = v50;
  *(v21 + 1) = v24;
  v21[16] = v48;
  *v22 = 0;
  v22[1] = 0;
  v25 = type metadata accessor for ControlTemplateButton(0);
  *v23 = 0;
  v23[1] = 0;
  v26 = v2 + v25[5];
  v27 = *algn_1EADECB38;
  v57 = qword_1EADECB30;
  v28 = qword_1EADECB20;
  v52 = qword_1EADECB18;
  sub_19202CFFC(v26 + v14[6], v10, &qword_1EADEF720, &unk_19222E2F0);
  v29 = v14[6];
  v30 = (v26 + v14[7]);
  v31 = *v30;
  v49 = v30[1];
  v50 = v31;
  LOBYTE(v23) = *(v30 + 16);
  v32 = (a1 + v25[5]);
  v54(v32 + v29, 1, 1, v55);
  v33 = v32 + v14[7];
  v34 = (v32 + v14[8]);
  v35 = (v32 + v14[9]);
  *v32 = v57;
  v32[1] = v27;
  v32[2] = v52;
  v32[3] = v28;

  sub_19204193C(v51, v32 + v29, &qword_1EADEF720, &unk_19222E2F0);
  v36 = v49;
  *v33 = v50;
  *(v33 + 1) = v36;
  v33[16] = v23;
  *v34 = 0;
  v34[1] = 0;
  *v35 = 0;
  v35[1] = 0;
  v37 = v53;
  v38 = *(v53 + v25[6]);
  v39 = sub_192225020();
  v40 = *(*(v39 - 8) + 56);
  v41 = v58;
  v40(v58, 1, 1, v39);
  v42 = v25[7];
  v43 = v37;
  LOBYTE(v37) = *(v37 + v25[8]);
  LOBYTE(v35) = *(v43 + v25[9]);
  LODWORD(v57) = *(v43 + v25[11]);
  v40(a1 + v42, 1, 1, v39);
  v44 = (a1 + v25[10]);
  *(a1 + v25[6]) = v38;
  v45 = v38;
  result = sub_19204193C(v41, a1 + v42, &qword_1EADEEE10, &unk_19222B630);
  *(a1 + v25[8]) = v37;
  *(a1 + v25[9]) = v35;
  *v44 = 0;
  v44[1] = 0;
  *(a1 + v25[11]) = v57;
  return result;
}

uint64_t ControlTemplateButton.asTemplateWithTargetedVectorGlyphAssetLib(symbolNames:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v140 = a2;
  v141 = a1;
  v153 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v147 = &v127 - v7;
  v145 = sub_192226B50();
  v150 = *(v145 - 8);
  v8 = v150[8];
  v9 = MEMORY[0x1EEE9AC00](v145);
  v11 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v127 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v142 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v143 = (&v127 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v146 = &v127 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v127 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v127 - v24;
  v26 = sub_192226B70();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v148 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v138 = &v127 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v149 = &v127 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v127 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v136 = &v127 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v127 - v40;
  v151 = type metadata accessor for ControlTemplateButton.Option(0);
  sub_19202CFFC(v4 + v151[6], v25, &qword_1EADEF720, &unk_19222E2F0);
  v42 = v27 + 48;
  v152 = *(v27 + 48);
  v43 = v152(v25, 1, v26);
  v44 = MEMORY[0x1E697CB08];
  v139 = v11;
  if (v43 == 1)
  {
    sub_192033970(v25, &qword_1EADEF720, &unk_19222E2F0);
    sub_1920ECD2C(v4, v153, type metadata accessor for ControlTemplateButton.Option);
    v45 = v148;
    v46 = v149;
    v47 = v143;
    v48 = v150;
  }

  else
  {
    v144 = v27 + 48;
    v135 = *(v27 + 32);
    v135(v41, v25, v26);
    (*(v27 + 16))(v37, v41, v26);
    if ((*(v27 + 88))(v37, v26) == *v44)
    {
      (*(v27 + 96))(v37, v26);
      v49 = v150;
      v50 = v137;
      (v150[4])(v137, v37, v145);
      v51 = sub_192226AF0();
      v53 = sub_1921B01A8(v51, v52, v141);

      if (v53)
      {
        sub_192226AA0();
        (v49[1])(v50, v145);
        (*(v27 + 8))(v41, v26);
      }

      else
      {
        (v49[1])(v50, v145);
        (*(v27 + 8))(v41, v26);
        (*(v27 + 56))(v23, 1, 1, v26);
      }
    }

    else
    {
      v54 = *(v27 + 8);
      v54(v41, v26);
      (*(v27 + 56))(v23, 1, 1, v26);
      v54(v37, v26);
    }

    if (v152(v23, 1, v26) == 1)
    {
      sub_192033970(v23, &qword_1EADEF720, &unk_19222E2F0);
      sub_1920ECD2C(v4, v153, type metadata accessor for ControlTemplateButton.Option);
    }

    else
    {
      v56 = v135;
      v55 = v136;
      v135(v136, v23, v26);
      v57 = v4[1];
      v137 = *v4;
      v132 = v57;
      v58 = v4[2];
      v133 = v4[3];
      v134 = v58;
      v59 = v153;
      v60 = v146;
      v56(v146, v55, v26);
      v61 = *(v27 + 56);
      v61(v60, 0, 1, v26);
      v62 = v151;
      v63 = v151[7];
      v128 = v151[6];
      v64 = v4 + v63;
      v65 = *v64;
      v135 = *(v64 + 1);
      v136 = v65;
      v131 = v64[16];
      v66 = v151[9];
      v67 = (v4 + v151[8]);
      v69 = *v67;
      v68 = v67[1];
      v130 = v69;
      v127 = v68;
      v70 = *(v4 + v66 + 8);
      v129 = *(v4 + v66);
      v61(v59 + v128, 1, 1, v26);
      v71 = v59 + v62[7];
      v72 = (v59 + v62[8]);
      v73 = (v59 + v62[9]);
      v74 = v132;
      *v59 = v137;
      v59[1] = v74;
      v75 = v133;
      v59[2] = v134;
      v59[3] = v75;

      v76 = v127;

      sub_19204193C(v146, v59 + v128, &qword_1EADEF720, &unk_19222E2F0);
      v77 = v135;
      *v71 = v136;
      *(v71 + 1) = v77;
      v71[16] = v131;
      *v72 = v130;
      v72[1] = v76;
      *v73 = v129;
      v73[1] = v70;
    }

    v46 = v149;
    v48 = v150;
    v47 = v143;
    v42 = v144;
    v45 = v148;
  }

  v78 = type metadata accessor for ControlTemplateButton(0);
  v79 = v78[5];
  v150 = v4;
  v80 = v4 + v79;
  v81 = (v153 + v79);
  sub_19202CFFC(&v80[v151[6]], v47, &qword_1EADEF720, &unk_19222E2F0);
  if (v152(v47, 1, v26) == 1)
  {
    sub_192033970(v47, &qword_1EADEF720, &unk_19222E2F0);
    v82 = v80;
    v83 = v81;
  }

  else
  {
    v143 = v81;
    v84 = *(v27 + 32);
    v84(v46, v47, v26);
    (*(v27 + 16))(v45, v46, v26);
    if ((*(v27 + 88))(v45, v26) == *MEMORY[0x1E697CB08])
    {
      v144 = v42;
      (*(v27 + 96))(v45, v26);
      v85 = v139;
      (v48[4])(v139, v45, v145);
      v86 = sub_192226AF0();
      v88 = sub_1921B01A8(v86, v87, v141);

      if (v88)
      {
        v89 = v142;
        v90 = v149;
        sub_192226AA0();
        (v48[1])(v85, v145);
        (*(v27 + 8))(v90, v26);
      }

      else
      {
        (v48[1])(v85, v145);
        (*(v27 + 8))(v149, v26);
        v89 = v142;
        (*(v27 + 56))(v142, 1, 1, v26);
      }
    }

    else
    {
      v91 = *(v27 + 8);
      v91(v46, v26);
      v89 = v142;
      (*(v27 + 56))(v142, 1, 1, v26);
      v91(v148, v26);
    }

    if (v152(v89, 1, v26) != 1)
    {
      v92 = v138;
      v84(v138, v89, v26);
      v93 = *(v80 + 1);
      v152 = *v80;
      v94 = *(v80 + 2);
      v148 = *(v80 + 3);
      v149 = v94;
      v95 = v146;
      v84(v146, v92, v26);
      v96 = *(v27 + 56);
      v96(v95, 0, 1, v26);
      v97 = v151;
      v98 = v151[6];
      v99 = &v80[v151[7]];
      v100 = *v99;
      v144 = *(v99 + 1);
      v145 = v100;
      LODWORD(v142) = v99[16];
      v101 = &v80[v151[8]];
      v102 = *v101;
      v103 = v101[1];
      v104 = &v80[v151[9]];
      v105 = *(v104 + 1);
      v140 = *v104;
      v141 = v102;
      v106 = v143;
      v96(v143 + v98, 1, 1, v26);
      v107 = v106 + v97[7];
      v108 = (v106 + v97[8]);
      v109 = (v106 + v97[9]);
      *v106 = v152;
      v106[1] = v93;
      v110 = v148;
      v106[2] = v149;
      v106[3] = v110;

      sub_19204193C(v146, v106 + v98, &qword_1EADEF720, &unk_19222E2F0);
      v111 = v144;
      *v107 = v145;
      *(v107 + 1) = v111;
      v107[16] = v142;
      v112 = v140;
      *v108 = v141;
      v108[1] = v103;
      *v109 = v112;
      v109[1] = v105;
      goto LABEL_23;
    }

    sub_192033970(v89, &qword_1EADEF720, &unk_19222E2F0);
    v82 = v80;
    v83 = v143;
  }

  sub_1920ECD2C(v82, v83, type metadata accessor for ControlTemplateButton.Option);
LABEL_23:
  v113 = v150;
  v114 = *(v150 + v78[6]);
  v115 = v147;
  sub_19202CFFC(v150 + v78[7], v147, &qword_1EADEEE10, &unk_19222B630);
  v116 = v78[7];
  LODWORD(v152) = *(v113 + v78[8]);
  v117 = v78[10];
  v118 = *(v113 + v78[9]);
  v119 = *(v113 + v117);
  v120 = *(v113 + v117 + 8);
  v121 = *(v113 + v78[11]);
  v122 = sub_192225020();
  v123 = v153;
  (*(*(v122 - 8) + 56))(v153 + v116, 1, 1, v122);
  v124 = (v123 + v78[10]);
  *(v123 + v78[6]) = v114;

  v125 = v114;
  result = sub_19204193C(v115, v123 + v116, &qword_1EADEEE10, &unk_19222B630);
  *(v123 + v78[8]) = v152;
  *(v123 + v78[9]) = v118;
  *v124 = v119;
  v124[1] = v120;
  *(v123 + v78[11]) = v121;
  return result;
}

uint64_t ControlTemplateButton.vectorGlyphAssetLibraryDatas.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - v4;
  v6 = sub_192226B70();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ControlTemplateButton.Option(0);
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA90, &qword_19222FAF0);
  v17 = *(v12 + 72);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v40 = swift_allocObject();
  v19 = v40 + v18;
  v20 = v6;
  v21 = type metadata accessor for ControlTemplateButton(0);
  sub_1920ECD2C(v1 + *(v21 + 20), v19, type metadata accessor for ControlTemplateButton.Option);
  v44 = v1;
  sub_1920ECD2C(v1, v19 + v17, type metadata accessor for ControlTemplateButton.Option);
  v43 = v11;
  v22 = *(v11 + 24);
  sub_1920ECD2C(v19, v16, type metadata accessor for ControlTemplateButton.Option);
  v39 = v22;
  sub_19202CFFC(&v16[v22], v5, &qword_1EADEF720, &unk_19222E2F0);
  sub_1920ECC84(v16, type metadata accessor for ControlTemplateButton.Option);
  v42 = v7;
  v23 = v7[6];
  v24 = v23(v5, 1, v6);
  v45 = (v7 + 4);
  v41 = v10;
  if (v24 == 1)
  {
    sub_192033970(v5, &qword_1EADEF720, &unk_19222E2F0);
    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v26 = v10;
    v27 = v7[4];
    v38 = v6;
    v27(v26, v5, v6);
    v25 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1920C2FCC(0, *(v25 + 2) + 1, 1, v25);
    }

    v29 = *(v25 + 2);
    v28 = *(v25 + 3);
    if (v29 >= v28 >> 1)
    {
      v25 = sub_1920C2FCC(v28 > 1, v29 + 1, 1, v25);
    }

    *(v25 + 2) = v29 + 1;
    v30 = &v25[((*(v42 + 80) + 32) & ~*(v42 + 80)) + v42[9] * v29];
    v20 = v38;
    v27(v30, v41, v38);
  }

  sub_1920ECD2C(v19 + v17, v16, type metadata accessor for ControlTemplateButton.Option);
  sub_19202CFFC(&v16[v39], v5, &qword_1EADEF720, &unk_19222E2F0);
  sub_1920ECC84(v16, type metadata accessor for ControlTemplateButton.Option);
  if (v23(v5, 1, v20) == 1)
  {
    sub_192033970(v5, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v31 = *v45;
    v32 = v41;
    (*v45)(v41, v5, v20);
    v33 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1920C2FCC(0, *(v25 + 2) + 1, 1, v25);
    }

    v35 = *(v25 + 2);
    v34 = *(v25 + 3);
    if (v35 >= v34 >> 1)
    {
      v25 = sub_1920C2FCC(v34 > 1, v35 + 1, 1, v25);
    }

    *(v25 + 2) = v35 + 1;
    v31(&v25[((*(v42 + 80) + 32) & ~*(v42 + 80)) + v42[9] * v35], v32, v33);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v36 = sub_1920E9968(v25);

  return v36;
}

uint64_t sub_1920E9968(uint64_t a1)
{
  v2 = sub_192226B70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_192226B50();
  v7 = *(v213 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v10 = v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_192226B30();
  v190 = *(v207 - 8);
  v11 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v206 = v189 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymbolLookupKey(0);
  v209 = *(v13 - 8);
  v14 = *(v209 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v193 = v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v215 = v189 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v194 = v189 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v189 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v212 = v189 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v214 = v189 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v202 = v189 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAB8, &qword_19222FEF8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v211 = v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v210 = v189 - v33;
  v34 = *(a1 + 16);
  v201 = v23;
  if (v34)
  {
    v189[1] = v13;
    v36 = *(v3 + 16);
    v35 = v3 + 16;
    v208 = v36;
    v37 = a1 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v38 = (v35 + 72);
    LODWORD(v205) = *MEMORY[0x1E697CB08];
    v203 = v35 - 8;
    v200 = (v35 + 80);
    v199 = (v7 + 32);
    v197 = (v7 + 8);
    v39 = MEMORY[0x1E69E7CC8];
    *&v204 = *(v35 + 56);
    v192 = xmmword_19222B480;
    v195 = v35;
    v198 = v10;
    v40 = v194;
    v196 = (v35 + 72);
    v191 = v2;
    v36(v6, v37, v2);
    while (1)
    {
      v41 = (*v38)(v6, v2);
      if (v41 != v205)
      {
        (*v203)(v6, v2);
        goto LABEL_4;
      }

      (*v200)(v6, v2);
      (*v199)(v10, v6, v213);
      sub_192226B40();
      if (!*(v39 + 16))
      {
        break;
      }

      v42 = sub_1920B7128(v40);
      if ((v43 & 1) == 0)
      {
        break;
      }

      v217 = *(*(v39 + 56) + 8 * v42);

      v44 = sub_192226AF0();
      sub_192082B80(&v216, v44, v45);

      v46 = v193;
      sub_1920ECD2C(v40, v193, type metadata accessor for SymbolLookupKey);
      if (!v217)
      {
        v80 = sub_1920B7128(v46);
        v81 = v39;
        if (v82)
        {
          v83 = v80;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v216 = v81;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_19213EDA8();
            v81 = v216;
          }

          sub_1920ECC84(*(v81 + 48) + *(v209 + 72) * v83, type metadata accessor for SymbolLookupKey);
          v85 = *(*(v81 + 56) + 8 * v83);

          sub_1921E1120(v83, v81);
          v86 = v193;
        }

        else
        {
          v86 = v193;
        }

        sub_1920ECC84(v86, type metadata accessor for SymbolLookupKey);
        sub_1920ECC84(v40, type metadata accessor for SymbolLookupKey);
        v93 = v198;
        (*v197)(v198, v213);
        v39 = v81;
        v10 = v93;
LABEL_25:
        v38 = v196;
        goto LABEL_4;
      }

      v47 = v217;

      v48 = swift_isUniquelyReferenced_nonNull_native();
      v216 = v39;
      v49 = sub_1920B7128(v46);
      v51 = v39;
      v52 = v49;
      v53 = *(v51 + 16);
      v54 = (v50 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        goto LABEL_92;
      }

      v56 = v50;
      if (*(v51 + 24) >= v55)
      {
        if ((v48 & 1) == 0)
        {
          sub_19213EDA8();
        }
      }

      else
      {
        sub_19213BD10(v55, v48);
        v57 = sub_1920B7128(v193);
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_97;
        }

        v52 = v57;
      }

      v23 = v201;
      v87 = v216;
      if (v56)
      {
        v88 = v216[7];
        v89 = *(v88 + 8 * v52);
        *(v88 + 8 * v52) = v47;

        sub_1920ECC84(v193, type metadata accessor for SymbolLookupKey);
        sub_1920ECC84(v40, type metadata accessor for SymbolLookupKey);
        v10 = v198;
        (*v197)(v198, v213);
        v39 = v87;
      }

      else
      {
        v216[(v52 >> 6) + 8] |= 1 << v52;
        v90 = v193;
        sub_1920ECD2C(v193, v87[6] + *(v209 + 72) * v52, type metadata accessor for SymbolLookupKey);
        *(v87[7] + 8 * v52) = v47;
        sub_1920ECC84(v90, type metadata accessor for SymbolLookupKey);
        sub_1920ECC84(v40, type metadata accessor for SymbolLookupKey);
        v10 = v198;
        (*v197)(v198, v213);
        v91 = v87[2];
        v70 = __OFADD__(v91, 1);
        v92 = v91 + 1;
        if (v70)
        {
          goto LABEL_93;
        }

        v39 = v87;
        v87[2] = v92;
      }

      v38 = v196;
      v2 = v191;
LABEL_4:
      v37 += v204;
      if (!--v34)
      {
        goto LABEL_40;
      }

      v208(v6, v37, v2);
    }

    v59 = v40;
    v60 = v215;
    sub_1920ECD2C(v59, v215, type metadata accessor for SymbolLookupKey);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECF0, &qword_19222D8D0);
    v61 = v39;
    inited = swift_initStackObject();
    *(inited + 16) = v192;
    *(inited + 32) = sub_192226AF0();
    *(inited + 40) = v63;
    v64 = sub_192170200(inited);
    swift_setDeallocating();
    sub_1920ED9C4(inited + 32);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v216 = v61;
    v66 = sub_1920B7128(v60);
    v68 = *(v61 + 16);
    v69 = (v67 & 1) == 0;
    v70 = __OFADD__(v68, v69);
    v71 = v68 + v69;
    if (v70)
    {
      goto LABEL_90;
    }

    v72 = v67;
    if (*(v61 + 24) >= v71)
    {
      v40 = v194;
      if ((v65 & 1) == 0)
      {
        v94 = v66;
        sub_19213EDA8();
        v66 = v94;
      }
    }

    else
    {
      sub_19213BD10(v71, v65);
      v66 = sub_1920B7128(v215);
      v40 = v194;
      if ((v72 & 1) != (v73 & 1))
      {
LABEL_97:
        sub_192228A40();
        __break(1u);
LABEL_98:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC8, &unk_192246D20);
        result = sub_192228A40();
        __break(1u);
        return result;
      }
    }

    v23 = v201;
    v74 = v216;
    if (v72)
    {
      v75 = v216[7];
      v76 = *(v75 + 8 * v66);
      *(v75 + 8 * v66) = v64;

      v39 = v74;
    }

    else
    {
      v216[(v66 >> 6) + 8] |= 1 << v66;
      v77 = v66;
      sub_1920ECD2C(v215, v74[6] + *(v209 + 72) * v66, type metadata accessor for SymbolLookupKey);
      *(v74[7] + 8 * v77) = v64;
      v78 = v74[2];
      v70 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v70)
      {
        goto LABEL_91;
      }

      v39 = v74;
      v74[2] = v79;
    }

    sub_1920ECC84(v215, type metadata accessor for SymbolLookupKey);
    sub_1920ECC84(v40, type metadata accessor for SymbolLookupKey);
    v10 = v198;
    (*v197)(v198, v213);
    goto LABEL_25;
  }

  v39 = MEMORY[0x1E69E7CC8];
LABEL_40:
  v213 = sub_192140634(MEMORY[0x1E69E7CC0]);
  v95 = *(v39 + 64);
  v200 = (v39 + 64);
  v96 = 1 << *(v39 + 32);
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & v95;
  v99 = (v96 + 63) >> 6;
  v205 = (v190 + 16);
  v203 = v39;

  v100 = 0;
  *&v101 = 136380931;
  v204 = v101;
  v102 = v211;
  v103 = v212;
  v104 = v214;
  v208 = v99;
LABEL_43:
  v105 = v100;
  if (v98)
  {
    while (1)
    {
      v106 = v103;
      v107 = v23;
      v108 = v105;
LABEL_53:
      v111 = __clz(__rbit64(v98));
      v98 &= v98 - 1;
      v112 = v111 | (v108 << 6);
      v113 = v203;
      v114 = v202;
      sub_1920ECD2C(*(v203 + 48) + *(v209 + 72) * v112, v202, type metadata accessor for SymbolLookupKey);
      v115 = *(*(v113 + 56) + 8 * v112);
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC0, &unk_19222FF00);
      v117 = *(v116 + 48);
      sub_1920ED888(v114, v102, type metadata accessor for SymbolLookupKey);
      *(v102 + v117) = v115;
      (*(*(v116 - 8) + 56))(v102, 0, 1, v116);

      v110 = v108;
      v23 = v107;
      v103 = v106;
      v104 = v214;
LABEL_54:
      v118 = v210;
      sub_1920ED8F0(v102, v210);
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC0, &unk_19222FF00);
      if ((*(*(v119 - 8) + 48))(v118, 1, v119) == 1)
      {
        break;
      }

      v120 = *(v118 + *(v119 + 48));
      sub_1920ED888(v118, v104, type metadata accessor for SymbolLookupKey);
      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v121 = sub_1922258B0();
      __swift_project_value_buffer(v121, qword_1EAE00810);
      sub_1920ECD2C(v104, v103, type metadata accessor for SymbolLookupKey);

      v122 = sub_192225890();
      v123 = sub_192227FB0();

      v124 = os_log_type_enabled(v122, v123);
      v215 = v110;
      if (v124)
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v216 = v126;
        *v125 = v204;
        v127 = sub_192227D60();
        v129 = sub_19202B8CC(v127, v128, &v216);

        *(v125 + 4) = v129;
        *(v125 + 12) = 2081;
        (*v205)(v206, v103, v207);
        v130 = sub_192227990();
        v132 = v131;
        sub_1920ECC84(v103, type metadata accessor for SymbolLookupKey);
        v133 = sub_19202B8CC(v130, v132, &v216);
        v23 = v201;

        *(v125 + 14) = v133;
        _os_log_impl(&dword_192028000, v122, v123, "requesting dataForVectorGlyphs for %{private}s from %{private}s", v125, 0x16u);
        swift_arrayDestroy();
        v134 = v126;
        v104 = v214;
        MEMORY[0x193B0C7F0](v134, -1, -1);
        MEMORY[0x193B0C7F0](v125, -1, -1);
      }

      else
      {

        sub_1920ECC84(v103, type metadata accessor for SymbolLookupKey);
      }

      v135 = sub_1921B08CC(v104, v120);
      if (v135)
      {
        v136 = v135;
        v137 = sub_192227D40();
        v138 = [v136 dataForVectorGlyphsWithNames_];

        if (v138)
        {
          v157 = sub_192225080();
          v159 = v158;

          sub_1920367C8(v157, v159);
          v160 = v213;
          v161 = swift_isUniquelyReferenced_nonNull_native();
          v216 = v160;
          v162 = sub_1920B70BC(v120);
          v164 = *(v160 + 16);
          v165 = (v163 & 1) == 0;
          v70 = __OFADD__(v164, v165);
          v166 = v164 + v165;
          if (v70)
          {
            __break(1u);
          }

          else
          {
            v167 = v163;
            if (*(v160 + 24) >= v166)
            {
              if (v161)
              {
                goto LABEL_78;
              }

              v173 = v162;
              sub_19213EC2C();
              v162 = v173;
              v103 = v212;
              if ((v167 & 1) == 0)
              {
                goto LABEL_81;
              }

LABEL_79:
              v169 = v162;

              v213 = v216;
              v170 = (v216[7] + 16 * v169);
              v171 = *v170;
              v172 = v170[1];
              *v170 = v157;
              v170[1] = v159;
              sub_192039140(v171, v172);
              sub_192039140(v157, v159);
              sub_1920ECC84(v104, type metadata accessor for SymbolLookupKey);
LABEL_83:
              v102 = v211;
              v99 = v208;
              v100 = v215;
              goto LABEL_43;
            }

            sub_19213BA74(v166, v161);
            v162 = sub_1920B70BC(v120);
            if ((v167 & 1) != (v168 & 1))
            {
              goto LABEL_98;
            }

LABEL_78:
            v103 = v212;
            if (v167)
            {
              goto LABEL_79;
            }

LABEL_81:
            v174 = v216;
            v216[(v162 >> 6) + 8] |= 1 << v162;
            *(v174[6] + 8 * v162) = v120;
            v175 = (v174[7] + 16 * v162);
            *v175 = v157;
            v175[1] = v159;
            sub_192039140(v157, v159);
            sub_1920ECC84(v104, type metadata accessor for SymbolLookupKey);
            v176 = v174[2];
            v70 = __OFADD__(v176, 1);
            v177 = v176 + 1;
            if (!v70)
            {
              v213 = v174;
              v174[2] = v177;
              goto LABEL_83;
            }
          }

          __break(1u);
          goto LABEL_97;
        }
      }

      sub_1920ECD2C(v104, v23, type metadata accessor for SymbolLookupKey);

      v139 = sub_192225890();
      v140 = sub_192227F90();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v216 = v142;
        *v141 = v204;
        v143 = sub_192227D60();
        v145 = sub_19202B8CC(v143, v144, &v216);

        *(v141 + 4) = v145;
        *(v141 + 12) = 2081;
        (*v205)(v206, v23, v207);
        v146 = sub_192227990();
        v148 = v147;
        sub_1920ECC84(v23, type metadata accessor for SymbolLookupKey);
        v149 = sub_19202B8CC(v146, v148, &v216);

        *(v141 + 14) = v149;
        _os_log_impl(&dword_192028000, v139, v140, "failed to get dataForVectorGlyphs for %{private}s from %{private}s", v141, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193B0C7F0](v142, -1, -1);
        MEMORY[0x193B0C7F0](v141, -1, -1);
      }

      else
      {

        sub_1920ECC84(v23, type metadata accessor for SymbolLookupKey);
      }

      v102 = v211;
      v103 = v212;
      v100 = v215;
      v150 = sub_1920B70BC(v120);
      v152 = v151;

      if (v152)
      {
        v154 = v213;
        v155 = swift_isUniquelyReferenced_nonNull_native();
        v216 = v154;
        if ((v155 & 1) == 0)
        {
          sub_19213EC2C();
          v154 = v216;
        }

        v156 = *(*(v154 + 48) + 8 * v150);

        sub_192039140(*(*(v154 + 56) + 16 * v150), *(*(v154 + 56) + 16 * v150 + 8));
        v213 = v154;
        sub_1921E0F84(v150, v154);
        sub_1920ECC84(v104, type metadata accessor for SymbolLookupKey);
        v99 = v208;
        goto LABEL_43;
      }

      sub_1920ECC84(v104, type metadata accessor for SymbolLookupKey);
      v105 = v100;
      v99 = v208;
      if (!v98)
      {
        goto LABEL_45;
      }
    }

    if (qword_1EADEE4E8 != -1)
    {
      goto LABEL_94;
    }
  }

  else
  {
LABEL_45:
    if (v99 <= v105 + 1)
    {
      v109 = v105 + 1;
    }

    else
    {
      v109 = v99;
    }

    v110 = v109 - 1;
    while (1)
    {
      v108 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        break;
      }

      if (v108 >= v99)
      {
        v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC0, &unk_19222FF00);
        (*(*(v153 - 8) + 56))(v102, 1, 1, v153);
        v98 = 0;
        goto LABEL_54;
      }

      v98 = v200[v108];
      ++v105;
      if (v98)
      {
        v106 = v103;
        v107 = v23;
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    swift_once();
  }

  v178 = sub_1922258B0();
  __swift_project_value_buffer(v178, qword_1EAE00810);
  v179 = v213;
  swift_bridgeObjectRetain_n();
  v180 = sub_192225890();
  v181 = sub_192227FB0();

  if (os_log_type_enabled(v180, v181))
  {
    v182 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v216 = v183;
    *v182 = 136380675;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC8, &unk_192246D20);
    sub_1920ED960();
    v184 = sub_192227850();
    v186 = v185;

    v187 = sub_19202B8CC(v184, v186, &v216);

    *(v182 + 4) = v187;

    _os_log_impl(&dword_192028000, v180, v181, "assetLibraryDatas: returning dataPerNames with keys:%{private}s", v182, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v183);
    MEMORY[0x193B0C7F0](v183, -1, -1);
    MEMORY[0x193B0C7F0](v182, -1, -1);
  }

  else
  {
  }

  return v179;
}

unint64_t sub_1920EAF18()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000010;
    if (v1 != 4)
    {
      v5 = 0x64656C6261736964;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else
  {
    v2 = 0x6576697463616E69;
    v3 = 0x6E6F69746361;
    if (v1 != 2)
    {
      v3 = 0x746169636F737361;
    }

    if (*v0)
    {
      v2 = 0x657669746361;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1920EB020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1920ED5E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1920EB054(uint64_t a1)
{
  v2 = sub_1920ECDF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920EB090(uint64_t a1)
{
  v2 = sub_1920ECDF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplateButton.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA98, &qword_19222FAF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920ECDF8();
  sub_192228B90();
  LOBYTE(v24) = 0;
  type metadata accessor for ControlTemplateButton.Option(0);
  sub_1920ECCE4(&qword_1EADEDF40, type metadata accessor for ControlTemplateButton.Option);
  sub_1922288C0();
  if (!v2)
  {
    v11 = type metadata accessor for ControlTemplateButton(0);
    v12 = v11[5];
    LOBYTE(v24) = 1;
    sub_1922288C0();
    v24 = *(v3 + v11[6]);
    v13 = v24;
    v23[15] = 2;
    sub_1920ECE4C();
    v14 = v13;
    sub_1922288C0();

    v15 = v11[7];
    LOBYTE(v24) = 3;
    sub_192225020();
    sub_1920ECCE4(&qword_1ED74BB38, MEMORY[0x1E6968FB0]);
    sub_192228850();
    v16 = *(v3 + v11[8]);
    LOBYTE(v24) = 4;
    sub_192228870();
    v17 = *(v3 + v11[9]);
    LOBYTE(v24) = 5;
    sub_192228870();
    v18 = (v3 + v11[10]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v24) = 6;
    sub_192228830();
    v21 = *(v3 + v11[11]);
    LOBYTE(v24) = 7;
    sub_192228870();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ControlTemplateButton.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38 - v5;
  v44 = type metadata accessor for ControlTemplateButton.Option(0);
  v7 = *(*(v44 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v44);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAA0, &qword_19222FB00);
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - v14;
  v16 = type metadata accessor for ControlTemplateButton(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 28);
  v22 = sub_192225020();
  v23 = *(*(v22 - 8) + 56);
  v24 = v20;
  v47 = v21;
  v23(&v20[v21], 1, 1, v22);
  v25 = a1[3];
  v26 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1920ECDF8();
  v45 = v15;
  v27 = v46;
  sub_192228B70();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_192033970(v24 + v47, &qword_1EADEEE10, &unk_19222B630);
  }

  else
  {
    v39 = v6;
    v46 = v16;
    LOBYTE(v50) = 0;
    sub_1920ECCE4(&qword_1EADED880, type metadata accessor for ControlTemplateButton.Option);
    v28 = v41;
    sub_1922287C0();
    v29 = v24;
    sub_1920ED888(v28, v24, type metadata accessor for ControlTemplateButton.Option);
    LOBYTE(v50) = 1;
    sub_1922287C0();
    v30 = v46;
    sub_1920ED888(v10, v29 + v46[5], type metadata accessor for ControlTemplateButton.Option);
    v49 = 2;
    sub_1920ECEA0();
    sub_1922287C0();
    *(v29 + v30[6]) = v50;
    LOBYTE(v50) = 3;
    sub_1920ECCE4(qword_1ED7488E8, MEMORY[0x1E6968FB0]);
    v31 = v39;
    sub_192228750();
    sub_19204193C(v31, v29 + v47, &qword_1EADEEE10, &unk_19222B630);
    LOBYTE(v50) = 4;
    *(v29 + v30[8]) = sub_192228770() & 1;
    LOBYTE(v50) = 5;
    v32 = sub_192228770();
    v33 = v42;
    *(v29 + v30[9]) = v32 & 1;
    LOBYTE(v50) = 6;
    v34 = sub_192228730();
    v35 = (v29 + v30[10]);
    *v35 = v34;
    v35[1] = v36;
    LOBYTE(v50) = 7;
    LOBYTE(v31) = sub_192228770();
    (*(v33 + 8))(v45, v43);
    *(v29 + v30[11]) = v31 & 1;
    sub_1920ECD2C(v29, v40, type metadata accessor for ControlTemplateButton);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return sub_1920ECC84(v29, type metadata accessor for ControlTemplateButton);
  }
}

uint64_t ControlTemplateButton.validateIcon(_:)(void (*a1)(char *), uint64_t a2)
{
  v27 = a1;
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = sub_192226B70();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v25 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = *(type metadata accessor for ControlTemplateButton(0) + 20);
  v26 = v2;
  v18 = v2 + v17;
  v19 = type metadata accessor for ControlTemplateButton.Option(0);
  sub_19202CFFC(v18 + *(v19 + 24), v9, &qword_1EADEF720, &unk_19222E2F0);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    sub_192033970(v9, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v24 = v7;
    (*(v11 + 32))(v16, v9, v10);
    v21 = v28;
    v27(v16);
    if (v21)
    {
      return (*(v11 + 8))(v16, v10);
    }

    (*(v11 + 8))(v16, v10);
    v7 = v24;
  }

  sub_19202CFFC(v26 + *(v19 + 24), v7, &qword_1EADEF720, &unk_19222E2F0);
  if (v20(v7, 1, v10) == 1)
  {
    return sub_192033970(v7, &qword_1EADEF720, &unk_19222E2F0);
  }

  v16 = v25;
  (*(v11 + 32))(v25, v7, v10);
  v27(v16);
  return (*(v11 + 8))(v16, v10);
}

uint64_t ControlTemplateButton.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v32 - v4;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000023, 0x800000019224A170);
  if (v0[1])
  {
    v6 = *v0;
    v7 = v0[1];
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x193B0A990](v6, v7);

  MEMORY[0x193B0A990](0x627573202020200ALL, 0xEF203A656C746974);
  if (v0[3])
  {
    v8 = v0[2];
    v9 = v0[3];
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7104878;
  }

  MEMORY[0x193B0A990](v8, v9);

  v10 = 0xE300000000000000;
  MEMORY[0x193B0A990](2128928, 0xE300000000000000);
  v11 = type metadata accessor for ControlTemplateButton(0);
  v12 = v0 + v11[5];
  v13 = *(v12 + 3);
  if (v13)
  {
    v14 = *(v12 + 2);
  }

  else
  {
    v14 = 7104878;
  }

  if (v13)
  {
    v10 = *(v12 + 3);
  }

  MEMORY[0x193B0A990](v14, v10);

  MEMORY[0x193B0A990](0x6F6369202020200ALL, 0xED00002020203A6ELL);
  v15 = type metadata accessor for ControlTemplateButton.Option(0);
  sub_19202CFFC(v0 + *(v15 + 24), v5, &qword_1EADEF720, &unk_19222E2F0);
  v16 = sub_192226B70();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v5, 1, v16) == 1)
  {
    sub_192033970(v5, &qword_1EADEF720, &unk_19222E2F0);
    v18 = 0xE300000000000000;
    v19 = 7104878;
  }

  else
  {
    v20 = sub_192226AB0();
    v18 = v21;
    (*(v17 + 8))(v5, v16);
    v19 = v20;
  }

  MEMORY[0x193B0A990](v19, v18);

  MEMORY[0x193B0A990](0x746361202020200ALL, 0xED0000203A6E6F69);
  v32[1] = *(v1 + v11[6]);
  v22 = ControlAction.description.getter();
  MEMORY[0x193B0A990](v22);

  MEMORY[0x193B0A990](0xD000000000000017, 0x800000019224A1A0);
  if (*(v1 + v11[8]))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v1 + v11[8]))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v23, v24);

  MEMORY[0x193B0A990](0x736964202020200ALL, 0xEF203A64656C6261);
  if (*(v1 + v11[9]))
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (*(v1 + v11[9]))
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v25, v26);

  MEMORY[0x193B0A990](0xD00000000000001ELL, 0x800000019224A1C0);
  v27 = (v1 + v11[10]);
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;
  }

  else
  {
    v29 = 7104878;
  }

  if (v28)
  {
    v30 = v27[1];
  }

  else
  {
    v30 = 0xE300000000000000;
  }

  MEMORY[0x193B0A990](v29, v30);

  MEMORY[0x193B0A990](10506, 0xE200000000000000);
  return v33;
}

uint64_t _s9WidgetKit21ControlTemplateButtonV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_192225020();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D0, &qword_19222E728);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v40 - v15;
  if ((_s9WidgetKit21ControlTemplateButtonV6OptionV2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  v17 = type metadata accessor for ControlTemplateButton(0);
  if ((_s9WidgetKit21ControlTemplateButtonV6OptionV2eeoiySbAE_AEtFZ_0((a1 + v17[5]), (a2 + v17[5])) & 1) == 0)
  {
    goto LABEL_17;
  }

  v42 = v5;
  v18 = v17[6];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_17;
    }

    v40[1] = sub_1920EDA18();
    v21 = v20;
    v41 = v17;
    v22 = v21;
    v23 = v19;
    v24 = v22;
    v25 = v23;
    LOBYTE(v23) = sub_1922281D0();

    v17 = v41;
    if ((v23 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v20)
  {
    goto LABEL_17;
  }

  v41 = v17;
  v26 = v17[7];
  v27 = *(v13 + 48);
  sub_19202CFFC(a1 + v26, v16, &qword_1EADEEE10, &unk_19222B630);
  sub_19202CFFC(a2 + v26, &v16[v27], &qword_1EADEEE10, &unk_19222B630);
  v28 = *(v42 + 48);
  if (v28(v16, 1, v4) != 1)
  {
    sub_19202CFFC(v16, v12, &qword_1EADEEE10, &unk_19222B630);
    if (v28(&v16[v27], 1, v4) != 1)
    {
      v29 = v42;
      (*(v42 + 32))(v8, &v16[v27], v4);
      sub_1920ECCE4(&qword_1EADECF08, MEMORY[0x1E6968FB0]);
      v30 = sub_192227910();
      v31 = *(v29 + 8);
      v31(v8, v4);
      v31(v12, v4);
      sub_192033970(v16, &qword_1EADEEE10, &unk_19222B630);
      if ((v30 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    (*(v42 + 8))(v12, v4);
LABEL_13:
    sub_192033970(v16, &qword_1EADEF7D0, &qword_19222E728);
    goto LABEL_17;
  }

  if (v28(&v16[v27], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_192033970(v16, &qword_1EADEEE10, &unk_19222B630);
LABEL_15:
  v32 = v41;
  if (*(a1 + v41[8]) != *(a2 + v41[8]) || *(a1 + v41[9]) != *(a2 + v41[9]))
  {
    goto LABEL_17;
  }

  v35 = v41[10];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    v33 = *(a1 + v32[11]) ^ *(a2 + v32[11]) ^ 1;
    return v33 & 1;
  }

  if (!v39)
  {
    goto LABEL_26;
  }

LABEL_17:
  v33 = 0;
  return v33 & 1;
}

uint64_t _s9WidgetKit21ControlTemplateButtonV6OptionV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_192226B70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D8, qword_19222E730);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v50 = type metadata accessor for ControlTemplateButton.Option(0);
  v21 = *(v50 + 24);
  v22 = *(v13 + 48);
  sub_19202CFFC(a1 + v21, v16, &qword_1EADEF720, &unk_19222E2F0);
  v23 = a2 + v21;
  v24 = v5;
  sub_19202CFFC(v23, &v16[v22], &qword_1EADEF720, &unk_19222E2F0);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) != 1)
  {
    sub_19202CFFC(v16, v12, &qword_1EADEF720, &unk_19222E2F0);
    if (v25(&v16[v22], 1, v4) != 1)
    {
      (*(v24 + 32))(v8, &v16[v22], v4);
      sub_1920ECCE4(&qword_1EADEF7E0, MEMORY[0x1E697CB10]);
      v27 = sub_192227910();
      v28 = *(v24 + 8);
      v28(v8, v4);
      v28(v12, v4);
      sub_192033970(v16, &qword_1EADEF720, &unk_19222E2F0);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

    (*(v24 + 8))(v12, v4);
LABEL_20:
    sub_192033970(v16, &qword_1EADEF7D8, qword_19222E730);
    return 0;
  }

  if (v25(&v16[v22], 1, v4) != 1)
  {
    goto LABEL_20;
  }

  sub_192033970(v16, &qword_1EADEF720, &unk_19222E2F0);
LABEL_24:
  v29 = v50;
  v30 = *(v50 + 28);
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 16);
  v33 = a2 + v30;
  v34 = v33[16];
  if (v32)
  {
    if ((v33[16] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v33[16])
    {
      return 0;
    }

    v36 = *v31;
    v35 = v31[1];
    v38 = *v33;
    v37 = *(v33 + 1);
    if ((sub_192227290() & 1) == 0)
    {
      return 0;
    }
  }

  v39 = *(v29 + 32);
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  v44 = *(v29 + 36);
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (v48 && (*v45 == *v47 && v46 == v48 || (sub_1922289A0() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v48)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1920ECC30()
{
  result = qword_1EADEE5C8;
  if (!qword_1EADEE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5C8);
  }

  return result;
}

uint64_t sub_1920ECC84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1920ECCE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1920ECD2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920ECD94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateButton.Option(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1920ECDF8()
{
  result = qword_1EADEE5E0;
  if (!qword_1EADEE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5E0);
  }

  return result;
}

unint64_t sub_1920ECE4C()
{
  result = qword_1EADEE450;
  if (!qword_1EADEE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE450);
  }

  return result;
}

unint64_t sub_1920ECEA0()
{
  result = qword_1EADEDA60;
  if (!qword_1EADEDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDA60);
  }

  return result;
}

uint64_t sub_1920ECEF4(void *a1)
{
  a1[1] = sub_1920ECCE4(&qword_1EADEE5A0, type metadata accessor for ControlTemplateButton);
  a1[2] = sub_1920ECCE4(&qword_1EADEE5B0, type metadata accessor for ControlTemplateButton);
  result = sub_1920ECCE4(&qword_1EADEE5A8, type metadata accessor for ControlTemplateButton);
  a1[3] = result;
  return result;
}

void sub_1920ECFC8()
{
  type metadata accessor for ControlTemplateButton.Option(319);
  if (v0 <= 0x3F)
  {
    sub_192040A00(319, &qword_1ED74C4C0, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      sub_192040778(319, &qword_1ED74B590);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1920ED0D8()
{
  sub_192040778(319, &qword_1ED74B590);
  if (v0 <= 0x3F)
  {
    sub_192040A00(319, &qword_1ED74B540, MEMORY[0x1E697CB10]);
    if (v1 <= 0x3F)
    {
      sub_192040778(319, &qword_1EADEE808);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1920ED1E0()
{
  result = qword_1EADEFAA8;
  if (!qword_1EADEFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFAA8);
  }

  return result;
}

unint64_t sub_1920ED238()
{
  result = qword_1EADEFAB0;
  if (!qword_1EADEFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFAB0);
  }

  return result;
}

unint64_t sub_1920ED290()
{
  result = qword_1EADEE5D0;
  if (!qword_1EADEE5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5D0);
  }

  return result;
}

unint64_t sub_1920ED2E8()
{
  result = qword_1EADEE5D8;
  if (!qword_1EADEE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5D8);
  }

  return result;
}

unint64_t sub_1920ED340()
{
  result = qword_1EADEE5B8;
  if (!qword_1EADEE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5B8);
  }

  return result;
}

unint64_t sub_1920ED398()
{
  result = qword_1EADEE5C0;
  if (!qword_1EADEE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5C0);
  }

  return result;
}

uint64_t sub_1920ED3EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953393012 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69486E6F69746361 && a2 == 0xEA0000000000746ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1920ED5E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697463616E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xED00004C52556465 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000192249E50 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000192249E70 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000192249E90 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1920ED888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920ED8F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAB8, &qword_19222FEF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1920ED960()
{
  result = qword_1EADEDFE0;
  if (!qword_1EADEDFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFAC8, &unk_192246D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDFE0);
  }

  return result;
}

unint64_t sub_1920EDA18()
{
  result = qword_1ED74B690;
  if (!qword_1ED74B690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED74B690);
  }

  return result;
}

uint64_t WidgetRelevanceRequest.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_kind);
  v2 = *(v0 + OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_kind + 8);

  return v1;
}

id WidgetRelevanceRequest.__allocating_init(kind:archiveFileHandle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_kind];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_archiveFileHandle] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id WidgetRelevanceRequest.init(kind:archiveFileHandle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_kind];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_archiveFileHandle] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for WidgetRelevanceRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_1920EDB98(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_kind);
  v4 = *(v1 + OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_kind + 8);
  v5 = sub_192227930();
  v6 = sub_192227930();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_archiveFileHandle);
  v8 = sub_192227930();
  [a1 encodeObject:v7 forKey:v8];
}

id WidgetRelevanceRequest.init(coder:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEFAE0, &unk_19222FF10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19222B480;
  *(v2 + 32) = sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  sub_192228150();

  if (v18)
  {
    v3 = swift_dynamicCast();
    if (v3)
    {
      v4 = v14;
    }

    else
    {
      v4 = 0;
    }

    if (v3)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_192030F04(v17);
    v4 = 0;
    v5 = 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19222B480;
  *(v6 + 32) = sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
  sub_192228150();

  if (v18)
  {
    if (swift_dynamicCast())
    {
      v7 = v14;
    }

    else
    {
      v7 = 0;
    }

    if (v5)
    {
      if (v7)
      {
        v8 = type metadata accessor for WidgetRelevanceRequest();
        v9 = objc_allocWithZone(v8);
        v10 = &v9[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_kind];
        *v10 = v4;
        *(v10 + 1) = v5;
        *&v9[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_archiveFileHandle] = v7;
        v16.receiver = v9;
        v16.super_class = v8;
        v11 = v7;
        v12 = objc_msgSendSuper2(&v16, sel_init);

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        return v12;
      }

      goto LABEL_17;
    }

LABEL_19:

    a1 = v7;
    goto LABEL_20;
  }

  sub_192030F04(v17);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_19;
  }

LABEL_17:

LABEL_20:

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id WidgetRelevanceRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WidgetRelevanceRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetRelevanceRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1920EE13C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1920EE190()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1920EE1CC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1920EE21C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1920EE270(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1920EE288(void *result, int a2)
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

void sub_1920EE2C0()
{
  v0 = sub_192225300();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1922252F0();
  v6 = sub_1922252E0();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_1EADEFB68 = v5;
}

uint64_t static WidgetRelevanceGroup.named(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

double static WidgetRelevanceGroup.automatic.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_19222DBC0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit0A14RelevanceGroupV7StorageO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1920EE408(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1920EE464(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1920EE4C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1920EE514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1920EE570(void *result, int a2)
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

uint64_t EnvironmentValues.activityUpdateAvailability.getter()
{
  sub_192057834();

  return sub_1922261E0();
}

uint64_t EnvironmentValues.activityUpdateAvailability.setter(char *a1)
{
  v2 = *a1;
  sub_192057834();
  return sub_1922261F0();
}

uint64_t EnvironmentValues.isActivityUpdateReduced.getter()
{
  sub_192057834();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues.isActivityUpdateReduced.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_192057834();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1920EE708;
}

WidgetKit::ActivityUpdateAvailability_optional __swiftcall ActivityUpdateAvailability.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ActivityUpdateAvailability.description.getter()
{
  if (*v0)
  {
    result = 0x64656375646572;
  }

  else
  {
    result = 1819047270;
  }

  *v0;
  return result;
}

uint64_t sub_1920EE814()
{
  if (*v0)
  {
    result = 0x64656375646572;
  }

  else
  {
    result = 1819047270;
  }

  *v0;
  return result;
}

uint64_t (*EnvironmentValues.activityUpdateAvailability.modify(void *a1))()
{
  *a1 = v1;
  a1[1] = sub_192057834();
  sub_1922261E0();
  return sub_1920EEA00;
}

uint64_t sub_1920EE8A8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

unint64_t sub_1920EE8E4()
{
  result = qword_1EADEFB70;
  if (!qword_1EADEFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFB70);
  }

  return result;
}

uint64_t sub_1920EE938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1920EE8E4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1920EE9AC()
{
  result = qword_1EADEFB80;
  if (!qword_1EADEFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFB80);
  }

  return result;
}

id sub_1920EEA04(void *a1, char a2, void *a3)
{
  result = [a1 extensionBundleIdentifier];
  if (result)
  {
    v7 = result;
    v8 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19213E0AC(v7, 0xD000000000000011, 0x800000019224A290, isUniquelyReferenced_nonNull_native);
    v10 = [a1 kind];
    v11 = sub_192227960();
    v13 = v12;

    sub_1920AC810(6, v11, v13);

    v14 = sub_192228250();

    v15 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v8;
    sub_19213E0AC(v14, 0x694B746567646977, 0xEA0000000000646ELL, v15);
    LOBYTE(v26) = a2;
    v16 = _sSo15CHSWidgetFamilyV9WidgetKitEyAbC08InternalcB0OcfC_0(&v26) - 1;
    if (v16 <= 0xD)
    {
      v17 = qword_1922302E0[v16];
    }

    v18 = sub_192227D90();
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v8;
    sub_19213E0AC(v18, 0x796C696D6166, 0xE600000000000000, v19);
    v20 = v26;
    [a3 size];
    v21 = sub_192225410();
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v20;
    sub_19213E0AC(v21, 0x746867696568, 0xE600000000000000, v22);
    v23 = v26;
    [a3 size];
    v24 = sub_192225410();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v23;
    sub_19213E0AC(v24, 0x6874646977, 0xE500000000000000, v25);
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1920EECBC()
{
  result = qword_1EADEFB88;
  if (!qword_1EADEFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFB88);
  }

  return result;
}

uint64_t sub_1920EED10()
{
  v0 = *MEMORY[0x1E69941E8];
  result = sub_192227960();
  qword_1EAE00870 = result;
  *algn_1EAE00878 = v2;
  return result;
}

uint64_t sub_1920EED40()
{
  v1 = *v0;
  sub_192228AD0();
  if (v1)
  {
    v2 = 4003;
  }

  else
  {
    v2 = 4001;
  }

  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t sub_1920EED94()
{
  if (*v0)
  {
    v1 = 4003;
  }

  else
  {
    v1 = 4001;
  }

  return MEMORY[0x193B0BA90](v1);
}

uint64_t sub_1920EEDD0()
{
  v1 = *v0;
  sub_192228AD0();
  if (v1)
  {
    v2 = 4003;
  }

  else
  {
    v2 = 4001;
  }

  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

void *sub_1920EEE20@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 4003)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 4001)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1920EEE40(uint64_t *a1@<X8>)
{
  v2 = 4001;
  if (*v1)
  {
    v2 = 4003;
  }

  *a1 = v2;
}

uint64_t sub_1920EEE5C()
{
  if (qword_1EADEE908 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAE00870;

  return v0;
}

uint64_t sub_1920EEEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1920EF0AC();
  v5 = sub_1920EF100();

  return MEMORY[0x1EEDC27F0](a1, a2, v4, v5);
}

unint64_t sub_1920EEF24()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000042;
  }

  *v0;
  return result;
}

unint64_t sub_1920EEF6C()
{
  result = qword_1EADEFB90;
  if (!qword_1EADEFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFB90);
  }

  return result;
}

uint64_t sub_1920EEFC0(uint64_t a1)
{
  v2 = sub_1920EF058();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1920EEFFC(uint64_t a1)
{
  v2 = sub_1920EF058();
  v3 = sub_1920EF0AC();
  v4 = sub_1920EF100();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

unint64_t sub_1920EF058()
{
  result = qword_1EADEFB98;
  if (!qword_1EADEFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFB98);
  }

  return result;
}

unint64_t sub_1920EF0AC()
{
  result = qword_1EADEFBA0;
  if (!qword_1EADEFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFBA0);
  }

  return result;
}

unint64_t sub_1920EF100()
{
  result = qword_1EADEFBA8;
  if (!qword_1EADEFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFBA8);
  }

  return result;
}

uint64_t sub_1920EF16C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 40);
  v6 = *(a3 + 32);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 24);
  v12 = v5;
  return v6(&v8);
}

uint64_t sub_1920EF1DC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1920EF2F4;

  return v9(a1, a2);
}

uint64_t sub_1920EF2F4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1920EF3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920A59A8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1920EF538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1920B3B44;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1920EF684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920EF9CC;

  return v11(a1, a2, a3);
}

uint64_t sub_1920EF7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920B3B44;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1920EF8DC()
{
  sub_1920B3090();
  sub_1922261E0();
  return v1;
}

uint64_t sub_1920EF928(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1920EF970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double ActivityViewMetrics.bounds.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  return result;
}

void ActivityViewMetrics.bounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void ActivityViewMetrics.init(bounds:cornerRadius:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
}

uint64_t static ActivityViewMetrics.from(request:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*(result + 16) == 1 && *(result + 8) > v2)
  {
    v2 = *(result + 8);
  }

  v3 = *(result + 24);
  if ((*(result + 40) & 1) != 0 && *(result + 32) > v3)
  {
    v3 = *(result + 32);
  }

  v4 = *(result + 48);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  return result;
}

uint64_t ActivityViewMetrics.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  sub_1920EFB18(*v0, v2, v0[2], v0[3]);
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x193B0BAC0](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x193B0BAC0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  return MEMORY[0x193B0BAC0](*&v6);
}

uint64_t sub_1920EFB18(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a3;
  }

  MEMORY[0x193B0BAC0](*&v7);
  if (a4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a4;
  }

  MEMORY[0x193B0BAC0](*&v8);
  if (a1 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a1;
  }

  MEMORY[0x193B0BAC0](*&v9);
  if (a2 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a2;
  }

  return MEMORY[0x193B0BAC0](*&v10);
}

uint64_t ActivityViewMetrics.description.getter()
{
  v1 = *(v0 + 4);
  sub_192228400();
  MEMORY[0x193B0A990](0xD00000000000001DLL, 0x800000019224A320);
  v4 = *v0;
  v5 = v0[1];
  type metadata accessor for CGRect(0);
  sub_1922285A0();
  MEMORY[0x193B0A990](0x72656E726F63202CLL, 0xEF3D737569646152);
  v2 = sub_192227D10();
  MEMORY[0x193B0A990](v2);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 0;
}

uint64_t static ActivityViewMetrics.== infix(_:_:)(CGRect *a1, CGRect *a2)
{
  x = a1[1].origin.x;
  v3 = a2[1].origin.x;
  LODWORD(result) = CGRectEqualToRect(*a1, *a2);
  if (x == v3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1920EFCD0()
{
  if (*v0)
  {
    result = 0x615272656E726F63;
  }

  else
  {
    result = 0x73646E756F62;
  }

  *v0;
  return result;
}

uint64_t sub_1920EFD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73646E756F62 && a2 == 0xE600000000000000;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

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

uint64_t sub_1920EFDEC(uint64_t a1)
{
  v2 = sub_1920F0024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920EFE28(uint64_t a1)
{
  v2 = sub_1920F0024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityViewMetrics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBB0, &qword_1922305C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = *(v3 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920F0024();
  sub_192228B90();
  v12 = *(v3 + 16);
  v14[0] = *v3;
  v14[1] = v12;
  v15 = 0;
  type metadata accessor for CGRect(0);
  sub_1920F0458(&qword_1ED74A908);
  sub_1922288C0();
  if (!v2)
  {
    *&v14[0] = v10;
    v15 = 1;
    sub_192059A84();
    sub_1922288C0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1920F0024()
{
  result = qword_1EADEE250;
  if (!qword_1EADEE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE250);
  }

  return result;
}

uint64_t ActivityViewMetrics.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_192228AD0();
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x193B0BAC0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x193B0BAC0](*&v7);
  if (v1 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v1;
  }

  v9 = v8;
  MEMORY[0x193B0BAC0](*&v8);
  if (v2 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v2;
  }

  v11 = v10;
  MEMORY[0x193B0BAC0](*&v10);
  MEMORY[0x193B0BAC0](*&v9);
  MEMORY[0x193B0BAC0](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x193B0BAC0](*&v12);
  return sub_192228B30();
}