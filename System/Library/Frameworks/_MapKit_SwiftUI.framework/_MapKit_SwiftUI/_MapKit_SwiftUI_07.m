void sub_213D63CEC()
{
  if (!qword_27C8EBE00)
  {
    v0 = sub_213D9052C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8EBE00);
    }
  }
}

void sub_213D63D3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213D9052C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_213D63D90(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_213D63E10(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_213D63EDC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_213D1F124(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_213D63EDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_213D63FE8(a5, a6);
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
    result = sub_213D91DDC();
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

uint64_t sub_213D63FE8(uint64_t a1, unint64_t a2)
{
  v4 = sub_213D64034(a1, a2);
  sub_213D64164(&unk_282637310);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_213D64034(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_213D64250(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_213D91DDC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_213D9197C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_213D64250(v10, 0);
        result = sub_213D91D7C();
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

uint64_t sub_213D64164(uint64_t result)
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

  result = sub_213D642C4(result, v12, 1, v3);
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

void *sub_213D64250(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC530, &qword_213D9A228);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_213D642C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC530, &qword_213D9A228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

id sub_213D643B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000];
  v7 = &v3[*((*MEMORY[0x277D85000] & *v3) + 0x68)];
  *v7 = xmmword_213D99FF0;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 6) = 0;
  v8 = &v3[*((*v5 & *v3) + 0x70)];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v9 = *((*v5 & *v3) + 0x78);
  (*(*(*((v6 & v4) + 0x50) - 8) + 56))(&v3[v9], 1, 1, *((v6 & v4) + 0x50));
  v10 = &v3[*((*v5 & *v3) + 0x80)];
  *v10 = 0;
  v10[1] = 0;
  v11 = *((*v5 & *v3) + 0x88);
  v12 = *((v6 & v4) + 0x60);
  v13 = *(*(*(*((v6 & v4) + 0x58) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotationBridge();
  swift_getAssociatedConformanceWitness();
  *&v3[v11] = sub_213D9180C();
  swift_beginAccess();
  v14 = sub_213D91C7C();
  (*(*(v14 - 8) + 24))(&v3[v9], a1, v14);
  swift_endAccess();
  v15 = *v10;
  v16 = v10[1];
  *v10 = a2;
  v10[1] = a3;
  sub_213CD4E28(a2);
  sub_213CCE520(v15);
  v21.receiver = v3;
  v21.super_class = type metadata accessor for MapViewCoordinator();
  return objc_msgSendSuper2(&v21, sel_init);
}

id sub_213D64678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[10];
  v8 = v3[11];
  v9 = v3[12];
  v10 = objc_allocWithZone(type metadata accessor for MapViewCoordinator());
  return sub_213D643B8(a1, a2, a3);
}

uint64_t sub_213D646D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_213D64710(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 62) <= 2)
  {
  }

  return result;
}

unint64_t sub_213D64778()
{
  result = qword_27C8EC528;
  if (!qword_27C8EC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC528);
  }

  return result;
}

id sub_213D647CC()
{
  type metadata accessor for _SwiftUIMKMapView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setPitchEnabled_];
  [v0 setRotateEnabled_];
  [v0 setMapType_];
  [v0 setPointOfInterestFilter_];
  [v0 setCameraZoomRange_];
  [v0 setCameraBoundary_];
  [v0 setShowsBuildings_];
  [v0 setShowsTraffic_];
  sub_213CE2B34(0, &unk_27C8EC538, 0x277CD4EF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_213D9190C();
  [v0 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v2];

  type metadata accessor for SwiftUIAnnotationView();
  v3 = swift_getObjCClassFromMetadata();
  v4 = sub_213D9190C();
  [v0 registerClass:v3 forAnnotationViewWithReuseIdentifier:v4];

  sub_213CE2B34(0, &unk_27C8EBB10, 0x277CD4ED0);
  v5 = swift_getObjCClassFromMetadata();
  v6 = sub_213D9190C();
  [v0 registerClass:v5 forAnnotationViewWithReuseIdentifier:v6];

  return v0;
}

id sub_213D649C4(void *a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t), uint64_t a4, void *a5)
{
  v9 = *(*(*((*MEMORY[0x277D85000] & *a1) + 0x50) - 8) + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v25[-v11 - 8];
  (*(v13 + 16))(&v25[-v11 - 8], v10);
  sub_213D61818(v12);
  result = [a5 viewForAnnotation_];
  if (result)
  {
    v15 = result;
    a3(&v29, a2);
    v26 = v29;
    v27 = v30;
    v28 = v31;
    sub_213D64C68(&v29, v25);
    sub_213D61970(&v26);
    if (v30 == 2)
    {
      type metadata accessor for SwiftUIAnnotationView();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = v19;
        v21 = swift_allocObject();
        v22 = v30;
        *(v21 + 16) = v29;
        *(v21 + 32) = v22;
        *(v21 + 48) = v31;
        *(v21 + 56) = v20;
        sub_213D64C68(&v29, &v26);
        v23 = v15;
        sub_213D905AC();
        sub_213D64CC4(&v29);
      }
    }

    else if (v30 <= 1u)
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = v16;
        v18 = *(&v30 + 1);
        v26 = v29;
        v27 = v30;
        v28 = v31;
        sub_213D64C68(&v29, v25);
        v18(v17, &v26);
        sub_213D64CC4(&v29);
LABEL_9:

        return sub_213D64CC4(&v29);
      }
    }

    [a5 removeAnnotation_];
    [a5 addAnnotation_];
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_213D64D18()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v3;
  v4 = *(v0 + 56);
  v7 = *(v0 + 48);
  return v2(v4, v6);
}

id sub_213D64D60(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000];
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  (*(*(*((*MEMORY[0x277D85000] & *v2) + 0x50) - 8) + 16))(&v2[*((*MEMORY[0x277D85000] & *v2) + 0x60)], a1, *((*MEMORY[0x277D85000] & *v2) + 0x50));
  v10 = &v2[*((*v5 & *v2) + 0x68)];
  *v10 = v7;
  *(v10 + 1) = v8;
  v10[16] = v9;
  *(v10 + 24) = *(a2 + 3);
  v11 = &v2[*((*v5 & *v2) + 0x70)];
  *v11 = v7;
  *(v11 + 1) = v8;
  v12 = *((v6 & v4) + 0x58);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for AnnotationBridge();
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_213D64EA4(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = objc_allocWithZone(type metadata accessor for AnnotationBridge());
  return sub_213D64D60(a1, a2);
}

uint64_t sub_213D64EF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D64F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D64FB8(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_213D64FCC(a1, a2);
  }

  return a1;
}

uint64_t sub_213D64FCC(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 62) <= 2)
  {
  }

  return result;
}

uint64_t sub_213D65068(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_213D650AC(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_213D64710(a1, a2);
  }

  return a1;
}

uint64_t sub_213D650C0(uint64_t result)
{
  v2 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70));
  v3 = v2[1];
  if (v3)
  {
    v4 = result;
    v5 = *v2;
    v6 = v2[2];
    v8 = *v2;
    v9 = v3;
    v10 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EC510, qword_213D9A120);
    MEMORY[0x21604E7B0](&v7);
    if (v7 != v4)
    {
      v8 = v5;
      v9 = v3;
      v10 = v6;
      v7 = v4;
      sub_213D915FC();
    }
  }

  return result;
}

void *sub_213D651D4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_213D5DF08(*(v1 + 32), *(v1 + 40), *(v1 + 48), a1);
}

uint64_t objectdestroy_21Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_213D6522C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_213D5DF60(a1);
}

double sub_213D65240(double a1)
{
  v1 = 90.0;
  if (a1 <= 90.0)
  {
    v1 = a1;
  }

  if (a1 >= -90.0)
  {
    return v1;
  }

  else
  {
    return -90.0;
  }
}

uint64_t sub_213D652C4(uint64_t a1)
{
  v26 = a1;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = *(type metadata accessor for MapCompassConfig(0) + 24);
  v14 = *MEMORY[0x277CDF440];
  (*(v3 + 104))(v12, *MEMORY[0x277CDF440], v2);
  v15 = sub_213D9050C();
  v25 = *(v3 + 8);
  v25(v12, v2);
  v16 = *(v3 + 16);
  v17 = (v3 + 88);
  if (v15)
  {
    v16(v9, v26, v2);
    v18 = (*v17)(v9, v2);
    if (v18 == *MEMORY[0x277CDF418] || v18 == *MEMORY[0x277CDF438] || v18 == v14)
    {
      return 1;
    }

    if (v18 == *MEMORY[0x277CDF420])
    {
      return 2;
    }
  }

  else
  {
    v16(v6, v1 + v13, v2);
    v22 = (*v17)(v6, v2);
    if (v22 == *MEMORY[0x277CDF418] || v22 == *MEMORY[0x277CDF438] || v22 == v14)
    {
      return 1;
    }

    v9 = v6;
    if (v22 == *MEMORY[0x277CDF420])
    {
      return 2;
    }
  }

  v25(v9, v2);
  return 1;
}

uint64_t sub_213D65538@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213D90C0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_213CE2C28(v2, &v17 - v11, &qword_27C8EBAF0, &qword_213D9A2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213D9051C();
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

uint64_t sub_213D65738()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for MapCompass(0) + 24);
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

uint64_t sub_213D65890()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for MapCompass(0) + 28);
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

uint64_t sub_213D659E8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a2[1];
  v5 = a1[1];
  if ((sub_213D904DC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return sub_213D9050C();
}

uint64_t MapCompass.init(scope:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for MapCompass(0);
  v7 = a3 + v6[5];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = a3 + v6[6];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a3 + v6[7];
  result = swift_getKeyPath();
  *v9 = result;
  v9[8] = 0;
  v11 = a3 + v6[8];
  *v11 = a1;
  v11[8] = a2 & 1;
  return result;
}

uint64_t MapCompass.body.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC558, &qword_213D9A3F0);
  v2 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v47 = &v45 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC560, &qword_213D9A3F8);
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v52 = &v45 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  v6 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v46 = &v45 - v7;
  v8 = type metadata accessor for MapControlsConfig();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_213D9051C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MapCompassConfig(0);
  v19 = *(v18 - 8);
  v48 = v18;
  v49 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v45 - v24;
  v26 = sub_213D65890();
  sub_213D65538(v17);
  if (v26 == 3)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  v22[1] = v27;
  v28 = v48;
  (*(v14 + 32))(&v22[*(v48 + 24)], v17, v13);
  *v22 = 1;
  sub_213D668B4(v22, v25);
  v29 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  v30 = v9[7];
  v31 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v31 - 8) + 56))(&v12[v30], 1, 1, v31);
  v32 = v9[8];
  v33 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v33 - 8) + 56))(&v12[v32], 1, 1, v33);
  v34 = v9[9];
  sub_213D66A40(v25, &v12[v34], type metadata accessor for MapCompassConfig);
  (*(v49 + 56))(&v12[v34], 0, 1, v28);
  *&v12[v9[10]] = 2;
  *&v12[v9[11]] = 2;
  *&v12[v9[12]] = 2;
  if (sub_213D65738())
  {
    v35 = sub_213D9149C();
    v36 = v46;
    sub_213D66A40(v12, &v46[*(v51 + 36)], type metadata accessor for MapControlsConfig);
    *v36 = v35;
    v37 = &qword_27C8EA1B8;
    v38 = &qword_213D94B50;
    sub_213CE2C28(v36, v52, &qword_27C8EA1B8, &qword_213D94B50);
  }

  else
  {
    v39 = type metadata accessor for _MapCompass(0);
    v36 = v47;
    sub_213D66A40(v25, &v47[*(v39 + 24)], type metadata accessor for MapCompassConfig);
    v40 = (v1 + *(type metadata accessor for MapCompass(0) + 32));
    v41 = *v40;
    v42 = *(v40 + 8);
    *v36 = swift_getKeyPath();
    *(v36 + 8) = 0;
    *(v36 + 16) = v41;
    *(v36 + 24) = v42;
    v43 = v52;
    *(v36 + *(v53 + 36)) = 257;
    v37 = &qword_27C8EC558;
    v38 = &qword_213D9A3F0;
    sub_213CE2C28(v36, v43, &qword_27C8EC558, &qword_213D9A3F0);
  }

  swift_storeEnumTagMultiPayload();
  sub_213CE189C();
  sub_213D66938();
  sub_213D90E5C();
  sub_213CD8330(v36, v37, v38);
  sub_213D669E0(v12, type metadata accessor for MapControlsConfig);
  return sub_213D669E0(v25, type metadata accessor for MapCompassConfig);
}

uint64_t sub_213D66140()
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

uint64_t sub_213D66294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D66E9C(qword_27C8EC5B8);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213D66314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D66E9C(qword_27C8EC5B8);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213D66394()
{
  sub_213D66E9C(qword_27C8EC5B8);
  sub_213D90E1C();
  __break(1u);
}

id sub_213D663D8()
{
  v1 = v0;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v0 + 24) & 1) == 0)
  {
    v7 = *(v0 + 16);
    v8 = sub_213D66140();
    if (*(v8 + 16) && (v9 = sub_213CE212C(v7), (v10 & 1) != 0))
    {
      sub_213CE2A1C(*(v8 + 56) + 8 * v9, v23);

      sub_213CE2A78(v23, v24);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        v13 = [objc_opt_self() compassButtonWithMapView_];

        sub_213CE2AD4(v24);
        goto LABEL_8;
      }

      sub_213CE2AD4(v24);
    }

    else
    {
    }
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CD4DB8]) init];
LABEL_8:
  v14 = v1 + *(type metadata accessor for _MapCompass(0) + 24);
  v15 = qword_213D9A5B0[*(v14 + 1)];
  v16 = v13;
  [v16 setCompassVisibility_];
  v17 = type metadata accessor for MapCompassConfig(0);
  (*(v3 + 16))(v6, v14 + *(v17 + 24), v2);
  v18 = (*(v3 + 88))(v6, v2);
  if (v18 == *MEMORY[0x277CDF418] || v18 == *MEMORY[0x277CDF438] || v18 == *MEMORY[0x277CDF440])
  {
    goto LABEL_18;
  }

  if (v18 != *MEMORY[0x277CDF420])
  {
    (*(v3 + 8))(v6, v2);
LABEL_18:
    v21 = 1;
    goto LABEL_19;
  }

  v21 = 2;
LABEL_19:
  [v16 setCompassSize_];

  return v16;
}

id sub_213D66654(void *a1)
{
  v2 = v1;
  v4 = sub_213D9051C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v1 + 24) & 1) == 0)
  {
    v9 = *(v1 + 16);
    v10 = sub_213D66140();
    if (*(v10 + 16) && (v11 = sub_213CE212C(v9), (v12 & 1) != 0))
    {
      sub_213CE2A1C(*(v10 + 56) + 8 * v11, v21);

      sub_213CE2A78(v21, v22);
      Strong = swift_unknownObjectWeakLoadStrong();
      [a1 setMapView_];

      sub_213CE2AD4(v22);
    }

    else
    {
    }
  }

  v14 = v2 + *(type metadata accessor for _MapCompass(0) + 24);
  [a1 setCompassVisibility_];
  v15 = type metadata accessor for MapCompassConfig(0);
  (*(v5 + 16))(v8, v14 + *(v15 + 24), v4);
  v16 = (*(v5 + 88))(v8, v4);
  if (v16 == *MEMORY[0x277CDF418] || v16 == *MEMORY[0x277CDF438] || v16 == *MEMORY[0x277CDF440])
  {
    goto LABEL_16;
  }

  if (v16 != *MEMORY[0x277CDF420])
  {
    (*(v5 + 8))(v8, v4);
LABEL_16:
    v19 = 1;
    return [a1 setCompassSize_];
  }

  v19 = 2;
  return [a1 setCompassSize_];
}

uint64_t sub_213D668B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapCompassConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213D66938()
{
  result = qword_27C8EC568;
  if (!qword_27C8EC568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EC558, &qword_213D9A3F0);
    sub_213D66E9C(&qword_27C8EC570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC568);
  }

  return result;
}

uint64_t sub_213D669E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D66A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_213D66AEC()
{
  sub_213D510F8();
  if (v0 <= 0x3F)
  {
    sub_213D51150(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213D51150(319, &qword_27C8EA218, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_213D51094();
        if (v3 <= 0x3F)
        {
          sub_213D51150(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_213D66C24()
{
  result = qword_27C8EC588;
  if (!qword_27C8EC588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EC590, &qword_213D9A478);
    sub_213CE189C();
    sub_213D66938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC588);
  }

  return result;
}

void sub_213D66CD8()
{
  sub_213D51150(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213D51150(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MapCompassConfig(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213D66DE4()
{
  result = sub_213D9051C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213D66E9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _MapCompass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213D66EE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TagValueTraitKey.Value();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  sub_213D9101C();
  v9 = *(a1 - 8);
  if ((*(v9 + 48))(v8, 1, a1) == 1)
  {
    (*(v5 + 8))(v8, v4);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a2, v8, a1);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, a1);
}

uint64_t MapContent.tag<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TagValueTraitKey.Value();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TagValueTraitKey();
  v12 = *(a3 - 8);
  (*(v12 + 16))(v10, a1, a3);
  (*(v12 + 56))(v10, 0, 1, a3);
  swift_getWitnessTable();
  sub_213D74DFC(v11, v10, a2);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_213D6726C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_213D672C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_213D67448(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
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
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

id sub_213D67678(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a3)
    {
      v6 = *(a3 + 16);
      if (v6)
      {
        v23 = MEMORY[0x277D84F90];
        sub_213D91E1C();
        sub_213D67A38();
        v7 = (a3 + 48);
        do
        {
          v8 = *(v7 - 2);
          v9 = *(v7 - 1);
          v10 = *v7;
          v7 += 3;
          sub_213D2BD34(v8, v9);
          sub_213D67678(v8, v9, v10);
          sub_213D91DEC();
          v11 = *(v23 + 16);
          sub_213D91E2C();
          sub_213D91E3C();
          sub_213D91DFC();
          --v6;
        }

        while (v6);
        v12 = a1[2];
        if (a2)
        {
          if (!v23)
          {
            v13 = 0;
LABEL_14:
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

            v18 = [ObjCClassFromMetadata polygonWithCoordinates:a1 + 4 count:v12 interiorPolygons:v13];
            sub_213D1E5E8(a1, a2);

LABEL_19:

            return v18;
          }

LABEL_13:
          sub_213D67A38();
          v13 = sub_213D919EC();

          goto LABEL_14;
        }

        if (!v23)
        {
          v19 = 0;
          goto LABEL_18;
        }
      }

      else
      {
        v12 = a1[2];
        if (a2)
        {
          goto LABEL_13;
        }
      }

      sub_213D67A38();
      v19 = sub_213D919EC();
    }

    else
    {
      v13 = 0;
      v19 = 0;
      v12 = a1[2];
      if (a2)
      {
        goto LABEL_14;
      }
    }

LABEL_18:
    v21 = swift_getObjCClassFromMetadata();

    v18 = [v21 polygonWithPoints:a1 + 4 count:v12 interiorPolygons:v19];
    sub_213D1E5E8(a1, a2);

    goto LABEL_19;
  }

  v14 = swift_getObjCClassFromMetadata();
  v15 = [a1 points];
  v16 = [a1 pointCount];
  v17 = [a1 interiorPolygons];
  v18 = [v14 polygonWithPoints:v15 count:v16 interiorPolygons:v17];
  sub_213D1E5E8(a1, a2);

  return v18;
}

uint64_t sub_213D67958(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (a1[1])
  {
    if (v6)
    {
      JUMPOUT(0x21604E890);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_213D9147C();
}

BOOL sub_213D6798C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = *(a1 + 16);
      if (v4 == *(a3 + 16))
      {
        v5 = (a1 + 32);
        v6 = (a3 + 32);
        do
        {
          result = v4 == 0;
          if (!v4)
          {
            break;
          }

          v8 = *v5++;
          v9 = v8;
          v10 = *v6++;
          *&v9.f64[0] = vmovn_s64(vceqq_f64(v9, v10));
          --v4;
        }

        while ((LODWORD(v9.f64[0]) & HIDWORD(v9.f64[0]) & 1) != 0);
        return result;
      }
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  v11 = *(a1 + 16);
  if (v11 != *(a3 + 16))
  {
    return 0;
  }

  v12 = (a1 + 32);
  v13 = (a3 + 32);
  do
  {
    result = v11 == 0;
    if (!v11)
    {
      break;
    }

    v14 = *v12++;
    v15 = v14;
    v16 = *v13++;
    *&v15.f64[0] = vmovn_s64(vceqq_f64(v15, v16));
    --v11;
  }

  while ((LODWORD(v15.f64[0]) & HIDWORD(v15.f64[0]) & 1) != 0);
  return result;
}

unint64_t sub_213D67A38()
{
  result = qword_27C8EB1C0;
  if (!qword_27C8EB1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8EB1C0);
  }

  return result;
}

uint64_t sub_213D67A84(uint64_t *a1, uint64_t a2)
{
  sub_213D1E22C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EC6C0, &qword_213D9A640);
  if (swift_dynamicCast())
  {
    v4 = v9;
  }

  else
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = sub_213D904CC();
    if (!v6)
    {
      v6 = sub_213D9149C();
    }

    v4 = v6;
  }

  v7 = sub_213D90C0C();
  (*(*(v7 - 8) + 8))(a2, v7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IdentifiableMapItem.MapItemIdentity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for IdentifiableMapItem.MapItemIdentity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t Annotation.init(coordinate:anchor:accessoryAnchor:content:label:)@<X0>(uint64_t (*a1)(int *, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, double *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  v18 = type metadata accessor for Annotation();
  *(a3 + v18[16]) = 0.0;
  v19 = (a3 + v18[17]);
  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  a3[3] = a7;
  *v19 = a8;
  v19[1] = a9;
  *(v19 + 16) = 0;
  v20 = a3 + v18[14];
  v24 = a1(v18, v21, v22, v23);
  v25 = a3 + v18[15];
  return a2(v24);
}

uint64_t Annotation.init(coordinate:anchor:content:label:)@<X0>(uint64_t (*a1)(int *, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, double *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  sub_213D917CC();
  v15 = v14;
  v17 = v16;
  v18 = type metadata accessor for Annotation();
  *(a3 + v18[16]) = 0.0;
  v19 = a3 + v18[17];
  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  a3[3] = a7;
  *v19 = v15;
  *(v19 + 1) = v17;
  v19[16] = 0;
  v20 = a3 + v18[14];
  v24 = a1(v18, v21, v22, v23);
  v25 = a3 + v18[15];
  return a2(v24);
}

uint64_t Annotation.init<>(_:coordinate:anchor:accessoryAnchor:content:)@<X0>(void (*a1)(void)@<X4>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  v16 = type metadata accessor for Annotation();
  *(a2 + v16[16]) = 0.0;
  v17 = (a2 + v16[17]);
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  a2[3] = a6;
  *v17 = a7;
  v17[1] = a8;
  *(v17 + 16) = 0;
  v18 = a2 + v16[14];
  a1();
  result = sub_213D9125C();
  v20 = a2 + v16[15];
  *v20 = result;
  *(v20 + 1) = v21;
  v20[16] = v22 & 1;
  *(v20 + 3) = v23;
  return result;
}

uint64_t Annotation.init<>(_:coordinate:anchor:content:)@<X0>(void (*a1)(void)@<X4>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  sub_213D917CC();

  return Annotation.init<>(_:coordinate:anchor:accessoryAnchor:content:)(a1, a2, a3, a4, a5, a6, v12, v13);
}

uint64_t Annotation.init<A>(_:coordinate:anchor:accessoryAnchor:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X4>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  v20 = *(a3 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](a1);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = MEMORY[0x277CE0BD8];
  v37[1] = v24;
  v37[2] = MEMORY[0x277CE0BC8];
  v37[3] = v25;
  v26 = type metadata accessor for Annotation();
  *(a4 + v26[16]) = 0.0;
  v27 = (a4 + v26[17]);
  *a4 = a5;
  a4[1] = a6;
  a4[2] = a7;
  a4[3] = a8;
  *v27 = a9;
  v27[1] = a10;
  *(v27 + 16) = 0;
  v28 = a4 + v26[14];
  a2();
  (*(v20 + 16))(v23, a1, a3);
  v29 = sub_213D9127C();
  v31 = v30;
  LOBYTE(a2) = v32;
  v34 = v33;
  result = (*(v20 + 8))(a1, a3);
  v36 = a4 + v26[15];
  *v36 = v29;
  *(v36 + 1) = v31;
  v36[16] = a2 & 1;
  *(v36 + 3) = v34;
  return result;
}

uint64_t Annotation.init<A>(_:coordinate:anchor:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X4>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](a1);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a1, v21, v18);
  sub_213D917CC();
  Annotation.init<A>(_:coordinate:anchor:accessoryAnchor:content:)(v20, a2, a3, a4, a5, a6, a7, a8, v22, v23);
  return (*(v16 + 8))(a1, a3);
}

uint64_t Annotation.init<>(item:anchor:accessoryAnchor:content:)@<X0>(void *a1@<X0>, void (*a2)(int *, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v18 = [a1 placemark];
  v19 = [v18 location];

  if (v19)
  {
    [v19 coordinate];
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *a5 = v21;
  *(a5 + 8) = v23;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  v38 = MEMORY[0x277CE0BD8];
  v39 = MEMORY[0x277CE0BC8];
  v40 = a4;
  v24 = type metadata accessor for Annotation();
  v25 = a5 + v24[14];
  a2(v24, v26, v27, v28);
  v29 = [a1 name];
  if (v29)
  {
    v30 = v29;
    sub_213D9193C();
  }

  v31 = v24[16];
  v32 = a5 + v24[17];
  sub_213CEFA54();
  result = sub_213D9127C();
  v34 = a5 + v24[15];
  *v34 = result;
  *(v34 + 8) = v35;
  *(v34 + 16) = v36 & 1;
  *(v34 + 24) = v37;
  *(a5 + v31) = a1;
  *v32 = a8;
  *(v32 + 8) = a9;
  *(v32 + 16) = 0;
  return result;
}

uint64_t static Annotation._makeMapContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a2;
  v54 = a1;
  v71 = *MEMORY[0x277D85DE8];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v52 = *(v53 - 8);
  v55 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v13 = (&v44 - v12);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F8, &qword_213D95DA0);
  v58 = *(v59 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v49 = sub_213D9057C();
  v48 = *(v49 - 8);
  v18 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v20 = &v44 - v19;
  v50 = a7;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  *&v69 = a3;
  *(&v69 + 1) = a4;
  *(&v45 + 1) = a4;
  *v70 = a5;
  *&v70[8] = a6;
  *(&v46 + 1) = a6;
  type metadata accessor for Annotation();
  v21 = sub_213D9057C();
  v22 = v54;
  sub_213D514F4(sub_213D68C04, v21, a3, v20);
  v23 = type metadata accessor for _MapContentInputs(0);
  v24 = v56;
  v25 = v56 + v23[5];
  v57 = v17;
  v47 = v20;
  *&v45 = a3;
  *&v46 = a5;
  sub_213D90CAC();
  v26 = sub_213CDF810(v22);
  v27 = v24;
  sub_213D90C3C();
  if (v55 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v28 = *v13;
  (*(v52 + 8))(v13, v53);
  v29 = v51;
  (*(v58 + 16))(v51, v57, v59);
  if (v14 != 4)
  {
    goto LABEL_5;
  }

  v30 = *v29;
  v58 = *(v58 + 8);
  v31 = v59;
  v32 = (v58)(v29, v59);
  v33 = *(v27 + v23[7]);
  *&v66 = __PAIR64__(v28, v26);
  *(&v66 + 1) = __PAIR64__(v33, v30);
  LODWORD(v67) = 0;
  *v68 = 0;
  *&v68[8] = 771;
  v68[10] = 6;
  v64 = v66;
  *v65 = v67;
  *&v65[15] = *&v68[7];
  MEMORY[0x28223BE20](v32);
  v69 = v45;
  *v70 = v46;
  List = type metadata accessor for Annotation.MakeList();
  *(&v44 - 2) = List;
  *(&v44 - 1) = swift_getWitnessTable();
  v35 = *(List - 8);
  (*(v35 + 16))(&v69, &v66, List);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA700, &qword_213D9A7B0);
  sub_213CDDDA4(&v64, sub_213CF3038, (&v44 - 4), List, MEMORY[0x277D84A98], v36, MEMORY[0x277D84AC0], v37);
  v69 = v64;
  *v70 = *v65;
  *&v70[15] = *&v65[15];
  v38 = *(v35 + 8);
  v39 = v38(&v69, List);
  v40 = v23[6];
  MEMORY[0x28223BE20](v39);
  *(&v44 - 4) = v41;
  sub_213CD84E0();
  sub_213D90F7C();
  v38(&v66, List);
  (v58)(v57, v31);
  result = (*(v48 + 8))(v47, v49);
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213D68B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for Annotation();
  v8 = *(v7 + 60);
  v12[2] = v7;
  v12[3] = a2;
  v9 = sub_213D9041C();
  sub_213D48E14(a1 + v8, sub_213CF3B70, v12, a2, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);
  return v13;
}

uint64_t sub_213D68C10(uint64_t a1)
{
  v2 = v1;
  v161 = *MEMORY[0x277D85DE8];
  v138 = type metadata accessor for MapContentList.Item.Content(0);
  v4 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v141 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for MapContentList.Item(0);
  v142 = *(v140 - 8);
  v6 = *(v142 + 64);
  MEMORY[0x28223BE20](v140);
  v139 = (&v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v143 = &v121 - v9;
  v10 = *(a1 + 24);
  v135 = *(v10 - 8);
  v11 = *(v135 + 64);
  MEMORY[0x28223BE20](v12);
  v133 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for ResolvedAnnotation();
  v14 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v134 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_213D90C0C();
  v150 = *(v148 - 8);
  v16 = *(v150 + 64);
  MEMORY[0x28223BE20](v148);
  v18 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_213D90CFC();
  v149 = *(v153 - 8);
  v19 = *(v149 + 64);
  MEMORY[0x28223BE20](v153);
  v152 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v121 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v121 - v28;
  v30 = sub_213D9100C();
  v155 = *(v30 - 8);
  v31 = *(v155 + 64);
  MEMORY[0x28223BE20](v30);
  v132 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v151 = &v121 - v34;
  v35 = *(a1 + 32);
  v146 = a1;
  *&v36 = *(a1 + 16);
  v136 = v10;
  *(&v36 + 1) = v10;
  v129 = v35;
  v159 = v36;
  *v160 = v35;
  v37 = type metadata accessor for Annotation();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = (&v121 - v40);
  v42 = *v2;
  Value = AGGraphGetValue();
  v126 = v44;
  v144 = v38;
  v45 = v38;
  v46 = v155;
  v47 = *(v45 + 16);
  v147 = v37;
  v47(v41, Value, v37);
  v48 = v2[3];
  v49 = *MEMORY[0x277CEF7D0];
  v154 = v30;
  if (v48 == v49)
  {
    (*(v26 + 56))(v24, 1, 1, v25);
    v50 = *(v25 + 48);
    sub_213D90FFC();
    v29[v50] = 0;
    if ((*(v26 + 48))(v24, 1, v25) != 1)
    {
      sub_213CF3B08(v24);
    }
  }

  else
  {
    v51 = AGGraphGetValue();
    v53 = v52;
    v54 = *(v25 + 48);
    (*(v46 + 16))(v24, v51, v154);
    v55 = v53 & 1;
    v30 = v154;
    v24[v54] = v55;
    (*(v26 + 56))(v24, 0, 1, v25);
    sub_213CF3968(v24, v29);
  }

  LODWORD(v125) = v29[*(v25 + 48)];
  v56 = *(v155 + 32);
  v131 = v155 + 32;
  v130 = v56;
  v56(v151, v29, v30);
  v57 = v2[2];
  v58 = v153;
  v59 = AGGraphGetValue();
  *&v124 = v60;
  v61 = *(v149 + 16);
  v128 = v149 + 16;
  v127 = v61;
  v61(v152, v59, v58);
  v62 = *(v2 + 31);
  v63 = *(v2 + 1);
  v159 = *v2;
  *v160 = v63;
  *&v160[15] = v62;
  v64 = *&v160[8];
  v65 = *(v2 + 1);
  v157 = *v2;
  *v158 = v65;
  *&v158[15] = *(v2 + 31);
  sub_213CF520C(v18);
  v66 = sub_213D90A7C();
  v67 = *(v150 + 8);
  v68 = v148;
  v67(v18, v148);
  v150 = v66;
  v145 = v41;
  if (!v66)
  {
    if (!v64)
    {
      (*(*(v146 - 8) + 16))(&v157, &v159);
      v123 = 0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v64)
  {
    (*(*(v146 - 8) + 16))(&v157, &v159);
LABEL_11:
    v73 = 1;
    goto LABEL_12;
  }

  v69 = v146;
  v70 = *(v146 - 8);
  (*(v70 + 16))(&v157, &v159, v146);

  v71 = sub_213D9147C();
  v72 = v69;
  v41 = v145;
  (*(v70 + 8))(&v159, v72);

  v73 = v71 ^ 1;
LABEL_12:
  v123 = v73;
LABEL_13:
  v74 = *(v2 + 1);
  v157 = *v2;
  *v158 = v74;
  v76 = *(v2 + 33);
  v158[16] = *(v2 + 32);
  v75 = v158[16];
  *&v158[17] = v76;
  sub_213CF520C(v18);
  sub_213CE3080();
  sub_213D90C1C();
  v67(v18, v68);
  v77 = v156;
  if (v75 == 3)
  {
    v78 = 1;
  }

  else
  {
    v78 = sub_213D904DC() ^ 1;
  }

  v122 = v78;
  v79 = *(v2 + 1);
  v157 = *v2;
  *v158 = v79;
  v158[16] = *(v2 + 32);
  v81 = *(v2 + 34);
  v158[17] = *(v2 + 33);
  v80 = v158[17];
  v158[18] = v81;
  sub_213CF520C(v18);
  sub_213CE302C();
  sub_213D90C1C();
  v67(v18, v68);
  LODWORD(v146) = v156;
  if (v80 == 3)
  {
    v82 = 1;
  }

  else
  {
    v82 = sub_213D904DC() ^ 1;
  }

  v157 = *v2;
  v83 = v2[4];
  *&v158[4] = *(v2 + 5);
  *&v158[11] = *(v2 + 27);
  *v158 = v83;
  sub_213CF520C(v18);
  sub_213CEF738();
  sub_213D90C1C();
  v67(v18, v148);
  v84 = *(v2 + 34);
  LODWORD(v18) = v156;
  if (v156 == 6)
  {
    v85 = v84 == 6;
  }

  else
  {
    if (v84 == 6)
    {
      goto LABEL_28;
    }

    switch(v156)
    {
      case 5u:
        v85 = v84 == 5;
        break;
      case 4u:
        v85 = v84 == 4;
        break;
      case 3u:
        v85 = v84 == 3;
        break;
      default:
        if ((v84 - 3) >= 3 && ((v126 | v123 | v124 | v122 | v82 | v125) & 1) == 0 && v156 == v84)
        {
          goto LABEL_25;
        }

        goto LABEL_28;
    }
  }

  v86 = !v85;
  if (((v86 | v126 | v123 | v124 | v122 | v82 | v125) & 1) == 0)
  {
LABEL_25:
    if (AGGraphGetOutputValue())
    {
      goto LABEL_31;
    }
  }

LABEL_28:
  v148 = v2;
  LODWORD(v126) = v83 + 1;
  v2[4] = v83 + 1;
  v87 = v137;
  v88 = *(v137 + 24);
  v89 = v41[1];
  v125 = *v41;
  v124 = v89;
  v90 = v134;
  v127(&v134[v88], v152, v153);
  v91 = v147;
  v92 = v77;
  (*(v135 + 16))(v133, v41 + *(v147 + 56), v136);
  v93 = sub_213D915DC();
  v94 = *(v91 + 64);
  v95 = (v41 + *(v91 + 68));
  v133 = *v95;
  LODWORD(v135) = v18;
  *&v129 = v95[1];
  v96 = v150;
  LODWORD(v128) = *(v95 + 16);
  v18 = *(v41 + v94);
  v97 = *(v155 + 16);
  v98 = v90 + v87[14];
  v99 = v151;
  v100 = v90;
  v101 = v154;
  v97(v98, v151, v154);
  v102 = v124;
  *v100 = v125;
  v100[1] = v102;
  *(v100 + v87[7]) = v93;
  *(v100 + v87[8]) = v96;
  v103 = v87[9];
  LODWORD(v136) = v92;
  *(v100 + v103) = v92;
  *(v100 + v87[10]) = v146;
  v104 = v100 + v87[11];
  v105 = v129;
  *v104 = v133;
  *(v104 + 1) = v105;
  LOBYTE(v105) = v135;
  v104[16] = v128;
  *(v100 + v87[12]) = v18;
  v106 = v18;
  LOBYTE(v18) = v105;
  *(v100 + v87[13]) = v105;
  v107 = v132;
  v97(v132, v99, v101);
  v108 = v141;
  sub_213D6A310(v100, v141, type metadata accessor for ResolvedAnnotation);
  swift_storeEnumTagMultiPayload();
  sub_213CDF60C();

  v109 = v106;
  sub_213D9101C();
  v110 = v157;
  if (!v157)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_213D94520;
    *(v110 + 32) = 0;
    *(v110 + 72) = 0;
  }

  v111 = v139;
  *v139 = v110;
  v112 = v140;
  v130(v111 + *(v140 + 28), v107, v154);
  *(v111 + 8) = v126;
  sub_213CF39D8(v108, v111 + *(v112 + 24), type metadata accessor for MapContentList.Item.Content);
  v113 = v143;
  sub_213CF39D8(v111, v143, type metadata accessor for MapContentList.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
  v114 = *(v142 + 72);
  v115 = (*(v142 + 80) + 32) & ~*(v142 + 80);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_213D94520;
  sub_213D6A310(v113, v116 + v115, type metadata accessor for MapContentList.Item);
  *&v157 = sub_213D71A68(v116);
  *(&v157 + 1) = v117;
  AGGraphSetOutputValue();
  sub_213D6A378(v113, type metadata accessor for MapContentList.Item);
  sub_213D6A378(v100, type metadata accessor for ResolvedAnnotation);

  v41 = v145;
  v2 = v148;
  LOBYTE(v77) = v136;
LABEL_31:
  *(v2 + 34) = v18;
  *(v2 + 33) = v146;
  *(v2 + 32) = v77;
  v118 = *(v2 + 3);
  *(v2 + 3) = v150;

  (*(v149 + 8))(v152, v153);
  (*(v155 + 8))(v151, v154);
  result = (*(v144 + 8))(v41, v147);
  v120 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_213D69C08(uint64_t a1)
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 24);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        v6 = *(a1 + 16);
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          sub_213D6A218(319, qword_27C8EA798, sub_213CF3264);
          if (v8 <= 0x3F)
          {
            sub_213D6A218(319, qword_27C8EB548, type metadata accessor for CGPoint);
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_213D69D2C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v8 <= v5)
  {
    v12 = *(v4 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((((v13 + ((v10 + v11 + ((v9 + 32) & ~v9)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v15 = (a2 - v12 + 255) >> 8;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v14];
      if (!*&a1[v14])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *&a1[v14];
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v14);
    if (v14 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v14];
    if (a1[v14])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  v23 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;
  if (v5 == v12)
  {
    return (*(v4 + 48))(v23);
  }

  v24 = (v23 + v10 + v11) & ~v11;
  if (v8 == v12)
  {
    return (*(v7 + 48))(v24, v8, v6);
  }

  v25 = *((v13 + v24) & 0xFFFFFFFFFFFFFFF8);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  if ((v25 + 1) >= 2)
  {
    return v25;
  }

  else
  {
    return 0;
  }
}

void sub_213D69F48(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  if (v10 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(*(v8 - 8) + 64) + 7;
  v16 = ((((v15 + ((v12 + v13 + ((v11 + 32) & ~v11)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v14 >= a3)
  {
    v20 = 0;
    if (v14 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = (a3 - v14 + 255) >> 8;
    if (v16 <= 3)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v14 >= a2)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&a1[v16] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v16] = 0;
      }

      else if (v20)
      {
        a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      v23 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;
      if (v7 == v14)
      {
        v24 = *(v6 + 56);

        v24(v23);
      }

      else
      {
        v25 = (v23 + v12 + v13) & ~v13;
        if (v10 == v14)
        {
          v26 = *(v9 + 56);

          v26(v25);
        }

        else
        {
          v27 = ((v15 + v25) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v27 = 0;
            *v27 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v27 = a2;
          }
        }
      }

      return;
    }
  }

  v21 = ~v14 + a2;
  bzero(a1, ((((v15 + ((v12 + v13 + ((v11 + 32) & ~v11)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v16 <= 3)
  {
    v22 = (v21 >> 8) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v16 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_29:
      if (v20 == 2)
      {
        *&a1[v16] = v22;
      }

      else
      {
        *&a1[v16] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v20)
  {
    a1[v16] = v22;
  }
}

void sub_213D6A218(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213D91C7C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_213D6A26C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for ResolvedAnnotation()
{
  result = qword_27C8EC7C8;
  if (!qword_27C8EC7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213D6A310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D6A378(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_213D6A400()
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v1 <= 0x3F)
    {
      sub_213D90CFC();
      if (v2 <= 0x3F)
      {
        sub_213CF3CE4(319, &qword_27C8EA248);
        if (v3 <= 0x3F)
        {
          sub_213D6A218(319, qword_27C8EB548, type metadata accessor for CGPoint);
          if (v4 <= 0x3F)
          {
            sub_213D6A218(319, qword_27C8EA798, sub_213CF3264);
            if (v5 <= 0x3F)
            {
              sub_213CF3CE4(319, qword_27C8EA948);
              if (v6 <= 0x3F)
              {
                sub_213D9100C();
                if (v7 <= 0x3F)
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
}

uint64_t _ConditionalMapContent.storage.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for _ConditionalMapContent.Storage();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t _ConditionalMapContent.init(trueContent:falseType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  type metadata accessor for _ConditionalMapContent.Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t _ConditionalMapContent.init(falseContent:trueType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for _ConditionalMapContent.Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static _ConditionalMapContent<>._makeMapContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = a5;
  v48 = a6;
  v49 = a7;
  v50 = a1;
  v62 = *MEMORY[0x277D85DE8];
  v53 = type metadata accessor for _MapContentOutputs.SetDependency(0);
  v12 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _MapContentOutputs(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for _MapContentInputs(0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v61 = a6;
  v23 = _s9ContainerVMa();
  v51 = *(v23 - 8);
  v24 = *(v51 + 64);
  MEMORY[0x28223BE20](v23);
  v46 = (&v45 - v25);
  v26 = type metadata accessor for _MapContentInputs.AddPreference(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v30 = *(v19 + 32);
  sub_213D6DC14(&qword_27C8EC7D8, type metadata accessor for _MapContentInputs.AddPreference);
  sub_213D90F2C();
  v31 = v49;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v32 = sub_213D90FAC();
  v33 = *(v32 - 8);
  (*(v33 + 40))(v31, v29, v32);
  type metadata accessor for _ConditionalMapContent();
  LODWORD(v29) = sub_213CDF810(v50);
  sub_213CDDF50(a2, v22, type metadata accessor for _MapContentInputs);
  sub_213CDDF50(v31, v17, type metadata accessor for _MapContentOutputs);
  v34 = v46;
  v35 = v29;
  v36 = v22;
  v38 = v47;
  v37 = v48;
  sub_213D6ABF4(v35, v36, v17, v46);
  v58 = a3;
  v59 = a4;
  v60 = v38;
  v61 = v37;
  v55 = _s4InfoVMa();
  v56 = v23;
  WitnessTable = swift_getWitnessTable();
  v39 = sub_213D903FC();
  sub_213CDDDA4(v34, sub_213D6D308, v54, v23, MEMORY[0x277D84A98], v39, MEMORY[0x277D84AC0], v40);
  LODWORD(v37) = v58;
  v41 = v52;
  (*(v33 + 16))(v52, v31, v32);
  v42 = v41 + *(v53 + 20);
  *v42 = v37;
  *(v42 + 4) = 0;
  sub_213D6DC14(qword_27C8EC7E0, type metadata accessor for _MapContentOutputs.SetDependency);
  sub_213D90F8C();
  sub_213D6DC5C(v41, type metadata accessor for _MapContentOutputs.SetDependency);
  result = (*(v51 + 8))(v34, v23);
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_213D6ABF4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  *a4 = a1;
  v7 = _s9ContainerVMa();
  sub_213D6DCD4(a2, a4 + v7[13], type metadata accessor for _MapContentInputs);
  sub_213D6DCD4(a3, a4 + v7[14], type metadata accessor for _MapContentOutputs);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a4 + v7[15]) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static _ConditionalMapContent<>._mapContentCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a4 + 40))();
  if ((v9 & 1) == 0)
  {
    v10 = result;
    v11 = result != (*(a5 + 40))(a1, a3, a5);
    if ((v12 | v11))
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

uint64_t sub_213D6AD4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for _ConditionalMapContent.Storage();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v24 - v11;
  v13 = type metadata accessor for _ConditionalMapContent();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  (*(v18 + 16))(&v24 - v16, v3, v15);
  v19 = *(TupleTypeMetadata2 + 48);
  v20 = *(v7 - 8);
  (*(v20 + 32))(v12, v17, v7);
  (*(v20 + 16))(&v12[v19], a1, v7);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (a1 == 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_3:
      (*(v9 + 8))(v12, TupleTypeMetadata2);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_3;
  }

  v23 = *(v20 + 8);
  v23(&v12[v19], v7);
  v23(v12, v7);
  return 1;
}

uint64_t sub_213D6AFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _ConditionalMapContent();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = _s4InfoVMa();
  *(a3 + *(result + 52)) = a2;
  return result;
}

uint64_t sub_213D6B064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for _ConditionalMapContent();
  Value = AGGraphGetValue();
  v9 = *(*(v7 - 8) + 16);

  return v9(a2, Value, v7);
}

uint64_t sub_213D6B0F0(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v60 = *(a1 + 16);
  v59 = *(a1 + 24);
  v61 = v59;
  v62 = v3;
  v4 = _s4InfoVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = &v47 - v9;
  MEMORY[0x28223BE20](v10);
  v50 = &v47 - v11;
  v12 = sub_213D91C7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v52 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  v22 = type metadata accessor for _ConditionalMapContent();
  v55 = *(v22 - 8);
  v56 = v22;
  v23 = *(v55 + 64);
  MEMORY[0x28223BE20](v22);
  v58 = &v47 - v24;
  sub_213D6B064(a1, &v47 - v24);
  OutputValue = AGGraphGetOutputValue();
  v53 = v1;
  if (OutputValue)
  {
    (*(v5 + 16))(v21, OutputValue, v4);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v5 + 56))(v21, v26, 1, v4);
  v27 = *(v13 + 16);
  *&v59 = v21;
  v27(v18, v21, v12);
  v28 = v13;
  v29 = *(v5 + 48);
  v30 = v29(v18, 1, v4);
  v57 = v28;
  if (v30 == 1)
  {
    (*(v28 + 8))(v18, v12);
LABEL_9:
    v39 = v52;
    v27(v52, v59, v12);
    if (v29(v39, 1, v4) == 1)
    {
      v40 = v57;
      (*(v57 + 8))(v39, v12);
    }

    else
    {
      v41 = v51;
      (*(v5 + 32))(v51, v39, v4);
      sub_213D6B774(v41, a1);
      (*(v5 + 8))(v41, v4);
      v40 = v57;
    }

    v42 = v54;
    v43 = v58;
    v44 = sub_213D6B8C0(v58, a1, v54);
    MEMORY[0x28223BE20](v44);
    *(&v47 - 2) = a1;
    *(&v47 - 1) = swift_getWitnessTable();
    sub_213CDDDA4(v42, sub_213D6DBDC, (&v47 - 4), v4, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v45);
    (*(v5 + 8))(v42, v4);
    (*(v40 + 8))(v59, v12);
    result = (*(v55 + 8))(v43, v56);
    goto LABEL_13;
  }

  v31 = sub_213D6AD4C(v58, v4);
  v48 = *(v5 + 8);
  v49 = v5 + 8;
  v48(v18, v4);
  if ((v31 & 1) == 0)
  {
    goto LABEL_9;
  }

  result = AGGraphGetOutputValue();
  if (result)
  {
    v33 = v50;
    (*(v5 + 16))(v50, result, v4);
    v35 = v55;
    v34 = v56;
    v36 = v58;
    v37 = (*(v55 + 24))(v33, v58, v56);
    MEMORY[0x28223BE20](v37);
    *(&v47 - 2) = a1;
    *(&v47 - 1) = swift_getWitnessTable();
    sub_213CDDDA4(v33, sub_213D6DD74, (&v47 - 4), v4, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v38);
    (*(v57 + 8))(v59, v12);
    (*(v35 + 8))(v36, v34);
    result = (v48)(v33, v4);
LABEL_13:
    v46 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_213D6B774(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for _MapContentOutputs.ResetPreference(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 56);
  v10 = sub_213D90FAC();
  (*(*(v10 - 8) + 16))(v8, v2 + v9, v10);
  sub_213D6DC14(&qword_27C8ECA68, type metadata accessor for _MapContentOutputs.ResetPreference);
  sub_213D90F8C();
  sub_213D6DC5C(v8, type metadata accessor for _MapContentOutputs.ResetPreference);
  v11 = *(a2 + 32);
  v14[0] = *(a2 + 16);
  v14[1] = v11;
  v12 = *(a1 + *(_s4InfoVMa() + 52));
  return AGSubgraphInvalidate();
}

uint64_t sub_213D6B8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _MapContentOutputs(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _MapContentInputs(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x277CEF7D0])
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    v17 = *(v3 + *(a2 + 60));
    v18 = AGSubgraphGetGraph();
    v19 = AGSubgraphCreate();

    AGSubgraphAddChild();
    sub_213CDDF50(v3 + *(a2 + 52), v14, type metadata accessor for _MapContentInputs);
    sub_213CDDF50(v3 + *(a2 + 56), v10, type metadata accessor for _MapContentOutputs);
    AGGraphClearUpdate();
    v20 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    sub_213D6BACC(a1, v16, v14, v10, v19, *(a2 + 16), *(a2 + 24), *(a2 + 32), a3, *(a2 + 40));
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    sub_213D6DC5C(v10, type metadata accessor for _MapContentOutputs);
    return sub_213D6DC5C(v14, type metadata accessor for _MapContentInputs);
  }

  return result;
}

id sub_213D6BACC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v85 = a8;
  v86 = a5;
  v80 = a4;
  v76 = a3;
  v75 = a2;
  v84 = a9;
  v88 = a10;
  v94 = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for _ConditionalMapContent();
  v81 = *(v13 - 8);
  v82 = v13;
  v14 = *(v81 + 64);
  MEMORY[0x28223BE20](v13);
  v79 = &v69 - v15;
  v78 = type metadata accessor for _MapContentOutputs.SetSource(0);
  v16 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_213D9057C();
  v73 = *(v74 - 8);
  v18 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = &v69 - v19;
  v72 = *(a7 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x28223BE20](v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_213D9057C();
  v69 = *(v70 - 8);
  v24 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v26 = &v69 - v25;
  v27 = *(a6 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for _ConditionalMapContent.Storage();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v69 - v35;
  v37 = type metadata accessor for _MapContentOutputs(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v87 = &v69 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v33 + 16);
  v83 = a1;
  v41(v36, a1, v32, v39);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v72;
    v43 = (*(v72 + 32))(v23, v36, a7);
    v89 = v75;
    MEMORY[0x28223BE20](v43);
    *(&v69 - 4) = a7;
    v90 = a6;
    v91 = a7;
    v44 = v88;
    v92 = v85;
    v93 = v88;
    v45 = _s10FalseChildVMa();
    *(&v69 - 3) = v45;
    *(&v69 - 2) = swift_getWitnessTable();
    v46 = sub_213D903FC();
    v48 = sub_213CDDDA4(&v89, sub_213D6DDA8, (&v69 - 6), v45, MEMORY[0x277D84A98], v46, MEMORY[0x277D84AC0], v47);
    v49 = v90;
    MEMORY[0x28223BE20](v48);
    *(&v69 - 2) = a7;
    *(&v69 - 2) = v49;
    sub_213CDDDA4(v23, sub_213D49914, (&v69 - 4), a7, MEMORY[0x277D84A98], MEMORY[0x277D839B0], MEMORY[0x277D84AC0], v50);
    v51 = v71;
    sub_213CDF770(v49, v71);
    (*(v44 + 32))(v51, v76, a7, v44);
    (*(v73 + 8))(v51, v74);
    (*(v42 + 8))(v23, a7);
  }

  else
  {
    v52 = (*(v27 + 32))(v31, v36, a6);
    v89 = v75;
    MEMORY[0x28223BE20](v52);
    *(&v69 - 4) = a6;
    v90 = a6;
    v91 = a7;
    v53 = v85;
    v92 = v85;
    v93 = v88;
    v54 = _s9TrueChildVMa();
    *(&v69 - 3) = v54;
    *(&v69 - 2) = swift_getWitnessTable();
    v55 = sub_213D903FC();
    v56 = MEMORY[0x277D84A98];
    v58 = sub_213CDDDA4(&v89, sub_213D6DDA8, (&v69 - 6), v54, MEMORY[0x277D84A98], v55, MEMORY[0x277D84AC0], v57);
    v59 = v90;
    MEMORY[0x28223BE20](v58);
    *(&v69 - 2) = a6;
    *(&v69 - 2) = v59;
    sub_213CDDDA4(v31, sub_213D6DD8C, (&v69 - 4), a6, v56, MEMORY[0x277D839B0], MEMORY[0x277D84AC0], v60);
    sub_213CDF770(v59, v26);
    (*(v53 + 32))(v26, v76, a6, v53);
    (*(v69 + 8))(v26, v70);
    (*(v27 + 8))(v31, a6);
  }

  v61 = sub_213D90FAC();
  v62 = *(*(v61 - 8) + 16);
  v63 = v77;
  v62(v77, v80, v61);
  v64 = v87;
  v62((v63 + *(v78 + 20)), v87, v61);
  sub_213D6DC14(qword_27C8ECA70, type metadata accessor for _MapContentOutputs.SetSource);
  sub_213D90F8C();
  sub_213D6DC5C(v63, type metadata accessor for _MapContentOutputs.SetSource);
  sub_213D6DC5C(v64, type metadata accessor for _MapContentOutputs);
  v65 = v79;
  (*(v81 + 16))(v79, v83, v82);
  sub_213D6AFAC(v65, v86, v84);
  v66 = *MEMORY[0x277D85DE8];
  v67 = v86;

  return v67;
}

uint64_t sub_213D6C3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v3 = _s4InfoVMa();
  return (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
}

uint64_t sub_213D6C474(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = *(a1 + 16);
  v2 = v31;
  v3 = type metadata accessor for _ConditionalMapContent.Storage();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = type metadata accessor for _ConditionalMapContent();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v29 = a1;
  v30 = *(a1 + 32);
  v35 = v30;
  v34 = v31;
  v12 = _s4InfoVMa();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  *&v31 = *(v2 - 8);
  v17 = *(v31 + 64);
  MEMORY[0x28223BE20](v18);
  v28 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v33;
  sub_213D6C870(v16);
  (*(v8 + 16))(v11, v16, v7);
  v21 = v32;
  (*(v13 + 8))(v16, v12);
  (*(v21 + 32))(v6, v11, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = (*(v21 + 8))(v6, v3);
  }

  else
  {
    v23 = v31;
    v24 = v28;
    v25 = (*(v31 + 32))(v28, v6, v2);
    MEMORY[0x28223BE20](v25);
    *(&v28 - 2) = v29;
    *(&v28 - 1) = swift_getWitnessTable();
    sub_213CDDDA4(v24, sub_213D6DD74, (&v28 - 4), v2, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v26);
    result = (*(v23 + 8))(v24, v2);
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213D6C870@<X0>(uint64_t a1@<X8>)
{
  v2 = _s4InfoVMa();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t sub_213D6C93C(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = *(a1 + 16);
  v2 = *(&v31 + 1);
  v3 = type metadata accessor for _ConditionalMapContent.Storage();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = type metadata accessor for _ConditionalMapContent();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v29 = a1;
  v30 = *(a1 + 32);
  v35 = v30;
  v34 = v31;
  v12 = _s4InfoVMa();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  *&v31 = *(v2 - 8);
  v17 = *(v31 + 64);
  MEMORY[0x28223BE20](v18);
  v28 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v33;
  sub_213D6C870(v16);
  (*(v8 + 16))(v11, v16, v7);
  v21 = v32;
  (*(v13 + 8))(v16, v12);
  (*(v21 + 32))(v6, v11, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v31;
    v23 = v28;
    v24 = (*(v31 + 32))(v28, v6, v2);
    MEMORY[0x28223BE20](v24);
    *(&v28 - 2) = v29;
    *(&v28 - 1) = swift_getWitnessTable();
    sub_213CDDDA4(v23, sub_213D6DD74, (&v28 - 4), v2, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v25);
    result = (*(v22 + 8))(v23, v2);
  }

  else
  {
    result = (*(v21 + 8))(v6, v3);
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static Optional<A>._makeMapContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for _ConditionalMapContent();
  v11 = sub_213D9057C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v21 - v14);
  sub_213D91C7C();
  v22 = sub_213CDF810(a1);
  v24 = v10;
  v16 = _s5ChildVMa_0();
  v25 = v16;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_213D903FC();
  sub_213CDDDA4(&v22, sub_213CDE72C, v23, v16, MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v18);
  sub_213CDF770(v21[2], v15);
  static _ConditionalMapContent<>._makeMapContent(content:inputs:)(v15, a2, a3, &type metadata for EmptyMapContent, a4, &protocol witness table for EmptyMapContent, a5);
  result = (*(v12 + 8))(v15, v11);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213D6CFB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213D91C7C();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t sub_213D6D03C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_213D91C7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_213D6CFB4(v8);
  if ((*(v9 + 48))(v8, 1, a1) == 1)
  {
    v17 = (*(v5 + 8))(v8, v4);
    return _ConditionalMapContent.init(falseContent:trueType:)(v17, &type metadata for EmptyMapContent, a2);
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v16, v8, a1);
    v19(v13, v16, a1);
    return _ConditionalMapContent.init(trueContent:falseType:)(v13, a1, a2);
  }
}

uint64_t sub_213D6D244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for _ConditionalMapContent();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 1, 1, v4);
}

uint64_t sub_213D6D2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(a1 + 24);
  return sub_213D6D03C(*(a1 + 16), a2);
}

uint64_t sub_213D6D308@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_213CDDE80(v1[4], a1);
}

uint64_t sub_213D6D344(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D6D394(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D6D3E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for _ConditionalMapContent.Storage();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213D6D454(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_213D6D4D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_213D6D5F8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
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

uint64_t sub_213D6D7C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_213D6D804(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for _ConditionalMapContent();
  if (v3 <= 0x3F)
  {
    type metadata accessor for Subgraph(319);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213D6D88C(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = (v3 & 0xFFFFFFFFFFFFFFF8) + 16;
  v8 = v7 & 0xFFFFFFF8;
  v9 = a2 - 2147483646;
  if ((v7 & 0xFFFFFFF8) != 0)
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
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (v11 == 4)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else if (v11 == 2)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
LABEL_5:
      v5 = *((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v5 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return (v8 | v13) ^ 0x80000000;
}

int *sub_213D6D978(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v4)
  {
    v4 = *(*(*(a4 + 24) - 8) + 64);
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v9 = a2 & 0x7FFFFFFF;
    if ((v4 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v9;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(result + v5) = v10;
      }

      else
      {
        *(result + v5) = v10;
      }
    }

    else if (v6)
    {
      *(result + v5) = v10;
    }

    return result;
  }

  v6 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v6 <= 1)
  {
    if (v6)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v6 == 2)
  {
    *(result + v5) = 0;
    goto LABEL_28;
  }

  *(result + v5) = 0;
  if (a2)
  {
LABEL_29:
    *((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

void sub_213D6DAB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for _ConditionalMapContent();
  sub_213D903FC();
  if (v3 <= 0x3F)
  {
    type metadata accessor for _MapContentInputs(319);
    if (v4 <= 0x3F)
    {
      type metadata accessor for _MapContentOutputs(319);
      if (v5 <= 0x3F)
      {
        type metadata accessor for Subgraph(319);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_213D6DBDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_213CDDD4C();
}

uint64_t sub_213D6DC14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213D6DC5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D6DCD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_213D6DE6C(uint64_t a1)
{
  result = sub_213CD848C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DE94(uint64_t a1)
{
  result = sub_213CD883C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DEBC(uint64_t a1)
{
  result = sub_213CD82DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DEE4(uint64_t a1)
{
  result = sub_213CD87E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DF0C(uint64_t a1)
{
  result = sub_213CD83E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DF34(uint64_t a1)
{
  result = sub_213CD84E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DF5C(uint64_t a1)
{
  result = sub_213CD8390();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DF84(uint64_t a1)
{
  result = sub_213CD8438();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D6DFAC()
{
  sub_213D1E468(v0, v7);
  if (v9)
  {
    v5[0] = v7[0];
    v5[1] = v7[1];
    v6 = v8;
    v1 = sub_213D91D0C();
    MEMORY[0x21604EB30](v1);

    MEMORY[0x21604EB30](41, 0xE100000000000000);
    v2 = 0x63696D616E79642ELL;
    sub_213CE2B7C(v5);
  }

  else
  {
    *(&v5[0] + 1) = 0xE900000000000028;
    v3 = sub_213D91F3C();
    MEMORY[0x21604EB30](v3);

    MEMORY[0x21604EB30](41, 0xE100000000000000);
    return 0x6C61636978656C2ELL;
  }

  return v2;
}

uint64_t sub_213D6E0B0()
{
  sub_213D91FBC();
  sub_213D1E468(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x21604F190](1);
    sub_213D91D3C();
    sub_213CE2B7C(v3);
  }

  else
  {
    v1 = *&v5[0];
    MEMORY[0x21604F190](0);
    MEMORY[0x21604F190](v1);
  }

  return sub_213D91FFC();
}

uint64_t sub_213D6E154()
{
  sub_213D1E468(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x21604F190](1);
    sub_213D91D3C();
    return sub_213CE2B7C(v3);
  }

  else
  {
    v2 = *&v5[0];
    MEMORY[0x21604F190](0);
    return MEMORY[0x21604F190](v2);
  }
}

uint64_t sub_213D6E1E4()
{
  sub_213D91FBC();
  sub_213D1E468(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x21604F190](1);
    sub_213D91D3C();
    sub_213CE2B7C(v3);
  }

  else
  {
    v1 = *&v5[0];
    MEMORY[0x21604F190](0);
    MEMORY[0x21604F190](v1);
  }

  return sub_213D91FFC();
}

unint64_t sub_213D6E29C()
{
  result = qword_27C8ECB90;
  if (!qword_27C8ECB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECB90);
  }

  return result;
}

uint64_t sub_213D6E334()
{
  v1 = *v0;
  sub_213D91FBC();
  sub_213D714BC(v3, v1);
  return sub_213D91FFC();
}

uint64_t sub_213D6E37C()
{
  v1 = *v0;
  sub_213D91FBC();
  sub_213D714BC(v3, v1);
  return sub_213D91FFC();
}

uint64_t sub_213D6E3C0()
{
  v1 = v0;
  v2 = type metadata accessor for MapContentList.Item(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v18 = MEMORY[0x277D84F90];
    sub_213D4E8F4(0, v8, 0);
    v9 = v18;
    v10 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_213D4F304(v10, v6);
      v12 = *v6;

      sub_213D4F398(v6);
      v18 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_213D4E8F4((v13 > 1), v14 + 1, 1);
        v9 = v18;
      }

      *(v9 + 16) = v14 + 1;
      *(v9 + 8 * v14 + 32) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  sub_213D719E0(v9);

  sub_213D29DEC();
  v15 = sub_213D91B3C();

  v1[1] = v15;
  return result;
}

uint64_t sub_213D6E568(uint64_t a1)
{
  v2 = type metadata accessor for MapContentList.Item(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v10 = *(v4 + 72);
  do
  {
    sub_213D4F304(v9, v6);
    v11 = *(v6 + 2);
    sub_213D4F398(v6);
    if (v8 != 0xFFFFFFFFLL && v11)
    {
      if (!v8 || v11 == 0xFFFFFFFFLL)
      {
        v8 = v11;
      }

      else
      {
        v12 = (v11 | (v8 << 32)) + ~(v11 << 32);
        v13 = (v12 ^ (v12 >> 22)) + ~((v12 ^ (v12 >> 22)) << 13);
        v14 = (9 * (v13 ^ (v13 >> 8))) ^ ((9 * (v13 ^ (v13 >> 8))) >> 15);
        v8 = ((v14 + ~(v14 << 27)) >> 31) ^ (v14 + ~(v14 << 27));
      }
    }

    v9 += v10;
    --v7;
  }

  while (v7);
  return v8;
}

uint64_t sub_213D6E6C0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_213D6F914(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_27C8EA930, &unk_213D963A0, type metadata accessor for MapContentList.Item);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for MapContentList.Item(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_213D6E840(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_213D91EBC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_213D91EBC();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_213D7141C(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_213D6E938(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_213D6E9A4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_213D6E9BC(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void (*sub_213D6E9EC(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  v5 = *(type metadata accessor for MapContentList.Item(0) - 8);
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    sub_213D4F304(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result);
    return sub_213D6EAE8;
  }

  __break(1u);
  return result;
}

void sub_213D6EAE8(uint64_t *a1)
{
  v1 = *a1;
  sub_213D4F398(*a1);

  free(v1);
}

uint64_t *sub_213D6EB24@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = v2[1];
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
    a2[3] = v5;
  }

  return result;
}

void sub_213D6EB54(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_213D6EB78@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_213D6EBA4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4[1];
  result = sub_213D6E938(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v8 & 1;
  return result;
}

unint64_t *sub_213D6EBE0(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *sub_213D6EC08(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_213D6EC24(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_213D6EC40(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_213D6EC5C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_213D6EC74(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void sub_213D6EC8C(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

size_t sub_213D6EC9C()
{
  v1 = sub_213D71F08(*v0);

  return v1;
}

uint64_t sub_213D6ECDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_11:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = a2;
      v11 = 0;
      v12 = a3 - 1;
      while (v11 < *(a4 + 16))
      {
        v13 = *(type metadata accessor for MapContentList.Item(0) - 8);
        v14 = *(v13 + 72);
        result = sub_213D4F304(a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v14 * v11, v10);
        if (v12 == v11)
        {
          goto LABEL_11;
        }

        v10 += v14;
        if (v9 == ++v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v8 = v9;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_213D6EE18()
{
  result = qword_27C8ECBA8;
  if (!qword_27C8ECBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECBA8);
  }

  return result;
}

unint64_t sub_213D6EEF4()
{
  result = qword_27C8ECBD8;
  if (!qword_27C8ECBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECBD8);
  }

  return result;
}

unint64_t sub_213D6EFC4()
{
  result = qword_27C8ECBF0;
  if (!qword_27C8ECBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECBF0);
  }

  return result;
}

uint64_t sub_213D6F050(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8E9D60, &qword_213D94560);
    sub_213CDE0A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213D6F110(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ECBD0, &qword_213D9B080);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213D6F188()
{
  result = qword_27C8ECC08;
  if (!qword_27C8ECC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECC08);
  }

  return result;
}

uint64_t sub_213D6F1DC(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v4);

  sub_213D6E6C0(v2);
  sub_213D6E3C0();
}

uint64_t sub_213D6F248(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v28 = result + 32;
  v4 = a2 + 32;
  while (v3 != v2)
  {
    v5 = v28 + 24 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    v9 = v4 + 24 * v3;
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (v6 < 0)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      sub_213D71C30();
      sub_213D2BD34(v11, v10);
      sub_213D2BD34(v7, v6);
      v19 = sub_213D91C5C();
      sub_213D1E5E8(v11, v10);
LABEL_27:
      sub_213D1E5E8(v7, v6);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    if (v10 < 0)
    {
      return 0;
    }

    if (v6)
    {
      if ((v10 & 1) == 0)
      {
        return 0;
      }

      v13 = v7[1].f64[0];
      if (*&v13 != *&v11[1].f64[0])
      {
        return 0;
      }

      v14 = v7 + 2;
      v15 = v11 + 2;
      while (v13 != 0.0)
      {
        v16 = *v14++;
        v17 = v16;
        v18 = *v15++;
        *&v17.f64[0] = vmovn_s64(vceqq_f64(v17, v18));
        --*&v13;
        if ((LODWORD(v17.f64[0]) & HIDWORD(v17.f64[0]) & 1) == 0)
        {
          sub_213D2BD34(v11, v10);
          sub_213D2BD34(v7, v6);
          goto LABEL_33;
        }
      }

      sub_213D2BD34(v11, v10);
      sub_213D2BD34(v7, v6);
    }

    else
    {
      if (v10)
      {
        return 0;
      }

      v20 = v7[1].f64[0];
      if (*&v20 != *&v11[1].f64[0])
      {
        return 0;
      }

      sub_213D2BD34(v11, v10);
      sub_213D2BD34(v7, v6);
      v21 = v7 + 2;
      v22 = v11 + 2;
      while (v20 != 0.0)
      {
        v23 = *v21++;
        v24 = v23;
        v25 = *v22++;
        *&v24.f64[0] = vmovn_s64(vceqq_f64(v24, v25));
        --*&v20;
        if ((LODWORD(v24.f64[0]) & HIDWORD(v24.f64[0]) & 1) == 0)
        {
LABEL_33:
          sub_213D1E5E8(v7, v6);
          goto LABEL_34;
        }
      }
    }

    if (v8)
    {
      if (!v12)
      {
        sub_213D1E5E8(v11, v10);
        v26 = v7;
        v27 = v6;
LABEL_35:
        sub_213D1E5E8(v26, v27);
        return 0;
      }

      v19 = sub_213D6F248(v8, v12);
      sub_213D1E5E8(v11, v10);

      goto LABEL_27;
    }

    sub_213D1E5E8(v7, v6);
    if (v12)
    {

LABEL_34:
      v26 = v11;
      v27 = v10;
      goto LABEL_35;
    }

    sub_213D1E5E8(v11, v10);
LABEL_28:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_213D6F51C(uint64_t a1, uint64_t a2)
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

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 48)
  {
    sub_213D1E468(v3, v17);
    sub_213D1E468(i, v16);
    sub_213D1E468(v17, v12);
    sub_213D1E468(v16, v13);
    if (v12[40])
    {
      break;
    }

    sub_213CDF5B8(v16);
    sub_213CDF5B8(v17);
    sub_213D1E468(v12, v11);
    if (v15)
    {
      goto LABEL_15;
    }

    v6 = v11[0];
    v7 = *&v13[0];
    sub_213CDF5B8(v12);
    if (v6 != v7)
    {
      return 0;
    }

LABEL_5:
    v3 += 48;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_213D1E468(v12, v11);
  if (v15)
  {
    v9[0] = v13[0];
    v9[1] = v13[1];
    v10 = v14;
    v5 = MEMORY[0x21604EEF0](v11, v9);
    sub_213CE2B7C(v9);
    sub_213CDF5B8(v16);
    sub_213CDF5B8(v17);
    sub_213CE2B7C(v11);
    sub_213CDF5B8(v12);
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_213CDF5B8(v16);
  sub_213CDF5B8(v17);
  sub_213CE2B7C(v11);
LABEL_15:
  sub_213CD8330(v12, &unk_27C8ECC20, &unk_213D9B460);
  return 0;
}

char *sub_213D6F6B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD28, &qword_213D9B548);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_213D6F7F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_213D6F914(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_213D6FAF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECCE8, &unk_213D9B520);
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

char *sub_213D6FBFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD30, &qword_213D9B550);
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

char *sub_213D6FD44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC80, &qword_213D9B4B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_213D6FE48(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8ECC38, &qword_213D9B478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB4E0, &qword_213D9B480);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213D6FFCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC98, &qword_213D9B4D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213D700EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC78, &qword_213D9B4B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213D70210(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC58, &qword_213D9B498);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213D70330(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8ECD00, &qword_213D98F88);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_213D70434(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC48, &unk_213D9B488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[18 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 144 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC50, &unk_213D971F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_213D70584(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8ECC68, &unk_213D9B4A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB1B0, &qword_213D97220);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_213D706B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC88, &unk_213D9B4C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC90, &qword_213D97240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_213D70874(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_213D70A5C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_213D91FBC();
  sub_213D714BC(v19, a2);
  v8 = sub_213D91FFC();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);

      v14 = sub_213D6F51C(v13, a2);

      if (v14)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v10);

    return 0;
  }

  else
  {
LABEL_5:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *v3;

    sub_213D712AC(v17, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19[0];
    *a1 = a2;
    return 1;
  }
}

void *sub_213D70B9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC18, &qword_213D9B458);
  v2 = *v0;
  v3 = sub_213D91D5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_213D70CEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC18, &qword_213D9B458);
  result = sub_213D91D6C();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v31 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v32 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_213D91FBC();
      MEMORY[0x21604F190](*(v18 + 16));
      v20 = *(v18 + 16);
      if (v20)
      {
        v21 = v18 + 32;

        do
        {
          sub_213D1E468(v21, v38);
          sub_213D1E468(v38, v35);
          if (v37)
          {
            v33[0] = v35[0];
            v33[1] = v35[1];
            v34 = v36;
            MEMORY[0x21604F190](1);
            sub_213D91D3C();
            sub_213CE2B7C(v33);
          }

          else
          {
            v22 = *&v35[0];
            MEMORY[0x21604F190](0);
            MEMORY[0x21604F190](v22);
          }

          sub_213CDF5B8(v38);
          v21 += 48;
          --v20;
        }

        while (v20);
      }

      else
      {
      }

      result = sub_213D91FFC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_37;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v31;
      v11 = v32;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v30;
        goto LABEL_35;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

LABEL_35:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_213D70FBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC18, &qword_213D9B458);
  result = sub_213D91D6C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v33 = result;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + 8 * (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_213D91FBC();
      MEMORY[0x21604F190](*(v21 + 16));
      v23 = *(v21 + 16);
      if (v23)
      {
        v24 = v21 + 32;
        do
        {
          sub_213D1E468(v24, v39);
          sub_213D1E468(v39, v36);
          if (v38)
          {
            v34[0] = v36[0];
            v34[1] = v36[1];
            v35 = v37;
            MEMORY[0x21604F190](1);
            sub_213D91D3C();
            sub_213CE2B7C(v34);
          }

          else
          {
            v25 = *&v36[0];
            MEMORY[0x21604F190](0);
            MEMORY[0x21604F190](v25);
          }

          sub_213CDF5B8(v39);
          v24 += 48;
          --v23;
        }

        while (v23);
      }

      result = sub_213D91FFC();
      v6 = v33;
      v14 = -1 << *(v33 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v14) >> 6;
        while (++v16 != v27 || (v26 & 1) == 0)
        {
          v28 = v16 == v27;
          if (v16 == v27)
          {
            v16 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v16);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v33 + 48) + 8 * v17) = v21;
      ++*(v33 + 16);
      v3 = v32;
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v8, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_213D712AC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_213D70FBC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_213D70B9C();
      goto LABEL_12;
    }

    sub_213D70CEC(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_213D91FBC();
  sub_213D714BC(v20, v6);
  result = sub_213D91FFC();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);

      v15 = sub_213D6F51C(v14, v6);

      if (v15)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v6;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_213D91F7C();
  __break(1u);
  return result;
}

uint64_t sub_213D7141C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_213D91EBC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_213D91DCC();
  *v1 = result;
  return result;
}

uint64_t sub_213D714BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21604F190](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      sub_213D1E468(v5, v12);
      sub_213D1E468(v12, v9);
      if (v11)
      {
        v7[0] = v9[0];
        v7[1] = v9[1];
        v8 = v10;
        MEMORY[0x21604F190](1);
        sub_213D91D3C();
        sub_213CE2B7C(v7);
      }

      else
      {
        v6 = *&v9[0];
        MEMORY[0x21604F190](0);
        MEMORY[0x21604F190](v6);
      }

      result = sub_213CDF5B8(v12);
      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_213D71594(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_213D91EBC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_213D91EBC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_213CEDCEC(&qword_27C8ECCF8, &qword_27C8ECCF0, &unk_213D9B530);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECCF0, &unk_213D9B530);
            v9 = sub_213D1DBE4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213D71744(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_213D91EBC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_213D91EBC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_213CEDCEC(&qword_27C8ECD20, &qword_27C8ECD18, &qword_213D9B540);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD18, &qword_213D9B540);
            v9 = sub_213D1DB5C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213D718F4(uint64_t a1, uint64_t a2)
{
  sub_213D1E468(a1, v8);
  sub_213D1E468(a2, v9);
  if ((v8[40] & 1) == 0)
  {
    sub_213D1E468(v8, v7);
    if ((v11 & 1) == 0)
    {
      v3 = v7[0] == *&v9[0];
      goto LABEL_6;
    }

LABEL_8:
    sub_213CD8330(v8, &unk_27C8ECC20, &unk_213D9B460);
    v3 = 0;
    return v3 & 1;
  }

  sub_213D1E468(v8, v7);
  if (v11 != 1)
  {
    sub_213CE2B7C(v7);
    goto LABEL_8;
  }

  v5[0] = v9[0];
  v5[1] = v9[1];
  v6 = v10;
  v3 = MEMORY[0x21604EEF0](v7, v5);
  sub_213CE2B7C(v5);
  sub_213CE2B7C(v7);
LABEL_6:
  sub_213CDF5B8(v8);
  return v3 & 1;
}

uint64_t sub_213D719E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_213D29DEC();
  result = MEMORY[0x21604ECD0](v2, &type metadata for MapContentList.ID, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;

      sub_213D70A5C(&v7, v6);

      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_213D71A68(uint64_t a1)
{
  v2 = type metadata accessor for MapContentList.Item(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v16 = MEMORY[0x277D84F90];
    sub_213D4E8F4(0, v7, 0);
    v8 = v16;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_213D4F304(v9, v6);
      v11 = *v6;

      sub_213D4F398(v6);
      v16 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_213D4E8F4((v12 > 1), v13 + 1, 1);
        v8 = v16;
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  sub_213D719E0(v8);

  sub_213D29DEC();
  sub_213D91B3C();

  return a1;
}

unint64_t sub_213D71C30()
{
  result = qword_27C8ECC60;
  if (!qword_27C8ECC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8ECC60);
  }

  return result;
}

uint64_t sub_213D71C7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA180, &qword_213D94A40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-1] - v6;
  v8 = sub_213D9100C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D723B4(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_213CD8330(v7, &qword_27C8EA180, &qword_213D94A40);
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_213D94520;
    sub_213D1E468(a2, v13 + 32);
    return v13;
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_213CDF60C();
  sub_213D9101C();
  v13 = v20;
  if (!v20)
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_10;
  }

  sub_213D1E468(a2, &v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_213D6F7F8(0, *(v13 + 16) + 1, 1, v13);
  }

  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_213D6F7F8((v14 > 1), v15 + 1, 1, v13);
  }

  (*(v9 + 8))(v12, v8);
  *(v13 + 16) = v15 + 1;
  v16 = (v13 + 48 * v15);
  v17 = v20;
  v18 = v21[0];
  *(v16 + 57) = *(v21 + 9);
  v16[2] = v17;
  v16[3] = v18;
  return v13;
}

size_t sub_213D71F08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
  v3 = *(type metadata accessor for MapContentList.Item(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v6);
  if (v4)
  {
    if (result - v5 != 0x8000000000000000 || v4 != -1)
    {
      v6[2] = v1;
      v6[3] = 2 * ((result - v5) / v4);
      sub_213D4F304(a1 + v5, v6 + v5);
      v9 = v1 - 1;
      if (v9)
      {
        v10 = v4 + v5;
        do
        {
          sub_213D4F304(a1 + v10, v6 + v10);
          v10 += v4;
          --v9;
        }

        while (v9);
      }

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213D720B0()
{
  result = type metadata accessor for ResolvedAnnotation();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ResolvedMarker();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ResolvedUserAnnotation();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_213D72170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213D721AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
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
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_213D721F8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_213D72268()
{
  result = type metadata accessor for MapContentList.Item.Content(319);
  if (v1 <= 0x3F)
  {
    result = sub_213D9100C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_213D72308()
{
  result = qword_27C8ECD58;
  if (!qword_27C8ECD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECD58);
  }

  return result;
}

unint64_t sub_213D72360()
{
  result = qword_27C8ECD60;
  if (!qword_27C8ECD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECD60);
  }

  return result;
}

uint64_t sub_213D723B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA180, &qword_213D94A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D72458@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *(a1 + 48);
  v13 = *a2;
  v14 = *(a4 + 16);
  v15 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v15;
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 48) = v12;
  *(a8 + 56) = v13;
  *(a8 + 64) = a3;
  *(a8 + 72) = *a4;
  *(a8 + 88) = v14;
  v16 = type metadata accessor for _DefaultAnnotatedMapContent();
  v17 = *(v16 + 56);
  v18 = sub_213D91C7C();
  result = (*(*(v18 - 8) + 32))(a8 + v17, a5, v18);
  v20 = (a8 + *(v16 + 60));
  *v20 = a6;
  v20[1] = a7;
  return result;
}

uint64_t _DefaultAnnotatedMapContent.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = sub_213D91C7C();
  v6 = *(*(v5 - 8) + 64);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v23 - v8;
  v10 = *v3;
  v26 = *(v3 + 8);
  v27 = v10;
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v24 = *(v3 + 40);
  v25 = v11;
  *&v33 = v10;
  *(&v33 + 1) = v26;
  v34 = v11;
  v35 = v12;
  v36 = v13;
  v37 = v24;
  v14 = *(v3 + 56);
  v38 = *(v3 + 48);
  v32 = v14;
  v28 = *(v3 + 64);
  v16 = *(v3 + 80);
  v17 = *(v3 + 88);
  v30[0] = *(v3 + 72);
  v15 = v30[0];
  v30[1] = v16;
  v31 = v17;
  v18 = *(a1 - 1);
  (*(v18 + 16))(v9, v3, a1, v7);
  (*(v18 + 56))(v9, 0, 1, a1);
  sub_213D64710(v27, v26);
  sub_213D646D0(v15, v16);
  v19 = a1[2];
  v20 = a1[3];
  v21 = a1[4];
  return sub_213D5DB84(&v33, &v32, v28, v30, v9, v29);
}

double _DefaultMapContent.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v33 = *(v1 + 56);
  v32 = *(v1 + 64);
  v11 = *(v1 + 72);
  v10 = *(v1 + 80);
  v12 = *(v1 + 88);
  *(a1 + 56) = 0u;
  v13 = (a1 + 56);
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 144) = 0u;
  v14 = (a1 + 144);
  *(a1 + 136) = 1;
  *(a1 + 160) = 0u;
  v36 = v4;
  v37 = v3;
  v34 = v6;
  v35 = v5;
  sub_213D64710(v3, v4);
  v31 = v12;
  sub_213D646D0(v11, v10);
  if (qword_27C8E99F8 != -1)
  {
    swift_once();
  }

  *(a1 + 176) = qword_27C8ED488;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD78, &qword_213D9B750);
  v16 = v15[15];
  *(a1 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  swift_storeEnumTagMultiPayload();
  v17 = v15[16];
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  v18 = a1 + v15[17];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = v15[18];
  *(a1 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAF8, &qword_213D985A0);
  swift_storeEnumTagMultiPayload();
  v20 = a1 + v15[19];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v35;
  *(a1 + 24) = v34;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 176) = v33;
  *(a1 + 184) = v32;
  if (v10)
  {
    sub_213D91AFC();

    v21 = sub_213D91AEC();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    *(v22 + 16) = v21;
    *(v22 + 24) = v23;
    *(v22 + 32) = v11;
    *(v22 + 40) = v10;
    *(v22 + 48) = v31;

    v24 = sub_213D91AEC();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;
    *(v25 + 32) = v11;
    *(v25 + 40) = v10;
    *(v25 + 48) = v31;
    type metadata accessor for MKUserTrackingMode(0);
    sub_213D9161C();
    sub_213D65068(v11, v10);
    v26 = v39;
    *(a1 + 192) = v38;
    *(a1 + 208) = v26;
  }

  v27 = v13[5];
  v42 = v13[4];
  v43 = v27;
  v44 = v13[6];
  v45 = *(v13 + 14);
  v28 = v13[1];
  v38 = *v13;
  v39 = v28;
  v29 = v13[3];
  v40 = v13[2];
  v41 = v29;
  sub_213D72B50(&v38);
  result = 0.0;
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  *(a1 + 136) = 1;
  *v14 = 0u;
  v14[1] = 0u;
  return result;
}

uint64_t sub_213D72A80(uint64_t a1)
{
  v2 = type metadata accessor for MapControlsConfig();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_213CEE7C8(a1, &v10 - v7);
  sub_213CEE7C8(v8, v5);
  sub_213D73334();
  sub_213D90C2C();
  return sub_213CEE76C(v8);
}

uint64_t sub_213D72B50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8ECD80, &qword_213D9B848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213D72BB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_213D72C20(uint64_t a1)
{
  sub_213D7314C(319, &qword_27C8ECE08, &qword_27C8EC548, &qword_213D9A230);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_213D91C7C();
    if (v4 <= 0x3F)
    {
      sub_213D7314C(319, &qword_27C8EAB68, &unk_27C8EB4E0, &qword_213D9B480);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213D72D18(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 89) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    v19 = (a1 + 79) & 0xFFFFFFFFFFFFFFF8;
    if (v6 > 0x7FFFFFFE)
    {
      v21 = (*(v4 + 48))((v19 + v8 + 17) & ~v8);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *(v19 + 8);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      if ((v20 + 1) >= 2)
      {
        return v20;
      }

      else
      {
        return 0;
      }
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_213D72EB0(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v12 = ((v11 + ((v10 + 89) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 89) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if (((v11 + ((v10 + 89) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 89) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
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
  v19 = (a1 + 79) & 0xFFFFFFFFFFFFFFF8;
  if (v8 > 0x7FFFFFFE)
  {
    v20 = ((v19 + v10 + 17) & ~v10);
    if (v8 >= a2)
    {
      v24 = *(v6 + 56);
      v25 = a2 + 1;

      v24((v19 + v10 + 17) & ~v10, v25);
    }

    else
    {
      if (v11 <= 3)
      {
        v21 = ~(-1 << (8 * v11));
      }

      else
      {
        v21 = -1;
      }

      if (v11)
      {
        v22 = v21 & (~v8 + a2);
        if (v11 <= 3)
        {
          v23 = v11;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v11);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    *v19 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(v19 + 8) = a2;
  }
}

void sub_213D7314C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_213D91C7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVy08_MapKit_aB00D16UserTrackingModeOGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_213D731DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_213D73238(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 80) = a2;
    }
  }

  return result;
}

unint64_t sub_213D732B4()
{
  result = qword_27C8ECE10;
  if (!qword_27C8ECE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ECD78, &qword_213D9B750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECE10);
  }

  return result;
}

unint64_t sub_213D73334()
{
  result = qword_27C8ECE18;
  if (!qword_27C8ECE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECE18);
  }

  return result;
}

uint64_t AnyMapContent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = *(v6 + 16);
  v12(v16 - v13, a1, a2, v11);
  if (swift_dynamicCast())
  {
    v14 = v16[1];
  }

  else
  {
    type metadata accessor for AnyViewStorage();
    (v12)(v9, a1, a2);
    v14 = sub_213D7351C(v9);
  }

  result = (*(v6 + 8))(a1, a2);
  *a3 = v14;
  return result;
}

uint64_t sub_213D7351C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 104) - 8) + 32))(v5 + *(*v5 + 120), a1);
  return v5;
}

uint64_t static AnyMapContent._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v49 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v45 = type metadata accessor for _MapContentOutputs.SetDependency(0);
  v4 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _MapContentOutputs(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECE20, &qword_213D9BA60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v41 - v12);
  v14 = type metadata accessor for AnyMapContent.Container();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v43 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v41 - v18);
  v20 = type metadata accessor for _MapContentInputs.AddPreference(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v24 = *(type metadata accessor for _MapContentInputs(0) + 24);
  sub_213D74B10(&qword_27C8EC7D8, type metadata accessor for _MapContentInputs.AddPreference);
  v47 = a2;
  sub_213D90F2C();
  v25 = v48;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v26 = sub_213D90FAC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 40);
  v29 = v25;
  v42 = v26;
  v28(v25, v23);
  (*(v10 + 16))(v13, v49, v9);
  if (v11 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v30 = *v13;
  (*(v10 + 8))(v13, v9);
  v31 = v29;
  v32 = v29;
  v33 = v46;
  sub_213D73B98(v32, v46, type metadata accessor for _MapContentOutputs);
  *v19 = v30;
  sub_213D73B98(v47, v19 + v14[5], type metadata accessor for _MapContentInputs);
  sub_213D73B34(v33, v19 + v14[6]);
  v34 = AGSubgraphGetCurrent();
  if (!v34)
  {
    goto LABEL_5;
  }

  *(v19 + v14[7]) = v34;
  v35 = v43;
  sub_213D73B98(v19, v43, type metadata accessor for AnyMapContent.Container);
  sub_213CDB9F8();
  sub_213D74B10(qword_27C8ECE28, type metadata accessor for AnyMapContent.Container);
  v36 = sub_213D903EC();
  sub_213D74B58(v35, type metadata accessor for AnyMapContent.Container);
  v37 = v44;
  (*(v27 + 16))(v44, v31, v42);
  v38 = v37 + *(v45 + 20);
  *v38 = v36;
  *(v38 + 4) = 0;
  sub_213D74B10(qword_27C8EC7E0, type metadata accessor for _MapContentOutputs.SetDependency);
  sub_213D90F8C();
  sub_213D74B58(v37, type metadata accessor for _MapContentOutputs.SetDependency);
  result = sub_213D74B58(v19, type metadata accessor for AnyMapContent.Container);
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for AnyMapContent.Container()
{
  result = qword_27C8ECEB0;
  if (!qword_27C8ECEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213D73B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MapContentOutputs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D73B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D73C0C()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for _MapContentOutputs.ResetPreference(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v22[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *AGGraphGetValue();
  OutputValue = AGGraphGetOutputValue();
  if (!OutputValue)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_5;
  }

  v8 = *OutputValue;
  v9 = OutputValue[1];
  v10 = (*(**OutputValue + 80))();
  if (v10 != (*(*v6 + 80))())
  {
    v11 = *(type metadata accessor for AnyMapContent.Container() + 24);
    v12 = sub_213D90FAC();
    (*(*(v12 - 8) + 16))(v4, &v0[v11], v12);
    sub_213D74B10(&qword_27C8ECA68, type metadata accessor for _MapContentOutputs.ResetPreference);
    swift_retain_n();
    v13 = v9;

    v14 = v13;
    sub_213D90F8C();
    sub_213D74B58(v4, type metadata accessor for _MapContentOutputs.ResetPreference);
    AGSubgraphInvalidate();

LABEL_5:
    v22[0] = v6;
    sub_213D73F00(v22, &v23);
    v15 = v24;
    v22[0] = v23;
    v22[1] = v24;
    AGGraphSetOutputValue();

    sub_213D74AD0(v8, v9);

LABEL_8:

    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  result = AGGraphGetOutputValue();
  if (result)
  {
    v17 = *(result + 8);

    v18 = v9;
    v19 = v17;
    v23 = v6;
    v24 = v19;
    AGGraphSetOutputValue();

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_213D73F00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v31 = type metadata accessor for _MapContentOutputs.SetSource(0);
  v4 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _MapContentOutputs(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  v14 = type metadata accessor for _MapContentInputs(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = type metadata accessor for AnyMapContent.Container();
  v20 = *(v2 + v19[7]);
  v21 = AGSubgraphGetGraph();
  v22 = AGSubgraphCreate();

  AGSubgraphAddChild();
  v23 = v2 + v19[5];
  v30[0] = v17;
  sub_213D73B98(v23, v17, type metadata accessor for _MapContentInputs);
  sub_213D73B98(v2 + v19[6], v13, type metadata accessor for _MapContentOutputs);
  v30[1] = AGGraphClearUpdate();
  v24 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  (*(*v18 + 88))(*v2, v17);
  v25 = sub_213D90FAC();
  v26 = *(*(v25 - 8) + 16);
  v26(v6, v13, v25);
  v26(&v6[*(v31 + 20)], v10, v25);
  sub_213D74B10(qword_27C8ECA70, type metadata accessor for _MapContentOutputs.SetSource);
  sub_213D90F8C();
  sub_213D74B58(v6, type metadata accessor for _MapContentOutputs.SetSource);
  sub_213D74B58(v10, type metadata accessor for _MapContentOutputs);
  v27 = v32;
  *v32 = v18;
  v27[1] = v22;

  v28 = v22;
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  sub_213D74B58(v13, type metadata accessor for _MapContentOutputs);
  return sub_213D74B58(v30[0], type metadata accessor for _MapContentInputs);
}

uint64_t sub_213D74318@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a2;
  v34 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  v6 = *(*v3 + 104);
  v7 = sub_213D9057C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = *(v5 + 112);
  v26 = a1;
  v31 = v6;
  v13 = type metadata accessor for AnyViewStorage.AnyMapContentChild();
  v32 = v13;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_213D903FC();
  v15 = MEMORY[0x277D84A98];
  v16 = MEMORY[0x277D84AC0];
  sub_213CDDDA4(&v26, sub_213D6D308, v30, v13, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v17);
  v18 = v25;
  v19 = *(*v3 + 120);
  v28 = v6;
  v29 = v25;
  sub_213CDDDA4(v3 + v19, sub_213D49914, v27, v6, v15, MEMORY[0x277D839B0], v16, v20);
  sub_213CDF770(v18, v11);
  (*(v12 + 32))(v11, v24, v6, v12);
  result = (*(v8 + 8))(v11, v7);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213D74570(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *AGGraphGetValue();
  type metadata accessor for AnyViewStorage();

  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *(*v7 + 120);
    MEMORY[0x28223BE20](v7);
    v13[2] = a1;
    v10 = v9;
    v13[3] = swift_getWitnessTable();
    sub_213CDDDA4(v10 + v8, sub_213D6DBDC, v13, v4, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v11);
  }

  else
  {
  }
}

uint64_t sub_213D74730()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_213D748B8(uint64_t a1)
{
  v1 = *(a1 + 104);
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

void sub_213D74984()
{
  sub_213D74A38();
  if (v0 <= 0x3F)
  {
    type metadata accessor for _MapContentInputs(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for _MapContentOutputs(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Subgraph(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213D74A38()
{
  if (!qword_27C8ECEC0[0])
  {
    v0 = sub_213D903FC();
    if (!v1)
    {
      atomic_store(v0, qword_27C8ECEC0);
    }
  }
}

void sub_213D74AD0(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_213D74B10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213D74B58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D74BD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213D74C28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - v9;
  v11 = type metadata accessor for _EnvironmentKeyWritingMapContentModifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v17 - v14);
  (*(v7 + 16))(v10, a2, v6);
  sub_213D772A8(a1, v10, v15);

  MapContent.modifier<A>(_:)(v15, a3, v11);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_213D74DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v17 - v8;
  v10 = type metadata accessor for _TraitWritingMapContentModifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v17 - v14;
  (*(v6 + 16))(v9, a2, AssociatedTypeWitness, v13);
  (*(v6 + 32))(v15, v9, AssociatedTypeWitness);
  MapContent.modifier<A>(_:)(v15, a3, v10);
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_213D74FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30[1] = a5;
  v31 = a3;
  v30[0] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C28, &qword_213D94200);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C98, &qword_213D9BED0);
  v14 = *(v32 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v32);
  v17 = v30 - v16;
  v18 = type metadata accessor for _MapContentInputs(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_213D9106C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D9107C();
  sub_213CD6B10(a2, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED0D0, &qword_213D9BED8);
  sub_213D78298();
  sub_213D90C9C();
  sub_213D74FD8(v17, v21, v31, a4);
  sub_213CD70D4(v13, v10);
  v27 = sub_213D910DC();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v10, 1, v27) == 1)
  {
    sub_213CD8330(v13, &qword_27C8E9C28, &qword_213D94200);
    (*(v14 + 8))(v17, v32);
    sub_213CD7144(v21);
    (*(v23 + 8))(v26, v22);
    return sub_213CD8330(v10, &qword_27C8E9C28, &qword_213D94200);
  }

  else
  {
    sub_213D910CC();
    sub_213CD8330(v13, &qword_27C8E9C28, &qword_213D94200);
    (*(v14 + 8))(v17, v32);
    sub_213CD7144(v21);
    (*(v23 + 8))(v26, v22);
    return (*(v28 + 8))(v10, v27);
  }
}

uint64_t static _MapContentModifier._makeMapContent(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a3;
  v35 = a4;
  v31[1] = a1;
  v33 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C28, &qword_213D94200);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v31 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_213D9057C();
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = *(v36 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v31 - v16;
  v18 = type metadata accessor for _MapContentInputs(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_213D9106C();
  v22 = *(v32 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v32);
  v25 = v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D9107C();
  sub_213CD6B10(a2, v21);
  type metadata accessor for MapContentModifierBodyAccessor();
  swift_getWitnessTable();
  sub_213D90C9C();
  v26 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v17, v21, v34, v35, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_213CD70D4(v12, v9);
  v28 = sub_213D910DC();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v26, 1, v28) == 1)
  {
    sub_213CD8330(v12, &qword_27C8E9C28, &qword_213D94200);
    (*(v36 + 8))(v17, v37);
    sub_213CD7144(v21);
    (*(v22 + 8))(v25, v32);
    return sub_213CD8330(v26, &qword_27C8E9C28, &qword_213D94200);
  }

  else
  {
    sub_213D910CC();
    sub_213CD8330(v12, &qword_27C8E9C28, &qword_213D94200);
    (*(v36 + 8))(v17, v37);
    sub_213CD7144(v21);
    (*(v22 + 8))(v25, v32);
    return (*(v29 + 8))(v26, v28);
  }
}

uint64_t static _MapContentModifier._mapContentCount(inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(a1, a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_213D758BC(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x28223BE20](result);
    type metadata accessor for MapContentModifierBodyAccessor();
    swift_getWitnessTable();
    return sub_213D90C8C();
  }

  return result;
}

uint64_t sub_213D75970(uint64_t result, char a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_213D758BC(result, a2);
}

uint64_t static ModifiedContent<>._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a3;
  v26 = a5;
  v28 = a7;
  v29 = a2;
  sub_213D908CC();
  v11 = sub_213D9057C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v27 = sub_213D9057C();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v27);
  v19 = &v24 - v18;
  v30 = a3;
  v31 = a4;
  v20 = v26;
  v32 = v26;
  v33 = a6;
  sub_213D514F4(sub_213D75C94, v11, a4, &v24 - v18);
  (*(v12 + 16))(v15, a1, v11);
  v21 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v25;
  *(v22 + 3) = a4;
  *(v22 + 4) = v20;
  *(v22 + 5) = a6;
  (*(v12 + 32))(&v22[v21], v15, v11);
  (*(a6 + 32))(v19, v29, sub_213D75E08, v22, a4, a6);

  return (*(v16 + 8))(v19, v27);
}

uint64_t sub_213D75BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_213D908CC();
  v6 = *(v5 + 36);
  v10[2] = v5;
  v10[3] = a3;
  v7 = sub_213D9041C();
  sub_213D48E14(a1 + v6, sub_213CF3D4C, v10, a3, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);
  return v10[5];
}

uint64_t sub_213D75C94(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_213D75BFC(a1, v1[2], v1[3]);
}

uint64_t sub_213D75CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_213D9057C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18[-v14];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  sub_213D908CC();
  v16 = sub_213D9057C();
  sub_213D514F4(sub_213D782FC, v16, a3, v15);
  (*(a5 + 32))(v15, a1, a3, a5);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_213D75E08(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  sub_213D908CC();
  v7 = *(sub_213D9057C() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_213D75CA0(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_213D75EC4(uint64_t a1, uint64_t a2)
{
  v7[2] = sub_213D908CC();
  v7[3] = a2;
  v4 = sub_213D9041C();
  sub_213D48E14(a1, sub_213CF3B70, v7, a2, MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v5);
  return v7[5];
}

uint64_t static ModifiedContent<>._mapContentCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = (*(a5 + 40))(a1, sub_213D7600C, v10, a3, a5);

  return v11;
}

uint64_t MapContent.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15, a2);
  (*(v6 + 16))(v10, a1, a3);
  return sub_213D908AC();
}

uint64_t sub_213D7621C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D7626C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_213D76298(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*a3 + 8);
  v6 = a3[1];
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D76348(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213D763C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
LABEL_23:
    v15 = *(v8 + 48);

    return v15(a1);
  }

  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v9)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v9 + (v10 | v14) + 1;
}

void sub_213D7655C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
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

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

uint64_t sub_213D767A0(uint64_t a1)
{
  sub_213D90C0C();
  v2 = *(a1 + 16);
  result = sub_213D91E7C();
  if (v4 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_213D7683C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
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

void sub_213D769C0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}