id sub_1E1655D08()
{
  v1 = *(sub_1E1AEFE6C() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1E1651DE0(v2, v3, v4);
}

uint64_t sub_1E1655D6C()
{
  v1 = *(sub_1E1AEFE6C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  return sub_1E1655688(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1E1655E04(void *a1, void *a2)
{
  v5 = *(sub_1E1AEFE6C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E165284C(a1, a2, v7, v2 + v6, v8);
}

double sub_1E1655ED4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = [a1 type];
  v4 = [a1 composedMessage];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1E1AF5DFC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v24 = [a1 machContinuousTimestamp];
  v23 = [a1 activityIdentifier];
  v9 = [a1 parentActivityIdentifier];
  v10 = [a1 signpostType];
  v11 = [a1 signpostIdentifier];
  v12 = [a1 signpostName];
  if (!v12)
  {
    v15 = 0;
    v17 = 0;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);

    goto LABEL_9;
  }

  v13 = v6;
  v14 = v12;
  v15 = sub_1E1AF5DFC();
  v17 = v16;

  v6 = v13;
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:

  v18 = sub_1E156BD6C();

  swift_bridgeObjectRelease_n();
LABEL_9:
  *&v27 = v25;
  *(&v27 + 1) = v6;
  *&v28 = v8;
  *(&v28 + 1) = v24;
  *&v29 = v23;
  *(&v29 + 1) = v9;
  *&v30 = v10;
  *(&v30 + 1) = v11;
  *&v31 = v15;
  *(&v31 + 1) = v17;
  v32 = v18;
  v33[0] = v25;
  v33[1] = v6;
  v33[2] = v8;
  v33[3] = v24;
  v33[4] = v23;
  v33[5] = v9;
  v33[6] = v10;
  v33[7] = v11;
  v33[8] = v15;
  v33[9] = v17;
  v33[10] = v18;
  sub_1E141D198(&v27, v26);
  sub_1E1656530(v33);
  v19 = v30;
  v20 = v31;
  *(a2 + 32) = v29;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 80) = v32;
  result = *&v27;
  v22 = v28;
  *a2 = v27;
  *(a2 + 16) = v22;
  return result;
}

unint64_t sub_1E16560E0(unint64_t a1, unint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = a2 - a1;
  if (a2 > a1)
  {
    v4[0] = 0;
    if (!mach_timebase_info(v4))
    {
      if (is_mul_ok(v2, v4[0].numer))
      {
        if (v4[0].denom)
        {
          return v2 * v4[0].numer / v4[0].denom;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  return 0;
}

uint64_t sub_1E1656180(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    a2(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = sub_1E13018F8(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        sub_1E1415E90();
      }
    }

    else
    {
      sub_1E1688F9C(v31, v46 & 1);
      v33 = sub_1E13018F8(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_1E1337ECC();
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

unint64_t sub_1E1656488()
{
  result = qword_1ECEB72C8;
  if (!qword_1ECEB72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB72C8);
  }

  return result;
}

unint64_t sub_1E16564DC()
{
  result = qword_1ECEB72D0;
  if (!qword_1ECEB72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB72D0);
  }

  return result;
}

JSValue __swiftcall ShelvesIntent.makeValue(in:)(JSContext in)
{
  v46 = sub_1E1AEFCCC();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  v38 = objc_opt_self();
  isa = in.super.isa;
  result.super.isa = [v38 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v7 = result.super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3778);
  v8 = sub_1E1AF729C();
  v9 = v8;
  v10 = v5 + 64;
  v11 = 1 << *(v5 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v44 = v3;
  v41 = v3 + 8;
  v42 = v3 + 16;
  v40 = v8 + 64;
  result.super.isa = v7;
  v37 = result.super.isa;
  v15 = 0;
  v43 = v9;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
LABEL_11:
      v19 = v16 | (v15 << 6);
      sub_1E134E724(*(v5 + 48) + 40 * v19, v49);
      v20 = v5;
      v21 = *(v5 + 56);
      v23 = v44;
      v22 = v45;
      v24 = v46;
      (*(v44 + 16))(v45, v21 + *(v44 + 72) * v19, v46);
      v48 = sub_1E1AEFBDC();
      v26 = v25;
      result.super.isa = (*(v23 + 8))(v22, v24);
      *(v40 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v9 = v43;
      v27 = *(v43 + 48) + 40 * v19;
      v28 = v49[0];
      v29 = v49[1];
      *(v27 + 32) = v50;
      *v27 = v28;
      *(v27 + 16) = v29;
      v30 = (*(v9 + 56) + 16 * v19);
      *v30 = v48;
      v30[1] = v26;
      v31 = *(v9 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      *(v9 + 16) = v33;
      v5 = v20;
      v13 = v47;
      if (!v47)
      {
        goto LABEL_6;
      }
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_6:
  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v15 >= v14)
    {
      break;
    }

    v18 = *(v10 + 8 * v15);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v47 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  *&v49[0] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72F0);
  v34 = [v38 valueWithObject:sub_1E1AF755C() inContext:isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v34)
  {
    goto LABEL_19;
  }

  v35 = v37;
  sub_1E1AF6C5C();

  return v35;
}

unint64_t sub_1E165692C()
{
  result = qword_1ECEB72F8;
  if (!qword_1ECEB72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB72F8);
  }

  return result;
}

unint64_t sub_1E1656988()
{
  result = qword_1ECEB7300[0];
  if (!qword_1ECEB7300[0])
  {
    type metadata accessor for ShelfBatch();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEB7300);
  }

  return result;
}

uint64_t sub_1E1656A8C(unsigned __int8 a1)
{
  sub_1E1AF762C();
  MEMORY[0x1E6900360](a1);
  return sub_1E1AF767C();
}

uint64_t sub_1E1656AF0()
{
  sub_1E1AF762C();
  sub_1E1656A64(v2, *v0);
  return sub_1E1AF767C();
}

uint64_t sub_1E1656B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF0F7C();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v52 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v10 = sub_1E1AF588C();
  v11 = (a1 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  v12 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId + 8);
  aBlock = *(a1 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  v66 = v12;
  AdamId.numberValue.getter();
  if (v13)
  {
    v14 = v13;
    v60 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
    sub_1E1AF421C();
    v59 = a2;
    sub_1E1AF55EC();
    v15 = v66;
    ObjectType = swift_getObjectType();
    v17 = v11[1];
    v71[0] = *v11;
    v71[1] = v17;
    v18 = *(v15 + 56);

    v19 = v18(v71, ObjectType, v15);
    v21 = v20;
    swift_unknownObjectRelease();

    v22 = swift_getObjectType();
    v23 = *(v21 + 24);
    v58 = v19;
    v24 = v23(v22, v21);
    v25 = "RootActionRunner[ASDAppQuery]:handleOpenAppAction";
    v61 = v10;
    v57 = a1;
    if (v24)
    {
      v26 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_allowBetaApps);
      if (v26)
      {
        v25 = "RootActionRunner[ASDAppQuery.BetaApps]:handleOpenAppAction";
        v27 = 58;
      }

      else
      {
        v27 = 49;
      }
    }

    else
    {
      v26 = 0;
      v27 = 49;
    }

    v52 = v27;
    v53 = v25;
    sub_1E1AF483C();
    sub_1E1AF482C();
    v31 = v64;
    sub_1E1AF0F4C();
    sub_1E1AF6A1C();
    v32 = sub_1E1AF482C();
    sub_1E1AF0F3C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1E1B06D70;
    *(v33 + 32) = v14;
    sub_1E13006E4(0, &qword_1EE1E31F0);
    v55 = v14;
    v34 = sub_1E1AF620C();

    v35 = objc_opt_self();
    v36 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    v54 = v26 & 1;
    if ((v26 & 1) == 0)
    {
      v36 = &selRef_queryForStoreItemIDs_;
    }

    v56 = [v35 *v36];

    v38 = v62;
    v37 = v63;
    (*(v63 + 16))(v62, v31, v6);
    v39 = (*(v37 + 80) + 41) & ~*(v37 + 80);
    v40 = v39 + v7;
    v41 = (v39 + v7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v45 = v52;
    v46 = v53;
    *(v44 + 16) = v60;
    *(v44 + 24) = v46;
    *(v44 + 32) = v45;
    *(v44 + 40) = 2;
    (*(v37 + 32))(v44 + v39, v38, v6);
    *(v44 + v40) = v54;
    *(v44 + v41 + 8) = v57;
    *(v44 + v42) = v59;
    v10 = v61;
    *(v44 + v43) = v61;
    v47 = v55;
    *(v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8)) = v55;
    v69 = sub_1E1658B18;
    v70 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v66 = 1107296256;
    v67 = sub_1E16C3118;
    v68 = &block_descriptor_42;
    v48 = _Block_copy(&aBlock);
    v49 = v47;

    v50 = v56;
    [v56 executeQueryWithResultHandler_];
    _Block_release(v48);

    swift_unknownObjectRelease();
    (*(v63 + 8))(v64, v6);
  }

  else
  {
    if (qword_1ECEB12B0 != -1)
    {
      swift_once();
    }

    v28 = sub_1E1AF591C();
    __swift_project_value_buffer(v28, qword_1ECEBA3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    type metadata accessor for OpenAppActionImplementation.ImplementationError();
    swift_getWitnessTable();
    v29 = swift_allocError();
    *v30 = 0;
    sub_1E1AF584C();
  }

  return v10;
}

void sub_1E1657194(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12)
{
  v80 = a8;
  LODWORD(v78) = a7;
  v81 = a12;
  v76 = a11;
  v82 = a10;
  v77 = a9;
  v73 = sub_1E1AEFEAC();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v75 = &v69 - v15;
  v16 = sub_1E1AF3E1C();
  v79 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - v22;
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v24 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_1E1AF71CC())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1E68FFD80](0, a1);
        v25 = v80;
LABEL_7:
        if (*(v25 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_destination))
        {
          if (qword_1ECEB12B0 != -1)
          {
            swift_once();
          }

          v27 = sub_1E1AF591C();
          __swift_project_value_buffer(v27, qword_1ECEBA3E8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
          sub_1E1AF38EC();
          *(swift_allocObject() + 16) = xmmword_1E1B03760;
          sub_1E1AF382C();
          *(&v84 + 1) = sub_1E13006E4(0, &qword_1EE1E31F0);
          *&aBlock = v76;
          v28 = v76;
          sub_1E1AF383C();
          sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
          sub_1E1AF382C();
          sub_1E1AF54AC();
        }

        else
        {
          v29 = [v26 bundleID];
          v30 = sub_1E1AF5DFC();
          v32 = v31;

          sub_1E1AF3DFC();
          v33 = sub_1E1584724(MEMORY[0x1E69E7CC0]);
          v34 = type metadata accessor for ArcadeLaunchAttributionAction();
          swift_allocObject();
          v35 = ArcadeLaunchAttributionAction.init(bundleIdentifier:additionalMetrics:actionMetrics:)(v30, v32, v33, v23);
          *(&v84 + 1) = v34;
          v85 = sub_1E1658C10(&qword_1ECEB7390, type metadata accessor for ArcadeLaunchAttributionAction);
          *&aBlock = v35;
          v36 = v81;
          type metadata accessor for OpenAppActionImplementation();

          swift_getWitnessTable();
          v37 = v77;
          sub_1E1834054(&aBlock);

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v38 = objc_opt_self();
          v39 = swift_allocObject();
          v39[2] = v36;
          v39[3] = v25;
          v40 = v82;
          v39[4] = v37;
          v39[5] = v40;
          v85 = sub_1E1658BFC;
          v86 = v39;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v84 = sub_1E1658654;
          *(&v84 + 1) = &block_descriptor_6_1;
          v41 = _Block_copy(&aBlock);

          [v38 launchApp:v26 withResultHandler:v41];

          _Block_release(v41);
        }

        return;
      }

      v25 = v80;
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = *(a1 + 32);
        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  if ((v78 & 1) == 0)
  {
    if (qword_1ECEB12B0 == -1)
    {
LABEL_17:
      v55 = sub_1E1AF591C();
      __swift_project_value_buffer(v55, qword_1ECEBA3E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B03760;
      sub_1E1AF382C();
      *(&v84 + 1) = sub_1E13006E4(0, &qword_1EE1E31F0);
      *&aBlock = v76;
      v56 = v76;
      sub_1E1AF383C();
      sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
      sub_1E1AF382C();
      sub_1E1AF54AC();

      type metadata accessor for OpenAppActionImplementation.ImplementationError();
      swift_getWitnessTable();
      v57 = swift_allocError();
      *v58 = 1;
      sub_1E1AF584C();

      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_17;
  }

  v42 = v80[3];
  v78 = v80[2];
  v76 = v42;
  v44 = *(v80 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  v43 = *(v80 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId + 8);
  v45 = *(v80 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_destination);
  v70 = v80[5];
  v46 = *(v79 + 16);
  v46(v20, v80 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v16);
  v47 = type metadata accessor for OpenAppAction();
  v48 = swift_allocObject();
  v49 = (v48 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  *v49 = v44;
  v49[1] = v43;
  *(v48 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_destination) = v45;
  *(v48 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_allowBetaApps) = 0;
  v85 = 0;
  aBlock = 0u;
  v84 = 0u;
  v50 = v74;
  v46(v74, v20, v16);
  v51 = sub_1E1AF46DC();
  v52 = v75;
  (*(*(v51 - 8) + 56))(v75, 1, 1, v51);
  v53 = (v48 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v53 = 0u;
  v53[1] = 0u;
  sub_1E138853C(&aBlock, &v89);
  if (*(&v90 + 1))
  {
    v92 = v89;
    v93 = v90;
    v94 = v91;
    v54 = v76;
  }

  else
  {
    v54 = v76;

    v59 = v71;
    sub_1E1AEFE9C();
    v60 = sub_1E1AEFE7C();
    v62 = v61;
    (*(v72 + 8))(v59, v73);
    v87 = v60;
    v88 = v62;
    sub_1E1AF6F6C();
    sub_1E1308058(&v89, &unk_1ECEB5670);
  }

  sub_1E1308058(&aBlock, &unk_1ECEB5670);
  v63 = v79;
  (*(v79 + 8))(v20, v16);
  v64 = v48 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v65 = v93;
  *v64 = v92;
  *(v64 + 1) = v65;
  *(v64 + 4) = v94;
  sub_1E134B7C8(v52, v48 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v48[2] = v78;
  v48[3] = v54;
  v66 = v70;
  v48[4] = 0;
  v48[5] = v66;
  (*(v63 + 32))(v48 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v50, v16);
  *(&v84 + 1) = v47;
  v85 = sub_1E1658C10(&qword_1ECEB7388, type metadata accessor for OpenAppAction);
  *&aBlock = v48;
  type metadata accessor for OpenAppActionImplementation();

  swift_getWitnessTable();
  sub_1E1834054(&aBlock);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v67 = sub_1E13006E4(0, &qword_1EE1E3430);
  swift_retain_n();
  v68 = sub_1E1AF68EC();
  *(&v84 + 1) = v67;
  v85 = MEMORY[0x1E69AB720];
  *&aBlock = v68;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
}

uint64_t sub_1E1657E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1E1657F0C(a1, a2, a3, a5);
  v5 = sub_1E13006E4(0, &qword_1EE1E3430);
  swift_retain_n();
  v6 = sub_1E1AF68EC();
  v8[3] = v5;
  v8[4] = MEMORY[0x1E69AB720];
  v8[0] = v6;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1E1657F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v33 = a4;
  v6 = sub_1E1AF3E2C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF320C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF324C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    if (qword_1ECEB12B0 != -1)
    {
      swift_once();
    }

    v28 = sub_1E1AF591C();
    __swift_project_value_buffer(v28, qword_1ECEBA3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v30 = *(v32 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
    v29 = *(v32 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId + 8);
    v37 = &type metadata for AdamId;
    aBlock = v30;
    v35 = v29;

    sub_1E1AF383C();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
    type metadata accessor for OpenAppActionImplementation.ImplementationError();
    swift_getWitnessTable();
    swift_allocError();
    v27 = 1;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v19 = v16;
    sub_1E13006E4(0, &qword_1EE1E3430);
    v20 = sub_1E1AF68EC();
    v21 = swift_allocObject();
    *(v21 + 16) = v33;
    *(v21 + 24) = a3;
    v38 = sub_1E1658C08;
    v39 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1E1302D64;
    v37 = &block_descriptor_14;
    v22 = _Block_copy(&aBlock);

    sub_1E1AF322C();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1E1658C10(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v18, v13, v22);
    _Block_release(v22);

    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v18, v19);
    if (qword_1ECEB12B0 != -1)
    {
      swift_once();
    }

    v23 = sub_1E1AF591C();
    __swift_project_value_buffer(v23, qword_1ECEBA3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v25 = *(v32 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
    v24 = *(v32 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId + 8);
    v37 = &type metadata for AdamId;
    aBlock = v25;
    v35 = v24;

    sub_1E1AF383C();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
    type metadata accessor for OpenAppActionImplementation.ImplementationError();
    swift_getWitnessTable();
    swift_allocError();
    v27 = 2;
LABEL_9:
    *v26 = v27;
    return sub_1E1AF581C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  (*(v7 + 104))(v9, *MEMORY[0x1E69AB010], v6);
  return sub_1E1AF582C();
}

uint64_t sub_1E1658654(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1E16586A8(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v35 = a1;
  v2 = sub_1E1AF3D4C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4158);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v30 - v5;
  v30[1] = v30 - v5;
  v7 = sub_1E1AF3E1C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v30[2] = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF553C();
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF551C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17._countAndFlagsBits = 0x4F2E6E6F69746341;
  v17._object = 0xE90000000000004BLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  localizedString(_:comment:)(v17, v18);
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1E1AF550C();
  sub_1E1AF3DFC();
  v19 = sub_1E1AF552C();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  v20._object = 0x80000001E1B6C7F0;
  v20._countAndFlagsBits = 0xD00000000000001FLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  localizedString(_:comment:)(v20, v21);
  v22._countAndFlagsBits = 0xD000000000000021;
  v22._object = 0x80000001E1B6C810;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  localizedString(_:comment:)(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB7398);
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1E1B02CC0;
  (*(v14 + 16))(v25 + v24, v16, v13);
  sub_1E1AF3D3C();
  sub_1E1AF54EC();
  v26 = v31;
  *(&v37 + 1) = v31;
  v38 = MEMORY[0x1E69AB558];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v36);
  v28 = v32;
  (*(v32 + 16))(boxed_opaque_existential_0, v12, v26);
  type metadata accessor for OpenAppActionImplementation();
  swift_getWitnessTable();
  sub_1E1834054(&v36);

  (*(v28 + 8))(v12, v26);
  (*(v14 + 8))(v16, v13);
  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

void sub_1E1658B18(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(sub_1E1AF0F7C() - 8);
  v7 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  sub_1E1657194(a1, a2, *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v7, *(v2 + v8), *(v2 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + (((((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v5);
}

uint64_t sub_1E1658C10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E1658CA0()
{
  v0 = *MEMORY[0x1E69DDC70];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 traitCollectionWithPreferredContentSizeCategory_];

  qword_1EE1EE4B8 = v3;
}

void Paragraph.Style.nqmlConfiguration.getter(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E1AEFF8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v2;
  sub_1E1AEFF4C();
  sub_1E1AEFEFC();
  v9 = sub_1E1AF602C();

  if (v9 & 1) != 0 || (sub_1E1AEFEFC(), v10 = sub_1E1AF602C(), , (v10))
  {
    (*(v5 + 8))(v7, v4);
LABEL_4:
    v19[14] = v8;
    v11 = sub_1E165A360();
    goto LABEL_5;
  }

  sub_1E1AEFEFC();
  v18 = sub_1E1AF602C();

  (*(v5 + 8))(v7, v4);
  if (v18)
  {
    goto LABEL_4;
  }

  v19[15] = v8;
  v11 = sub_1E165A3E8();
LABEL_5:
  v12 = v11;
  v13 = objc_opt_self();
  v14 = qword_1EE1EE4B0;
  v15 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = [v13 preferredFontForTextStyle:v15 compatibleWithTraitCollection:qword_1EE1EE4B8];

  *a1 = 10;
  a1[1] = 0xE100000000000000;
  a1[2] = v16;
  v17 = v16;
  a1[3] = _sSo16NSParagraphStyleC11AppStoreKitE4nqmlABvgZ_0();
  a1[4] = 161644770;
  a1[5] = 0xA400000000000000;
  a1[6] = _sSo16NSParagraphStyleC11AppStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  a1[9] = _sSo16NSParagraphStyleC11AppStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  a1[7] = 606245;
  a1[8] = 0xE300000000000000;
}

AppStoreKit::Paragraph::Alignment_optional __swiftcall Paragraph.Alignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Paragraph.Alignment.rawValue.getter()
{
  v1 = *v0;
  v2 = 1952867692;
  v3 = 0x7468676972;
  v4 = 0x656966697473756ALL;
  if (v1 != 3)
  {
    v4 = 0x657A696C61636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265746E6563;
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

uint64_t sub_1E1659074()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1659150()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1659218()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E16592FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952867692;
  v5 = 0xE500000000000000;
  v6 = 0x7468676972;
  v7 = 0x656966697473756ALL;
  if (v2 != 3)
  {
    v7 = 0x657A696C61636F6CLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE900000000000064;
  }

  if (*v1)
  {
    v4 = 0x7265746E6563;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

id Paragraph.Style.textStyle.getter()
{
  v0 = sub_1E165A3E8();

  return v0;
}

id Paragraph.Style.smallerTextStyle.getter()
{
  v0 = sub_1E165A360();

  return v0;
}

AppStoreKit::Paragraph::Style_optional __swiftcall Paragraph.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Paragraph.Style.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x656C6369747261;
    if (v1 != 1)
    {
      v5 = 0x6E6F6974706163;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x647261646E617473;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E165954C()
{
  sub_1E1AF5F0C();
}

void sub_1E1659680(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE800000000000000;
    v9 = 0x656C6369747261;
    if (v2 != 1)
    {
      v9 = 0x6E6F6974706163;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x647261646E617473;
    }

    if (!v10)
    {
      v8 = 0xE700000000000000;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001E1B56E10;
    v4 = 0xD00000000000001BLL;
    if (v2 != 5)
    {
      v4 = 0xD000000000000011;
      v3 = 0x80000001E1B58C10;
    }

    v5 = 0xD000000000000010;
    v6 = 0x80000001E1B58BF0;
    if (v2 != 3)
    {
      v5 = 0xD000000000000012;
      v6 = 0x80000001E1B58AE0;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t Paragraph.__allocating_init(id:text:wantsCollapsedNewlines:alignment:style:isCollapsed:suppressVerticalMargins:impressionMetrics:)(uint64_t a1, void *a2, char a3, unsigned __int8 *a4, char *a5, int a6, int a7, uint64_t a8)
{
  v46 = a6;
  v47 = a7;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v45 = *a4;
  v19 = *a5;
  *(v18 + 24) = 0;
  *(v18 + 40) = 0;
  sub_1E134FD1C(a1, &v50, &unk_1ECEB5670);
  if (*(&v51 + 1))
  {
    v20 = v51;
    *(v18 + 56) = v50;
    *(v18 + 72) = v20;
    *(v18 + 88) = v52;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v44 = a2;
    v22 = a3;
    v23 = a8;
    v24 = a1;
    v25 = v19;
    v27 = v26;
    (*(v15 + 8))(v17, v14);
    v48 = v21;
    v49 = v27;
    v19 = v25;
    a1 = v24;
    a8 = v23;
    a3 = v22;
    a2 = v44;
    sub_1E1AF6F6C();
    sub_1E1308058(&v50, &unk_1ECEB5670);
  }

  sub_1E134FD1C(a8, v18 + OBJC_IVAR____TtC11AppStoreKit9Paragraph_impressionMetrics, &unk_1ECEB1770);
  swift_beginAccess();
  v28 = byte_1ECEBBB89;
  v29 = type metadata accessor for LanguageAwareString();
  v30 = objc_allocWithZone(v29);
  v31 = a2;
  v32 = sub_1E1990A0C(v31, 0, v28);

  *(v18 + 16) = v32;
  if (a3)
  {
    v33 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v34 = [v33 length];
    v35 = [v33 mutableString];
    v36 = sub_1E1AF5DBC();
    v44 = a1;
    v37 = v19;
    v38 = v36;
    v39 = sub_1E1AF5DBC();
    [v35 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v34}];

    v19 = v37;
    LOBYTE(v34) = byte_1ECEBBB89;
    v40 = objc_allocWithZone(v29);
    v41 = sub_1E1990A0C(v33, 0, v34);

    sub_1E1308058(a8, &unk_1ECEB1770);
    sub_1E1308058(v44, &unk_1ECEB5670);
  }

  else
  {

    sub_1E1308058(a8, &unk_1ECEB1770);
    sub_1E1308058(a1, &unk_1ECEB5670);
    v41 = v32;
  }

  *(v18 + 32) = v41;
  v42 = v46;
  *(v18 + 48) = v45;
  *(v18 + 49) = v19;
  *(v18 + 50) = v42 & 1;
  *(v18 + 51) = v47 & 1;
  return v18;
}

uint64_t Paragraph.init(id:text:wantsCollapsedNewlines:alignment:style:isCollapsed:suppressVerticalMargins:impressionMetrics:)(uint64_t a1, void *a2, char a3, unsigned __int8 *a4, char *a5, int a6, int a7, uint64_t a8)
{
  v9 = v8;
  v46 = a6;
  v47 = a7;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a4;
  v20 = *a5;
  *(v9 + 24) = 0;
  *(v9 + 40) = 0;
  sub_1E134FD1C(a1, &v50, &unk_1ECEB5670);
  if (*(&v51 + 1))
  {
    v53 = v50;
    v54 = v51;
    v55 = v52;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v44 = a2;
    v22 = a3;
    v23 = a8;
    v24 = a1;
    v25 = v20;
    v27 = v26;
    (*(v17 + 8))(v19, v16);
    v48 = v21;
    v49 = v27;
    v20 = v25;
    a1 = v24;
    a8 = v23;
    a3 = v22;
    a2 = v44;
    sub_1E1AF6F6C();
    sub_1E1308058(&v50, &unk_1ECEB5670);
  }

  v28 = v54;
  *(v9 + 56) = v53;
  *(v9 + 72) = v28;
  *(v9 + 88) = v55;
  sub_1E134FD1C(a8, v9 + OBJC_IVAR____TtC11AppStoreKit9Paragraph_impressionMetrics, &unk_1ECEB1770);
  swift_beginAccess();
  v29 = byte_1ECEBBB89;
  v30 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v30);
  v31 = a2;
  v32 = sub_1E1990A0C(v31, 0, v29);

  *(v9 + 16) = v32;
  if (a3)
  {
    v33 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v34 = [v33 length];
    v35 = [v33 mutableString];
    v36 = sub_1E1AF5DBC();
    v44 = a1;
    v37 = v20;
    v38 = v36;
    v39 = sub_1E1AF5DBC();
    [v35 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v34}];

    v20 = v37;
    LOBYTE(v34) = byte_1ECEBBB89;
    v40 = objc_allocWithZone(v30);
    v41 = sub_1E1990A0C(v33, 0, v34);

    sub_1E1308058(a8, &unk_1ECEB1770);
    sub_1E1308058(v44, &unk_1ECEB5670);
  }

  else
  {

    sub_1E1308058(a8, &unk_1ECEB1770);
    sub_1E1308058(a1, &unk_1ECEB5670);
    v41 = *(v9 + 16);
  }

  *(v9 + 32) = v41;
  v42 = v46;
  *(v9 + 48) = v45;
  *(v9 + 49) = v20;
  *(v9 + 50) = v42 & 1;
  *(v9 + 51) = v47 & 1;
  return v9;
}

id Paragraph.text.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    v4 = sub_1E198D200();
    v5 = *(v0 + 24);
    *(v3 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void Paragraph.text.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void (*Paragraph.text.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Paragraph.text.getter();
  return sub_1E1659FD0;
}

void sub_1E1659FD0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

id Paragraph.collapsedText.getter()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = v0;
    v4 = sub_1E198D200();
    v5 = *(v0 + 40);
    *(v3 + 40) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void Paragraph.collapsedText.setter(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void (*Paragraph.collapsedText.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Paragraph.collapsedText.getter();
  return sub_1E165A098;
}

void sub_1E165A098(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
}

uint64_t Paragraph.isCollapsed.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 50) = a1;
  return result;
}

double Paragraph.clickSender.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id *Paragraph.deinit()
{
  sub_1E134B88C((v0 + 7));
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit9Paragraph_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t Paragraph.__deallocating_deinit()
{
  sub_1E134B88C((v0 + 7));
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit9Paragraph_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E165A2F8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E165AA74(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E165A360()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (!*v0)
    {
      goto LABEL_10;
    }

    if (v1 != 1)
    {
      return sub_1E165A360();
    }

LABEL_9:
    v2 = MEMORY[0x1E69DDCF8];
    return *v2;
  }

  if (*v0 > 4u)
  {
    if (v1 != 5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v1 == 3)
  {
LABEL_10:
    v2 = MEMORY[0x1E69DDD80];
    return *v2;
  }

  v2 = MEMORY[0x1E69DDD28];
  return *v2;
}

uint64_t sub_1E165A3E8()
{
  v1 = *v0;
  if (v1 > 2)
  {
    if (*v0 > 4u)
    {
      v2 = MEMORY[0x1E69DDCF8];
      return *v2;
    }

    if (v1 != 3)
    {
      v2 = MEMORY[0x1E69DDD28];
      return *v2;
    }

LABEL_8:
    v2 = MEMORY[0x1E69DDD80];
    return *v2;
  }

  if (!*v0)
  {
    goto LABEL_8;
  }

  if (v1 != 1)
  {
    return sub_1E165A3E8();
  }

  v2 = MEMORY[0x1E69DDDC8];
  return *v2;
}

id _s11AppStoreKit9ParagraphC7prepare4text2of4withSo18NSAttributedStringCSSSg_AA10StyledTextC9MediaTypeOAC5StyleOtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _BYTE *a4)
{
  v8 = sub_1E1AEF81C();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AEF82C();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AEF84C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  if (a2)
  {
    v40 = v10;
    v41 = v8;
    v18 = a1;
    v19 = *a3;
    LOBYTE(v47[0]) = *a4;
    v45 = a2;

    Paragraph.Style.nqmlConfiguration.getter(&v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9C0);
    inited = swift_initStackObject();
    v21 = MEMORY[0x1E69DB688];
    *(inited + 16) = xmmword_1E1B02CC0;
    v22 = *v21;
    *(inited + 32) = *v21;
    v23 = *(&v49 + 1);
    *(inited + 64) = sub_1E13006E4(0, &qword_1EE1E3458);
    *(inited + 40) = v23;
    v24 = v22;
    v25 = v23;
    sub_1E159D27C(inited);
    swift_setDeallocating();
    sub_1E1308058(inited + 32, &unk_1ECEBB9D0);
    if (v19)
    {
      if (v19 == 1)
      {

        v47[2] = v50;
        v47[3] = v51;
        v47[4] = v52;
        v47[0] = v48;
        v47[1] = v49;
        v26 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());
        sub_1E13E3AC8(&v48, &v46);
        v27 = sub_1E1ADBC74(v18, v45, v47);
        [*&v27[OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_parser] parse];
        v28 = OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_accumulator;
        v29 = [*&v27[OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_accumulator] mutableString];
        if (qword_1EE1E3468 != -1)
        {
          swift_once();
        }

        sub_1E16E354C(qword_1EE2160F0);

        v30 = *&v27[v28];
        v31 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v32 = v30;
        v33 = [v31 initWithAttributedString_];
        sub_1E14A7E28(&v48);

        return v33;
      }

      sub_1E13006E4(0, &qword_1EE1E3420);
      v37 = sub_1E1AEFCCC();
      (*(*(v37 - 8) + 56))(v17, 1, 1, v37);
      (*(v42 + 104))(v13, *MEMORY[0x1E6968750], v43);
      (*(v44 + 104))(v40, *MEMORY[0x1E6968728], v41);

      sub_1E1AEF83C();
      sub_1E1AF69CC();

      v33 = sub_1E1AF69EC();
    }

    else
    {
      v36 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v38 = sub_1E1AF5DBC();

      type metadata accessor for Key(0);
      sub_1E165B7A4(&qword_1EE1E33D0, type metadata accessor for Key);
      v39 = sub_1E1AF5C6C();

      v33 = [v36 initWithString:v38 attributes:v39];
    }

    sub_1E14A7E28(&v48);
    return v33;
  }

  v34 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

  return [v34 init];
}

uint64_t sub_1E165AA74(char *a1, uint64_t a2)
{
  v78 = a2;
  v64 = sub_1E1AEFEAC();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v62 - v9;
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v68 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v67 = &v62 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v70 = &v62 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v62 - v22;
  sub_1E1AF381C();
  v66 = sub_1E1AF37CC();
  v69 = v24;
  v27 = *(v12 + 8);
  v25 = v12 + 8;
  v26 = v27;
  v27(v23, v11);
  sub_1E1AF381C();
  sub_1E1423CD4();
  sub_1E1AF369C();
  v27(v23, v11);
  v65 = v84[0];
  sub_1E1AF381C();
  sub_1E165B7EC();
  sub_1E1AF369C();
  v27(v23, v11);
  v85 = v84[0];
  sub_1E1AF46DC();
  sub_1E1AF381C();
  (*(v75 + 16))(v79, v78, v76);
  v77 = v10;
  sub_1E1AF464C();
  v79 = a1;
  sub_1E1AF381C();
  v28 = sub_1E1AF37CC();
  if (v29)
  {
    *&v81 = v28;
    *(&v81 + 1) = v29;
  }

  else
  {
    v30 = v62;
    sub_1E1AEFE9C();
    v31 = sub_1E1AEFE7C();
    v33 = v32;
    (*(v63 + 8))(v30, v64);
    *&v81 = v31;
    *(&v81 + 1) = v33;
  }

  sub_1E1AF6F6C();
  v26(v21, v11);
  LOBYTE(v81) = v65;
  LOBYTE(v80[0]) = v85;
  v66 = _s11AppStoreKit9ParagraphC7prepare4text2of4withSo18NSAttributedStringCSSSg_AA10StyledTextC9MediaTypeOAC5StyleOtFZ_0(v66, v69, &v81, v80);

  v34 = v70;
  sub_1E1AF381C();
  v35 = sub_1E1AF370C();
  v26(v34, v11);
  v36 = (v35 == 2) | v35;
  sub_1E1AF381C();
  sub_1E165B840();
  sub_1E1AF369C();
  v26(v23, v11);
  LODWORD(v70) = v86;
  v37 = v67;
  sub_1E1AF381C();
  LODWORD(v69) = sub_1E1AF370C();
  v26(v37, v11);
  v38 = v68;
  sub_1E1AF381C();
  v39 = sub_1E1AF370C();
  v26(v38, v11);
  v40 = v74;
  sub_1E134FD1C(v77, v74, &unk_1ECEB1770);
  type metadata accessor for Paragraph();
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 40) = 0;
  sub_1E134FD1C(v84, &v81, &unk_1ECEB5670);
  v72 = v26;
  v73 = v11;
  v71 = v25;
  if (*(&v82 + 1))
  {
    v42 = v82;
    *(v41 + 56) = v81;
    *(v41 + 72) = v42;
    *(v41 + 88) = v83;
  }

  else
  {
    v43 = v62;
    sub_1E1AEFE9C();
    v44 = sub_1E1AEFE7C();
    v46 = v45;
    (*(v63 + 8))(v43, v64);
    v80[0] = v44;
    v80[1] = v46;
    sub_1E1AF6F6C();
    sub_1E1308058(&v81, &unk_1ECEB5670);
  }

  sub_1E134FD1C(v40, v41 + OBJC_IVAR____TtC11AppStoreKit9Paragraph_impressionMetrics, &unk_1ECEB1770);
  swift_beginAccess();
  v47 = byte_1ECEBBB89;
  v48 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v48);
  v49 = v66;
  v50 = sub_1E1990A0C(v49, 0, v47);

  *(v41 + 16) = v50;
  if (v36)
  {
    v51 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v52 = [v51 length];
    v53 = v39;
    v54 = [v51 mutableString];
    v55 = sub_1E1AF5DBC();
    v56 = sub_1E1AF5DBC();
    [v54 replaceOccurrencesOfString:v55 withString:v56 options:1024 range:{0, v52}];

    v39 = v53;
    LOBYTE(v52) = byte_1ECEBBB89;
    v57 = objc_allocWithZone(v48);
    v58 = sub_1E1990A0C(v51, 0, v52);

    (*(v75 + 8))(v78, v76);
    v72(v79, v73);
    sub_1E1308058(v74, &unk_1ECEB1770);
    sub_1E1308058(v84, &unk_1ECEB5670);
    sub_1E1308058(v77, &unk_1ECEB1770);
  }

  else
  {

    (*(v75 + 8))(v78, v76);
    v72(v79, v73);
    sub_1E1308058(v40, &unk_1ECEB1770);
    sub_1E1308058(v84, &unk_1ECEB5670);
    sub_1E1308058(v77, &unk_1ECEB1770);
    v58 = v50;
  }

  *(v41 + 32) = v58;
  v59 = v69;
  v60 = v69 == 2;
  *(v41 + 48) = v70;
  *(v41 + 49) = v85;
  *(v41 + 50) = (v60 | v59) & 1;
  *(v41 + 51) = v39 & 1;
  return v41;
}

unint64_t sub_1E165B510()
{
  result = qword_1ECEB7420;
  if (!qword_1ECEB7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7420);
  }

  return result;
}

unint64_t sub_1E165B568()
{
  result = qword_1ECEB7428;
  if (!qword_1ECEB7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7428);
  }

  return result;
}

uint64_t type metadata accessor for Paragraph()
{
  result = qword_1EE1E4138;
  if (!qword_1EE1E4138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E165B658()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E165B7A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E165B7EC()
{
  result = qword_1EE1E4168;
  if (!qword_1EE1E4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4168);
  }

  return result;
}

unint64_t sub_1E165B840()
{
  result = qword_1EE1E4160;
  if (!qword_1EE1E4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4160);
  }

  return result;
}

uint64_t PreorderDisclaimer.disclaimer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PreorderDisclaimer.__allocating_init(id:disclaimer:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_1E134FD1C(a1, &v19, &unk_1ECEB5670);
  if (*(&v20 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670);
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v13 = sub_1E1AEFE7C();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v18[1] = v13;
    v18[2] = v15;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670);
    sub_1E1308058(&v19, &unk_1ECEB5670);
  }

  v16 = v23;
  *(v12 + 32) = v22;
  *(v12 + 48) = v16;
  *(v12 + 64) = v24;
  sub_1E134B7C8(a4, v12 + OBJC_IVAR____TtC11AppStoreKit18PreorderDisclaimer_impressionMetrics);
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  return v12;
}

uint64_t PreorderDisclaimer.init(id:disclaimer:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v20, &unk_1ECEB5670);
  if (*(&v21 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670);
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v14 = sub_1E1AEFE7C();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v19[1] = v14;
    v19[2] = v16;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670);
    sub_1E1308058(&v20, &unk_1ECEB5670);
  }

  v17 = v24;
  *(v5 + 32) = v23;
  *(v5 + 48) = v17;
  *(v5 + 64) = v25;
  sub_1E134B7C8(a4, v5 + OBJC_IVAR____TtC11AppStoreKit18PreorderDisclaimer_impressionMetrics);
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  return v5;
}

void (*PreorderDisclaimer.__allocating_init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v51 = a2;
  v47 = sub_1E1AF39DC();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v35 - v5;
  v6 = sub_1E1AEFEAC();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = a1;
  sub_1E1AF381C();
  v42 = sub_1E1AF37CC();
  v19 = v18;
  v20 = *(v10 + 8);
  v20(v16, v9);
  v41 = v19;
  if (v19)
  {
    v39 = v20;
    sub_1E1AF381C();
    v21 = sub_1E1AF37CC();
    v40 = v17;
    v38 = v9;
    if (v22)
    {
      v48 = v21;
      v49 = v22;
    }

    else
    {
      sub_1E1AEFE9C();
      v25 = sub_1E1AEFE7C();
      v27 = v26;
      (*(v36 + 8))(v8, v37);
      v48 = v25;
      v49 = v27;
    }

    sub_1E1AF6F6C();
    v28 = v9;
    v29 = v39;
    v39(v13, v28);
    sub_1E1AF46DC();
    sub_1E1AF381C();
    v30 = v45;
    v31 = v51;
    v32 = v47;
    (*(v45 + 16))(v43, v51, v47);
    v33 = v44;
    sub_1E1AF464C();
    v20 = swift_allocObject();
    PreorderDisclaimer.init(id:disclaimer:impressionMetrics:)(v50, v42, v41, v33);
    (*(v30 + 8))(v31, v32);
    v29(v40, v38);
  }

  else
  {
    v23 = sub_1E1AF5A7C();
    sub_1E165C2E4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v24 = 0x6D69616C63736964;
    v24[1] = 0xEA00000000007265;
    v24[2] = v46;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E69AB690], v23);
    swift_willThrow();
    (*(v45 + 8))(v51, v47);
    v20(v17, v9);
  }

  return v20;
}

uint64_t PreorderDisclaimer.deinit()
{

  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit18PreorderDisclaimer_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t PreorderDisclaimer.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit18PreorderDisclaimer_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E165C2E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PreorderDisclaimer()
{
  result = qword_1EE1EF8B0;
  if (!qword_1EE1EF8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1E165C378@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X8>))(char *, uint64_t)
{
  result = PreorderDisclaimer.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1E165C3E8()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t InAppPurchaseSearchResult.__allocating_init(id:lockup:condensedBehavior:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v27 = a4;
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25[-v12];
  v14 = swift_allocObject();
  v26 = *a3;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit25InAppPurchaseSearchResult_lockup) = a2;
  sub_1E134FD1C(a1, v33, &unk_1ECEB5670);
  v15 = *(a2 + 264);
  if (v15)
  {
    v16 = type metadata accessor for Action();
    v17 = sub_1E139136C(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  sub_1E134FD1C(a2 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, v13, &unk_1ECEB1770);
  *(v14 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v33, &v30, &unk_1ECEB5670);
  if (*(&v31 + 1))
  {
    v18 = v31;
    *(v14 + 24) = v30;
    *(v14 + 40) = v18;
    *(v14 + 56) = v32;
  }

  else
  {

    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v20 = v8;
    v22 = v21;
    (*(v20 + 8))(v10, v7);
    v28 = v19;
    v29 = v22;
    sub_1E1AF6F6C();
    sub_1E1308058(&v30, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v33, &unk_1ECEB5670);
  *(v14 + 64) = v15;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  *(v14 + 88) = v16;
  *(v14 + 96) = v17;
  sub_1E134B7C8(v13, v14 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v14 + 17) = 0;
  *(v14 + 16) = v26;
  v23 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v14 + v23) = v27;
  return v14;
}

uint64_t InAppPurchaseSearchResult.init(id:lockup:condensedBehavior:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = v4;
  v26 = a4;
  v9 = sub_1E1AEFEAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  v25 = *a3;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit25InAppPurchaseSearchResult_lockup) = a2;
  sub_1E134FD1C(a1, v35, &unk_1ECEB5670);
  v16 = *(a2 + 264);
  if (v16)
  {
    v24 = type metadata accessor for Action();
    v17 = sub_1E139136C(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v24 = 0;
    v17 = 0;
  }

  sub_1E134FD1C(a2 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, v15, &unk_1ECEB1770);
  *(v5 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v35, &v29, &unk_1ECEB5670);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {

    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    v27 = v18;
    v28 = v20;
    sub_1E1AF6F6C();
    sub_1E1308058(&v29, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v35, &unk_1ECEB5670);
  v21 = v33;
  *(v5 + 24) = v32;
  *(v5 + 40) = v21;
  *(v5 + 56) = v34;
  *(v5 + 64) = v16;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = v24;
  *(v5 + 96) = v17;
  sub_1E134B7C8(v15, v5 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v5 + 17) = 0;
  *(v5 + 16) = v25;
  v22 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v5 + v22) = v26;

  return v5;
}

uint64_t InAppPurchaseSearchResult.clickSender.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25InAppPurchaseSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup();
  *a1 = v3;
}

void InAppPurchaseSearchResult.itemBackground.getter(char *a1@<X8>)
{
  if (*(v1 + 16) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  *a1 = v2;
}

uint64_t InAppPurchaseSearchResult.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + 64, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t InAppPurchaseSearchResult.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + 64, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E165CDD0@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC11AppStoreKit25InAppPurchaseSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup();
  *a1 = v3;
}

void sub_1E165CE24(char *a1@<X8>)
{
  if (*(*v1 + 16) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  *a1 = v2;
}

uint64_t sub_1E165CE40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = v51 - v5;
  v55 = sub_1E1AEFEAC();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v60 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v58 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v51 - v11;
  v62 = sub_1E1AF380C();
  v13 = *(v62 - 8);
  v14 = MEMORY[0x1EEE9AC00](v62);
  v57 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v56 = v51 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v51 - v18;
  v63 = a1;
  sub_1E1AF381C();
  v20 = *(v8 + 16);
  v20(v12, a2, v7);
  type metadata accessor for InAppPurchaseLockup();
  swift_allocObject();
  v21 = v61;
  v22 = InAppPurchaseLockup.init(deserializing:using:)(v19, v12);
  if (v21)
  {
    (*(v8 + 8))(a2, v7);
    (*(v13 + 8))(v63, v62);
  }

  else
  {
    v23 = v22;
    v51[0] = v20;
    v51[1] = v8 + 16;
    v51[2] = 0;
    v52 = v8;
    v61 = v7;
    v53 = a2;
    v24 = v56;
    sub_1E1AF381C();
    v25 = sub_1E1AF37CC();
    if (v26)
    {
      v69 = v25;
      v70 = v26;
    }

    else
    {
      v27 = v60;
      sub_1E1AEFE9C();
      v28 = sub_1E1AEFE7C();
      v30 = v29;
      (*(v54 + 8))(v27, v55);
      v69 = v28;
      v70 = v30;
    }

    sub_1E1AF6F6C();
    v31 = *(v13 + 8);
    v32 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33 = v62;
    v31(v24, v62);
    v34 = v58;
    v35 = v57;
    sub_1E1AF381C();
    sub_1E134B92C();
    sub_1E1AF369C();
    v58 = v31;
    v56 = v32;
    v31(v35, v33);
    v73 = v74;
    type metadata accessor for SearchAdOpportunity();
    sub_1E1AF381C();
    v36 = v53;
    (v51[0])(v34, v53, v61);
    sub_1E139136C(&qword_1EE1EE770, type metadata accessor for SearchAdOpportunity);
    sub_1E1AF464C();
    v37 = v71;
    type metadata accessor for InAppPurchaseSearchResult();
    v7 = swift_allocObject();
    *(v7 + OBJC_IVAR____TtC11AppStoreKit25InAppPurchaseSearchResult_lockup) = v23;
    sub_1E134FD1C(v72, &v69, &unk_1ECEB5670);
    v38 = *(v23 + 264);
    if (v38)
    {
      v57 = type metadata accessor for Action();
      v39 = sub_1E139136C(qword_1EE1D2F80, type metadata accessor for Action);
    }

    else
    {
      v57 = 0;
      v39 = 0;
    }

    v40 = v59;
    v41 = v60;
    sub_1E134FD1C(v23 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, v59, &unk_1ECEB1770);
    *(v7 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
    sub_1E134FD1C(&v69, &v66, &unk_1ECEB5670);
    if (*(&v67 + 1))
    {
      v42 = v67;
      *(v7 + 24) = v66;
      *(v7 + 40) = v42;
      *(v7 + 56) = v68;
    }

    else
    {

      sub_1E1AEFE9C();
      v43 = sub_1E1AEFE7C();
      v44 = v41;
      v45 = v43;
      v47 = v46;
      (*(v54 + 8))(v44, v55);
      v64 = v45;
      v65 = v47;
      v36 = v53;
      sub_1E1AF6F6C();
      sub_1E1308058(&v66, &unk_1ECEB5670);
    }

    (*(v52 + 8))(v36, v61);
    (v58)(v63, v62);
    sub_1E1308058(&v69, &unk_1ECEB5670);
    sub_1E1308058(v72, &unk_1ECEB5670);
    *(v7 + 64) = v38;
    *(v7 + 72) = 0;
    v48 = v57;
    *(v7 + 80) = 0;
    *(v7 + 88) = v48;
    *(v7 + 96) = v39;
    sub_1E134B7C8(v40, v7 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
    *(v7 + 17) = 0;
    *(v7 + 16) = v73;
    v49 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(v7 + v49) = v37;
  }

  return v7;
}

uint64_t type metadata accessor for InAppPurchaseSearchResult()
{
  result = qword_1EE1E1BF8;
  if (!qword_1EE1E1BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E165D6E8()
{
  sub_1E1361B18(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_1E165D760()
{
  result = qword_1ECEB7430;
  if (!qword_1ECEB7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7430);
  }

  return result;
}

uint64_t *TodayCardMediaVideo.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v67 = a1;
  v54 = *v2;
  v69 = sub_1E1AF39DC();
  v4 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v58 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v53 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v53 - v10;
  v66 = sub_1E1AF380C();
  v62 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v57 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v53 - v17;
  v53[1] = OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworks;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworks) = MEMORY[0x1E69E7CC0];
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v65 = v4;
  v19 = *(v4 + 16);
  v20 = v11;
  v21 = v11;
  v22 = a2;
  v23 = a2;
  v24 = v69;
  v19(v21, v23, v69);
  v63 = v18;
  v25 = v20;
  sub_1E1AF464C();
  v68 = v8;
  v64 = v22;
  v19(v8, v22, v24);
  v26 = v67;
  sub_1E1AF381C();
  v19(v25, v8, v24);
  type metadata accessor for Video();
  sub_1E165DF7C(&qword_1EE1E52D0, type metadata accessor for Video);
  v27 = sub_1E1AF630C();
  v28 = OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_videos;
  v29 = v60;
  *(v60 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_videos) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35B0);
  sub_1E1AF381C();
  v55 = v4 + 16;
  v56 = v19;
  v19(v25, v68, v69);
  sub_1E13F6220();
  sub_1E1AF464C();
  v53[0] = OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics;
  *(v29 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics) = v70;
  v30 = v26;
  sub_1E1AF381C();
  v31 = v29;
  v32 = sub_1E1AF37CC();
  v34 = v33;
  v35 = v62;
  v36 = v66;
  v61 = v62[1];
  v61(v15, v66);
  v37 = (v29 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_description);
  *v37 = v32;
  v37[1] = v34;
  v38 = *(v29 + v28);
  if (v38 >> 62)
  {
    v46 = v37;
    v47 = sub_1E1AF71CC();
    v37 = v46;
    if (v47)
    {
      goto LABEL_3;
    }

LABEL_8:
    v62 = v37;
    v48 = sub_1E1AF5A7C();
    sub_1E165DF7C(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v49 = 0x736F65646976;
    v49[1] = 0xE600000000000000;
    v49[2] = v54;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x1E69AB690], v48);
    swift_willThrow();
    v50 = *(v65 + 8);
    v51 = v69;
    v50(v64, v69);
    v61(v30, v66);
    v50(v68, v51);
    sub_1E1308058(v63, &unk_1ECEB1770);

    swift_deallocPartialClassInstance();
    return v31;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  v39 = v57;
  (v35[2])(v57, v30, v36);
  v40 = v58;
  v41 = v64;
  v42 = v69;
  v56(v58, v64, v69);
  v43 = v59;
  v44 = TodayCardMedia.init(deserializing:using:)(v39, v40);
  if (v43)
  {
    v31 = *(v65 + 8);
    (v31)(v41, v42);
    v61(v67, v36);
    (v31)(v68, v42);
  }

  else
  {
    v31 = v44;
    v45 = *(v65 + 8);
    v45(v41, v42);
    v61(v67, v36);
    v45(v68, v42);
  }

  sub_1E1308058(v63, &unk_1ECEB1770);
  return v31;
}

uint64_t sub_1E165DF7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TodayCardMediaVideo.__allocating_init(videos:artworkLayoutsWithMetrics:description:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworks) = MEMORY[0x1E69E7CC0];
  *(v14 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_videos) = a1;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics) = a2;
  v15 = (v14 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_description);
  *v15 = a3;
  v15[1] = a4;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1E134FD1C(a5, v14 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);
  sub_1E134FD1C(v25, &v22, &unk_1ECEB5670);
  if (*(&v23 + 1))
  {
    v16 = v23;
    *(v14 + 32) = v22;
    *(v14 + 48) = v16;
    *(v14 + 64) = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v19 = v18;
    (*(v11 + 8))(v13, v10);
    v21[1] = v17;
    v21[2] = v19;
    sub_1E1AF6F6C();
    sub_1E1308058(&v22, &unk_1ECEB5670);
  }

  sub_1E1308058(a5, &unk_1ECEB1770);
  sub_1E1308058(v25, &unk_1ECEB5670);
  *(v14 + 16) = 8;
  *(v14 + 24) = 1;
  return v14;
}

uint64_t TodayCardMediaVideo.init(videos:artworkLayoutsWithMetrics:description:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1E1AEFEAC();
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24 - v16;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworks) = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_videos) = a1;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics) = a2;
  v18 = (v6 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_description);
  *v18 = a3;
  v18[1] = a4;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_1E134FD1C(a5, v17, &unk_1ECEB1770);
  sub_1E134FD1C(v35, &v29, &unk_1ECEB5670);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v21 = v20;
    (*(v25 + 8))(v14, v26);
    v27 = v19;
    v28 = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v29, &unk_1ECEB5670);
  }

  sub_1E1308058(a5, &unk_1ECEB1770);
  sub_1E1308058(v35, &unk_1ECEB5670);
  v22 = v33;
  *(v6 + 32) = v32;
  *(v6 + 48) = v22;
  *(v6 + 64) = v34;
  sub_1E134B7C8(v17, v6 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  *(v6 + 16) = 8;
  *(v6 + 24) = 1;
  return v6;
}

uint64_t TodayCardMediaVideo.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_description);

  return v1;
}

uint64_t sub_1E165E528()
{
}

uint64_t TodayCardMediaVideo.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t TodayCardMediaVideo.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaVideo()
{
  result = qword_1EE1DC610;
  if (!qword_1EE1DC610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageFacetsFieldsProvider.init(pageFacetsMetricsProvider:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = *(type metadata accessor for PageFacetsFieldsProvider() + 20);
  v5 = *MEMORY[0x1E69AB4D8];
  v6 = sub_1E1AF524C();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  *(a2 + 8) = a1;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for PageFacetsFieldsProvider()
{
  result = qword_1EE1D9318;
  if (!qword_1EE1D9318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageFacetsFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageFacetsFieldsProvider() + 20);
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageFacetsFieldsProvider.addMetricsFields(into:using:)(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v40 = (*(v4 + 8))(ObjectType, v4);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v6 = sub_1E1AF4A0C();
  v38 = a1;
  if (*(v6 + 16) && (v7 = sub_1E13018F8(0x65446E6F69746361, 0xED0000736C696174), (v8 & 1) != 0))
  {
    sub_1E137A5C4(*(v6 + 56) + 32 * v7, &v42);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    if (swift_dynamicCast())
    {
      v9 = *&v41[0];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
LABEL_8:
  v10 = 0;
  v11 = v40 + 64;
  v12 = 1 << *(v40 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v40 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = v15;
  while (v14)
  {
    v17 = v10;
LABEL_18:
    v18 = __clz(__rbit64(v14)) | (v17 << 6);
    v19 = (*(v40 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    *&v41[0] = *(*(v40 + 56) + 8 * v18);
    swift_bridgeObjectRetain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
    sub_1E130C384();
    v22 = sub_1E1AF5D6C();
    v24 = v23;

    v43 = MEMORY[0x1E69E6158];
    *&v42 = v22;
    *(&v42 + 1) = v24;
    sub_1E1301CF0(&v42, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v9;
    v27 = sub_1E13018F8(v21, v20);
    v28 = v9[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_30;
    }

    v31 = v26;
    if (v9[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E14154D8();
      }
    }

    else
    {
      sub_1E168807C(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_1E13018F8(v21, v20);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_32;
      }

      v27 = v32;
    }

    v14 &= v14 - 1;
    if (v31)
    {

      v9 = v44;
      v16 = (v44[7] + 32 * v27);
      __swift_destroy_boxed_opaque_existential_1(v16);
      sub_1E1301CF0(v41, v16);
    }

    else
    {
      v9 = v44;
      v44[(v27 >> 6) + 8] |= 1 << v27;
      v34 = (v9[6] + 16 * v27);
      *v34 = v21;
      v34[1] = v20;
      sub_1E1301CF0(v41, (v9[7] + 32 * v27));
      v35 = v9[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_31;
      }

      v9[2] = v37;
    }

    v10 = v17;
    v15 = v39;
    v11 = v40 + 64;
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
      *&v42 = v9;
      __swift_mutable_project_boxed_opaque_existential_1(v38, *(v38 + 24));
      sub_1E1AF4A1C();
      return __swift_destroy_boxed_opaque_existential_1(&v42);
    }

    v14 = *(v11 + 8 * v17);
    ++v10;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t static PageFacetsFieldsProvider.metricsPipelineWithPageFacetsProvider(using:currentPipeline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a1;
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7438);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for PageFacetsFieldsProvider();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF4F3C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  sub_1E1AF42AC();
  *(v6 + 1) = 0;
  swift_unknownObjectWeakInit();
  v14 = *(v4 + 20);
  v15 = *MEMORY[0x1E69AB4D8];
  v16 = sub_1E1AF524C();
  (*(*(v16 - 8) + 104))(&v6[v14], v15, v16);
  *(v6 + 1) = v21;
  swift_unknownObjectWeakAssign();
  v24[3] = v4;
  v24[4] = sub_1E165FF08();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  sub_1E165FF60(v6, boxed_opaque_existential_0);
  if (qword_1EE1D2870 != -1)
  {
    swift_once();
  }

  v18 = sub_1E1AF523C();
  __swift_project_value_buffer(v18, qword_1EE1D2878);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_1E165FFC4();
  (*(v8 + 16))(v10, v13, v7);
  sub_1E1AF433C();
  sub_1E1AF435C();
  sub_1E1AF431C();
  sub_1E1AF42BC();
  sub_1E1660018(v6);
  return (*(v8 + 8))(v13, v7);
}

_OWORD *sub_1E165F11C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1E1301CF0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1E165F188(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 40 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  v9 = a4[7];
  v10 = sub_1E1AEFCCC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_1E165F248(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
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

_OWORD *sub_1E165F2A0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1E1301CF0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1E165F31C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1E1AEFCCC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1E165F3CC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1E165F45C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_1E1AEFEAC();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v12 = a4[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a3, v13);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

unint64_t sub_1E165F564(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1E165F5AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1E165F608(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 136 * result;
  v5 = *(a2 + 112);
  *(v4 + 96) = *(a2 + 96);
  *(v4 + 112) = v5;
  *(v4 + 128) = *(a2 + 128);
  v6 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v6;
  v7 = *(a2 + 80);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = v7;
  v8 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v8;
  *(a4[7] + 8 * result) = a3;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t sub_1E165F678(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_1E1AF227C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_1E165F730(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a5[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = a6(a4, a5[7] + 40 * a1);
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_1E165F7A4(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1E165F7E8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1E165F82C(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t sub_1E165F884(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1E1AF468C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1E165F93C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

unint64_t sub_1E165F98C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = (a5[7] + 16 * result);
  *v7 = a3;
  v7[1] = a4;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1E165F9E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1E165FA30(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 88 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 80) = *(a3 + 80);
  v6 = *(a3 + 64);
  *(v4 + 48) = *(a3 + 48);
  *(v4 + 64) = v6;
  *(v4 + 32) = *(a3 + 32);
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_1E165FA98(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 48 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v4[2] = a3[2];
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

unint64_t sub_1E165FAF0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1E165FB38(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = a4[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = a4[7] + 16 * result;
  *v7 = a5;
  *(v7 + 8) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1E165FB98(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

unint64_t sub_1E165FBEC(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
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

unint64_t sub_1E165FC34(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_1E165FC7C(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 152 * a1;
  v6 = *(a2 + 112);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = v6;
  *(v5 + 128) = *(a2 + 128);
  *(v5 + 144) = *(a2 + 144);
  v7 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v7;
  v8 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v8;
  v9 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v9;
  result = memcpy((a4[7] + 392 * a1), __src, 0x188uLL);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1E165FD20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_1E165FD70(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = a4[7] + 88 * result;
  v7 = *(a3 + 16);
  *v6 = *a3;
  *(v6 + 16) = v7;
  *(v6 + 80) = *(a3 + 80);
  v8 = *(a3 + 64);
  *(v6 + 48) = *(a3 + 48);
  *(v6 + 64) = v8;
  *(v6 + 32) = *(a3 + 32);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

unint64_t sub_1E165FDEC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t sub_1E165FE3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 40 * result;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = (a6[7] + 24 * result);
  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_1E165FEA0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1E1301CF0(a3, (a4[7] + 32 * a1));
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

unint64_t sub_1E165FF08()
{
  result = qword_1EE1D9328;
  if (!qword_1EE1D9328)
  {
    type metadata accessor for PageFacetsFieldsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D9328);
  }

  return result;
}

uint64_t sub_1E165FF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsFieldsProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E165FFC4()
{
  result = qword_1EE1F8638;
  if (!qword_1EE1F8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F8638);
  }

  return result;
}

uint64_t sub_1E1660018(uint64_t a1)
{
  v2 = type metadata accessor for PageFacetsFieldsProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E16600B0()
{
  result = sub_1E1AF524C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1E1660154(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = objc_opt_self();
  result = [v7 valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = [v7 valueWithObject:sub_1E1AF755C() inContext:{a1, v4, v3}];
  result = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1E1AF6C5C();
  LOBYTE(v13) = v5;
  v10 = [v7 valueWithObject:sub_1E1AF755C() inContext:{a1, v13}];
  result = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1E1AF6C5C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7450);
  v11 = [v7 valueWithObject:sub_1E1AF755C() inContext:{a1, v6}];
  result = swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E1AF6C5C();
  result = [v7 valueWithNewObjectInContext_];
  if (result)
  {
    v12 = result;
    sub_1E1AF6C5C();
    return v12;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1E166038C()
{
  result = qword_1ECEB7440;
  if (!qword_1ECEB7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7440);
  }

  return result;
}

unint64_t sub_1E16603E8()
{
  result = qword_1ECEB7448;
  if (!qword_1ECEB7448)
  {
    type metadata accessor for ArcadeSeeAllGamesPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7448);
  }

  return result;
}

uint64_t sub_1E1660448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E16610B0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.pageContext.getter()
{
  sub_1E16604E8();
  sub_1E1AF24EC();
  return v1;
}

unint64_t sub_1E16604E8()
{
  result = qword_1ECEB7458;
  if (!qword_1ECEB7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7458);
  }

  return result;
}

double sub_1E166053C@<D0>(_OWORD *a1@<X8>)
{
  sub_1E16604E8();
  sub_1E1AF24EC();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1E166058C()
{
  sub_1E16604E8();

  return sub_1E1AF24FC();
}

void (*EnvironmentValues.pageContext.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1E16604E8();
  sub_1E1AF24EC();
  *v4 = v4[1];
  return sub_1E16606C0;
}

void sub_1E16606C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    sub_1E1AF24FC();
  }

  else
  {
    sub_1E1AF24FC();
  }

  free(v2);
}

uint64_t View.providePageContextMetrics()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v15 = 0;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
  sub_1E1AF2BEC();
  v5 = v9;
  v6 = v10;
  v7 = v11;
  v9 = KeyPath;
  v10 = 0;
  LOBYTE(v11) = 0;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  MEMORY[0x1E68FB770](&v9, a1, &type metadata for ProvidePageContextModifier, a2);
}

unint64_t sub_1E1660820()
{
  result = qword_1ECEB7460;
  if (!qword_1ECEB7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7460);
  }

  return result;
}

uint64_t sub_1E1660880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1E16608DC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1E1660978(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_1E1AF24DC();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_1E1AF644C();
  v1[16] = sub_1E1AF643C();
  v4 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E1660A6C, v4, v3);
}

uint64_t sub_1E1660A6C()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + 16);
  *(v0 + 40) = *v1;
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  if (v2 == 1)
  {
  }

  else
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);

    sub_1E1AF682C();
    v8 = sub_1E1AF26BC();
    sub_1E1AF0F1C();

    sub_1E1AF24CC();
    swift_getAtKeyPath();
    sub_1E1308058(v0 + 40, &qword_1ECEB7478);
    (*(v6 + 8))(v5, v7);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
  }

  v9 = *(v0 + 96);
  v10 = *(v9 + 40);
  *(v0 + 16) = *(v9 + 24);
  *(v0 + 32) = v10;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB74A8);
  sub_1E1AF2C0C();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E1660BF8(uint64_t a1, __int128 *a2)
{
  v3 = sub_1E1AF24DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 24);
  v15 = *(a2 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB74A8);
  sub_1E1AF2BFC();
  v7 = v13;
  if (v13)
  {
    v8 = v12;
  }

  else
  {
    v14 = *a2;
    LOBYTE(v15) = *(a2 + 16);
    v8 = v14;
    if (v15 == 1)
    {
      v7 = *(&v14 + 1);

      if (!v7)
      {
        return result;
      }
    }

    else
    {

      sub_1E1AF682C();
      v10 = sub_1E1AF26BC();
      sub_1E1AF0F1C();

      sub_1E1AF24CC();
      swift_getAtKeyPath();
      sub_1E1308058(&v14, &qword_1ECEB7478);
      result = (*(v4 + 8))(v6, v3);
      v8 = v12;
      v7 = v13;
      if (!v13)
      {
        return result;
      }
    }
  }

  v12 = v8;
  v13 = v7;
  if (qword_1EE1E39B8 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
  __swift_project_value_buffer(v11, qword_1EE1E39C0);
  sub_1E1AF4A7C();
}

uint64_t sub_1E1660E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7470);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v6 = *(v2 + 5);
  v18 = *v2;
  v19 = *(v2 + 16);
  v21 = *(v2 + 24);
  v20 = v6;
  v7 = swift_allocObject();
  v8 = v2[1];
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v2 + 4);
  *(v7 + 56) = v6;
  v9 = &v5[*(v3 + 36)];
  sub_1E1AF21EC();
  sub_1E134FD1C(&v18, v17, &qword_1ECEB7478);
  sub_1E134FD1C(&v21, v17, &unk_1ECEB5D40);
  sub_1E134FD1C(&v20, v17, &qword_1ECEB7480);
  sub_1E1AF645C();
  *v9 = &unk_1E1B22DE0;
  *(v9 + 1) = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7488);
  (*(*(v10 - 8) + 16))(v5, v15, v10);
  v11 = swift_allocObject();
  v12 = v2[1];
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 4);
  *(v11 + 56) = v6;
  sub_1E134FD1C(&v18, v17, &qword_1ECEB7478);
  sub_1E134FD1C(&v21, v17, &unk_1ECEB5D40);
  sub_1E134FD1C(&v20, v17, &qword_1ECEB7480);
  sub_1E16611D8();
  sub_1E1AF295C();

  return sub_1E1308058(v5, &qword_1ECEB7470);
}

unint64_t sub_1E16610B0()
{
  result = qword_1ECEB7468;
  if (!qword_1ECEB7468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEB5D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7468);
  }

  return result;
}

uint64_t sub_1E166112C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E166113C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E130B5DC;

  return sub_1E1660978(v0 + 16);
}

unint64_t sub_1E16611D8()
{
  result = qword_1ECEB7490;
  if (!qword_1ECEB7490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB7470);
    sub_1E1661264();
    sub_1E16612C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7490);
  }

  return result;
}

unint64_t sub_1E1661264()
{
  result = qword_1ECEB7498;
  if (!qword_1ECEB7498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB7488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7498);
  }

  return result;
}

unint64_t sub_1E16612C8()
{
  result = qword_1ECEB74A0;
  if (!qword_1ECEB74A0)
  {
    sub_1E1AF21EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB74A0);
  }

  return result;
}

BOOL sub_1E1661320(unsigned __int8 a1)
{
  v3 = sub_1E1AF3F6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  if (*(v1 + 16) != 1)
  {
    return 0;
  }

  v12 = a1;
  if (!a1)
  {
    return 1;
  }

  v13 = v8;
  v14 = *(v1 + 32);
  if (v12 == 1)
  {
    [*(v1 + 32) lock];
    sub_1E1AF3F5C();
    v15 = v1 + OBJC_IVAR____TtC11AppStoreKit18JSGarbageCollector_lastShrinkTime;
    swift_beginAccess();
    v16 = 10.0;
  }

  else
  {
    [*(v1 + 32) lock];
    sub_1E1AF3F5C();
    v15 = v1 + OBJC_IVAR____TtC11AppStoreKit18JSGarbageCollector_lastShrinkTime;
    swift_beginAccess();
    v16 = 5.0;
  }

  (*(v4 + 16))(v6, v15, v13);
  sub_1E1AF3F3C();
  v19 = v18;
  v20 = *(v4 + 8);
  v20(v6, v13);
  v20(v11, v13);
  [v14 unlock];
  return v19 > v16;
}

uint64_t sub_1E1661520(char a1)
{
  v2 = v1;
  v12 = sub_1E1AF3F6C();
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1E1AF591C();
  __swift_project_value_buffer(v7, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  v14 = &type metadata for JSGarbageCollector.Methodology;
  v13[0] = a1 & 1;
  sub_1E1AF38BC();
  sub_1E13E44F8(v13);
  sub_1E1AF548C();

  if ((a1 & 1) == 0)
  {
    return sub_1E1AF573C();
  }

  v8 = *(v1 + 32);
  [*(v2 + 32) lock];
  sub_1E1AF3F5C();
  v9 = OBJC_IVAR____TtC11AppStoreKit18JSGarbageCollector_lastShrinkTime;
  swift_beginAccess();
  (*(v4 + 40))(v2 + v9, v6, v12);
  swift_endAccess();
  [v8 unlock];
  return sub_1E1AF572C();
}

void sub_1E16617D8(void *a1)
{
  v1 = [a1 virtualMachine];
  if (v1)
  {
    v2 = v1;
    [v1 shrinkFootprintWhenIdle];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E1661834()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit18JSGarbageCollector_lastShrinkTime;
  v2 = sub_1E1AF3F6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JSGarbageCollector()
{
  result = qword_1EE1EFAE8;
  if (!qword_1EE1EFAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1661934()
{
  result = sub_1E1AF3F6C();
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

unint64_t sub_1E1661A00()
{
  result = qword_1ECEB74B0;
  if (!qword_1ECEB74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB74B0);
  }

  return result;
}

uint64_t sub_1E1661AA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_allocate_value_buffer(v0, qword_1EE1E3A90);
  __swift_project_value_buffer(v0, qword_1EE1E3A90);
  return sub_1E1AF3F9C();
}

uint64_t static LocalPreferences.placeholderDisableShelfHydration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  v3 = __swift_project_value_buffer(v2, qword_1EE1E3A90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E1661BCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4938);
  __swift_allocate_value_buffer(v0, qword_1EE1E3A68);
  __swift_project_value_buffer(v0, qword_1EE1E3A68);
  return sub_1E1AF3F9C();
}

uint64_t sub_1E1661C68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4938);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1E1661D0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4938);
  __swift_allocate_value_buffer(v0, qword_1EE1E3A40);
  __swift_project_value_buffer(v0, qword_1EE1E3A40);
  return sub_1E1AF3F9C();
}

uint64_t sub_1E1661DA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  __swift_allocate_value_buffer(v0, qword_1ECEB74B8);
  __swift_project_value_buffer(v0, qword_1ECEB74B8);
  return sub_1E1AF3F9C();
}

uint64_t static LocalPreferences.currentJSVersion.getter()
{
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1ECEB0F50 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  __swift_project_value_buffer(v0, qword_1ECEB74B8);
  sub_1E1AF3C8C();

  return v2;
}

double sub_1E1661EFC@<D0>(_OWORD *a1@<X8>)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1ECEB0F50 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  __swift_project_value_buffer(v2, qword_1ECEB74B8);
  sub_1E1AF3C8C();

  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_1E1661FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-1] - v6;
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (a2)
  {
    if (qword_1ECEB0F50 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v4, qword_1ECEB74B8);
    (*(v5 + 16))(v7, v8, v4);
    v13[0] = a1;
    v13[1] = a2;
    sub_1E1AF3C9C();
  }

  else
  {
    if (qword_1ECEB0F50 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_1ECEB74B8);
    v13[3] = v4;
    v13[4] = sub_1E14F0120();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
    (*(v5 + 16))(boxed_opaque_existential_0, v10, v4);
    sub_1E1AF448C();

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

AppStoreKit::AppShowcaseType_optional __swiftcall AppShowcaseType.init(rawValue:)(Swift::String rawValue)
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

uint64_t AppShowcaseType.rawValue.getter()
{
  v1 = 0x6C6C616D73;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656772616CLL;
  }
}

uint64_t sub_1E16622AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6C6C616D73;
  v5 = 0x80000001E1B55F70;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001E1B55F70;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x656772616CLL;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x6C6C616D73;
  if (*a2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656772616CLL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E1662398()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1662438()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E16624C4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E166256C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C6C616D73;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001E1B55F70;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656772616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AppShowcase.descriptionText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AppShowcase.__allocating_init(id:lockup:descriptionText:screenshots:video:type:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v27 = a5;
  v28 = a6;
  v29 = a2;
  v30 = a3;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = *a7;
  sub_1E134FD1C(a1, &v33, &unk_1ECEB5670);
  if (*(&v34 + 1))
  {
    v18 = v34;
    *(v16 + 64) = v33;
    *(v16 + 80) = v18;
    *(v16 + 96) = v35;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v26 = a8;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v31 = v19;
    v32 = v21;
    a8 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v33, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E134B7C8(a8, v16 + OBJC_IVAR____TtC11AppStoreKit11AppShowcase_impressionMetrics);
  v22 = v30;
  *(v16 + 16) = v29;
  *(v16 + 24) = v22;
  v24 = v27;
  v23 = v28;
  *(v16 + 32) = a4;
  *(v16 + 40) = v24;
  *(v16 + 48) = v23;
  *(v16 + 56) = v17;
  return v16;
}

uint64_t AppShowcase.init(id:lockup:descriptionText:screenshots:video:type:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v9 = v8;
  v28 = a5;
  v29 = a6;
  v30 = a2;
  v31 = a3;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a7;
  sub_1E134FD1C(a1, &v34, &unk_1ECEB5670);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v27 = a8;
    v21 = v20;
    (*(v15 + 8))(v17, v14);
    v32 = v19;
    v33 = v21;
    a8 = v27;
    sub_1E1AF6F6C();
    sub_1E1308058(&v34, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v22 = v38;
  *(v9 + 64) = v37;
  *(v9 + 80) = v22;
  *(v9 + 96) = v39;
  sub_1E134B7C8(a8, v9 + OBJC_IVAR____TtC11AppStoreKit11AppShowcase_impressionMetrics);
  v23 = v31;
  *(v9 + 16) = v30;
  *(v9 + 24) = v23;
  v25 = v28;
  v24 = v29;
  *(v9 + 32) = a4;
  *(v9 + 40) = v25;
  *(v9 + 48) = v24;
  *(v9 + 56) = v18;
  return v9;
}

uint64_t sub_1E1662A40@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for AppShowcase();
  *a1 = v1;
}

uint64_t AppShowcase.deinit()
{

  sub_1E134B88C(v0 + 64);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11AppShowcase_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t AppShowcase.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 64);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11AppShowcase_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

char *sub_1E1662B90@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_1E1662C40(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1662BBC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for AppShowcase();
  *a1 = v3;
}

char *sub_1E1662C40(char *a1, uint64_t a2)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v59 - v4;
  v63 = sub_1E1AEFEAC();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - v10;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  sub_1E1AF381C();
  v60 = sub_1E1AF37CC();
  v72 = v12;
  v73 = v23;
  v77 = *(v13 + 8);
  v74 = (v13 + 8);
  v77(v22, v12);
  sub_1E1AF381C();
  v69 = v7;
  v24 = *(v7 + 16);
  v25 = v76;
  v24(v11, v76, v6);
  type metadata accessor for Screenshots();
  sub_1E1663730(&qword_1EE1F66F8, type metadata accessor for Screenshots);
  v65 = v11;
  v26 = sub_1E1AF630C();
  v71 = a1;
  sub_1E1AF381C();
  v27 = v68;
  v75 = v6;
  v28 = v6;
  v29 = v24;
  v24(v68, v25, v28);
  type metadata accessor for Lockup();
  swift_allocObject();
  v30 = v70;
  v31 = Lockup.init(deserializing:using:)(v19, v27);
  if (v30)
  {

    (*(v69 + 8))(v25, v75);
    v77(v71, v72);
  }

  else
  {
    v32 = v31;
    v70 = 0;
    v68 = v26;
    type metadata accessor for Video();
    v33 = v71;
    sub_1E1AF381C();
    v29(v65, v25, v75);
    sub_1E1663730(&qword_1EE1E52D0, type metadata accessor for Video);
    sub_1E1AF464C();
    v65 = v83[0];
    v34 = v66;
    sub_1E1AF381C();
    v35 = sub_1E1AF37CC();
    v37 = v32;
    if (v36)
    {
      *&v80 = v35;
      *(&v80 + 1) = v36;
    }

    else
    {
      v38 = v61;
      sub_1E1AEFE9C();
      v39 = sub_1E1AEFE7C();
      v41 = v40;
      (*(v62 + 8))(v38, v63);
      *&v80 = v39;
      *(&v80 + 1) = v41;
    }

    sub_1E1AF6F6C();
    v42 = v72;
    v22 = v74;
    v77(v34, v72);
    v43 = v69;
    v44 = v67;
    sub_1E1AF381C();
    sub_1E1663778();
    v45 = v70;
    sub_1E1AF36AC();
    v46 = v76;
    v47 = v73;
    if (v45)
    {

      (*(v43 + 8))(v46, v75);
      v48 = v77;
      v77(v33, v42);
      v48(v44, v42);
      sub_1E1308058(v83, &unk_1ECEB5670);
    }

    else
    {
      v70 = 0;
      v77(v44, v42);
      v50 = v84;
      v51 = v64;
      sub_1E134FD1C(v37 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, v64, &unk_1ECEB1770);
      type metadata accessor for AppShowcase();
      v22 = swift_allocObject();
      sub_1E134FD1C(v83, &v80, &unk_1ECEB5670);
      if (*(&v81 + 1))
      {
        v52 = v81;
        *(v22 + 4) = v80;
        *(v22 + 5) = v52;
        *(v22 + 12) = v82;
      }

      else
      {
        v53 = v61;
        sub_1E1AEFE9C();
        v54 = sub_1E1AEFE7C();
        v56 = v55;
        (*(v62 + 8))(v53, v63);
        v78 = v54;
        v79 = v56;
        v42 = v72;
        v47 = v73;
        v51 = v64;
        sub_1E1AF6F6C();
        sub_1E1308058(&v80, &unk_1ECEB5670);
      }

      (*(v43 + 8))(v46, v75);
      v77(v33, v42);
      sub_1E1308058(v83, &unk_1ECEB5670);
      sub_1E134B7C8(v51, &v22[OBJC_IVAR____TtC11AppStoreKit11AppShowcase_impressionMetrics]);
      v57 = v60;
      *(v22 + 2) = v37;
      *(v22 + 3) = v57;
      v58 = v68;
      *(v22 + 4) = v47;
      *(v22 + 5) = v58;
      *(v22 + 6) = v65;
      v22[56] = v50;
    }
  }

  return v22;
}

uint64_t type metadata accessor for AppShowcase()
{
  result = qword_1EE1F8C50;
  if (!qword_1EE1F8C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E1663518()
{
  result = qword_1ECEB74D0;
  if (!qword_1ECEB74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB74D0);
  }

  return result;
}

void sub_1E16635CC()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E1663730(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E1663778()
{
  result = qword_1EE1E18E0;
  if (!qword_1EE1E18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E18E0);
  }

  return result;
}

void *OpenAppAction.__allocating_init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, void *a3, char a4, char *a5, uint64_t a6, uint64_t a7)
{
  v34 = a2;
  v35 = a6;
  v33 = a1;
  v11 = sub_1E1AEFEAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = a3[1];
  v17 = *a5;
  v18 = (v15 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  *v18 = *a3;
  v18[1] = v16;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_destination) = v17;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_allowBetaApps) = a4;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v19 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v20 = sub_1E1AF3E1C();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v15 + v19, a7, v20);
  v22 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v23 = sub_1E1AF46DC();
  (*(*(v23 - 8) + 56))(v15 + v22, 1, 1, v23);
  v24 = (v15 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  v25 = v15 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v41, &v38);
  if (*(&v39 + 1))
  {
    v26 = v39;
    *v25 = v38;
    *(v25 + 1) = v26;
    *(v25 + 4) = v40;
  }

  else
  {
    sub_1E1AEFE9C();
    v27 = sub_1E1AEFE7C();
    v29 = v28;
    (*(v12 + 8))(v14, v11);
    v36 = v27;
    v37 = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v38, &unk_1ECEB5670);
  }

  (*(v21 + 8))(a7, v20);
  sub_1E1308058(v41, &unk_1ECEB5670);
  v30 = v34;
  v15[2] = v33;
  v15[3] = v30;
  v31 = v35;
  v15[4] = 0;
  v15[5] = v31;
  return v15;
}

uint64_t OpenAppAction.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  a1[1] = v2;
}

void *OpenAppAction.init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, void *a3, char a4, char *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a2;
  v39 = a6;
  v37 = a1;
  v36 = sub_1E1AEFEAC();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v35 - v16;
  v18 = sub_1E1AF3E1C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a3[1];
  v23 = *a5;
  v24 = (v8 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  *v24 = *a3;
  v24[1] = v22;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_destination) = v23;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_allowBetaApps) = a4;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  (*(v19 + 16))(v21, a7, v18);
  v25 = sub_1E1AF46DC();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v26 = 0u;
  v26[1] = 0u;
  sub_1E138853C(v48, &v42);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_1E1AEFE9C();
    v27 = sub_1E1AEFE7C();
    v29 = v28;
    (*(v35 + 8))(v14, v36);
    v40 = v27;
    v41 = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v42, &unk_1ECEB5670);
  }

  (*(v19 + 8))(a7, v18);
  sub_1E1308058(v48, &unk_1ECEB5670);
  v30 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v30 + 4) = v47;
  v31 = v46;
  *v30 = v45;
  *(v30 + 1) = v31;
  sub_1E134B7C8(v17, v8 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v32 = v38;
  v8[2] = v37;
  v8[3] = v32;
  v33 = v39;
  v8[4] = 0;
  v8[5] = v33;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v21, v18);
  return v8;
}

void *OpenAppAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v46 = a2;
  v40 = *v3;
  v5 = sub_1E1AF39DC();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - v17;
  v47 = a1;
  sub_1E1AF381C();
  v19 = sub_1E1AF37CC();
  v21 = v20;
  v22 = *(v8 + 8);
  v48 = v7;
  v49 = v22;
  v22(v18, v7);
  if (v21)
  {
    v23 = (v3 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
    *v23 = v19;
    v23[1] = v21;
    v24 = v47;
    sub_1E1AF381C();
    sub_1E16643B4();
    sub_1E1AF369C();
    v25 = v16;
    v26 = v3;
    v3 = v48;
    v27 = v49;
    v49(v25, v48);
    *(v26 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_destination) = v50;
    sub_1E1AF381C();
    v28 = sub_1E1AF370C();
    v27(v13, v3);
    *(v26 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_allowBetaApps) = (v28 == 2) | v28 & 1;
    v29 = v41;
    (*(v8 + 16))(v41, v24, v3);
    v31 = v44;
    v30 = v45;
    v32 = v42;
    v33 = v46;
    (*(v44 + 16))(v42, v46, v45);
    v34 = v43;
    v35 = Action.init(deserializing:using:)(v29, v32);
    if (!v34)
    {
      v3 = v35;
    }

    (*(v31 + 8))(v33, v30);
    v49(v24, v48);
  }

  else
  {
    v36 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v37 = 0x64496D616461;
    v38 = v40;
    v37[1] = 0xE600000000000000;
    v37[2] = v38;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x1E69AB690], v36);
    swift_willThrow();
    (*(v44 + 8))(v46, v45);
    v49(v47, v48);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

unint64_t sub_1E16643B4()
{
  result = qword_1EE1DCBC0;
  if (!qword_1EE1DCBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DCBC0);
  }

  return result;
}

uint64_t OpenAppAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t OpenAppAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OpenAppAction()
{
  result = qword_1EE1FA090;
  if (!qword_1EE1FA090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1664754(uint64_t a1)
{
  v2 = sub_1E1AF227C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1E1AF23CC();
}

void *sub_1E166481C()
{
  result = sub_1E159FDF8(MEMORY[0x1E69E7CC0]);
  off_1ECEB74D8 = result;
  return result;
}

uint64_t ScaledSpaceMetric.init(wrappedValue:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ScaledSpaceMetric();
  *(a1 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for ScaledSpaceMetric()
{
  result = qword_1ECEB74E0;
  if (!qword_1ECEB74E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1664900@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E1AF24DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1E16650C4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E1AF227C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1E1AF682C();
    v13 = sub_1E1AF26BC();
    sub_1E1AF0F1C();

    sub_1E1AF24CC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double ScaledSpaceMetric.wrappedValue.getter()
{
  v1 = sub_1E1AF745C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = sub_1E1AF227C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1664900(v11);
  v12 = sub_1E1664E04(v11);
  (*(v9 + 8))(v11, v8);
  v13 = v12 * *(v0 + *(type metadata accessor for ScaledSpaceMetric() + 20));
  sub_1E1AF102C();
  v21 = v13;
  (*(v2 + 16))(v4, v7, v1);
  v14 = (*(v2 + 88))(v4, v1);
  if (v14 == *MEMORY[0x1E69E7038])
  {
    v15 = round(v13);
LABEL_11:
    (*(v2 + 8))(v7, v1);
    return v15;
  }

  if (v14 == *MEMORY[0x1E69E7030])
  {
    v15 = rint(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x1E69E7040])
  {
    v15 = ceil(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x1E69E7048])
  {
    v15 = floor(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x1E69E7020])
  {
    v15 = trunc(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x1E69E7028])
  {
    (*(v2 + 8))(v7, v1);
    v17 = ceil(v13);
    v18 = floor(v13);
    if (v13 < 0.0)
    {
      return v18;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    sub_1E1AF655C();
    v19 = *(v2 + 8);
    v19(v7, v1);
    v19(v4, v1);
    return v21;
  }
}

double sub_1E1664E04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3FB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  if (qword_1ECEB0F58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_1ECEB74D8;
  if (*(off_1ECEB74D8 + 2) && (v9 = sub_1E1595814(a1), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + 8 * v9);
  }

  else
  {
    swift_endAccess();
    v12 = sub_1E1AF227C();
    v13 = *(*(v12 - 8) + 56);
    v13(v7, 1, 1, v12);
    v13(v4, 1, 1, v12);
    v14 = sub_1E144AEB0(v7, v4);
    sub_1E144B5A0(v4);
    sub_1E144B5A0(v7);
    v11 = (v14 + -1.0) * 0.5 + 1.0;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ECEB74D8;
    off_1ECEB74D8 = 0x8000000000000000;
    sub_1E1599A20(a1, isUniquelyReferenced_nonNull_native, v11);
    off_1ECEB74D8 = v17;
  }

  swift_endAccess();
  return v11;
}

void sub_1E1665050()
{
  sub_1E1430C30();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1E16650C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RuleIdentifier.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RuleIdentifier.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

AppStoreKit::RuleIdentifier __swiftcall RuleIdentifier.init(name:version:)(Swift::String name, Swift::String version)
{
  *v2 = name;
  v2[1] = version;
  result.version = version;
  result.name = name;
  return result;
}

uint64_t RuleIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x1E68FED70](v1, v2);
  return MEMORY[0x1E68FED70](v3, v4) ^ v5;
}

uint64_t static RuleIdentifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = v7 == v3 && v8 == v4;
  if (v11 || (v12 = sub_1E1AF74AC(), result = 0, (v12 & 1) != 0))
  {
    if (v9 == v5 && v10 == v6)
    {
      return 1;
    }

    else
    {

      return sub_1E1AF74AC();
    }
  }

  return result;
}

uint64_t RuleIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = MEMORY[0x1E68FED70](v1, v2);
  v6 = MEMORY[0x1E68FED70](v4, v3);
  return MEMORY[0x1E6900360](v6 ^ v5);
}

uint64_t sub_1E16652D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = v7 == v3 && v8 == v4;
  if (v11 || (v12 = sub_1E1AF74AC(), result = 0, (v12 & 1) != 0))
  {
    if (v9 == v5 && v10 == v6)
    {
      return 1;
    }

    else
    {

      return sub_1E1AF74AC();
    }
  }

  return result;
}

uint64_t sub_1E166536C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x1E68FED70](v1, v2);
  return MEMORY[0x1E68FED70](v3, v4) ^ v5;
}

uint64_t sub_1E16653B0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = MEMORY[0x1E68FED70](v1, v2);
  v6 = MEMORY[0x1E68FED70](v4, v3);
  return MEMORY[0x1E6900360](v6 ^ v5);
}

uint64_t sub_1E1665400()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E1AF762C();
  v5 = MEMORY[0x1E68FED70](v1, v2);
  v6 = MEMORY[0x1E68FED70](v4, v3);
  MEMORY[0x1E6900360](v6 ^ v5);
  return sub_1E1AF767C();
}

uint64_t GladiatorRule.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_1E16654B0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v32 = sub_1E1AEF59C();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_1E1AEF65C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF5EC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB39F0);
    sub_1E166705C();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v28 = v2;
    (*(v13 + 32))(v15, v11, v12);
    v18 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13GladiatorRule_rulePath + 8);
    v19 = *(v1 + 16);
    v20 = *(v1 + 24);
    v30 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13GladiatorRule_rulePath);
    v31 = v18;

    MEMORY[0x1E68FECA0](v19, v20);
    MEMORY[0x1E68F8340](v30, v31);
    sub_1E1AEF56C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2708);
    v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E1B02CC0;
    v23 = v22 + v21;
    v24 = v32;
    (*(v6 + 16))(v23, v8, v32);
    sub_1E1AEF5DC();
    sub_1E1AEF5FC();
    v25 = sub_1E1AEFCCC();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v5, 1, v25) == 1)
    {
      sub_1E1308058(v5, &unk_1ECEB4B60);
      sub_1E166705C();
      swift_allocError();
      *v27 = xmmword_1E1B16440;
      *(v27 + 16) = 2;
      swift_willThrow();
      (*(v6 + 8))(v8, v24);
      return (*(v13 + 8))(v15, v12);
    }

    else
    {
      (*(v6 + 8))(v8, v24);
      (*(v13 + 8))(v15, v12);
      return (*(v26 + 32))(v29, v5, v25);
    }
  }
}

uint64_t sub_1E1665944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[11] = *MEMORY[0x1E69E9840];
  v5 = sub_1E1AEFCCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  result = sub_1E16654B0(v20 - v10);
  if (!v2)
  {
    (*(v6 + 16))(v8, v11, v5);
    sub_1E1AEF34C();
    sub_1E1AEF39C();
    sub_1E1AEF2EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    *(inited + 32) = 0x73746E657665;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4740);
    *(inited + 48) = a1;

    sub_1E1303A74(inited);
    swift_setDeallocating();
    sub_1E1308058(inited + 32, &qword_1ECEB5F80);
    v14 = objc_opt_self();
    v15 = sub_1E1AF5C6C();

    v20[0] = 0;
    v16 = [v14 dataWithJSONObject:v15 options:0 error:v20];

    v17 = v20[0];
    if (v16)
    {
      sub_1E1AEFD3C();

      sub_1E1AEF38C();
    }

    else
    {
      v18 = v17;
      sub_1E1AEFB2C();

      swift_willThrow();
      v19 = sub_1E1AEF3AC();
      (*(*(v19 - 8) + 8))(a2, v19);
    }

    return (*(v6 + 8))(v11, v5);
  }

  return result;
}

uint64_t sub_1E1665CAC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E1B06D70;
  *(v3 + 32) = a1;
  v4 = a1;
  sub_1E1665F50(v3);

  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E1666144;
  *(v5 + 24) = v1;
  v8[3] = sub_1E1AF470C();
  v8[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v8);

  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49D8);
  sub_1E1666150();
  v6 = sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1E1665DEC(uint64_t a1)
{
  sub_1E1665F50(a1);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E16676A4;
  *(v2 + 24) = v1;
  v5[3] = sub_1E1AF470C();
  v5[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v5);

  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49D8);
  sub_1E1666150();
  v3 = sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1E1665EE4(uint64_t a1, unint64_t a2, char **a3)
{
  sub_1E16670B0(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49D8);
  return sub_1E1AF582C();
}

uint64_t sub_1E1665F50(uint64_t a1)
{
  v3 = sub_1E1AEF3AC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7528);
  v7 = sub_1E1AF588C();
  sub_1E1665944(a1, v6);
  v8 = *(v1 + 48);
  v9 = sub_1E1AEF31C();
  aBlock[4] = sub_1E1667670;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1666290;
  aBlock[3] = &block_descriptor_43;
  v10 = _Block_copy(aBlock);

  v11 = [v8 dataTaskWithRequest:v9 completionHandler:v10];
  _Block_release(v10);

  [v11 resume];
  (*(v4 + 8))(v6, v3);
  return v7;
}

unint64_t sub_1E1666150()
{
  result = qword_1ECEB74F0;
  if (!qword_1ECEB74F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB49D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB74F0);
  }

  return result;
}

void sub_1E16661E8(uint64_t a1, unint64_t a2, void *a3, id a4)
{
  if (a4)
  {
    v5 = a4;
    sub_1E1AF584C();
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      __break(1u);
    }

    else if (a3)
    {
      sub_1E14708F4(a1, a2);
      v7 = a3;
      sub_1E1AF586C();
      sub_1E14283DC(a1, a2);

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1E1666290(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1E1AEFD3C();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1E1337F64(v6, v10);
}

uint64_t sub_1E1666358@<X0>(char *a1@<X0>, unint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = v33 - v4;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v33 - v13;
  v15 = a1;
  sub_1E1AF381C();
  v16 = sub_1E1AF36EC();
  LOBYTE(a1) = v17;
  v18 = *(v6 + 8);
  result = v18(v14, v5);
  if (a1)
  {
    sub_1E166705C();
    swift_allocError();
    *v20 = 0xD000000000000021;
    *(v20 + 8) = 0x80000001E1B6CD30;
    *(v20 + 16) = 0;
    return swift_willThrow();
  }

  else if (v16 < 1)
  {
    v27 = v36;
    *v36 = 0;
    v27[1] = 0;
  }

  else
  {
    v34 = 0xD00000000000002ALL;
    v35 = 0x80000001E1B6CD60;
    sub_1E1AF381C();
    v21 = sub_1E1AF37CC();
    v23 = v22;
    v18(v11, v5);
    if (v23)
    {
      strcpy(v33, "Failed Rule: ");
      HIWORD(v33[1]) = -4864;
      MEMORY[0x1E68FECA0](v21, v23);

      v34 = v33[0];
      v35 = v33[1];
    }

    sub_1E1AF381C();
    v24 = v32;
    sub_1E1AF374C();
    v18(v8, v5);
    v25 = sub_1E1AF5A6C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      result = sub_1E1308058(v24, &qword_1ECEB1F90);
    }

    else
    {
      v28 = sub_1E1AF59FC();
      v29 = (*(v26 + 8))(v24, v25);
      MEMORY[0x1EEE9AC00](v29);
      *(&v32 - 2) = v15;
      *(&v32 - 1) = &v34;
      sub_1E1810834(sub_1E1667654, (&v32 - 4), v28);
    }

    v30 = v35;
    v31 = v36;
    *v36 = v34;
    v31[1] = v30;
  }

  return result;
}

uint64_t sub_1E166679C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  v11 = *a1;
  v12 = a1[1];
  sub_1E1AF381C();
  sub_1E1AF381C();
  v13 = *(v5 + 8);
  v13(v10, v4);
  v14 = sub_1E1AF37CC();
  v16 = v15;
  v13(v7, v4);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1E1AF6FEC();

  v20 = 0x2064656C6961460ALL;
  v21 = 0xEF203A646C656946;
  MEMORY[0x1E68FECA0](v11, v12);
  MEMORY[0x1E68FECA0](2112032, 0xE300000000000000);
  v19[2] = v14;
  v19[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
  v17 = sub_1E1AF5E8C();
  MEMORY[0x1E68FECA0](v17);

  MEMORY[0x1E68FECA0](v20, v21);
}

uint64_t GladiatorRule.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit13GladiatorRule_baseURL;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t GladiatorRule.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit13GladiatorRule_baseURL;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t RuleIdentifier.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x1E68FECA0](*v0, v0[1]);
  MEMORY[0x1E68FECA0](3831328, 0xE300000000000000);
  MEMORY[0x1E68FECA0](v1, v2);
  return 0x20656C7552;
}

unint64_t RuleIdentifier.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1E1AF6FEC();

  MEMORY[0x1E68FECA0](v1, v2);
  MEMORY[0x1E68FECA0](980820012, 0xE400000000000000);
  MEMORY[0x1E68FECA0](v3, v4);
  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t sub_1E1666C44()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x1E68FECA0](*v0, v0[1]);
  MEMORY[0x1E68FECA0](3831328, 0xE300000000000000);
  MEMORY[0x1E68FECA0](v1, v2);
  return 0x20656C7552;
}

uint64_t GladiatorRule.description.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  MEMORY[0x1E68FECA0](v0[2], v0[3]);
  MEMORY[0x1E68FECA0](3831328, 0xE300000000000000);
  MEMORY[0x1E68FECA0](v1, v2);
  return 0x20656C7552;
}

unint64_t GladiatorRule.debugDescription.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1E1AF6FEC();

  MEMORY[0x1E68FECA0](v1, v2);
  MEMORY[0x1E68FECA0](980820012, 0xE400000000000000);
  MEMORY[0x1E68FECA0](v3, v4);
  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return 0xD000000000000011;
}

unint64_t sub_1E1666DF4()
{
  result = qword_1ECEB7508;
  if (!qword_1ECEB7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7508);
  }

  return result;
}

uint64_t sub_1E1666E6C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);
  MEMORY[0x1E68FECA0](*(*v0 + 16), *(*v0 + 24));
  MEMORY[0x1E68FECA0](3831328, 0xE300000000000000);
  MEMORY[0x1E68FECA0](v1, v2);
  return 0x20656C7552;
}

uint64_t type metadata accessor for GladiatorRule()
{
  result = qword_1ECEB7510;
  if (!qword_1ECEB7510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1666F4C()
{
  result = sub_1E1AEFCCC();
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

unint64_t sub_1E166705C()
{
  result = qword_1ECEB7520;
  if (!qword_1ECEB7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7520);
  }

  return result;
}

char **sub_1E16670B0(uint64_t a1, unint64_t a2, char **a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1E1AF380C();
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  if (a3)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v30 = a3;
      a3 = &selRef_addPayment_;
      if ([v17 statusCode] != 200)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_1E1AF6FEC();

        v32 = 0xD00000000000001DLL;
        v33 = 0x80000001E1B6CD10;
        v34 = [v17 statusCode];
        v22 = sub_1E1AF742C();
        MEMORY[0x1E68FECA0](v22);

        v23 = v32;
        v24 = v33;
        sub_1E166705C();
        swift_allocError();
        *v25 = v23;
        *(v25 + 8) = v24;
        *(v25 + 16) = 0;
        swift_willThrow();

        return a3;
      }
    }
  }

  if (a2 >> 60 == 15)
  {
    sub_1E166705C();
    swift_allocError();
    *v18 = 0xD00000000000001FLL;
    *(v18 + 8) = 0x80000001E1B6CCB0;
    *(v18 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    sub_1E14708A0(a1, a2);
    sub_1E14708A0(a1, a2);
    sub_1E1AF36CC();
    a3 = v3;
    if (v3)
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1E1AF6FEC();
      MEMORY[0x1E68FECA0](0xD000000000000019, 0x80000001E1B6CCD0);
      v34 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
      sub_1E1AF714C();
      v19 = v32;
      v20 = v33;
      sub_1E166705C();
      swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v20;
      *(v21 + 16) = 0;
      swift_willThrow();
      sub_1E1337F64(a1, a2);
    }

    else
    {
      (*(v31 + 32))(v15, v12, v10);
      sub_1E1AF374C();
      v26 = sub_1E1AF5A6C();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v9, 1, v26) == 1)
      {
        sub_1E1308058(v9, &qword_1ECEB1F90);
        sub_1E166705C();
        swift_allocError();
        *v28 = 0xD00000000000001FLL;
        *(v28 + 8) = 0x80000001E1B6CCF0;
        *(v28 + 16) = 0;
        swift_willThrow();
        sub_1E1337F64(a1, a2);
        (*(v31 + 8))(v15, v10);
      }

      else
      {
        a3 = sub_1E1AF59FC();
        (*(v27 + 8))(v9, v26);
        if (a3[2])
        {
          (*(v31 + 8))(v15, v10);
          sub_1E1337F64(a1, a2);
        }

        else
        {

          sub_1E1337F64(a1, a2);
          (*(v31 + 8))(v15, v10);
          return &unk_1F5C2D908;
        }
      }
    }
  }

  return a3;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit9RuleErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1E16676AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1E135C088(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1E1AF6EFC();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1E135C088((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1E142EA30(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1E142EA30(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t ImpressionsAppendixMetricsTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7530);
  swift_allocObject();
  *(v0 + 16) = sub_1E14C5D90(MEMORY[0x1E69E7CD0]);
  return v0;
}

uint64_t ImpressionsAppendixMetricsTracker.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7530);
  swift_allocObject();
  *(v0 + 16) = sub_1E14C5D90(MEMORY[0x1E69E7CD0]);
  return v0;
}

void ImpressionsAppendixMetricsTracker.updateAppendix(for:including:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_1E1AF320C();
  v23 = *(v4 - 8);
  v24 = v4;
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1E69E7CD0];
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_14:
    v15 = *(v21 + 16);
    MEMORY[0x1EEE9AC00](v5);
    *(&v21 - 2) = &v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v16 = v23;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v25 = v17;
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    v18 = v22;
    v19 = v24;
    v20 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v20);
    *(&v21 - 4) = sub_1E1668374;
    *(&v21 - 3) = (&v21 - 4);
    *(&v21 - 2) = v15;
    sub_1E1AF68FC();
    (*(v16 + 8))(v18, v19);

    return;
  }

  v5 = sub_1E1AF71CC();
  v8 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E68FFD80](i, a1, v6);
      }

      else
      {
        v10 = *(a1 + 8 * i + 32);
      }

      if ((a2(v10) & 1) != 0 && (type metadata accessor for AppSearchResult(), (v11 = swift_dynamicCastClass()) != 0))
      {
        v12 = *(v11 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup);
        v14 = *(v12 + 16);
        v13 = *(v12 + 24);

        sub_1E18943C0(&v25, v14, v13);
      }

      else
      {
      }
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t ImpressionsAppendixMetricsTracker.insert(_:)()
{
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSearchResult();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = *(*(result + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup) + 24);
    v7 = *(v0 + 16);
    MEMORY[0x1EEE9AC00](result);
    v11[-2] = v8;
    v11[-1] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v11[1] = v9;
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    v10 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v10);
    v11[-4] = sub_1E16683A8;
    v11[-3] = &v11[-4];
    v11[-2] = v7;
    sub_1E1AF68FC();

    (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_1E1667F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1E18943C0(&v6, a2, a3);
}

uint64_t ImpressionsAppendixMetricsTracker.getCondensedLockupAdamIds()()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  sub_1E1AF690C();

  return v1;
}

uint64_t sub_1E1668030@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E16676AC(*a1);
  *a2 = result;
  return result;
}

Swift::Void __swiftcall ImpressionsAppendixMetricsTracker.clearAppendix()()
{
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v11 = v6;
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  v8 = sub_1E1668240;
  v9 = 0;
  v10 = v5;
  sub_1E1AF68FC();
  (*(v2 + 8))(v4, v1);
}

uint64_t sub_1E1668240(void *a1)
{

  *a1 = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t ImpressionsAppendixMetricsTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E16682D0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  sub_1E1AF690C();

  return v1;
}

uint64_t TodayPageIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v61 - v8;
  v73 = sub_1E1AEFCCC();
  v70 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v67 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AEFEAC();
  v62 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF380C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  sub_1E1AF381C();
  v24 = sub_1E1AF37CC();
  if (v25)
  {
    v71 = v24;
    v72 = v25;
  }

  else
  {
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v27 = v10;
    v28 = v13;
    v29 = a1;
    v31 = v30;
    (*(v62 + 8))(v12, v27);
    v71 = v26;
    v72 = v31;
    a1 = v29;
    v13 = v28;
  }

  sub_1E1AF6F6C();
  v32 = *(v14 + 8);
  v32(v23, v13);
  sub_1E1AF381C();
  v33 = v66;
  sub_1E1AF36FC();
  v34 = v20;
  v35 = v33;
  v32(v34, v13);
  v36 = v70;
  v37 = v73;
  if ((*(v70 + 48))(v35, 1, v73) == 1)
  {
    sub_1E1308058(v35, &unk_1ECEB4B60);
    v38 = a1;
    v39 = sub_1E1AF5A7C();
    sub_1E1669140(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v41 = v40;
    v42 = type metadata accessor for TodayPageIntent();
    *v41 = 7107189;
    v41[1] = 0xE300000000000000;
    v41[2] = v42;
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69AB690], v39);
    swift_willThrow();
    v43 = sub_1E1AF39DC();
    (*(*(v43 - 8) + 8))(v68, v43);
    v32(v38, v13);
    return sub_1E134B88C(a3);
  }

  else
  {
    v45 = v35;
    v46 = v67;
    (*(v36 + 32))(v67, v45, v37);
    v47 = type metadata accessor for TodayPageIntent();
    (*(v36 + 16))(a3 + v47[5], v46, v37);
    v48 = v63;
    v49 = a1;
    sub_1E1AF381C();
    v50 = v65;
    sub_1E1AF374C();
    v66 = v13;
    v51 = v13;
    v52 = v50;
    v32(v48, v51);
    v53 = sub_1E1AF5A6C();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v52, 1, v53) == 1)
    {
      sub_1E1308058(v52, &qword_1ECEB1F90);
      v55 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v56 = v69;
      v55 = sub_1E1AF59FC();
      v69 = v56;
      (*(v54 + 8))(v52, v53);
    }

    *(a3 + v47[6]) = v55;
    v57 = v64;
    sub_1E1AF381C();
    v58 = sub_1E1AF370C();
    v59 = sub_1E1AF39DC();
    (*(*(v59 - 8) + 8))(v68, v59);
    v60 = v66;
    v32(v49, v66);
    v32(v57, v60);
    result = (*(v70 + 8))(v67, v73);
    *(a3 + v47[7]) = v58 & 1;
  }

  return result;
}

uint64_t type metadata accessor for TodayPageIntent()
{
  result = qword_1EE1DF528;
  if (!qword_1EE1DF528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TodayPageIntent.init(id:url:onboardingCardIds:isRunningPPTs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v9;
  *(a5 + 32) = *(a1 + 32);
  v10 = type metadata accessor for TodayPageIntent();
  v11 = v10[5];
  v12 = sub_1E1AEFCCC();
  result = (*(*(v12 - 8) + 32))(a5 + v11, a2, v12);
  *(a5 + v10[6]) = a3;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t TodayPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayPageIntent() + 20);
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayPageIntent.onboardingCardIds.getter()
{
  type metadata accessor for TodayPageIntent();
}

JSValue __swiftcall TodayPageIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_14;
  }

  isa = result.super.isa;
  sub_1E134E724(v1, v24);
  v7 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1E1AF6C5C();
  v8 = type metadata accessor for TodayPageIntent();
  v24[0] = sub_1E1AEFBDC();
  v24[1] = v9;
  v10 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1E1AF6C5C();
  v11 = *(v1 + *(v8 + 24));
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v21 = v8;
    v22 = v1;
    v23 = in.super.isa;
    v24[0] = MEMORY[0x1E69E7CC0];
    sub_1E135C088(0, v12, 0);
    v13 = v24[0];
    v14 = (v11 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v24[0] = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_1E135C088((v17 > 1), v18 + 1, 1);
        v13 = v24[0];
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v14 += 2;
      --v12;
    }

    while (v12);
    v2 = v22;
    in.super.isa = v23;
    v8 = v21;
  }

  v24[0] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  v20 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v20)
  {
    goto LABEL_16;
  }

  sub_1E1AF6C5C();
  result.super.isa = [v4 valueWithBool:*(v2 + *(v8 + 28)) inContext:in.super.isa];
  if (result.super.isa)
  {

    sub_1E1AF6C5C();
    return isa;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E1669140(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E16691B0()
{
  sub_1E1AEFCCC();
  if (v0 <= 0x3F)
  {
    sub_1E166924C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E166924C()
{
  if (!qword_1EE1D2658)
  {
    v0 = sub_1E1AF635C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D2658);
    }
  }
}

unint64_t sub_1E16692C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v66 = MEMORY[0x1E69E7CC0];
  sub_1E135C128(0, v1, 0);
  v2 = v66;
  v4 = v3 + 56;
  v5 = sub_1E1AF6EFC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7588);
  v50 = v3;
  v7 = 0;
  v47 = v3 + 64;
  v48 = v1;
  v49 = v3 + 56;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_31;
    }

    v53 = v5 >> 6;
    v54 = v5;
    v55 = v2;
    v51 = v7;
    v52 = *(v3 + 36);
    v9 = (*(v3 + 48) + (v5 << 6));
    v10 = v9[6];
    v56 = v9[7];
    v57 = *v9;
    v58 = v9[1];
    v59 = v9[2];
    v60 = v9[3];
    v61 = v9[4];
    v62 = v9[5];
    strcpy(v63, "metricsValue");
    BYTE5(v63[1]) = 0;
    HIWORD(v63[1]) = -5120;
    v64 = v10;
    v65 = v56;
    v11 = sub_1E1AF72CC();

    result = sub_1E13018F8(0x65756C6176, 0xE500000000000000);
    if (v12)
    {
      goto LABEL_28;
    }

    v13 = v11 + 8;
    *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v11[6] + 16 * result);
    *v14 = 0x65756C6176;
    v14[1] = 0xE500000000000000;
    v15 = (v11[7] + 16 * result);
    *v15 = v57;
    v15[1] = v58;
    v16 = v11[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_29;
    }

    v11[2] = v18;

    result = sub_1E13018F8(0x656C746974, 0xE500000000000000);
    if (v19)
    {
      goto LABEL_28;
    }

    *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v20 = (v11[6] + 16 * result);
    *v20 = 0x656C746974;
    v20[1] = 0xE500000000000000;
    v21 = (v11[7] + 16 * result);
    *v21 = v59;
    v21[1] = v60;
    v22 = v11[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_29;
    }

    v11[2] = v23;

    result = sub_1E13018F8(0x6D496D6574737973, 0xEF656D614E656761);
    if (v24)
    {
      goto LABEL_28;
    }

    *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v25 = (v11[6] + 16 * result);
    *v25 = 0x6D496D6574737973;
    v25[1] = 0xEF656D614E656761;
    v26 = (v11[7] + 16 * result);
    *v26 = v61;
    v26[1] = v62;
    v27 = v11[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v17)
    {
      goto LABEL_29;
    }

    v11[2] = v28;
    v29 = v63[0];
    v30 = v63[1];
    v32 = v64;
    v31 = v65;

    result = sub_1E13018F8(v63[0], v63[1]);
    if (v33)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      break;
    }

    *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v34 = (v11[6] + 16 * result);
    *v34 = v29;
    v34[1] = v30;
    v35 = (v11[7] + 16 * result);
    *v35 = v32;
    v35[1] = v31;
    v36 = v11[2];
    v17 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v17)
    {
      goto LABEL_29;
    }

    v11[2] = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7590);
    swift_arrayDestroy();
    v2 = v55;
    v66 = v55;
    v39 = *(v55 + 16);
    v38 = *(v55 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_1E135C128((v38 > 1), v39 + 1, 1);
      v2 = v66;
    }

    *(v2 + 16) = v39 + 1;
    *(v2 + 8 * v39 + 32) = v11;
    v3 = v50;
    v8 = 1 << *(v50 + 32);
    result = v5;
    if (v5 >= v8)
    {
      goto LABEL_32;
    }

    v4 = v49;
    v40 = *(v49 + 8 * v53);
    if ((v40 & (1 << v5)) == 0)
    {
      goto LABEL_33;
    }

    if (v52 != *(v50 + 36))
    {
      goto LABEL_34;
    }

    v41 = v40 & (-2 << (v5 & 0x3F));
    if (v41)
    {
      v8 = __clz(__rbit64(v41)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v42 = v53 << 6;
      v43 = v53 + 1;
      v44 = (v47 + 8 * v53);
      while (v43 < (v8 + 63) >> 6)
      {
        v46 = *v44++;
        v45 = v46;
        v42 += 64;
        ++v43;
        if (v46)
        {
          result = sub_1E142EA30(v54, v52, 0);
          v8 = __clz(__rbit64(v45)) + v42;
          goto LABEL_4;
        }
      }

      result = sub_1E142EA30(v54, v52, 0);
    }

LABEL_4:
    v7 = v51 + 1;
    v5 = v8;
    if (v51 + 1 == v48)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

AppStoreKit::PageFacets::Facet::DisplayType_optional __swiftcall PageFacets.Facet.DisplayType.init(rawValue:)(Swift::String rawValue)
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

uint64_t PageFacets.Facet.DisplayType.rawValue.getter()
{
  v1 = 0x6553656C676E6973;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C67676F74;
  }
}

uint64_t sub_1E166988C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6553656C676E6973;
  v4 = 0xEF6E6F697463656CLL;
  v5 = 0x80000001E1B56180;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001E1B56180;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656C67676F74;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6553656C676E6973;
  if (*a2 == 1)
  {
    v5 = 0xEF6E6F697463656CLL;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C67676F74;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

void sub_1E16699A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEF6E6F697463656CLL;
  v5 = 0x6553656C676E6973;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001E1B56180;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C67676F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E1669A14()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1669AC4()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1669B60()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t PageFacets.Facet.Option.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageFacets.Facet.Option.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageFacets.Facet.Option.systemImageName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PageFacets.Facet.Option.metricsValue.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PageFacets.Facet.Option.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a2;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v49 = a1;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  v20 = v19;
  v21 = *(v6 + 8);
  v47 = v5;
  v22 = v5;
  v23 = v21;
  v21(v17, v22);
  v46 = v20;
  if (v20)
  {
    v24 = v49;
    v45 = v18;
    sub_1E1AF381C();
    v25 = sub_1E166A0BC();
    v43 = v26;
    v44 = v25;
    v27 = v47;
    v23(v14, v47);
    sub_1E1AF381C();
    v28 = sub_1E166A0BC();
    v42 = v29;
    v23(v11, v27);
    sub_1E1AF381C();
    v30 = sub_1E166A0BC();
    v32 = v31;
    v33 = sub_1E1AF39DC();
    (*(*(v33 - 8) + 8))(v48, v33);
    v23(v24, v27);
    result = (v23)(v8, v27);
    v35 = v43;
    *a3 = v44;
    a3[1] = v35;
    v36 = v46;
    a3[2] = v45;
    a3[3] = v36;
    v37 = v42;
    a3[4] = v28;
    a3[5] = v37;
    a3[6] = v30;
    a3[7] = v32;
  }

  else
  {
    v38 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v39 = MEMORY[0x1E69E7CC0];
    *v40 = 0x656C746974;
    v40[1] = 0xE500000000000000;
    v40[2] = &type metadata for PageFacets.Facet;
    v40[3] = v39;
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69AB6A0], v38);
    swift_willThrow();
    v41 = sub_1E1AF39DC();
    (*(*(v41 - 8) + 8))(v48, v41);
    return (v23)(v49, v47);
  }

  return result;
}

uint64_t sub_1E166A0BC()
{
  sub_1E1AF37EC();
  if (v5)
  {
    sub_1E1301CF0(&v4, v6);
    sub_1E137A5C4(v6, &v4);
    if (swift_dynamicCast())
    {
      if (v3)
      {
        v0 = 1702195828;
      }

      else
      {
        v0 = 0x65736C6166;
      }

      goto LABEL_10;
    }

    sub_1E1380D6C();
    if (swift_dynamicCast())
    {
      v1 = [v3 stringValue];
      v0 = sub_1E1AF5DFC();

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v6);
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(&v4);
      return v0;
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
    if (swift_dynamicCast())
    {
      v0 = v3;
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1(&v4);
  }

  else
  {
    sub_1E1308058(&v4, &qword_1ECEB2DF0);
  }

  return 0;
}

void __swiftcall PageFacets.Facet.Option.init(value:title:systemImageName:metricsValue:)(AppStoreKit::PageFacets::Facet::Option *__return_ptr retstr, Swift::String_optional value, Swift::String title, Swift::String_optional systemImageName, Swift::String_optional metricsValue)
{
  retstr->value = value;
  retstr->title = title;
  retstr->systemImageName = systemImageName;
  retstr->metricsValue = metricsValue;
}

uint64_t sub_1E166A250()
{
  v1 = 0x65756C6176;
  v2 = 0x6D496D6574737973;
  if (*v0 != 2)
  {
    v2 = 0x567363697274656DLL;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_1E166A2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E166F860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E166A300(uint64_t a1)
{
  v2 = sub_1E166F2B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E166A33C(uint64_t a1)
{
  v2 = sub_1E166F2B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PageFacets.Facet.Option.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7540);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E166F2B8();
  sub_1E1AF76EC();
  v16 = 0;
  v10 = v12[7];
  sub_1E1AF73AC();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1E1AF73DC();
  v14 = 2;
  sub_1E1AF73AC();
  v13 = 3;
  sub_1E1AF73AC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t PageFacets.Facet.Option.hash(into:)()
{
  v1 = v0[5];
  v2 = v0[7];
  if (v0[1])
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
  }

  else
  {
    sub_1E1AF764C();
  }

  sub_1E1AF5F0C();
  if (!v1)
  {
    sub_1E1AF764C();
    if (v2)
    {
      goto LABEL_6;
    }

    return sub_1E1AF764C();
  }

  sub_1E1AF764C();
  sub_1E1AF5F0C();
  if (!v2)
  {
    return sub_1E1AF764C();
  }

LABEL_6:
  sub_1E1AF764C();

  return sub_1E1AF5F0C();
}

uint64_t PageFacets.Facet.Option.hashValue.getter()
{
  sub_1E1AF762C();
  PageFacets.Facet.Option.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t PageFacets.Facet.Option.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7550);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E166F2B8();
  sub_1E1AF76CC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1E1AF733C();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_1E1AF735C();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_1E1AF733C();
  v25 = v13;
  v33 = 3;
  v14 = sub_1E1AF733C();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_1E13C5038(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_1E13C5094(v32);
}

uint64_t sub_1E166A9B8()
{
  sub_1E1AF762C();
  PageFacets.Facet.Option.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E166A9FC()
{
  sub_1E1AF762C();
  PageFacets.Facet.Option.hash(into:)();
  return sub_1E1AF767C();
}

double PageFacets.Facet.init(id:parameterName:title:displayType:options:defaultOptions:displayOptionsInline:showsSelectedOptions:isHiddenFromMenu:metricsParameterName:clickAction:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = *a7;
  result = 0.0;
  *(a9 + 104) = 0u;
  *(a9 + 120) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 48) = v16;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 88) = a11;
  *(a9 + 89) = a12;
  *(a9 + 72) = a14;
  *(a9 + 80) = a15;
  *(a9 + 90) = a13;
  *(a9 + 96) = a16;
  return result;
}

uint64_t PageFacets.Facet.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v126 = a2;
  v117 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v112 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v102 - v7;
  v9 = sub_1E1AF5A6C();
  v10 = *(v9 - 8);
  v121 = v9;
  v122 = v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v110 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v102 - v13;
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v116 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v114 = &v102 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v113 = &v102 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v111 = &v102 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v118 = &v102 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v102 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v123 = &v102 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v102 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v102 - v34;
  sub_1E1AF381C();
  v115 = sub_1E1AF37CC();
  v37 = v36;
  v40 = *(v15 + 8);
  v39 = v15 + 8;
  v38 = v40;
  v40(v35, v14);
  v124 = v37;
  if (!v37)
  {
    v50 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v52 = v51;
    v53 = MEMORY[0x1E69E7CC0];
    *v51 = 25705;
    v51[1] = 0xE200000000000000;
    v51[2] = &type metadata for PageFacets.Facet;
    v51[3] = v53;
LABEL_10:
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69AB6A0], v50);
    swift_willThrow();
    v38(a1, v14);
    goto LABEL_11;
  }

  v125 = v38;
  sub_1E1AF381C();
  v41 = sub_1E1AF37CC();
  v42 = v125;
  v108 = v41;
  v44 = v43;
  v125(v33, v14);
  if (!v44)
  {

    v46 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v48 = v47;
    v49 = MEMORY[0x1E69E7CC0];
    *v47 = 0x656C746974;
    v47[1] = 0xE500000000000000;
    goto LABEL_7;
  }

  v109 = v44;
  v45 = v123;
  sub_1E1AF381C();
  sub_1E166F30C();
  sub_1E1AF36DC();
  v42 = v125;
  v125(v45, v14);
  if (v128 == 3)
  {

    v46 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v48 = v47;
    v49 = MEMORY[0x1E69E7CC0];
    *v47 = 0x5479616C70736964;
    v47[1] = 0xEB00000000657079;
LABEL_7:
    v47[2] = &type metadata for PageFacets.Facet;
    v47[3] = v49;
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69AB6A0], v46);
    swift_willThrow();
    v42(a1, v14);
LABEL_11:
    v58 = v126;
    v59 = sub_1E1AF39DC();
    return (*(*(v59 - 8) + 8))(v58, v59);
  }

  v127 = v128;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v38 = v125;
  v125(v28, v14);
  v54 = v121;
  v55 = v122;
  v104 = *(v122 + 48);
  if (v104(v8, 1, v121) == 1)
  {

    sub_1E1308058(v8, &qword_1ECEB1F90);
    v50 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v52 = v56;
    v57 = MEMORY[0x1E69E7CC0];
    *v56 = 0x736E6F6974706FLL;
    v56[1] = 0xE700000000000000;
    v56[2] = &type metadata for PageFacets.Facet;
    v56[3] = v57;
    goto LABEL_10;
  }

  v105 = v39;
  v106 = v14;
  v61 = *(v55 + 32);
  v62 = v120;
  v103 = v61;
  v63 = v61(v120, v8, v54);
  v107 = a1;
  MEMORY[0x1EEE9AC00](v63);
  *(&v102 - 2) = v126;
  v64 = sub_1E1AF59FC();
  v65 = v107;
  if (v127 && !*(v64 + 16))
  {

    v79 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v80 = MEMORY[0x1E69E7CC0];
    *v81 = 0x736E6F6974706FLL;
    v81[1] = 0xE700000000000000;
    v81[2] = &type metadata for PageFacets.Facet;
    v81[3] = v80;
    (*(*(v79 - 8) + 104))(v81, *MEMORY[0x1E69AB6A0], v79);
    swift_willThrow();
    v125(v65, v106);
    (*(v122 + 8))(v62, v54);
    goto LABEL_11;
  }

  v119 = v64;
  v66 = v118;
  sub_1E1AF381C();
  v102 = sub_1E1AF37CC();
  v68 = v67;
  v69 = v106;
  v70 = v125;
  v125(v66, v106);
  v118 = v68;
  if (!v68)
  {

    v76 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v77 = MEMORY[0x1E69E7CC0];
    strcpy(v78, "parameterName");
    *(v78 + 7) = -4864;
    *(v78 + 2) = &type metadata for PageFacets.Facet;
    *(v78 + 3) = v77;
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x1E69AB6A0], v76);
    swift_willThrow();
    v70(v107, v69);
    (*(v122 + 8))(v62, v121);
    goto LABEL_11;
  }

  v71 = v111;
  sub_1E1AF381C();
  v72 = v112;
  sub_1E1AF374C();
  v70(v71, v69);
  v73 = v121;
  v74 = v104(v72, 1, v121);
  v75 = v126;
  if (v74 == 1)
  {
    sub_1E1308058(v72, &qword_1ECEB1F90);
    v112 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v82 = v110;
    v83 = v103(v110, v72, v73);
    MEMORY[0x1EEE9AC00](v83);
    *(&v102 - 2) = v75;
    v84 = sub_1E1AF59FC();
    v112 = sub_1E13C4838(v84);

    (*(v122 + 8))(v82, v73);
  }

  v85 = v113;
  v86 = v107;
  sub_1E1AF381C();
  LODWORD(v111) = sub_1E1AF370C();
  v87 = v106;
  v88 = v125;
  v125(v85, v106);
  v89 = v114;
  sub_1E1AF381C();
  LODWORD(v113) = sub_1E1AF370C();
  v88(v89, v87);
  v90 = v116;
  sub_1E1AF381C();
  LODWORD(v114) = sub_1E1AF370C();
  v88(v90, v87);
  v91 = v123;
  sub_1E1AF381C();
  v116 = sub_1E1AF37CC();
  v110 = v92;
  v88(v91, v87);
  type metadata accessor for Action();
  sub_1E1AF381C();
  v93 = v126;
  v94 = static Action.tryToMakeInstance(byDeserializing:using:)(v91, v126);
  v88(v86, v87);
  v88(v91, v87);
  (*(v122 + 8))(v120, v121);
  v95 = v117;
  *(v117 + 120) = 0u;
  *(v95 + 104) = 0u;
  v96 = v124;
  *v95 = v115;
  *(v95 + 8) = v96;
  v97 = v109;
  *(v95 + 32) = v108;
  *(v95 + 40) = v97;
  v98 = v118;
  *(v95 + 16) = v102;
  *(v95 + 24) = v98;
  *(v95 + 48) = v127;
  v99 = v112;
  *(v95 + 56) = v119;
  *(v95 + 64) = v99;
  *(v95 + 88) = v113 & 1;
  *(v95 + 89) = v111 & 1;
  v100 = v110;
  *(v95 + 72) = v116;
  *(v95 + 80) = v100;
  *(v95 + 90) = v114 & 1;
  *(v95 + 96) = v94;
  v101 = sub_1E1AF39DC();
  return (*(*(v101 - 8) + 8))(v93, v101);
}

uint64_t sub_1E166B9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v5 + 16))(v7, a2, v4);
  sub_1E166FAB8();
  return sub_1E1AF464C();
}

uint64_t PageFacets.Facet.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageFacets.Facet.parameterName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageFacets.Facet.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PageFacets.Facet.metricsParameterName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t PageFacets.Facet.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();

  sub_1E166DD10(a1, *(v2 + 64));
  sub_1E166D858(a1, *(v2 + 56));
  sub_1E1AF764C();
  sub_1E1AF764C();
  return sub_1E1AF764C();
}

uint64_t PageFacets.Facet.hashValue.getter()
{
  sub_1E1AF762C();
  PageFacets.Facet.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E166BDB0()
{
  sub_1E1AF762C();
  PageFacets.Facet.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E166BDF4()
{
  sub_1E1AF762C();
  PageFacets.Facet.hash(into:)(v1);
  return sub_1E1AF767C();
}

AppStoreKit::PageFacets::FacetGroup __swiftcall PageFacets.FacetGroup.init(title:facets:)(Swift::String_optional title, Swift::OpaquePointer facets)
{
  *v2 = title;
  *(v2 + 16) = facets;
  result.title = title;
  result.facets = facets;
  return result;
}

uint64_t PageFacets.FacetGroup.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a3;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v33 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v32 = *(v6 + 8);
  v32(v11, v5);
  v15 = sub_1E1AF5A6C();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);
  v34 = a2;
  if (v17 != 1)
  {
    MEMORY[0x1EEE9AC00](v17);
    *(&v30 - 2) = a2;
    v18 = sub_1E1AF59FC();
    (*(v16 + 8))(v14, v15);
    if (*(v18 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:

    v26 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v27 = 0x737465636166;
    v27[1] = 0xE600000000000000;
    v27[2] = &type metadata for PageFacets.FacetGroup;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x1E69AB690], v26);
    swift_willThrow();
    v32(v33, v5);
    goto LABEL_6;
  }

  sub_1E1308058(v14, &qword_1ECEB1F90);
  v18 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = v33;
  sub_1E1AF381C();
  v20 = sub_1E1AF37CC();
  v22 = v21;
  v23 = v19;
  v24 = v32;
  v32(v23, v5);
  v24(v8, v5);
  v25 = v31;
  *v31 = v20;
  v25[1] = v22;
  v25[2] = v18;
LABEL_6:
  v28 = sub_1E1AF39DC();
  return (*(*(v28 - 8) + 8))(v34, v28);
}

uint64_t sub_1E166C294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  sub_1E166FA64();
  return sub_1E1AF464C();
}

uint64_t PageFacets.FacetGroup.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageFacets.FacetGroup.facets.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PageFacets.FacetGroup.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
  }

  else
  {
    sub_1E1AF764C();
  }

  return sub_1E166D9C8(a1, v3);
}

uint64_t static PageFacets.FacetGroup.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_1E1AF74AC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_1E1570A78(v4, v6);
}

uint64_t PageFacets.FacetGroup.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E1AF762C();
  sub_1E1AF764C();
  if (v1)
  {
    sub_1E1AF5F0C();
  }

  sub_1E166D9C8(v4, v2);
  return sub_1E1AF767C();
}

uint64_t sub_1E166C628()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E1AF762C();
  sub_1E1AF764C();
  if (v1)
  {
    sub_1E1AF5F0C();
  }

  sub_1E166D9C8(v4, v2);
  return sub_1E1AF767C();
}

uint64_t sub_1E166C6A8(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
  }

  else
  {
    sub_1E1AF764C();
  }

  return sub_1E166D9C8(a1, v3);
}

uint64_t sub_1E166C728()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E1AF762C();
  sub_1E1AF764C();
  if (v1)
  {
    sub_1E1AF5F0C();
  }

  sub_1E166D9C8(v4, v2);
  return sub_1E1AF767C();
}

uint64_t sub_1E166C7BC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_1E1AF74AC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_1E1570A78(v4, v6);
}

AppStoreKit::PageFacets __swiftcall PageFacets.init(facetGroups:resetButtonTitle:allowsResetButton:)(Swift::OpaquePointer facetGroups, Swift::String_optional resetButtonTitle, Swift::Bool allowsResetButton)
{
  countAndFlagsBits = resetButtonTitle.value._countAndFlagsBits;
  rawValue = facetGroups._rawValue;
  v7 = v3;
  if (!resetButtonTitle.value._object)
  {
    resetButtonTitle.value._countAndFlagsBits = 0x80000001E1B6CEC0;
    v8 = 0xD00000000000001DLL;
    v9 = 0xE000000000000000;
    v10 = localizedString(_:comment:)(*(&resetButtonTitle - 8), *&resetButtonTitle.value._object);
    resetButtonTitle.value._countAndFlagsBits = v10._object;
    facetGroups._rawValue = v10._countAndFlagsBits;
    countAndFlagsBits = v10._countAndFlagsBits;
    resetButtonTitle.value._object = v10._object;
  }

  *v7 = rawValue;
  *(v7 + 8) = countAndFlagsBits;
  *(v7 + 16) = resetButtonTitle.value._object;
  *(v7 + 24) = allowsResetButton;
  result.resetButtonTitle = resetButtonTitle;
  result.facetGroups = facetGroups;
  result.allowsResetButton = allowsResetButton;
  return result;
}

uint64_t PageFacets.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v35 = a2;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v33 - v15;
  v36 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v17 = *(v5 + 8);
  v17(v13, v4);
  v18 = sub_1E1AF5A6C();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v16, 1, v18);
  if (v20 == 1)
  {
    sub_1E1308058(v16, &qword_1ECEB1F90);
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v33[1] = v33;
    MEMORY[0x1EEE9AC00](v20);
    v33[-2] = v35;
    v21 = sub_1E1AF59FC();
    (*(v19 + 8))(v16, v18);
  }

  sub_1E1AF381C();
  countAndFlagsBits = sub_1E1AF37CC();
  object = v23;
  v17(v10, v4);
  sub_1E1AF381C();
  v25 = sub_1E1AF370C();
  v17(v7, v4);
  if (!object)
  {
    v26._countAndFlagsBits = 0xD00000000000001DLL;
    v26._object = 0x80000001E1B6CEC0;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v28 = localizedString(_:comment:)(v26, v27);
    countAndFlagsBits = v28._countAndFlagsBits;
    object = v28._object;
  }

  v29 = v35;
  v17(v36, v4);
  v30 = v34;
  *v34 = v21;
  v30[1] = countAndFlagsBits;
  v30[2] = object;
  *(v30 + 24) = v25 & 1;
  v31 = sub_1E1AF39DC();
  return (*(*(v31 - 8) + 8))(v29, v31);
}

uint64_t sub_1E166CC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  sub_1E166FA10();
  return sub_1E1AF464C();
}

uint64_t PageFacets.facetGroups.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PageFacets.resetButtonTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PageFacets.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  sub_1E166DB18(a1, *v1);
  sub_1E1AF764C();
  if (v2)
  {
    sub_1E1AF5F0C();
  }

  return sub_1E1AF764C();
}

uint64_t static PageFacets.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (sub_1E15704CC(*a1, *a2))
  {
    if (v3)
    {
      if (v6 && (v2 == v5 && v3 == v6 || (sub_1E1AF74AC() & 1) != 0))
      {
        return v4 ^ v7 ^ 1u;
      }
    }

    else if (!v6)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return 0;
}

uint64_t sub_1E166CF98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (sub_1E15704CC(*a1, *a2))
  {
    if (v3)
    {
      if (v6 && (v2 == v5 && v3 == v6 || (sub_1E1AF74AC() & 1) != 0))
      {
        return v4 ^ v7 ^ 1u;
      }
    }

    else if (!v6)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return 0;
}

uint64_t sub_1E166D05C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E1AEFE6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v30 - v7;
  v8 = sub_1E1AEFCCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v30 - v13;
  if (a2 >> 62)
  {
    v29 = sub_1E1AF71CC();
    MEMORY[0x1E6900360](v29);
    result = sub_1E1AF71CC();
    v16 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x1E6900360](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), v12);
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return result;
    }
  }

  if (v16 >= 1)
  {
    v17 = 0;
    v18 = v4;
    v19 = a2 & 0xC000000000000001;
    v32 = (v9 + 8);
    v33 = (v9 + 32);
    v37 = (v18 + 48);
    v38 = (v9 + 48);
    v30 = (v18 + 8);
    v31 = (v18 + 32);
    v39 = v8;
    v40 = a2;
    v34 = v3;
    while (1)
    {
      if (v19)
      {
        v21 = MEMORY[0x1E68FFD80](v17, a2);
      }

      else
      {
        v21 = *(a2 + 8 * v17 + 32);
      }

      sub_1E1AF5F0C();
      if (*(v21 + 40))
      {
        sub_1E1AF764C();
        sub_1E1AF5F0C();
        if (!*(v21 + 56))
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1E1AF764C();
        if (!*(v21 + 56))
        {
LABEL_14:
          sub_1E1AF764C();
          goto LABEL_15;
        }
      }

      sub_1E1AF764C();
      sub_1E1AF5F0C();
LABEL_15:
      a2 = v40;
      sub_1E1AF764C();
      sub_1E134FD1C(v21 + OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_url, v14, &unk_1ECEB4B60);
      v22 = v39;
      if ((*v38)(v14, 1, v39) == 1)
      {
        sub_1E1AF764C();
      }

      else
      {
        v23 = v19;
        v24 = v16;
        v25 = a2;
        v26 = v35;
        (*v33)(v35, v14, v22);
        sub_1E1AF764C();
        sub_1E166F9C8(&qword_1EE1E2330, MEMORY[0x1E6968FB0]);
        sub_1E1AF5D1C();
        v27 = v26;
        a2 = v25;
        v16 = v24;
        v19 = v23;
        v3 = v34;
        (*v32)(v27, v22);
      }

      v28 = v41;
      sub_1E134FD1C(v21 + OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_eventStartDate, v41, &unk_1ECEBB780);
      if ((*v37)(v28, 1, v3) == 1)
      {
        sub_1E1AF764C();
      }

      else
      {
        v20 = v36;
        (*v31)(v36, v28, v3);
        sub_1E1AF764C();
        sub_1E166F9C8(&qword_1ECEB6B70, MEMORY[0x1E6969530]);
        sub_1E1AF5D1C();

        result = (*v30)(v20, v3);
      }

      if (v16 == ++v17)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E166D5B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v11 = sub_1E1AF71CC();
    MEMORY[0x1E6900360](v11);
    result = sub_1E1AF71CC();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x1E6900360](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = MEMORY[0x1E68FFD80](i, a2);
      sub_1E1AF5F0C();

      if ((*(v6 + 56) & 1) == 0)
      {
        if ((*(v6 + 48) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v7 = *(v6 + 48);
        }

        else
        {
          v7 = 0;
        }

        MEMORY[0x1E6900390](v7);
      }

      result = swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = (a2 + 32);
    do
    {
      v9 = *v8;

      sub_1E1AF5F0C();

      if ((*(v9 + 56) & 1) == 0)
      {
        if ((*(v9 + 48) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = *(v9 + 48);
        }

        else
        {
          v10 = 0;
        }

        MEMORY[0x1E6900390](v10);
      }

      ++v8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1E166D858(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E6900360](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 40);
      if (*(v5 - 8))
      {
        sub_1E1AF764C();

        sub_1E1AF5F0C();
      }

      else
      {
        sub_1E1AF764C();
      }

      sub_1E1AF5F0C();
      if (v6)
      {
        sub_1E1AF764C();
        sub_1E1AF5F0C();
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1E1AF764C();
        if (!v7)
        {
LABEL_12:
          sub_1E1AF764C();
          goto LABEL_4;
        }
      }

      sub_1E1AF764C();
      sub_1E1AF5F0C();
LABEL_4:

      v5 += 64;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E166D9C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1E6900360](v4);
  if (v4)
  {
    v6 = a2 + 32;
    do
    {
      sub_1E141D0E8(v6, v7);
      sub_1E1AF5F0C();
      sub_1E1AF5F0C();
      sub_1E1AF5F0C();
      sub_1E1AF5F0C();

      sub_1E166DD10(a1, v7[8]);
      sub_1E166D858(a1, v7[7]);
      sub_1E1AF764C();
      sub_1E1AF764C();
      sub_1E1AF764C();
      result = sub_1E141D144(v7);
      v6 += 136;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1E166DB18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1E6900360](v4);
  if (v4)
  {
    v6 = 0;
    v11 = a2 + 32;
    do
    {
      v7 = v11 + 24 * v6;
      v8 = *(v7 + 16);
      if (*(v7 + 8))
      {
        sub_1E1AF764C();

        sub_1E1AF5F0C();
      }

      else
      {
        sub_1E1AF764C();
      }

      MEMORY[0x1E6900360](*(v8 + 16));
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = v8 + 32;
        do
        {
          sub_1E141D0E8(v10, v12);
          sub_1E1AF5F0C();
          sub_1E1AF5F0C();
          sub_1E1AF5F0C();
          sub_1E1AF5F0C();

          sub_1E166DD10(a1, v12[8]);
          sub_1E166D858(a1, v12[7]);
          sub_1E1AF764C();
          sub_1E1AF764C();
          sub_1E1AF764C();
          sub_1E141D144(v12);
          v10 += 136;
          --v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t sub_1E166DD10(uint64_t a1, uint64_t a2)
{
  sub_1E1AF767C();
  v17 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v18 = v9;
LABEL_12:
    v13 = (*(v17 + 48) + ((v10 << 12) | (__clz(__rbit64(v6)) << 6)));
    v14 = v13[1];
    v15 = v13[5];
    v16 = v13[7];
    sub_1E1AF762C();
    sub_1E1AF764C();

    if (v14)
    {

      sub_1E1AF5F0C();
    }

    sub_1E1AF5F0C();
    if (v15)
    {
      sub_1E1AF764C();
      sub_1E1AF5F0C();
      if (!v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1E1AF764C();
      if (!v16)
      {
LABEL_4:
        sub_1E1AF764C();
        goto LABEL_5;
      }
    }

    sub_1E1AF764C();
    sub_1E1AF5F0C();
LABEL_5:
    v6 &= v6 - 1;
    v11 = sub_1E1AF767C();

    v9 = v11 ^ v18;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x1E6900360](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v18 = v9;
      v10 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11AppStoreKit10PageFacetsV5FacetV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1E1AF74AC() & 1) == 0)
  {
    goto LABEL_39;
  }

  v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v5 && (sub_1E1AF74AC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1E1AF74AC() & 1) == 0)
  {
    goto LABEL_39;
  }

  v6 = 0x6553656C676E6973;
  v7 = 0xEF6E6F697463656CLL;
  v8 = 0x80000001E1B56180;
  if (*(a1 + 48) != 1)
  {
    v6 = 0xD000000000000011;
    v7 = 0x80000001E1B56180;
  }

  if (*(a1 + 48))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0x656C67676F74;
  }

  if (*(a1 + 48))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  v11 = 0x6553656C676E6973;
  if (*(a2 + 48) == 1)
  {
    v8 = 0xEF6E6F697463656CLL;
  }

  else
  {
    v11 = 0xD000000000000011;
  }

  if (*(a2 + 48))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x656C67676F74;
  }

  if (*(a2 + 48))
  {
    v13 = v8;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v9 == v12 && v10 == v13)
  {
  }

  else
  {
    v14 = sub_1E1AF74AC();

    if ((v14 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if ((sub_1E16B0884(*(a1 + 64), *(a2 + 64)) & 1) != 0 && (sub_1E156EDEC(*(a1 + 56), *(a2 + 56)) & 1) != 0 && *(a1 + 88) == *(a2 + 88) && *(a1 + 89) == *(a2 + 89))
  {
    v15 = *(a1 + 90) ^ *(a2 + 90) ^ 1;
    return v15 & 1;
  }

LABEL_39:
  v15 = 0;
  return v15 & 1;
}

uint64_t _s11AppStoreKit10PageFacetsV5FacetV6OptionV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[7];
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[7];
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v16 = a2[6];
    v17 = a1[6];
    if ((*a1 != *a2 || v3 != v9) && (sub_1E1AF74AC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = a2[6];
    v17 = a1[6];
    if (v9)
    {
      return 0;
    }
  }

  if ((v4 != v10 || v6 != v11) && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v13 || (v5 != v12 || v7 != v13) && (sub_1E1AF74AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (v14 && (v17 == v16 && v8 == v14 || (sub_1E1AF74AC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
}

uint64_t _s11AppStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(uint64_t a1)
{
  v2 = sub_1E159D918(MEMORY[0x1E69E7CC0]);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = &unk_1E1B3AB40;
  v32 = v7;
  while (v6)
  {
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v8 << 6);
    sub_1E141D0E8(*(a1 + 48) + 136 * v12, v39);
    v13 = *(*(a1 + 56) + 8 * v12);
    v36[6] = v39[6];
    v36[7] = v39[7];
    v36[2] = v39[2];
    v36[3] = v39[3];
    v36[4] = v39[4];
    v36[5] = v39[5];
    v36[0] = v39[0];
    v36[1] = v39[1];
    v37 = v40;
    v38 = v13;
    v14 = v9;
    sub_1E134FD1C(v36, v33, &qword_1ECEB7580);

    v16 = v34;
    v15 = v35;

    sub_1E141D144(v33);
    v17 = sub_1E16692C4(v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1E13018F8(v16, v15);
    v21 = v2[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_23;
    }

    v25 = v20;
    if (v2[3] < v24)
    {
      sub_1E16885F8(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1E13018F8(v16, v15);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v9 = v14;
      if (v25)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v30 = v19;
    sub_1E1415820();
    v19 = v30;
    v9 = v14;
    if (v25)
    {
LABEL_4:
      v10 = v19;

      *(v2[7] + 8 * v10) = v17;

      goto LABEL_5;
    }

LABEL_17:
    v2[(v19 >> 6) + 8] |= 1 << v19;
    v27 = (v2[6] + 16 * v19);
    *v27 = v16;
    v27[1] = v15;
    *(v2[7] + 8 * v19) = v17;
    v28 = v2[2];
    v23 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v23)
    {
      goto LABEL_24;
    }

    v2[2] = v29;
LABEL_5:
    v6 &= v6 - 1;
    sub_1E1308058(v36, &qword_1ECEB7580);
    v7 = v32;
    v3 = a1 + 64;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E166E56C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v15 = sub_1E159FA90(MEMORY[0x1E69E7CC0]);
    v16 = *(v5 + 2);
    if (!v16)
    {
LABEL_58:

      return v15;
    }

    v17 = 0;
    v18 = (v5 + 32);
    v19 = MEMORY[0x1E69E7CD0];
    while (1)
    {
      if (v17 >= *(v5 + 2))
      {
        goto LABEL_62;
      }

      sub_1E141D0E8(v18, v65);
      if (!v66)
      {
        break;
      }

      if (v66 != 1 || (v20 = v67, !*(v67 + 16)))
      {
        sub_1E141D0E8(v65, v64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v61[0] = v15;
        v37 = sub_1E15951A4(v64);
        v39 = v15[2];
        v40 = (v38 & 1) == 0;
        v13 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v13)
        {
          goto LABEL_64;
        }

        v42 = v38;
        if (v15[3] < v41)
        {
          sub_1E168ACD4(v41, isUniquelyReferenced_nonNull_native);
          v37 = sub_1E15951A4(v64);
          if ((v42 & 1) != (v43 & 1))
          {
            goto LABEL_70;
          }

          goto LABEL_41;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_41:
          v15 = *&v61[0];
          if ((v42 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v57 = v37;
          sub_1E1417014();
          v37 = v57;
          v15 = *&v61[0];
          if ((v42 & 1) == 0)
          {
LABEL_42:
            v15[(v37 >> 6) + 8] |= 1 << v37;
            v51 = v37;
            sub_1E141D0E8(v64, v15[6] + 136 * v37);
            *(v15[7] + 8 * v51) = v19;
            sub_1E141D144(v64);
            v52 = v15[2];
            v13 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (v13)
            {
              goto LABEL_67;
            }

LABEL_48:
            v15[2] = v53;
            goto LABEL_23;
          }
        }

        goto LABEL_22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2630);
      inited = swift_initStackObject();
      inited[1] = xmmword_1E1B02CC0;
      v22 = v20[2];
      v23 = v20[3];
      v24 = v20[5];
      v62 = v20[4];
      v25 = v62;
      v63 = v24;
      v61[0] = v22;
      v61[1] = v23;
      v26 = v20[3];
      inited[2] = v20[2];
      inited[3] = v26;
      inited[4] = v25;
      inited[5] = v24;
      sub_1E13C5038(v61, v64);
      v27 = sub_1E13C4838(inited);
      swift_setDeallocating();
      sub_1E13C5094((inited + 2));
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v29 = sub_1E15951A4(v65);
      v31 = v15[2];
      v32 = (v30 & 1) == 0;
      v13 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v13)
      {
        goto LABEL_68;
      }

      v34 = v30;
      if (v15[3] >= v33)
      {
        if ((v28 & 1) == 0)
        {
          v59 = v29;
          sub_1E1417014();
          v29 = v59;
        }
      }

      else
      {
        sub_1E168ACD4(v33, v28);
        v29 = sub_1E15951A4(v65);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_70;
        }
      }

      if (v34)
      {
        *(v15[7] + 8 * v29) = v27;
      }

      else
      {
        v56 = v29;
        sub_1E141D0E8(v65, v64);
        sub_1E165F608(v56, v64, v27, v15);
      }

LABEL_23:
      sub_1E141D144(v65);
      ++v17;
      v18 += 136;
      if (v16 == v17)
      {
        goto LABEL_58;
      }
    }

    sub_1E141D0E8(v65, v64);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    *&v61[0] = v15;
    v37 = sub_1E15951A4(v64);
    v46 = v15[2];
    v47 = (v45 & 1) == 0;
    v13 = __OFADD__(v46, v47);
    v48 = v46 + v47;
    if (v13)
    {
      goto LABEL_66;
    }

    v49 = v45;
    if (v15[3] >= v48)
    {
      if ((v44 & 1) == 0)
      {
        v58 = v37;
        sub_1E1417014();
        v37 = v58;
        v15 = *&v61[0];
        if ((v49 & 1) == 0)
        {
LABEL_47:
          v15[(v37 >> 6) + 8] |= 1 << v37;
          v54 = v37;
          sub_1E141D0E8(v64, v15[6] + 136 * v37);
          *(v15[7] + 8 * v54) = v19;
          sub_1E141D144(v64);
          v55 = v15[2];
          v13 = __OFADD__(v55, 1);
          v53 = v55 + 1;
          if (v13)
          {
            goto LABEL_69;
          }

          goto LABEL_48;
        }

        goto LABEL_22;
      }
    }

    else
    {
      sub_1E168ACD4(v48, v44);
      v37 = sub_1E15951A4(v64);
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_70;
      }
    }

    v15 = *&v61[0];
    if ((v49 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_22:
    *(v15[7] + 8 * v37) = v19;

    sub_1E141D144(v64);
    goto LABEL_23;
  }

  v3 = 0;
  v4 = (v1 + 48);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_60;
    }

    v10 = swift_isUniquelyReferenced_nonNull_native();
    if (v10 && v9 <= *(v5 + 3) >> 1)
    {
      if (!*(v6 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1E172DFB0(v10, v11, 1, v5);
      if (!*(v6 + 16))
      {
LABEL_3:

        if (v7)
        {
          goto LABEL_61;
        }

        goto LABEL_4;
      }
    }

    if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
    {
      goto LABEL_63;
    }

    swift_arrayInitWithCopy();

    if (v7)
    {
      v12 = *(v5 + 2);
      v13 = __OFADD__(v12, v7);
      v14 = v12 + v7;
      if (v13)
      {
        goto LABEL_65;
      }

      *(v5 + 2) = v14;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}