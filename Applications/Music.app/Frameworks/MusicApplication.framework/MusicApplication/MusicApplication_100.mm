void sub_90B07C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_90E6B0(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_90E6B0((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UserDefault.defaultValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_ABA9C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static NSUserDefaults.Suite.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_ABB3C0();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

void NSUserDefaults.Suite.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_ABB5D0(1uLL);

    sub_AB93F0();
  }

  else
  {
    sub_ABB5D0(0);
  }
}

Swift::Int NSUserDefaults.Suite.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_ABB5C0();
  if (a2)
  {
    sub_ABB5D0(1uLL);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5D0(0);
  }

  return sub_ABB610();
}

Swift::Int sub_90B2FC()
{
  v1 = *(v0 + 8);
  sub_ABB5C0();
  if (v1)
  {
    sub_ABB5D0(1uLL);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5D0(0);
  }

  return sub_ABB610();
}

void sub_90B36C()
{
  if (*(v0 + 8))
  {
    sub_ABB5D0(1uLL);

    sub_AB93F0();
  }

  else
  {
    sub_ABB5D0(0);
  }
}

Swift::Int sub_90B3E4()
{
  v1 = *(v0 + 8);
  sub_ABB5C0();
  if (v1)
  {
    sub_ABB5D0(1uLL);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5D0(0);
  }

  return sub_ABB610();
}

uint64_t sub_90B450(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_ABB3C0();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

id NSUserDefaults.init(suite:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSuiteName:0];
  }

  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_AB9260();
  v4 = [v2 initWithSuiteName:v3];

  if (!v4)
  {
    return 0;
  }

  return v4;
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x70uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[9] = a4;
  v9[10] = v4;
  v9[8] = a3;
  v11 = *(a3 - 8);
  v12 = v11;
  v9[11] = v11;
  v13 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[12] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[12] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v10[13] = v14;
  (*(v12 + 16))();
  NSUserDefaults.subscript.getter(a2, v10);
  return sub_90B68C;
}

void sub_90B68C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  if (a2)
  {
    v5 = v2[11];
    v6 = v2[8];
    sub_906F80(*a1, (v2 + 4));
    (*(v5 + 32))(v4, v3, v6);
    NSUserDefaults.subscript.setter((v2 + 4), v4, v6);
    sub_8D1218(v2);
  }

  else
  {
    NSUserDefaults.subscript.setter(*a1, v2[13], v2[8]);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t NSUserDefaults.subscript.getter@<X0>(_OWORD *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v8 - v4;
  sub_AB96D0();
  v6 = NSUserDefaults.subscript.getter(v5, a1);
  return (*(v3 + 8))(v5, AssociatedTypeWitness, v6);
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x70uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[10] = a5;
  v10[11] = v5;
  v10[8] = a3;
  v10[9] = a4;
  v12 = *(a3 - 8);
  v13 = v12;
  v10[12] = v12;
  if (&_swift_coroFrameAlloc)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v12 + 64));
  }

  v11[13] = v14;
  (*(v13 + 16))();
  NSUserDefaults.subscript.getter(v11);
  return sub_90BA14;
}

void sub_90BA14(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[12];
    v3 = v2[13];
    v5 = v2[8];
    sub_906F80(*a1, (v2 + 4));
    sub_90E8DC((v2 + 4));
    (*(v4 + 8))(v3, v5);
    sub_8D1218(v2);
  }

  else
  {
    v6 = v2[12];
    v3 = v2[13];
    v7 = v2[8];
    sub_90E8DC(*a1);
    (*(v6 + 8))(v3, v7);
  }

  free(v3);

  free(v2);
}

uint64_t NSUserDefaults.Migrator.init(userDefaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for NSUserDefaults.Migrator();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 44);

  return v8(v9, a2, a3);
}

uint64_t NSUserDefaults.Migrator.init<A>(userDefaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v10 = *(a3 - 8);
  __chkstk_darwin(a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB96D0();
  (*(*(a4 - 8) + 8))(a2, a4);
  *a5 = a1;
  v13 = type metadata accessor for NSUserDefaults.Migrator();
  return (*(v10 + 32))(&a5[*(v13 + 44)], v12, a3);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v61 = a2;
  v9 = v8;
  v56 = a7;
  v54 = a4;
  v60 = a3;
  v50 = a1;
  v57 = a8;
  v55 = a6;
  v49 = *(a6 - 8);
  v11 = __chkstk_darwin(a1);
  v58 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v59 = *(v14 - 8);
  __chkstk_darwin(v11);
  v47 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v16;
  v52 = sub_ABA9C0();
  v51 = *(v52 - 8);
  v17 = __chkstk_darwin(v52);
  v48 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v63 = &v47 - v19;
  v20 = *(a5 + 24);
  v68 = sub_ABA9C0();
  v64 = *(v68 - 8);
  __chkstk_darwin(v68);
  v22 = &v47 - v21;
  v23 = *v9;
  v24 = *(a5 + 44);
  NSUserDefaults.subscript.getter(v9 + v24, v67);
  sub_906F80(v67, &v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21230);
  v25 = swift_dynamicCast();
  v26 = *(v20 - 8);
  (*(v26 + 56))(v22, v25 ^ 1u, 1, v20);
  sub_906F80(v67, &v65);
  v27 = *(&v66 + 1);
  sub_8D1218(&v65);
  if (v27 && (*(v26 + 48))(v22, 1, v20) == 1)
  {
    _s8MigratorV5ErrorOMa();
    swift_getWitnessTable();
    swift_allocError();
    (*(v59 + 16))(v28, v9 + v24, v14);
    swift_willThrow();
LABEL_5:
    sub_8D1218(v67);
    return (*(v64 + 8))(v22, v68);
  }

  v29 = v62;
  v30 = v63;
  v61(v22);
  if (v29)
  {
    goto LABEL_5;
  }

  v31 = v47;
  (*(v59 + 16))(v47, v9 + v24, v14);
  v65 = 0u;
  v66 = 0u;
  NSUserDefaults.subscript.setter(&v65, v31, v14);
  v32 = v54;
  if (v54)
  {
    v62 = v54;
  }

  else
  {
    v62 = v23;
  }

  v33 = v53;
  v34 = v52;
  v35 = v51;
  v36 = v55;
  (*(v49 + 16))(v58, v50, v55);
  v37 = v48;
  (*(v35 + 16))(v48, v30, v34);
  v38 = v35;
  v39 = *(v33 - 8);
  if ((*(v39 + 48))(v37, 1, v33) == 1)
  {
    v40 = *(v38 + 8);
    v41 = v32;
    v40(v37, v34);
    v65 = 0u;
    v66 = 0u;
  }

  else
  {
    *(&v66 + 1) = v33;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v65);
    (*(v39 + 32))(boxed_opaque_existential_0, v37, v33);
    v43 = v32;
  }

  v44 = v34;
  v45 = v62;
  NSUserDefaults.subscript.setter(&v65, v58, v36);

  sub_8D1218(v67);
  (*(v38 + 32))(v57, v63, v44);
  return (*(v64 + 8))(v22, v68);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)@<X0>(void (*a1)(char *)@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  v19 = a5;
  v17 = a3;
  v18 = a4;
  v16 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v15 - v12;
  sub_AB96D0();
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(v13, a1, a2, v17, v18, AssociatedTypeWitness, v16, a6);
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A>(to:destination:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(a1, sub_8CA53C, v13, a2, a3, a4, a5, a6);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A>(to:destination:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v12 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v12 - v9;
  sub_AB96D0();
  NSUserDefaults.Migrator.migrateValue<A>(to:destination:)(v10, a1, a2, AssociatedTypeWitness, v12, a4);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.migrateValue<A, B>(for:to:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v19 = a5;
  v20 = a2;
  v9 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NSUserDefaults.Migrator();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v19 - v15;
  (*(v9 + 16))(v11, a1, a3, v14);
  *v16 = v5;
  (*(v9 + 32))(&v16[*(v12 + 44)], v11, a3);
  v17 = v5;
  NSUserDefaults.Migrator.migrateValue<A>(to:destination:)(a1, v20, v12, a3, a4, v19);
  return (*(v13 + 8))(v16, v12);
}

uint64_t NSUserDefaults.migrateValue<A, B>(for:to:)@<X0>(void *a1@<X1>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v10 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v10 - v7;
  sub_AB96D0();
  NSUserDefaults.migrateValue<A, B>(for:to:)(v8, a1, AssociatedTypeWitness, v10, a3);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.KeyValueRegistration.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);

  v1(v2);

  sub_90FCBC(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);

  return v0;
}

uint64_t NSUserDefaults.KeyValueRegistration.__deallocating_deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);

  v1(v2);

  sub_90FCBC(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);

  return swift_deallocClassInstance();
}

void sub_90CAC8(uint64_t a1)
{
  if (qword_E1FE78 != -1)
  {
    swift_once();
  }

  v2 = qword_E212D0;
  v3 = *(qword_E212D0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_90D3D0(v2, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t static NSUserDefaults.observe<A>(_:in:valueChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[0] = a5;
  v17[1] = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = v17 - v13;
  sub_AB96D0();
  v15 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v14, a2, a3, a4, v17[0], AssociatedTypeWitness);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  return v15;
}

id sub_90CCC8()
{
  result = [objc_allocWithZone(_s9_ObserverCMa()) init];
  qword_E212D0 = result;
  return result;
}

uint64_t sub_90CD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v51 = _s9_ObserverC18HandlerAssociationVMa(0);
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v57 = a2;

  v10 = sub_90A57C(sub_90FD4C, v56, v9);
  v12 = v11;
  v14 = v13;

  if (v14)
  {
    v50 = v4;
  }

  else
  {
    sub_13C80(0, qword_E21380);
    v15 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 20));
    v10 = *v15;
    v12 = v15[1];

    v16 = NSUserDefaults.init(suite:)(v10, v12);
    if (!v16)
    {
      sub_90FD6C();
      swift_allocError();
      *v47 = v10;
      v47[1] = v12;
      swift_willThrow();
    }

    v14 = v16;
    v50 = v4;
  }

  v17 = *(a1 + v8);
  v18 = *(v17 + 16);

  v19 = v14;
  if (v18)
  {

    v20 = sub_8E0C10(v10, v12, v19);
    if (v21)
    {
      v48 = *(*(v17 + 56) + 8 * v20);

      goto LABEL_10;
    }
  }

  v48 = sub_8C8BC0(_swiftEmptyArrayStorage);
LABEL_10:
  v22 = *(a1 + v8);
  v23 = *(v22 + 16);
  v49 = v10;
  if (!v23)
  {
LABEL_17:
    v33 = _swiftEmptyArrayStorage;
LABEL_18:
    v34 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 24));
    v29 = *v34;
    v30 = v34[1];
    v35 = sub_AB9260();
    [v19 addObserver:a1 forKeyPath:v35 options:0 context:0];

    goto LABEL_19;
  }

  v24 = sub_8E0C10(v10, v12, v19);
  if ((v25 & 1) == 0 || (v26 = *(*(v22 + 56) + 8 * v24), , , v27 = _s20KeyValueRegistrationC10IdentifierVMa(0), !*(v26 + 16)) || (v28 = (a2 + *(v27 + 24)), v29 = *v28, v30 = v28[1], v31 = sub_8E0A74(*v28, v30), (v32 & 1) == 0))
  {

    goto LABEL_17;
  }

  v33 = *(*(v26 + 56) + 8 * v31);

  if (!v33[2])
  {
    goto LABEL_18;
  }

LABEL_19:
  v36 = sub_AB3470();
  v37 = v55;
  (*(*(v36 - 8) + 16))(v55, a2, v36);
  v38 = (v37 + *(v51 + 20));
  v39 = v53;
  *v38 = v52;
  v38[1] = v39;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_8D84D4(0, v33[2] + 1, 1, v33);
  }

  v41 = v33[2];
  v40 = v33[3];
  if (v41 >= v40 >> 1)
  {
    v33 = sub_8D84D4(v40 > 1, v41 + 1, 1, v33);
  }

  v33[2] = v41 + 1;
  sub_90FDC0(v55, v33 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41, _s9_ObserverC18HandlerAssociationVMa);

  v42 = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v42;
  sub_8F48D0(v33, v29, v30, isUniquelyReferenced_nonNull_native);

  v44 = v58;
  swift_beginAccess();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_8F4728(v44, v49, v12, v19, v45);

  *(a1 + v8) = v59;
  swift_endAccess();
}

uint64_t sub_90D29C()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_AB3470();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_90D3D0(uint64_t a1, uint64_t a2)
{
  v4 = _s9_ObserverC18HandlerAssociationVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v8 = *(a1 + v7);
  v43 = a2;

  v9 = sub_90A57C(sub_90FE38, v42, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v13)
  {
    v41 = v9;
    v17 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 24));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v15 + 16);

    if (v20 && (v40 = v18, v21 = sub_8E0A74(v18, v19), (v22 & 1) != 0))
    {
      v39 = v19;
      v23 = *(*(v15 + 56) + 8 * v21);

      v47 = v23;
      __chkstk_darwin(v24);
      *(&v36 - 2) = a2;

      v38 = sub_90A490(sub_90FD1C, (&v36 - 4), v23);
      v26 = v25;

      if (v26)
      {
      }

      else
      {

        v27 = v13;
        sub_900870(v38, v6);
        sub_90FCBC(v6, _s9_ObserverC18HandlerAssociationVMa);
        v38 = v47;
        v28 = v39;
        if (!*(v47 + 16))
        {
          v29 = v27;
          v30 = sub_AB9260();
          [v29 removeObserver:a1 forKeyPath:v30];
        }

        v31 = v27;
        v37 = sub_90DEE4();
        v33 = sub_8EEB44(v45, v41, v11, v31);
        if (*v32)
        {
          v34 = v32;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = *v34;
          *v34 = 0x8000000000000000;
          sub_8F48D0(v38, v40, v28, isUniquelyReferenced_nonNull_native);

          *v34 = v44;
        }

        else
        {
        }

        (v33)(v45, 0);

        (v37)(v46, 0);

        swift_bridgeObjectRelease_n();
      }
    }

    else
    {

      return swift_bridgeObjectRelease_n();
    }
  }

  return result;
}

BOOL sub_90D760(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 20));
  v5 = v4[1];
  if (v3)
  {
    if (v5)
    {
      if (v2 != *v4 || v3 != v5)
      {
        return sub_ABB3C0() & 1;
      }

      return 1;
    }

    return 0;
  }

  return !v5;
}

void sub_90D7E8(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a1;
  v10 = _s9_ObserverC18HandlerAssociationVMa(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  if (!a2)
  {
LABEL_12:
    sub_906F80(a3, &v41);
    v27 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
      v28 = __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v29 = *(v27 - 8);
      v30 = __chkstk_darwin(v28);
      v32 = v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v32, v30);
      v33 = sub_ABB3A0();
      (*(v29 + 8))(v32, v27);
      __swift_destroy_boxed_opaque_existential_0(&v41);
      if (a4)
      {
LABEL_14:
        type metadata accessor for NSKeyValueChangeKey(0);
        sub_90FBFC();
        v34.super.isa = sub_AB8FD0().super.isa;
LABEL_17:
        v35 = _s9_ObserverCMa();
        v40.receiver = v5;
        v40.super_class = v35;
        objc_msgSendSuper2(&v40, "observeValueForKeyPath:ofObject:change:context:", a2, v33, v34.super.isa, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v33 = 0;
      if (a4)
      {
        goto LABEL_14;
      }
    }

    v34.super.isa = 0;
    goto LABEL_17;
  }

  v15 = v12;
  sub_906F80(a3, &v41);
  if (!*(&v42 + 1))
  {
    sub_8D1218(&v41);
    goto LABEL_11;
  }

  sub_13C80(0, qword_E21380);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    a2 = sub_AB9260();
    goto LABEL_12;
  }

  v16 = v39;
  v17 = *&v5[OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock];
  os_unfair_lock_lock(*(v17 + 16));
  v18 = v16;
  sub_90DBE0(v5, v16, v38, v37, &v41);
  os_unfair_lock_unlock(*(v17 + 16));
  v19 = *(v41 + 16);
  if (v19)
  {
    v20 = &v14[*(v15 + 20)];
    v21 = *(v11 + 80);
    v36[1] = v41;
    v22 = v41 + ((v21 + 32) & ~v21);
    v23 = *(v11 + 72);
    do
    {
      sub_90FC54(v22, v14, _s9_ObserverC18HandlerAssociationVMa);
      v24 = *v20;
      v25 = sub_AB9260();
      v26 = [v18 valueForKey:v25];

      if (v26)
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
      }

      v24(&v41);
      sub_8D1218(&v41);
      sub_90FCBC(v14, _s9_ObserverC18HandlerAssociationVMa);
      v22 += v23;
      --v19;
    }

    while (v19);
  }

  else
  {
  }
}

uint64_t sub_90DBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  result = swift_beginAccess();
  v12 = 0;
  v13 = *(a1 + v10);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = _swiftEmptyArrayStorage;
  while (v16)
  {
    v18 = v12;
LABEL_10:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = v19 | (v18 << 6);
    if (*(*(v13 + 48) + 24 * v20 + 16) == a2)
    {
      v21 = *(*(v13 + 56) + 8 * v20);
      v22 = 1 << *(v21 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & *(v21 + 64);
      v25 = (v22 + 63) >> 6;

      v26 = 0;
      while (v24)
      {
LABEL_19:
        v28 = __clz(__rbit64(v24)) | (v26 << 6);
        v29 = (*(v21 + 48) + 16 * v28);
        v17 = *(*(v21 + 56) + 8 * v28);
        if (*v29 != a3 || v29[1] != a4)
        {
          v24 &= v24 - 1;
          result = sub_ABB3C0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

LABEL_26:

        goto LABEL_27;
      }

      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_29;
        }

        if (v27 >= v25)
        {
          v17 = _swiftEmptyArrayStorage;
          goto LABEL_26;
        }

        v24 = *(v21 + 64 + 8 * v27);
        ++v26;
        if (v24)
        {
          v26 = v27;
          goto LABEL_19;
        }
      }
    }
  }

  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v18 >= ((v14 + 63) >> 6))
    {
LABEL_27:
      *a5 = v17;
      return result;
    }

    v16 = *(v13 + 64 + 8 * v18);
    ++v12;
    if (v16)
    {
      v12 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_90DF44(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v4)
  {
LABEL_8:
    sub_13C80(0, &unk_E211F0);
    return sub_ABA790() & 1;
  }

  return 0;
}

id sub_90DFD0()
{
  v2.receiver = v0;
  v2.super_class = _s9_ObserverCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NSUserDefaults.encodeValue(_:forKey:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_AB2B00();
  swift_allocObject();
  sub_AB2AF0();
  v3 = sub_AB2AE0();
  v5 = v4;

  isa = sub_AB3250().super.isa;
  v7 = sub_AB9260();
  [v2 setValue:isa forKey:v7];

  return sub_466B8(v3, v5);
}

uint64_t NSUserDefaults.decodeValue<A>(_:forKey:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = sub_AB9260();
  v6 = [v2 valueForKey:v5];

  if (v6)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_8D1218(v13);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = 1;
    return (*(*(a1 - 8) + 56))(a2, v7, 1, a1);
  }

  sub_AB2AD0();
  swift_allocObject();
  sub_AB2AC0();
  sub_AB2AB0();
  sub_466B8(v9, v10);

  v7 = 0;
  return (*(*(a1 - 8) + 56))(a2, v7, 1, a1);
}

uint64_t sub_90E630()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E212D8);
  __swift_project_value_buffer(v0, qword_E212D8);
  return sub_AB4BB0();
}

uint64_t sub_90E6B0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = sub_ABA9C0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(a2 + 16);
  __chkstk_darwin(v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2 + *(a2 + 44), v11);
  (*(v7 + 16))(v10, a1, v6);
  v15 = *(v5 - 8);
  if ((*(v15 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
    (*(v15 + 32))(boxed_opaque_existential_0, v10, v5);
  }

  return NSUserDefaults.subscript.setter(&v18, v13, v11);
}

uint64_t sub_90E8DC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v4 = &v6[-v3];
  sub_AB96D0();
  sub_906F80(a1, v6);
  NSUserDefaults.subscript.setter(v6, v4, AssociatedTypeWitness);
  return sub_8D1218(a1);
}

unint64_t sub_90EA0C()
{
  result = qword_E212F8[0];
  if (!qword_E212F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E212F8);
  }

  return result;
}

uint64_t sub_90EA60()
{
  result = sub_13C80(319, qword_E21380);
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_ABA9C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_90EB14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(v7 - 8) + 64);
  if (!v10)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_35;
  }

  v19 = v17 + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 < 2)
    {
LABEL_35:
      if ((v12 & 0x80000000) != 0)
      {
        v28 = (a1 + v14 + 8) & ~v14;
        if (v6 == v13)
        {
          v29 = *(v5 + 48);

          return v29(v28);
        }

        else
        {
          v30 = (*(v9 + 48))((v28 + v15 + v16) & ~v16, v10, v7);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v27 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_35;
  }

LABEL_22:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v13 + (v26 | v24) + 1;
}

void sub_90ED78(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v10 + 80);
  v15 = v11 - 1;
  if (!v11)
  {
    v15 = 0;
  }

  if (v8 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v7 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = *(*(v9 - 8) + 64);
  }

  else
  {
    v18 = *(*(v9 - 8) + 64) + 1;
  }

  v19 = ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + v18;
  v20 = a3 >= v17;
  v21 = a3 - v17;
  if (v21 == 0 || !v20)
  {
LABEL_24:
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (v19 > 3)
  {
    v6 = 1;
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v22 = ((v21 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v22))
  {
    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v6 = v23;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_24;
  }

  v6 = 4;
  if (v17 < a2)
  {
LABEL_25:
    v24 = ~v17 + a2;
    if (v19 < 4)
    {
      v25 = (v24 >> (8 * v19)) + 1;
      if (v19)
      {
        v26 = v24 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v26;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v19] = v25;
              }

              else
              {
                *&a1[v19] = v25;
              }

              return;
            }
          }

          else
          {
            *a1 = v24;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v24;
      v25 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v19] = v25;
    }

    return;
  }

LABEL_34:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *&a1[v19] = 0;
  }

  else if (v6)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if ((v16 & 0x80000000) != 0)
  {
    v28 = &a1[v12 + 8] & ~v12;
    if (v8 == v17)
    {
      v29 = *(v7 + 56);

      v29(v28);
    }

    else
    {
      v30 = *(v10 + 56);
      v31 = (v28 + v13 + v14) & ~v14;
      v32 = a2 + 1;

      v30(v31, v32, v11, v9);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = a2 - 1;
    }

    *a1 = v27;
  }
}

uint64_t sub_90F0AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_90F100()
{
  result = sub_13C80(319, qword_E21380);
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_90F198(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_90F31C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_90F574()
{
  result = _s20KeyValueRegistrationC10IdentifierVMa(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_90F648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB3470();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_90F718(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_AB3470();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_90F7F0()
{
  result = sub_AB3470();
  if (v1 <= 0x3F)
  {
    result = sub_90F874();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_90F874()
{
  result = qword_E215E0;
  if (!qword_E215E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_E215E0);
  }

  return result;
}

uint64_t sub_90F8D4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_90F990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB3470();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_90FA64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_AB3470();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_90FB20()
{
  result = sub_AB3470();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_90FBA8()
{
  result = qword_E21728;
  if (!qword_E21728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21728);
  }

  return result;
}

unint64_t sub_90FBFC()
{
  result = qword_E20048;
  if (!qword_E20048)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E20048);
  }

  return result;
}

uint64_t sub_90FC54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_90FCBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_90FD6C()
{
  result = qword_E21730;
  if (!qword_E21730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21730);
  }

  return result;
}

uint64_t sub_90FDC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_90FE58(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_AB9560();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_90FEA0()
{
  result = sub_8E367C(&off_D443F8);
  qword_E743F0 = &off_D44458;
  return result;
}

uint64_t sub_90FEEC()
{
  v0 = 10;
  sub_910ADC(0, 10, 0);
  v1 = &unk_D44480;
  do
  {
    v6 = *(v1 - 1);
    v7 = *v1;
    swift_bridgeObjectRetain_n();
    v8._countAndFlagsBits = 115;
    v8._object = 0xE100000000000000;
    sub_AB94A0(v8);

    v3 = _swiftEmptyArrayStorage[2];
    v2 = _swiftEmptyArrayStorage[3];
    if (v3 >= v2 >> 1)
    {
      sub_910ADC((v2 > 1), v3 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v3 + 1;
    v4 = &_swiftEmptyArrayStorage[2 * v3];
    v4[4] = v6;
    v4[5] = v7;
    v1 += 2;
    --v0;
  }

  while (v0);
  result = sub_8E367C(&off_D44428);
  qword_E743F8 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t URL.replacingSchemeWithHTTP.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212B0);
  __chkstk_darwin();
  v3 = &v17[-v2];
  v4 = sub_AB2CE0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_AB2C40();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_12E1C(v3, &qword_E212B0);
LABEL_9:
    v13 = sub_AB31C0();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = sub_AB2CA0();
  if (!v9)
  {
    (*(v5 + 8))(v7, v4);
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  if (qword_E1FE90 != -1)
  {
    swift_once();
  }

  v18 = v10;
  v19 = v11;
  __chkstk_darwin();
  *&v17[-16] = &v18;
  if (sub_1B39BC(sub_911130, &v17[-32], v12))
  {
  }

  else
  {
    if (qword_E1FE88 != -1)
    {
      swift_once();
    }

    v18 = v10;
    v19 = v11;
    __chkstk_darwin();
    *&v17[-16] = &v18;
    v16 = sub_1B39BC(sub_91115C, &v17[-32], v15);

    if ((v16 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_AB2CB0();
LABEL_14:
  sub_AB2C50();
  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall URLComponents.appendPath(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_AB2C90();
  v5 = sub_910464(v3, v4);
  v7 = v6;

  if (v7)
  {
    if (v5 == 47 && v7 == 0xE100000000000000)
    {

LABEL_6:
      v9 = sub_AB2C80();
      v15._countAndFlagsBits = countAndFlagsBits;
      v15._object = object;
      sub_AB94A0(v15);
      v9(v14, 0);
      return;
    }

    v8 = sub_ABB3C0();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  v10 = sub_9104E4(countAndFlagsBits, object);
  v12 = v11;
  v13 = sub_AB2C80();
  v16._countAndFlagsBits = v10;
  v16._object = v12;
  sub_AB94A0(v16);

  v13(v14, 0);
}

uint64_t sub_910464(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_AB9440();
  return sub_AB9560();
}

uint64_t sub_9104E4(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_90FE58(a1, a2);
  if (!v5)
  {
    goto LABEL_7;
  }

  if (v4 != 47 || v5 != 0xE100000000000000)
  {
    v6 = sub_ABB3C0();

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_7:
    v8._countAndFlagsBits = v3;
    v8._object = a2;
    sub_AB94A0(v8);
    return 47;
  }

LABEL_6:

  return v3;
}

Swift::Void __swiftcall URLComponents.appendQueryItems(_:)(Swift::OpaquePointer a1)
{
  if (sub_AB2C20())
  {

    sub_8E3A84(v1);
  }

  else
  {
  }

  sub_AB2C30();
}

uint64_t URL.isSafariScriptURL.getter()
{
  v0 = sub_AB2C10();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21738);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_AB2CE0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2C40();
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    result = sub_AB2C20();
    if (!result)
    {
      (*(v11 + 8))(v13, v10);
      return 0;
    }

    v15 = result;
    v25 = v13;
    v26 = v11;
    v27 = v10;
    v28 = v6;
    v30 = *(result + 16);
    if (!v30)
    {
LABEL_18:

      (*(v26 + 8))(v25, v27);
      v24 = v28;
      (*(v1 + 56))(v28, 1, 1, v0);
      sub_12E1C(v24, &qword_E21738);
      return 0;
    }

    v16 = 0;
    v17 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v29 = 0x8000000000B797B0;
    while (1)
    {
      if (v16 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v1 + 16))(v3, v17 + *(v1 + 72) * v16, v0);
      if (sub_AB2BF0() == 0x6E6F69746361 && v19 == 0xE600000000000000)
      {
      }

      else
      {
        v20 = sub_ABB3C0();

        if ((v20 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v21 = sub_AB2C00();
      if (v22)
      {
        if (v21 == 0xD000000000000016 && v22 == v29)
        {

LABEL_17:
          (*(v26 + 8))(v25, v27);

          v23 = v28;
          (*(v1 + 32))(v28, v3, v0);
          (*(v1 + 56))(v23, 0, 1, v0);
          sub_12E1C(v23, &qword_E21738);
          return 1;
        }

        v18 = sub_ABB3C0();

        if (v18)
        {
          goto LABEL_17;
        }
      }

LABEL_7:
      ++v16;
      result = (*(v1 + 8))(v3, v0);
      if (v30 == v16)
      {
        goto LABEL_18;
      }
    }
  }

  sub_12E1C(v9, &qword_E212B0);
  return 0;
}

size_t sub_910ABC(size_t a1, int64_t a2, char a3)
{
  result = sub_910BF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_910ADC(char *a1, int64_t a2, char a3)
{
  result = sub_910EFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_910AFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

size_t sub_910BF0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20470);
  v10 = *(sub_AB3820() - 8);
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
  v15 = *(sub_AB3820() - 8);
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

void *sub_910DC8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_910EFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20948);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_911008(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_ABAE20();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_ABB060();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

const char *Feature.MediaPlayer.feature.getter(unsigned __int8 a1)
{
  v1 = "image_decoding";
  v2 = "QueueFA";
  if (a1 != 2)
  {
    v2 = "RSuntory";
  }

  if (a1)
  {
    v1 = "UpgradeOnPlay";
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

const char *sub_9111EC()
{
  v1 = "image_decoding";
  v2 = "QueueFA";
  if (*v0 != 2)
  {
    v2 = "RSuntory";
  }

  if (*v0)
  {
    v1 = "UpgradeOnPlay";
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

unint64_t sub_9112C8()
{
  result = qword_E21740;
  if (!qword_E21740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21740);
  }

  return result;
}

unint64_t sub_911320()
{
  result = qword_E21748;
  if (!qword_E21748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21748);
  }

  return result;
}

unint64_t sub_911378()
{
  result = qword_E21750;
  if (!qword_E21750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21750);
  }

  return result;
}

unint64_t sub_9113D0()
{
  result = qword_E21758;
  if (!qword_E21758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21758);
  }

  return result;
}

const char *Feature.Music.feature.getter(char a1)
{
  result = "potluck";
  switch(a1)
  {
    case 1:
      result = "bilby";
      break;
    case 2:
      result = "symphony";
      break;
    case 3:
      result = "qulh";
      break;
    case 4:
      result = "image_playground_covers";
      break;
    case 5:
      result = "in_with_the_new";
      break;
    case 6:
      result = "despacito";
      break;
    case 7:
      result = "despacito_server";
      break;
    case 8:
      result = "atv_sing";
      break;
    case 9:
      result = "lucky_roll";
      break;
    case 10:
      result = "motion_over_media_remote";
      break;
    case 11:
      result = "ipad_motion_background";
      break;
    case 12:
      result = "quick_search";
      break;
    case 13:
      result = "pins_widget";
      break;
    case 14:
      result = "jafar";
      break;
    case 15:
      result = "jose";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_91160C()
{
  result = qword_E21760;
  if (!qword_E21760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21760);
  }

  return result;
}

uint64_t FeatureFlagsKey.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6[3] = a1;
  v6[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  LOBYTE(v3) = sub_AB3A70();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3 & 1;
}

uint64_t GestureRecognizerHandler.__allocating_init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  *(v4 + 24) = sub_8D0B90;
  *(v4 + 32) = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    [v11 addTarget:v4 action:"handleActionFromGestureRecognizer:"];
  }

  return v4;
}

uint64_t sub_911854()
{

  return swift_deallocObject();
}

uint64_t GestureRecognizerHandler.deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t GestureRecognizerHandler.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_9119C8()
{
  result = swift_slowAlloc();
  qword_E21768 = result;
  return result;
}

uint64_t UIGestureRecognizerHandling<>.addHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_E1FE98 != -1)
  {
    swift_once();
  }

  v8 = qword_E21768;
  if (objc_getAssociatedObject(v4, qword_E21768))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21770);
    if (swift_dynamicCast())
    {
      v9 = v15;
      goto LABEL_11;
    }
  }

  else
  {
    sub_8D1218(v18);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_11:
  *&v18[0] = v9;
  type metadata accessor for GestureRecognizerHandler();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  v12 = v4;

  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v12, sub_911C9C, v10, a3);

  sub_AB9730();
  if (*(&dword_10 + (*&v18[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v18[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  isa = sub_AB9740().super.isa;

  objc_setAssociatedObject(v12, v8, isa, &dword_0 + 1);

  return v11;
}

uint64_t sub_911C38(void *a1, void (*a2)(void *, id), uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = &protocol witness table for UIGestureRecognizer;
  v5[0] = a1;
  a2(v5, [a1 state]);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

void UIGestureRecognizerHandling<>.removeHandler(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_E1FE98 != -1)
  {
LABEL_25:
    swift_once();
  }

  v4 = qword_E21768;
  if (objc_getAssociatedObject(v2, qword_E21768))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21770);
    if (swift_dynamicCast())
    {
      v5 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    sub_8D1218(v16);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_10:
  *&v16[0] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    v6 = sub_ABB060();
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
LABEL_12:
      v11 = v4;
      v12 = v2;
      v7 = 0;
      v2 = (v5 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_ABAE20();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v4 = v11;
            v2 = v12;
            break;
          }
        }

        else
        {
          if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_25;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_22;
          }
        }

        if (v8 == a1)
        {
        }

        else
        {
          sub_ABAE90();
          sub_ABAED0();
          sub_ABAEE0();
          sub_ABAEA0();
        }

        ++v7;
        if (v9 == v6)
        {
          goto LABEL_23;
        }
      }
    }
  }

  type metadata accessor for GestureRecognizerHandler();
  isa = sub_AB9740().super.isa;

  objc_setAssociatedObject(v2, v4, isa, &dword_0 + 1);
}

uint64_t KeyboardAvoidance.animationOptions.getter()
{
  result = *(v0 + 72) << 16;
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

double KeyboardAvoidance.init(notification:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_9130B0(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

void KeyboardAvoidance.animate(alongsideKeyboard:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(v4 + 72) << 16;
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = a1;
    v14 = a2;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_1B5EB4;
    v12 = &block_descriptor_242;
    v8 = _Block_copy(&v9);

    if (a3)
    {
      v13 = a3;
      v14 = a4;
      v9 = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_1811AC;
      v12 = &block_descriptor_3_11;
      a3 = _Block_copy(&v9);
    }

    [objc_opt_self() animateWithDuration:v5 delay:v8 options:a3 animations:*(v4 + 64) completion:0.0];
    _Block_release(a3);
    _Block_release(v8);
  }
}

void KeyboardAvoidance.animate(alongsideKeyboard:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = *(v2 + 72) << 16;
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v5;
    v8 = *(v2 + 64);
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1B5EB4;
    v10[3] = &block_descriptor_6_6;
    v9 = _Block_copy(v10);

    [v7 animateWithDuration:v6 delay:v9 options:0 animations:v8 completion:0.0];
    _Block_release(v9);
  }
}

Swift::Void __swiftcall KeyboardAvoidance.animateContentScrollView(in:)(UIViewController in)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 48);
  *(v3 + 48) = *(v1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v1 + 64);
  *(v3 + 96) = *(v1 + 80);
  v5 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  *(v3 + 104) = in;
  v6 = objc_opt_self();
  v7 = *(v1 + 72) << 16;
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v6;
    v9 = *(v1 + 64);
    v12[4] = sub_9135B0;
    v12[5] = v3;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1B5EB4;
    v12[3] = &block_descriptor_9_8;
    v10 = _Block_copy(v12);
    v11 = in.super.super.isa;

    [v8 animateWithDuration:v7 delay:v10 options:0 animations:v9 completion:0.0];
    _Block_release(v10);
  }
}

Swift::Void __swiftcall KeyboardAvoidance.applyAdditionalSafeAreaInsets(to:)(UIViewController to)
{
  if ([(objc_class *)to.super.super.isa isViewLoaded])
  {
    v3 = [(objc_class *)to.super.super.isa view];
    if (v3)
    {
      v4 = v3;
      [v3 convertRect:0 fromView:{v1[4], v1[5], v1[6], v1[7]}];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = [(objc_class *)to.super.super.isa view];
      if (v13)
      {
        v14 = v13;
        [v13 safeAreaInsets];
        v16 = v15;

        [(objc_class *)to.super.super.isa additionalSafeAreaInsets];
        v18 = v16 - v17;
        [v4 frame];
        Height = CGRectGetHeight(v23);
        v24.origin.x = v6;
        v24.origin.y = v8;
        v24.size.width = v10;
        v24.size.height = v12;
        MinY = CGRectGetMinY(v24);

        if (Height - MinY - v18 < 0.0)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = Height - MinY - v18;
        }

        [(objc_class *)to.super.super.isa setAdditionalSafeAreaInsets:0.0, 0.0, v21, 0.0];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void KeyboardAvoidance.additionalSafeAreaInsets(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0.0;
  if (![a1 isViewLoaded] || (v6 = objc_msgSend(a1, "view")) == 0)
  {
    v24 = 1;
LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    *(a2 + 24) = 0;
    *(a2 + 32) = v24;
    return;
  }

  v7 = v6;
  [v6 convertRect:0 fromView:{v2[4], v2[5], v2[6], v2[7]}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [a1 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];
    v19 = v18;

    [a1 additionalSafeAreaInsets];
    v21 = v19 - v20;
    [v7 frame];
    Height = CGRectGetHeight(v25);
    v26.origin.x = v9;
    v26.origin.y = v11;
    v26.size.width = v13;
    v26.size.height = v15;
    MinY = CGRectGetMinY(v26);

    v24 = 0;
    if (Height - MinY - v21 < 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = Height - MinY - v21;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void KeyboardAvoidance.recommendedScrollRect(in:preferredVisibleRect:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = swift_allocObject();
  sub_913870(a1, v54);
  if (v55)
  {
    swift_deallocUninitializedObject();
LABEL_12:
    v36 = 0uLL;
    v37 = 1;
    width = 0.0;
    v38 = 0.0;
    goto LABEL_13;
  }

  v8 = v54[1];
  *(v7 + 16) = v54[0];
  *(v7 + 32) = v8;
  v9 = [a1 contentScrollViewForEdge:1];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [a1 view];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 window];

    if (!v13 || (v14 = [v13 windowScene], v13, !v14) || (v15 = objc_msgSend(v14, "screen"), v14, !v15))
    {

      goto LABEL_12;
    }

    *(v7 + 16) = 0;
    v16 = swift_allocObject();
    [v10 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    *(v16 + 16) = v17;
    *(v16 + 24) = v19;
    *(v16 + 32) = v21;
    v23 = [v15 coordinateSpace];
    v24 = v3[4];
    v25 = v3[5];
    v26 = v3[6];
    v27 = v3[7];
    v28 = v10;
    [v23 convertRect:v28 toCoordinateSpace:{v24, v25, v26, v27}];
    v30 = v29;

    swift_unknownObjectRelease();
    v31 = v30 - v20;
    *(v16 + 40) = v30 - v20;
    v56.origin.x = v18;
    v56.origin.y = v20;
    v56.size.width = v22;
    v56.size.height = v30 - v20;
    Height = CGRectGetHeight(v56);
    if (CGRectGetHeight(*(v7 + 16)) > Height)
    {
      v51 = *(v7 + 16);
      width = *(v7 + 32);
      v34 = *(v7 + 40);
      v57.origin.x = v18;
      v57.origin.y = v20;
      v57.size.width = v22;
      v57.size.height = v31;
      v35 = CGRectGetHeight(v57);

      v36 = v51;
      v37 = 0;
      v38 = v34 - v35;
LABEL_13:
      *a3 = v36;
      *(a3 + 16) = width;
      *(a3 + 24) = v38;
      *(a3 + 32) = v37;
      return;
    }

    if ((*(a2 + 32) & 1) == 0)
    {
      v63.size.width = *(a2 + 16);
      v63.size.height = *(a2 + 24);
      v63.origin.x = *a2;
      v43 = *(a2 + 8);
      v63.origin.y = v43;
      v59 = CGRectUnion(*(v7 + 16), v63);
      y = v59.origin.y;
      x = v59.origin.x;
      width = v59.size.width;
      v38 = v59.size.height;
      v59.origin.x = v18;
      v59.origin.y = v20;
      v59.size.width = v22;
      v59.size.height = v31;
      v44 = CGRectGetHeight(v59);
      v60.origin.y = y;
      v60.origin.x = x;
      v60.size.width = width;
      v60.size.height = v38;
      if (CGRectGetHeight(v60) <= v44)
      {
        v61.origin.x = v18;
        v61.origin.y = v20;
        v61.size.width = v22;
        v61.size.height = v31;
        v45 = CGRectGetWidth(v61);
        v62.origin.y = y;
        v62.origin.x = x;
        v62.size.width = width;
        v62.size.height = v38;
        if (CGRectGetWidth(v62) <= v45)
        {

          v37 = 0;
          *&v36 = x;
          goto LABEL_22;
        }
      }

      v42 = v43;
LABEL_21:
      v46 = sub_913A20(v7, v16, v28, v42);
      y = v47;
      v53 = v46;
      width = v48;
      v38 = v49;

      *&v36 = v53;
      v37 = 0;
LABEL_22:
      *(&v36 + 1) = y;
      goto LABEL_13;
    }

    [v28 contentOffset];
    v40 = v39;
    if (v39 > CGRectGetMinY(*(v7 + 16)) || (v58.origin.x = v18, v58.origin.y = v20, v58.size.width = v22, v58.size.height = v31, v41 = v40 + CGRectGetHeight(v58), CGRectGetMaxY(*(v7 + 16)) > v41))
    {
      v42 = v40;
      goto LABEL_21;
    }

LABEL_11:

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t static KeyboardAvoidance.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (CGRectEqualToRect(*a1, *a2) && CGRectEqualToRect(*(a1 + 32), *(a2 + 32)) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    v4 = *(a1 + 80) ^ *(a2 + 80) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_912AF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v16 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v15 = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    v17.origin.x = v2;
    v17.origin.y = v3;
    v17.size.width = v4;
    v17.size.height = v5;
    v18.origin.x = v8;
    v18.origin.y = v9;
    v18.size.width = v10;
    v18.size.height = v11;
    result = CGRectEqualToRect(v17, v18);
    if (result)
    {
      result = 0;
      if (v16 == v15)
      {
        if (v6 == v12)
        {
          return v7 ^ v13 ^ 1u;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t KeyboardObserver.init(options:update:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return v4;
  }

  sub_ABAEC0();
  v6 = v4 + 56;
  v7 = sub_ABABC0();
  v8 = *(v4 + 36);
  result = objc_opt_self();
  v23 = result;
  v24 = v4;
  v22 = v4 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_20;
    }

    v10 = *(*(v4 + 48) + v7);
    v26 = v5;
    v27 = v8;
    if (v10 > 2)
    {
      v11 = UIKeyboardDidHideNotification;
      if (v10 != 3)
      {
        v11 = UIKeyboardWillChangeFrameNotification;
        if (v10 != 4)
        {
          v11 = UIKeyboardDidChangeFrameNotification;
        }
      }
    }

    else
    {
      v11 = UIKeyboardWillShowNotification;
      if (v10)
      {
        v11 = UIKeyboardDidShowNotification;
        if (v10 != 1)
        {
          v11 = UIKeyboardWillHideNotification;
        }
      }
    }

    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    *(v13 + 32) = v10;
    type metadata accessor for NotificationObserver();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v14 + 16) = v12;
    swift_unknownObjectWeakAssign();
    *(v14 + 32) = 1;
    *(v14 + 48) = sub_913B88;
    *(v14 + 56) = v13;
    v15 = a3;

    v16 = v12;

    v17 = [v23 defaultCenter];
    *(v14 + 40) = v17;
    v18 = *(v14 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = v17;

    v21 = v18;
    [v20 addObserver:v14 selector:"handleNotification:" name:v21 object:Strong];

    swift_unknownObjectRelease();
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    result = sub_ABAEA0();
    v4 = v24;
    if (v7 >= -(-1 << *(v24 + 32)))
    {
      goto LABEL_21;
    }

    v6 = v22;
    if ((*(v22 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(v24 + 36))
    {
      goto LABEL_23;
    }

    result = sub_ABABE0();
    v7 = result;
    v8 = *(v24 + 36);
    v5 = v26 - 1;
    a3 = v15;
    if (v26 == 1)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_912F8C(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *), uint64_t a3, uint64_t a4)
{
  v7 = sub_AB2BD0();
  __chkstk_darwin(v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  result = sub_9130B0(v9, v13);
  if (v14 != 2)
  {
    v15[3] = v13[3];
    v15[4] = v13[4];
    v15[1] = v13[1];
    v15[2] = v13[2];
    v15[0] = v13[0];
    v16 = v14;
    return a2(a4, v15);
  }

  return result;
}

uint64_t sub_9130B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB2BC0();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v45 = sub_AB92A0();
  sub_ABAD10();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v6 = sub_2EC004(v50);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_808B0(*(v5 + 56) + 32 * v6, v51);
  sub_8085C(v50);
  sub_13C80(0, &qword_E1FEB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v45 CGRectValue];
  v43 = v9;
  v44 = v8;
  v41 = v10;
  v42 = v11;

  v46 = sub_AB92A0();
  sub_ABAD10();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v12 = sub_2EC004(v50);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_808B0(*(v5 + 56) + 32 * v12, v51);
  sub_8085C(v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v46 CGRectValue];
  v39 = v15;
  v40 = v14;
  v37 = v16;
  v38 = v17;

  v47 = sub_AB92A0();
  sub_ABAD10();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v18 = sub_2EC004(v50);
  if ((v19 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_808B0(*(v5 + 56) + 32 * v18, v51);
  sub_8085C(v50);
  sub_13C80(0, &qword_E209D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v47 floatValue];
  v21 = v20;

  v48 = sub_AB92A0();
  sub_ABAD10();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v22 = sub_2EC004(v50);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_808B0(*(v5 + 56) + 32 * v22, v51);
  sub_8085C(v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v36 = sub_AB2BD0();
    (*(*(v36 - 8) + 8))(a1, v36);

    goto LABEL_20;
  }

  v24 = [v48 integerValue];

  v49 = sub_AB92A0();
  sub_ABAD10();
  if (!*(v5 + 16) || (v25 = sub_2EC004(v50), (v26 & 1) == 0))
  {
LABEL_18:

    sub_8085C(v50);
    goto LABEL_19;
  }

  sub_808B0(*(v5 + 56) + 32 * v25, v51);
  sub_8085C(v50);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v35 = sub_AB2BD0();
    result = (*(*(v35 - 8) + 8))(a1, v35);
LABEL_20:
    v24 = 0;
    v31 = 0uLL;
    v27 = 2;
    v30 = 0.0;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    goto LABEL_21;
  }

  v27 = [v49 BOOLValue];

  v28 = sub_AB2BD0();
  result = (*(*(v28 - 8) + 8))(a1, v28);
  v30 = v21;
  *&v31 = v44;
  *(&v31 + 1) = v41;
  *&v32 = v43;
  *(&v32 + 1) = v42;
  *&v33 = v40;
  *(&v33 + 1) = v37;
  *&v34 = v39;
  *(&v34 + 1) = v38;
LABEL_21:
  *a2 = v31;
  *(a2 + 16) = v32;
  *(a2 + 32) = v33;
  *(a2 + 48) = v34;
  *(a2 + 64) = v30;
  *(a2 + 72) = v24;
  *(a2 + 80) = v27;
  return result;
}

uint64_t block_copy_helper_242(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_913578()
{

  return swift_deallocObject();
}

void sub_9135B0()
{
  v1 = *(v0 + 104);
  KeyboardAvoidance.applyAdditionalSafeAreaInsets(to:)(v1);

  sub_913600(v1);
}

void sub_913600(void *a1)
{
  v1 = [a1 contentScrollView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 firstResponder];
    if (v3)
    {
      v30 = v3;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = v30;
        v7 = [v5 superview];
        if (v7)
        {
          v8 = v7;
          sub_13C80(0, &qword_E21208);
          while (1)
          {
            v9 = v2;
            v10 = v8;
            v11 = sub_ABA790();

            if (v11)
            {
              break;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
            {
              v10 = v10;

              v5 = v10;
              break;
            }

            v8 = [v10 superview];

            if (!v8)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
LABEL_10:
          v10 = 0;
        }

        [v5 frame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [v5 superview];
        [v2 convertRect:v21 fromView:{v14, v16, v18, v20}];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        [v2 scrollRectToVisible:0 animated:{v23, v25, v27, v29}];
      }

      v12 = v30;
    }

    else
    {
      v12 = v2;
    }
  }
}

void sub_913870(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 1;
  v5 = [a1 contentScrollViewForEdge:1];
  v6 = 0uLL;
  if (!v5)
  {
    v28 = 0uLL;
    goto LABEL_11;
  }

  v7 = v5;
  v8 = [v5 firstResponder];
  if (!v8)
  {

    goto LABEL_10;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_8:

LABEL_10:
    v4 = 1;
    v28 = 0uLL;
    v6 = 0uLL;
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [a1 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 isDescendantOfView:v12];

    if (v14)
    {
      [v11 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = [v11 superview];
      [v7 convertRect:v23 fromView:{v16, v18, v20, v22}];
      v30 = v24;
      v31 = v25;
      v29 = v26;
      v32 = v27;

      *&v28 = v29;
      *&v6 = v30;
      v4 = 0;
      *(&v6 + 1) = v31;
      *(&v28 + 1) = v32;
LABEL_11:
      *a2 = v6;
      *(a2 + 16) = v28;
      *(a2 + 32) = v4;
      return;
    }

    goto LABEL_8;
  }

  __break(1u);
}

double sub_913A20(uint64_t a1, uint64_t a2, void *a3, CGFloat a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  swift_beginAccess();
  CGRectGetHeight(*(a2 + 16));
  swift_beginAccess();
  CGRectGetHeight(*(a1 + 16));
  swift_beginAccess();
  if (CGRectGetMinY(*(a1 + 16)) > a4)
  {
    [a3 adjustedContentInset];
    swift_beginAccess();
    CGRectGetMaxY(*(a1 + 16));
  }

  return v8;
}

uint64_t sub_913B50()
{

  return swift_deallocObject();
}

unint64_t sub_913B98()
{
  result = qword_E21840;
  if (!qword_E21840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21840);
  }

  return result;
}

__n128 __swift_memcpy81_8_0(uint64_t a1, uint64_t a2)
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

uint64_t sub_913C10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_913C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t Signpost.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB4B00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id Signpost.log.getter()
{
  v1 = *(v0 + *(type metadata accessor for Signpost() + 20));

  return v1;
}

uint64_t type metadata accessor for Signpost()
{
  result = qword_E218A8;
  if (!qword_E218A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Signpost.init(name:object:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v29 = a3;
  v27 = a1;
  v28 = a2;
  v26 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21848);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_AB4B00();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  v19 = a4;
  swift_unknownObjectRetain();
  sub_AB4AC0();
  (*(v13 + 16))(v11, v18, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_91430C(v11, v9);
  v20 = *(v13 + 48);
  if (v20(v9, 1, v12) == 1)
  {
    v21 = v19;
    sub_AB4AD0();
    swift_unknownObjectRelease();
    sub_91437C(v11);
    (*(v13 + 8))(v18, v12);
    if (v20(v9, 1, v12) != 1)
    {
      sub_91437C(v9);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_91437C(v11);
    (*(v13 + 8))(v18, v12);
    (*(v13 + 32))(v16, v9, v12);
  }

  v22 = v26;
  (*(v13 + 32))(v26, v16, v12);
  result = type metadata accessor for Signpost();
  *(v22 + *(result + 20)) = v19;
  v24 = v22 + *(result + 24);
  v25 = v28;
  *v24 = v27;
  *(v24 + 8) = v25;
  *(v24 + 16) = v29;
  return result;
}

uint64_t Signpost.init(name:id:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a3;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21848);
  __chkstk_darwin();
  v11 = &v21 - v10;
  v12 = sub_AB4B00();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_91430C(a4, v11);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    v17 = a5;
    sub_AB4AD0();
    sub_91437C(a4);
    if (v16(v11, 1, v12) != 1)
    {
      sub_91437C(v11);
    }
  }

  else
  {
    sub_91437C(a4);
    (*(v13 + 32))(v15, v11, v12);
  }

  (*(v13 + 32))(a6, v15, v12);
  result = type metadata accessor for Signpost();
  *(a6 + *(result + 20)) = a5;
  v19 = a6 + *(result + 24);
  v20 = v21;
  *v19 = a1;
  *(v19 + 8) = v20;
  *(v19 + 16) = v22;
  return result;
}

uint64_t sub_91430C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_91437C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_91445C(uint64_t a1, void (*a2)(void))
{
  a2();
  type metadata accessor for Signpost();

  return sub_AB4AB0();
}

uint64_t sub_9144E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  a6();
  type metadata accessor for Signpost();
  return sub_AB4AA0();
}

uint64_t static Signpost.interval<A>(name:log:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a6;
  v35 = a5;
  v36 = a4;
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v33 = a7;
  v7 = sub_AB4B00();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21848);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v29 - v13;
  v15 = type metadata accessor for Signpost();
  __chkstk_darwin();
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin();
  v20 = &v29 - v19;
  (*(v8 + 56))(v14, 1, 1, v7, v18);
  sub_91430C(v14, v12);
  v21 = *(v8 + 48);
  if (v21(v12, 1, v7) == 1)
  {
    v22 = v36;
    sub_AB4AD0();
    sub_91437C(v14);
    if (v21(v12, 1, v7) != 1)
    {
      sub_91437C(v12);
    }
  }

  else
  {
    sub_91437C(v14);
    (*(v8 + 32))(v10, v12, v7);
  }

  (*(v8 + 32))(v17, v10, v7);
  v23 = v36;
  *&v17[*(v15 + 20)] = v36;
  v24 = &v17[*(v15 + 24)];
  v25 = v31;
  *v24 = v30;
  *(v24 + 1) = v25;
  v24[16] = v32;
  sub_5E810C(v17, v20);
  v26 = v23;
  sub_ABA230();
  v27 = sub_AB4AB0();
  v35(v27);
  sub_ABA220();
  sub_AB4AB0();
  return sub_5E7F5C(v20);
}

uint64_t sub_9148C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB4B00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_914990(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_AB4B00();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_914A48()
{
  result = sub_AB4B00();
  if (v1 <= 0x3F)
  {
    result = sub_914AD4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_914AD4()
{
  result = qword_E218B8;
  if (!qword_E218B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E218B8);
  }

  return result;
}

void UnfairLock.locked<A>(_:)(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t UnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WeakArray.endIndex.getter()
{
  type metadata accessor for WeakArray.WeakBox();

  return sub_AB9850();
}

uint64_t WeakArray.subscript.getter()
{
  v0 = type metadata accessor for WeakArray.WeakBox();
  sub_AB9880();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v0 - 8) + 8))(v3, v0);
  return Strong;
}

{
  type metadata accessor for WeakArray.WeakBox();
  sub_AB9870();
  swift_getWitnessTable();
  sub_AB9C50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20998);
  v0 = sub_AB9DE0();
  result = 0;
  if (v0)
  {
    return WeakArray.subscript.getter();
  }

  return result;
}

Swift::Int __swiftcall WeakArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t WeakArray.init(_:)(uint64_t a1, uint64_t a2)
{
  v8[5] = a1;
  v8[2] = a2;
  v2 = sub_AB9870();
  v3 = type metadata accessor for WeakArray.WeakBox();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_8DB18C(sub_914F48, v8, v2, v3, &type metadata for Never, WitnessTable, &protocol witness table for Never, v5);

  return v6;
}

uint64_t sub_914F48()
{
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t WeakArray.append(_:)()
{
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  type metadata accessor for WeakArray.WeakBox();
  sub_AB9870();
  return sub_AB9820();
}

uint64_t WeakArray.remove(at:)()
{
  v0 = type metadata accessor for WeakArray.WeakBox();
  sub_AB9870();
  sub_AB9840();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v0 - 8) + 8))(v3, v0);
  return Strong;
}

uint64_t WeakArray.remove(_:)()
{
  WeakArray.reap()();
  type metadata accessor for WeakArray.WeakBox();
  sub_AB9870();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_AB9DC0();
}

Swift::Void __swiftcall WeakArray.reap()()
{
  type metadata accessor for WeakArray.WeakBox();
  sub_AB9870();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_AB9DC0();
}

uint64_t sub_915238()
{
  v1 = *(v0 + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRelease();
    return v3 == v1;
  }

  return result;
}

BOOL sub_915280()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t WeakArray.allElements.getter()
{
  type metadata accessor for WeakArray();
  swift_getWitnessTable();
  return sub_AB95C0();
}

uint64_t sub_9153E8@<X0>(uint64_t *a1@<X8>)
{
  result = WeakArray.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_91541C(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_9154F4(v2);
  v3[4] = v5;
  v3[5] = v4;
  return sub_9154AC;
}

void sub_9154AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

void *sub_9155F4@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *sub_91560C(void *result)
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

uint64_t sub_91564C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_9156A0()
{
  swift_getWitnessTable();
  v0 = sub_915840();

  return v0;
}

uint64_t sub_9156FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_915738()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_915774()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_AB9170();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_AB9DF0();
  result = sub_AB9170();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_915844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_AB9170();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t WeakValuesDictionary.__allocating_init()()
{
  v0 = swift_allocObject();
  WeakValuesDictionary.init()();
  return v0;
}

void *WeakValuesDictionary.init()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_8C8F2C();
  swift_getTupleTypeMetadata2();
  v4 = sub_AB97C0();
  v5 = sub_8E116C(v4, v2, v3, *(v1 + 96));

  v0[2] = v5;
  return v0;
}

uint64_t WeakValuesDictionary.subscript.getter()
{
  swift_beginAccess();
  sub_8C8F2C();

  sub_AB90A0();

  if (v4[0])
  {
    if ([v4[0] weakObjectValue])
    {
      sub_ABAB50();

      swift_unknownObjectRelease();
    }

    else
    {

      v2 = 0u;
      v3 = 0u;
    }

    *v4 = v2;
    v5 = v3;
    if (*(&v3 + 1))
    {
      if (swift_dynamicCast())
      {
        return v1;
      }
    }

    else
    {
      sub_8D1218(v4);
    }
  }

  return 0;
}

void WeakValuesDictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(a1);
  if (v9)
  {
    (*(v6 + 16))(&v12 - v7, a2, v5, v8);
    v12 = a1;
    swift_unknownObjectRetain();
    v10 = sub_ABB3A0();
    v11 = [objc_opt_self() valueWithWeakObject:v10];
    swift_unknownObjectRelease();
    v13 = v11;
    swift_beginAccess();
    sub_8C8F2C();
    sub_AB9080();
    sub_AB90B0();
    swift_endAccess();
    swift_unknownObjectRelease_n();
    (*(v6 + 8))(a2, v5);
  }

  else
  {
    swift_beginAccess();
    sub_8C8F2C();
    sub_AB9080();
    sub_AB9010();
    swift_endAccess();
    (*(v6 + 8))(a2, v5);
  }
}

void (*WeakValuesDictionary.subscript.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[1] = v1;
  v5 = *(*v1 + 80);
  v3[2] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[3] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[4] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v4[5] = v9;
  (*(v7 + 16))();
  *v4 = WeakValuesDictionary.subscript.getter();
  return sub_915F14;
}

void sub_915F14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    (*(v2[3] + 32))((*a1)[4], v4, v2[2]);
    v5 = swift_unknownObjectRetain();
    WeakValuesDictionary.subscript.setter(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    WeakValuesDictionary.subscript.setter(**a1, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall WeakValuesDictionary.compact()()
{
  v68 = *v0;
  v1 = *(v68 + 80);
  v59 = *(v1 - 8);
  __chkstk_darwin();
  v57 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v54 - v3;
  v55 = v5;
  __chkstk_darwin();
  v69 = &v54 - v6;
  v60 = sub_8C8F2C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = sub_ABA9C0();
  v8 = *(v65 - 8);
  __chkstk_darwin();
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v54 - v11;
  v78 = sub_AB97C0();
  swift_beginAccess();
  v58 = v0;
  v13 = v0[2];
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = sub_ABAF90();
    v15 = 0;
    v16 = 0;
    v70 = 0;
    v17 = v14 | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(v13 + 32);
    v16 = ~v18;
    v15 = v13 + 64;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v70 = v20 & *(v13 + 64);
    v17 = v13;
  }

  v72 = (v59 + 32);
  v64 = TupleTypeMetadata2 - 8;
  v56 = v16;
  v21 = (v16 + 64) >> 6;
  v73 = (v59 + 16);
  v63 = (v8 + 32);
  v71 = (v59 + 8);

  v22 = 0;
  v62 = v10;
  v61 = v12;
  v66 = v15;
  v67 = v17;
  v23 = v70;
  while (1)
  {
    v70 = v23;
    if ((v17 & 0x8000000000000000) != 0)
    {
      if (sub_ABAFC0())
      {
        v40 = v39;
        v41 = v69;
        sub_ABB380();
        swift_unknownObjectRelease();
        *&v75 = v40;
        swift_dynamicCast();
        v42 = *&v77[0];
        v43 = *(TupleTypeMetadata2 + 48);
        v44 = v41;
        v10 = v62;
        (*v72)(v62, v44, v1);
        *&v10[v43] = v42;
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 0, 1, TupleTypeMetadata2);
      }

      else
      {
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 1, 1, TupleTypeMetadata2);
      }

      v27 = v22;
      v74 = v70;
      v12 = v61;
    }

    else
    {
      v24 = v23;
      v25 = v22;
      if (v23)
      {
LABEL_21:
        v74 = (v24 - 1) & v24;
        v29 = __clz(__rbit64(v24)) | (v25 << 6);
        v30 = v4;
        v31 = v59;
        v32 = v69;
        (*(v59 + 16))(v69, *(v17 + 48) + *(v59 + 72) * v29, v1);
        v33 = *(*(v17 + 56) + 8 * v29);
        v34 = *(TupleTypeMetadata2 + 48);
        v35 = *(v31 + 32);
        v4 = v30;
        v10 = v62;
        v36 = v32;
        v12 = v61;
        v35(v62, v36, v1);
        *&v10[v34] = v33;
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 0, 1, TupleTypeMetadata2);
        v38 = v33;
        v27 = v25;
      }

      else
      {
        v26 = v21 <= v22 + 1 ? v22 + 1 : v21;
        v27 = v26 - 1;
        v28 = v22;
        while (1)
        {
          v25 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            return;
          }

          if (v25 >= v21)
          {
            break;
          }

          v24 = *(v15 + 8 * v25);
          ++v28;
          if (v24)
          {
            v17 = v67;
            goto LABEL_21;
          }
        }

        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 1, 1, TupleTypeMetadata2);
        v74 = 0;
      }
    }

    (*v63)(v12, v10, v65);
    if ((*(v37 + 48))(v12, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v45 = *&v12[*(TupleTypeMetadata2 + 48)];
    (*v72)(v4, v12, v1);
    if ([v45 weakObjectValue])
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
    }

    v77[0] = v75;
    v77[1] = v76;
    if (!*(&v76 + 1))
    {
      sub_8D1218(v77);
LABEL_9:
      (*v73)(v69, v4, v1);
      sub_AB9870();
      sub_AB9820();

      (*v71)(v4, v1);
      goto LABEL_10;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    (*v71)(v4, v1);

    swift_unknownObjectRelease();
LABEL_10:
    v22 = v27;
    v23 = v74;
    v15 = v66;
    v17 = v67;
  }

  sub_2BB88();
  v46 = v78;
  v47 = sub_AB9850();
  v48 = v59;
  v49 = v57;
  if (!v47)
  {
    goto LABEL_44;
  }

  v50 = 0;
  while (2)
  {
    v51 = sub_AB97E0();
    sub_AB9790();
    if (v51)
    {
      (*(v48 + 16))(v49, v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50, v1);
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      goto LABEL_38;
    }

    v53 = sub_ABAE10();
    if (v55 != 8)
    {
      goto LABEL_46;
    }

    *&v77[0] = v53;
    (*v73)(v49, v77, v1);
    swift_unknownObjectRelease();
    v52 = v50 + 1;
    if (!__OFADD__(v50, 1))
    {
LABEL_38:
      swift_beginAccess();
      sub_AB9080();
      sub_AB9010();
      swift_endAccess();

      (*v71)(v49, v1);
      ++v50;
      if (v52 == sub_AB9850())
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_44:
}

uint64_t sub_917450()
{
  result = sub_917470();
  qword_E74400 = result;
  return result;
}

uint64_t sub_917470()
{
  v0 = sub_AB31C0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28) - 8);
  __chkstk_darwin();
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v48 - v5;
  __chkstk_darwin();
  v8 = &v48 - v7;
  __chkstk_darwin();
  v55 = &v48 - v9;
  __chkstk_darwin();
  v11 = &v48 - v10;
  v54 = sub_9190B4(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E30);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF8820;
  v58 = v12;
  v51 = v13;
  v14 = v13 + v12;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = [v16 resourceURL];

  if (v17)
  {
    sub_AB3150();

    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 0;
  }

  else
  {
    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 1;
  }

  v57 = v18;
  v18(v19, v20, 1, v0);
  sub_918DE4(v11, v14);
  type metadata accessor for BundleFinder();
  v21 = [v15 bundleForClass:swift_getObjCClassFromMetadata()];
  v22 = [v21 resourceURL];

  if (v22)
  {
    v23 = v55;
    sub_AB3150();

    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v55;
  }

  v25 = (v1 + 56);
  v26 = v57;
  v57(v23, v24, 1, v0);
  v49 = v1;
  v27 = v56;
  sub_918DE4(v23, v14 + v56);
  v28 = [v15 mainBundle];
  v29 = [v28 bundleURL];

  sub_AB3150();
  v55 = v25;
  v26(v14 + 2 * v27, 0, 1, v0);
  v59 = v54;
  sub_923698(v51);
  v30 = v59;
  v31 = v59[2];
  v32 = v53;
  if (v31)
  {
    v33 = 0;
    v34 = v58 + v59;
    v58 = (v49 + 6);
    v54 = (v49 + 1);
    v49 += 4;
    v50 = "F0E546A8DF70B34912BundleFinder";
    v51 = v31;
    while (v33 < v30[2])
    {
      sub_918E54(v34, v6);
      v35 = *v58;
      if ((*v58)(v6, 1, v0) == 1)
      {
        sub_918EC4(v6);
        v36 = 1;
      }

      else
      {
        sub_AB3120();
        (*v54)(v6, v0);
        v36 = 0;
      }

      v57(v8, v36, 1, v0);
      sub_918E54(v8, v32);
      if (v35(v32, 1, v0) == 1)
      {
        sub_918EC4(v8);
      }

      else
      {
        v37 = v30;
        v38 = v8;
        v39 = v6;
        v40 = v52;
        (*v49)(v52, v32, v0);
        v41 = objc_allocWithZone(NSBundle);
        sub_AB30F0(v42);
        v44 = v43;
        v45 = [v41 initWithURL:v43];

        v32 = v53;
        v46 = v40;
        v6 = v39;
        v8 = v38;
        v30 = v37;
        v31 = v51;
        (*v54)(v46, v0);
        sub_918EC4(v8);
        if (v45)
        {

          return v45;
        }
      }

      ++v33;
      v34 += v56;
      if (v31 == v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t variable initialization expression of LyricsOptionsManager.observers()
{
  v0 = type metadata accessor for LyricsOptionsManager.Observer();

  return WeakArray.init(_:)(_swiftEmptyArrayStorage, v0);
}

void variable initialization expression of SyncedLyricsViewController.Specs.selectedLinePosition(uint64_t a1@<X8>)
{
  *a1 = 0x4028000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

unint64_t sub_917BA4()
{
  result = qword_E23D60;
  if (!qword_E23D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E23D60);
  }

  return result;
}

id sub_917CAC(double *a1, double a2)
{
  v2 = [objc_opt_self() systemFontOfSize:a2 weight:*a1];

  return v2;
}

id variable initialization expression of SyncedLyricsViewController.Specs.automaticallyCreatedDisclaimerFont()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];

  return v0;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_9190B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_119878;
  v12[3] = &block_descriptor_33_6;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_9190B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_119878;
  v12[3] = &block_descriptor_40_0;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_9190B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_119878;
  v12[3] = &block_descriptor_47_2;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.65];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_9190B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_119878;
  v12[3] = &block_descriptor_54_2;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedScrollTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.4];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_9190B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_119878;
  v12[3] = &block_descriptor_61_1;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id sub_918664(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  v9 = [v7 *a1];
  v10 = objc_allocWithZone(UIColor);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v17[4] = a3;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_119878;
  v17[3] = a4;
  v12 = _Block_copy(v17);
  v13 = v9;
  v14 = v8;

  v15 = [v10 initWithDynamicProvider:v12];

  _Block_release(v12);
  return v15;
}

id variable initialization expression of SyncedLyricsViewController.Specs.lineProgressionBackgroundVocalsGradientColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 tintColor];
  v4 = [v3 colorWithAlphaComponent:0.175];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_9190B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_119878;
  v12[3] = &block_descriptor_75_3;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

CGFloat sub_91894C@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>)
{
  CGAffineTransformMakeScale(&v6, a2, a2);
  result = v6.a;
  v4 = *&v6.c;
  v5 = *&v6.tx;
  *a1 = *&v6.a;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

id variable initialization expression of SyncedLyricsViewController.Specs.highlightViewBackgroundColor()
{
  v0 = objc_allocWithZone(UIColor);

  return [v0 initWithWhite:1.0 alpha:0.08];
}

double variable initialization expression of SyncedLyricsViewController.Specs.lineChangeSpringTimingParametersValues()
{
  v0 = Int.seconds.getter(1);
  Int.seconds.getter(100);
  Int.seconds.getter(18);
  return v0;
}

uint64_t sub_918A48()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_243(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id variable initialization expression of SyncedLyricsViewController.tapFeedbackGenerator()
{
  v0 = objc_allocWithZone(UISelectionFeedbackGenerator);

  return [v0 init];
}

uint64_t sub_918B88@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id sub_918C14(void (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t sub_918C58()
{
  sub_918FBC(&qword_E23D70);
  sub_918FBC(&qword_E21E60);

  return sub_ABB110();
}

__n128 __swift_memcpy16_8_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy48_8_2(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_918DE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_918E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_918EC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_918FBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s3__C3KeyVMa_2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_9190B4(uint64_t a1)
{
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_927600(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_927600(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_918DE4(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_9192E8(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_927660(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_9319C8(v8, v5, type metadata accessor for Lyrics.TextLine);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_927660((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &protocol witness table for Lyrics.TextLine;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v14);
      sub_9319C8(v5, boxed_opaque_existential_0, type metadata accessor for Lyrics.TextLine);
      v7[2] = v11 + 1;
      sub_70DF8(&v14, &v7[5 * v11 + 4]);
      sub_931A30(v5, type metadata accessor for Lyrics.TextLine);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void TimedElement.timeRange.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  if (v4 > (*(a2 + 16))(a1, a2))
  {
    __break(1u);
  }
}

uint64_t sub_919594()
{
  v0 = sub_952EC4(&off_D471D0);
  result = swift_arrayDestroy();
  static Lyrics.chineseLanguages = v0;
  return result;
}

uint64_t *Lyrics.chineseLanguages.unsafeMutableAddressor()
{
  if (qword_E21C98 != -1)
  {
    swift_once();
  }

  return &static Lyrics.chineseLanguages;
}

uint64_t sub_9196E8()
{
  v0 = sub_92C724(&off_D47210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22648);
  result = swift_arrayDestroy();
  static Lyrics.scriptMap = v0;
  return result;
}

uint64_t *Lyrics.scriptMap.unsafeMutableAddressor()
{
  if (qword_E21CA0 != -1)
  {
    swift_once();
  }

  return &static Lyrics.scriptMap;
}

double Lyrics.Word.startTime.getter()
{
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.endTime.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 56 * v2 - 16);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.Emphasis.factor.getter(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 0.0;
  }

  return result;
}

BOOL static Lyrics.Word.Emphasis.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

void Lyrics.Word.Emphasis.hash(into:)(uint64_t a1, Swift::UInt64 a2, char a3)
{
  if (a3)
  {
    sub_ABB5D0(0);
  }

  else
  {
    sub_ABB5D0(1uLL);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }

    sub_ABB600(v4);
  }
}

Swift::Int Lyrics.Word.Emphasis.hashValue.getter(Swift::UInt64 a1, char a2)
{
  sub_ABB5C0();
  if (a2)
  {
    sub_ABB5D0(0);
  }

  else
  {
    sub_ABB5D0(1uLL);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    sub_ABB600(v4);
  }

  return sub_ABB610();
}

void sub_919928()
{
  if (*(v0 + 8))
  {
    sub_ABB5D0(0);
  }

  else
  {
    v1 = *v0;
    sub_ABB5D0(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    sub_ABB600(v2);
  }
}

Swift::Int sub_919978()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_ABB5C0();
  if (v2)
  {
    sub_ABB5D0(0);
  }

  else
  {
    sub_ABB5D0(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    sub_ABB600(v3);
  }

  return sub_ABB610();
}

BOOL sub_9199E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_919A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 80);
    for (i = a2 + 40; *(v3 - 6) == *(i - 8) && *(v3 - 5) == *i; i += 56)
    {
      v7 = *(v3 - 2);
      v6 = *(v3 - 1);
      v8 = *v3;
      v10 = *(i + 24);
      v9 = *(i + 32);
      v11 = *(i + 40);
      if (*(v3 - 4) == *(i + 8) && *(v3 - 3) == *(i + 16))
      {
        result = 0;
      }

      else
      {
        v13 = sub_ABB3C0();
        result = 0;
        if ((v13 & 1) == 0)
        {
          return result;
        }
      }

      if (v7 != v10 || v6 != v9 || *&v8 != v11)
      {
        return result;
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void Lyrics.Word.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  sub_ABB600(*&v4);
  v5 = *(v2 + 8);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_ABB600(*&v5);
  sub_AB93F0();
  sub_92C59C(a1, *(v2 + 32));
  if (*(v2 + 48))
  {
    sub_ABB5D0(0);
  }

  else
  {
    v6 = *(v2 + 40);
    sub_ABB5D0(1uLL);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    sub_ABB600(v7);
  }
}

Swift::Int Lyrics.Word.hashValue.getter()
{
  sub_ABB5C0();
  Lyrics.Word.hash(into:)(v1);
  return sub_ABB610();
}

Swift::Int sub_919BF8()
{
  sub_ABB5C0();
  Lyrics.Word.hash(into:)(v1);
  return sub_ABB610();
}

uint64_t sub_919C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

void Lyrics.Syllable.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_ABB600(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_ABB600(*&v2);
  sub_AB93F0();
  v3 = *(v0 + 40);
  sub_ABB5D0(*(v0 + 32));
  sub_ABB5D0(v3);
  sub_ABB5D0(*(v0 + 48));
}

Swift::Int Lyrics.Syllable.hashValue.getter()
{
  sub_ABB5C0();
  Lyrics.Syllable.hash(into:)();
  return sub_ABB610();
}

Swift::Int sub_919D64()
{
  sub_ABB5C0();
  Lyrics.Syllable.hash(into:)();
  return sub_ABB610();
}

BOOL sub_919DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7LyricsX0A0C8SyllableV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

double Lyrics.TextLine.backgroundVocals.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(v1 + *(v3 + 72)))(v7);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t Lyrics.TextLine.backgroundText.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  (*(v0 + *(v1 + 72)))(v4);
  if (!v4[3])
  {
    return 0;
  }

  v2 = v4[2];

  sub_12E1C(v4, &qword_E21E80);
  return v2;
}

uint64_t Lyrics.TextLine.capabilities.getter()
{
  type metadata accessor for Lyrics.TextLine(0);
}

uint64_t Lyrics.TextLine.translationKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for Lyrics.TextLine(0) + 52));

  return v1;
}

uint64_t Lyrics.TextLine.debugDescription.getter()
{
  sub_ABAD90(54);
  v3._object = 0x8000000000B79AE0;
  v3._countAndFlagsBits = 0xD000000000000014;
  sub_AB94A0(v3);
  v4._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v4);

  v5._countAndFlagsBits = 0x6954747261747320;
  v5._object = 0xEB000000003D656DLL;
  sub_AB94A0(v5);
  sub_AB9AB0();
  v6._countAndFlagsBits = 0x656D6954646E6520;
  v6._object = 0xE90000000000003DLL;
  sub_AB94A0(v6);
  sub_AB9AB0();
  v7._countAndFlagsBits = 0x3D7478657420;
  v7._object = 0xE600000000000000;
  sub_AB94A0(v7);
  v1 = type metadata accessor for Lyrics.TextLine(0);
  v8._countAndFlagsBits = (*(v0 + *(v1 + 64)))();
  sub_AB94A0(v8);

  return 0;
}

uint64_t Lyrics.TextLine.textAlignment.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  if ((*(v0 + *(v1 + 56)))())
  {
    if ((*(v0 + *(v1 + 32)) & 1) == 0)
    {
      return 2;
    }
  }

  else if (*(v0 + *(v1 + 32)))
  {
    return 2;
  }

  return 0;
}

uint64_t Lyrics.TextLine.init(lineIndex:startTime:endTime:primaryVocalsStartTime:primaryVocalsEndTime:isFirstLineOfParagraph:language:translationKey:agentAlignment:capabilities:localizedLyricsDirectionProvider:localizedDirectionProvider:localizedTextProvider:localizedWordsProvider:localizedBackgroundVocalsProvider:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31 = type metadata accessor for Lyrics.TextLine(0);
  v32 = v31[7];
  v33 = sub_AB35A0();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  *(a9 + 16) = a1;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + v31[10]) = a12;
  *(a9 + v31[11]) = a13;
  *(a9 + v31[12]) = a2;
  result = sub_160B4(a3, a9 + v32, &qword_E21E88);
  v35 = (a9 + v31[13]);
  *v35 = a4;
  v35[1] = a5;
  *(a9 + v31[8]) = a6 & 1;
  *(a9 + v31[9]) = a7;
  v36 = (a9 + v31[14]);
  *v36 = a8;
  v36[1] = a14;
  v37 = (a9 + v31[15]);
  *v37 = a15;
  v37[1] = a16;
  v38 = (a9 + v31[16]);
  *v38 = a17;
  v38[1] = a18;
  v39 = (a9 + v31[17]);
  *v39 = a19;
  v39[1] = a20;
  v40 = (a9 + v31[18]);
  *v40 = a21;
  v40[1] = a22;
  return result;
}

uint64_t Lyrics.TextLine.hash(into:)()
{
  sub_ABB5D0(*(v0 + 16));
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_ABB600(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_ABB600(*&v2);
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(v0 + *(v3 + 64)))();
  sub_AB93F0();
}

Swift::Int Lyrics.TextLine.hashValue.getter()
{
  sub_ABB5C0();
  Lyrics.TextLine.hash(into:)();
  return sub_ABB610();
}

uint64_t sub_91A63C(uint64_t a1)
{
  if ((*(v1 + *(a1 + 56)))())
  {
    if (*(v1 + *(a1 + 32)))
    {
      return 0;
    }
  }

  else if ((*(v1 + *(a1 + 32)) & 1) == 0)
  {
    return 0;
  }

  return 2;
}

Swift::Int sub_91A6D0()
{
  sub_ABB5C0();
  Lyrics.TextLine.hash(into:)();
  return sub_ABB610();
}

uint64_t Lyrics.InstrumentalLine.textAlignment.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.InstrumentalLine.debugDescription.getter()
{
  sub_ABAD90(54);
  v1._object = 0x8000000000B79B00;
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  sub_AB94A0(v1);
  v2._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x6954747261747320;
  v3._object = 0xEB000000003D656DLL;
  sub_AB94A0(v3);
  sub_AB9AB0();
  v4._countAndFlagsBits = 0x656D6954646E6520;
  v4._object = 0xE90000000000003DLL;
  sub_AB94A0(v4);
  sub_AB9AB0();
  return 0;
}

uint64_t Lyrics.SongwritersLine.textAlignment.getter()
{
  if (*(v0 + 24))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.SongwritersLine.debugDescription.getter()
{
  sub_ABAD90(68);
  v1._object = 0x8000000000B79B20;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  sub_AB94A0(v1);
  v2._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x6954747261747320;
  v3._object = 0xEB000000003D656DLL;
  sub_AB94A0(v3);
  sub_AB9AB0();
  v4._countAndFlagsBits = 0x656D6954646E6520;
  v4._object = 0xE90000000000003DLL;
  sub_AB94A0(v4);
  sub_AB9AB0();
  v5._countAndFlagsBits = 0x697277676E6F7320;
  v5._object = 0xED00003D73726574;
  sub_AB94A0(v5);
  v6._countAndFlagsBits = sub_AB9770();
  sub_AB94A0(v6);

  return 0;
}

uint64_t sub_91AA40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v5 = (a1 + *(type metadata accessor for Lyrics.TextLine(0) + 52));
  v6 = v5[1];
  if (v6 && (v7 = *v5, v8 = *(v2 + *(type metadata accessor for Lyrics.Translation(0) + 32)), *(v8 + 16)) && (v9 = sub_2EBF88(v7, v6), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 88 * v9);
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[6];
    if (v14)
    {
      v15 = v11[5];
    }

    else
    {
      v15 = 0;
    }

    v19 = type metadata accessor for Lyrics.Translation.Line(0);
    v20 = *(v19 + 24);
    v21 = sub_AB35A0();
    (*(*(v21 - 8) + 16))(&a2[v20], v3, v21);
    *a2 = v13;
    *(a2 + 1) = v12;
    *(a2 + 2) = v15;
    *(a2 + 3) = v14;
    (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  }

  else
  {
    v16 = type metadata accessor for Lyrics.Translation.Line(0);
    v17 = *(*(v16 - 8) + 56);

    return v17(a2, 1, 1, v16);
  }
}

uint64_t _s7LyricsX0A0C11TranslationV8language10Foundation6LocaleV8LanguageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB35A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_91AC74(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_91ACE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Lyrics.Transliteration(0);
  v93 = *(v6 - 8);
  v7 = *(v93 + 64);
  __chkstk_darwin();
  v94 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  __chkstk_darwin();
  v9 = &v80 - v8;
  v10 = type metadata accessor for Lyrics.TextLine(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin();
  v13 = __chkstk_darwin();
  v15 = &v80 - v14;
  v17 = (a1 + *(v16 + 52));
  v18 = v17[1];
  if (v18)
  {
    v19 = *(v3 + *(v6 + 28));
    if (*(v19 + 16))
    {
      v90 = *v17;
      v92 = v12;
      v89 = v18;
      v20 = sub_2EBF88(v90, v18);
      v12 = v92;
      if (v21)
      {
        v80 = v3;
        v91 = v9;
        v22 = *(v19 + 56) + 88 * v20;
        v24 = *(v22 + 32);
        v23 = *(v22 + 48);
        v25 = *(v22 + 64);
        v101 = *(v22 + 80);
        v100 = v25;
        v26 = *(v22 + 16);
        v96 = *v22;
        v97 = v26;
        v98 = v24;
        v99 = v23;
        v27 = *(a1 + v10[17]);
        v28 = sub_933564(&v96, v95);
        v29 = v27(v28);
        v30 = *(v29 + 16);
        v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v30)
        {
          v31 = *(v29 + 32);

          v32 = v91;
          if (!*(v97 + 16) || v31 != *(v97 + 32))
          {
            goto LABEL_12;
          }
        }

        else
        {

          v32 = v91;
          if (*(v97 + 16))
          {
LABEL_12:
            if (qword_E21CC0 != -1)
            {
              swift_once();
            }

            v35 = sub_AB4BC0();
            __swift_project_value_buffer(v35, static Logger.lyrics);
            sub_9319C8(a1, v15, type metadata accessor for Lyrics.TextLine);
            v36 = sub_AB4BA0();
            v37 = sub_AB9F30();
            if (os_log_type_enabled(v36, v37))
            {
              LODWORD(v88) = v37;
              v38 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v95[0] = v87;
              v39 = v38;
              *v38 = 136446210;
              v40 = &v15[v10[13]];
              v41 = v40[1];
              if (v41)
              {
                v86 = *v40;
                v42 = v41;
              }

              else
              {
                v42 = 0xE300000000000000;
                v86 = 7104878;
              }

              sub_931A30(v15, type metadata accessor for Lyrics.TextLine);
              v43 = sub_927078(v86, v42, v95);

              *(v39 + 1) = v43;
              _os_log_impl(&dword_0, v36, v88, "DEGENERATE TRANSLITERATION DATA start time of original line %{public}s and transliterated line do not match.", v39, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v87);
            }

            else
            {

              sub_931A30(v15, type metadata accessor for Lyrics.TextLine);
            }
          }
        }

        v88 = a1[2];
        v44 = *(a1 + v10[10]);
        v45 = *a1;
        v46 = a1[1];
        v47 = *(a1 + v10[11]);
        LODWORD(v86) = *(a1 + v10[12]);
        v48 = sub_AB35A0();
        v49 = *(v48 - 8);
        v50 = *(v49 + 16);
        v51 = v80;
        v81 = v48;
        v50(v32, v80, v48);
        v82 = *(v49 + 56);
        v82(v32, 0, 1, v48);
        v52 = v10[9];
        LODWORD(v87) = *(a1 + v10[8]);
        v85 = *(a1 + v52);
        v53 = v83;
        sub_9319C8(a1, v83, type metadata accessor for Lyrics.TextLine);
        v54 = (*(v92 + 80) + 16) & ~*(v92 + 80);
        v84 = swift_allocObject();
        sub_931E7C(v53, v84 + v54, type metadata accessor for Lyrics.TextLine);
        v55 = v94;
        sub_9319C8(v51, v94, type metadata accessor for Lyrics.Transliteration);
        v56 = (*(v93 + 80) + 16) & ~*(v93 + 80);
        v57 = swift_allocObject();
        sub_931E7C(v55, v57 + v56, type metadata accessor for Lyrics.Transliteration);
        v58 = swift_allocObject();
        v59 = v99;
        v60 = v100;
        *(v58 + 48) = v98;
        *(v58 + 64) = v59;
        *(v58 + 80) = v60;
        *(v58 + 96) = v101;
        v61 = v97;
        *(v58 + 16) = v96;
        *(v58 + 32) = v61;
        v62 = swift_allocObject();
        v63 = v99;
        v64 = v100;
        *(v62 + 48) = v98;
        *(v62 + 64) = v63;
        *(v62 + 80) = v64;
        *(v62 + 96) = v101;
        v65 = v97;
        *(v62 + 16) = v96;
        *(v62 + 32) = v65;
        v66 = swift_allocObject();
        v67 = v99;
        v68 = v100;
        *(v66 + 48) = v98;
        *(v66 + 64) = v67;
        *(v66 + 80) = v68;
        *(v66 + 96) = v101;
        v69 = v97;
        *(v66 + 16) = v96;
        *(v66 + 32) = v69;
        v70 = v10[7];
        v82(a2 + v70, 1, 1, v81);
        a2[2] = v88;
        *a2 = v45;
        a2[1] = v46;
        *(a2 + v10[10]) = v44;
        *(a2 + v10[11]) = v47;
        *(a2 + v10[12]) = v86;
        sub_933564(&v96, v95);
        sub_933564(&v96, v95);
        v71 = v89;

        v72 = v85;

        sub_160B4(v91, a2 + v70, &qword_E21E88);
        v73 = (a2 + v10[13]);
        *v73 = v90;
        v73[1] = v71;
        *(a2 + v10[8]) = v87;
        *(a2 + v10[9]) = v72;
        v74 = (a2 + v10[14]);
        v75 = v84;
        *v74 = sub_933734;
        v74[1] = v75;
        v76 = (a2 + v10[15]);
        *v76 = sub_93389C;
        v76[1] = v57;
        v77 = (a2 + v10[16]);
        *v77 = Alert.message.getter;
        v77[1] = v58;
        v78 = (a2 + v10[17]);
        *v78 = Library.Menu.Request.excludedIdentifiers.getter;
        v78[1] = v62;
        v79 = (a2 + v10[18]);
        *v79 = sub_933958;
        v79[1] = v66;
        return (*(v92 + 56))(a2, 0, 1, v10);
      }
    }
  }

  v33 = *(v12 + 56);

  return v33(a2, 1, 1, v10, v13);
}

uint64_t Logger.lyrics.unsafeMutableAddressor()
{
  if (qword_E21CC0 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.lyrics);
}

uint64_t static Lyrics.useSpacesAsWordDelimiter(for:)(uint64_t a1)
{
  v2 = sub_AB35A0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  __chkstk_darwin();
  v7 = &v27 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v27 - v10;
  sub_15F84(a1, v7, &qword_E21E88);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v12 = &qword_E21E88;
    v13 = v7;
LABEL_7:
    sub_12E1C(v13, v12);
    v21 = 1;
    return v21 & 1;
  }

  sub_AB3570();
  v14 = *(v3 + 8);
  v14(v7, v2);
  v15 = sub_AB34C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v11, 1, v15) == 1)
  {
    v12 = &qword_E21E90;
    v13 = v11;
    goto LABEL_7;
  }

  v28 = v14;
  sub_AB34A0();
  v27 = v18;
  v19 = v11;
  v20 = *(v16 + 8);
  v20(v19, v15);
  sub_AB3560();
  sub_AB3570();
  v28(v5, v2);
  if (v17(v9, 1, v15) == 1)
  {
    v12 = &qword_E21E90;
    v13 = v9;
    goto LABEL_7;
  }

  v23 = sub_AB34A0();
  v25 = v24;
  v20(v9, v15);
  if (qword_E21CA8 != -1)
  {
    swift_once();
  }

  v26 = sub_472F00(v23, v25, qword_E74418);

  v21 = v26 ^ 1;
  return v21 & 1;
}

uint64_t Lyrics.currentLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = type metadata accessor for Lyrics.Translation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23930);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = sub_AB35A0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_15F84(v1 + v12, v7, &qword_E23930);
  if ((*(v3 + 48))(v7, 1, v2))
  {
    sub_12E1C(v7, &qword_E23930);
    return sub_15F84(v1 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, v15, &qword_E21E88);
  }

  else
  {
    sub_9319C8(v7, v5, type metadata accessor for Lyrics.Translation);
    sub_12E1C(v7, &qword_E23930);
    (*(v9 + 16))(v11, v5, v8);
    sub_931A30(v5, type metadata accessor for Lyrics.Translation);
    v14 = v15;
    (*(v9 + 32))(v15, v11, v8);
    return (*(v9 + 56))(v14, 0, 1, v8);
  }
}

uint64_t sub_91BDB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_15F84(v3 + v6, a3, a2);
}

uint64_t sub_91BE40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  swift_beginAccess();
  sub_160B4(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t Lyrics.staticText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  if (*(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_91C0C0(v0);
    v2 = v3;
    *v1 = v3;
    v1[1] = v4;
  }

  return v2;
}

void sub_91C0C0(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 32);
  v35 = 0;
  v36 = 0xE000000000000000;
  v28 = *(v5 + 16);
  if (v28)
  {
    v6 = 0;
    v27 = v5 + 32;
    v24 = v5;
    while (v6 < *(v5 + 16))
    {
      v9 = *(v27 + 8 * v6);
      v7 = v35;
      v8 = v36;
      v33 = v35;
      v34 = v36;
      v10 = *(v9 + 16);
      if (v10)
      {
        v29 = v9;
        v30 = v6;
        v11 = &v4[*(v26 + 64)];
        v12 = &v4[*(v26 + 72)];
        v13 = v9 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
        v31 = *(v25 + 72);

        do
        {
          v17 = sub_9319C8(v13, v4, type metadata accessor for Lyrics.TextLine);
          v18 = v33 & 0xFFFFFFFFFFFFLL;
          if ((v34 & 0x2000000000000000) != 0)
          {
            v18 = HIBYTE(v34) & 0xF;
          }

          if (v18)
          {
            v43._countAndFlagsBits = 10;
            v43._object = 0xE100000000000000;
            sub_AB94A0(v43);
          }

          v19 = (*v11)(v17);
          v21 = v20;
          (*v12)(v37);
          v22 = v38;
          if (v38)
          {
            v14 = v37[2];

            sub_12E1C(v37, &qword_E21E80);
            v32._countAndFlagsBits = 40;
            v32._object = 0xE100000000000000;

            v40._countAndFlagsBits = v14;
            v40._object = v22;
            sub_AB94A0(v40);
            v41._countAndFlagsBits = 41;
            v41._object = 0xE100000000000000;
            sub_AB94A0(v41);
            swift_bridgeObjectRelease_n();
            countAndFlagsBits = v32._countAndFlagsBits;
            object = v32._object;
          }

          else
          {
            countAndFlagsBits = 0;
            object = 0xE000000000000000;
          }

          v32._countAndFlagsBits = v19;
          v32._object = v21;

          v42._countAndFlagsBits = countAndFlagsBits;
          v42._object = object;
          sub_AB94A0(v42);

          sub_AB94A0(v32);

          sub_931A30(v4, type metadata accessor for Lyrics.TextLine);
          v13 += v31;
          --v10;
        }

        while (v10);
        v7 = v33;
        v8 = v34;
        v5 = v24;
        v6 = v30;
      }

      else
      {
      }

      ++v6;
      v35 = v7;
      v36 = v8;
      v39._countAndFlagsBits = 10;
      v39._object = 0xE100000000000000;
      sub_AB94A0(v39);

      if (v6 == v28)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    String.trim()();
  }
}

uint64_t Lyrics.staticText.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*Lyrics.staticText.modify(uint64_t *a1))(void *a1)
{
  a1[2] = v1;
  *a1 = Lyrics.staticText.getter();
  a1[1] = v3;
  return sub_91C440;
}

uint64_t sub_91C440(void *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v2 = *a1;
  v2[1] = v1;
}

uint64_t Lyrics.alignment(for:default:)(void *a1, uint64_t a2, char a3)
{
  if (!*(v3 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) && (a3 & 1) == 0)
  {
    return a2;
  }

  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  return (*(v5 + 24))(v4, v5);
}

uint64_t sub_91C518(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v4 = type metadata accessor for Lyrics.TextLine(0);
    v5 = (*(a1 + *(v4 + 64)))();
    v7 = v6;
    if (v5 == (*(a2 + *(v4 + 64)))() && v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_ABB3C0();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_91C600@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Lyrics.TextLine(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_9319C8(v12, v10, type metadata accessor for Lyrics.TextLine);
      v14 = a1(v10);
      if (v3)
      {
        return sub_931A30(v10, type metadata accessor for Lyrics.TextLine);
      }

      if (v14)
      {
        break;
      }

      sub_931A30(v10, type metadata accessor for Lyrics.TextLine);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_931E7C(v10, v18, type metadata accessor for Lyrics.TextLine);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_91C7DC()
{
  v0 = sub_952EC4(&off_D472C0);
  result = swift_arrayDestroy();
  qword_E74418 = v0;
  return result;
}

void Lyrics.AudioAttribute.hash(into:)(double a1)
{
  sub_ABB5D0(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  sub_ABB600(*&v2);
}

Swift::Int Lyrics.AudioAttribute.hashValue.getter(double a1)
{
  sub_ABB5C0();
  sub_ABB5D0(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  sub_ABB600(*&v2);
  return sub_ABB610();
}

Swift::Int sub_91C8F4()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_ABB600(*&v2);
  return sub_ABB610();
}

void sub_91C95C()
{
  v1 = *v0;
  sub_ABB5D0(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_ABB600(*&v2);
}

Swift::Int sub_91C9A8()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_ABB600(*&v2);
  return sub_ABB610();
}

double Lyrics.spatialOffset.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  if (v4)
  {
    v5 = __clz(__rbit64(v4));
    return *(*(v1 + 48) + 8 * v5);
  }

  else
  {
    v6 = ((v2 + 63) >> 6) - 1;
    v7 = (v1 + 64);
    while (v6)
    {
      v9 = *v7++;
      v8 = v9;
      --v6;
      v4 -= 64;
      if (v9)
      {
        v5 = __clz(__rbit64(v8)) - v4;
        return *(*(v1 + 48) + 8 * v5);
      }
    }

    return 0.0;
  }
}

uint64_t Lyrics.__allocating_init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  Lyrics.init(identifier:songInfo:)(a1, a2, a3);
  return v6;
}

uint64_t Lyrics.init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v729 = a3;
  v679 = a2;
  v676 = a1;
  v723 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EA8);
  __chkstk_darwin(v5 - 8);
  v654 = v648 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90);
  __chkstk_darwin(v7 - 8);
  v671 = v648 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v656 = v648 - v10;
  __chkstk_darwin(v11);
  v658 = v648 - v12;
  v675 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EB0);
  __chkstk_darwin(v675);
  v674 = v648 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EB8);
  __chkstk_darwin(v14 - 8);
  v661 = v648 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v680 = v648 - v17;
  __chkstk_darwin(v18);
  v687 = v648 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E98);
  __chkstk_darwin(v20 - 8);
  v670 = v648 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v669 = v648 - v23;
  __chkstk_darwin(v24);
  v685 = v648 - v25;
  __chkstk_darwin(v26);
  v704 = v648 - v27;
  __chkstk_darwin(v28);
  v713 = v648 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23930);
  __chkstk_darwin(v30 - 8);
  v666 = v648 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v665 = v648 - v33;
  __chkstk_darwin(v34);
  v664 = v648 - v35;
  v743 = type metadata accessor for Lyrics.TextLine(0);
  v732 = *(v743 - 8);
  __chkstk_darwin(v743);
  v735 = v648 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v734 = v648 - v38;
  __chkstk_darwin(v39);
  v747 = (v648 - v40);
  __chkstk_darwin(v41);
  v722 = v648 - v42;
  __chkstk_darwin(v43);
  v715 = v648 - v44;
  v45 = type metadata accessor for Lyrics.Transliteration(0);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v705 = v648 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v678 = (v648 - v49);
  __chkstk_darwin(v50);
  v731 = v648 - v51;
  __chkstk_darwin(v52);
  v730 = v648 - v53;
  v54 = type metadata accessor for Lyrics.Translation(0);
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v681 = v648 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v695 = v648 - v58;
  __chkstk_darwin(v59);
  v682 = (v648 - v60);
  __chkstk_darwin(v61);
  v733 = v648 - v62;
  __chkstk_darwin(v63);
  v737 = v648 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EC0);
  __chkstk_darwin(v65 - 8);
  v673 = v648 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v652 = v648 - v68;
  __chkstk_darwin(v69);
  v694 = v648 - v70;
  __chkstk_darwin(v71);
  v706 = v648 - v72;
  __chkstk_darwin(v73);
  v728 = v648 - v74;
  v744 = sub_AB35C0();
  v740 = *(v744 - 8);
  __chkstk_darwin(v744);
  v657 = v648 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v697 = v648 - v77;
  __chkstk_darwin(v78);
  v746 = v648 - v79;
  __chkstk_darwin(v80);
  v736 = (v648 - v81);
  v748 = sub_AB35A0();
  v683 = *(v748 - 8);
  __chkstk_darwin(v748);
  v668 = v648 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v651 = v648 - v84;
  __chkstk_darwin(v85);
  v655 = v648 - v86;
  __chkstk_darwin(v87);
  v712 = v648 - v88;
  __chkstk_darwin(v89);
  v711 = v648 - v90;
  __chkstk_darwin(v91);
  v741 = v648 - v92;
  __chkstk_darwin(v93);
  v696 = v648 - v94;
  __chkstk_darwin(v95);
  v742 = v648 - v96;
  __chkstk_darwin(v97);
  v725 = v648 - v98;
  __chkstk_darwin(v99);
  v686 = v648 - v100;
  __chkstk_darwin(v101);
  v724 = v648 - v102;
  __chkstk_darwin(v103);
  v727 = v648 - v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  __chkstk_darwin(v105 - 8);
  v107 = v648 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __chkstk_darwin(v108);
  v111 = v648 - v110;
  v709 = v55;
  v112 = *(v55 + 56);
  v677 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  v112(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, 1, 1, v54, v109);
  v710 = v46;
  v113 = *(v46 + 56);
  v650 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  v113(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, 1, 1, v45);
  v702 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
  v114 = v54;
  v115 = v748;
  v707 = v114;
  v662 = v112;
  v663 = v55 + 56;
  (v112)(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, 1, 1);
  v653 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
  v113(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, 1, 1, v45);
  v667 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
  v113(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, 1, 1, v45);
  v690 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
  v738 = v45;
  v714 = v46 + 56;
  v708 = v113;
  v113(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, 1, 1, v45);
  v116 = (v4 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v116 = 0;
  v116[1] = 0;
  v672 = v116;
  v117 = v679;
  *(v4 + 16) = v676;
  *(v4 + 24) = v117;
  v118 = *(v683 + 7);
  v118(v111, 1, 1, v115);

  v119 = [v729 language];
  if (v119)
  {
    v120 = v119;
    sub_AB92A0();

    sub_AB3560();
    v118(v107, 0, 1, v115);
    sub_160B4(v107, v111, &qword_E21E88);
  }

  else
  {
    sub_12E1C(v111, &qword_E21E88);
    v118(v111, 1, 1, v115);
  }

  v121 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage;
  v689 = v111;
  sub_15F84(v111, v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &qword_E21E88);
  v122 = v729;
  [v729 leadingSilence];
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_leadingSilence) = v123;
  v124 = [v122 songwriters];
  v125 = sub_13C80(0, &qword_E21ED8);
  v126 = sub_AB9760();

  if (v126 >> 62)
  {
    v127 = sub_ABB060();
  }

  else
  {
    v127 = *(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8));
  }

  v128 = _swiftEmptyArrayStorage;
  v745 = v4;
  v659 = v125;
  v649 = v121;
  if (v127)
  {
    v129 = v126;
    *&v749 = _swiftEmptyArrayStorage;
    sub_927620(0, v127 & ~(v127 >> 63), 0);
    if (v127 < 0)
    {
      __break(1u);
      goto LABEL_54;
    }

    v130 = 0;
    v131 = v749;
    v132 = v129;
    v739 = (v129 & 0xC000000000000001);
    v133 = v127;
    do
    {
      if (v739)
      {
        v134 = sub_ABAE20();
      }

      else
      {
        v134 = *(v132 + 8 * v130 + 32);
      }

      v135 = v134;
      v136 = [v134 name];
      v137 = sub_AB92A0();
      v139 = v138;

      *&v749 = v131;
      v141 = v131[2];
      v140 = v131[3];
      if (v141 >= v140 >> 1)
      {
        sub_927620((v140 > 1), v141 + 1, 1);
        v131 = v749;
      }

      ++v130;
      v131[2] = v141 + 1;
      v142 = &v131[2 * v141];
      v142[4] = v137;
      v142[5] = v139;
      v4 = v745;
      v132 = v129;
    }

    while (v133 != v130);

    v128 = _swiftEmptyArrayStorage;
  }

  else
  {

    v131 = _swiftEmptyArrayStorage;
  }

  v143 = OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters) = v131;
  v127 = v729;
  v144 = [v729 audioAttributes];
  v129 = v736;
  v648[2] = v143;
  if (v144)
  {
    v145 = v144;
    if ([v144 isSpatialRole])
    {
      [v145 lyricsOffset];
      v147 = v146;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF4EC0;
      *(inited + 32) = v147;
      v149 = sub_92DADC(inited);
      swift_setDeallocating();
      goto LABEL_22;
    }
  }

  v149 = &_swiftEmptySetSingleton;
LABEL_22:
  v150 = OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes) = v149;
  v151 = [v127 type];
  v152 = v151 == &dword_0 + 1;
  if (v151 == &dword_0 + 2)
  {
    v152 = 2;
  }

  *(v4 + 56) = v152;
  v772 = _swiftEmptyArrayStorage;
  v703 = swift_allocObject();
  swift_weakInit();
  v699 = swift_allocObject();
  *(v699 + 16) = 0;
  v698 = swift_allocObject();
  *(v698 + 16) = 0;
  v153 = [v127 language];
  if (v153)
  {
    v154 = v153;
    sub_AB92A0();

    v155 = v727;
    sub_AB3560();
    v156 = sub_AB3580();
    (*(v683 + 1))(v155, v748);
    v726 = v156 == 2;
  }

  else
  {
    v726 = 0;
  }

  v157 = [v127 language];
  if (v157)
  {
    v158 = v157;
    v159 = sub_AB92A0();
    v161 = v160;
  }

  else
  {
    v159 = 0;
    v161 = 0;
  }

  v701 = sub_92DC30(v159, v161);

  v648[3] = v150;
  if (_swiftEmptyArrayStorage >> 62 && sub_ABB060())
  {
    sub_92E0B4(_swiftEmptyArrayStorage);
    v162 = v181;
  }

  else
  {
    v162 = &_swiftEmptySetSingleton;
  }

  v163 = swift_allocObject();
  v700 = v163;
  *(v163 + 16) = v162;
  v660 = v163 + 16;
  v164 = [v127 lyricsSections];
  sub_13C80(0, &qword_E21EE0);
  v165 = sub_AB9760();

  if (v165 >> 62)
  {
    v166 = sub_ABB060();
  }

  else
  {
    v166 = *(&dword_10 + (v165 & 0xFFFFFFFFFFFFFF8));
  }

  v167 = v728;
  if (v166 >= 1)
  {
    v125 = [v127 lyricsSections];
    v4 = sub_AB9760();

    if (!(v4 >> 62))
    {
      v168 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
      if (v168)
      {
LABEL_37:
        if (v168 < 1)
        {
          __break(1u);
          goto LABEL_429;
        }

        v169 = 0;
        v739 = _swiftEmptyArrayStorage;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v170 = sub_ABAE20();
          }

          else
          {
            v170 = *(v4 + 8 * v169 + 32);
          }

          v171 = v170;
          v172 = [v170 lines];
          sub_13C80(0, &qword_E21EE8);
          v173 = sub_AB9760();

          v125 = sub_92F8E4(v173, v700, v698, v699, v729, v726, v701, v703);

          sub_9237D0(v174);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v739 = sub_926B7C(0, v739[2] + 1, 1, v739);
          }

          v176 = v739[2];
          v175 = v739[3];
          if (v176 >= v175 >> 1)
          {
            v739 = sub_926B7C((v175 > 1), v176 + 1, 1, v739);
          }

          ++v169;

          v177 = v739;
          v739[2] = v176 + 1;
          v177[v176 + 4] = v125;
        }

        while (v168 != v169);

        v167 = v728;
        v129 = v736;
        v127 = v729;
        v128 = _swiftEmptyArrayStorage;
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_54:
    v168 = sub_ABB060();
    if (v168)
    {
      goto LABEL_37;
    }

LABEL_55:

    v739 = _swiftEmptyArrayStorage;
    v167 = v728;
    goto LABEL_56;
  }

  v178 = [v127 lyricsLines];
  sub_13C80(0, &qword_E21EE8);
  v125 = sub_AB9760();

  v179 = sub_92F8E4(v125, v700, v698, v699, v127, v726, v701, v703);

  v772 = v179;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EF0);
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_AF4EC0;
  v739 = v180;
  *(v180 + 32) = v179;

LABEL_56:
  v182 = swift_allocObject();
  v727 = v182;
  v183 = v723;
  *(v182 + 16) = v127;
  *(v182 + 24) = v183;
  v184 = swift_allocObject();
  v184[2] = 0;
  v693 = v184 + 2;
  v729 = v184;
  v184[3] = _swiftEmptyArrayStorage;
  v185 = swift_allocObject();
  *(v185 + 16) = 0;
  v688 = v185 + 16;
  v723 = v185;
  *(v185 + 24) = _swiftEmptyArrayStorage;
  v684 = v127;
  v186 = sub_AB34D0();
  v187 = v186;
  v721 = *(v186 + 16);
  if (!v721)
  {

    v189 = _swiftEmptyArrayStorage;
    goto LABEL_118;
  }

  v188 = 0;
  v719 = v186 + 32;
  v128 = (v683 + 8);
  v718 = (v740 + 16);
  v717 = (v740 + 8);
  v716 = (v740 + 32);
  v189 = _swiftEmptyArrayStorage;
  v720 = v186;
  do
  {
    if (v188 >= v187[2])
    {
      goto LABEL_395;
    }

    v190 = v189;

    sub_AB3480();
    v191 = v724;
    sub_AB35B0();
    sub_AB3590();
    v192 = *v128;
    (*v128)(v191, v748);
    v193 = sub_AB3530();
    v194 = *(v193 - 8);
    if ((*(v194 + 48))(v167, 1, v193) == 1)
    {
      sub_12E1C(v167, &qword_E21EC0);
      v189 = v190;
      goto LABEL_97;
    }

    v195 = sub_AB3520();
    v196 = v167;
    v198 = v197;
    (*(v194 + 8))(v196, v193);
    if (qword_E21CA0 != -1)
    {
      swift_once();
    }

    v199 = static Lyrics.scriptMap;
    if (*(static Lyrics.scriptMap + 16))
    {
      v200 = sub_2EBF88(v195, v198);
      if (v201)
      {
        v202 = (*(v199 + 56) + 16 * v200);
        v195 = *v202;
        v203 = v202[1];

        v198 = v203;
      }
    }

    v204 = *(v723 + 16);
    v205 = *(v723 + 24);
    v206 = *(v205 + 16);
    if (v204)
    {

      sub_92BA74(v195, v198, v205 + 32, v206, (v204 + 16));
      v208 = v207;

      if ((v208 & 1) == 0)
      {
        goto LABEL_78;
      }

LABEL_77:
      sub_92BF34(v195, v198);
      goto LABEL_78;
    }

    if (!v206)
    {
      goto LABEL_77;
    }

    v209 = (v205 + 40);
    while (1)
    {
      v210 = *(v209 - 1) == v195 && *v209 == v198;
      if (v210 || (sub_ABB3C0() & 1) != 0)
      {
        break;
      }

      v209 += 2;
      if (!--v206)
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    if (v195 == 1853120844 && v198 == 0xE400000000000000)
    {

      v189 = v190;
      v129 = v736;
      goto LABEL_97;
    }

    v211 = sub_ABB3C0();

    v189 = v190;
    v129 = v736;
    if ((v211 & 1) == 0)
    {
      if (qword_E21CC8 != -1)
      {
        swift_once();
      }

      v212 = v686;
      sub_AB35B0();
      v213 = LyricsOptionsManager.isDefaultScriptSupported(for:)(v212);
      v192(v212, v748);
      if (v213)
      {
        v214 = *(v723 + 16);
        v215 = *(v723 + 24);
        v216 = *(v215 + 16);
        if (v214)
        {

          sub_92BA74(1853120844, 0xE400000000000000, v215 + 32, v216, (v214 + 16));
          v218 = v217;

          if (v218)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (!v216)
          {
LABEL_96:
            sub_92BF34(1853120844, 0xE400000000000000);
            goto LABEL_97;
          }

          v219 = (v215 + 40);
          while (1)
          {
            v220 = *(v219 - 1) == 1853120844 && *v219 == 0xE400000000000000;
            if (v220 || (sub_ABB3C0() & 1) != 0)
            {
              break;
            }

            v219 += 2;
            if (!--v216)
            {
              goto LABEL_96;
            }
          }
        }
      }
    }

LABEL_97:
    v221 = v725;
    sub_AB35B0();
    v222 = sub_923BF4();
    v224 = v223;
    v192(v221, v748);
    v225 = v744;
    if (!v224)
    {
      goto LABEL_111;
    }

    v226 = *(v729 + 2);
    v227 = *(v729 + 3);
    v228 = *(v227 + 16);
    if (v226)
    {

      sub_92BA74(v222, v224, v227 + 32, v228, (v226 + 16));
      v230 = v229;

      if ((v230 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (v228)
    {
      v231 = (v227 + 40);
      do
      {
        v232 = *(v231 - 1) == v222 && v224 == *v231;
        if (v232 || (sub_ABB3C0() & 1) != 0)
        {
          goto LABEL_110;
        }

        v231 += 2;
      }

      while (--v228);
    }

    sub_92BF34(v222, v224);
LABEL_110:

    v189 = v190;
    v129 = v736;
LABEL_111:
    (*v718)(v746, v129, v225);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v189 = sub_9269A0(0, *(v189 + 16) + 1, 1, v189, &qword_E225D0, &unk_B397F8, &type metadata accessor for Locale);
    }

    v187 = v720;
    v125 = *(v189 + 16);
    v233 = *(v189 + 24);
    if (v125 >= v233 >> 1)
    {
      v189 = sub_9269A0(v233 > 1, v125 + 1, 1, v189, &qword_E225D0, &unk_B397F8, &type metadata accessor for Locale);
    }

    ++v188;
    v234 = v740;
    (*(v740 + 8))(v129, v225);
    *(v189 + 16) = v125 + 1;
    (*(v234 + 32))(v189 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v125, v746, v225);
    v167 = v728;
  }

  while (v188 != v721);

LABEL_118:
  v125 = sub_92C838(_swiftEmptyArrayStorage);
  v235 = [v684 translations];
  sub_13C80(0, &qword_E21EF8);
  v188 = sub_AB9760();

  if (v188 >> 62)
  {
    goto LABEL_404;
  }

  v236 = *(&dword_10 + (v188 & 0xFFFFFFFFFFFFFF8));
  while (2)
  {
    v725 = v125;
    v648[1] = type metadata accessor for Lyrics(0);
    v724 = v189;
    if (v236)
    {
      v237 = 0;
      v125 = 0;
      v721 = (v188 & 0xC000000000000001);
      v691 = v188 + 32;
      v692 = v188 & 0xFFFFFFFFFFFFFF8;
      v718 = (v683 + 16);
      v717 = (v683 + 32);
      v716 = (v683 + 8);
      v736 = _swiftEmptyArrayStorage;
      v189 = v706;
      v720 = v188;
      v719 = v236;
      while (1)
      {
        while (1)
        {
          if (v721)
          {
            v238 = sub_ABAE20();
          }

          else
          {
            if (v237 >= *(v692 + 16))
            {
              goto LABEL_402;
            }

            v238 = *(v691 + 8 * v237);
          }

          v239 = v238;
          v240 = __OFADD__(v237++, 1);
          if (v240)
          {
            goto LABEL_396;
          }

          v241 = [v238 linesMap];
          *&v749 = 0;
          sub_13C80(0, &qword_E21EE8);
          sub_AB8FE0();

          v242 = v749;
          if (v749)
          {
            break;
          }

          if (v237 == v236)
          {
            goto LABEL_151;
          }
        }

        v728 = v237;
        v243 = v727;

        v128 = v239;
        v244 = sub_930D44(v242, sub_930CDC, v243, v128);
        v746 = v125;
        if (v125)
        {
          goto LABEL_430;
        }

        v245 = v244;

        v246 = [v128 language];
        sub_AB92A0();

        v247 = v742;
        sub_AB3560();
        v248 = v696;
        v249 = v748;
        (*v718)(v696, v247, v748);
        v250 = [v128 language];
        v251 = sub_AB92A0();
        v253 = v252;

        v254 = [v128 type] == &dword_0 + 1;
        LOBYTE(v250) = [v128 isAutomaticallyCreated];
        v255 = v737;
        (*v717)(v737, v248, v249);
        v256 = v707;
        v257 = (v255 + v707[5]);
        *v257 = v251;
        v257[1] = v253;
        *(v255 + v256[6]) = v254;
        *(v255 + v256[7]) = v250;
        *(v255 + v256[8]) = v245;
        sub_9319C8(v255, v733, type metadata accessor for Lyrics.Translation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v736 = sub_9269A0(0, v736[2] + 1, 1, v736, &qword_E22580, &unk_B397B0, type metadata accessor for Lyrics.Translation);
        }

        v259 = v736[2];
        v258 = v736[3];
        v125 = v746;
        v260 = v742;
        v188 = v720;
        if (v259 >= v258 >> 1)
        {
          v736 = sub_9269A0(v258 > 1, v259 + 1, 1, v736, &qword_E22580, &unk_B397B0, type metadata accessor for Lyrics.Translation);
        }

        v261 = v736;
        v736[2] = v259 + 1;
        sub_931E7C(v733, v261 + ((*(v709 + 80) + 32) & ~*(v709 + 80)) + *(v709 + 72) * v259, type metadata accessor for Lyrics.Translation);
        v262 = sub_923BF4();
        if (v263)
        {
          v264 = v262;
          v265 = v263;
          v267 = *(v729 + 2);
          v266 = *(v729 + 3);
          v268 = *(v266 + 16);
          if (v267)
          {

            sub_92BA74(v264, v265, v266 + 32, v268, (v267 + 16));
            v270 = v269;

            if (v270)
            {
              goto LABEL_147;
            }
          }

          else
          {
            if (!v268)
            {
LABEL_147:

              sub_931A30(v737, type metadata accessor for Lyrics.Translation);
              (*v716)(v742, v748);
              goto LABEL_148;
            }

            v275 = (v266 + 40);
            while (1)
            {
              v276 = *(v275 - 1) == v264 && v265 == *v275;
              if (v276 || (sub_ABB3C0() & 1) != 0)
              {
                break;
              }

              v275 += 2;
              if (!--v268)
              {
                goto LABEL_147;
              }
            }
          }

          v271 = v737;
          v272 = v682;
          sub_9319C8(v737, v682, type metadata accessor for Lyrics.Translation);
          v273 = v725;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v749 = v273;
          sub_92A200(v272, v264, v265, isUniquelyReferenced_nonNull_native);

          sub_931A30(v271, type metadata accessor for Lyrics.Translation);
          (*v716)(v742, v748);
          v725 = v749;
        }

        else
        {

          sub_931A30(v737, type metadata accessor for Lyrics.Translation);
          (*v716)(v260, v748);
        }

LABEL_148:
        v189 = v706;
        v236 = v719;
        v237 = v728;
        if (v728 == v719)
        {
          goto LABEL_151;
        }
      }
    }

    v125 = 0;
    v736 = _swiftEmptyArrayStorage;
    v189 = v706;
LABEL_151:

    v277 = OBJC_IVAR____TtC7LyricsX6Lyrics_translations;
    *(v745 + OBJC_IVAR____TtC7LyricsX6Lyrics_translations) = v736;

    v716 = sub_92CA20(_swiftEmptyArrayStorage);
    v278 = [v684 transliterations];
    sub_13C80(0, &qword_E21F08);
    v279 = sub_AB9760();

    if (v279 >> 62)
    {
      v280 = sub_ABB060();
    }

    else
    {
      v280 = *(&dword_10 + (v279 & 0xFFFFFFFFFFFFFF8));
    }

    v188 = v702;
    v746 = v125;
    if (v280)
    {
      v717 = v277;
      v281 = 0;
      v742 = v279 & 0xC000000000000001;
      v719 = v279 & 0xFFFFFFFFFFFFFF8;
      v718 = (v279 + 32);
      v721 = (v683 + 16);
      v720 = (v683 + 8);
      v728 = _swiftEmptyArrayStorage;
      v737 = v279;
      v733 = v280;
      while (1)
      {
        while (1)
        {
          if (v742)
          {
            v282 = sub_ABAE20();
          }

          else
          {
            if (v281 >= *(v719 + 16))
            {
              goto LABEL_403;
            }

            v282 = v718[v281];
          }

          v283 = v282;
          v240 = __OFADD__(v281++, 1);
          if (v240)
          {
            goto LABEL_397;
          }

          v125 = [v282 linesMap];
          *&v749 = 0;
          sub_13C80(0, &qword_E21EE8);
          sub_AB8FE0();

          v284 = v749;
          if (v749)
          {
            break;
          }

          if (v281 == v280)
          {
            goto LABEL_184;
          }
        }

        v285 = v727;

        v128 = v283;
        v286 = v746;
        v287 = sub_930D44(v284, sub_930CDC, v285, v128);
        v746 = v286;
        if (v286)
        {

          v647 = v745;

          sub_12E1C(v647 + v649, &qword_E21E88);

          sub_12E1C(v647 + v677, &qword_E23930);
          sub_12E1C(v647 + v650, &qword_E21E98);
          sub_12E1C(v647 + v188, &qword_E23930);
          sub_12E1C(v653 + v647, &qword_E21E98);
          sub_12E1C(v647 + v667, &qword_E21E98);
          sub_12E1C(v647 + v690, &qword_E21E98);

          goto LABEL_432;
        }

        v288 = v287;

        v289 = [v128 language];
        sub_AB92A0();

        v290 = v741;
        sub_AB3560();
        v291 = v730;
        (*v721)(v730, v290, v748);
        v292 = [v128 language];
        v293 = sub_AB92A0();
        v295 = v294;

        v296 = [v128 isAutomaticallyCreated];
        v297 = v738;
        v298 = &v291[v738[5]];
        *v298 = v293;
        v298[1] = v295;
        v291[v297[6]] = v296;
        *&v291[v297[7]] = v288;
        sub_9319C8(v291, v731, type metadata accessor for Lyrics.Transliteration);
        v299 = v728;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v299 = sub_9269A0(0, *(v299 + 2) + 1, 1, v299, &qword_E22598, &unk_B397C8, type metadata accessor for Lyrics.Transliteration);
        }

        v301 = *(v299 + 2);
        v300 = *(v299 + 3);
        v302 = v741;
        if (v301 >= v300 >> 1)
        {
          v299 = sub_9269A0(v300 > 1, v301 + 1, 1, v299, &qword_E22598, &unk_B397C8, type metadata accessor for Lyrics.Transliteration);
        }

        *(v299 + 2) = v301 + 1;
        v303 = (*(v710 + 80) + 32) & ~*(v710 + 80);
        v728 = v299;
        sub_931E7C(v731, &v299[v303 + *(v710 + 72) * v301], type metadata accessor for Lyrics.Transliteration);
        sub_AB3590();
        v125 = sub_AB3530();
        v304 = *(v125 - 8);
        if ((*(v304 + 48))(v189, 1, v125) == 1)
        {

          sub_931A30(v730, type metadata accessor for Lyrics.Transliteration);
          (*v720)(v302, v748);
          sub_12E1C(v189, &qword_E21EC0);
        }

        else
        {
          v305 = sub_AB3520();
          v307 = v306;
          (*(v304 + 8))(v189, v125);
          v125 = *(v723 + 16);
          v308 = *(v723 + 24);
          v309 = *(v308 + 16);
          if (v125)
          {

            sub_92BA74(v305, v307, v308 + 32, v309, (v125 + 16));
            v311 = v310;

            if (v311)
            {
              goto LABEL_180;
            }
          }

          else
          {
            if (!v309)
            {
LABEL_180:

              sub_931A30(v730, type metadata accessor for Lyrics.Transliteration);
              (*v720)(v741, v748);
              goto LABEL_181;
            }

            v125 = v308 + 40;
            while (1)
            {
              v317 = *(v125 - 8) == v305 && *v125 == v307;
              if (v317 || (sub_ABB3C0() & 1) != 0)
              {
                break;
              }

              v125 += 16;
              if (!--v309)
              {
                goto LABEL_180;
              }
            }
          }

          v125 = type metadata accessor for Lyrics.Transliteration;
          v312 = v730;
          v313 = v678;
          sub_9319C8(v730, v678, type metadata accessor for Lyrics.Transliteration);
          v314 = v716;
          v315 = swift_isUniquelyReferenced_nonNull_native();
          *&v749 = v314;
          sub_92A06C(v313, v305, v307, v315);

          v316 = v312;
          v189 = v706;
          sub_931A30(v316, type metadata accessor for Lyrics.Transliteration);
          (*v720)(v741, v748);
          v716 = v749;
        }

LABEL_181:
        v188 = v702;
        v280 = v733;
        if (v281 == v733)
        {
          goto LABEL_184;
        }
      }
    }

    v728 = _swiftEmptyArrayStorage;
LABEL_184:

    v318 = v745;
    *(v745 + OBJC_IVAR____TtC7LyricsX6Lyrics_transliterations) = v728;
    v717 = *(v724 + 2);
    if (v717)
    {
      v319 = v740;
      v719 = &v724[(*(v740 + 80) + 32) & ~*(v740 + 80)];

      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v320 = 0;
      v720 = (v319 + 16);
      v737 = v683 + 8;
      v696 = v683 + 48;
      v672 = (v683 + 16);
      v706 = (v710 + 48);
      v718 = (v319 + 8);
      v692 = v319 + 56;
      v678 = (v319 + 48);
      v653 = (v319 + 32);
      v682 = (v709 + 48);
      v683 = (v683 + 32);
      v188 = v694;
      v125 = v744;
      v321 = v697;
      v322 = v748;
LABEL_189:
      if (v320 >= *(v724 + 2))
      {
        goto LABEL_399;
      }

      v323 = *(v740 + 72);
      v733 = v320;
      v742 = *(v740 + 16);
      (v742)(v321, v719 + v323 * v320, v125);
      v324 = v711;
      sub_AB35B0();
      v325 = sub_923BF4();
      v327 = v326;
      v189 = *v737;
      (*v737)(v324, v322);
      if (!v327)
      {
        goto LABEL_228;
      }

      if (!*(v725 + 2))
      {

        goto LABEL_228;
      }

      v328 = sub_2EBF88(v325, v327);
      v330 = v329;

      if ((v330 & 1) == 0)
      {
        goto LABEL_228;
      }

      v331 = *(v725 + 7) + *(v709 + 72) * v328;
      v332 = v681;
      sub_9319C8(v331, v681, type metadata accessor for Lyrics.Translation);
      sub_931E7C(v332, v695, type metadata accessor for Lyrics.Translation);
      v333 = *v696;
      v334 = v689;
      if ((*v696)(v689, 1, v322))
      {
        v335 = *(v729 + 3);
        if (v335[2])
        {
          v336 = v189;
          v337 = 0;
          v338 = 0;
LABEL_199:
          v342 = v335[4];
          v341 = v335[5];

          if (v337)
          {
            if (!v341)
            {
              v189 = v336;
LABEL_208:

LABEL_215:
              v721 = v189;
              v348 = v707;
              if (*(v695 + v707[6]))
              {
                v349 = v702;
                v350 = v745;
                v351 = v666;
                sub_15F84(v745 + v702, v666, &qword_E23930);
                if ((*v682)(v351, 1, v348) == 1)
                {
                  sub_12E1C(v351, &qword_E23930);
                  v352 = v665;
                  sub_931E7C(v695, v665, type metadata accessor for Lyrics.Translation);
                  v662(v352, 0, 1, v348);
                  swift_beginAccess();
                  v353 = v350 + v349;
                  v354 = v352;
                  goto LABEL_220;
                }

LABEL_226:
                sub_931A30(v695, type metadata accessor for Lyrics.Translation);
                sub_12E1C(v351, &qword_E23930);
              }

              else
              {
                v355 = v745;
                v351 = v664;
                sub_15F84(v745 + v677, v664, &qword_E23930);
                if ((*v682)(v351, 1, v348) != 1)
                {
                  goto LABEL_226;
                }

                sub_12E1C(v351, &qword_E23930);
                v356 = v665;
                sub_931E7C(v695, v665, type metadata accessor for Lyrics.Translation);
                v662(v356, 0, 1, v348);
                v357 = v677;
                swift_beginAccess();
                v353 = v355 + v357;
                v354 = v356;
LABEL_220:
                sub_160B4(v354, v353, &qword_E23930);
                swift_endAccess();
              }

              v189 = v721;
              goto LABEL_228;
            }

            if (v338 == v342 && v337 == v341)
            {

              v189 = v336;
            }

            else
            {
              v343 = sub_ABB3C0();

              v189 = v336;
              if ((v343 & 1) == 0)
              {
                goto LABEL_215;
              }
            }
          }

          else
          {
            v189 = v336;
            if (v341)
            {
              goto LABEL_208;
            }
          }
        }
      }

      else
      {
        v339 = v686;
        (*v672)(v686, v334, v322);
        v338 = sub_923BF4();
        v337 = v340;
        (v189)(v339, v322);
        v335 = *(v729 + 3);
        if (v335[2])
        {
          v336 = v189;
          goto LABEL_199;
        }

        if (v337)
        {
          goto LABEL_208;
        }
      }

      v344 = v689;
      if (v333(v689, 1, v322))
      {
        sub_923BF4();
        v346 = v345;
LABEL_212:
        if (!v346)
        {
          goto LABEL_215;
        }

        goto LABEL_213;
      }

      v358 = v686;
      (*v672)(v686, v344, v322);
      v359 = sub_923BF4();
      v361 = v360;
      (v189)(v358, v322);
      v362 = sub_923BF4();
      v346 = v363;
      if (!v361)
      {
        goto LABEL_212;
      }

      if (v363)
      {
        if (v359 == v362 && v361 == v363)
        {

          goto LABEL_208;
        }

        v489 = sub_ABB3C0();

        if (v489)
        {
          goto LABEL_215;
        }
      }

      else
      {
LABEL_213:
      }

      LOBYTE(v749) = 15;
      v347 = sub_931F68();
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v347))
      {
        goto LABEL_215;
      }

      sub_931A30(v695, type metadata accessor for Lyrics.Translation);
LABEL_228:
      v364 = v712;
      sub_AB35B0();
      sub_AB3590();
      (v189)(v364, v322);
      v365 = v321;
      v366 = sub_AB3530();
      v367 = *(v366 - 8);
      v128 = (v367 + 48);
      v368 = *(v367 + 48);
      if (v368(v188, 1, v366) == 1)
      {
        v125 = v744;
        (*v718)(v365, v744);
        sub_12E1C(v188, &qword_E21EC0);
        v321 = v365;
        goto LABEL_187;
      }

      v741 = v368;
      v369 = sub_AB3520();
      v371 = v370;
      v373 = *(v367 + 8);
      v372 = v367 + 8;
      v730 = v373;
      (v373)(v188, v366);
      if (qword_E21CA0 != -1)
      {
        swift_once();
      }

      v374 = static Lyrics.scriptMap;
      v375 = v716;
      if (*(static Lyrics.scriptMap + 16))
      {
        v376 = sub_2EBF88(v369, v371);
        if (v377)
        {
          v378 = (*(v374 + 56) + 16 * v376);
          v369 = *v378;
          v379 = v378[1];

          v371 = v379;
        }
      }

      v731 = v372;
      if (!v375[2])
      {

LABEL_238:
        v390 = 1;
        v708(v704, 1, 1, v738);
        if (v375[2])
        {
          v391 = sub_2EBF88(1853120844, 0xE400000000000000);
          if (v392)
          {
            v393 = v713;
            sub_9319C8(v375[7] + *(v710 + 72) * v391, v713, type metadata accessor for Lyrics.Transliteration);
            v394 = v393;
            v390 = 0;
            goto LABEL_243;
          }

          v390 = 1;
        }

        v394 = v713;
LABEL_243:
        v395 = v738;
        v708(v394, v390, 1, v738);
        v389 = *v706;
        v396 = v704;
        if ((*v706)(v704, 1, v395) != 1)
        {
          sub_12E1C(v396, &qword_E21E98);
        }

        goto LABEL_245;
      }

      v380 = sub_2EBF88(v369, v371);
      v382 = v381;

      if ((v382 & 1) == 0)
      {
        goto LABEL_238;
      }

      v383 = v710;
      v384 = v704;
      sub_9319C8(v375[7] + *(v710 + 72) * v380, v704, type metadata accessor for Lyrics.Transliteration);
      v385 = v738;
      v386 = v708;
      v708(v384, 0, 1, v738);
      v387 = v384;
      v388 = v713;
      sub_931E7C(v387, v713, type metadata accessor for Lyrics.Transliteration);
      v386(v388, 0, 1, v385);
      v389 = *(v383 + 48);
LABEL_245:
      v397 = v713;
      v398 = v738;
      if (v389(v713, 1, v738) == 1)
      {
        v321 = v697;
        v125 = v744;
        (*v718)(v697, v744);
        v399 = v397;
      }

      else
      {
        v400 = v705;
        sub_931E7C(v397, v705, type metadata accessor for Lyrics.Transliteration);
        v401 = v685;
        sub_15F84(v745 + v690, v685, &qword_E21E98);
        if (v389(v401, 1, v398) == 1)
        {
          v691 = v366;
          v721 = v189;
          sub_12E1C(v401, &qword_E21E98);
          v402 = v687;
          v188 = v744;
          v403 = v742;
          (v742)(v687, v697, v744);
          v404 = *v692;
          v405 = 1;
          (*v692)(v402, 0, 1, v188);
          v406 = v674;
          if (*(v724 + 2))
          {
            v407 = v680;
            v403(v680, v719, v188);
            v408 = v407;
            v405 = 0;
          }

          else
          {
            v408 = v680;
          }

          v404(v408, v405, 1, v188);
          v409 = *(v675 + 48);
          v410 = v687;
          sub_15F84(v687, v406, &qword_E21EB8);
          sub_15F84(v408, v406 + v409, &qword_E21EB8);
          v411 = *v678;
          if ((*v678)(v406, 1, v188) == 1)
          {
            sub_12E1C(v408, &qword_E21EB8);
            sub_12E1C(v410, &qword_E21EB8);
            v412 = v411(v406 + v409, 1, v188);
            v413 = v741;
            if (v412 == 1)
            {
              sub_12E1C(v406, &qword_E21EB8);
              v414 = v691;
              goto LABEL_261;
            }

LABEL_258:
            sub_12E1C(v406, &qword_E21EB0);
            v414 = v691;
            goto LABEL_269;
          }

          v415 = v661;
          sub_15F84(v406, v661, &qword_E21EB8);
          if (v411(v406 + v409, 1, v188) == 1)
          {
            sub_12E1C(v680, &qword_E21EB8);
            sub_12E1C(v687, &qword_E21EB8);
            (*v718)(v415, v188);
            v413 = v741;
            goto LABEL_258;
          }

          v416 = v415;
          v417 = v657;
          (*v653)(v657, v406 + v409, v188);
          sub_93210C(&qword_E21F30, &type metadata accessor for Locale);
          LODWORD(v742) = sub_AB91C0();
          v418 = *v718;
          (*v718)(v417, v188);
          sub_12E1C(v680, &qword_E21EB8);
          sub_12E1C(v687, &qword_E21EB8);
          (v418)(v416, v188);
          sub_12E1C(v406, &qword_E21EB8);
          v414 = v691;
          v413 = v741;
          if (v742)
          {
LABEL_261:
            v419 = v658;
            sub_AB3570();
            v420 = sub_AB34C0();
            v421 = *(v420 - 8);
            v422 = *(v421 + 48);
            if (v422(v419, 1, v420) == 1)
            {
              v423 = v419;
              v424 = &qword_E21E90;
LABEL_263:
              sub_12E1C(v423, v424);
              goto LABEL_269;
            }

            sub_AB34A0();
            v742 = *(v421 + 8);
            (v742)(v419, v420);
            v650 = sub_AB9370();
            v426 = v425;

            v188 = v655;
            sub_AB35B0();
            v427 = v656;
            sub_AB3570();
            v721(v188, v748);
            if (v422(v427, 1, v420) == 1)
            {

              sub_12E1C(v427, &qword_E21E90);
              v413 = v741;
              v414 = v691;
              goto LABEL_269;
            }

            v649 = v426;
            sub_AB34A0();
            (v742)(v427, v420);
            v428 = sub_AB9370();
            v188 = v429;

            v430 = v654;
            sub_AB3540();
            v431 = sub_AB3510();
            v432 = *(v431 - 8);
            v433 = (*(v432 + 48))(v430, 1, v431);
            v414 = v691;
            if (v433 == 1)
            {

              sub_12E1C(v430, &qword_E21EA8);
LABEL_268:
              v413 = v741;
              goto LABEL_269;
            }

            v742 = v428;
            sub_AB3500();
            (*(v432 + 8))(v430, v431);
            v490 = sub_AB9370();
            v492 = v491;

            v493 = v651;
            sub_AB35B0();
            v494 = v652;
            sub_AB3590();
            v721(v493, v748);
            v413 = v741;
            if ((v741)(v494, 1, v414) == 1)
            {

              v423 = v494;
              v424 = &qword_E21EC0;
              goto LABEL_263;
            }

            v721 = v490;
            v495 = v188;
            sub_AB3520();
            (v730)(v494, v414);
            v496 = sub_AB9370();
            v498 = v497;

            if (qword_E21C98 != -1)
            {
              swift_once();
            }

            v499 = static Lyrics.chineseLanguages;
            v188 = sub_472F00(v650, v649, static Lyrics.chineseLanguages);

            if ((v188 & 1) == 0)
            {

              goto LABEL_268;
            }

            v500 = sub_472F00(v742, v495, v499);
            v413 = v741;
            if ((v500 & 1) == 0)
            {

              goto LABEL_269;
            }

            if (v496 == 1953390952 && v498 == 0xE400000000000000)
            {

              v322 = v748;
              v189 = v742;
LABEL_337:
              v502 = v705;
              if (v721 == (&loc_6B64 + 4) && v492 == 0xE200000000000000)
              {

                goto LABEL_345;
              }

              v503 = sub_ABB3C0();

              if (v503)
              {
LABEL_345:

                goto LABEL_346;
              }
            }

            else
            {
              v501 = sub_ABB3C0();

              v322 = v748;
              v189 = v742;
              if (v501)
              {
                goto LABEL_337;
              }

              v502 = v705;
            }

            if (v189 == 6649209 && v495 == 0xE300000000000000)
            {
              goto LABEL_345;
            }

            v508 = sub_ABB3C0();

            if (v508)
            {
LABEL_346:
              v504 = (v502 + v738[5]);
              v506 = *v504;
              v505 = v504[1];
              *&v749 = v506;
              *(&v749 + 1) = v505;
              *&v755 = 0x6E69796E6970;
              v507 = 0xE600000000000000;
            }

            else
            {
              v509 = (v502 + v738[5]);
              v511 = *v509;
              v510 = v509[1];
              *&v749 = v511;
              *(&v749 + 1) = v510;
              *&v755 = 0x676E69707475796ALL;
              v507 = 0xE800000000000000;
            }

            *(&v755 + 1) = v507;
            sub_931F14();
            if (sub_ABAB20())
            {
              goto LABEL_297;
            }

LABEL_321:
            sub_931A30(v705, type metadata accessor for Lyrics.Transliteration);
            v321 = v697;
            v125 = v744;
            (*v718)(v697, v744);
            v188 = v694;
            goto LABEL_188;
          }

LABEL_269:
          v434 = sub_923BF4();
          v436 = v435;
          v437 = *(v729 + 3);
          if (!v437[2])
          {
            if (!v435)
            {
              v441 = 1;
              v442 = v673;
              goto LABEL_283;
            }

            goto LABEL_276;
          }

          v438 = v434;
          v439 = v437[4];
          v440 = v437[5];

          if (v436)
          {
            if (v440)
            {
              if (v438 == v439 && v436 == v440)
              {

                v441 = 1;
              }

              else
              {
                v441 = sub_ABB3C0();
              }

LABEL_281:
              v442 = v673;
LABEL_282:

              goto LABEL_283;
            }

LABEL_276:
            v441 = 0;
            goto LABEL_281;
          }

          v442 = v673;
          if (v440)
          {
            v441 = 0;
            goto LABEL_282;
          }

          v441 = 1;
LABEL_283:
          sub_AB3590();
          if (v413(v442, 1, v414) == 1)
          {
            sub_12E1C(v442, &qword_E21EC0);
            v443 = *(v723 + 24);
            v322 = v748;
            if (!v443[2])
            {
              goto LABEL_297;
            }

            v444 = 0;
            v189 = 0;
            goto LABEL_288;
          }

          v189 = sub_AB3520();
          v444 = v445;
          (v730)(v442, v414);
          v443 = *(v723 + 24);
          if (v443[2])
          {
            v322 = v748;
LABEL_288:
            v447 = v443[4];
            v446 = v443[5];

            if (v444)
            {
              if (v446)
              {
                if (v189 == v447 && v444 == v446)
                {

LABEL_297:
                  v448 = sub_92CC08(_swiftEmptyArrayStorage);
                  v449 = v772;
                  v731 = v772[2];
                  if (!v731)
                  {
LABEL_315:
                    v473 = v671;
                    sub_AB3570();
                    v474 = sub_AB34C0();
                    v475 = *(v474 - 8);
                    if ((*(v475 + 48))(v473, 1, v474) == 1)
                    {
                      sub_12E1C(v473, &qword_E21E90);
                    }

                    else
                    {
                      sub_AB34A0();
                      (*(v475 + 8))(v473, v474);
                    }

                    v189 = v745;
                    v476 = v668;
                    sub_AB3560();
                    v477 = v697;
                    v478 = v744;
                    (*v718)(v697, v744);
                    v479 = v738;
                    v480 = (v705 + v738[5]);
                    v482 = *v480;
                    v481 = v480[1];
                    v483 = v669;
                    v484 = v476;
                    v322 = v748;
                    (*v683)(v669, v484, v748);
                    v485 = (v483 + v479[5]);
                    *v485 = v482;
                    v485[1] = v481;
                    *(v483 + v479[6]) = 0;
                    *(v483 + v479[7]) = v448;
                    v321 = v477;
                    v125 = v478;
                    v128 = v708;
                    v708(v483, 0, 1, v479);
                    v486 = v667;
                    swift_beginAccess();

                    sub_160B4(v483, v189 + v486, &qword_E21E98);
                    swift_endAccess();
                    v487 = v670;
                    sub_931E7C(v705, v670, type metadata accessor for Lyrics.Transliteration);
                    (v128)(v487, 0, 1, v479);
                    v488 = v690;
                    swift_beginAccess();
                    sub_160B4(v487, v189 + v488, &qword_E21E98);
                    swift_endAccess();
                    v188 = v694;
                    goto LABEL_188;
                  }

                  v450 = 0;
                  v730 = v772 + ((*(v732 + 80) + 32) & ~*(v732 + 80));
                  v125 = v743;
                  v189 = v722;
                  v721 = v772;
LABEL_302:
                  if (v450 >= v449[2])
                  {
                    __break(1u);
LABEL_394:
                    __break(1u);
LABEL_395:
                    __break(1u);
LABEL_396:
                    __break(1u);
LABEL_397:
                    __break(1u);
LABEL_398:
                    __break(1u);
LABEL_399:
                    __break(1u);
LABEL_400:
                    __break(1u);
LABEL_401:
                    __break(1u);
LABEL_402:
                    __break(1u);
LABEL_403:
                    __break(1u);
LABEL_404:
                    v236 = sub_ABB060();
                    continue;
                  }

                  v457 = sub_9319C8(&v730[*(v732 + 72) * v450], v189, type metadata accessor for Lyrics.TextLine);
                  v458 = v189 + *(v125 + 52);
                  v459 = *(v458 + 8);
                  if (!v459)
                  {
                    goto LABEL_301;
                  }

                  v128 = *v458;
                  v741 = (*(v189 + *(v125 + 64)))(v457);
                  v742 = v460;
                  v188 = (*(v189 + *(v125 + 68)))();
                  (*(v189 + *(v125 + 72)))(&v755);
                  v125 = swift_isUniquelyReferenced_nonNull_native();
                  v770 = v448;
                  v189 = sub_2EBF88(v128, v459);
                  v462 = v448[2];
                  v463 = (v461 & 1) == 0;
                  v464 = v462 + v463;
                  if (__OFADD__(v462, v463))
                  {
                    goto LABEL_394;
                  }

                  v465 = v461;
                  if (v448[3] >= v464)
                  {
                    if (v125)
                    {
                      v125 = v743;
                      if ((v461 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }

                    else
                    {
                      sub_92AAC4();
                      v125 = v743;
                      if ((v465 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }
                  }

                  else
                  {
                    sub_9282F8(v464, v125);
                    v466 = sub_2EBF88(v128, v459);
                    if ((v465 & 1) != (v467 & 1))
                    {
                      goto LABEL_433;
                    }

                    v189 = v466;
                    v125 = v743;
                    if ((v465 & 1) == 0)
                    {
LABEL_311:
                      v448 = v770;
                      v770[(v189 >> 6) + 8] |= 1 << v189;
                      v468 = (v448[6] + 16 * v189);
                      *v468 = v128;
                      v468[1] = v459;
                      v469 = v448[7] + 88 * v189;
                      v470 = v742;
                      *v469 = v741;
                      *(v469 + 8) = v470;
                      *(v469 + 16) = v188;
                      *(v469 + 24) = v755;
                      *(v469 + 40) = v756;
                      *(v469 + 56) = v757;
                      *(v469 + 72) = v758;
                      v471 = v448[2];
                      v240 = __OFADD__(v471, 1);
                      v472 = v471 + 1;
                      if (v240)
                      {
                        goto LABEL_400;
                      }

                      v448[2] = v472;

LABEL_300:
                      v189 = v722;
                      v449 = v721;
LABEL_301:
                      ++v450;
                      sub_931A30(v189, type metadata accessor for Lyrics.TextLine);
                      if (v731 == v450)
                      {
                        goto LABEL_315;
                      }

                      goto LABEL_302;
                    }
                  }

                  v448 = v770;
                  v451 = v770[7] + 88 * v189;
                  v452 = *(v451 + 16);
                  v749 = *v451;
                  v750 = v452;
                  v454 = *(v451 + 48);
                  v453 = *(v451 + 64);
                  v455 = *(v451 + 32);
                  v754 = *(v451 + 80);
                  v752 = v454;
                  v753 = v453;
                  v751 = v455;
                  v456 = v742;
                  *v451 = v741;
                  *(v451 + 8) = v456;
                  *(v451 + 16) = v188;
                  *(v451 + 24) = v755;
                  *(v451 + 40) = v756;
                  *(v451 + 56) = v757;
                  *(v451 + 72) = v758;
                  sub_931EE4(&v749);
                  goto LABEL_300;
                }

                v189 = sub_ABB3C0();

                if (v441 & v189 & 1) != 0 || ((v441 ^ 1))
                {
                  goto LABEL_297;
                }

                goto LABEL_321;
              }
            }

            else if (!v446)
            {
              goto LABEL_297;
            }
          }

          else
          {
            v322 = v748;
            if (!v444)
            {
              goto LABEL_297;
            }
          }

          if ((v441 & 1) == 0)
          {
            goto LABEL_297;
          }

          goto LABEL_321;
        }

        sub_931A30(v400, type metadata accessor for Lyrics.Transliteration);
        v321 = v697;
        v125 = v744;
        (*v718)(v697, v744);
        v399 = v401;
      }

      sub_12E1C(v399, &qword_E21E98);
      v188 = v694;
LABEL_187:
      v322 = v748;
LABEL_188:
      v320 = v733 + 1;
      if ((v733 + 1) == v717)
      {

        v318 = v745;
        goto LABEL_353;
      }

      goto LABEL_189;
    }

    break;
  }

LABEL_353:
  v189 = v715;

  swift_beginAccess();

  v513 = sub_930F54(v512);

  *(v318 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) = v513;
  v514 = v772;
  v318[6] = v772;
  v515 = *(v514 + 2);
  v746 = v514;
  if (v515)
  {
    v516 = v732;
    v517 = &v514[(*(v732 + 80) + 32) & ~*(v732 + 80)];
    sub_9319C8(v517, v189, type metadata accessor for Lyrics.TextLine);
    v748 = *(v516 + 72);

    v518 = 0;
    v125 = _swiftEmptyArrayStorage;
    v128 = v735;
    do
    {
      sub_9319C8(v517, v747, type metadata accessor for Lyrics.TextLine);
      if (v518 || (v519 = *v189, *v189 <= 7.0))
      {
        v523 = *v747;
        v524 = *(v189 + 8);
        if (*v747 - v524 > 7.0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_926858(0, *(v125 + 16) + 1, 1, v125);
          }

          v189 = *(v125 + 16);
          v525 = *(v125 + 24);
          if (v189 >= v525 >> 1)
          {
            v125 = sub_926858((v525 > 1), v189 + 1, 1, v125);
          }

          *(&v750 + 1) = &type metadata for Lyrics.InstrumentalLine;
          *&v751 = &protocol witness table for Lyrics.InstrumentalLine;
          v526 = swift_allocObject();
          *&v749 = v526;
          *(v526 + 16) = v518;
          *(v526 + 24) = v524 + 0.1;
          *(v526 + 32) = v523;
          *(v526 + 40) = v726;
          *(v125 + 16) = v189 + 1;
          sub_70DF8(&v749, v125 + 40 * v189 + 32);
          v240 = __OFADD__(v518++, 1);
          if (v240)
          {
            goto LABEL_401;
          }
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_926858(0, *(v125 + 16) + 1, 1, v125);
        }

        v521 = *(v125 + 16);
        v520 = *(v125 + 24);
        if (v521 >= v520 >> 1)
        {
          v125 = sub_926858((v520 > 1), v521 + 1, 1, v125);
        }

        *(&v750 + 1) = &type metadata for Lyrics.InstrumentalLine;
        *&v751 = &protocol witness table for Lyrics.InstrumentalLine;
        v522 = swift_allocObject();
        *&v749 = v522;
        *(v522 + 16) = 0;
        *(v522 + 24) = 0;
        *(v522 + 32) = v519;
        *(v522 + 40) = v726;
        *(v125 + 16) = v521 + 1;
        sub_70DF8(&v749, v125 + 40 * v521 + 32);
        v518 = 1;
      }

      v527 = v734;
      sub_9319C8(v747, v734, type metadata accessor for Lyrics.TextLine);
      *(v527 + 16) = v518;
      sub_9319C8(v527, v735, type metadata accessor for Lyrics.TextLine);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = sub_926858(0, *(v125 + 16) + 1, 1, v125);
      }

      v529 = *(v125 + 16);
      v528 = *(v125 + 24);
      if (v529 >= v528 >> 1)
      {
        v125 = sub_926858((v528 > 1), v529 + 1, 1, v125);
      }

      v188 = type metadata accessor for Lyrics.TextLine;
      sub_931A30(v747, type metadata accessor for Lyrics.TextLine);
      v189 = v715;
      sub_931A30(v715, type metadata accessor for Lyrics.TextLine);
      *(&v750 + 1) = v743;
      *&v751 = &protocol witness table for Lyrics.TextLine;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v749);
      sub_9319C8(v128, boxed_opaque_existential_0, type metadata accessor for Lyrics.TextLine);
      *(v125 + 16) = v529 + 1;
      sub_70DF8(&v749, v125 + 40 * v529 + 32);
      sub_931A30(v128, type metadata accessor for Lyrics.TextLine);
      v240 = __OFADD__(v518++, 1);
      if (v240)
      {
        goto LABEL_398;
      }

      sub_931E7C(v734, v189, type metadata accessor for Lyrics.TextLine);
      v517 += v748;
      --v515;
    }

    while (v515);
    v531 = *(v189 + 8);
    sub_931A30(v189, type metadata accessor for Lyrics.TextLine);
    v318 = v745;
  }

  else
  {

    v518 = 0;
    v125 = _swiftEmptyArrayStorage;
    v531 = 0;
  }

  v532 = [v684 songwriters];
  v533 = sub_AB9760();

  if (v533 >> 62)
  {
    v534 = sub_ABB060();
  }

  else
  {
    v534 = *(&dword_10 + (v533 & 0xFFFFFFFFFFFFFF8));
  }

  v535 = v676;
  if (!v534)
  {

LABEL_414:
    v318[4] = v739;
    v318[5] = v125;
    swift_beginAccess();
    swift_weakAssign();
    Lyrics.updateTransliterations()();
    v555 = v679;
    if (qword_E21CC0 != -1)
    {
      swift_once();
    }

    v556 = sub_AB4BC0();
    __swift_project_value_buffer(v556, static Logger.lyrics);
    v557 = swift_allocObject();
    *(v557 + 16) = v535;
    *(v557 + 24) = v555;
    v558 = swift_allocObject();
    v559 = v729;
    *(v558 + 16) = sub_931BB0;
    *(v558 + 24) = v559;
    v560 = swift_allocObject();
    v746 = v560;
    v561 = v723;
    *(v560 + 16) = sub_934024;
    *(v560 + 24) = v561;
    swift_retain_n();

    v748 = sub_AB4BA0();
    LODWORD(v747) = sub_AB9F50();
    v744 = swift_allocObject();
    *(v744 + 16) = 34;
    v743 = swift_allocObject();
    *(v743 + 16) = 8;
    v562 = swift_allocObject();
    *(v562 + 16) = sub_931AC8;
    *(v562 + 24) = v557;
    v563 = swift_allocObject();
    v742 = v563;
    *(v563 + 16) = sub_931BE8;
    *(v563 + 24) = v562;
    v741 = swift_allocObject();
    v741[16] = 34;
    v740 = swift_allocObject();
    *(v740 + 16) = 8;
    v564 = swift_allocObject();
    *(v564 + 16) = sub_931AD0;
    *(v564 + 24) = v318;
    v565 = swift_allocObject();
    v739 = v565;
    v565[2] = sub_93401C;
    v565[3] = v564;
    v737 = swift_allocObject();
    *(v737 + 16) = 34;
    v736 = swift_allocObject();
    *(v736 + 16) = 8;
    v566 = swift_allocObject();
    *(v566 + 16) = sub_931B08;
    *(v566 + 24) = v318;
    v567 = swift_allocObject();
    *(v567 + 16) = sub_93401C;
    *(v567 + 24) = v566;
    v735 = swift_allocObject();
    *(v735 + 16) = 34;
    v734 = swift_allocObject();
    *(v734 + 16) = 8;
    v568 = swift_allocObject();
    *(v568 + 16) = sub_931B40;
    *(v568 + 24) = v318;
    v569 = swift_allocObject();
    *(v569 + 16) = sub_93401C;
    *(v569 + 24) = v568;
    v733 = swift_allocObject();
    *(v733 + 16) = 34;
    v732 = swift_allocObject();
    *(v732 + 16) = 8;
    v570 = swift_allocObject();
    *(v570 + 16) = sub_931B78;
    *(v570 + 24) = v318;
    v571 = swift_allocObject();
    *(v571 + 16) = sub_93401C;
    *(v571 + 24) = v570;
    v731 = swift_allocObject();
    *(v731 + 16) = 34;
    v572 = swift_allocObject();
    *(v572 + 16) = 8;
    v573 = swift_allocObject();
    *(v573 + 16) = sub_931BCC;
    *(v573 + 24) = v558;
    v574 = swift_allocObject();
    *(v574 + 16) = sub_93401C;
    *(v574 + 24) = v573;
    v575 = swift_allocObject();
    *(v575 + 16) = 34;
    v576 = swift_allocObject();
    *(v576 + 16) = 8;
    v577 = swift_allocObject();
    v578 = v746;
    *(v577 + 16) = sub_934018;
    *(v577 + 24) = v578;
    v579 = swift_allocObject();
    *(v579 + 16) = sub_93401C;
    *(v579 + 24) = v577;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F18);
    v580 = swift_allocObject();
    *(v580 + 16) = xmmword_B0CE50;
    v581 = v744;
    *(v580 + 32) = sub_931BD4;
    *(v580 + 40) = v581;
    v582 = v743;
    *(v580 + 48) = sub_933F6C;
    *(v580 + 56) = v582;
    v583 = v742;
    *(v580 + 64) = sub_931C10;
    *(v580 + 72) = v583;
    v584 = v741;
    *(v580 + 80) = sub_933F6C;
    *(v580 + 88) = v584;
    v585 = v740;
    *(v580 + 96) = sub_933F6C;
    *(v580 + 104) = v585;
    v586 = v739;
    *(v580 + 112) = sub_933FC0;
    *(v580 + 120) = v586;
    v587 = v737;
    *(v580 + 128) = sub_933F6C;
    *(v580 + 136) = v587;
    v588 = v736;
    *(v580 + 144) = sub_933F6C;
    *(v580 + 152) = v588;
    *(v580 + 160) = sub_933FC0;
    *(v580 + 168) = v567;
    v589 = v735;
    *(v580 + 176) = sub_933F6C;
    *(v580 + 184) = v589;
    v590 = v734;
    *(v580 + 192) = sub_933F6C;
    *(v580 + 200) = v590;
    *(v580 + 208) = sub_933FC0;
    *(v580 + 216) = v569;
    v591 = v733;
    *(v580 + 224) = sub_933F6C;
    *(v580 + 232) = v591;
    v592 = v732;
    *(v580 + 240) = sub_933F6C;
    *(v580 + 248) = v592;
    *(v580 + 256) = sub_933FC0;
    *(v580 + 264) = v571;
    v593 = v731;
    *(v580 + 272) = sub_933F6C;
    *(v580 + 280) = v593;
    *(v580 + 288) = sub_933F6C;
    *(v580 + 296) = v572;
    *(v580 + 304) = sub_933FC0;
    *(v580 + 312) = v574;
    *(v580 + 320) = sub_933F6C;
    *(v580 + 328) = v575;
    *(v580 + 336) = sub_933F6C;
    *(v580 + 344) = v576;
    *(v580 + 352) = sub_933FC0;
    *(v580 + 360) = v579;
    swift_setDeallocating();
    sub_925F2C();
    v594 = v748;
    if (os_log_type_enabled(v748, v747))
    {
      v595 = swift_slowAlloc();
      v746 = swift_slowAlloc();
      v769 = v746;
      *v595 = 136447746;
      v767 = v676;
      v768 = v679;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F20);
      v596 = sub_AB9350();
      v598 = sub_927078(v596, v597, &v769);

      *(v595 + 4) = v598;
      *(v595 + 12) = 2082;
      v599 = v745;
      v600 = v745 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
      swift_beginAccess();
      v601 = *(v709 + 48);
      v709 += 48;
      v744 = v601;
      v602 = v601(v600, 1, v707);
      v603 = 0;
      v604 = 0;
      if (!v602)
      {
        v603 = *&v600[v707[5]];
      }

      v765 = v603;
      v766 = v604;
      v605 = sub_AB9350();
      v607 = sub_927078(v605, v606, &v769);

      *(v595 + 14) = v607;
      *(v595 + 22) = 2082;
      v608 = v599 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
      swift_beginAccess();
      v609 = *(v710 + 48);
      v610 = v738;
      v611 = v609(v608, 1, v738);
      v612 = 0;
      v613 = 0;
      if (!v611)
      {
        v612 = *(v608 + v610[5]);
      }

      v763 = v612;
      v764 = v613;
      v614 = sub_AB9350();
      v616 = sub_927078(v614, v615, &v769);

      *(v595 + 24) = v616;
      *(v595 + 32) = 2082;
      v617 = v599 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
      swift_beginAccess();
      v618 = v609(v617, 1, v610);
      v619 = 0;
      v620 = 0;
      if (!v618)
      {
        v619 = *(v617 + v610[5]);
      }

      v761 = v619;
      v762 = v620;
      v621 = sub_AB9350();
      v623 = sub_927078(v621, v622, &v769);

      *(v595 + 34) = v623;
      *(v595 + 42) = 2082;
      v624 = v599 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
      swift_beginAccess();
      v625 = v707;
      v626 = (v744)(v624, 1, v707);
      v627 = 0;
      v628 = 0;
      v629 = v599;
      if (!v626)
      {
        v627 = *(v624 + v625[5]);
      }

      v759 = v627;
      v760 = v628;
      v630 = sub_AB9350();
      v632 = sub_927078(v630, v631, &v769);

      *(v595 + 44) = v632;
      *(v595 + 52) = 2082;
      swift_beginAccess();

      v634 = sub_931CB8(v633);
      v636 = v635;

      v637 = sub_927078(v634, v636, &v769);

      *(v595 + 54) = v637;
      *(v595 + 62) = 2082;
      swift_beginAccess();

      v639 = sub_931CB8(v638);
      v641 = v640;

      v642 = sub_927078(v639, v641, &v769);

      *(v595 + 64) = v642;
      v643 = v748;
      _os_log_impl(&dword_0, v748, v747, "Initialized lyrics with identifier %{public}s, preferredTranslation: %{public}s, preferredTransliteration: %{public}s, currentTransliteration: %{public}s, currentTranslation: %{public}s preferredLanguageCodes: %{public}s, preferredScriptCodes: %{public}s", v595, 0x48u);
      swift_arrayDestroy();
    }

    else
    {

      v629 = v745;
    }

    sub_12E1C(v689, &qword_E21E88);
    return v629;
  }

  v536 = [v684 songwriters];
  v537 = sub_AB9760();

  if (!(v537 >> 62))
  {
    v538 = *(&dword_10 + (v537 & 0xFFFFFFFFFFFFFF8));
    if (v538)
    {
      goto LABEL_381;
    }

LABEL_408:

    v548 = _swiftEmptyArrayStorage;
LABEL_409:
    v552 = swift_isUniquelyReferenced_nonNull_native();
    v771 = v125;
    if ((v552 & 1) == 0)
    {
      v125 = sub_926858(0, *(v125 + 16) + 1, 1, v125);
      v771 = v125;
    }

    v553 = *(v125 + 16);
    v554 = *(v125 + 24);
    if (v553 >= v554 >> 1)
    {
      v645 = *(v125 + 16);
      v125 = sub_926858((v554 > 1), v553 + 1, 1, v125);
      v553 = v645;
      v535 = v676;
      v771 = v125;
    }

    *&v749 = v518;
    *(&v749 + 1) = v531;
    *&v750 = 0x7FF0000000000000;
    BYTE8(v750) = v726;
    *&v751 = v548;
    sub_92C668(v553, &v749, &v771);
    v771 = v125;
    goto LABEL_414;
  }

  v538 = sub_ABB060();
  if (!v538)
  {
    goto LABEL_408;
  }

LABEL_381:
  *&v749 = _swiftEmptyArrayStorage;
  sub_925EB4(v538);
  if ((v538 & 0x8000000000000000) == 0)
  {
    v539 = 0;
    v540 = v537;
    v747 = (v537 & 0xC000000000000001);
    v748 = v537;
    v541 = v538;
    do
    {
      if (v747)
      {
        v542 = sub_ABAE20();
      }

      else
      {
        v542 = *(v540 + 8 * v539 + 32);
      }

      v543 = v542;
      v544 = [v542 name];
      v545 = sub_AB92A0();
      v547 = v546;

      v548 = v749;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_927620(0, v548[2] + 1, 1);
        v548 = v749;
      }

      v550 = v548[2];
      v549 = v548[3];
      if (v550 >= v549 >> 1)
      {
        sub_927620((v549 > 1), v550 + 1, 1);
        v548 = v749;
      }

      ++v539;
      v548[2] = v550 + 1;
      v551 = &v548[2 * v550];
      v551[4] = v545;
      v551[5] = v547;
      v318 = v745;
      v540 = v748;
    }

    while (v541 != v539);

    v535 = v676;
    goto LABEL_409;
  }

LABEL_429:
  __break(1u);
LABEL_430:

  v646 = v745;

  sub_12E1C(v646 + v649, &qword_E21E88);

  sub_12E1C(v646 + v677, &qword_E23930);
  sub_12E1C(v646 + v650, &qword_E21E98);
  sub_12E1C(v646 + v702, &qword_E23930);
  sub_12E1C(v653 + v646, &qword_E21E98);
  sub_12E1C(v646 + v667, &qword_E21E98);
  sub_12E1C(v646 + v690, &qword_E21E98);
LABEL_432:

  swift_deallocPartialClassInstance();
  __break(1u);
LABEL_433:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}