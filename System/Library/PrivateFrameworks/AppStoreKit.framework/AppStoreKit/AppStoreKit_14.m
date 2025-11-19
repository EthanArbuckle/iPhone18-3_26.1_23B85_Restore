uint64_t sub_1E14630C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = a2;
  v25 = sub_1E1AF3E1C();
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF555C();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E1AF3D4C();
  v8 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v14 = sub_1E1AF588C();
  v15 = *(a1 + 32);
  v32 = v6;
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = v13;
  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  v35[0] = v18;
  v35[1] = v17;

  if (!Artwork.URLTemplate.isBundleImage.getter())
  {
    v33 = v18;
    v34 = v17;
    if (!Artwork.URLTemplate.isSystemImage.getter())
    {

      v13 = v16;
LABEL_6:
      sub_1E1AF3D3C();
      goto LABEL_7;
    }
  }

  sub_1E1463B14(MEMORY[0x1E69E7CC0]);
  v13 = v16;
  sub_1E1AF3D1C();

LABEL_7:
  v24 = v13;
  (*(v4 + 16))(v26, a1 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v25);
  v19 = v29;
  (*(v8 + 16))(v10, v13, v29);

  v20 = v30;
  sub_1E1AF554C();
  sub_1E1AF0D4C();
  sub_1E1AF0D2C();
  v21 = sub_1E1361A80();
  swift_retain_n();
  v22 = sub_1E1AF68EC();
  v35[3] = v21;
  v35[4] = MEMORY[0x1E69AB720];
  v35[0] = v22;
  sub_1E1AF57FC();

  (*(v31 + 8))(v20, v32);
  (*(v8 + 8))(v24, v19);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v14;
}

uint64_t sub_1E14634F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a4;
  v20 = a3;
  v21 = a5;
  v7 = type metadata accessor for AlertActionImplementation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = sub_1E1AF3E1C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = *a1;
  sub_1E1AF3DFC();
  (*(v8 + 16))(v11, a2, v7);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  (*(v8 + 32))(v16 + v14, v11, v7);
  *(v16 + v15) = v13;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;

  return sub_1E1AF3E3C();
}

uint64_t sub_1E14636DC(uint64_t a1, uint64_t a2)
{
  v4[3] = type metadata accessor for Action();
  v4[4] = sub_1E1463D8C(qword_1EE1D2F80, type metadata accessor for Action);
  v4[0] = a2;
  type metadata accessor for AlertActionImplementation();

  swift_getWitnessTable();
  sub_1E1834054(v4);

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *sub_1E14637A4(void *result)
{
  v1 = result[3];
  if (v1)
  {
    v2 = result[4];

    v1(v3);
    return sub_1E1361B18(v1, v2);
  }

  else
  {
    v4 = result[2];
    if (v4)
    {
      v5[3] = type metadata accessor for Action();
      v5[4] = sub_1E1463D8C(qword_1EE1D2F80, type metadata accessor for Action);
      v5[0] = v4;
      type metadata accessor for AlertActionImplementation();
      swift_retain_n();
      swift_getWitnessTable();
      sub_1E1834054(v5);

      return __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  return result;
}

unint64_t sub_1E14638B0(uint64_t a1)
{
  sub_1E1AF5DFC();
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  v2 = sub_1E1AF767C();

  return sub_1E1463944(a1, v2);
}

unint64_t sub_1E1463944(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1E1AF5DFC();
      v8 = v7;
      if (v6 == sub_1E1AF5DFC() && v8 == v9)
      {
        break;
      }

      v11 = sub_1E1AF74AC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_1E1463A48()
{
  type metadata accessor for AlertActionImplementation();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v5 = v1;
  return sub_1E14637A4(v4);
}

unint64_t sub_1E1463B14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4168);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1E14638B0(v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E1463C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1463C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1463CE4()
{
  v1 = *(type metadata accessor for AlertActionImplementation() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  return sub_1E14636DC(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E1463D8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ComponentPrefetchSizing.init(size:contentMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  return result;
}

uint64_t ImpressionsFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v20 = a1;
  v2 = sub_1E1AEFE6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF500C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3948 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80);
  __swift_project_value_buffer(v10, qword_1EE1E3950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88);
  sub_1E1AF4AAC();
  if (v18)
  {
    v17 = v1;
    swift_getObjectType();
    v16 = v2;
    (*(v7 + 104))(v9, *MEMORY[0x1E69AB3E0], v6);
    sub_1E1AEFE5C();
    v11 = sub_1E1AF476C();
    (*(v3 + 8))(v5, v16);
    (*(v7 + 8))(v9, v6);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4170);
    v18 = v11;
    v12 = v20;
    __swift_mutable_project_boxed_opaque_existential_1(v20, *(v20 + 24));
    v13 = v17;
    sub_1E1AF4A1C();
    if (!v13)
    {
      __swift_destroy_boxed_opaque_existential_1(&v18);
      v19 = MEMORY[0x1E69E6530];
      v18 = 4;
      __swift_mutable_project_boxed_opaque_existential_1(v12, *(v12 + 24));
      sub_1E1AF4A1C();
    }

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    if (qword_1EE1D2768 != -1)
    {
      swift_once();
    }

    v15 = sub_1E1AF591C();
    __swift_project_value_buffer(v15, qword_1EE216140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }
}

uint64_t FastImpressionsFieldsProvider.addMetricsFields(into:using:)(void *a1)
{
  v2 = sub_1E1AEFE6C();
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4178);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_1E1AF500C();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3948 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80);
  __swift_project_value_buffer(v11, qword_1EE1E3950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88);
  sub_1E1AF4AAC();
  if (v28 && (__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB4188), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v30 + 1))
    {
      sub_1E1308EC0(&v29, v32);
      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      v12 = sub_1E1AF4A0C();
      if (*(v12 + 16))
      {
        v13 = sub_1E13018F8(0x726556746E657665, 0xEC0000006E6F6973);
        v14 = v27;
        if (v15)
        {
          sub_1E137A5C4(*(v12 + 56) + 32 * v13, &v29);

          if (swift_dynamicCast())
          {
            v16 = v28;
LABEL_17:
            v25 = v16;
            sub_1E1464910(v16, v7);
            v19 = *(v14 + 48);
            if (v19(v7, 1, v8) == 1)
            {
              (*(v14 + 104))(v10, *MEMORY[0x1E69AB3E0], v8);
              if (v19(v7, 1, v8) != 1)
              {
                sub_1E1308058(v7, &qword_1ECEB4178);
              }
            }

            else
            {
              (*(v14 + 32))(v10, v7, v8);
            }

            v20 = v33;
            v21 = v34;
            __swift_project_boxed_opaque_existential_1Tm(v32, v33);
            sub_1E1AEFE5C();
            v22 = (*(v21 + 8))(v10, v4, v20, v21);
            (*(v26 + 8))(v4, v2);
            *(&v30 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4170);
            *&v29 = v22;
            __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
            v23 = v35;
            sub_1E1AF4A1C();
            if (!v23)
            {
              __swift_destroy_boxed_opaque_existential_1(&v29);
              *(&v30 + 1) = MEMORY[0x1E69E6530];
              *&v29 = v25;
              __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
              sub_1E1AF4A1C();
            }

            (*(v27 + 8))(v10, v8);
            __swift_destroy_boxed_opaque_existential_1(&v29);
            return __swift_destroy_boxed_opaque_existential_1(v32);
          }
        }

        else
        {
        }

        v16 = 4;
        goto LABEL_17;
      }

      v16 = 4;
      v14 = v27;
      goto LABEL_17;
    }
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
  }

  sub_1E1308058(&v29, &qword_1ECEB4180);
  if (qword_1EE1D2768 != -1)
  {
    swift_once();
  }

  v17 = sub_1E1AF591C();
  __swift_project_value_buffer(v17, qword_1EE216140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();
}

uint64_t sub_1E1464910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AF500C();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 3) >= 3)
  {
    v12 = *(v5 + 56);

    return v12(a2, 1, 1, v4, v6);
  }

  else
  {
    v9 = **(&unk_1E870D330 + a1 - 3);
    v10 = *(v5 + 104);
    v14 = v5;
    v10(v8, v9, v4, v6.n128_f64[0]);
    (*(v14 + 32))(a2, v8, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1E1464A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E130B5D8;

  return MEMORY[0x1EEE17028](a1, a2, a3, a4);
}

uint64_t SnapshotImpressionsFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v20 = a1;
  v2 = sub_1E1AEFE6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF500C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3948 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80);
  __swift_project_value_buffer(v10, qword_1EE1E3950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88);
  sub_1E1AF4AAC();
  if (v18)
  {
    v17 = v1;
    swift_getObjectType();
    v16 = v2;
    (*(v7 + 104))(v9, *MEMORY[0x1E69AB3E0], v6);
    sub_1E1AEFE5C();
    v11 = sub_1E1AF475C();
    (*(v3 + 8))(v5, v16);
    (*(v7 + 8))(v9, v6);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4170);
    v18 = v11;
    v12 = v20;
    __swift_mutable_project_boxed_opaque_existential_1(v20, *(v20 + 24));
    v13 = v17;
    sub_1E1AF4A1C();
    if (!v13)
    {
      __swift_destroy_boxed_opaque_existential_1(&v18);
      v19 = MEMORY[0x1E69E6530];
      v18 = 4;
      __swift_mutable_project_boxed_opaque_existential_1(v12, *(v12 + 24));
      sub_1E1AF4A1C();
    }

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    if (qword_1EE1D2768 != -1)
    {
      swift_once();
    }

    v15 = sub_1E1AF591C();
    __swift_project_value_buffer(v15, qword_1EE216140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E1465198()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E14651D4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1E1465230(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E146529C()
{
  result = qword_1ECEB4210;
  if (!qword_1ECEB4210)
  {
    type metadata accessor for GameCenterPlayerProfileAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4210);
  }

  return result;
}

uint64_t sub_1E146532C(char a1)
{
  sub_1E1AF762C();
  MEMORY[0x1E6900360](a1 & 1);
  return sub_1E1AF767C();
}

uint64_t sub_1E14653A4()
{
  sub_1E1AF762C();
  sub_1E1465304(v2, *v0);
  return sub_1E1AF767C();
}

void sub_1E14653EC(void *a1, void *a2, uint64_t a3)
{
  v26[1] = a3;
  v5 = sub_1E1AF3E2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1E1AF591C();
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = qword_1EE1E35B0;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v29 + 1) = sub_1E13006E4(0, &qword_1EE1D2518);
    *&v28 = v16;
    v17 = v16;
    sub_1E1AF385C();
    sub_1E13E44F8(&v28);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    (*(v6 + 104))(v8, *MEMORY[0x1E69AB010], v5);
    sub_1E1AF586C();

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v18 = v12;
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v11, qword_1EE216158);
    (*(v18 + 16))(v14, v19, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    if (a2)
    {
      swift_getErrorValue();
      v20 = v26[2];
      v21 = v27;
      *(&v29 + 1) = v27;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v20, v21);
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    sub_1E1AF386C();
    sub_1E13E44F8(&v28);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    (*(v18 + 8))(v14, v11);
    if (a2)
    {
      v23 = a2;
    }

    else
    {
      type metadata accessor for GameCenterPlayerProfileActionImplementation.Error();
      swift_getWitnessTable();
      v23 = swift_allocError();
      *v24 = 0;
    }

    v25 = a2;
    sub_1E1AF584C();
  }
}

void sub_1E14659C8(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v4 = sub_1E1AF588C();
  if (a1)
  {
    v5 = a1;
    v6 = [v5 session];
    v7 = [v6 persistentIdentifier];

    v8 = sub_1E1AF5DFC();
    v10 = v9;

    v11 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CD0;
    aBlock = sub_1E1AF5DFC();
    v30 = v13;

    sub_1E1AF6F6C();
    v14 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
    v15 = sub_1E1AF5DBC();
    v16 = [v14 initWithString_];

    if (v16)
    {

      *(inited + 96) = sub_1E13006E4(0, qword_1ECEB4218);
      *(inited + 72) = v16;
      aBlock = sub_1E1AF5DFC();
      v30 = v17;
      sub_1E1AF6F6C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_1E1B02CD0;
      strcpy((v18 + 32), "invocationType");
      *(v18 + 47) = -18;
      *(v18 + 48) = 0x656C69666F7270;
      *(v18 + 56) = 0xE700000000000000;
      *(v18 + 64) = 0x656449656E656373;
      *(v18 + 72) = 0xEF7265696669746ELL;
      *(v18 + 80) = v8;
      *(v18 + 88) = v10;
      v19 = sub_1E13017E4(v18);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
      swift_arrayDestroy();
      *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
      *(inited + 144) = v19;
      sub_1E13609A4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCAA0);
      swift_arrayDestroy();
      v20 = sub_1E1AF5C6C();

      v21 = [objc_opt_self() optionsWithDictionary_];

      if (v11)
      {
        v22 = v11;
        v23 = sub_1E1AF5DBC();
        v24 = swift_allocObject();
        *(v24 + 16) = a2;
        *(v24 + 24) = v4;
        v33 = sub_1E1465FD8;
        v34 = v24;
        aBlock = MEMORY[0x1E69E9820];
        v30 = 1107296256;
        v31 = sub_1E14CC840;
        v32 = &block_descriptor_15;
        v25 = _Block_copy(&aBlock);

        [v22 openApplication:v23 withOptions:v21 completion:v25];

        _Block_release(v25);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v26 = sub_1E1AF591C();
    __swift_project_value_buffer(v26, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    type metadata accessor for GameCenterPlayerProfileActionImplementation.Error();
    swift_getWitnessTable();
    v27 = swift_allocError();
    *v28 = 1;
    sub_1E1AF584C();
  }
}

uint64_t ContingentOfferDetailPage.__allocating_init(contingentOffer:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:pageMetrics:pageRenderEvent:learnMoreActionMetrics:backButtonActionMetrics:closeButtonActionMetrics:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v74) = a6;
  v72 = a4;
  v73 = a5;
  v75 = a8;
  v76 = a12;
  v77 = a11;
  v78 = a10;
  v79 = a9;
  v80 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v65 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v61 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v67 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  v25 = sub_1E1AF3C3C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v61 - v30;
  v32 = swift_allocObject();
  v33 = *v73;
  v69 = a1;
  v70 = a2;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_contingentOffer) = a1;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_artwork) = a2;
  v71 = a3;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_video) = a3;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_mediaOverlayStyle) = v33;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_includeBorderInDarkMode) = v74;
  sub_1E134FD1C(v79, v32 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics, &qword_1ECEBB7C0);
  sub_1E134FD1C(v78, v32 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_backButtonActionMetrics, &qword_1ECEBB7C0);
  sub_1E134FD1C(v77, v32 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics, &qword_1ECEBB7C0);
  v68 = v26;
  v34 = *(v26 + 16);
  v34(v31, v80, v25);
  sub_1E134FD1C(v76, v24, &qword_1ECEB3B28);
  *(v32 + OBJC_IVAR____TtC11AppStoreKit22AppPromotionDetailPage_promotionType) = 1;
  v34(v28, v31, v25);
  v73 = v24;
  v35 = v24;
  v36 = v67;
  sub_1E134FD1C(v35, v67, &qword_1ECEB3B28);
  *(v32 + 16) = 0;
  v34((v32 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v28, v25);
  *(v32 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v75;
  sub_1E134FD1C(v36, v19, &qword_1ECEB3B28);
  v37 = sub_1E1AF39DC();
  v66 = *(v37 - 8);
  v38 = *(v66 + 48);
  v74 = v19;
  if (v38(v19, 1, v37) == 1)
  {

    sub_1E1308058(v76, &qword_1ECEB3B28);
    sub_1E1308058(v77, &qword_1ECEBB7C0);
    sub_1E1308058(v78, &qword_1ECEBB7C0);
    sub_1E1308058(v79, &qword_1ECEBB7C0);
    v39 = *(v68 + 8);
    v39(v80, v25);
    sub_1E1308058(v36, &qword_1ECEB3B28);
    v39(v28, v25);
    sub_1E1308058(v73, &qword_1ECEB3B28);
    v39(v31, v25);
    v40 = v74;
  }

  else
  {
    v62 = v28;
    v63 = v25;
    v41 = v36;
    v42 = v68;
    v64 = v31;
    v43 = qword_1EE1E3BC8;

    if (v43 != -1)
    {
      swift_once();
    }

    v44 = v38;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v45, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v46 = v81;
    v47 = v66;
    if (v81)
    {
    }

    v48 = *(v47 + 8);
    v48(v74, v37);
    if (!v46)
    {

      sub_1E1308058(v76, &qword_1ECEB3B28);
      sub_1E1308058(v77, &qword_1ECEBB7C0);
      sub_1E1308058(v78, &qword_1ECEBB7C0);
      sub_1E1308058(v79, &qword_1ECEBB7C0);
      v55 = *(v42 + 8);
      v56 = v63;
      v55(v80, v63);
      sub_1E1308058(v41, &qword_1ECEB3B28);
      v55(v62, v56);
      sub_1E1308058(v73, &qword_1ECEB3B28);
      v55(v64, v56);
      return v32;
    }

    v74 = v48;
    v49 = v65;
    sub_1E134FD1C(v41, v65, &qword_1ECEB3B28);
    v50 = v44(v49, 1, v37);
    v51 = v41;
    v52 = v62;
    if (v50 != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v76, &qword_1ECEB3B28);
      v57 = v49;
      sub_1E1308058(v77, &qword_1ECEBB7C0);
      sub_1E1308058(v78, &qword_1ECEBB7C0);
      sub_1E1308058(v79, &qword_1ECEBB7C0);
      v58 = *(v42 + 8);
      v59 = v63;
      v58(v80, v63);
      sub_1E1308058(v51, &qword_1ECEB3B28);
      v58(v52, v59);
      sub_1E1308058(v73, &qword_1ECEB3B28);
      v58(v64, v59);
      v74(v57, v37);
      return v32;
    }

    sub_1E1308058(v76, &qword_1ECEB3B28);
    sub_1E1308058(v77, &qword_1ECEBB7C0);
    sub_1E1308058(v78, &qword_1ECEBB7C0);
    sub_1E1308058(v79, &qword_1ECEBB7C0);
    v53 = *(v42 + 8);
    v54 = v63;
    v53(v80, v63);
    sub_1E1308058(v51, &qword_1ECEB3B28);
    v53(v52, v54);
    sub_1E1308058(v73, &qword_1ECEB3B28);
    v53(v64, v54);
    v40 = v49;
  }

  sub_1E1308058(v40, &qword_1ECEB3B28);
  return v32;
}

char *ContingentOfferDetailPage.init(contingentOffer:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:pageMetrics:pageRenderEvent:learnMoreActionMetrics:backButtonActionMetrics:closeButtonActionMetrics:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v69) = a6;
  v67 = a4;
  v68 = a5;
  v70 = a8;
  v71 = a12;
  v72 = a11;
  v73 = a10;
  v74 = a9;
  v75 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v59 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v56 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  v26 = sub_1E1AF3C3C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v56 - v31;
  v33 = *v68;
  v61 = a1;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_contingentOffer) = a1;
  v65 = a2;
  v66 = a3;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_artwork) = a2;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_video) = a3;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_mediaOverlayStyle) = v33;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_includeBorderInDarkMode) = v69;
  sub_1E134FD1C(v74, v12 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics, &qword_1ECEBB7C0);
  sub_1E134FD1C(v73, v12 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_backButtonActionMetrics, &qword_1ECEBB7C0);
  sub_1E134FD1C(v72, v12 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics, &qword_1ECEBB7C0);
  v64 = v27;
  v34 = *(v27 + 16);
  v34(v32, v75, v26);
  sub_1E134FD1C(v71, v25, &qword_1ECEB3B28);
  *(v12 + OBJC_IVAR____TtC11AppStoreKit22AppPromotionDetailPage_promotionType) = 1;
  v34(v29, v32, v26);
  v69 = v25;
  v35 = v25;
  v36 = v63;
  sub_1E134FD1C(v35, v63, &qword_1ECEB3B28);
  *(v12 + 16) = 0;
  v34((v12 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v29, v26);
  v68 = v12;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v70;
  sub_1E134FD1C(v36, v20, &qword_1ECEB3B28);
  v37 = sub_1E1AF39DC();
  v60 = *(v37 - 8);
  v38 = *(v60 + 48);
  v39 = v20;
  if (v38(v20, 1, v37) == 1)
  {

    sub_1E1308058(v71, &qword_1ECEB3B28);
    sub_1E1308058(v72, &qword_1ECEBB7C0);
    sub_1E1308058(v73, &qword_1ECEBB7C0);
    sub_1E1308058(v74, &qword_1ECEBB7C0);
    v40 = *(v64 + 8);
    v40(v75, v26);
    sub_1E1308058(v36, &qword_1ECEB3B28);
    v40(v29, v26);
    sub_1E1308058(v69, &qword_1ECEB3B28);
    v40(v32, v26);
    v41 = v20;
  }

  else
  {
    v42 = v38;
    v62 = v39;
    v56 = v29;
    v57 = v26;
    v43 = v36;
    v44 = v64;
    v58 = v32;
    v45 = qword_1EE1E3BC8;

    if (v45 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v46, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v47 = v76;
    v48 = v57;
    v49 = v60;
    if (v76)
    {
    }

    v50 = v62;
    v62 = *(v49 + 8);
    v62(v50, v37);
    if (!v47)
    {

      sub_1E1308058(v71, &qword_1ECEB3B28);
      sub_1E1308058(v72, &qword_1ECEBB7C0);
      sub_1E1308058(v73, &qword_1ECEBB7C0);
      sub_1E1308058(v74, &qword_1ECEBB7C0);
      v53 = *(v44 + 8);
      v53(v75, v48);
      sub_1E1308058(v43, &qword_1ECEB3B28);
      v53(v56, v48);
      sub_1E1308058(v69, &qword_1ECEB3B28);
      v53(v58, v48);
      return v68;
    }

    v51 = v59;
    sub_1E134FD1C(v43, v59, &qword_1ECEB3B28);
    if (v42(v51, 1, v37) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v71, &qword_1ECEB3B28);
      sub_1E1308058(v72, &qword_1ECEBB7C0);
      sub_1E1308058(v73, &qword_1ECEBB7C0);
      sub_1E1308058(v74, &qword_1ECEBB7C0);
      v54 = *(v44 + 8);
      v54(v75, v48);
      sub_1E1308058(v43, &qword_1ECEB3B28);
      v54(v56, v48);
      sub_1E1308058(v69, &qword_1ECEB3B28);
      v54(v58, v48);
      v62(v51, v37);
      return v68;
    }

    sub_1E1308058(v71, &qword_1ECEB3B28);
    sub_1E1308058(v72, &qword_1ECEBB7C0);
    sub_1E1308058(v73, &qword_1ECEBB7C0);
    sub_1E1308058(v74, &qword_1ECEBB7C0);
    v52 = *(v44 + 8);
    v52(v75, v48);
    sub_1E1308058(v43, &qword_1ECEB3B28);
    v52(v56, v48);
    sub_1E1308058(v69, &qword_1ECEB3B28);
    v52(v58, v48);
    v41 = v51;
  }

  sub_1E1308058(v41, &qword_1ECEB3B28);
  return v68;
}

uint64_t ContingentOfferDetailPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v67 = v3;
  v58 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v51 - v7;
  v8 = sub_1E1AF39DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v60 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - v12;
  v68 = sub_1E1AF380C();
  v65 = *(v68 - 8);
  v14 = MEMORY[0x1EEE9AC00](v68);
  v59 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  type metadata accessor for ContingentOffer();
  v70 = a1;
  sub_1E1AF381C();
  v21 = *(v9 + 16);
  v66 = a2;
  v22 = a2;
  v69 = v8;
  v23 = v21;
  v24 = v9 + 16;
  v21(v13, v22, v8);
  sub_1E1467ED0(qword_1ECEB42A0, type metadata accessor for ContingentOffer);
  sub_1E1AF464C();
  v64 = v71;
  if (v71)
  {
    v58 = v9;
    type metadata accessor for Artwork();
    sub_1E1AF381C();
    v25 = v66;
    v26 = v69;
    v23(v13, v66, v69);
    v63 = v24;
    v55 = v18;
    v27 = v23;
    v53 = v23;
    sub_1E1467ED0(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    v28 = v71;
    type metadata accessor for Video();
    sub_1E1AF381C();
    v27(v13, v25, v26);
    sub_1E1467ED0(&qword_1EE1E52D0, type metadata accessor for Video);
    sub_1E1AF464C();
    v29 = v67;
    *(v67 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_contingentOffer) = v64;
    v30 = v71;
    *(v29 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_artwork) = v28;
    *(v29 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_video) = v30;
    v56 = v30;

    v57 = v28;

    sub_1E1AF381C();
    sub_1E14056C8();
    sub_1E1AF369C();
    v31 = (v65 + 8);
    v32 = *(v65 + 8);
    v33 = v68;
    v32(v20, v68);
    *(v29 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_mediaOverlayStyle) = v71;
    v34 = v55;
    sub_1E1AF381C();
    v35 = sub_1E1AF370C();
    v54 = v32;
    v55 = v31;
    v32(v34, v33);
    *(v29 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_includeBorderInDarkMode) = v35 & 1;
    sub_1E1AF3E1C();
    sub_1E1AF381C();
    v52 = v13;
    v36 = v66;
    v37 = v69;
    v38 = v53;
    v53(v52, v66, v69);
    v39 = v61;
    sub_1E1AF464C();
    v40 = v67;
    sub_1E1467F18(v39, v67 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics);
    sub_1E1AF381C();
    v41 = v52;
    v38(v52, v36, v37);
    sub_1E1AF464C();
    sub_1E1467F18(v39, v40 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_backButtonActionMetrics);
    v42 = v70;
    sub_1E1AF381C();
    v43 = v66;
    v38(v41, v66, v37);
    sub_1E1AF464C();
    sub_1E1467F18(v39, v67 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics);
    v44 = v59;
    v45 = v42;
    (*(v65 + 16))(v59, v42, v68);
    v46 = v60;
    v38(v60, v43, v69);
    v47 = v62;
    v48 = AppPromotionDetailPage.init(deserializing:using:)(v44, v46);
    if (!v47)
    {
      v46 = v48;
    }

    (*(v58 + 8))(v43, v69);
    v54(v45, v68);
  }

  else
  {
    v46 = sub_1E1AF5A7C();
    sub_1E1467ED0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v49 = 0x65676E69746E6F63;
    v49[1] = 0xEF726566664F746ELL;
    v49[2] = v58;
    (*(*(v46 - 8) + 104))(v49, *MEMORY[0x1E69AB690], v46);
    swift_willThrow();
    (*(v9 + 8))(v66, v69);
    (*(v65 + 8))(v70, v68);
    type metadata accessor for ContingentOfferDetailPage();
    swift_deallocPartialClassInstance();
  }

  return v46;
}

uint64_t sub_1E1467C70()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_backButtonActionMetrics, &qword_1ECEBB7C0);
  return sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics, &qword_1ECEBB7C0);
}

uint64_t ContingentOfferDetailPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_backButtonActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics, &qword_1ECEBB7C0);
  return v0;
}

uint64_t ContingentOfferDetailPage.__deallocating_deinit()
{
  ContingentOfferDetailPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContingentOfferDetailPage()
{
  result = qword_1EE1D8E78;
  if (!qword_1EE1D8E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1467ED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1467F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E1467F90()
{
  sub_1E1468098();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E1468098()
{
  if (!qword_1EE1E3B08)
  {
    sub_1E1AF3E1C();
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1E3B08);
    }
  }
}

char *ReviewSummaryReportConcernAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v80 = a2;
  v74 = v4;
  v6 = *v4;
  v72 = v3;
  v73 = v6;
  v7 = sub_1E1AF39DC();
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v67 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v71 = v62 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v69 = v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v62 - v14;
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v65 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v70 = v62 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v68 = (v62 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v62 - v24;
  v26 = sub_1E1AF5A6C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = v62 - v31;
  v78 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v66 = v17;
  v33 = *(v17 + 8);
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v79 = v16;
  v33(v34, v16);
  v37 = (*(v27 + 48))(v15, 1, v35);
  v75 = v33;
  if (v37 == 1)
  {
    sub_1E1308058(v15, &qword_1ECEB1F90);
LABEL_5:
    v38 = v76;
    v39 = v74;
    v40 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v41 = 0x736E7265636E6F63;
    v41[1] = 0xE800000000000000;
    v41[2] = v73;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x1E69AB690], v40);
    swift_willThrow();
    (*(v38 + 8))(v80, v77);
    v75(v78, v79);
    goto LABEL_6;
  }

  (*(v27 + 32))(v32, v15, v35);
  if (sub_1E1AF5A3C())
  {
    (*(v27 + 8))(v32, v35);
    goto LABEL_5;
  }

  (*(v27 + 16))(v30, v32, v35);
  v43 = v77;
  v44 = v76 + 16;
  v64 = *(v76 + 16);
  v64(v69, v80, v77);
  sub_1E146891C();
  v45 = sub_1E1AF631C();
  v62[2] = OBJC_IVAR____TtC11AppStoreKit32ReviewSummaryReportConcernAction_concerns;
  v63 = v32;
  v39 = v74;
  *&v74[OBJC_IVAR____TtC11AppStoreKit32ReviewSummaryReportConcernAction_concerns] = v45;
  v46 = v68;
  sub_1E1AF381C();
  v47 = sub_1E1AF37CC();
  v69 = v35;
  v49 = v48;
  v75(v46, v79);
  v50 = &v39[OBJC_IVAR____TtC11AppStoreKit32ReviewSummaryReportConcernAction_comment];
  *v50 = v47;
  v50[1] = v49;
  v68 = v50;
  v51 = v70;
  sub_1E1AF381C();
  v52 = v71;
  v62[1] = v44;
  v64(v71, v80, v43);
  type metadata accessor for HttpTemplateAction();
  swift_allocObject();
  v53 = v72;
  v54 = HttpTemplateAction.init(deserializing:using:)(v51, v52);
  if (!v53)
  {
    *&v39[OBJC_IVAR____TtC11AppStoreKit32ReviewSummaryReportConcernAction_sendAction] = v54;
    v55 = v65;
    v56 = v78;
    (*(v66 + 16))(v65, v78, v79);
    v57 = v67;
    v58 = v80;
    v59 = v77;
    v64(v67, v80, v77);
    v60 = Action.init(deserializing:using:)(v55, v57);
    v61 = v79;
    v39 = v60;
    (*(v76 + 8))(v58, v59);
    v75(v56, v61);
    (*(v36 + 8))(v63, v69);
    return v39;
  }

  (*(v76 + 8))(v80, v77);
  v75(v78, v79);
  (*(v36 + 8))(v63, v69);

LABEL_6:
  swift_deallocPartialClassInstance();
  return v39;
}

unint64_t sub_1E146891C()
{
  result = qword_1EE1EE778[0];
  if (!qword_1EE1EE778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1EE778);
  }

  return result;
}

uint64_t ReviewSummaryReportConcernAction.comment.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit32ReviewSummaryReportConcernAction_comment);

  return v1;
}

uint64_t sub_1E14689FC()
{
}

uint64_t ReviewSummaryReportConcernAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t ReviewSummaryReportConcernAction.__deallocating_deinit()
{
  ReviewSummaryReportConcernAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReviewSummaryReportConcernAction()
{
  result = qword_1EE1E7A28;
  if (!qword_1EE1E7A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1468C70()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1E1468CC8()
{
  result = qword_1ECEB4328[0];
  if (!qword_1ECEB4328[0])
  {
    type metadata accessor for WriteReviewAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEB4328);
  }

  return result;
}

uint64_t sub_1E1468D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = v41 - v3;
  v4 = sub_1E1AF539C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v47 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v41 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v10 = sub_1E1AF588C();
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    v45 = v5;
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E146991C();
    sub_1E1AF55EC();
    v42 = v51;
    v12 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_appName + 8);
    v46 = v10;
    v50 = v9;
    if (v12 && *(a1 + OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_itemDescription + 8) && (v13 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_appIcon)) != 0)
    {
      v49 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_itemDescription);
      v43 = *(v13 + 16);
      objc_allocWithZone(sub_1E1AF0F0C());

      v49 = sub_1E1AF0EFC();
      v14 = v49;
    }

    else
    {
      v49 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
    sub_1E1AF55EC();
    v15 = v51;
    v16 = v52;
    ObjectType = swift_getObjectType();
    v18 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_adamId + 8);
    v51 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_adamId);
    v52 = v18;
    v19 = v16[7];

    v43 = v15;
    v20 = v19(&v51, ObjectType, v16);
    v22 = v21;

    v23 = swift_getObjectType();
    v24 = *(v22 + 16);
    v41[1] = v20;
    v24(&v51, v23, v22);
    if (v53 >> 60 == 7)
    {
      v25 = [v52 stringValue];
      sub_1E1AF5DFC();
    }

    sub_1E139CEA8(&v51);
    _s11AppStoreKit21ReviewComposerUtilityO11lockupStyle4from20AppleMediaServicesUI0d6LockupH0CAA05WriteD6ActionC_tFZ_0(a1);
    v27 = objc_allocWithZone(sub_1E1AF0E7C());

    v41[0] = v42;
    v28 = sub_1E1AF0E6C();
    sub_1E1AF0E9C();
    swift_allocObject();
    v29 = sub_1E1AF0E8C();
    v30 = sub_1E1AF649C();
    v31 = v48;
    (*(*(v30 - 8) + 56))(v48, 1, 1, v30);
    v32 = v45;
    v33 = v47;
    (*(v45 + 16))(v47, v50, v4);
    v34 = (*(v32 + 80) + 56) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    v36 = v4;
    v37 = v44;
    *(v35 + 4) = v29;
    *(v35 + 5) = v37;
    *(v35 + 6) = v28;
    (*(v32 + 32))(&v35[v34], v33, v36);
    v10 = v46;
    *&v35[(v6 + v34 + 7) & 0xFFFFFFFFFFFFFFF8] = v46;

    v38 = v37;
    v39 = v28;

    sub_1E154AF74(0, 0, v31, &unk_1E1B0C5C8, v35);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v32 + 8))(v50, v36);
  }

  else
  {
    type metadata accessor for WriteReviewActionImplementation.ImplementationError();
    swift_getWitnessTable();
    v26 = swift_allocError();
    sub_1E1AF584C();
  }

  return v10;
}

uint64_t sub_1E14692E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v9 = sub_1E1AF3E2C();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v10 = sub_1E1AF0E5C();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E146940C, 0, 0);
}

uint64_t sub_1E146940C()
{
  v1 = sub_1E1AF527C();
  v0[21] = v1;
  v7 = (*MEMORY[0x1E698CC18] + MEMORY[0x1E698CC18]);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_1E14694D4;
  v3 = v0[20];
  v4 = v0[11];
  v5 = v0[12];

  return v7(v3, v4, v5, v1);
}

uint64_t sub_1E14694D4()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1E14696CC;
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);
    swift_unknownObjectRelease();
    v3 = sub_1E1469608;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1469608()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v2 + 104))(v1, *MEMORY[0x1E69AB010], v3);
  sub_1E1AF586C();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E14696CC()
{
  swift_unknownObjectRelease();
  if (qword_1ECEB12B0 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1ECEBA3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v3 = v0[6];
  v4 = v0[7];
  v0[5] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
  sub_1E1AF38DC();
  sub_1E13E44F8((v0 + 2));
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v6 = v0[1];

  return v6();
}

unint64_t sub_1E146991C()
{
  result = qword_1EE1E3470;
  if (!qword_1EE1E3470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E3470);
  }

  return result;
}

uint64_t sub_1E1469968(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E1AF539C() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E130B5DC;

  return sub_1E14692E8(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t JSONObject.adamId.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1AF37CC();
  if (v3)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t _s11AppStoreKit35SearchLandingTrendingDisplayOptionsV9hashValueSivg_0()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E1469B80@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E146E4B0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t TodayCardOverlay.__allocating_init(id:kind:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  sub_1E134FD1C(a1, &v15, &unk_1ECEB5670);
  if (*(&v16 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670);
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    sub_1E1AEFE9C();
    v9 = sub_1E1AEFE7C();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    v14[1] = v9;
    v14[2] = v11;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670);
    sub_1E1308058(&v15, &unk_1ECEB5670);
  }

  v12 = v19;
  *(v8 + 24) = v18;
  *(v8 + 40) = v12;
  *(v8 + 56) = v20;
  *(v8 + 16) = a2;
  return v8;
}

uint64_t TodayCardOverlay.init(id:kind:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v16, &unk_1ECEB5670);
  if (*(&v17 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    sub_1E1AEFE9C();
    v10 = sub_1E1AEFE7C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    v15[1] = v10;
    v15[2] = v12;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670);
    sub_1E1308058(&v16, &unk_1ECEB5670);
  }

  v13 = v20;
  *(v3 + 24) = v19;
  *(v3 + 40) = v13;
  *(v3 + 56) = v21;
  *(v3 + 16) = a2;
  return v3;
}

uint64_t static TodayCardOverlay.kind(from:)()
{
  v1 = v0;
  v2 = sub_1E1AF5A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF381C();
  v10 = sub_1E1AF37CC();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v12)
  {

    v13 = sub_1E146E4C0(v10, v12);
    if (v14)
    {
      *v5 = v10;
      v5[1] = v12;
      v5[2] = v1;
      v15 = *MEMORY[0x1E69AB688];
      v22 = *(v3 + 104);
      v22(v5, v15, v2);
      sub_1E146E9D4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1E1B02CC0;
      *(v6 + 32) = swift_allocError();
      (*(v3 + 16))(v18, v5, v2);
      *v17 = 1684957547;
      v17[1] = 0xE400000000000000;
      v17[2] = v1;
      v17[3] = v6;
      v22(v17, *MEMORY[0x1E69AB6A0], v2);
      swift_willThrow();
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v6 = v13;
    }
  }

  else
  {
    sub_1E146E9D4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v19 = 1684957547;
    v19[1] = 0xE400000000000000;
    v19[2] = v1;
    (*(v3 + 104))(v19, *MEMORY[0x1E69AB690], v2);
    swift_willThrow();
  }

  return v6;
}

uint64_t TodayCardOverlay.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardOverlay.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v34 = a2;
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_1E1AF381C();
  v15 = sub_1E1AF37CC();
  if (v16)
  {
    v29 = v15;
    v30 = v16;
  }

  else
  {
    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v29 = v18;
    v30 = v20;
    v4 = v3;
  }

  sub_1E1AF6F6C();
  v17 = *(v12 + 8);
  v17(v14, v11);
  v21 = v32;
  *(v5 + 24) = v31;
  *(v5 + 40) = v21;
  *(v5 + 56) = v33;
  type metadata accessor for TodayCardOverlay();
  v22 = v28;
  v23 = static TodayCardOverlay.kind(from:)();
  if (v4)
  {
    v24 = sub_1E1AF39DC();
    (*(*(v24 - 8) + 8))(v34, v24);
    v17(v22, v11);
    sub_1E134B88C(v5 + 24);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v23;
    v26 = sub_1E1AF39DC();
    (*(*(v26 - 8) + 8))(v34, v26);
    v17(v22, v11);
    *(v5 + 16) = v25;
  }

  return v5;
}

uint64_t static TodayCardOverlay.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v3 = sub_1E1AF39DC();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67[1] = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v73 = v67 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v72 = v67 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v71 = v67 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v77 = v67 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v70 = v67 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v68 = v67 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v69 = v67 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v76 = v67 - v20;
  v75 = sub_1E1AF380C();
  v81 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v67[0] = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v74 = v67 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v67 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v67 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v67 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v67 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v67 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v67 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v67 - v43;
  v45 = a1;
  v46 = v82;
  v47 = v83;
  v48 = static TodayCardOverlay.kind(from:)();
  if (v47)
  {
    return v46;
  }

  v50 = v44;
  v51 = v41;
  v53 = v76;
  v52 = v77;
  v54 = v78;
  if (v48 > 3)
  {
    v56 = v78;
    if (v48 <= 5)
    {
      if (v48 == 4)
      {
        (*(v81 + 16))(v32, v45, v75);
        (*(v79 + 16))(v52, v56, v80);
        type metadata accessor for TodayCardActionOverlay();
        v46 = swift_allocObject();
        TodayCardActionOverlay.init(deserializing:using:)(v32, v52);
      }

      else
      {
        (*(v81 + 16))(v29, v45, v75);
        v62 = v71;
        (*(v79 + 16))(v71, v56, v80);
        type metadata accessor for TodayCardThreeLineOverlay();
        v46 = swift_allocObject();
        TodayCardThreeLineOverlay.init(deserializing:using:)(v29, v62);
      }

      return v46;
    }

    if (v48 == 6)
    {
      (*(v81 + 16))(v26, v45, v75);
      v58 = v72;
      (*(v79 + 16))(v72, v56, v80);
      type metadata accessor for TodayCardArcadeLockupOverlay();
      v46 = swift_allocObject();
      TodayCardArcadeLockupOverlay.init(deserializing:using:)(v26, v58);
      return v46;
    }

    if (v48 == 7)
    {
      v65 = v74;
      v83 = *(v81 + 16);
      v81 += 16;
      v83(v74);
      v66 = v73;
      v82 = *(v79 + 16);
      v82(v73, v54, v80);
      type metadata accessor for TodayCardLockupOverlay();
      v46 = swift_allocObject();
      TodayCardLockupOverlay.init(deserializing:using:)(v65, v66);
      return v46;
    }
  }

  else
  {
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        (*(v81 + 16))(v38, v45, v75);
        v57 = v68;
        (*(v79 + 16))(v68, v54, v80);
        type metadata accessor for TodayCardLockupListOverlay();
        v46 = swift_allocObject();
        TodayCardLockupListOverlay.init(deserializing:using:)(v38, v57);
      }

      else
      {
        v63 = v78;
        (*(v81 + 16))(v35, v45, v75);
        v64 = v70;
        (*(v79 + 16))(v70, v63, v80);
        type metadata accessor for TodayCardParagraphOverlay();
        v46 = swift_allocObject();
        TodayCardParagraphOverlay.init(deserializing:using:)(v35, v64);
      }

      return v46;
    }

    if (!v48)
    {
      v55 = v50;
      (*(v81 + 16))(v50, v45, v75);
      (*(v79 + 16))(v53, v54, v80);
      type metadata accessor for TodayCardLockupOverlay();
      v46 = swift_allocObject();
      TodayCardLockupOverlay.init(deserializing:using:)(v55, v53);
      return v46;
    }

    if (v48 == 1)
    {
      v59 = v78;
      v60 = v51;
      (*(v81 + 16))(v51, v45, v75);
      v61 = v69;
      (*(v79 + 16))(v69, v59, v80);
      type metadata accessor for TodayCardMarketingLockupOverlay();
      v46 = swift_allocObject();
      TodayCardMarketingLockupOverlay.init(deserializing:using:)(v60, v61);
      return v46;
    }
  }

  v84 = v48;
  result = sub_1E1AF753C();
  __break(1u);
  return result;
}

uint64_t TodayCardLockupOverlay.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardLockupOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardMarketingLockupOverlay.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMarketingLockupOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardLockupListOverlay.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardLockupListOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardParagraphOverlay.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardParagraphOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardActionOverlay.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardActionOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardThreeLineOverlay.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardThreeLineOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardArcadeLockupOverlay.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardArcadeLockupOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardAppEventLockupOverlay.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardAppEventLockupOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t static TodayCardOverlay.tryToMakeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1E1AF37AC();
  result = 0;
  if ((v5 & 1) == 0)
  {
    return static TodayCardOverlay.makeInstance(byDeserializing:using:)(a1, a2);
  }

  return result;
}

uint64_t TodayCardOverlay.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1E146B358@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *TodayCardLockupOverlay.init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v62 = a2;
  v59 = v2;
  v5 = *v2;
  v57 = v3;
  v58 = v5;
  v6 = sub_1E1AF39DC();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49[-v9];
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v49[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49[-v23];
  sub_1E1AF381C();
  v25 = sub_1E1AF37AC();
  v55 = v12;
  v26 = *(v12 + 8);
  v27 = v24;
  v28 = v11;
  v26(v27, v11);
  if (v25)
  {
    v29 = sub_1E1AF5A7C();
    sub_1E146E9D4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v31 = v30;
    *v30 = 0x70756B636F6CLL;
    v32 = 0xE600000000000000;
LABEL_5:
    v34 = v58;
    v30[1] = v32;
    v30[2] = v34;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69AB690], v29);
    swift_willThrow();
    goto LABEL_6;
  }

  sub_1E1AF381C();
  v50 = sub_1E1AF370C();
  v33 = v50;
  v26(v21, v11);
  if (v33 == 2)
  {
    v29 = sub_1E1AF5A7C();
    sub_1E146E9D4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v31 = v30;
    *v30 = 0x7379616C70736964;
    v32 = 0xEC0000006E6F6349;
    goto LABEL_5;
  }

  v51 = v26;
  v52 = v11;
  sub_1E1AF381C();
  v37 = *(v60 + 16);
  v37(v10, v62, v61);
  type metadata accessor for Lockup();
  swift_allocObject();
  v38 = v57;
  v39 = Lockup.init(deserializing:using:)(v18, v10);
  if (!v38)
  {
    v57 = v37;
    v40 = a1;
    v35 = v59;
    v59[8] = v39;
    v41 = v53;
    sub_1E1AF381C();
    v42 = sub_1E1AF370C();
    v43 = v52;
    v51(v41, v52);
    *(v35 + 73) = (v42 == 2) | v42 & 1;
    *(v35 + 72) = v50 & 1;
    v44 = v54;
    v45 = *(v55 + 16);
    v58 = v40;
    v45(v54, v40, v43);
    v46 = v56;
    v47 = v62;
    v48 = v61;
    v57(v56, v62, v61);
    TodayCardOverlay.init(deserializing:using:)(v44, v46);
    (*(v60 + 8))(v47, v48);
    v51(v58, v52);
    return v35;
  }

  v26 = v51;
  v28 = v52;
LABEL_6:
  (*(v60 + 8))(v62, v61);
  v26(a1, v28);
  v35 = v59;
  swift_deallocPartialClassInstance();
  return v35;
}

uint64_t TodayCardLockupOverlay.__allocating_init(lockup:displaysIcon:hasMaterialBackground:)(uint64_t a1, char a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 64) = a1;
  *(v6 + 72) = a2;
  *(v6 + 73) = a3;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  TodayCardOverlay.init(id:kind:)(v8, 0);
  return v6;
}

uint64_t TodayCardLockupOverlay.init(lockup:displaysIcon:hasMaterialBackground:)(uint64_t a1, char a2, char a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  *(v3 + 73) = a3;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  TodayCardOverlay.init(id:kind:)(v5, 0);
  return v3;
}

void *TodayCardMarketingLockupOverlay.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v73 = v2;
  v5 = *v2;
  v71 = v3;
  v72 = v5;
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v70 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = v63 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v63 - v12;
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v68 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = v63 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v65 = v63 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v63 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v63 - v25;
  sub_1E1AF381C();
  v27 = sub_1E1AF37AC();
  v69 = v15;
  v28 = *(v15 + 8);
  v77 = v14;
  v75 = v28;
  v28(v26, v14);
  v74 = v7;
  if (v27)
  {
    v29 = sub_1E1AF5A7C();
    sub_1E146E9D4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v30 = 0x70756B636F6CLL;
    v31 = v72;
    v30[1] = 0xE600000000000000;
    v30[2] = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x1E69AB690], v29);
    swift_willThrow();
    v32 = a1;
    v33 = v76;
    v34 = v6;
LABEL_4:
    (*(v74 + 8))(v33, v34);
    v75(v32, v77);
    v40 = v73;
    swift_deallocPartialClassInstance();
    return v40;
  }

  sub_1E1AF381C();
  v32 = a1;
  v36 = v7 + 16;
  v35 = *(v7 + 16);
  v37 = v76;
  v64 = v35;
  v35(v13, v76, v6);
  type metadata accessor for Lockup();
  swift_allocObject();
  v38 = v71;
  v39 = Lockup.init(deserializing:using:)(v23, v13);
  v33 = v37;
  v34 = v6;
  if (v38)
  {
    goto LABEL_4;
  }

  v42 = v37;
  v43 = v34;
  v44 = v73;
  v73[8] = v39;
  v63[1] = type metadata accessor for Paragraph();
  sub_1E1AF381C();
  v45 = v42;
  v71 = v36;
  v72 = v43;
  v40 = v44;
  v64(v66, v45, v43);
  sub_1E146E9D4(&qword_1EE1E4150, 255, type metadata accessor for Paragraph);
  sub_1E1AF464C();
  v44[9] = v78;
  v46 = v65;
  sub_1E1AF381C();
  v47 = sub_1E1AF370C();
  v48 = v46;
  v49 = v32;
  v50 = v77;
  v51 = v75;
  v75(v48, v77);
  *(v40 + 80) = v47 & 1;
  v52 = v67;
  sub_1E1AF381C();
  sub_1E1AF37CC();
  v54 = v53;
  v51(v52, v50);
  v55 = v49;
  v56 = 0;
  if (v54)
  {
    sub_1E1355E88();
    v56 = sub_1E1AF6C9C();
    v57 = v74;
    v58 = v76;
    v59 = v72;
  }

  else
  {
    v58 = v76;
    v59 = v72;
    v57 = v74;
  }

  v60 = v77;
  v40[11] = v56;
  v61 = v68;
  (*(v69 + 16))(v68, v55, v60);
  v62 = v70;
  v64(v70, v58, v59);
  TodayCardOverlay.init(deserializing:using:)(v61, v62);
  (*(v57 + 8))(v58, v59);
  v75(v55, v77);
  return v40;
}

uint64_t TodayCardMarketingLockupOverlay.__allocating_init(lockup:paragraph:hideBackground:artworkBackgroundColor:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  TodayCardOverlay.init(id:kind:)(v10, 1);
  return v8;
}

uint64_t TodayCardMarketingLockupOverlay.init(lockup:paragraph:hideBackground:artworkBackgroundColor:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  TodayCardOverlay.init(id:kind:)(v6, 1);
  return v4;
}

void *TodayCardMarketingLockupOverlay.artworkBackgroundColor.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_1E146C248()
{

  v1 = *(v0 + 88);
}

uint64_t TodayCardMarketingLockupOverlay.deinit()
{
  sub_1E134B88C(v0 + 24);

  return v0;
}

uint64_t TodayCardMarketingLockupOverlay.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);

  v1 = *(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t TodayCardLockupListOverlay.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_1E1AF39DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = sub_1E1AF380C();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  sub_1E1AF381C();
  v23 = v4;
  v13 = *(v4 + 16);
  v13(v8, a2, v3);
  type metadata accessor for Lockup();
  sub_1E146E9D4(&qword_1EE1E4F60, 255, type metadata accessor for Lockup);
  v14 = v21;
  v15 = v19;
  *(v14 + 64) = sub_1E1AF630C();
  v16 = *(v24 + 16);
  v22 = v9;
  v16(v11, v15, v9);
  v17 = v20;
  v13(v20, a2, v3);
  TodayCardOverlay.init(deserializing:using:)(v11, v17);
  (*(v23 + 8))(a2, v3);
  (*(v24 + 8))(v15, v22);
  return v14;
}

char *TodayCardLockupListOverlay.offerAdamIds.getter()
{
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E68FFD80](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1E172DC1C(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1E172DC1C((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t TodayCardLockupListOverlay.deinit()
{
  sub_1E134B88C(v0 + 24);

  return v0;
}

void *TodayCardParagraphOverlay.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v41 = v2;
  v44 = *v2;
  v45 = a2;
  v4 = sub_1E1AF39DC();
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  sub_1E1AF381C();
  v18 = sub_1E1AF37AC();
  v19 = *(v10 + 8);
  v40 = v9;
  v42 = v19;
  v19(v17, v9);
  if (v18)
  {
    v20 = sub_1E1AF5A7C();
    sub_1E146E9D4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v21 = 0x7061726761726170;
    v21[1] = 0xE900000000000068;
    v21[2] = v44;
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E69AB690], v20);
    swift_willThrow();
    v22 = v45;
    v23 = v43;
  }

  else
  {
    v36 = v10;
    sub_1E1AF381C();
    v24 = a1;
    v25 = v43;
    v22 = v45;
    v35 = *(v43 + 16);
    v35(v8, v45, v4);
    v26 = v39;
    v27 = sub_1E165AA74(v14, v8);
    v23 = v25;
    a1 = v24;
    if (!v26)
    {
      v28 = v41;
      v41[8] = v27;
      sub_1E1AF381C();
      sub_1E146E8E0();
      sub_1E1AF36DC();
      v30 = v17;
      v31 = v40;
      v42(v30, v40);
      *(v28 + 72) = v46;
      v32 = v37;
      (*(v36 + 16))(v37, v24, v31);
      v33 = v38;
      v44 = v4;
      v35(v38, v45, v4);
      TodayCardOverlay.init(deserializing:using:)(v32, v33);
      (*(v43 + 8))(v45, v44);
      v42(a1, v31);
      return v28;
    }
  }

  (*(v23 + 8))(v22, v4);
  v42(a1, v40);
  v28 = v41;
  swift_deallocPartialClassInstance();
  return v28;
}

uint64_t TodayCardParagraphOverlay.__allocating_init(paragraph:style:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  *(v4 + 64) = a1;
  *(v4 + 72) = v5;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  TodayCardOverlay.init(id:kind:)(v7, 3);
  return v4;
}

uint64_t TodayCardParagraphOverlay.init(paragraph:style:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *(v2 + 64) = a1;
  *(v2 + 72) = v3;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  TodayCardOverlay.init(id:kind:)(v5, 3);
  return v2;
}

uint64_t *TodayCardActionOverlay.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v36 = v2;
  v37 = a2;
  v6 = *v4;
  v33 = v3;
  v34 = v6;
  v35 = sub_1E1AF39DC();
  v7 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v38 = a1;
  sub_1E1AF381C();
  LOBYTE(a1) = sub_1E1AF37AC();
  v19 = *(v10 + 8);
  v19(v18, v9);
  if (a1)
  {
    v20 = sub_1E1AF5A7C();
    sub_1E146E9D4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v21 = 0x6E6F69746361;
    v22 = v34;
    v21[1] = 0xE600000000000000;
    v21[2] = v22;
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E69AB690], v20);
    swift_willThrow();
    (*(v7 + 8))(v37, v35);
    v19(v38, v9);
  }

  else
  {
    type metadata accessor for Action();
    sub_1E1AF381C();
    v23 = v33;
    v24 = static Action.makeInstance(byDeserializing:using:)(v15, v37);
    if (!v23)
    {
      v27 = v24;
      v19(v15, v9);
      v25 = v36;
      v36[8] = v27;
      (*(v10 + 16))(v12, v38, v9);
      v28 = v7;
      v29 = *(v7 + 16);
      v30 = v32;
      v31 = v35;
      v29(v32, v37, v35);
      TodayCardOverlay.init(deserializing:using:)(v12, v30);
      (*(v28 + 8))(v37, v31);
      v19(v38, v9);
      return v25;
    }

    (*(v7 + 8))(v37, v35);
    v19(v38, v9);
    v19(v15, v9);
  }

  v25 = v36;
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t TodayCardActionOverlay.init(action:)(uint64_t a1)
{
  *(v1 + 64) = a1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  TodayCardOverlay.init(id:kind:)(v3, 4);
  return v1;
}

uint64_t TodayCardActionOverlay.offerAdamIds.getter()
{
  type metadata accessor for OfferAction();
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E1B02CC0;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
  *(v2 + 32) = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  *(v2 + 40) = v3;

  return v2;
}

uint64_t sub_1E146D324()
{
  type metadata accessor for OfferAction();
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E1B02CC0;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
  *(v2 + 32) = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  *(v2 + 40) = v3;

  return v2;
}

void *TodayCardThreeLineOverlay.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  sub_1E1AF381C();
  v14 = sub_1E1AF37CC();
  v16 = v15;
  v17 = *(v9 + 8);
  v17(v13, v8);
  v3[8] = v14;
  v3[9] = v16;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  v20 = v19;
  v17(v13, v8);
  v3[10] = v18;
  v3[11] = v20;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  v23 = v22;
  v24 = v13;
  v25 = v35;
  v33 = v17;
  v17(v24, v8);
  v3[12] = v21;
  v3[13] = v23;
  v26 = a1;
  v27 = v32;
  (*(v9 + 16))(v32, a1, v8);
  v28 = v37;
  v29 = v36;
  v30 = v34;
  (*(v36 + 16))(v34, v37, v25);
  TodayCardOverlay.init(deserializing:using:)(v27, v30);
  (*(v29 + 8))(v28, v25);
  v33(v26, v8);
  return v3;
}

void *TodayCardThreeLineOverlay.__allocating_init(heading:title:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[8] = a1;
  v12[9] = a2;
  v12[10] = a3;
  v12[11] = a4;
  v12[12] = a5;
  v12[13] = a6;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  TodayCardOverlay.init(id:kind:)(v14, 3);
  return v12;
}

void *TodayCardThreeLineOverlay.init(heading:title:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a1;
  v6[9] = a2;
  v6[10] = a3;
  v6[11] = a4;
  v6[12] = a5;
  v6[13] = a6;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  TodayCardOverlay.init(id:kind:)(v8, 3);
  return v6;
}

uint64_t TodayCardThreeLineOverlay.heading.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TodayCardThreeLineOverlay.title.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t TodayCardThreeLineOverlay.description.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_1E146D844()
{
}

uint64_t TodayCardThreeLineOverlay.deinit()
{
  sub_1E134B88C(v0 + 24);

  return v0;
}

uint64_t TodayCardThreeLineOverlay.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);

  return swift_deallocClassInstance();
}

void *TodayCardArcadeLockupOverlay.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v40 = v3;
  v38 = *v3;
  v42 = sub_1E1AF39DC();
  v5 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v37 = a1;
  sub_1E1AF381C();
  LOBYTE(a1) = sub_1E1AF37AC();
  v20 = *(v11 + 8);
  v41 = v10;
  v36 = v20;
  v20(v19, v10);
  v39 = v5;
  if (a1)
  {
    v21 = sub_1E1AF5A7C();
    sub_1E146E9D4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    strcpy(v22, "arcadeLockup");
    v23 = v38;
    v22[13] = 0;
    *(v22 + 7) = -5120;
    *(v22 + 2) = v23;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E69AB690], v21);
    swift_willThrow();
    v24 = v37;
  }

  else
  {
    type metadata accessor for ArcadeLockup();
    v24 = v37;
    sub_1E1AF381C();
    v33 = *(v5 + 16);
    v33(v9, v43, v42);
    v25 = v35;
    v26 = ArcadeLockup.__allocating_init(deserializing:using:)(v16, v9);
    if (!v25)
    {
      v27 = v40;
      v29 = v41;
      v40[8] = v26;
      (*(v11 + 16))(v13, v24, v29);
      v30 = v34;
      v31 = v43;
      v32 = v42;
      v33(v34, v43, v42);
      TodayCardOverlay.init(deserializing:using:)(v13, v30);
      (*(v39 + 8))(v31, v32);
      v36(v24, v41);
      return v27;
    }
  }

  (*(v39 + 8))(v43, v42);
  v36(v24, v41);
  v27 = v40;
  swift_deallocPartialClassInstance();
  return v27;
}

uint64_t TodayCardArcadeLockupOverlay.init(arcadeLockup:)(uint64_t a1)
{
  *(v1 + 64) = a1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  TodayCardOverlay.init(id:kind:)(v3, 6);
  return v1;
}

uint64_t *TodayCardAppEventLockupOverlay.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v35 = v2;
  v36 = a2;
  v34 = *v3;
  v37 = sub_1E1AF39DC();
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v38 = a1;
  sub_1E1AF381C();
  LOBYTE(a1) = sub_1E1AF37AC();
  v33 = *(v11 + 8);
  v33(v19, v10);
  if (a1)
  {
    v20 = sub_1E1AF5A7C();
    sub_1E146E9D4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v21 = 0x70756B636F6CLL;
    v22 = v34;
    v21[1] = 0xE600000000000000;
    v21[2] = v22;
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E69AB690], v20);
    swift_willThrow();
  }

  else
  {
    sub_1E1AF381C();
    v30 = *(v5 + 16);
    v30(v9, v36, v37);
    type metadata accessor for Lockup();
    swift_allocObject();
    v23 = v32;
    v24 = Lockup.init(deserializing:using:)(v16, v9);
    if (!v23)
    {
      v25 = v35;
      v35[8] = v24;
      (*(v11 + 16))(v13, v38, v10);
      v27 = v31;
      v28 = v36;
      v30(v31, v36, v37);
      TodayCardOverlay.init(deserializing:using:)(v13, v27);
      v29 = v38;
      (*(v5 + 8))(v28, v37);
      v33(v29, v10);
      return v25;
    }
  }

  (*(v5 + 8))(v36, v37);
  v33(v38, v10);
  v25 = v35;
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t sub_1E146E220(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 64) = a1;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  TodayCardOverlay.init(id:kind:)(v6, a2);
  return v4;
}

uint64_t TodayCardAppEventLockupOverlay.init(lockup:)(uint64_t a1)
{
  *(v1 + 64) = a1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  TodayCardOverlay.init(id:kind:)(v3, 7);
  return v1;
}

uint64_t sub_1E146E2DC@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t sub_1E146E314()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B02CC0;
  v2 = *(v0 + 64);
  v3 = *(v2 + 24);
  *(v1 + 32) = *(v2 + 16);
  *(v1 + 40) = v3;

  return v1;
}

uint64_t TodayCardAppEventLockupOverlay.deinit()
{
  sub_1E134B88C(v0 + 24);

  return v0;
}

uint64_t sub_1E146E3F0(void (*a1)(void))
{
  sub_1E134B88C(v1 + 24);
  a1(*(v1 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1E146E44C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E1B02CC0;
  v3 = *(v1 + 64);
  v4 = *(v3 + 24);
  *(v2 + 32) = *(v3 + 16);
  *(v2 + 40) = v4;

  return v2;
}

unint64_t sub_1E146E4B0(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E146E4C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70756B636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6974656B72616DLL && a2 == 0xEF70756B636F4C67 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x694C70756B636F6CLL && a2 == 0xEA00000000007473 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7061726761726170 && a2 == 0xE900000000000068 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E694C6565726874 && a2 == 0xE900000000000065 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F4C656461637261 && a2 == 0xEC00000070756B63 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E657645707061 && a2 == 0xEE0070756B636F4CLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E1AF74AC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_1E146E8E0()
{
  result = qword_1EE1D2CC0[0];
  if (!qword_1EE1D2CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1D2CC0);
  }

  return result;
}

unint64_t sub_1E146E938()
{
  result = qword_1ECEB43D0;
  if (!qword_1ECEB43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB43D0);
  }

  return result;
}

uint64_t sub_1E146E9D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t SearchAd.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchAd.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SearchAd.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v110 = a2;
  v5 = *v3;
  v112 = v3;
  v107 = v5;
  v6 = sub_1E1AF5A7C();
  v108 = *(v6 - 8);
  v109 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v99 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v99 - v11;
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF380C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v101 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v99 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v99 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v106 = &v99 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v99 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v99 - v30;
  v118 = a1;
  sub_1E1AF381C();
  v32 = sub_1E1AF37CC();
  if (v33)
  {
    v113 = v32;
    v114 = v33;
  }

  else
  {
    sub_1E1AEFE9C();
    v34 = sub_1E1AEFE7C();
    v35 = v14;
    v37 = v36;
    (*(v35 + 8))(v16, v13);
    v113 = v34;
    v114 = v37;
  }

  sub_1E1AF6F6C();
  v38 = v31;
  v39 = *(v18 + 8);
  v39(v38, v17);
  v40 = v116;
  v41 = v112;
  *(v112 + 5) = v115;
  *(v41 + 6) = v40;
  v41[14] = v117;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v42 = v17;
  v111 = v39;
  v39(v28, v17);
  v43 = sub_1E1AF40DC();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v12, 1, v43) == 1)
  {
    sub_1E146F8C4(v12);
LABEL_12:
    sub_1E146FAEC(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    v73 = v109;
    swift_allocError();
    *v74 = 6570345;
    v74[1] = 0xE300000000000000;
    v75 = v108;
    v74[2] = v107;
    (*(v75 + 104))(v74, *MEMORY[0x1E69AB690], v73);
    swift_willThrow();
    v76 = sub_1E1AF39DC();
    (*(*(v76 - 8) + 8))(v110, v76);
    v111(v118, v42);
LABEL_20:
    sub_1E134B88C((v41 + 10));
    type metadata accessor for SearchAd();
    swift_deallocPartialClassInstance();
    return v41;
  }

  v45 = sub_1E1AF40BC();
  (*(v44 + 8))(v12, v43);
  if (!v45)
  {
    goto LABEL_12;
  }

  v46 = v106;
  v47 = v118;
  sub_1E1AF381C();
  v48 = sub_1E1AF37CC();
  v50 = v49;
  v51 = v111;
  v111(v46, v42);
  if (!v50)
  {

    sub_1E146FAEC(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    v77 = v109;
    swift_allocError();
    strcpy(v78, "impressionId");
    v78[13] = 0;
    *(v78 + 7) = -5120;
    v79 = v108;
    *(v78 + 2) = v107;
    (*(v79 + 104))(v78, *MEMORY[0x1E69AB690], v77);
    swift_willThrow();
    v80 = sub_1E1AF39DC();
    (*(*(v80 - 8) + 8))(v110, v80);
    v81 = v47;
    v82 = v42;
LABEL_15:
    v51(v81, v82);
LABEL_19:
    v41 = v112;
    goto LABEL_20;
  }

  v106 = v48;
  v52 = v105;
  sub_1E1AF381C();
  v99 = sub_1E1AF37CC();
  v54 = v53;
  v51(v52, v42);
  if (!v54)
  {

    sub_1E146FAEC(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    v83 = v109;
    swift_allocError();
    *v84 = 0x65636E6174736E69;
    v84[1] = 0xEA00000000006449;
    v85 = v108;
    v84[2] = v107;
    (*(v85 + 104))(v84, *MEMORY[0x1E69AB690], v83);
    swift_willThrow();
    v86 = sub_1E1AF39DC();
    (*(*(v86 - 8) + 8))(v110, v86);
    v81 = v47;
    v82 = v42;
    goto LABEL_15;
  }

  type metadata accessor for Action();
  v55 = v103;
  v105 = 0x80000001E1B5F940;
  sub_1E1AF381C();
  v56 = v110;
  v57 = v104;
  v58 = static Action.makeInstance(byDeserializing:using:)(v55, v110);
  if (v57)
  {

    v59 = v55;
    v60 = v111;
    v111(v59, v42);
    *&v115 = v57;
    v61 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
    v62 = v102;
    v63 = v109;
    if (swift_dynamicCast())
    {

      v64 = v108;
      v65 = v100;
      (*(v108 + 32))(v100, v62, v63);
      sub_1E146FAEC(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
      v106 = v42;
      swift_allocError();
      v67 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0);
      v68 = v60;
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1E1B02CC0;
      *(v69 + 32) = swift_allocError();
      (*(v64 + 16))(v70, v65, v63);
      *v67 = 0xD000000000000012;
      v71 = v107;
      v67[1] = v105;
      v67[2] = v71;
      v67[3] = v69;
      (*(v64 + 104))(v67, *MEMORY[0x1E69AB6A0], v63);
      swift_willThrow();
      v72 = sub_1E1AF39DC();
      (*(*(v72 - 8) + 8))(v110, v72);
      v68(v118, v106);
      (*(v64 + 8))(v65, v63);
    }

    else
    {
      v97 = sub_1E1AF39DC();
      (*(*(v97 - 8) + 8))(v110, v97);
      v60(v118, v42);
    }

    goto LABEL_19;
  }

  v87 = v58;
  v88 = v55;
  v89 = v111;
  v111(v88, v42);
  v90 = v112;
  v112[2] = v99;
  v90[3] = v54;
  v90[6] = v50;
  v90[7] = v87;
  v41 = v90;
  v91 = v106;
  v41[4] = v45;
  v41[5] = v91;
  v92 = v101;
  v93 = v118;
  sub_1E1AF381C();
  v109 = sub_1E1AF37CC();
  v95 = v94;
  v96 = sub_1E1AF39DC();
  (*(*(v96 - 8) + 8))(v56, v96);
  v89(v93, v42);
  v89(v92, v42);
  v41[8] = v109;
  v41[9] = v95;
  return v41;
}

uint64_t sub_1E146F8C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchAd.instanceId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchAd.impressionId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SearchAd.advertisingText.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SearchAd.deinit()
{

  sub_1E134B88C(v0 + 80);
  return v0;
}

uint64_t SearchAd.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1E146FAEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_1E146FB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for SearchAd();
  v7 = swift_allocObject();
  result = SearchAd.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E146FBFC()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata + 8);
  v4 = v2;
  if (v3 >> 60 == 15)
  {
    swift_unknownObjectWeakInit();
    v4 = sub_1E146FCB4();
    v6 = v5;
    MEMORY[0x1E6901750](v10);
    v7 = *v1;
    v8 = v1[1];
    *v1 = v4;
    v1[1] = v6;
    sub_1E14708A0(v4, v6);
    sub_1E1337F64(v7, v8);
  }

  sub_1E14708F4(v2, v3);
  return v4;
}

uint64_t sub_1E146FCB4()
{
  v44 = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v39 - v1;
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0);
    inited = swift_initStackObject();
    v39 = xmmword_1E1B02CC0;
    *(inited + 16) = xmmword_1E1B02CC0;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    v10 = OBJC_IVAR____TtC11AppStoreKit33NotesMetadataActivityItemProvider_metadata;
    v11 = *&v8[OBJC_IVAR____TtC11AppStoreKit33NotesMetadataActivityItemProvider_metadata];
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    v14 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v13;
    *(inited + 56) = v12;

    v15 = sub_1E1303A74(inited);
    swift_setDeallocating();
    sub_1E1308058(inited + 32, &qword_1ECEB5F80);
    sub_1E1307FE8(*&v8[v10] + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_url, v2);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_1E1308058(v2, &unk_1ECEB4B60);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v43 = v3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v42);
      (*(v4 + 16))(boxed_opaque_existential_0, v6, v3);
      sub_1E1301CF0(&v42, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      sub_1E159827C(v41, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      (*(v4 + 8))(v6, v3);
      v15 = v40;
    }

    v18 = *&v8[v10];
    v19 = *(v18 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_developer + 8);
    if (v19)
    {
      v20 = *(v18 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_developer);
      v43 = v14;
      *&v42 = v20;
      *(&v42 + 1) = v19;
      sub_1E1301CF0(&v42, v41);

      v21 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      sub_1E159827C(v41, 0x796E61706D6F63, 0xE700000000000000, v21);
      v15 = v40;
      v18 = *&v8[v10];
    }

    v22 = *(v18 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_category + 8);
    if (v22)
    {
      v23 = *(v18 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_category);
      v43 = v14;
      *&v42 = v23;
      *(&v42 + 1) = v22;
      sub_1E1301CF0(&v42, v41);

      v24 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      sub_1E159827C(v41, 0x79726F6765746163, 0xE800000000000000, v24);
      v15 = v40;
      v18 = *&v8[v10];
    }

    if ((*(v18 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_fileSize + 8) & 1) == 0)
    {
      v25 = *(v18 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_fileSize);
      v43 = MEMORY[0x1E69E7360];
      *&v42 = v25;
      sub_1E1301CF0(&v42, v41);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      sub_1E159827C(v41, 0x7A69735F656C6966, 0xE900000000000065, v26);
      v15 = v40;
      v18 = *&v8[v10];
    }

    v27 = (v18 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_mediaType);
    v28 = v27[1];
    if (v28)
    {
      v29 = *v27;
      v43 = v14;
      *&v42 = v29;
      *(&v42 + 1) = v28;
      sub_1E1301CF0(&v42, v41);

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      sub_1E159827C(v41, 0x79745F616964656DLL, 0xEA00000000006570, v30);
    }

    v31 = objc_opt_self();
    v32 = sub_1E1AF5C6C();

    *&v42 = 0;
    v33 = [v31 archivedDataWithRootObject:v32 requiringSecureCoding:0 error:&v42];

    v34 = v42;
    if (v33)
    {
      v35 = sub_1E1AEFD3C();

      return v35;
    }

    else
    {
      v36 = v34;
      v37 = sub_1E1AEFB2C();

      swift_willThrow();
      if (qword_1EE1D27B0 != -1)
      {
        swift_once();
      }

      v38 = sub_1E1AF591C();
      __swift_project_value_buffer(v38, qword_1EE215450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = v39;
      sub_1E1AF382C();
      sub_1E1AF54AC();

      return 0;
    }
  }

  return result;
}

void sub_1E14703E8(uint64_t *a1@<X8>)
{
  v3 = [v1 activityType];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_1E1AF5DFC();
  v7 = v6;
  if (v5 == sub_1E1AF5DFC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1E1AF74AC();

    if ((v10 & 1) == 0)
    {

LABEL_8:
      a1[3] = MEMORY[0x1E69E6158];
      *a1 = 0;
      a1[1] = 0xE000000000000000;
      return;
    }
  }

  v11 = sub_1E146FBFC();
  v13 = v12;
  a1[3] = MEMORY[0x1E6969080];

  *a1 = v11;
  a1[1] = v13;
}

void sub_1E14704E4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = sub_1E1AF5DFC();
  v5 = v4;
  if (v3 == sub_1E1AF5DFC() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1E1AF74AC();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  v9 = sub_1E146FBFC();
  *(a2 + 24) = MEMORY[0x1E6969080];
  *a2 = v9;
  *(a2 + 8) = v10;
}

id sub_1E14707F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesMetadataActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E14708A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1E14708F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E14708A0(a1, a2);
  }

  return a1;
}

unint64_t sub_1E1470908(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_1E1AF5DFC();
    v4 = v3;
    if (v2 == sub_1E1AF5DFC() && v4 == v5)
    {
      v9 = v1;
    }

    else
    {
      v7 = sub_1E1AF74AC();
      v8 = v1;

      if ((v7 & 1) == 0)
      {

        return 0;
      }
    }

    return 0xD00000000000001ELL;
  }

  return result;
}

uint64_t TopChartsDiffablePagePresenter.UpdatePhase.isUpdating.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *v0 >> 62;
  if (!v4)
  {

    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    sub_1E1300E34(v2);
    v6 = v1;
LABEL_5:
    v7 = v2;
    v8 = v3;
    goto LABEL_6;
  }

  if (v1 != 0x8000000000000000 || (v3 | v2) != 0)
  {
    sub_1E1470BE4(0x8000000000000008, 0, 0);
    v9 = 1;
    goto LABEL_7;
  }

  v6 = 0x8000000000000000;
  v7 = 0;
  v8 = 0;
LABEL_6:
  sub_1E1470BE4(v6, v7, v8);
  v9 = 0;
LABEL_7:
  sub_1E1470BE4(0x8000000000000008, 0, 0);
  return v9;
}

uint64_t static TopChartsDiffablePagePresenter.UpdatePhase.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *a1 >> 62;
  if (!v8)
  {
    if (v5 >> 62)
    {

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v8 == 1)
  {
    v9 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
    sub_1E1300E34(v3);
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  if (v2 == 0x8000000000000000 && (v4 | v3) == 0)
  {
    if (v5 >> 62 != 2)
    {
      goto LABEL_17;
    }

    v11 = 0;
    if (v5 != 0x8000000000000000)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v5 >> 62 != 2)
    {
      goto LABEL_17;
    }

    v11 = 0;
    if (v5 != 0x8000000000000008)
    {
      goto LABEL_18;
    }
  }

  if (!(v7 | v6))
  {
LABEL_16:
    sub_1E1470C4C(*a1, v3);
    v11 = 1;
  }

LABEL_18:
  sub_1E1470C4C(v5, v6);
  sub_1E1470BE4(v2, v3, v4);
  sub_1E1470BE4(v5, v6, v7);
  return v11;
}

unint64_t sub_1E1470BE4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >> 62 == 1)
  {

    return sub_1E1361B18(a2, a3);
  }

  else if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_1E1470C4C(unint64_t result, uint64_t a2)
{
  if (result >> 62 == 1)
  {
    v4 = (result & 0x3FFFFFFFFFFFFFFFLL);

    return sub_1E1300E34(a2);
  }

  else if (!(result >> 62))
  {
  }

  return result;
}

void sub_1E1470CB4(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0x8000000000000000;
}

uint64_t sub_1E1470CC4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *v0 >> 62;
  if (!v4)
  {

    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    sub_1E1300E34(v2);
    v6 = v1;
LABEL_5:
    v7 = v2;
    v8 = v3;
    goto LABEL_6;
  }

  if (v1 != 0x8000000000000000 || (v3 | v2) != 0)
  {
    sub_1E1470BE4(0x8000000000000008, 0, 0);
    v9 = 1;
    goto LABEL_7;
  }

  v6 = 0x8000000000000000;
  v7 = 0;
  v8 = 0;
LABEL_6:
  sub_1E1470BE4(v6, v7, v8);
  v9 = 0;
LABEL_7:
  sub_1E1470BE4(0x8000000000000008, 0, 0);
  return v9;
}

unint64_t sub_1E1470D8C(uint64_t a1)
{
  result = sub_1E1470DB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E1470DB4()
{
  result = qword_1ECEB43F8;
  if (!qword_1ECEB43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB43F8);
  }

  return result;
}

uint64_t sub_1E1470E08(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *a1 >> 62;
  if (!v8)
  {
    if (v5 >> 62)
    {

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v8 == 1)
  {
    v9 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
    sub_1E1300E34(v3);
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  if (v2 == 0x8000000000000000 && (v4 | v3) == 0)
  {
    if (v5 >> 62 != 2)
    {
      goto LABEL_17;
    }

    v11 = 0;
    if (v5 != 0x8000000000000000)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v5 >> 62 != 2)
    {
      goto LABEL_17;
    }

    v11 = 0;
    if (v5 != 0x8000000000000008)
    {
      goto LABEL_18;
    }
  }

  if (!(v7 | v6))
  {
LABEL_16:
    sub_1E1470C4C(*a1, v3);
    v11 = 1;
  }

LABEL_18:
  sub_1E1470C4C(v5, v6);
  sub_1E1470BE4(v2, v3, v4);
  sub_1E1470BE4(v5, v6, v7);
  return v11;
}

unint64_t get_enum_tag_for_layout_string_11AppStoreKit30TopChartsDiffablePagePresenterC11UpdatePhaseO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1E1470F50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E1470FAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1E1471004(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationPerforming + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationOpportunities) = 0;
  if (*(a1 + 16))
  {
    *(v5 + 40) = a1;
    sub_1E1383E78(a1 + 32, v5 + 48);
    *(v5 + 96) = a1;
    *(v5 + 104) = 1;
    type metadata accessor for AdvertAppearanceTracker();
    v10 = swift_allocObject();
    *(v10 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v10 + 16) = MEMORY[0x1E69E7CC0];
    *(v5 + 120) = v10;
    type metadata accessor for AdvertVisibilityCalculator();
    v11 = swift_allocObject();
    *(v11 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v11 + 40) = 0;
    swift_unknownObjectWeakInit();
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 1025;
    *(v11 + 96) = 0;
    swift_unknownObjectWeakInit();
    *(v11 + 24) = 0;
    swift_unknownObjectWeakAssign();
    *(v11 + 40) = 0;
    swift_unknownObjectWeakAssign();
    *(v11 + 81) = 4;
    *(v11 + 104) = 257;
    *(v5 + 128) = v11;
    *(v5 + 16) = a3 & 1;
    v12 = objc_allocWithZone(MEMORY[0x1E69AC038]);
    swift_bridgeObjectRetain_n();
    v13 = [v12 init];
    LOBYTE(v11) = [v13 personalizedAds];

    v14 = (v5 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_strategy);
    v15 = *(type metadata accessor for AdvertRotationStrategy() + 24);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4400);
    (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
    *v14 = v11;
    v14[1] = 0;
    sub_1E147410C(a2, v5 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_lifecycleMetricsReporter);
    *(v5 + 112) = 1;
    *(v5 + 24) = a4;
    v17 = *(v5 + 120);
    swift_beginAccess();
    *(v17 + 32) = &protocol witness table for AdvertRotationController;
    swift_unknownObjectWeakAssign();
    v18 = *(v5 + 128);
    swift_beginAccess();
    *(v18 + 96) = &protocol witness table for AdvertRotationController;
    swift_unknownObjectWeakAssign();
    v19 = qword_1EE1D27B8;

    v23 = a2;
    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1E1AF591C();
    __swift_project_value_buffer(v20, qword_1EE215468);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;

    sub_1E1AF38CC();

    sub_1E1AF382C();
    v21 = *(a1 + 16);

    v24[3] = MEMORY[0x1E69E6530];
    v24[0] = v21;
    sub_1E1AF38BC();
    sub_1E1308058(v24, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF548C();

    sub_1E1308058(v23, &qword_1ECEB24F8);
  }

  else
  {
    sub_1E1308058(a2, &qword_1ECEB24F8);

    MEMORY[0x1E6901750](v5 + 32);
    sub_1E1337DEC(v5 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationPerforming);
    type metadata accessor for AdvertRotationController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

uint64_t sub_1E147158C(uint64_t a1, uint64_t *a2)
{
  sub_1E1383E78(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + 48);
  sub_1E1337DC8(v5, (v3 + 48));
  return swift_endAccess();
}

uint64_t sub_1E1471688(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E14716F4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationPerforming;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E1471794()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationOpportunities;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E14717D8()
{
  v1 = sub_1E1AF468C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6 + 16;
  swift_beginAccess();
  sub_1E1383E78(v0 + 48, v13);
  __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
  sub_1E1AF5C0C();
  v8 = sub_1E1AF46DC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_1E1308058(v7, &unk_1ECEB1770);
    return 0;
  }

  else
  {
    sub_1E1AF46AC();
    (*(v9 + 8))(v7, v8);
    v11 = sub_1E1AF465C();
    (*(v2 + 8))(v4, v1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v11;
  }
}

void sub_1E14719FC(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1E1452D6C();
    v6 = sub_1E1AF6D0C();

    if (v6)
    {
      if (qword_1EE1D27B8 != -1)
      {
        swift_once();
      }

      v7 = sub_1E1AF591C();
      __swift_project_value_buffer(v7, qword_1EE215468);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF38CC();
      sub_1E1AF382C();
      sub_1E1AF548C();

      if (*(v2 + 112) == 1)
      {
        v8 = *(v2 + 128);
        v9 = swift_unknownObjectWeakLoadStrong();
        if (!v9 || (v10 = v9, swift_unknownObjectRelease(), v10 != a1))
        {
          *(v8 + 24) = &protocol witness table for UIView;
          swift_unknownObjectWeakAssign();
          *(v8 + 40) = &protocol witness table for UICollectionView;
          swift_unknownObjectWeakAssign();
          v11 = 0;
          sub_1E169D60C(&v11);
        }
      }
    }
  }
}

uint64_t sub_1E1471C0C(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE1D27B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1E1AF591C();
  __swift_project_value_buffer(v4, qword_1EE215468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (*(v1 + 112) == 1)
  {
    swift_beginAccess();
    sub_1E1383E78(v1 + 48, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    LOBYTE(v6) = SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v6, v7);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    if (v6)
    {
      swift_unknownObjectWeakAssign();
      v8 = *(v2 + 128);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v10 = Strong, result = swift_unknownObjectRelease(), v10 != a1))
      {
        *(v8 + 24) = &protocol witness table for UIView;
        swift_unknownObjectWeakAssign();
        *(v8 + 40) = &protocol witness table for UICollectionView;
        swift_unknownObjectWeakAssign();
        LOBYTE(v11[0]) = 0;
        return sub_1E169D60C(v11);
      }
    }
  }

  return result;
}

uint64_t sub_1E1471E50()
{
  if (qword_1EE1D27B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1EE215468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (*(v0 + 112) == 1)
  {
    swift_beginAccess();
    sub_1E1383E78(v0 + 48, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    v5 = (*(v4 + 8))(v3, v4);
    if (!v5)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v9);
    sub_1E147410C(v0 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_lifecycleMetricsReporter, v9);
    v7 = v10;
    if (v10)
    {
      v8 = v11;
      __swift_project_boxed_opaque_existential_1Tm(v9, v10);
      (*(v8 + 8))(v6, v7, v8);

      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    return sub_1E1308058(v9, &qword_1ECEB24F8);
  }

  return result;
}

uint64_t sub_1E14720A0()
{
  if (qword_1EE1D27B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1EE215468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (*(v0 + 112) == 1)
  {
    v3 = *(v0 + 128);
    v4 = *(v3 + 104);
    *(v3 + 104) = 1;
    if ((v4 & 1) == 0)
    {
      v5 = 3;
      return sub_1E169D60C(&v5);
    }
  }

  return result;
}

uint64_t sub_1E1472230()
{
  v1 = v0;
  if (qword_1EE1D27B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE215468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (*(v0 + 112) == 1)
  {
    v4 = *(v0 + 128);
    v5 = *(v4 + 104);
    *(v4 + 104) = 0;
    if (v5 == 1)
    {
      LOBYTE(v12[0]) = 3;
      sub_1E169D60C(v12);
    }

    swift_beginAccess();
    sub_1E1383E78(v1 + 48, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    v8 = (*(v7 + 8))(v6, v7);
    if (!v8)
    {
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_1E147410C(v1 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_lifecycleMetricsReporter, v12);
    v10 = v13;
    if (v13)
    {
      v11 = v14;
      __swift_project_boxed_opaque_existential_1Tm(v12, v13);
      (*(v11 + 16))(v9, v10, v11);

      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    return sub_1E1308058(v12, &qword_1ECEB24F8);
  }

  return result;
}

uint64_t sub_1E14724A4()
{
  v1 = v0;
  if (qword_1EE1D27B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE215468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (*(v0 + 112) == 1)
  {
    swift_unknownObjectWeakAssign();
    *(v0 + 112) = 0;
    v4 = *(v0 + 128);
    *(v4 + 24) = 0;
    swift_unknownObjectWeakAssign();
    *(v4 + 40) = 0;
    swift_unknownObjectWeakAssign();
    LOBYTE(v17[0]) = 1;
    result = sub_1E169D60C(v17);
    *(v4 + 81) = 4;
    v5 = *(v1 + 40);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_lifecycleMetricsReporter;
      v8 = v5 + 32;
      do
      {
        sub_1E1383E78(v8, v17);
        v10 = v18;
        v11 = v19;
        __swift_project_boxed_opaque_existential_1Tm(v17, v18);
        v12 = (*(v11 + 8))(v10, v11);
        result = __swift_destroy_boxed_opaque_existential_1(v17);
        if (v12)
        {
          sub_1E147410C(v1 + v7, v14);
          v13 = v15;
          if (v15)
          {
            v9 = v16;
            __swift_project_boxed_opaque_existential_1Tm(v14, v15);
            (*(v9 + 56))(v12, v13, v9);

            result = __swift_destroy_boxed_opaque_existential_1(v14);
          }

          else
          {

            result = sub_1E1308058(v14, &qword_1ECEB24F8);
          }
        }

        v8 += 48;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_1E1472764()
{
  v1 = v0;
  if (qword_1EE1D27B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE215468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (*(v0 + 112) == 1)
  {
    swift_unknownObjectWeakAssign();
    v4 = *(v0 + 128);
    *(v4 + 24) = 0;
    swift_unknownObjectWeakAssign();
    *(v4 + 40) = 0;
    swift_unknownObjectWeakAssign();
    LOBYTE(v17[0]) = 1;
    result = sub_1E169D60C(v17);
    *(v4 + 81) = 4;
    v5 = *(v1 + 40);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_lifecycleMetricsReporter;
      v8 = v5 + 32;
      do
      {
        sub_1E1383E78(v8, v17);
        v10 = v18;
        v11 = v19;
        __swift_project_boxed_opaque_existential_1Tm(v17, v18);
        v12 = (*(v11 + 8))(v10, v11);
        result = __swift_destroy_boxed_opaque_existential_1(v17);
        if (v12)
        {
          sub_1E147410C(v1 + v7, v14);
          v13 = v15;
          if (v15)
          {
            v9 = v16;
            __swift_project_boxed_opaque_existential_1Tm(v14, v15);
            (*(v9 + 56))(v12, v13, v9);

            result = __swift_destroy_boxed_opaque_existential_1(v14);
          }

          else
          {

            result = sub_1E1308058(v14, &qword_1ECEB24F8);
          }
        }

        v8 += 48;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_1E1472A20()
{
  if (qword_1EE1D27B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1EE215468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (*(v0 + 112) == 1)
  {
    v3 = v0 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_strategy;
    result = swift_beginAccess();
    if ((*(v3 + 1) & 1) == 0)
    {
      *(v3 + 1) = 1;
    }
  }

  return result;
}

uint64_t sub_1E1472BBC()
{
  if (qword_1EE1D27B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1EE215468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (*(v0 + 112) == 1)
  {
    v3 = *(v0 + 128);
    v4 = *(v3 + 105);
    *(v3 + 105) = 1;
    if ((v4 & 1) == 0 && *(v3 + 104) == 1)
    {
      v5 = 4;
      return sub_1E169D60C(&v5);
    }
  }

  return result;
}

uint64_t sub_1E1472D58()
{
  if (qword_1EE1D27B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1EE215468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (*(v0 + 112) == 1)
  {
    v3 = *(v0 + 128);
    v4 = *(v3 + 105);
    *(v3 + 105) = 0;
    if (v4 == 1 && *(v3 + 104) == 1)
    {
      v5 = 4;
      return sub_1E169D60C(&v5);
    }
  }

  return result;
}

uint64_t sub_1E1472EF4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1E1452D6C();
    v2 = sub_1E1AF6D0C();

    return v2 & 1;
  }

  return result;
}

uint64_t sub_1E1472F50(int a1)
{
  v2 = v1;
  v35 = a1;
  v40 = sub_1E1AEFE6C();
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdvertRotationStrategy();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1D27B8 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF591C();
  v7 = __swift_project_value_buffer(v6, qword_1EE215468);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v9 = *(sub_1E1AF38EC() - 8);
  v10 = ((*(v9 + 80) + 32) & ~*(v9 + 80)) + 2 * *(v9 + 72);
  v11 = swift_allocObject();
  v43 = xmmword_1E1B02CD0;
  *(v11 + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF548C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *(swift_allocObject() + 16) = v43;
    sub_1E1AF38CC();
    sub_1E1AF382C();
    sub_1E1AF548C();
  }

  v36 = v8;
  v41 = Strong;
  v42 = v7;
  swift_beginAccess();
  sub_1E1383E78(v2 + 48, &v47);
  v13 = v48;
  v14 = v49;
  __swift_project_boxed_opaque_existential_1Tm(&v47, v48);
  v15 = (*(v14 + 8))(v13, v14);
  if (!v15)
  {
    __swift_destroy_boxed_opaque_existential_1(&v47);
    goto LABEL_14;
  }

  v16 = *(v15 + 40);

  __swift_destroy_boxed_opaque_existential_1(&v47);
  if (!v16)
  {
LABEL_14:
    *(swift_allocObject() + 16) = v43;
    sub_1E1AF38CC();
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }

  v34[0] = v10;
  v34[1] = v6;
  v17 = OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_strategy;
  swift_beginAccess();
  v18 = v37;
  sub_1E14750DC(v2 + v17, v37);
  v20 = *(v16 + 16);
  v19 = *(v16 + 24);

  v21._countAndFlagsBits = v20;
  v21._object = v19;
  LOBYTE(v20) = AdvertAppearanceTracker.isAdvertVisible(for:)(v21);

  v22 = sub_1E14745F8(v16);
  v23 = [objc_allocWithZone(MEMORY[0x1E69AC038]) init];
  LOBYTE(v19) = [v23 personalizedAds];

  v24 = v38;
  sub_1E1AEFE5C();
  LOBYTE(v23) = AdvertRotationStrategy.shouldPerformRotation(advertIsVisible:onScreenIntervalThreshold:offScreenIntervalThreshold:areAdsPersonalized:on:)(v20 & 1, v19, 1.0, v22);
  (*(v39 + 8))(v24, v40);
  sub_1E1474B14(v18);
  if ((v23 & 1) == 0)
  {
    *(swift_allocObject() + 16) = v43;
    sub_1E1AF38CC();
    sub_1E1AF382C();
LABEL_20:
    sub_1E1AF548C();
  }

  v25 = OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationOpportunities;
  result = swift_beginAccess();
  v27 = *(v2 + v25);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  *(v2 + v25) = v29;
  v30 = *(v2 + 96);
  v31 = *(v2 + 104);
  v32 = *(v30 + 16);
  if (v31 == v32)
  {
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
LABEL_19:
    sub_1E1308058(&v44, &qword_1ECEB4410);
    *(swift_allocObject() + 16) = v43;
    sub_1E1AF38CC();
    sub_1E1AF382C();
    goto LABEL_20;
  }

  if (v31 >= v32)
  {
    goto LABEL_22;
  }

  sub_1E1383E78(v30 + 48 * v31 + 32, &v44);
  *(v2 + 104) = v31 + 1;
  if (!*(&v45 + 1))
  {
    goto LABEL_19;
  }

  sub_1E1337DC8(&v44, &v47);
  v33 = v41;
  sub_1E1473690(v41, &v47, v35 & 1);

  return __swift_destroy_boxed_opaque_existential_1(&v47);
}

uint64_t sub_1E1473690(uint64_t a1, void *a2, int a3)
{
  v46 = a1;
  v6 = sub_1E1AEFE6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4408);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v37 - v11;
  swift_beginAccess();
  sub_1E1383E78(v3 + 48, v49);
  v12 = v50;
  v13 = v51;
  __swift_project_boxed_opaque_existential_1Tm(v49, v50);
  v14 = (*(v13 + 8))(v12, v13);
  if (v14)
  {
    v15 = v14;
    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v16);
    v18 = (*(v17 + 8))(v16, v17);
    if (v18)
    {
      v44 = v18;
      v39 = a3;
      v40 = a2;
      v41 = v9;
      v42 = v7;
      v43 = v6;
      if (qword_1EE1D27B8 != -1)
      {
        swift_once();
      }

      v38 = sub_1E1AF591C();
      v37 = __swift_project_value_buffer(v38, qword_1EE215468);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B070F0;
      sub_1E1AF38CC();
      sub_1E1AF382C();
      sub_1E1AF382C();
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      v21 = MEMORY[0x1E69E6158];
      v48 = MEMORY[0x1E69E6158];
      *&v47 = v20;
      *(&v47 + 1) = v19;

      sub_1E1AF38BC();
      sub_1E1308058(&v47, &qword_1ECEB2DF0);
      sub_1E1AF382C();
      v22 = v44;
      v24 = *(v44 + 16);
      v23 = *(v44 + 24);
      v48 = v21;
      *&v47 = v24;
      *(&v47 + 1) = v23;

      sub_1E1AF38BC();
      sub_1E1308058(&v47, &qword_1ECEB2DF0);
      sub_1E1AF548C();

      v25 = v3 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationPerforming;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v27 = v40;
      v28 = v39;
      v29 = v46;
      if (Strong)
      {
        v30 = *(v25 + 8);
        ObjectType = swift_getObjectType();
        v32 = type metadata accessor for ItemLayoutContext();
        v33 = v45;
        (*(*(v32 - 8) + 56))(v45, 1, 1, v32);
        v34 = ObjectType;
        v22 = v44;
        (*(v30 + 8))(v29, v49, v27, v33, v28 & 1, *(v3 + 24), v34, v30);
        swift_unknownObjectRelease();
        sub_1E1308058(v33, &qword_1ECEB4408);
      }

      sub_1E1383E78(v27, &v47);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1(v3 + 48);
      sub_1E1337DC8(&v47, (v3 + 48));
      swift_endAccess();
      (*(*v3 + 512))(v29, v49, v27, v28 & 1, *(v3 + 24));
      v35 = v41;
      sub_1E1AEFE5C();

      AdvertAppearanceTracker.advertDidLeaveView(for:on:)(v15, v35);

      AdvertAppearanceTracker.advertDidEnterView(for:on:)(v22, v35);

      (*(v42 + 8))(v35, v43);
    }

    else
    {
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1E1473C98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4408);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = v5 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    v18 = type metadata accessor for ItemLayoutContext();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    (*(v16 + 16))(a1, a2, a3, v13, a4 & 1, a5, ObjectType, v16);
    swift_unknownObjectRelease();
    return sub_1E1308058(v13, &qword_1ECEB4408);
  }

  return result;
}

void *sub_1E1473E0C(void *result)
{
  v2 = v1;
  if (*(v1 + 16) == 1)
  {
    v3 = *(v1 + 128);
    [result safeAreaInsets];
    v4 = *(v3 + 64);
    v11[0] = *(v3 + 48);
    v11[1] = v4;
    v12 = *(v3 + 80);
    *(v3 + 48) = v5;
    *(v3 + 56) = v6;
    *(v3 + 64) = v7;
    *(v3 + 72) = v8;
    *(v3 + 80) = 0;
    result = sub_1E169D590(v11);
  }

  v9 = *(v2 + 128);
  if (*(v9 + 105) == 1 && *(v9 + 104) == 1)
  {
    v10 = 2;
    return sub_1E169D60C(&v10);
  }

  return result;
}

uint64_t sub_1E1473EA0()
{
  v1 = *(v0 + 128);
  if (*(v1 + 105) == 1 && *(v1 + 104) == 1)
  {
    v3 = 2;
    return sub_1E169D60C(&v3);
  }

  return result;
}

uint64_t sub_1E1473F00(uint64_t a1, uint64_t a2)
{
  sub_1E147410C(v2 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_lifecycleMetricsReporter, v7);
  v4 = v8;
  if (!v8)
  {
    return sub_1E1308058(v7, &qword_1ECEB24F8);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1Tm(v7, v8);
  (*(v5 + 32))(a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t AdvertRotationController.deinit()
{

  MEMORY[0x1E6901750](v0 + 32);

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  sub_1E1474B14(v0 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_strategy);
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationPerforming);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_lifecycleMetricsReporter, &qword_1ECEB24F8);
  return v0;
}

uint64_t AdvertRotationController.__deallocating_deinit()
{
  AdvertRotationController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E147409C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationOpportunities;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1E147410C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AdvertRotationController()
{
  result = qword_1EE1EBAE8;
  if (!qword_1EE1EBAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14741C8()
{
  if (qword_1EE1D27B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1EE215468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (*(v0 + 112) == 1)
  {
    swift_beginAccess();
    sub_1E1383E78(v0 + 48, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    v5 = (*(v4 + 8))(v3, v4);
    if (!v5)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v9);
    swift_unknownObjectWeakAssign();
    sub_1E147410C(v0 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_lifecycleMetricsReporter, v9);
    v7 = v10;
    if (v10)
    {
      v8 = v11;
      __swift_project_boxed_opaque_existential_1Tm(v9, v10);
      (*(v8 + 24))(v6, v7, v8);

      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    return sub_1E1308058(v9, &qword_1ECEB24F8);
  }

  return result;
}

uint64_t sub_1E1474438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1E147410C(v4 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_lifecycleMetricsReporter, v17);
  v8 = v18;
  if (v18)
  {
    v9 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    (*(v9 + 40))(a1, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1E1308058(v17, &qword_1ECEB24F8);
  }

  v10 = v4 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_strategy;
  swift_beginAccess();
  v11 = v10 + *(type metadata accessor for AdvertRotationStrategy() + 24);
  sub_1E1308058(v11, &qword_1ECEB4418);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4400);
  v13 = *(v12 + 48);
  v14 = sub_1E1AEFE6C();
  v15 = *(*(v14 - 8) + 16);
  v15(v11, a2, v14);
  v15(v11 + v13, a3, v14);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  return swift_endAccess();
}

double sub_1E14745F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 16) && (v2 = sub_1E13018F8(0xD00000000000001DLL, 0x80000001E1B5FE60), (v3 & 1) != 0) && (sub_1E137A5C4(*(v1 + 56) + 32 * v2, v6), (swift_dynamicCast() & 1) != 0) && v5 >= 1)
  {
    return (v5 / 0x3E8uLL);
  }

  else
  {
    return 1.2;
  }
}

uint64_t sub_1E14746BC(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_1E1AEFE6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v12 = *a2;
  v13 = *a3;
  swift_beginAccess();
  sub_1E1383E78(v4 + 48, v26);
  v14 = v27;
  v15 = v28;
  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  v16 = (*(v15 + 8))(v14, v15);
  if (!v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v17 = v16;
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_1E147410C(v4 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_lifecycleMetricsReporter, v26);
  v18 = v27;
  if (v27)
  {
    v19 = v28;
    __swift_project_boxed_opaque_existential_1Tm(v26, v27);
    v25 = v23;
    v24 = v12;
    (*(v19 + 48))(v17, &v25, &v24, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_1E1308058(v26, &qword_1ECEB24F8);
  }

  sub_1E1AEFE5C();

  if (v12)
  {
    AdvertAppearanceTracker.advertDidEnterView(for:on:)(v17, v11);
  }

  else
  {
    AdvertAppearanceTracker.advertDidLeaveView(for:on:)(v17, v11);
  }

  if (v13 != 3)
  {
    if (v13 != 2)
    {
      goto LABEL_21;
    }

    v21 = v23 <= 1 || v23 == 4;
    if (!v21 || v12 < 2)
    {
      goto LABEL_21;
    }

    v22 = 0;
    goto LABEL_20;
  }

  if (v12 >= 2)
  {
    v22 = 1;
LABEL_20:
    sub_1E1472F50(v22);
  }

LABEL_21:

  return (*(v9 + 8))(v11, v8);
}

void sub_1E1474924()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E1452D6C();
    v4 = sub_1E1AF6D0C();

    if (v4)
    {
      if (qword_1EE1D27B8 != -1)
      {
        swift_once();
      }

      v5 = sub_1E1AF591C();
      __swift_project_value_buffer(v5, qword_1EE215468);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF38CC();
      sub_1E1AF382C();
      sub_1E1AF548C();

      if (*(v1 + 112) == 1)
      {
        swift_unknownObjectWeakAssign();
        v6 = *(v1 + 128);
        *(v6 + 24) = 0;
        swift_unknownObjectWeakAssign();
        *(v6 + 40) = 0;
        swift_unknownObjectWeakAssign();
        v7 = 1;
        sub_1E169D60C(&v7);
        *(v6 + 81) = 4;
      }
    }
  }
}

uint64_t sub_1E1474B14(uint64_t a1)
{
  v2 = type metadata accessor for AdvertRotationStrategy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1474B78()
{
  result = type metadata accessor for AdvertRotationStrategy();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1E14750DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvertRotationStrategy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

AppStoreKit::ProductPageTheme_optional __swiftcall ProductPageTheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ProductPageTheme.rawValue.getter()
{
  v1 = 0x7265666E69;
  v2 = 0x65676E61726FLL;
  if (*v0 != 2)
  {
    v2 = 0x6574696877;
  }

  if (*v0)
  {
    v1 = 1702194274;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E1475210()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E14752C0()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E147535C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1475414(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7265666E69;
  v4 = 0xE600000000000000;
  v5 = 0x65676E61726FLL;
  if (*v1 != 2)
  {
    v5 = 0x6574696877;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1702194274;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t ProductPageExpandedOfferDetails.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductPageExpandedOfferDetails.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *ProductPageExpandedOfferDetails.__allocating_init(title:subtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *ProductPageExpandedOfferDetails.init(title:subtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t ProductPageExpandedOfferDetails.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProductPageExpandedOfferDetails.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ProductPageExpandedOfferDetails.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v28 = a2;
  v26 = *v2;
  v27 = v3;
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v15 = v14;
  v16 = *(v7 + 8);
  v16(v12, v6);
  if (v15)
  {
    v4[2] = v13;
    v4[3] = v15;
    sub_1E1AF381C();
    v17 = sub_1E1AF37CC();
    v19 = v18;
    v20 = sub_1E1AF39DC();
    (*(*(v20 - 8) + 8))(v28, v20);
    v16(a1, v6);
    v16(v9, v6);
    v4[4] = v17;
    v4[5] = v19;
  }

  else
  {
    v21 = sub_1E1AF5A7C();
    sub_1E147A8B0(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v22 = 0x656C746974;
    v23 = v26;
    v22[1] = 0xE500000000000000;
    v22[2] = v23;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E69AB690], v21);
    swift_willThrow();
    v24 = sub_1E1AF39DC();
    (*(*(v24 - 8) + 8))(v28, v24);
    v16(a1, v6);
    type metadata accessor for ProductPageExpandedOfferDetails();
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t ProductPageExpandedOfferDetails.deinit()
{

  return v0;
}

uint64_t ProductPageExpandedOfferDetails.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1E147594C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ProductPageExpandedOfferDetails();
  v7 = swift_allocObject();
  result = ProductPageExpandedOfferDetails.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E1475A48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void *ProductPage.pageTopBackgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageTopBackgroundColor);
  v2 = v1;
  return v1;
}

void *ProductPage.pageBottomBackgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageBottomBackgroundColor);
  v2 = v1;
  return v1;
}

uint64_t ProductPage.askToBuy.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 8);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 16);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 24);
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 32);
  v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 40);
  v8 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 48);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1E1475BB8(v2, v3, v4, v5);
}

uint64_t sub_1E1475BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t ProductPage.mediaSectionTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_mediaSectionTitle);

  return v1;
}

double sub_1E1475C44@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 240);
  if (v2)
  {
    sub_1E134FD1C(v2 + 144, a1, &qword_1ECEB2DF0);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t ProductPage.regularPriceFormatted.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_regularPriceFormatted);

  return v1;
}

uint64_t ProductPage.updateBuyParams.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_updateBuyParams);

  return v1;
}

uint64_t sub_1E1475DC4(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_shelfMapping;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_1E13018F8(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1E1475E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_shelfMapping;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v7);
  *(v3 + v7) = 0x8000000000000000;
  sub_1E1599EB8(a3, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + v7) = v10;
  return swift_endAccess();
}

uint64_t sub_1E1475F1C()
{
  v12 = MEMORY[0x1E69E7CD0];
  v1 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_shelfMapping;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_1E1894228(&v11, *(*(*(v2 + 56) + ((v9 << 9) | (8 * v10))) + 16)))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v12;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ProductPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageMetrics;
  v4 = sub_1E1AF3C3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v246 = a2;
  v255 = a1;
  v207 = sub_1E1AF3C3C();
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v235 = v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v238 = v204 - v6;
  v240 = sub_1E1AF40DC();
  v239 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v217 = v204 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v218 = v204 - v9;
  v10 = sub_1E1AF39DC();
  v245 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v211 = v204 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v209 = v204 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v234 = v204 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v244 = v204 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v204 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v252 = v204 - v25;
  v26 = sub_1E1AF380C();
  v248 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v214 = v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v213 = v204 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v212 = v204 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v210 = v204 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v208 = v204 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v205 = v204 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v233 = v204 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v237 = v204 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v243 = v204 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = v204 - v46;
  v48 = MEMORY[0x1E69E7CC0];
  v241 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_media) = MEMORY[0x1E69E7CC0];
  v49 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_shelfMapping;
  v50 = sub_1E15A00E8(v48);
  v242 = v49;
  *(v3 + v49) = v50;
  sub_1E1AF381C();
  LOBYTE(v49) = sub_1E1AF370C();
  v215 = v27;
  v249 = *(v27 + 8);
  v250 = v27 + 8;
  v249(v47, v26);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_isComplete) = v49 & 1;
  v216 = v12;
  if (v49)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    v51 = swift_allocObject();
    *(v51 + 16) = v48;
    v257 = v51;
    if (qword_1EE1E3BC8 != -1)
    {
      swift_once();
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v52, qword_1EE1E3BD0);
    sub_1E1AF395C();
  }

  else
  {
    if (qword_1EE1E3BC8 != -1)
    {
      swift_once();
    }

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v53, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF396C();
  }

  v54 = v243;
  v55 = v252;
  (*(v245 + 32))(v252, v23, v10);
  v56 = type metadata accessor for Action();
  sub_1E1AF381C();
  v57 = static Action.tryToMakeInstance(byDeserializing:using:)(v54, v55);
  v254 = v10;
  v58 = v248;
  v59 = v249;
  (v249)(v54);
  v60 = v247;
  v232 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_shareAction;
  *(v247 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_shareAction) = v57;
  v61 = v60;
  sub_1E1AF381C();
  v62 = v252;
  v63 = static Action.tryToMakeInstance(byDeserializing:using:)(v54, v252);
  v59(v54, v58);
  v231 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_developerAction;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_developerAction) = v63;
  sub_1E1AF381C();
  v204[1] = v56;
  v64 = static Action.tryToMakeInstance(byDeserializing:using:)(v54, v62);
  v59(v54, v58);
  v230 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_ageRatingAction;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_ageRatingAction) = v64;
  sub_1E1AF381C();
  sub_1E147A76C();
  sub_1E1AF369C();
  v59(v54, v58);
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberStyle) = v257;
  v65 = v61;
  v66 = type metadata accessor for Artwork();
  sub_1E1AF381C();
  v67 = *(v245 + 16);
  v253 = v245 + 16;
  v68 = v244;
  v69 = v252;
  v70 = v254;
  v67(v244, v252, v254);
  v71 = sub_1E147A8B0(&qword_1EE1E4BB8, 255, type metadata accessor for Artwork);
  v260 = v66;
  v256 = v71;
  sub_1E1AF464C();
  v229 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtwork;
  *(v65 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtwork) = v257;
  sub_1E1AF381C();
  v67(v68, v69, v70);
  sub_1E1AF464C();
  v228 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtworkForCompactDisplay;
  v72 = v65;
  *(v65 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtworkForCompactDisplay) = v257;
  type metadata accessor for Video();
  sub_1E1AF381C();
  v73 = v252;
  v67(v68, v252, v254);
  v251 = v67;
  sub_1E147A8B0(&qword_1EE1E52D0, 255, type metadata accessor for Video);
  v74 = v68;
  v75 = v254;
  sub_1E1AF464C();
  v227 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberVideo;
  *(v72 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberVideo) = v257;
  sub_1E1AF381C();
  v67(v74, v73, v75);
  sub_1E1AF464C();
  v226 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_logoArtwork;
  *(v72 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_logoArtwork) = v257;
  sub_1E1AF381C();
  v76 = v251;
  v251(v74, v73, v75);
  sub_1E1AF464C();
  v225 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_navigationBarIconArtwork;
  *(v72 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_navigationBarIconArtwork) = v257;
  sub_1E1AF381C();
  v76(v74, v73, v75);
  type metadata accessor for Badge();
  sub_1E147A8B0(&qword_1EE1E58C0, 255, type metadata accessor for Badge);
  v77 = sub_1E1AF630C();
  v224 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_badges;
  *(v72 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_badges) = v77;
  type metadata accessor for ProductPageExpandedOfferDetails();
  sub_1E1AF381C();
  v76(v74, v73, v75);
  sub_1E147A8B0(qword_1EE1E7CF0, v78, type metadata accessor for ProductPageExpandedOfferDetails);
  sub_1E1AF464C();
  v223 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_expandedOfferDetails;
  *(v72 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_expandedOfferDetails) = v257;
  sub_1E1AF381C();
  v79 = sub_1E1AF37CC();
  v81 = v80;
  v82 = v248;
  v83 = v249;
  v249(v54, v248);
  v84 = (v72 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_regularPriceFormatted);
  *v84 = v79;
  v84[1] = v81;
  v222 = v84;
  sub_1E1AF381C();
  sub_1E147A7C0();
  sub_1E1AF369C();
  v83(v54, v82);
  *(v72 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_theme) = v257;
  sub_1E1AF381C();
  v85 = sub_1E1AF36EC();
  LOBYTE(v81) = v86;
  v83(v54, v82);
  v87 = v72 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_externalVersionIdentifier;
  *v87 = v85;
  *(v87 + 8) = v81 & 1;
  sub_1E1AF381C();
  v88 = sub_1E1AF37CC();
  v90 = v89;
  v83(v54, v82);
  v91 = (v72 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_updateBuyParams);
  *v91 = v88;
  v91[1] = v90;
  v221 = v91;
  sub_1E1AF381C();
  v92 = JSONObject.appStoreColor.getter();
  v83(v54, v82);
  v220 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageTopBackgroundColor;
  *(v72 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageTopBackgroundColor) = v92;
  sub_1E1AF381C();
  v93 = JSONObject.appStoreColor.getter();
  v83(v54, v82);
  v219 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageBottomBackgroundColor;
  *(v72 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageBottomBackgroundColor) = v93;
  sub_1E1AF381C();
  LOBYTE(v93) = sub_1E1AF370C();
  v83(v54, v82);
  *(v72 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_hasDarkUserInterfaceStyle) = v93;
  sub_1E1AF381C();
  v94 = v244;
  v95 = v252;
  v96 = v254;
  v97 = v251;
  v251(v244, v252, v254);
  type metadata accessor for ProductMedia();
  sub_1E147A8B0(&qword_1EE1F5BB0, 255, type metadata accessor for ProductMedia);
  v98 = sub_1E1AF630C();
  v99 = v241;
  swift_beginAccess();
  *(v72 + v99) = v98;

  sub_1E1AF381C();
  v100 = v94;
  v101 = v94;
  v102 = v95;
  v103 = v95;
  v104 = v96;
  v97(v101, v102, v96);
  type metadata accessor for ProductPageSection();
  sub_1E147A8B0(qword_1EE1EF6B8, 255, type metadata accessor for ProductPageSection);
  v105 = v100;
  v106 = sub_1E1AF630C();
  sub_1E1AF381C();
  v251(v100, v103, v104);
  v260 = sub_1E1AF630C();
  v107 = v237;
  sub_1E1AF381C();
  v108 = v238;
  sub_1E1AF368C();
  v249(v107, v248);
  v109 = v239;
  v110 = v240;
  if ((v239[6])(v108, 1, v240) == 1)
  {
    sub_1E1308058(v108, &qword_1ECEB2B28);
    v111 = sub_1E15A00E8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v112 = v218;
    (v109[4])(v218, v108, v110);
    (v109[2])(v217, v112, v110);
    v251(v105, v252, v254);
    type metadata accessor for Shelf();
    sub_1E147A8B0(&qword_1EE1E5488, 255, type metadata accessor for Shelf);
    v111 = sub_1E1AF5C9C();
    (v109[1])(v112, v110);
  }

  v113 = v247;
  v114 = v242;
  swift_beginAccess();
  *(v113 + v114) = v111;

  swift_beginAccess();
  v256 = *(v113 + v114);
  v257 = MEMORY[0x1E69E7CC0];
  if (v106 >> 62)
  {
    goto LABEL_55;
  }

  v115 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
  swift_bridgeObjectRetain_n();
  v116 = MEMORY[0x1E69E7CC0];
  if (v115)
  {
    v117 = 0;
    v113 = v106 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v106 & 0xC000000000000001) != 0)
      {
        v118 = MEMORY[0x1E68FFD80](v117, v106);
        v119 = v117 + 1;
        if (__OFADD__(v117, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          v123 = v257;
          v113 = v247;
          v116 = MEMORY[0x1E69E7CC0];
          goto LABEL_33;
        }
      }

      else
      {
        if (v117 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v115 = sub_1E1AF71CC();
          goto LABEL_13;
        }

        v118 = *(v106 + 8 * v117 + 32);

        v119 = v117 + 1;
        if (__OFADD__(v117, 1))
        {
          goto LABEL_30;
        }
      }

      if (*(v118 + 16) > 2u)
      {
        break;
      }

      v120 = sub_1E1AF74AC();

      if ((v120 & 1) == 0)
      {
        goto LABEL_27;
      }

      v121 = *(v118 + 32);
      if (v121)
      {
        goto LABEL_25;
      }

LABEL_15:

LABEL_16:
      ++v117;
      if (v119 == v115)
      {
        goto LABEL_31;
      }
    }

    v121 = *(v118 + 32);
    if (!v121)
    {
      goto LABEL_15;
    }

LABEL_25:
    if (*(v256 + 16))
    {
      sub_1E13018F8(*(v118 + 24), v121);
      if (v122)
      {
LABEL_27:
        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  v123 = MEMORY[0x1E69E7CC0];
LABEL_33:

  v240 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering;
  *(v113 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering) = v123;
  v257 = v116;
  v124 = v260;
  if (v260 >> 62)
  {
    v125 = sub_1E1AF71CC();
    v124 = v260;
    if (v125)
    {
      goto LABEL_35;
    }

LABEL_57:
    v133 = MEMORY[0x1E69E7CC0];
    goto LABEL_58;
  }

  v125 = *((v260 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v125)
  {
    goto LABEL_57;
  }

LABEL_35:
  v106 = 0;
  v126 = v124 & 0xC000000000000001;
  v127 = v124 & 0xFFFFFFFFFFFFFF8;
  v113 = v256;
  while (v126)
  {
    v128 = MEMORY[0x1E68FFD80](v106, v124);
    v129 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      goto LABEL_51;
    }

LABEL_41:
    if (*(v128 + 16) > 2u)
    {

      v131 = *(v128 + 32);
      if (!v131)
      {
        goto LABEL_36;
      }

LABEL_46:
      if (*(v113 + 16))
      {
        sub_1E13018F8(*(v128 + 24), v131);
        if (v132)
        {
LABEL_48:
          sub_1E1AF70BC();
          sub_1E1AF70FC();
          sub_1E1AF710C();
          sub_1E1AF70CC();
          goto LABEL_37;
        }
      }

      goto LABEL_36;
    }

    v130 = sub_1E1AF74AC();

    if ((v130 & 1) == 0)
    {
      goto LABEL_48;
    }

    v131 = *(v128 + 32);
    if (v131)
    {
      goto LABEL_46;
    }

LABEL_36:

LABEL_37:
    ++v106;
    v124 = v260;
    if (v129 == v125)
    {
      goto LABEL_52;
    }
  }

  if (v106 >= *(v127 + 16))
  {
    goto LABEL_54;
  }

  v128 = *(v124 + 8 * v106 + 32);

  v129 = v106 + 1;
  if (!__OFADD__(v106, 1))
  {
    goto LABEL_41;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  v133 = v257;
  v113 = v247;
LABEL_58:

  v260 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_notPurchasedOrdering;
  *(v113 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_notPurchasedOrdering) = v133;
  v134 = v113 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy;
  *v134 = 0u;
  *(v134 + 16) = 0u;
  *(v134 + 32) = 0u;
  *(v134 + 48) = 0;
  v135 = v243;
  sub_1E1AF381C();
  v136 = sub_1E1AF37CC();
  v138 = v137;
  v139 = v248;
  v140 = v249;
  v249(v135, v248);
  v141 = (v113 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_mediaSectionTitle);
  *v141 = v136;
  v141[1] = v138;
  v239 = v141;
  sub_1E1AF381C();
  v251(v234, v246, v254);
  v142 = v235;
  v143 = v236;
  sub_1E1AF3BAC();
  if (!v143)
  {
    (*(v206 + 32))(v113 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageMetrics, v142, v207);
    type metadata accessor for PageRenderMetricsEvent();
    v260 = 0;
    sub_1E1AF381C();
    v146 = v244;
    v147 = v246;
    v148 = v251;
    v251(v244, v246, v254);
    sub_1E147A8B0(&qword_1EE1EC280, 255, type metadata accessor for PageRenderMetricsEvent);
    sub_1E1AF464C();
    *(v113 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageRenderEvent) = v257;
    type metadata accessor for OfferDisplayProperties();
    sub_1E1AF381C();
    v149 = v147;
    v150 = v254;
    v148(v146, v149, v254);
    sub_1E147A8B0(&qword_1EE1EC410, 255, type metadata accessor for OfferDisplayProperties);
    sub_1E1AF464C();
    *(v113 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_titleOfferDisplayProperties) = v257;
    v151 = v205;
    sub_1E1AF381C();
    v152 = v209;
    v153 = v246;
    v251(v209, v246, v150);
    type metadata accessor for Banner();
    swift_allocObject();
    v154 = v260;
    v155 = Banner.init(deserializing:using:)(v151, v152);
    v156 = v154;
    if (v154)
    {

      v155 = 0;
      v156 = 0;
    }

    v157 = v249;
    v158 = v211;
    v159 = v208;
    *(v113 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_banner) = v155;
    sub_1E1AF381C();
    v251(v158, v153, v254);
    swift_allocObject();
    v160 = Banner.init(deserializing:using:)(v159, v158);
    v161 = v156;
    if (v156)
    {

      v160 = 0;
      v161 = 0;
    }

    v162 = v212;
    v163 = v210;
    *(v113 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_secondaryBanner) = v160;
    sub_1E1AF381C();
    v164 = static Action.makeInstance(byDeserializing:using:)(v163, v153);
    if (v161)
    {

      v165 = 0;
    }

    else
    {
      v165 = v164;
    }

    v139 = v248;
    v157(v163, v248);
    *(v247 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_fullProductFetchedAction) = v165;
    v166 = v255;
    sub_1E1AF381C();
    v167 = static Action.makeInstance(byDeserializing:using:)(v162, v153);
    v168 = v153;
    v260 = 0;
    v169 = v249;
    v249(v162, v139);
    v170 = v247;
    *(v247 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_appPromotionDetailPageAction) = v167;
    type metadata accessor for PageRefreshPolicy(0);
    sub_1E1AF381C();
    v171 = v168;
    v172 = v254;
    v251(v244, v171, v254);
    sub_1E147A8B0(&qword_1EE1F0EA0, 255, type metadata accessor for PageRefreshPolicy);
    sub_1E1AF464C();
    *(v170 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageRefreshPolicy) = v257;
    v173 = v213;
    sub_1E1AF381C();
    LOBYTE(v167) = sub_1E1AF370C();
    v169(v173, v139);
    *(v170 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_alwaysAllowReviews) = v167 & 1;
    v174 = v214;
    (*(v215 + 16))(v214, v166, v139);
    v175 = v216;
    v176 = v252;
    v251(v216, v252, v172);
    v177 = v260;
    v178 = Lockup.init(deserializing:using:)(v174, v175);
    if (v177)
    {
      swift_bridgeObjectRelease_n();
      v179 = *(v245 + 8);
      v179(v246, v172);
      v249(v166, v139);
      v179(v176, v172);
      return v139;
    }

    v139 = v178;
    v260 = 0;
    v180 = v246;
    if (*(v178 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_isComplete) == 1)
    {
      v181 = qword_1EE1E3BC8;

      if (v181 != -1)
      {
        swift_once();
      }

      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
      __swift_project_value_buffer(v182, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
      sub_1E1AF39EC();
      if (v257)
      {

        sub_1E15F0974();
      }
    }

    else
    {
    }

    v183 = *(v139 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_banner);
    if (v183)
    {
      v184 = *(v139 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_secondaryBanner);
      if (v184)
      {
        v185 = qword_1EE1D2778;

        if (v185 != -1)
        {
          swift_once();
        }

        v253 = sub_1E1AF591C();
        v251 = __swift_project_value_buffer(v253, qword_1EE1D2780);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B04930;
        sub_1E1AF38CC();
        sub_1E1AF382C();
        v187 = *(v183 + 16);
        v186 = *(v183 + 24);
        v259 = MEMORY[0x1E69E6158];
        v257 = v187;
        v258 = v186;

        sub_1E1AF38BC();
        sub_1E1308058(&v257, &qword_1ECEB2DF0);
        sub_1E1AF382C();
        v189 = *(v184 + 16);
        v188 = *(v184 + 24);
        v259 = MEMORY[0x1E69E6158];
        v257 = v189;
        v258 = v188;

        sub_1E1AF38BC();
        sub_1E1308058(&v257, &qword_1ECEB2DF0);
        sub_1E1AF548C();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v195 = qword_1EE1D2778;

        if (v195 != -1)
        {
          swift_once();
        }

        v196 = sub_1E1AF591C();
        __swift_project_value_buffer(v196, qword_1EE1D2780);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B03760;
        sub_1E1AF38CC();
        sub_1E1AF382C();
        v198 = *(v183 + 16);
        v197 = *(v183 + 24);
        v259 = MEMORY[0x1E69E6158];
        v257 = v198;
        v258 = v197;

        sub_1E1AF38BC();
        sub_1E1308058(&v257, &qword_1ECEB2DF0);
        sub_1E1AF548C();
        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
      v190 = *(v139 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_secondaryBanner);
      if (!v190)
      {

        v199 = v255;
        goto LABEL_88;
      }

      v191 = qword_1EE1D2778;

      if (v191 != -1)
      {
        swift_once();
      }

      v192 = sub_1E1AF591C();
      __swift_project_value_buffer(v192, qword_1EE1D2780);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B03760;
      sub_1E1AF38CC();
      sub_1E1AF382C();
      v194 = *(v190 + 16);
      v193 = *(v190 + 24);
      v259 = MEMORY[0x1E69E6158];
      v257 = v194;
      v258 = v193;

      sub_1E1AF38BC();
      sub_1E1308058(&v257, &qword_1ECEB2DF0);
      sub_1E1AF548C();
      swift_bridgeObjectRelease_n();
    }

    v199 = v255;
    v180 = v246;
LABEL_88:
    v200 = v248;

    v201 = *(v245 + 8);
    v202 = v254;
    v201(v180, v254);
    v249(v199, v200);
    v201(v252, v202);

    return v139;
  }

  swift_bridgeObjectRelease_n();
  v144 = *(v245 + 8);
  v145 = v254;
  v144(v246, v254);
  v140(v255, v139);
  v144(v252, v145);

  sub_1E147A814(*v134, *(v134 + 8), *(v134 + 16), *(v134 + 24));

  type metadata accessor for ProductPage();
  swift_deallocPartialClassInstance();
  return v139;
}

uint64_t ProductPage.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:buttonAction:offerDisplayProperties:titleOfferDisplayProperties:clickAction:shareAction:developerAction:ageRatingAction:uberArtwork:uberArtworkForCompactDisplay:uberVideo:uberStyle:logoArtwork:navigationBarIconArtwork:media:badges:isComplete:pageTopBackgroundColor:pageBottomBackgroundColor:hasDarkUserInterfaceStyle:purchasedOrdering:notPurchasedOrdering:shelfMapping:askToBuy:mediaSectionTitle:pageMetrics:pageRenderEvent:expandedOfferDetails:regularPriceFormatted:theme:externalVersionIdentifier:updateBuyParams:banner:secondaryBanner:descriptionHeader:description:fullProductFetchedAction:appPromotionDetailPageAction:pageRefreshPolicy:alwaysAllowReviews:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, void *a30, void *a31, unsigned __int8 a32, uint64_t a33, uint64_t a34, unint64_t a35, __int128 *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unsigned __int8 *a44, uint64_t a45, unsigned __int8 a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unsigned __int8 a57)
{
  v149 = a8;
  v148 = a7;
  v147 = a6;
  v146 = a5;
  v145 = a4;
  v144 = a3;
  v143 = a2;
  v135 = a57;
  v142 = a56;
  v141 = a55;
  v140 = a54;
  v139 = a50;
  v154 = a49;
  v133 = a48;
  v132 = a47;
  v131 = a46;
  v130 = a45;
  v129 = a42;
  v151 = a41;
  v150 = a40;
  v163 = a39;
  v128 = a38;
  v127 = a37;
  v161 = a31;
  v162 = a30;
  v160 = a23;
  v164 = a22;
  v156 = a16;
  v126 = a34;
  v125 = a33;
  LODWORD(v124) = a32;
  LODWORD(v122) = a29;
  v121 = a28;
  v158 = a26;
  v120 = a27;
  v123 = a43;
  v119 = a35;
  v157 = a25;
  v138 = a53;
  v109 = sub_1E1AEFEAC();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v107 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v155 = &v107 - v60;

  v61 = swift_allocObject();
  v62 = a1[1];
  v137 = *a1;
  v136 = v62;
  v63 = *a24;
  v64 = *a36;
  v115 = a36[1];
  v116 = v64;
  v65 = *(a36 + 5);
  v114 = *(a36 + 4);
  v113 = v65;
  v112 = *(a36 + 6);
  v117 = *a44;
  v66 = MEMORY[0x1E69E7CC0];
  v67 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
  v68 = (v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_shelfMapping);
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_media) = MEMORY[0x1E69E7CC0];
  v69 = sub_1E15A00E8(v66);
  v111 = v68;
  v110 = v69;
  *v68 = v69;
  v159 = a18;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_shareAction) = a18;
  v70 = v157;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_developerAction) = a19;
  v71 = v119;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_ageRatingAction) = a20;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtwork) = a21;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtworkForCompactDisplay) = v164;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberVideo) = v160;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberStyle) = v63;
  v72 = v158;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_logoArtwork) = v70;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_navigationBarIconArtwork) = v72;
  swift_beginAccess();
  *(v61 + v67) = v120;
  v73 = v162;
  v74 = v121;
  if (!v121)
  {
    v74 = v66;
  }

  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_badges) = v74;
  v75 = v161;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_isComplete) = v122;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageTopBackgroundColor) = v73;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageBottomBackgroundColor) = v75;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_hasDarkUserInterfaceStyle) = v124;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering) = v125;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_notPurchasedOrdering) = v126;
  v153 = a20;
  v152 = a21;
  v134 = a19;
  v76 = v75;

  v77 = v73;
  if (!v71)
  {
    v71 = sub_1E15A00E8(MEMORY[0x1E69E7CC0]);
  }

  v126 = a17;
  v125 = a15;
  v124 = a14;
  v122 = a13;
  v119 = a12;
  v118 = a11;
  v121 = a10;
  v120 = a9;
  v78 = v111;
  swift_beginAccess();
  *v78 = v71;

  v79 = v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy;
  v80 = v115;
  *v79 = v116;
  *(v79 + 16) = v80;
  v81 = v113;
  *(v79 + 32) = v114;
  *(v79 + 40) = v81;
  *(v79 + 48) = v112;
  v82 = (v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_mediaSectionTitle);
  v83 = v128;
  *v82 = v127;
  v82[1] = v83;
  v84 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageMetrics;
  v85 = sub_1E1AF3C3C();
  v127 = *(v85 - 8);
  v86 = *(v127 + 16);
  v128 = v85;
  v86(v61 + v84, v163);
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageRenderEvent) = v150;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_expandedOfferDetails) = v151;
  v87 = (v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_regularPriceFormatted);
  v88 = v123;
  *v87 = v129;
  v87[1] = v88;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_theme) = v117;
  v89 = v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_externalVersionIdentifier;
  *v89 = v130;
  *(v89 + 8) = v131 & 1;
  v90 = (v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_updateBuyParams);
  v91 = v133;
  *v90 = v132;
  v90[1] = v91;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_titleOfferDisplayProperties) = v156;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_banner) = v154;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_secondaryBanner) = v139;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_fullProductFetchedAction) = v140;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_appPromotionDetailPageAction) = v141;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageRefreshPolicy) = v142;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_alwaysAllowReviews) = v135 & 1;
  v92 = sub_1E1AF46DC();
  memset(v170, 0, sizeof(v170));
  v171 = 0;
  (*(*(v92 - 8) + 56))(v155, 1, 1, v92);
  *(v61 + 424) = 4;
  sub_1E134FD1C(v170, &v167, &unk_1ECEB5670);
  if (*(&v168 + 1))
  {
    v93 = v168;
    *(v61 + 448) = v167;
    *(v61 + 464) = v93;
    *(v61 + 480) = v169;
  }

  else
  {

    v94 = v107;
    sub_1E1AEFE9C();
    v95 = sub_1E1AEFE7C();
    v97 = v96;
    (*(v108 + 8))(v94, v109);
    v165 = v95;
    v166 = v97;
    sub_1E1AF6F6C();
    sub_1E1308058(&v167, &unk_1ECEB5670);
  }

  v98 = v155;
  sub_1E134FD1C(v155, v61 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);

  v99 = v136;
  *(v61 + 16) = v137;
  *(v61 + 24) = v99;
  v100 = v144;
  *(v61 + 32) = v143;
  *(v61 + 40) = v100;
  *(v61 + 48) = v145;
  *(v61 + 56) = 0;
  v101 = v119;
  *(v61 + 64) = v118;
  *(v61 + 72) = v101;
  v102 = v147;
  *(v61 + 80) = v146;
  *(v61 + 88) = v102;
  v103 = v149;
  *(v61 + 96) = v148;
  *(v61 + 104) = v103;
  v104 = v121;
  *(v61 + 112) = v120;
  *(v61 + 120) = v104;
  *(v61 + 128) = 0;
  *(v61 + 136) = 2;
  *(v61 + 144) = 0;
  *(v61 + 152) = 0;
  *(v61 + 184) = 0u;
  *(v61 + 200) = 0u;
  *(v61 + 216) = 0u;
  *(v61 + 376) = 0u;
  *(v61 + 392) = 0u;
  *(v61 + 408) = 0x8000;
  *(v61 + 360) = 0;
  *(v61 + 416) = 0;
  *(v61 + 432) = MEMORY[0x1E69E7CD0];
  *(v61 + 160) = v122;
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v61 + 248) = 0;
  *(v61 + 256) = 0;
  v105 = v125;
  *(v61 + 232) = v124;
  *(v61 + 240) = v105;
  *(v61 + 264) = v126;
  *(v61 + 272) = 0u;
  *(v61 + 288) = 0u;
  *(v61 + 304) = 0u;
  *(v61 + 320) = 0u;
  *(v61 + 336) = 0;

  (*(v127 + 8))(v163, v128);
  sub_1E1308058(v98, &unk_1ECEB1770);
  sub_1E1308058(v170, &unk_1ECEB5670);
  *(v61 + 344) = MEMORY[0x1E69E7CC0];
  *(v61 + 352) = 0;
  *(v61 + 440) = 0;
  *(v61 + 368) = 0;
  return v61;
}

uint64_t ProductPage.init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:buttonAction:offerDisplayProperties:titleOfferDisplayProperties:clickAction:shareAction:developerAction:ageRatingAction:uberArtwork:uberArtworkForCompactDisplay:uberVideo:uberStyle:logoArtwork:navigationBarIconArtwork:media:badges:isComplete:pageTopBackgroundColor:pageBottomBackgroundColor:hasDarkUserInterfaceStyle:purchasedOrdering:notPurchasedOrdering:shelfMapping:askToBuy:mediaSectionTitle:pageMetrics:pageRenderEvent:expandedOfferDetails:regularPriceFormatted:theme:externalVersionIdentifier:updateBuyParams:banner:secondaryBanner:descriptionHeader:description:fullProductFetchedAction:appPromotionDetailPageAction:pageRefreshPolicy:alwaysAllowReviews:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, void *a30, void *a31, unsigned __int8 a32, uint64_t a33, uint64_t a34, unint64_t a35, __int128 *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unsigned __int8 *a44, uint64_t a45, unsigned __int8 a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unsigned __int8 a57)
{
  v58 = v57;
  v148 = a8;
  v147 = a7;
  v145 = a6;
  v144 = a5;
  v143 = a4;
  v142 = a3;
  v141 = a2;
  LODWORD(v138) = a57;
  v168 = a56;
  v167 = a55;
  v158 = a54;
  v164 = a50;
  v156 = a49;
  v137 = a48;
  v136 = a47;
  v135 = a46;
  v134 = a45;
  v131 = a42;
  v155 = a41;
  v153 = a40;
  v157 = a39;
  v123 = a38;
  v122 = a37;
  v165 = a31;
  v166 = a30;
  v163 = a23;
  v160 = a22;
  v152 = a16;
  v133 = a34;
  v132 = a33;
  LODWORD(v130) = a32;
  LODWORD(v129) = a29;
  v127 = a28;
  v161 = a26;
  v151 = a27;
  v128 = a43;
  v126 = a35;
  v159 = a25;
  v154 = a53;
  v114 = sub_1E1AEFEAC();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v111 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v162 = &v111 - v62;

  v63 = a1[1];
  v140 = *a1;
  v139 = v63;
  v64 = *a24;
  v65 = *a36;
  v119 = a36[1];
  v120 = v65;
  v66 = *(a36 + 5);
  v118 = *(a36 + 4);
  v117 = v66;
  v116 = *(a36 + 6);
  v121 = *a44;
  v67 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
  v68 = MEMORY[0x1E69E7CC0];
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_media) = MEMORY[0x1E69E7CC0];
  v69 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_shelfMapping;
  v70 = sub_1E15A00E8(v68);
  v115 = v69;
  *(v58 + v69) = v70;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_shareAction) = a18;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_developerAction) = a19;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_ageRatingAction) = a20;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtwork) = a21;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtworkForCompactDisplay) = v160;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberVideo) = v163;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberStyle) = v64;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_logoArtwork) = v159;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_navigationBarIconArtwork) = v161;
  swift_beginAccess();
  v125 = *(v58 + v67);
  *(v58 + v67) = v151;
  v71 = v126;

  v146 = a18;

  v149 = a19;

  v150 = a20;

  v151 = a21;

  v72 = v127;
  if (!v127)
  {
    v72 = MEMORY[0x1E69E7CC0];
  }

  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_badges) = v72;
  v73 = v165;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_isComplete) = v129;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageTopBackgroundColor) = v166;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageBottomBackgroundColor) = v73;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_hasDarkUserInterfaceStyle) = v130;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering) = v132;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_notPurchasedOrdering) = v133;
  v74 = v73;
  v75 = v166;
  if (!v71)
  {
    v71 = sub_1E15A00E8(MEMORY[0x1E69E7CC0]);
  }

  v133 = a17;
  v132 = a15;
  v130 = a14;
  v129 = a13;
  v125 = a12;
  v124 = a11;
  v127 = a10;
  v126 = a9;
  v76 = v115;
  swift_beginAccess();
  *(v58 + v76) = v71;

  v77 = v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy;
  v78 = v119;
  *v77 = v120;
  *(v77 + 16) = v78;
  v79 = v117;
  *(v77 + 32) = v118;
  *(v77 + 40) = v79;
  *(v77 + 48) = v116;
  v80 = (v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_mediaSectionTitle);
  v81 = v123;
  *v80 = v122;
  v80[1] = v81;
  v82 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageMetrics;
  v83 = sub_1E1AF3C3C();
  v84 = *(v83 - 8);
  v85 = v58 + v82;
  v86 = v83;
  v87 = v157;
  (*(v84 + 16))(v85, v157, v83);
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageRenderEvent) = v153;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_expandedOfferDetails) = v155;
  v88 = (v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_regularPriceFormatted);
  v89 = v128;
  *v88 = v131;
  v88[1] = v89;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_theme) = v121;
  v90 = v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_externalVersionIdentifier;
  *v90 = v134;
  *(v90 + 8) = v135 & 1;
  v91 = (v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_updateBuyParams);
  v92 = v137;
  *v91 = v136;
  v91[1] = v92;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_titleOfferDisplayProperties) = v152;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_banner) = v156;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_secondaryBanner) = v164;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_fullProductFetchedAction) = v158;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_appPromotionDetailPageAction) = v167;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageRefreshPolicy) = v168;
  *(v58 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_alwaysAllowReviews) = v138 & 1;
  v93 = sub_1E1AF46DC();
  memset(v177, 0, sizeof(v177));
  v178 = 0;
  (*(*(v93 - 8) + 56))(v162, 1, 1, v93);
  *(v58 + 424) = 4;
  sub_1E134FD1C(v177, &v171, &unk_1ECEB5670);
  if (*(&v172 + 1))
  {
    v174 = v171;
    v175 = v172;
    v176 = v173;
  }

  else
  {

    v138 = v84;
    v94 = v87;
    v95 = v86;
    v96 = v112;
    sub_1E1AEFE9C();
    v97 = sub_1E1AEFE7C();
    v99 = v98;
    v100 = v96;
    v86 = v95;
    v87 = v94;
    v84 = v138;
    (*(v113 + 8))(v100, v114);
    v169 = v97;
    v170 = v99;
    sub_1E1AF6F6C();
    sub_1E1308058(&v171, &unk_1ECEB5670);
  }

  v101 = v175;
  *(v58 + 448) = v174;
  *(v58 + 464) = v101;
  *(v58 + 480) = v176;
  v102 = v162;
  sub_1E134FD1C(v162, v58 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);
  v103 = v139;
  *(v58 + 16) = v140;
  *(v58 + 24) = v103;
  v104 = v142;
  *(v58 + 32) = v141;
  *(v58 + 40) = v104;
  *(v58 + 48) = v143;
  *(v58 + 56) = 0;
  v105 = v125;
  *(v58 + 64) = v124;
  *(v58 + 72) = v105;
  v106 = v145;
  *(v58 + 80) = v144;
  *(v58 + 88) = v106;
  v107 = v148;
  *(v58 + 96) = v147;
  *(v58 + 104) = v107;
  v108 = v127;
  *(v58 + 112) = v126;
  *(v58 + 120) = v108;
  *(v58 + 128) = 0;
  *(v58 + 136) = 2;
  *(v58 + 144) = 0;
  *(v58 + 152) = 0;
  *(v58 + 216) = 0u;
  *(v58 + 200) = 0u;
  *(v58 + 184) = 0u;
  *(v58 + 376) = 0u;
  *(v58 + 392) = 0u;
  *(v58 + 408) = 0x8000;
  *(v58 + 360) = 0;
  *(v58 + 416) = 0;
  *(v58 + 432) = MEMORY[0x1E69E7CD0];
  *(v58 + 160) = v129;
  *(v58 + 168) = 0;
  *(v58 + 176) = 0;
  *(v58 + 248) = 0;
  *(v58 + 256) = 0;
  v109 = v132;
  *(v58 + 232) = v130;
  *(v58 + 240) = v109;
  *(v58 + 264) = v133;
  *(v58 + 272) = 0u;
  *(v58 + 288) = 0u;
  *(v58 + 304) = 0u;
  *(v58 + 320) = 0u;
  *(v58 + 336) = 0;

  (*(v84 + 8))(v87, v86);
  sub_1E1308058(v102, &unk_1ECEB1770);
  sub_1E1308058(v177, &unk_1ECEB5670);
  *(v58 + 344) = MEMORY[0x1E69E7CC0];
  *(v58 + 352) = 0;
  *(v58 + 440) = 0;
  *(v58 + 368) = 0;
  return v58;
}

uint64_t sub_1E147A1D4()
{

  sub_1E147A814(*(v0 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy), *(v0 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 24));

  v1 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t ProductPage.deinit()
{
  v0 = Lockup.deinit();

  sub_1E147A814(*(v0 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy), *(v0 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 24));

  v1 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ProductPage.__deallocating_deinit()
{
  ProductPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E147A6A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageMetrics;
  v5 = sub_1E1AF3C3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double sub_1E147A720@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(*v1 + 240);
  if (v2)
  {
    sub_1E134FD1C(v2 + 144, a1, &qword_1ECEB2DF0);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

unint64_t sub_1E147A76C()
{
  result = qword_1EE1E5B58[0];
  if (!qword_1EE1E5B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1E5B58);
  }

  return result;
}

unint64_t sub_1E147A7C0()
{
  result = qword_1EE1F24D0;
  if (!qword_1EE1F24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F24D0);
  }

  return result;
}

uint64_t sub_1E147A814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t type metadata accessor for ProductPage()
{
  result = qword_1EE1F6D50;
  if (!qword_1EE1F6D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E147A8B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1E147A8FC()
{
  result = qword_1ECEB4420;
  if (!qword_1ECEB4420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4420);
  }

  return result;
}

uint64_t sub_1E147A9BC()
{
  result = sub_1E1AF3C3C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of ProductPage.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:buttonAction:offerDisplayProperties:titleOfferDisplayProperties:clickAction:shareAction:developerAction:ageRatingAction:uberArtwork:uberArtworkForCompactDisplay:uberVideo:uberStyle:logoArtwork:navigationBarIconArtwork:media:badges:isComplete:pageTopBackgroundColor:pageBottomBackgroundColor:hasDarkUserInterfaceStyle:purchasedOrdering:notPurchasedOrdering:shelfMapping:askToBuy:mediaSectionTitle:pageMetrics:pageRenderEvent:expandedOfferDetails:regularPriceFormatted:theme:externalVersionIdentifier:updateBuyParams:banner:secondaryBanner:descriptionHeader:description:fullProductFetchedAction:appPromotionDetailPageAction:pageRefreshPolicy:alwaysAllowReviews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v38 = *(v37 + 832);

  return v38(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t Artwork.ImageScale.imageScale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1E1AF2BBC();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_1E870D4D0 + v3);

  return v5(a1, v6, v4);
}

uint64_t Artwork.ImageScale.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Artwork.ImageScale.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_1E147AFA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v4 = 0x656772616CLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6C616D73;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E147B094()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E147B12C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E147B1B0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E147B250(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v5 = 0x656772616CLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6C616D73;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

UIImageSymbolConfiguration_optional __swiftcall Artwork.configuration(with:)(UIImageSymbolConfiguration_optional with)
{
  isa = with.value.super.super.isa;
  if (*(v1 + 96) > 1u)
  {
    if (*(v1 + 96) != 2)
    {
LABEL_11:
      v8 = isa;
      goto LABEL_12;
    }

    v3 = 3;
  }

  else if (*(v1 + 96))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [objc_opt_self() configurationWithScale_];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  if (!isa)
  {

    goto LABEL_11;
  }

  v6 = isa;
  isa = [v5 configurationByApplyingConfiguration_];

LABEL_12:
  v9 = isa;
  result.value.super.super.isa = v9;
  result.is_nil = v7;
  return result;
}

unint64_t sub_1E147B36C()
{
  result = qword_1ECEB4428;
  if (!qword_1ECEB4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4428);
  }

  return result;
}

uint64_t sub_1E147B3D0(void *a1, char a2)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v53 - v9;
  if (![a1 hasMessagesExtension])
  {
LABEL_9:
    if ([a1 supportsIPad] & 1) != 0 || (objc_msgSend(a1, sel_supportsIPhone))
    {
      v18 = 0;
    }

    else
    {
      v18 = [a1 supportsRealityDevice] ^ 1;
    }

    v19 = [a1 supportsIPad];
    v54 = v4;
    if ((v19 & 1) != 0 || ([a1 supportsIPhone] & 1) != 0 || (objc_msgSend(a1, sel_supportsRealityDevice) & 1) == 0)
    {
      if (a2)
      {
        v21 = [a1 appIconArtworkURLString];
        if (v21)
        {
          v22 = v21;
          v53 = sub_1E1AF5DFC();
          v24 = v23;

          v25 = 25186;
        }

        else
        {
          if (v18)
          {
            v25 = 25193;
          }

          else
          {
            v25 = 24937;
          }

          v39 = [a1 appIconCompatibleArtworkURLString];
          if (v39)
          {
            v40 = v39;
            v53 = sub_1E1AF5DFC();
            v24 = v41;
          }

          else
          {
            v42 = [a1 iconURLString];
            v43 = sub_1E1AF5DFC();
            v45 = v44;

            v57 = v43;
            v58 = v45;
            strcpy(v56, "{w}x{h}bb.{f}");
            v56[7] = -4864;
            strcpy(v55, "{w}x{h}{c}.{f}");
            v55[15] = -18;
            sub_1E13B8AA4();
            v53 = sub_1E1AF6E2C();
            v24 = v46;
          }
        }

        v20 = 2;
        goto LABEL_36;
      }

      if (v18)
      {
        v20 = 8;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 3;
    }

    v26 = [a1 iconURLString];
    v53 = sub_1E1AF5DFC();
    v24 = v27;

    v25 = 25186;
    if (!v18)
    {
      v28 = 0;
LABEL_37:
      v47 = sub_1E1AF46DC();
      (*(*(v47 - 8) + 56))(v10, 1, 1, v47);
      type metadata accessor for Artwork();
      v35 = swift_allocObject();
      *(v35 + 152) = 0u;
      *(v35 + 168) = 0u;
      *(v35 + 184) = 0;
      sub_1E1AEFE9C();
      v48 = sub_1E1AEFE7C();
      v50 = v49;
      (*(v5 + 8))(v7, v54);
      v57 = v48;
      v58 = v50;
      sub_1E1AF6F6C();
      sub_1E134FD1C(v10, v35 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics, &unk_1ECEB1770);
      *(v35 + 16) = v53;
      *(v35 + 24) = v24;
      *(v35 + 32) = vdupq_n_s64(0x404E000000000000uLL);
      *(v35 + 48) = v28;
      *(v35 + 56) = 0;
      *(v35 + 72) = v25;
      *(v35 + 80) = 0xE200000000000000;
      *(v35 + 64) = v20;
      *(v35 + 104) = MEMORY[0x1E69E7CC0];
      v57 = v25;
      v58 = 0xE200000000000000;
      goto LABEL_38;
    }

LABEL_36:
    v28 = [objc_opt_self() clearColor];
    goto LABEL_37;
  }

  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    v13 = sub_1E1AF5DFC();
    v15 = v14;

    if (v13 == 0xD000000000000013 && 0x80000001E1B60210 == v15)
    {

      goto LABEL_26;
    }

    v17 = sub_1E1AF74AC();

    if (v17)
    {
      goto LABEL_26;
    }
  }

  if (![a1 isHiddenFromSpringboard])
  {
    goto LABEL_9;
  }

LABEL_26:
  v29 = [a1 ovalIconURLString];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1E1AF5DFC();
    v33 = v32;

    v34 = sub_1E1AF46DC();
    (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
    type metadata accessor for Artwork();
    v35 = swift_allocObject();
    *(v35 + 152) = 0u;
    *(v35 + 168) = 0u;
    *(v35 + 184) = 0;
    sub_1E1AEFE9C();
    v36 = sub_1E1AEFE7C();
    v38 = v37;
    (*(v5 + 8))(v7, v4);
    v57 = v36;
    v58 = v38;
    sub_1E1AF6F6C();
    sub_1E134FD1C(v10, v35 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics, &unk_1ECEB1770);
    *(v35 + 16) = v31;
    *(v35 + 24) = v33;
    *(v35 + 32) = xmmword_1E1B0D300;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 72) = 25186;
    *(v35 + 80) = 0xE200000000000000;
    *(v35 + 64) = 5;
    *(v35 + 104) = MEMORY[0x1E69E7CC0];
    v57 = 25186;
    v58 = 0xE200000000000000;
LABEL_38:
    v51 = Artwork.Crop.preferredContentMode.getter();
    sub_1E1308058(v10, &unk_1ECEB1770);
    *(v35 + 88) = v51;
    *(v35 + 96) = 3;
    return v35;
  }

  return 0;
}

id sub_1E147BAA4(void *a1, uint64_t a2)
{
  v72 = sub_1E1AEFEAC();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v70 - v6;
  v8 = sub_1E1AF45FC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF3E1C();
  v85 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v82 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v70 - v13;
  v84 = sub_1E1AF3ABC();
  v81 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v70 - v17;
  v19 = sub_1E1AEFCCC();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v70 - v24;
  result = [a1 productURL];
  if (result)
  {
    v78 = v10;
    v79 = v7;
    v27 = result;
    sub_1E1AEFC5C();

    v28 = a1;

    v29 = sub_1E147C6EC(v28, a2);
    v30 = *(v20 + 16);
    v75 = v25;
    v30(v23, v25, v19);
    (*(v20 + 56))(v18, 1, 1, v19);
    type metadata accessor for ShareSheetData();
    v31 = swift_allocObject();
    v32 = *(v20 + 32);
    v76 = v19;
    v32(v31 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url, v23, v19);
    sub_1E137F600(v18, v31 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl, &unk_1ECEB4B60);
    v74 = v31;
    *(v31 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata) = v29 | 0x4000000000000000;
    v73 = v29;

    *&v92[0] = [v28 storeItemID];
    v33 = sub_1E1AF742C();
    v77 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7220);
    v35 = sub_1E1AF523C();
    v36 = *(v35 - 8);
    v37 = *(v36 + 72);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1E1B02CD0;
    v40 = v39 + v38;
    if (qword_1EE1E3680 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v35, qword_1EE1E3688);
    v42 = *(v36 + 16);
    v42(v40, v41, v35);
    v43 = v81;
    if (qword_1EE1E3708 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v35, qword_1EE1E3710);
    v42(v40 + v37, v44, v35);
    v45 = sub_1E1498AF4(v39);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v46 = MEMORY[0x1E69E7CC0];
    v47 = sub_1E1584724(MEMORY[0x1E69E7CC0]);
    type metadata accessor for ClickMetricsEvent();
    inited = swift_initStackObject();
    inited[6] = 0x70756B636F6CLL;
    inited[7] = 0xE600000000000000;
    v49 = v77;
    inited[4] = v33;
    inited[5] = v49;
    v50 = MEMORY[0x1E69E7CD0];
    inited[8] = v45;
    inited[9] = v50;
    inited[2] = v47;
    inited[3] = v46;
    sub_1E1560214();
    swift_setDeallocating();
    ClickMetricsEvent.__deallocating_deinit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBD7F0);
    v51 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1E1B02CC0;
    v53 = *(v43 + 16);
    v77 = v15;
    v53(v52 + v51, v15, v84);
    sub_1E1AF45EC();
    v54 = v83;
    sub_1E1AF3E0C();
    v93 = 0;
    memset(v92, 0, sizeof(v92));
    v55 = *(v85 + 16);
    v56 = v82;
    v57 = v78;
    v55(v82, v54, v78);
    v58 = sub_1E1AF46DC();
    v59 = v79;
    (*(*(v58 - 8) + 56))(v79, 1, 1, v58);
    type metadata accessor for BlankAction();
    v60 = swift_allocObject();
    sub_1E134FD1C(v92, v91, &unk_1ECEB5670);
    v55((v60 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics), v56, v57);
    sub_1E134FD1C(v59, v60 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
    v61 = (v60 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v61 = 0u;
    v61[1] = 0u;
    v62 = v60 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    sub_1E134FD1C(v91, &v88, &unk_1ECEB5670);
    if (*(&v89 + 1))
    {
      v63 = v89;
      *v62 = v88;
      *(v62 + 16) = v63;
      *(v62 + 32) = v90;
    }

    else
    {
      v64 = v70;
      sub_1E1AEFE9C();
      v65 = sub_1E1AEFE7C();
      v67 = v66;
      (*(v71 + 8))(v64, v72);
      v86 = v65;
      v87 = v67;
      sub_1E1AF6F6C();
      sub_1E1308058(&v88, &unk_1ECEB5670);
    }

    v68 = v76;

    sub_1E1308058(v91, &unk_1ECEB5670);
    sub_1E1308058(v59, &unk_1ECEB1770);
    v69 = *(v85 + 8);
    v69(v82, v57);
    sub_1E1308058(v92, &unk_1ECEB5670);
    v69(v83, v57);
    (*(v43 + 8))(v77, v84);
    (*(v20 + 8))(v75, v68);
    *(v60 + 16) = 0u;
    *(v60 + 32) = 0u;
    type metadata accessor for LockupContextMenuData();
    result = swift_allocObject();
    *(result + 2) = v74;
    *(result + 3) = v60;
  }

  return result;
}

uint64_t sub_1E147C52C(void *a1)
{
  v2 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E1B03760;
  *(v3 + 32) = @"debug";
  *(v3 + 40) = @"internal";
  *(v3 + 48) = @"convergence";
  type metadata accessor for BuildType(0);
  v4 = @"debug";
  v5 = @"internal";
  v6 = @"convergence";
  v7 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v2, v7);

  if (!IsAnyOf || (v9 = [objc_opt_self() standardUserDefaults], v10 = sub_1E1AF5DBC(), v11 = objc_msgSend(v9, sel_stringArrayForKey_, v10), v9, v10, !v11))
  {
    v12 = [a1 appCapabilities];
    if (!v12)
    {
      return 0;
    }

    v11 = v12;
  }

  v13 = sub_1E1AF621C();

  return v13;
}

uint64_t sub_1E147C6EC(void *a1, uint64_t a2)
{
  if ([a1 hasMessagesExtension])
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = [v4 bundleIdentifier];

    if (!v5)
    {
LABEL_8:
      v11 = [a1 isHiddenFromSpringboard];
      goto LABEL_12;
    }

    v6 = sub_1E1AF5DFC();
    v8 = v7;

    if (v6 == 0xD000000000000013 && 0x80000001E1B60210 == v8)
    {
    }

    else
    {
      v10 = sub_1E1AF74AC();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_12:
  [a1 storeItemID];
  v12 = sub_1E1AF742C();
  v14 = v13;
  v15 = [a1 longTitle];
  v16 = sub_1E1AF5DFC();
  v18 = v17;

  v19 = [a1 genreName];
  v20 = sub_1E1AF5DFC();
  v22 = v21;

  if (v11)
  {

    v23 = a2;
  }

  else
  {
    v23 = 0;
  }

  type metadata accessor for ShareSheetProductMetadata();
  result = swift_allocObject();
  *(result + 16) = v12;
  *(result + 24) = v14;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = v16;
  *(result + 56) = v18;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = v20;
  *(result + 88) = v22;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = a2;
  *(result + 120) = v11;
  *(result + 128) = v23;
  *(result + 136) = 0;
  return result;
}

uint64_t sub_1E147C8F8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v199 = a5;
  v220 = a4;
  v221 = a3;
  LODWORD(v227) = a2;
  v202 = sub_1E1AEFE6C();
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v200 = &v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_1E1AF3C3C();
  v205 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v216 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v215 = &v190 - v9;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v193 = &v190 - v10;
  v218 = sub_1E1AEFEAC();
  v213 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v212 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v198 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v196 = &v190 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v204 = &v190 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v210 = &v190 - v19;
  v229 = sub_1E1AF3E1C();
  v222 = *(v229 - 8);
  v20 = MEMORY[0x1EEE9AC00](v229);
  v214 = &v190 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v211 = &v190 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v206 = &v190 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v209 = &v190 - v26;
  v27 = [a1 longTitle];
  v28 = sub_1E1AF5DFC();
  v30 = v29;

  *&v243 = [a1 storeItemID];
  v230 = sub_1E1AF742C();
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1E1B05090;
  *(v33 + 32) = 0x726F646E6576;
  *(v33 + 40) = 0xE600000000000000;

  v34 = [a1 developerName];
  v35 = sub_1E1AF5DFC();
  v37 = v36;

  v38 = MEMORY[0x1E69E6158];
  *(v33 + 48) = v35;
  *(v33 + 56) = v37;
  *(v33 + 72) = v38;
  *(v33 + 80) = 0x656D614E707061;
  *(v33 + 88) = 0xE700000000000000;
  *(v33 + 96) = v28;
  v217 = v28;
  *(v33 + 104) = v30;
  *(v33 + 120) = v38;
  *(v33 + 128) = 0x6449656C646E7562;
  *(v33 + 136) = 0xE800000000000000;
  v219 = v30;

  v39 = [a1 bundleID];
  v40 = sub_1E1AF5DFC();
  v42 = v41;

  *(v33 + 144) = v40;
  *(v33 + 152) = v42;
  *(v33 + 168) = v38;
  strcpy((v33 + 176), "isRedownload");
  *(v33 + 189) = 0;
  *(v33 + 190) = -5120;
  *(v33 + 216) = MEMORY[0x1E69E6370];
  *(v33 + 192) = 1;
  v43 = sub_1E1303A74(v33);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v44 = [a1 redownloadParams];
  sub_1E1AF5DFC();

  v45 = sub_1E151E1F8();
  v47 = v46;

  *(&v244 + 1) = v38;
  *&v243 = v45;
  *(&v243 + 1) = v47;
  v48 = v206;
  sub_1E1301CF0(&v243, &v240);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v237 = v43;
  sub_1E159827C(&v240, 0x6D61726150797562, 0xE900000000000073, isUniquelyReferenced_nonNull_native);
  v50 = v237;
  v51._countAndFlagsBits = 0xD00000000000001CLL;
  v51._object = 0x80000001E1B5B410;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v53 = localizedString(_:comment:)(v51, v52);
  countAndFlagsBits = v53._countAndFlagsBits;
  object = v53._object;

  v226 = a1;
  v54 = v32;
  v55 = v222;
  v56 = [a1 bundleID];
  v57 = sub_1E1AF5DFC();
  v59 = v58;

  *(&v247 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
  *&v246 = v50;
  v60 = v209;
  sub_1E1AF3DFC();
  type metadata accessor for OfferAction();
  v61 = swift_allocObject();
  v62 = (v61 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  *v62 = v230;
  v62[1] = v54;
  sub_1E137A5C4(&v246, v61 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_purchaseToken);
  v63 = (v61 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_parentAdamId);
  *v63 = 0;
  v63[1] = 0;
  v64 = (v61 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_bundleId);
  *v64 = v57;
  v64[1] = v59;
  v65 = v210;
  v66 = (v61 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem);
  *v66 = 0;
  v66[1] = 0;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_includeBetaApps) = 0;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_requiresExceptionRequest) = 0;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_forceAskToBuyReason) = 2;
  *(v61 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_buyCompletedAction) = 0;
  v67 = v55[2];
  v245 = 0;
  v243 = 0u;
  v244 = 0u;
  v192 = v55 + 2;
  v191 = v67;
  v67(v48, v60, v229);
  v68 = sub_1E1AF46DC();
  v69 = *(v68 - 8);
  v70 = *(v69 + 56);
  v225 = v68;
  v224 = v70;
  v223 = v69 + 56;
  (v70)(v65, 1, 1);
  v71 = (v61 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v71 = 0u;
  v71[1] = 0u;
  sub_1E134FD1C(&v243, &v237, &unk_1ECEB5670);
  v228 = v54;
  if (*(&v238 + 1))
  {
    v240 = v237;
    v241 = v238;
    v242 = v239;
    v72 = v218;
  }

  else
  {
    v73 = v212;
    sub_1E1AEFE9C();
    v74 = v48;
    v75 = sub_1E1AEFE7C();
    v77 = v76;
    v72 = v218;
    (*(v213 + 8))(v73, v218);
    v235 = v75;
    v48 = v74;
    v236 = v77;
    sub_1E1AF6F6C();
    sub_1E1308058(&v237, &unk_1ECEB5670);
    v54 = v228;
  }

  sub_1E1308058(&v243, &unk_1ECEB5670);
  v78 = v55[1];
  v79 = v229;
  v209 = (v55 + 1);
  v190 = v78;
  v78(v60, v229);
  __swift_destroy_boxed_opaque_existential_1(&v246);
  v80 = v61 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v81 = v241;
  *v80 = v240;
  *(v80 + 1) = v81;
  *(v80 + 4) = v242;
  sub_1E137F600(v65, v61 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  v82 = object;
  v61[2] = countAndFlagsBits;
  v61[3] = v82;
  v61[4] = 0;
  v61[5] = 0;
  v85 = v55[4];
  v83 = (v55 + 4);
  v84 = v85;
  v85(v61 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v48, v79);
  v86 = v221;
  if (v227)
  {
    v222 = v83;
    v87._countAndFlagsBits = 0xD000000000000018;
    v87._object = 0x80000001E1B601F0;
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    v89 = localizedString(_:comment:)(v87, v88);
    v210 = v89._countAndFlagsBits;
    type metadata accessor for UnhideAppAction();
    v90 = swift_allocObject();
    *(v90 + OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_isHidden) = 1;
    v91 = (v90 + OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_appAdamId);
    *v91 = v230;
    v91[1] = v54;
    *(v90 + OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_offerAction) = v61;
    v245 = 0;
    v243 = 0u;
    v244 = 0u;

    sub_1E1AF3DFC();
    v92 = v204;
    v224(v204, 1, 1, v225);
    v227 = v90;
    v93 = (v90 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v93 = 0u;
    v93[1] = 0u;
    sub_1E134FD1C(&v243, &v237, &unk_1ECEB5670);
    if (*(&v238 + 1))
    {
      v240 = v237;
      v241 = v238;
      v242 = v239;
    }

    else
    {
      v94 = v212;
      sub_1E1AEFE9C();
      v95 = sub_1E1AEFE7C();
      v97 = v96;
      v98 = v94;
      v92 = v204;
      (*(v213 + 8))(v98, v72);
      *&v246 = v95;
      *(&v246 + 1) = v97;
      sub_1E1AF6F6C();
      sub_1E1308058(&v237, &unk_1ECEB5670);
    }

    sub_1E1308058(&v243, &unk_1ECEB5670);
    v99 = v227;
    v100 = v227 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    v101 = v241;
    *v100 = v240;
    *(v100 + 16) = v101;
    *(v100 + 32) = v242;
    sub_1E137F600(v92, &v99[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics], &unk_1ECEB1770);
    *(v99 + 2) = v210;
    *(v99 + 3) = v89._object;
    *(v99 + 4) = 0;
    *(v99 + 5) = 0;
    v84(&v99[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], v211, v229);
  }

  else
  {
    v227 = v61;
  }

  v102 = v226;
  v103 = [v226 bundleID];
  v104 = sub_1E1AF5DFC();
  v106 = v105;

  if ([v102 is32BitOnly])
  {
    v107 = 5;
  }

  else
  {
    v108 = [v102 requiredCapabilities];
    if (v108)
    {
      v109 = v108;
      sub_1E1AF621C();
    }

    v110 = objc_opt_self();
    v111 = sub_1E1AF620C();

    v112 = [v110 hasCapabilities_];

    if (v112)
    {
      v107 = 0;
    }

    else
    {
      v107 = 5;
    }
  }

  v113 = [v102 contentRatingFlags];
  v114 = sub_1E147C52C(v102);
  v115 = MEMORY[0x1E69E7CC0];
  v116 = sub_1E15A021C(MEMORY[0x1E69E7CC0]);
  v117 = sub_1E15A021C(v115);
  v118 = sub_1E15A021C(v115);
  type metadata accessor for OfferDisplayProperties();
  v119 = swift_allocObject();
  *(v119 + 16) = 0;
  v120 = v228;
  *(v119 + 24) = v230;
  *(v119 + 32) = v120;
  *(v119 + 40) = v104;
  *(v119 + 48) = v106;
  *(v119 + 56) = 0;
  *(v119 + 64) = 0;
  *(v119 + 72) = v116;
  *(v119 + 80) = v117;
  *(v119 + 88) = v118;
  *(v119 + 96) = v107;
  *(v119 + 97) = 0;
  *(v119 + 104) = 0;
  *(v119 + 112) = 0;
  *(v119 + 119) = 0;
  *(v119 + 128) = v113;
  *(v119 + 136) = 0;
  *(v119 + 144) = 0u;
  *(v119 + 160) = 0u;
  *(v119 + 176) = 0u;
  *(v119 + 192) = 0u;
  *(v119 + 208) = 0;
  *(v119 + 216) = 0;
  *(v119 + 224) = 0;
  *(v119 + 232) = 0;
  *(v119 + 240) = v114;
  if (v86)
  {
    v121 = qword_1ECEB1558;

    if (v121 != -1)
    {
      swift_once();
    }

    v122 = v193;
    sub_1E1AF52FC();
    v123 = v195;
    sub_1E1AF532C();

    (*(v194 + 8))(v122, v123);
    v124 = v243;
  }

  else
  {
    v124 = 0;
  }

  v125 = v226;
  v126 = v228;
  v222 = sub_1E147B3D0(v226, v124);
  if (v222)
  {
    v127 = sub_1E1AF4D0C();
    v129 = v128;
    v245 = 0;
    v243 = 0u;
    v244 = 0u;
    *&v240 = 0;
    *(&v240 + 1) = 0xE000000000000000;
    sub_1E1AF6FEC();

    *&v240 = 0xD00000000000001BLL;
    *(&v240 + 1) = 0x80000001E1B601B0;
    MEMORY[0x1E68FECA0](v230, v126);

    MEMORY[0x1E68FECA0](0xD000000000000014, 0x80000001E1B601D0);
    v130 = v215;
    sub_1E1AEFCAC();

    v246 = 0u;
    v247 = 0u;
    v131 = v214;
    sub_1E1AF3DFC();
    type metadata accessor for FlowAction();
    v132 = swift_allocObject();
    *(v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v133 = v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
    *v133 = 0u;
    *(v133 + 16) = 0u;
    *(v133 + 32) = 0;
    v134 = (v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
    *v134 = 0;
    v134[1] = 0;
    *(v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = 1;
    sub_1E134FD1C(v130, v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
    v135 = (v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
    *v135 = 0;
    v135[1] = 0;
    v136 = v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
    *v136 = xmmword_1E1B04490;
    *(v136 + 24) = 0;
    *(v136 + 32) = 0;
    *(v136 + 16) = 0;
    *(v136 + 40) = 0;
    *(v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = 2;
    *(v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = 0;
    *(v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = 0;
    v137 = (v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
    *v137 = v127;
    v137[1] = v129;
    sub_1E134FD1C(&v243, &v240, &unk_1ECEB5670);
    v191(v132 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v131, v229);
    v224((v132 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics), 1, 1, v225);
    v138 = (v132 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v138 = 0u;
    v138[1] = 0u;
    v139 = v132 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    sub_1E134FD1C(&v240, &v237, &unk_1ECEB5670);
    if (*(&v238 + 1))
    {
      v140 = v238;
      *v139 = v237;
      *(v139 + 16) = v140;
      *(v139 + 32) = v239;
    }

    else
    {
      v142 = v212;
      sub_1E1AEFE9C();
      v143 = sub_1E1AEFE7C();
      v145 = v144;
      (*(v213 + 8))(v142, v218);
      v235 = v143;
      v236 = v145;
      sub_1E1AF6F6C();
      sub_1E1308058(&v237, &unk_1ECEB5670);
    }

    sub_1E1308058(&v240, &unk_1ECEB5670);
    *(v132 + 16) = 0u;
    *(v132 + 32) = 0u;

    FlowAction.setPageData(_:)(&v246);

    v190(v214, v229);
    sub_1E1308058(&v246, &qword_1ECEB2DF0);
    sub_1E1308058(v215, &unk_1ECEB4B60);
    sub_1E1308058(&v243, &unk_1ECEB5670);

    v146 = [v125 bundleID];
    v229 = sub_1E1AF5DFC();
    v215 = v147;

    swift_retain_n();

    v148 = v216;
    sub_1E1AF3C2C();
    type metadata accessor for ProductPage();
    v149 = swift_allocObject();
    v150 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
    v151 = MEMORY[0x1E69E7CC0];
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_media) = MEMORY[0x1E69E7CC0];
    v152 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_shelfMapping;

    *(v149 + v152) = sub_1E15A00E8(v151);
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_shareAction) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_developerAction) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_ageRatingAction) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtwork) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtworkForCompactDisplay) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberVideo) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberStyle) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_logoArtwork) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_navigationBarIconArtwork) = 0;
    swift_beginAccess();
    *(v149 + v150) = v151;

    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_badges) = v151;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_isComplete) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageTopBackgroundColor) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageBottomBackgroundColor) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_hasDarkUserInterfaceStyle) = 2;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_notPurchasedOrdering) = 0;
    v153 = sub_1E15A00E8(v151);
    swift_beginAccess();
    *(v149 + v152) = v153;

    v154 = v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy;
    *v154 = 0u;
    *(v154 + 16) = 0u;
    *(v154 + 32) = 0u;
    *(v154 + 48) = 0;
    v155 = (v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_mediaSectionTitle);
    *v155 = 0;
    v155[1] = 0;
    v156 = v205;
    v157 = v197;
    (*(v205 + 16))(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageMetrics, v148, v197);
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageRenderEvent) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_expandedOfferDetails) = 0;
    v158 = (v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_regularPriceFormatted);
    *v158 = 0;
    v158[1] = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_theme) = 0;
    v159 = v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_externalVersionIdentifier;
    *(v159 + 8) = 1;
    *v159 = 0;
    v160 = (v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_updateBuyParams);
    *v160 = 0;
    v160[1] = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_titleOfferDisplayProperties) = v119;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_banner) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_secondaryBanner) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_fullProductFetchedAction) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_appPromotionDetailPageAction) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageRefreshPolicy) = 0;
    *(v149 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_alwaysAllowReviews) = 0;
    v245 = 0;
    v243 = 0u;
    v244 = 0u;
    v161 = v196;
    v224(v196, 1, 1, v225);
    *(v149 + 424) = 4;
    sub_1E134FD1C(&v243, &v237, &unk_1ECEB5670);
    if (*(&v238 + 1))
    {
      v240 = v237;
      v241 = v238;
      v242 = v239;
    }

    else
    {

      v162 = v212;
      sub_1E1AEFE9C();
      v163 = sub_1E1AEFE7C();
      v165 = v164;
      (*(v213 + 8))(v162, v218);
      v233 = v163;
      v234 = v165;
      v156 = v205;
      sub_1E1AF6F6C();
      sub_1E1308058(&v237, &unk_1ECEB5670);
    }

    v166 = v241;
    *(v149 + 448) = v240;
    *(v149 + 464) = v166;
    *(v149 + 480) = v242;
    sub_1E134FD1C(v161, v149 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);
    v167 = v228;
    *(v149 + 16) = v230;
    *(v149 + 24) = v167;
    v168 = v215;
    *(v149 + 32) = v229;
    *(v149 + 40) = v168;
    *(v149 + 48) = v222;
    *(v149 + 56) = 0;
    *(v149 + 64) = 0u;
    *(v149 + 80) = 0u;
    v169 = v219;
    *(v149 + 96) = v217;
    *(v149 + 104) = v169;
    *(v149 + 120) = 0;
    *(v149 + 128) = 0;
    *(v149 + 112) = 0;
    *(v149 + 136) = 2;
    *(v149 + 144) = 0;
    *(v149 + 152) = 0;
    *(v149 + 216) = 0u;
    *(v149 + 200) = 0u;
    *(v149 + 184) = 0u;
    *(v149 + 376) = 0u;
    *(v149 + 392) = 0u;
    *(v149 + 408) = 0x8000;
    *(v149 + 360) = 0;
    *(v149 + 416) = 0;
    *(v149 + 432) = MEMORY[0x1E69E7CD0];
    *(v149 + 168) = 0;
    *(v149 + 176) = 0;
    *(v149 + 160) = 0;
    *(v149 + 248) = 0;
    *(v149 + 256) = 0;
    *(v149 + 232) = v227;
    *(v149 + 240) = v119;
    *(v149 + 264) = 0u;
    *(v149 + 280) = 0u;
    *(v149 + 296) = 0u;
    *(v149 + 312) = 0u;
    *(v149 + 328) = 0u;

    sub_1E1308058(v161, &unk_1ECEB1770);
    sub_1E1308058(&v243, &unk_1ECEB5670);
    (*(v156 + 8))(v216, v157);
    *(v149 + 344) = MEMORY[0x1E69E7CC0];
    *(v149 + 352) = 0;
    *(v149 + 440) = 0;
    *(v149 + 368) = 0;

    v171 = _s11AppStoreKit21ShelfBasedProductPageC4fromACSgAA0fG0CSg_tcfC_0(v170);
    v172 = v171;
    if (v171)
    {
      v171 = type metadata accessor for ShelfBasedProductPage();
    }

    else
    {
      *(&v243 + 1) = 0;
      *&v244 = 0;
    }

    *&v243 = v172;
    *(&v244 + 1) = v171;
    FlowAction.setPageData(_:)(&v243);
    sub_1E1308058(&v243, &qword_1ECEB2DF0);
    v173 = (v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
    swift_beginAccess();
    v174 = v199;
    *v173 = v220;
    v173[1] = v174;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v175 = v226;
    v176 = [v226 datePurchased];
    v177 = v200;
    sub_1E1AEFE3C();

    v178 = sub_1E16DD210(v177);
    v180 = v179;
    (*(v201 + 8))(v177, v202);
    if (v180)
    {
      v229 = v178;
      v218 = v180;
    }

    else
    {
      v181 = [v175 developerName];
      v229 = sub_1E1AF5DFC();
      v218 = v182;
    }

    v245 = 0;
    v243 = 0u;
    v244 = 0u;
    v233 = v230;
    v234 = v167;
    v183 = [v175 bundleID];
    v230 = sub_1E1AF5DFC();
    v228 = v184;

    v232 = 2;
    v185 = v222;
    v186 = sub_1E147BAA4(v175, v222);
    v187 = v198;
    v224(v198, 1, 1, v225);
    v240 = 0u;
    v241 = 0u;
    LOWORD(v242) = 0x8000;
    v231 = 0;
    v188 = *(v203 + 392);

    v141 = v188(&v243, &v233, v230, v228, v185, 0, 0, 0, v217, v219, v229, v218, 0, &v232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v240, 0, v227, v119, v132, 0, 0, 0, 0, 0, 0, 0, 0, 0, MEMORY[0x1E69E7CC0], &v231, 0, v186, MEMORY[0x1E69E7CD0], 0, v187, 0);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();

    return 0;
  }

  return v141;
}

id sub_1E147E804()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

AppStoreKit::Uber::AssetType_optional __swiftcall Uber.AssetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Uber.AssetType.rawValue.getter()
{
  v1 = 0x6F65646976;
  if (*v0 != 1)
  {
    v1 = 1852793705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_1E147E90C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6F65646976;
  if (v2 != 1)
  {
    v4 = 1852793705;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6B726F77747261;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F65646976;
  if (*a2 != 1)
  {
    v8 = 1852793705;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6B726F77747261;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E147E9F8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E147EA90()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E147EB14()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E147EBB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F65646976;
  if (v2 != 1)
  {
    v5 = 1852793705;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6B726F77747261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

AppStoreKit::Uber::Style_optional __swiftcall Uber.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Uber.Style.rawValue.getter()
{
  v1 = 0x656E696C6E69;
  if (*v0 != 1)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65766F6261;
  }
}

uint64_t sub_1E147ECBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656E696C6E69;
  if (v2 != 1)
  {
    v4 = 0x756F72676B636162;
    v3 = 0xEA0000000000646ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65766F6261;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656E696C6E69;
  if (*a2 != 1)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEA0000000000646ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65766F6261;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E147EDBC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E147EE5C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E147EEE8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E147EF90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656E696C6E69;
  if (v2 != 1)
  {
    v5 = 0x756F72676B636162;
    v4 = 0xEA0000000000646ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65766F6261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Uber.__allocating_init(style:assetType:artwork:compactArtwork:video:compactVideo:iconArtwork:title:)(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v72 = a8;
  v71 = a6;
  v73 = a5;
  v16 = sub_1E1AEFCCC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v10;
  v20 = swift_allocObject();
  v21 = *a1;
  v68 = *a2;
  v69 = a3;
  if (a3)
  {
    v22 = *(a3 + 16);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v79 = v22;
  v80 = v23;
  v24 = a7;
  v70 = a4;
  if (a4)
  {
    v25 = *(a4 + 16);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v27 = v71;
  v81 = v25;
  v82 = v26;
  v28 = *&aBackgrou[8 * v21 + 8];
  v83 = *&aAbove_3[8 * v21];
  v84 = v28;
  if (!v73)
  {
    v85 = 0;
    v86 = 0;
    if (v71)
    {
      goto LABEL_9;
    }

LABEL_11:
    v32 = 0;
    v34 = 0;
    goto LABEL_12;
  }

  (*(v17 + 16))(v19, v73 + OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl, v16);
  v29 = sub_1E1AEFBDC();
  v31 = v30;
  (*(v17 + 8))(v19, v16);
  v85 = v29;
  v86 = v31;
  if (!v27)
  {
    goto LABEL_11;
  }

LABEL_9:
  (*(v17 + 16))(v19, v27 + OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl, v16);
  v32 = sub_1E1AEFBDC();
  v34 = v33;
  (*(v17 + 8))(v19, v16);
LABEL_12:
  v35 = v21;
  v36 = a9;
  v87 = v32;
  v88 = v34;
  if (v24)
  {
    v37 = *(v24 + 16);
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v89 = v37;
  v90 = v38;
  v91 = v72;
  v92 = a9;

  v40 = 0;
  v41 = MEMORY[0x1E69E7CC0];
LABEL_16:
  if (v40 <= 7)
  {
    v42 = 7;
  }

  else
  {
    v42 = v40;
  }

  v43 = v42 + 1;
  v44 = 16 * v40 + 40;
  while (1)
  {
    if (v40 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
      swift_arrayDestroy();
      v53 = sub_1E1AF637C();

      v74 = v53;
      sub_1E1AF6F6C();
      v54 = v76;
      *(v20 + 80) = v75;
      *(v20 + 96) = v54;
      *(v20 + 112) = v77;
      *(v20 + 16) = v35;
      v55 = v69;
      *(v20 + 24) = v69;
      v56 = v70;
      if (!v70)
      {

        v56 = v55;
      }

      *(v20 + 32) = v56;
      v57 = v73;
      *(v20 + 40) = v73;
      v58 = v27;
      if (!v27)
      {

        v58 = v57;
      }

      *(v20 + 48) = v58;
      *(v20 + 56) = v24;
      *(v20 + 64) = v72;
      *(v20 + 72) = v36;
      v59 = v68;
      if (v68 != 3 || (v59 = v57 != 0, v57 | v55))
      {
        *(v20 + 17) = v59;
        return v20;
      }

      if (v24)
      {

        v60 = ASKDeviceTypeGetCurrent();
        v61 = sub_1E1AF5DFC();
        v63 = v62;
        if (v61 == sub_1E1AF5DFC() && v63 == v64)
        {

LABEL_41:
          *(v20 + 17) = 2;
          return v20;
        }

        v65 = sub_1E1AF74AC();

        if (v65)
        {
          goto LABEL_41;
        }
      }

      sub_1E134B88C(v20 + 80);
      swift_deallocPartialClassInstance();
      return 0;
    }

    if (v43 == ++v40)
    {
      break;
    }

    v45 = v44 + 16;
    v46 = *&v78[v44];
    v44 += 16;
    if (v46)
    {
      v67 = v35;
      v71 = v36;
      v47 = v27;
      v48 = *(&v76 + v45);

      result = swift_isUniquelyReferenced_nonNull_native();
      v49 = v24;
      if ((result & 1) == 0)
      {
        result = sub_1E130C06C(0, *(v41 + 16) + 1, 1, v41);
        v41 = result;
      }

      v51 = *(v41 + 16);
      v50 = *(v41 + 24);
      if (v51 >= v50 >> 1)
      {
        result = sub_1E130C06C((v50 > 1), v51 + 1, 1, v41);
        v41 = result;
      }

      *(v41 + 16) = v51 + 1;
      v52 = v41 + 16 * v51;
      *(v52 + 32) = v48;
      *(v52 + 40) = v46;
      v24 = v49;
      v27 = v47;
      v36 = v71;
      v35 = v67;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t Uber.init(style:assetType:artwork:compactArtwork:video:compactVideo:iconArtwork:title:)(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v67 = a8;
  v68 = a5;
  v69 = a4;
  v16 = sub_1E1AEFCCC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v65 = *a2;
  v66 = a3;
  if (a3)
  {
    a3 = *(a3 + 16);
  }

  else
  {
    v21 = 0;
  }

  v75 = a3;
  v76 = v21;
  v22 = v68;
  if (v69)
  {
    v23 = *(v69 + 16);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v77 = v23;
  v78 = v24;
  v25 = *&aBackgrou[8 * v20 + 8];
  v79 = *&aAbove_3[8 * v20];
  v80 = v25;
  if (!v22)
  {
    v81 = 0;
    v82 = 0;
    if (a6)
    {
      goto LABEL_9;
    }

LABEL_11:
    v29 = 0;
    v31 = 0;
    goto LABEL_12;
  }

  (*(v17 + 16))(v19, v22 + OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl, v16);
  v26 = sub_1E1AEFBDC();
  v28 = v27;
  (*(v17 + 8))(v19, v16);
  v81 = v26;
  v82 = v28;
  if (!a6)
  {
    goto LABEL_11;
  }

LABEL_9:
  (*(v17 + 16))(v19, a6 + OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl, v16);
  v29 = sub_1E1AEFBDC();
  v31 = v30;
  (*(v17 + 8))(v19, v16);
LABEL_12:
  v32 = v20;
  v83 = v29;
  v84 = v31;
  if (a7)
  {
    v33 = *(a7 + 16);
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v85 = v33;
  v86 = v34;
  v87 = v67;
  v88 = a9;
  v64 = a9;

  v36 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  v38 = 7;
LABEL_16:
  if (v36 > 7)
  {
    v38 = v36;
  }

  v39 = v38 + 1;
  v40 = 16 * v36 + 40;
  while (1)
  {
    if (v36 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
      swift_arrayDestroy();
      v49 = sub_1E1AF637C();

      v70 = v49;
      sub_1E1AF6F6C();
      v50 = v72;
      *(v10 + 80) = v71;
      *(v10 + 96) = v50;
      *(v10 + 112) = v73;
      *(v10 + 16) = v32;
      v51 = v66;
      *(v10 + 24) = v66;
      v52 = v69;
      if (!v69)
      {

        v52 = v51;
      }

      *(v10 + 32) = v52;
      v53 = v68;
      *(v10 + 40) = v68;
      v54 = a6;
      v55 = v64;
      if (!a6)
      {

        v54 = v53;
      }

      *(v10 + 48) = v54;
      *(v10 + 56) = a7;
      *(v10 + 64) = v67;
      *(v10 + 72) = v55;
      v56 = v65;
      if (v65 != 3)
      {
        goto LABEL_40;
      }

      v56 = v53 != 0;
      if (v53 | v51)
      {
        goto LABEL_40;
      }

      if (a7)
      {

        v57 = ASKDeviceTypeGetCurrent();
        v58 = sub_1E1AF5DFC();
        v60 = v59;
        if (v58 == sub_1E1AF5DFC() && v60 == v61)
        {

LABEL_39:
          v56 = 2;
LABEL_40:
          *(v10 + 17) = v56;
          return v10;
        }

        v62 = sub_1E1AF74AC();

        if (v62)
        {
          goto LABEL_39;
        }
      }

      sub_1E134B88C(v10 + 80);
      type metadata accessor for Uber();
      swift_deallocPartialClassInstance();
      return 0;
    }

    if (v39 == ++v36)
    {
      break;
    }

    v41 = v40 + 16;
    v42 = *&v74[v40];
    v40 += 16;
    if (v42)
    {
      HIDWORD(v63) = v32;
      v43 = a6;
      v44 = *(&v72 + v41);

      result = swift_isUniquelyReferenced_nonNull_native();
      v45 = a7;
      if ((result & 1) == 0)
      {
        result = sub_1E130C06C(0, *(v37 + 16) + 1, 1, v37);
        v37 = result;
      }

      v47 = *(v37 + 16);
      v46 = *(v37 + 24);
      if (v47 >= v46 >> 1)
      {
        result = sub_1E130C06C((v46 > 1), v47 + 1, 1, v37);
        v37 = result;
      }

      *(v37 + 16) = v47 + 1;
      v48 = v37 + 16 * v47;
      *(v48 + 32) = v44;
      *(v48 + 40) = v42;
      a7 = v45;
      a6 = v43;
      v32 = HIDWORD(v63);
      v38 = 7;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}