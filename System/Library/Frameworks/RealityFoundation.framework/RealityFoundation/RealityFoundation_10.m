uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA05ModelD0V_TtB5(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v37 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v37 - v20;
  v37[0] = *(a6 + 16);
  result = REComponentClassFromType();
  if (result)
  {
    if (a1)
    {
      v38[0] = a1;
      v38[1] = a2;
      v39 = a3;
      v40 = a4;

      ComponentByClass = REEntityGetComponentByClass();
      v24 = ComponentByClass;
      if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents()) != 0)
      {
        v25 = MEMORY[0x1EEE9AC00](ComponentByClass);
        v37[-4] = v38;
        v37[-3] = v25;
        LOBYTE(v37[-2]) = a5 & 1;
        _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), &v37[-6], &type metadata for ModelComponent, &protocol witness table for ModelComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
        if (!v24)
        {
          REEntitySendAddAndActivateComponentEvents();
        }
      }
    }

    v26 = *(a6 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v21, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v28 = type metadata accessor for ObservationRegistrar();
      v29 = *(v28 - 8);
      v30 = *(v29 + 48);
      if (v30(v21, 1, v28) != 1)
      {
        v31 = outlined destroy of BodyTrackingComponent?(v21, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v31);
        v37[-4] = &type metadata for ModelComponent;
        v37[-3] = &protocol witness table for ModelComponent;
        v37[-2] = &type metadata for ModelComponent;
        swift_getKeyPath();
        v32 = *(a6 + 16);
        v33 = REEntityGetObservationRegistrar();
        if (v33)
        {
          outlined init with copy of [String : String](v33, v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v30(v19, 1, v28) != 1)
          {
            v38[0] = a6;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v29 + 8))(v19, v28);
            goto LABEL_19;
          }
        }

        else
        {
          (*(v29 + 56))(v19, 1, 1, v28);
        }

        outlined destroy of BodyTrackingComponent?(v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_19:
        REEntityRemoveComponentByClass();
        v35 = *(a6 + 16);
        v36 = REEntityGetObservationRegistrar();
        if (v36)
        {
          outlined init with copy of [String : String](v36, v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v30(v16, 1, v28) != 1)
          {
            v38[0] = a6;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v29 + 8))(v16, v28);
          }
        }

        else
        {
          (*(v29 + 56))(v16, 1, 1, v28);
        }

        outlined destroy of BodyTrackingComponent?(v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v34 = type metadata accessor for ObservationRegistrar();
      (*(*(v34 - 8) + 56))(v21, 1, 1, v34);
    }

    outlined destroy of BodyTrackingComponent?(v21, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation017__ImageBasedLightD0V_TtB5(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v34 - v16;
  v18 = *(a4 + 16);
  result = REComponentClassFromType();
  if (result)
  {
    if (a1 != 1)
    {
      v35 = a1;
      v36 = a2;

      ComponentByClass = REEntityGetComponentByClass();
      v29 = ComponentByClass;
      if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents()) != 0)
      {
        MEMORY[0x1EEE9AC00](ComponentByClass);
        v34[-4] = &v35;
        v34[-3] = v30;
        LOBYTE(v34[-2]) = a3 & 1;
        _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), &v34[-6], &type metadata for __ImageBasedLightComponent, &protocol witness table for __ImageBasedLightComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
        if (!v29)
        {
          REEntitySendAddAndActivateComponentEvents();
        }
      }
    }

    v20 = *(a4 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v22 = type metadata accessor for ObservationRegistrar();
      v23 = *(v22 - 8);
      v24 = *(v23 + 48);
      if (v24(v17, 1, v22) != 1)
      {
        v25 = outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v25);
        v34[-4] = &type metadata for __ImageBasedLightComponent;
        v34[-3] = &protocol witness table for __ImageBasedLightComponent;
        v34[-2] = &type metadata for __ImageBasedLightComponent;
        v34[0] = swift_getKeyPath();
        v26 = *(a4 + 16);
        v27 = REEntityGetObservationRegistrar();
        if (v27)
        {
          outlined init with copy of [String : String](v27, v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v24(v14, 1, v22) != 1)
          {
            v35 = a4;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v23 + 8))(v14, v22);
            goto LABEL_17;
          }
        }

        else
        {
          (*(v23 + 56))(v14, 1, 1, v22);
        }

        outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_17:
        REEntityRemoveComponentByClass();
        v32 = *(a4 + 16);
        v33 = REEntityGetObservationRegistrar();
        if (v33)
        {
          outlined init with copy of [String : String](v33, v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v24(v11, 1, v22) != 1)
          {
            v35 = a4;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v23 + 8))(v11, v22);
          }
        }

        else
        {
          (*(v23 + 56))(v11, 1, 1, v22);
        }

        outlined destroy of BodyTrackingComponent?(v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v31 = type metadata accessor for ObservationRegistrar();
      (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    }

    outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation038_proto_StereoProjectiveTransformCameraD3_v1V_TtB5(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v36 - v18;
  v20 = *(a5 + 16);
  result = REComponentClassFromType();
  if (!result)
  {
    return result;
  }

  if (!a1)
  {
    v25 = *(a5 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v27 = type metadata accessor for ObservationRegistrar();
      v28 = *(v27 - 8);
      v29 = *(v28 + 48);
      if (v29(v19, 1, v27) != 1)
      {
        v30 = outlined destroy of BodyTrackingComponent?(v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v30);
        v36[-4] = &type metadata for _proto_StereoProjectiveTransformCameraComponent_v1;
        v36[-3] = &protocol witness table for _proto_StereoProjectiveTransformCameraComponent_v1;
        v36[-2] = &type metadata for _proto_StereoProjectiveTransformCameraComponent_v1;
        v36[1] = swift_getKeyPath();
        v31 = *(a5 + 16);
        v32 = REEntityGetObservationRegistrar();
        if (v32)
        {
          outlined init with copy of [String : String](v32, v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v29(v16, 1, v27) != 1)
          {
            v37[0] = a5;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v28 + 8))(v16, v27);
            goto LABEL_17;
          }
        }

        else
        {
          (*(v28 + 56))(v16, 1, 1, v27);
        }

        outlined destroy of BodyTrackingComponent?(v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_17:
        REEntityRemoveComponentByClass();
        v34 = *(a5 + 16);
        v35 = REEntityGetObservationRegistrar();
        if (v35)
        {
          outlined init with copy of [String : String](v35, v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v29(v13, 1, v27) != 1)
          {
            v37[0] = a5;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v28 + 8))(v13, v27);
          }
        }

        else
        {
          (*(v28 + 56))(v13, 1, 1, v27);
        }

        outlined destroy of BodyTrackingComponent?(v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v33 = type metadata accessor for ObservationRegistrar();
      (*(*(v33 - 8) + 56))(v19, 1, 1, v33);
    }

    outlined destroy of BodyTrackingComponent?(v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  v37[0] = a1;
  v37[1] = a2;
  v37[2] = a3;

  ComponentByClass = REEntityGetComponentByClass();
  v23 = ComponentByClass;
  if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents()) != 0)
  {
    MEMORY[0x1EEE9AC00](ComponentByClass);
    v36[-4] = v37;
    v36[-3] = v24;
    LOBYTE(v36[-2]) = a4 & 1;
    _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), &v36[-6], &type metadata for _proto_StereoProjectiveTransformCameraComponent_v1, &protocol witness table for _proto_StereoProjectiveTransformCameraComponent_v1, specialized Entity.withMutation<A, B>(keyPath:_:));
    if (!v23)
    {
      REEntitySendAddAndActivateComponentEvents();
    }
  }
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation013PhysicsJointsD0V_TtB5(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v34 - v16;
  v18 = *(a4 + 16);
  result = REComponentClassFromType();
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    v23 = *(a4 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v25 = type metadata accessor for ObservationRegistrar();
      v26 = *(v25 - 8);
      v27 = *(v26 + 48);
      if (v27(v17, 1, v25) != 1)
      {
        v28 = outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v28);
        v34[-4] = &type metadata for PhysicsJointsComponent;
        v34[-3] = &protocol witness table for PhysicsJointsComponent;
        v34[-2] = &type metadata for PhysicsJointsComponent;
        v34[0] = swift_getKeyPath();
        v29 = *(a4 + 16);
        v30 = REEntityGetObservationRegistrar();
        if (v30)
        {
          outlined init with copy of [String : String](v30, v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v27(v14, 1, v25) != 1)
          {
            v35[0] = a4;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v26 + 8))(v14, v25);
            goto LABEL_17;
          }
        }

        else
        {
          (*(v26 + 56))(v14, 1, 1, v25);
        }

        outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_17:
        REEntityRemoveComponentByClass();
        v32 = *(a4 + 16);
        v33 = REEntityGetObservationRegistrar();
        if (v33)
        {
          outlined init with copy of [String : String](v33, v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v27(v11, 1, v25) != 1)
          {
            v35[0] = a4;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v26 + 8))(v11, v25);
          }
        }

        else
        {
          (*(v26 + 56))(v11, 1, 1, v25);
        }

        outlined destroy of BodyTrackingComponent?(v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v31 = type metadata accessor for ObservationRegistrar();
      (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    }

    outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  v35[0] = a1;
  v35[1] = a2;

  ComponentByClass = REEntityGetComponentByClass();
  v21 = ComponentByClass;
  if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents()) != 0)
  {
    MEMORY[0x1EEE9AC00](ComponentByClass);
    v34[-4] = v35;
    v34[-3] = v22;
    LOBYTE(v34[-2]) = a3 & 1;
    _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), &v34[-6], &type metadata for PhysicsJointsComponent, &protocol witness table for PhysicsJointsComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
    if (!v21)
    {
      REEntitySendAddAndActivateComponentEvents();
    }
  }
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA011PhysicsBodyD0V_TtB5(_OWORD *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  v16 = *(a3 + 16);
  result = REComponentClassFromType();
  if (result)
  {
    v18 = a1[8];
    v19 = a1[9];
    v20 = a1[6];
    v73[7] = a1[7];
    v73[8] = v18;
    v74[0] = v19;
    *(v74 + 12) = *(a1 + 156);
    v21 = a1[5];
    v73[4] = a1[4];
    v73[5] = v21;
    v73[6] = v20;
    v22 = a1[1];
    v73[0] = *a1;
    v73[1] = v22;
    v23 = a1[3];
    v73[2] = a1[2];
    v73[3] = v23;
    if (_s10RealityKit20PhysicsBodyComponentVSgWOg(v73) == 1)
    {
      v24 = *(a3 + 16);
      ObservationRegistrar = REEntityGetObservationRegistrar();
      if (ObservationRegistrar)
      {
        outlined init with copy of [String : String](ObservationRegistrar, v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v26 = type metadata accessor for ObservationRegistrar();
        v27 = *(v26 - 8);
        v51 = *(v27 + 48);
        if (v51(v15, 1, v26) != 1)
        {
          v50 = v27;
          v28 = outlined destroy of BodyTrackingComponent?(v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v28);
          *(&v49 - 4) = &type metadata for PhysicsBodyComponent;
          *(&v49 - 3) = &protocol witness table for PhysicsBodyComponent;
          *(&v49 - 2) = &type metadata for PhysicsBodyComponent;
          swift_getKeyPath();
          v29 = *(a3 + 16);
          v30 = REEntityGetObservationRegistrar();
          if (v30)
          {
            outlined init with copy of [String : String](v30, v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            v31 = v51(v13, 1, v26);
            v32 = v50;
            if (v31 != 1)
            {
              *&v63 = a3;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              v32 = v50;
              (*(v50 + 8))(v13, v26);
              goto LABEL_17;
            }
          }

          else
          {
            v32 = v50;
            (*(v50 + 56))(v13, 1, 1, v26);
          }

          outlined destroy of BodyTrackingComponent?(v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_17:
          REEntityRemoveComponentByClass();
          v47 = *(a3 + 16);
          v48 = REEntityGetObservationRegistrar();
          if (v48)
          {
            outlined init with copy of [String : String](v48, v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v51(v10, 1, v26) != 1)
            {
              *&v63 = a3;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v32 + 8))(v10, v26);
            }
          }

          else
          {
            (*(v32 + 56))(v10, 1, 1, v26);
          }

          outlined destroy of BodyTrackingComponent?(v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        }
      }

      else
      {
        v46 = type metadata accessor for ObservationRegistrar();
        (*(*(v46 - 8) + 56))(v15, 1, 1, v46);
      }

      outlined destroy of BodyTrackingComponent?(v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      return REEntityRemoveComponentByClass();
    }

    v33 = a1[8];
    v34 = a1[6];
    v60 = a1[7];
    v61 = v33;
    v35 = a1[8];
    v62[0] = a1[9];
    *(v62 + 12) = *(a1 + 156);
    v36 = a1[3];
    v37 = a1[5];
    v57 = a1[4];
    v58 = v37;
    v38 = a1[5];
    v59 = a1[6];
    v39 = a1[1];
    v54[0] = *a1;
    v54[1] = v39;
    v40 = a1[3];
    v42 = *a1;
    v41 = a1[1];
    v55 = a1[2];
    v56 = v40;
    v70 = v60;
    v71 = v35;
    v72[0] = a1[9];
    *(v72 + 12) = *(a1 + 156);
    v67 = v57;
    v68 = v38;
    v69 = v34;
    v63 = v42;
    v64 = v41;
    v65 = v55;
    v66 = v36;
    outlined init with copy of PhysicsBodyComponent(v54, v52);
    ComponentByClass = REEntityGetComponentByClass();
    v44 = ComponentByClass;
    if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents()) != 0)
    {
      v45 = MEMORY[0x1EEE9AC00](ComponentByClass);
      *(&v49 - 4) = &v63;
      *(&v49 - 3) = v45;
      *(&v49 - 16) = a2 & 1;
      _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), (&v49 - 6), &type metadata for PhysicsBodyComponent, &protocol witness table for PhysicsBodyComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
      if (!v44)
      {
        REEntitySendAddAndActivateComponentEvents();
      }
    }

    v52[8] = v71;
    v53[0] = v72[0];
    *(v53 + 12) = *(v72 + 12);
    v52[4] = v67;
    v52[5] = v68;
    v52[6] = v69;
    v52[7] = v70;
    v52[0] = v63;
    v52[1] = v64;
    v52[2] = v65;
    v52[3] = v66;
    return outlined destroy of PhysicsBodyComponent(v52);
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation12VFXComponentV_TtB5(__int128 *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v34 - v14;
  v16 = *(a3 + 16);
  result = REComponentClassFromType();
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    v23 = *(a3 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v25 = type metadata accessor for ObservationRegistrar();
      v26 = *(v25 - 8);
      v27 = *(v26 + 48);
      if (v27(v15, 1, v25) != 1)
      {
        v28 = outlined destroy of BodyTrackingComponent?(v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v28);
        v34[-4] = &type metadata for VFXComponent;
        v34[-3] = &protocol witness table for VFXComponent;
        v34[-2] = &type metadata for VFXComponent;
        v34[0] = swift_getKeyPath();
        v29 = *(a3 + 16);
        v30 = REEntityGetObservationRegistrar();
        if (v30)
        {
          outlined init with copy of [String : String](v30, v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v27(v13, 1, v25) != 1)
          {
            *&v42 = a3;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v26 + 8))(v13, v25);
            goto LABEL_17;
          }
        }

        else
        {
          (*(v26 + 56))(v13, 1, 1, v25);
        }

        outlined destroy of BodyTrackingComponent?(v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_17:
        REEntityRemoveComponentByClass();
        v32 = *(a3 + 16);
        v33 = REEntityGetObservationRegistrar();
        if (v33)
        {
          outlined init with copy of [String : String](v33, v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v27(v10, 1, v25) != 1)
          {
            *&v42 = a3;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v26 + 8))(v10, v25);
          }
        }

        else
        {
          (*(v26 + 56))(v10, 1, 1, v25);
        }

        outlined destroy of BodyTrackingComponent?(v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v31 = type metadata accessor for ObservationRegistrar();
      (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
    }

    outlined destroy of BodyTrackingComponent?(v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  v18 = a1[2];
  v40 = a1[3];
  v41 = *(a1 + 8);
  v19 = *a1;
  v38 = a1[1];
  v39 = v18;
  v37 = v19;
  v44 = v18;
  v45 = v40;
  v46 = v41;
  v42 = v19;
  v43 = v38;
  outlined init with copy of VFXComponent(&v37, v35);
  ComponentByClass = REEntityGetComponentByClass();
  v21 = ComponentByClass;
  if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents()) != 0)
  {
    v22 = MEMORY[0x1EEE9AC00](ComponentByClass);
    v34[-4] = &v42;
    v34[-3] = v22;
    LOBYTE(v34[-2]) = a2 & 1;
    _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), &v34[-6], &type metadata for VFXComponent, &protocol witness table for VFXComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
    if (!v21)
    {
      REEntitySendAddAndActivateComponentEvents();
    }
  }

  v35[2] = v44;
  v35[3] = v45;
  v36 = v46;
  v35[1] = v43;
  v35[0] = v42;
  return outlined destroy of VFXComponent(v35);
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012ManipulationD0V_TtB5(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  v64 = a3;
  v25 = *(a3 + 16);
  type metadata accessor for REComponentType(0);
  v68[3] = v26;
  LODWORD(v68[0]) = 6020;
  outlined init with copy of Any(v68, &v66);
  swift_dynamicCast();
  LODWORD(a3) = v65;
  __swift_destroy_boxed_opaque_existential_1(v68);
  if (a3 != 36)
  {
    result = REComponentClassFromType();
    if (!result)
    {
      return result;
    }

    outlined init with copy of [String : String](a1, &v66, &_s17RealityFoundation21ManipulationComponentVSgMd, &_s17RealityFoundation21ManipulationComponentVSgMR);
    if (v67 << 8 != 512)
    {
      outlined init with take of ManipulationComponent(&v66, v68);
      ComponentByClass = REEntityGetComponentByClass();
      v52 = ComponentByClass;
      if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents()) != 0)
      {
        MEMORY[0x1EEE9AC00](ComponentByClass);
        *(&v61 - 4) = v68;
        *(&v61 - 3) = v53;
        *(&v61 - 16) = a2 & 1;
        _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), (&v61 - 6), &type metadata for ManipulationComponent, &protocol witness table for ManipulationComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
        if (!v52)
        {
          REEntitySendAddAndActivateComponentEvents();
        }
      }

      return outlined destroy of ManipulationComponent(v68);
    }

    outlined destroy of BodyTrackingComponent?(&v66, &_s17RealityFoundation21ManipulationComponentVSgMd, &_s17RealityFoundation21ManipulationComponentVSgMR);
    v39 = v64;
    v40 = *(v64 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v42 = type metadata accessor for ObservationRegistrar();
      v43 = *(v42 - 8);
      v44 = *(v43 + 48);
      if (v44(v15, 1, v42) != 1)
      {
        v45 = outlined destroy of BodyTrackingComponent?(v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v45);
        *(&v61 - 4) = &type metadata for ManipulationComponent;
        *(&v61 - 3) = &protocol witness table for ManipulationComponent;
        *(&v61 - 2) = &type metadata for ManipulationComponent;
        KeyPath = swift_getKeyPath();
        v46 = *(v39 + 16);
        v47 = REEntityGetObservationRegistrar();
        if (v47)
        {
          outlined init with copy of [String : String](v47, v12, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v44(v12, 1, v42) != 1)
          {
            v68[0] = v39;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v43 + 8))(v12, v42);
LABEL_39:
            REEntityRemoveComponentByClass();
            v58 = *(v39 + 16);
            v59 = REEntityGetObservationRegistrar();
            if (v59)
            {
              outlined init with copy of [String : String](v59, v9, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
              if (v44(v9, 1, v42) != 1)
              {
                v68[0] = v39;
                lazy protocol witness table accessor for type Entity and conformance Entity();
                ObservationRegistrar.didSet<A, B>(_:keyPath:)();
                (*(v43 + 8))(v9, v42);
              }
            }

            else
            {
              (*(v43 + 56))(v9, 1, 1, v42);
            }

            v60 = v9;
LABEL_46:
            outlined destroy of BodyTrackingComponent?(v60, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          }
        }

        else
        {
          (*(v43 + 56))(v12, 1, 1, v42);
        }

        outlined destroy of BodyTrackingComponent?(v12, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        goto LABEL_39;
      }
    }

    else
    {
      v55 = type metadata accessor for ObservationRegistrar();
      (*(*(v55 - 8) + 56))(v15, 1, 1, v55);
    }

    outlined destroy of BodyTrackingComponent?(v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  specialized static SceneManager.customComponentType(_:)(&type metadata for ManipulationComponent, &protocol witness table for ManipulationComponent);
  v27 = REEntityGetComponentByClass();
  outlined init with copy of [String : String](a1, &v66, &_s17RealityFoundation21ManipulationComponentVSgMd, &_s17RealityFoundation21ManipulationComponentVSgMR);
  if (v67 << 8 != 512)
  {
    outlined init with take of ManipulationComponent(&v66, v68);
    if (v27 || REEntityAddComponentNoEvents())
    {
      Object = RECustomComponentGetObject();
      if (Object)
      {
        MEMORY[0x1EEE9AC00](Object);
        *(&v61 - 4) = v68;
        *(&v61 - 3) = v49;
        *(&v61 - 16) = v50;
        _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(_s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFyyXEfU1_0A10Foundation012ManipulationD0V_Tt0g5TA, (&v61 - 6), &type metadata for ManipulationComponent, &protocol witness table for ManipulationComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
        if (!v27)
        {
          REEntitySendAddAndActivateComponentEvents();
        }

        RENetworkMarkComponentDirty();
      }
    }

    return outlined destroy of ManipulationComponent(v68);
  }

  KeyPath = v25;
  result = outlined destroy of BodyTrackingComponent?(&v66, &_s17RealityFoundation21ManipulationComponentVSgMd, &_s17RealityFoundation21ManipulationComponentVSgMR);
  if (!v27)
  {
    return result;
  }

  v29 = *(v64 + 16);
  v30 = REEntityGetObservationRegistrar();
  if (!v30)
  {
    v54 = type metadata accessor for ObservationRegistrar();
    (*(*(v54 - 8) + 56))(v24, 1, 1, v54);
    goto LABEL_28;
  }

  outlined init with copy of [String : String](v30, v24, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v31 = type metadata accessor for ObservationRegistrar();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v24, 1, v31) == 1)
  {
LABEL_28:
    outlined destroy of BodyTrackingComponent?(v24, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  v62 = v33;
  v34 = outlined destroy of BodyTrackingComponent?(v24, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  MEMORY[0x1EEE9AC00](v34);
  *(&v61 - 4) = &type metadata for ManipulationComponent;
  *(&v61 - 3) = &protocol witness table for ManipulationComponent;
  *(&v61 - 2) = &type metadata for ManipulationComponent;
  swift_getKeyPath();
  v35 = v64;
  v36 = *(v64 + 16);
  v37 = REEntityGetObservationRegistrar();
  if (v37)
  {
    outlined init with copy of [String : String](v37, v21, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    v38 = v62;
    if (v62(v21, 1, v31) != 1)
    {
      v68[0] = v35;
      lazy protocol witness table accessor for type Entity and conformance Entity();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();
      (*(v32 + 8))(v21, v31);
      goto LABEL_34;
    }
  }

  else
  {
    (*(v32 + 56))(v21, 1, 1, v31);
    v38 = v62;
  }

  outlined destroy of BodyTrackingComponent?(v21, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_34:
  REEntityRemoveComponentByClass();
  v56 = *(v35 + 16);
  v57 = REEntityGetObservationRegistrar();
  if (!v57)
  {
    (*(v32 + 56))(v18, 1, 1, v31);
    goto LABEL_43;
  }

  outlined init with copy of [String : String](v57, v18, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  if (v38(v18, 1, v31) == 1)
  {
LABEL_43:
    v60 = v18;
    goto LABEL_46;
  }

  v68[0] = v35;
  lazy protocol witness table accessor for type Entity and conformance Entity();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  (*(v32 + 8))(v18, v31);
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation011HoverEffectD0V_TtB5(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v34 - v16;
  v18 = *(a4 + 16);
  result = REComponentClassFromType();
  if (!result)
  {
    return result;
  }

  if (!a1)
  {
    v23 = *(a4 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v25 = type metadata accessor for ObservationRegistrar();
      v26 = *(v25 - 8);
      v27 = *(v26 + 48);
      if (v27(v17, 1, v25) != 1)
      {
        v28 = outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v28);
        v34[-4] = &type metadata for HoverEffectComponent;
        v34[-3] = &protocol witness table for HoverEffectComponent;
        v34[-2] = &type metadata for HoverEffectComponent;
        v34[0] = swift_getKeyPath();
        v29 = *(a4 + 16);
        v30 = REEntityGetObservationRegistrar();
        if (v30)
        {
          outlined init with copy of [String : String](v30, v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v27(v14, 1, v25) != 1)
          {
            v35 = a4;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v26 + 8))(v14, v25);
            goto LABEL_17;
          }
        }

        else
        {
          (*(v26 + 56))(v14, 1, 1, v25);
        }

        outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_17:
        REEntityRemoveComponentByClass();
        v32 = *(a4 + 16);
        v33 = REEntityGetObservationRegistrar();
        if (v33)
        {
          outlined init with copy of [String : String](v33, v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v27(v11, 1, v25) != 1)
          {
            v35 = a4;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v26 + 8))(v11, v25);
          }
        }

        else
        {
          (*(v26 + 56))(v11, 1, 1, v25);
        }

        outlined destroy of BodyTrackingComponent?(v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v31 = type metadata accessor for ObservationRegistrar();
      (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    }

    outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  v35 = a1;
  v36 = a2;
  v37 = BYTE4(a2) & 1;

  ComponentByClass = REEntityGetComponentByClass();
  v21 = ComponentByClass;
  if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents()) != 0)
  {
    MEMORY[0x1EEE9AC00](ComponentByClass);
    v34[-4] = &v35;
    v34[-3] = v22;
    LOBYTE(v34[-2]) = a3 & 1;
    _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), &v34[-6], &type metadata for HoverEffectComponent, &protocol witness table for HoverEffectComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
    if (!v21)
    {
      REEntitySendAddAndActivateComponentEvents();
    }
  }
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation011InputTargetD0V_TtB5(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  v63 = a4;
  v26 = *(a4 + 16);
  type metadata accessor for REComponentType(0);
  v68 = v27;
  LODWORD(v66) = 4010;
  outlined init with copy of Any(&v66, v65);
  swift_dynamicCast();
  LODWORD(a4) = v64;
  __swift_destroy_boxed_opaque_existential_1(&v66);
  if (a4 != 36)
  {
    result = REComponentClassFromType();
    if (!result)
    {
      return result;
    }

    if (a2)
    {
      LOBYTE(v66) = a1 & 1;
      HIDWORD(v66) = HIDWORD(a1);
      v67 = a2;

      ComponentByClass = REEntityGetComponentByClass();
      v34 = ComponentByClass;
      if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents()) != 0)
      {
        MEMORY[0x1EEE9AC00](ComponentByClass);
        *(&v62 - 4) = &v66;
        *(&v62 - 3) = v35;
        *(&v62 - 16) = a3 & 1;
        _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), (&v62 - 6), &type metadata for InputTargetComponent, &protocol witness table for InputTargetComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
        if (!v34)
        {
          REEntitySendAddAndActivateComponentEvents();
        }
      }
    }

    v45 = v63;
    v46 = *(v63 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v48 = type metadata accessor for ObservationRegistrar();
      v49 = *(v48 - 8);
      v50 = *(v49 + 48);
      if (v50(v16, 1, v48) != 1)
      {
        v51 = outlined destroy of BodyTrackingComponent?(v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v51);
        *(&v62 - 4) = &type metadata for InputTargetComponent;
        *(&v62 - 3) = &protocol witness table for InputTargetComponent;
        *(&v62 - 2) = &type metadata for InputTargetComponent;
        swift_getKeyPath();
        v52 = *(v45 + 16);
        v53 = REEntityGetObservationRegistrar();
        if (v53)
        {
          outlined init with copy of [String : String](v53, v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v50(v13, 1, v48) != 1)
          {
            v66 = v45;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v49 + 8))(v13, v48);
LABEL_40:
            REEntityRemoveComponentByClass();
            v58 = *(v45 + 16);
            v59 = REEntityGetObservationRegistrar();
            v60 = v62;
            if (v59)
            {
              outlined init with copy of [String : String](v59, v62, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
              if (v50(v60, 1, v48) != 1)
              {
                v66 = v45;
                lazy protocol witness table accessor for type Entity and conformance Entity();
                ObservationRegistrar.didSet<A, B>(_:keyPath:)();
                (*(v49 + 8))(v60, v48);
              }
            }

            else
            {
              (*(v49 + 56))(v62, 1, 1, v48);
            }

            v61 = v60;
LABEL_47:
            outlined destroy of BodyTrackingComponent?(v61, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          }
        }

        else
        {
          (*(v49 + 56))(v13, 1, 1, v48);
        }

        outlined destroy of BodyTrackingComponent?(v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        goto LABEL_40;
      }
    }

    else
    {
      v55 = type metadata accessor for ObservationRegistrar();
      (*(*(v55 - 8) + 56))(v16, 1, 1, v55);
    }

    outlined destroy of BodyTrackingComponent?(v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  specialized static SceneManager.customComponentType(_:)(&type metadata for InputTargetComponent, &protocol witness table for InputTargetComponent);
  result = REEntityGetComponentByClass();
  v29 = result;
  if (a2)
  {
    LOBYTE(v66) = a1 & 1;
    HIDWORD(v66) = HIDWORD(a1);
    v67 = a2;

    if (v29 || REEntityAddComponentNoEvents())
    {
      Object = RECustomComponentGetObject();
      if (Object)
      {
        MEMORY[0x1EEE9AC00](Object);
        *(&v62 - 4) = &v66;
        *(&v62 - 3) = v31;
        *(&v62 - 16) = v32;
        _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(_s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFyyXEfU1_0A10Foundation011InputTargetD0V_Tt0G5TA, (&v62 - 6), &type metadata for InputTargetComponent, &protocol witness table for InputTargetComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
        if (!v29)
        {
          REEntitySendAddAndActivateComponentEvents();
        }

        RENetworkMarkComponentDirty();
      }
    }
  }

  if (result)
  {
    v36 = *(v63 + 16);
    v37 = REEntityGetObservationRegistrar();
    if (v37)
    {
      outlined init with copy of [String : String](v37, v25, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v38 = type metadata accessor for ObservationRegistrar();
      v39 = *(v38 - 8);
      v62 = *(v39 + 48);
      if ((v62)(v25, 1, v38) != 1)
      {
        v40 = outlined destroy of BodyTrackingComponent?(v25, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v40);
        *(&v62 - 4) = &type metadata for InputTargetComponent;
        *(&v62 - 3) = &protocol witness table for InputTargetComponent;
        *(&v62 - 2) = &type metadata for InputTargetComponent;
        swift_getKeyPath();
        v41 = v63;
        v42 = *(v63 + 16);
        v43 = REEntityGetObservationRegistrar();
        if (v43)
        {
          outlined init with copy of [String : String](v43, v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          v44 = v62;
          if ((v62)(v22, 1, v38) != 1)
          {
            v66 = v41;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v39 + 8))(v22, v38);
LABEL_35:
            REEntityRemoveComponentByClass();
            v56 = *(v41 + 16);
            v57 = REEntityGetObservationRegistrar();
            if (v57)
            {
              outlined init with copy of [String : String](v57, v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
              if (v44(v19, 1, v38) != 1)
              {
                v66 = v41;
                lazy protocol witness table accessor for type Entity and conformance Entity();
                ObservationRegistrar.didSet<A, B>(_:keyPath:)();
                (*(v39 + 8))(v19, v38);
              }
            }

            else
            {
              (*(v39 + 56))(v19, 1, 1, v38);
            }

            v61 = v19;
            goto LABEL_47;
          }
        }

        else
        {
          (*(v39 + 56))(v22, 1, 1, v38);
          v44 = v62;
        }

        outlined destroy of BodyTrackingComponent?(v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        goto LABEL_35;
      }
    }

    else
    {
      v54 = type metadata accessor for ObservationRegistrar();
      (*(*(v54 - 8) + 56))(v25, 1, 1, v54);
    }

    outlined destroy of BodyTrackingComponent?(v25, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation05VideoD0V_TtB5(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v32 - v14;
  v16 = *(a3 + 16);
  result = REComponentClassFromType();
  if (!result)
  {
    return result;
  }

  outlined init with copy of [String : String](a1, v33, &_s17RealityFoundation14VideoComponentVSgMd, &_s17RealityFoundation14VideoComponentVSgMR);
  if (!*&v33[0])
  {
    outlined destroy of BodyTrackingComponent?(v33, &_s17RealityFoundation14VideoComponentVSgMd, &_s17RealityFoundation14VideoComponentVSgMR);
    v21 = *(a3 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v23 = type metadata accessor for ObservationRegistrar();
      v24 = *(v23 - 8);
      v25 = *(v24 + 48);
      if (v25(v15, 1, v23) != 1)
      {
        v26 = outlined destroy of BodyTrackingComponent?(v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v26);
        v32[-4] = &type metadata for VideoComponent;
        v32[-3] = &protocol witness table for VideoComponent;
        v32[-2] = &type metadata for VideoComponent;
        v32[1] = swift_getKeyPath();
        v27 = *(a3 + 16);
        v28 = REEntityGetObservationRegistrar();
        if (v28)
        {
          outlined init with copy of [String : String](v28, v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v25(v13, 1, v23) != 1)
          {
            *&v35[0] = a3;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v24 + 8))(v13, v23);
            goto LABEL_17;
          }
        }

        else
        {
          (*(v24 + 56))(v13, 1, 1, v23);
        }

        outlined destroy of BodyTrackingComponent?(v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_17:
        REEntityRemoveComponentByClass();
        v30 = *(a3 + 16);
        v31 = REEntityGetObservationRegistrar();
        if (v31)
        {
          outlined init with copy of [String : String](v31, v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v25(v10, 1, v23) != 1)
          {
            *&v35[0] = a3;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v24 + 8))(v10, v23);
          }
        }

        else
        {
          (*(v24 + 56))(v10, 1, 1, v23);
        }

        outlined destroy of BodyTrackingComponent?(v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v29 = type metadata accessor for ObservationRegistrar();
      (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
    }

    outlined destroy of BodyTrackingComponent?(v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  v35[0] = v33[0];
  v35[1] = v33[1];
  v35[2] = v33[2];
  v36 = v34;
  ComponentByClass = REEntityGetComponentByClass();
  v19 = ComponentByClass;
  if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents()) != 0)
  {
    v20 = MEMORY[0x1EEE9AC00](ComponentByClass);
    v32[-4] = v35;
    v32[-3] = v20;
    LOBYTE(v32[-2]) = a2 & 1;
    _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), &v32[-6], &type metadata for VideoComponent, &protocol witness table for VideoComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
    if (!v19)
    {
      REEntitySendAddAndActivateComponentEvents();
    }
  }

  return outlined destroy of VideoComponent(v35);
}

void _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA014__AmbientLightD0V_TtB5(void *a1, int a2, char a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v34 - v16;
  v18 = a4[2];
  if (!REComponentClassFromType())
  {
    return;
  }

  if (!a1)
  {
    v23 = a4[2];
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v25 = type metadata accessor for ObservationRegistrar();
      v26 = *(v25 - 8);
      v27 = *(v26 + 48);
      if (v27(v17, 1, v25) != 1)
      {
        v28 = outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v28);
        v34[-4] = &type metadata for __AmbientLightComponent;
        v34[-3] = &protocol witness table for __AmbientLightComponent;
        v34[-2] = &type metadata for __AmbientLightComponent;
        v34[0] = swift_getKeyPath();
        v29 = a4[2];
        v30 = REEntityGetObservationRegistrar();
        if (v30)
        {
          outlined init with copy of [String : String](v30, v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v27(v14, 1, v25) != 1)
          {
            v35 = a4;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v26 + 8))(v14, v25);
            goto LABEL_17;
          }
        }

        else
        {
          (*(v26 + 56))(v14, 1, 1, v25);
        }

        outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_17:
        REEntityRemoveComponentByClass();
        v32 = a4[2];
        v33 = REEntityGetObservationRegistrar();
        if (v33)
        {
          outlined init with copy of [String : String](v33, v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v27(v11, 1, v25) != 1)
          {
            v35 = a4;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v26 + 8))(v11, v25);
LABEL_22:

            return;
          }
        }

        else
        {
          (*(v26 + 56))(v11, 1, 1, v25);
        }

        outlined destroy of BodyTrackingComponent?(v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        goto LABEL_22;
      }
    }

    else
    {
      v31 = type metadata accessor for ObservationRegistrar();
      (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    }

    outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    REEntityRemoveComponentByClass();
    return;
  }

  v35 = a1;
  v36 = a2;
  v19 = a1;
  ComponentByClass = REEntityGetComponentByClass();
  v21 = ComponentByClass;
  if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents()) != 0)
  {
    MEMORY[0x1EEE9AC00](ComponentByClass);
    v34[-4] = &v35;
    v34[-3] = v22;
    LOBYTE(v34[-2]) = a3 & 1;
    _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), &v34[-6], &type metadata for __AmbientLightComponent, &protocol witness table for __AmbientLightComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
    if (!v21)
    {
      REEntitySendAddAndActivateComponentEvents();
    }
  }
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v34 - v14;
  v16 = *(a3 + 16);
  result = REComponentClassFromType();
  if (!result)
  {
    return result;
  }

  if (!*(a1 + 56))
  {
    v23 = *(a3 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v25 = type metadata accessor for ObservationRegistrar();
      v26 = *(v25 - 8);
      v27 = *(v26 + 48);
      if (v27(v15, 1, v25) != 1)
      {
        v28 = outlined destroy of BodyTrackingComponent?(v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v28);
        v34[-4] = &type metadata for __AccessibilityComponent;
        v34[-3] = &protocol witness table for __AccessibilityComponent;
        v34[-2] = &type metadata for __AccessibilityComponent;
        v34[0] = swift_getKeyPath();
        v29 = *(a3 + 16);
        v30 = REEntityGetObservationRegistrar();
        if (v30)
        {
          outlined init with copy of [String : String](v30, v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v27(v13, 1, v25) != 1)
          {
            *&v39 = a3;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v26 + 8))(v13, v25);
            goto LABEL_17;
          }
        }

        else
        {
          (*(v26 + 56))(v13, 1, 1, v25);
        }

        outlined destroy of BodyTrackingComponent?(v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_17:
        REEntityRemoveComponentByClass();
        v32 = *(a3 + 16);
        v33 = REEntityGetObservationRegistrar();
        if (v33)
        {
          outlined init with copy of [String : String](v33, v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v27(v10, 1, v25) != 1)
          {
            *&v39 = a3;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v26 + 8))(v10, v25);
          }
        }

        else
        {
          (*(v26 + 56))(v10, 1, 1, v25);
        }

        outlined destroy of BodyTrackingComponent?(v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v31 = type metadata accessor for ObservationRegistrar();
      (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
    }

    outlined destroy of BodyTrackingComponent?(v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  v18 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v18;
  v19 = *(a1 + 48);
  v37 = *(a1 + 32);
  v38 = v19;
  v39 = v36[0];
  v40 = v18;
  v41 = v37;
  v42 = v19;
  outlined init with copy of __AccessibilityComponent(v36, v35);
  ComponentByClass = REEntityGetComponentByClass();
  v21 = ComponentByClass;
  if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents()) != 0)
  {
    v22 = MEMORY[0x1EEE9AC00](ComponentByClass);
    v34[-4] = &v39;
    v34[-3] = v22;
    LOBYTE(v34[-2]) = a2 & 1;
    _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), &v34[-6], &type metadata for __AccessibilityComponent, &protocol witness table for __AccessibilityComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
    if (!v21)
    {
      REEntitySendAddAndActivateComponentEvents();
    }
  }

  v35[0] = v39;
  v35[1] = v40;
  v35[2] = v41;
  v35[3] = v42;
  return outlined destroy of __AccessibilityComponent(v35);
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation0kD0V_TtB5(uint64_t *a1, int a2, uint64_t a3)
{
  v40 = a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  v19 = a3;
  v20 = *(a3 + 16);
  result = REComponentClassFromType();
  v41 = result;
  if (result)
  {
    if (v5)
    {
      v42[0] = v4;
      v42[1] = v5;
      v42[2] = v6;
      v42[3] = v7;
      v43 = v8 & 0x1FF;
      v44 = v9;

      ComponentByClass = REEntityGetComponentByClass();
      v23 = ComponentByClass;
      if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents()) != 0)
      {
        v24 = MEMORY[0x1EEE9AC00](ComponentByClass);
        *(&v39 - 4) = v42;
        *(&v39 - 3) = v24;
        *(&v39 - 16) = v40 & 1;
        _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), (&v39 - 6), &type metadata for ReferenceComponent, &protocol witness table for ReferenceComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
        if (!v23)
        {
          REEntitySendAddAndActivateComponentEvents();
        }
      }
    }

    v25 = v19;
    v26 = *(v19 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v18, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v28 = type metadata accessor for ObservationRegistrar();
      v29 = *(v28 - 8);
      v30 = *(v29 + 48);
      if (v30(v18, 1, v28) != 1)
      {
        v31 = outlined destroy of BodyTrackingComponent?(v18, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v31);
        *(&v39 - 4) = &type metadata for ReferenceComponent;
        *(&v39 - 3) = &protocol witness table for ReferenceComponent;
        *(&v39 - 2) = &type metadata for ReferenceComponent;
        swift_getKeyPath();
        v32 = *(v25 + 16);
        v33 = REEntityGetObservationRegistrar();
        if (v33)
        {
          outlined init with copy of [String : String](v33, v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          v34 = v30(v16, 1, v28);
          v35 = v39;
          if (v34 != 1)
          {
            v42[0] = v25;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v29 + 8))(v16, v28);
            goto LABEL_19;
          }
        }

        else
        {
          (*(v29 + 56))(v16, 1, 1, v28);
          v35 = v39;
        }

        outlined destroy of BodyTrackingComponent?(v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_19:
        REEntityRemoveComponentByClass();
        v37 = *(v25 + 16);
        v38 = REEntityGetObservationRegistrar();
        if (v38)
        {
          outlined init with copy of [String : String](v38, v35, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v30(v35, 1, v28) != 1)
          {
            v42[0] = v25;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v29 + 8))(v35, v28);
          }
        }

        else
        {
          (*(v29 + 56))(v35, 1, 1, v28);
        }

        outlined destroy of BodyTrackingComponent?(v35, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v36 = type metadata accessor for ObservationRegistrar();
      (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
    }

    outlined destroy of BodyTrackingComponent?(v18, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  return result;
}

uint64_t (*HasModel.modelDebugOptions.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  HasModel.debugModel.getter((v3 + 40));
  return HasModel.modelDebugOptions.modify;
}

uint64_t HasModel.modelDebugOptions.getter@<X0>(char *a1@<X8>)
{
  (*(*v1 + 96))(&v4);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA017ModelDebugOptionsD0V_Tt0B5(v4, a1);
}

uint64_t HasModel.modelDebugOptions.setter(char *a1)
{
  v2 = *a1;
  v3 = (*(*v1 + 112))(v6);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA017ModelDebugOptionsD0V_TtB5Tf4ndn_n(v2, *v4);
  return v3(v6, 0);
}

uint64_t (*HasModel.debugModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  HasModel.debugModel.getter((v3 + 40));
  return HasModel.debugModel.modify;
}

void HasModel.modelDebugOptions.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = (*(**(*a1 + 32) + 112))(*a1);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA017ModelDebugOptionsD0V_TtB5Tf4ndn_n(v2, *v4);
  v3(v1, 0);

  free(v1);
}

uint64_t outlined consume of ModelComponent?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined copy of ModelComponent?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s17RealityFoundation23ComponentAnimatableDataV2eeoiySbACyxG_AEtFZAA07OpacityC0V_Tt1B5Tm(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    v3 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v9 = 0;
    while (1)
    {
      if (v6)
      {
        v10 = a2;
        if (!*(a1 + 16))
        {
          goto LABEL_21;
        }
      }

      else
      {
        v10 = a2;
        do
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
            return result;
          }

          if (v11 >= v7)
          {

            return 1;
          }

          v6 = *(v3 + 8 * v11);
          ++v9;
        }

        while (!v6);
        v9 = v11;
        if (!*(a1 + 16))
        {
          goto LABEL_21;
        }
      }

      v12 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));

      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if ((v15 & 1) == 0 || !*(v10 + 16))
      {
        break;
      }

      v16 = *(*(a1 + 56) + 8 * v14);

      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if ((v18 & 1) == 0)
      {

        break;
      }

      v6 &= v6 - 1;
      v19 = *(*(v10 + 56) + 8 * v17);
      v23 = *(*v16 + 168);

      v21 = v23(v20);

      if ((v21 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_21:
  }

  return 0;
}

void key path getter for PointLightComponent.lightColor : PointLightComponent(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 4);
  *a2 = DirectionalLightComponent.lightColor.getter();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void key path setter for PointLightComponent.lightColor : PointLightComponent(CGFloat *a1, id *a2)
{
  GenericRGB = CGColorCreateGenericRGB(*a1, a1[1], a1[2], a1[3]);

  *a2 = GenericRGB;
}

void *_s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA010PointLightI0V_ytTt0g5Tm(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23[-v13];
  v15 = *(v5 + 16);
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of [String : String](ObservationRegistrar, v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    v17 = type metadata accessor for ObservationRegistrar();
    if ((*(*(v17 - 8) + 48))(v14, 1, v17) != 1)
    {
      v18 = outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      MEMORY[0x1EEE9AC00](v18);
      *&v23[-32] = a3;
      *&v23[-24] = a4;
      *&v23[-16] = a3;
      swift_getKeyPath();
      v19 = a5();

      if (!v6)
      {
        return (v19 & 1);
      }

      return result;
    }
  }

  else
  {
    v21 = type metadata accessor for ObservationRegistrar();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  }

  v22 = outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  result = a1(&v24, v22);
  if (!v6)
  {
    v19 = 0;
    return (v19 & 1);
  }

  return result;
}

void *_s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA09AnchoringI0V_ytTt0g5(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = *(v1 + 16);
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of [String : String](ObservationRegistrar, v7, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    v10 = type metadata accessor for ObservationRegistrar();
    if ((*(*(v10 - 8) + 48))(v7, 1, v10) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v7, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v11 = type metadata accessor for AnchoringComponent(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      *&v18[-32] = v12;
      *&v18[-24] = &protocol witness table for AnchoringComponent;
      *&v18[-16] = v12;
      KeyPath = swift_getKeyPath();
      v14 = specialized Entity.withMutation<A, B>(keyPath:_:)(KeyPath, a1);

      if (!v2)
      {
        return (v14 & 1);
      }

      return result;
    }
  }

  else
  {
    v16 = type metadata accessor for ObservationRegistrar();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  }

  v17 = outlined destroy of BodyTrackingComponent?(v7, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  result = (a1)(&v19, v17);
  if (!v2)
  {
    v14 = 0;
    return (v14 & 1);
  }

  return result;
}

void *_s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA012BodyTrackingI0V_ytTt0g5(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = *(v1 + 16);
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of [String : String](ObservationRegistrar, v7, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    v10 = type metadata accessor for ObservationRegistrar();
    if ((*(*(v10 - 8) + 48))(v7, 1, v10) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v7, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v11 = type metadata accessor for BodyTrackingComponent(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      *&v18[-32] = v12;
      *&v18[-24] = &protocol witness table for BodyTrackingComponent;
      *&v18[-16] = v12;
      KeyPath = swift_getKeyPath();
      v14 = specialized Entity.withMutation<A, B>(keyPath:_:)(KeyPath, a1);

      if (!v2)
      {
        return (v14 & 1);
      }

      return result;
    }
  }

  else
  {
    v16 = type metadata accessor for ObservationRegistrar();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  }

  v17 = outlined destroy of BodyTrackingComponent?(v7, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  result = (a1)(&v19, v17);
  if (!v2)
  {
    return 0;
  }

  return result;
}

void *_s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23[-v13];
  v15 = *(v5 + 16);
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of [String : String](ObservationRegistrar, v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    v17 = type metadata accessor for ObservationRegistrar();
    if ((*(*(v17 - 8) + 48))(v14, 1, v17) != 1)
    {
      v18 = outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      MEMORY[0x1EEE9AC00](v18);
      *&v23[-32] = a3;
      *&v23[-24] = a4;
      *&v23[-16] = a3;
      swift_getKeyPath();
      v19 = a5();

      if (!v6)
      {
        return (v19 & 1);
      }

      return result;
    }
  }

  else
  {
    v21 = type metadata accessor for ObservationRegistrar();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  }

  v22 = outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  result = a1(&v24, v22);
  if (!v6)
  {
    return 0;
  }

  return result;
}

uint64_t specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)()
{
  v2 = *MEMORY[0x1E69E9840];
  RECGColorToColorGamut();
  REPointLightComponentSetColorGamut3F();
  REPointLightComponentSetIntensity();
  REPointLightComponentSetAttenuationRadius();
  REPointLightComponentSetAttenuationFalloffExponent();
  result = RENetworkMarkComponentDirty();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v2 = *MEMORY[0x1E69E9840];
  RECGColorToColorGamut();
  REDirectionalLightComponentSetColorGamut3F();
  REDirectionalLightComponentSetIntensity();
  REDirectionalLightComponentSetIsProxy();
  result = RENetworkMarkComponentDirty();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v2 = *MEMORY[0x1E69E9840];
  RECGColorToColorGamut();
  REAmbientLightComponentSetColorGamut3F();
  REAmbientLightComponentSetIntensity();
  result = RENetworkMarkComponentDirty();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(float *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = (a1[4] * 3.1416) / 180.0;
  RESpotLightComponentSetOuterAngle();
  v3 = (a1[3] * 3.1416) / 180.0;
  RESpotLightComponentSetInnerAngle();
  v4 = *a1;
  RECGColorToColorGamut();
  RESpotLightComponentSetColorGamut3F();
  v5 = *(a1 + 2);
  RESpotLightComponentSetIntensity();
  v6 = *(a1 + 5);
  RESpotLightComponentSetAttenuationRadius();
  v7 = *(a1 + 6);
  RESpotLightComponentSetAttenuationFalloffExponent();
  result = RENetworkMarkComponentDirty();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BodyTrackingComponent.Target(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of BodyTrackingComponent.Target(a1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV10identifier_tMd, &_s10Foundation4UUIDV10identifier_tMR);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    REBodyTrackingComponentSetTargetType();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    REBodyTrackingComponentSetTargetType();
    v16[1] = UUID.uuid.getter();
    v16[2] = v12;
    REBodyTrackingComponentSetTargetBodyIdentifier();
    (*(v3 + 8))(v6, v2);
  }

  v13 = *(a1 + *(type metadata accessor for BodyTrackingComponent(0) + 20));
  REBodyTrackingComponentSetIsPaused();
  result = RENetworkMarkComponentDirty();
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(void *a1)
{
  v2 = *(*a1 + 16);
  REVideoComponentSetVideoAsset();
  v3 = a1[4];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  swift_beginAccess();
  v6 = *(v5 + 16);

  REVideoComponentSetMaterialAsset();
  v7 = a1[6];
  REVideoComponentSetFadeThreshold();
  REVideoComponentAddRealityKitDefaultAttachmentsOnAllMaterials();
  return RENetworkMarkComponentDirty();
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFyyXEfU1_0A10Foundation012ManipulationD0V_Tt0g5(uint64_t a1, uint64_t a2, char a3)
{
  v9[3] = &type metadata for ManipulationComponent;
  v9[4] = &protocol witness table for ManipulationComponent;
  v9[0] = swift_allocObject();
  outlined init with copy of ManipulationComponent(a1, v9[0] + 16);
  if ((a3 & 1) == 0)
  {
    outlined destroy of ManipulationComponent(a2);
  }

  outlined init with copy of __REAssetService(v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  outlined init with take of ManipulationComponent(&v7, a2);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFyyXEfU1_0A10Foundation017EventSubscriptionD0V_Tt0g5(uint64_t a1, _OWORD *a2, char a3)
{
  v11[3] = &type metadata for EventSubscriptionComponent;
  v11[4] = &protocol witness table for EventSubscriptionComponent;
  v11[0] = swift_allocObject();
  outlined init with copy of EventSubscriptionComponent(a1, v11[0] + 16);
  if ((a3 & 1) == 0)
  {
    outlined destroy of EventSubscriptionComponent(a2);
  }

  outlined init with copy of __REAssetService(v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFyyXEfU1_AA02__c4InfoD0V_Tt0G5(uint64_t *a1, _OWORD *a2, char a3)
{
  v6 = *a1;
  v5 = a1[1];
  v10[3] = &type metadata for __EntityInfoComponent;
  v10[4] = &protocol witness table for __EntityInfoComponent;
  v10[0] = v6;
  v10[1] = v5;

  if ((a3 & 1) == 0)
  {
    outlined destroy of __EntityInfoComponent(a2);
  }

  outlined init with copy of __REAssetService(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v8;
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 4);
  v8 = a1[3];
  v9 = a2;

  ModelComponent.__toCore(_:returnStrongReference:)(&v9, a3);
}

uint64_t specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(_DWORD *a1)
{
  v1 = a1[2];
  if (*a1 && *(*a1 + 16))
  {
    REImageBasedLightComponentSetIBLNullable();
  }

  REImageBasedLightComponentSetIntensityExponent();
  return RENetworkMarkComponentDirty();
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFyyXEfU1_0A10Foundation011InputTargetD0V_Tt0G5(char *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 1);
  v13[3] = &type metadata for InputTargetComponent;
  v13[4] = &protocol witness table for InputTargetComponent;
  LOBYTE(v13[0]) = v5;
  HIDWORD(v13[0]) = v6;
  v13[1] = v7;

  if ((a3 & 1) == 0)
  {
    outlined destroy of InputTargetComponent(a2);
  }

  outlined init with copy of __REAssetService(v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v9;
  *(a2 + 4) = v10;
  *(a2 + 8) = v11;
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA02__c4InfoD0V_TtB5Tf4ndn_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v35 = a3;
  v15 = *(a3 + 16);
  type metadata accessor for SceneManager();
  static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
  result = REEntityGetComponentByClass();
  v17 = result;
  if (a2 != 1)
  {
    v36[0] = a1;
    v36[1] = a2;

    if (v17 || REEntityAddComponentNoEvents())
    {
      Object = RECustomComponentGetObject();
      if (Object)
      {
        v27 = MEMORY[0x1EEE9AC00](Object);
        *(&v33 - 4) = v36;
        *(&v33 - 3) = v27;
        *(&v33 - 16) = v28;
        _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(_s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFyyXEfU1_AA02__c4InfoD0V_Tt0G5TA, (&v33 - 6), &type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
        if (!v17)
        {
          REEntitySendAddAndActivateComponentEvents();
        }

        RENetworkMarkComponentDirty();
      }
    }
  }

  if (result)
  {
    v18 = *(v35 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v20 = type metadata accessor for ObservationRegistrar();
      v21 = *(v20 - 8);
      v33 = *(v21 + 48);
      if (v33(v14, 1, v20) != 1)
      {
        v22 = outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v22);
        *(&v33 - 4) = &type metadata for __EntityInfoComponent;
        *(&v33 - 3) = &protocol witness table for __EntityInfoComponent;
        *(&v33 - 2) = &type metadata for __EntityInfoComponent;
        swift_getKeyPath();
        v23 = *(v35 + 16);
        v24 = REEntityGetObservationRegistrar();
        if (v24)
        {
          outlined init with copy of [String : String](v24, v12, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          v25 = v33;
          if (v33(v12, 1, v20) != 1)
          {
            v36[0] = v35;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v21 + 8))(v12, v20);
            goto LABEL_20;
          }
        }

        else
        {
          (*(v21 + 56))(v12, 1, 1, v20);
          v25 = v33;
        }

        outlined destroy of BodyTrackingComponent?(v12, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_20:
        REEntityRemoveComponentByClass();
        v30 = *(v35 + 16);
        v31 = REEntityGetObservationRegistrar();
        if (v31)
        {
          v32 = v34;
          outlined init with copy of [String : String](v31, v34, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v25(v32, 1, v20) != 1)
          {
            v36[0] = v35;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v21 + 8))(v32, v20);
          }
        }

        else
        {
          v32 = v34;
          (*(v21 + 56))(v34, 1, 1, v20);
        }

        outlined destroy of BodyTrackingComponent?(v32, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v29 = type metadata accessor for ObservationRegistrar();
      (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    }

    outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  result = REEntityGetComponent();
  v5 = result;
  if (result)
  {
    result = RETransformComponentGetLocalSRT();
    if (one-time initialization token for identity != -1)
    {
      v10 = v7;
      v11 = v6;
      v9 = v8;
      result = swift_once();
      v8 = v9;
      v7 = v10;
      v6 = v11;
    }
  }

  else
  {
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v5 == 0;
  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA9TransformV_TtB5Tf4ndn_n(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  *&v58 = a1[3];
  v7 = a1[4];
  *&v59 = a1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v55 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  *&v57 = &v55 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - v22;
  v24 = a2;
  v61 = *(a2 + 16);
  result = REComponentClassFromType();
  v60 = result;
  if (result)
  {
    if (a1[6])
    {
      v26 = *(a2 + 16);
      ObservationRegistrar = REEntityGetObservationRegistrar();
      if (ObservationRegistrar)
      {
        outlined init with copy of [String : String](ObservationRegistrar, v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v28 = type metadata accessor for ObservationRegistrar();
        v29 = *(v28 - 8);
        v30 = *(v29 + 48);
        if (v30(v23, 1, v28) != 1)
        {
          v31 = outlined destroy of BodyTrackingComponent?(v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v31);
          *(&v55 - 4) = &type metadata for Transform;
          *(&v55 - 3) = &protocol witness table for Transform;
          *(&v55 - 2) = &type metadata for Transform;
          swift_getKeyPath();
          v32 = *(a2 + 16);
          v33 = REEntityGetObservationRegistrar();
          if (v33)
          {
            outlined init with copy of [String : String](v33, v21, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            v34 = v30(v21, 1, v28);
            v35 = v57;
            if (v34 != 1)
            {
              v62 = v24;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v29 + 8))(v21, v28);
              goto LABEL_22;
            }
          }

          else
          {
            (*(v29 + 56))(v21, 1, 1, v28);
            v35 = v57;
          }

          outlined destroy of BodyTrackingComponent?(v21, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_22:
          REEntityRemoveComponentByClass();
          v51 = *(v24 + 16);
          v52 = REEntityGetObservationRegistrar();
          if (v52)
          {
            outlined init with copy of [String : String](v52, v35, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v30(v35, 1, v28) != 1)
            {
              v62 = v24;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v29 + 8))(v35, v28);
            }
          }

          else
          {
            (*(v29 + 56))(v35, 1, 1, v28);
          }

          outlined destroy of BodyTrackingComponent?(v35, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        }
      }

      else
      {
        v49 = type metadata accessor for ObservationRegistrar();
        (*(*(v49 - 8) + 56))(v23, 1, 1, v49);
      }

      outlined destroy of BodyTrackingComponent?(v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      return REEntityRemoveComponentByClass();
    }

    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass || (result = REEntityAddComponentNoEvents()) != 0)
    {
      *&v37 = v4;
      *(&v37 + 1) = v5;
      v57 = v37;
      *&v37 = v6;
      *(&v37 + 1) = v58;
      v58 = v37;
      *&v37 = v7;
      *(&v37 + 1) = v59;
      v59 = v37;
      v38 = *(a2 + 16);
      v39 = REEntityGetObservationRegistrar();
      if (v39)
      {
        outlined init with copy of [String : String](v39, v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v40 = type metadata accessor for ObservationRegistrar();
        v41 = *(v40 - 8);
        v42 = *(v41 + 48);
        if (v42(v16, 1, v40) != 1)
        {
          v43 = outlined destroy of BodyTrackingComponent?(v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v43);
          *(&v55 - 4) = &type metadata for Transform;
          *(&v55 - 3) = &protocol witness table for Transform;
          *(&v55 - 2) = &type metadata for Transform;
          swift_getKeyPath();
          v44 = *(v24 + 16);
          v45 = REEntityGetObservationRegistrar();
          if (v45)
          {
            v46 = v55;
            outlined init with copy of [String : String](v45, v55, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            v47 = v42(v46, 1, v40);
            v48 = v56;
            if (v47 != 1)
            {
              v62 = v24;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v41 + 8))(v46, v40);
              goto LABEL_30;
            }
          }

          else
          {
            v46 = v55;
            (*(v41 + 56))(v55, 1, 1, v40);
            v48 = v56;
          }

          outlined destroy of BodyTrackingComponent?(v46, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_30:
          RETransformComponentSetLocalSRT();
          RENetworkMarkComponentDirty();
          v53 = *(v24 + 16);
          v54 = REEntityGetObservationRegistrar();
          if (v54)
          {
            outlined init with copy of [String : String](v54, v48, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v42(v48, 1, v40) != 1)
            {
              v62 = v24;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v41 + 8))(v48, v40);
              goto LABEL_35;
            }
          }

          else
          {
            (*(v41 + 56))(v48, 1, 1, v40);
          }

          outlined destroy of BodyTrackingComponent?(v48, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_35:

          if (ComponentByClass)
          {
            return result;
          }

          return REEntitySendAddAndActivateComponentEvents();
        }
      }

      else
      {
        v50 = type metadata accessor for ObservationRegistrar();
        (*(*(v50 - 8) + 56))(v16, 1, 1, v50);
      }

      outlined destroy of BodyTrackingComponent?(v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      RETransformComponentSetLocalSRT();
      result = RENetworkMarkComponentDirty();
      if (ComponentByClass)
      {
        return result;
      }

      return REEntitySendAddAndActivateComponentEvents();
    }
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA017PerspectiveCameraD0V_TtB5Tf4ndn_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v47 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v47 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v47 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v47 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v47 - v22;
  v51 = *(a3 + 16);
  result = REComponentClassFromType();
  v50 = result;
  if (result)
  {
    if ((a2 & 0xFF00000000) == 0x200000000)
    {
      v25 = *(a3 + 16);
      ObservationRegistrar = REEntityGetObservationRegistrar();
      if (ObservationRegistrar)
      {
        outlined init with copy of [String : String](ObservationRegistrar, v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v27 = type metadata accessor for ObservationRegistrar();
        v28 = *(v27 - 8);
        v29 = *(v28 + 48);
        if (v29(v23, 1, v27) != 1)
        {
          v30 = outlined destroy of BodyTrackingComponent?(v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v30);
          *(&v47 - 4) = &type metadata for PerspectiveCameraComponent;
          *(&v47 - 3) = &protocol witness table for PerspectiveCameraComponent;
          *(&v47 - 2) = &type metadata for PerspectiveCameraComponent;
          swift_getKeyPath();
          v31 = *(a3 + 16);
          v32 = REEntityGetObservationRegistrar();
          if (v32)
          {
            outlined init with copy of [String : String](v32, v21, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v29(v21, 1, v27) != 1)
            {
              v52 = a3;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v28 + 8))(v21, v27);
              goto LABEL_22;
            }
          }

          else
          {
            (*(v28 + 56))(v21, 1, 1, v27);
          }

          outlined destroy of BodyTrackingComponent?(v21, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_22:
          REEntityRemoveComponentByClass();
          v43 = *(a3 + 16);
          v44 = REEntityGetObservationRegistrar();
          if (v44)
          {
            outlined init with copy of [String : String](v44, v18, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v29(v18, 1, v27) != 1)
            {
              v52 = a3;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v28 + 8))(v18, v27);
            }
          }

          else
          {
            (*(v28 + 56))(v18, 1, 1, v27);
          }

          outlined destroy of BodyTrackingComponent?(v18, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        }
      }

      else
      {
        v41 = type metadata accessor for ObservationRegistrar();
        (*(*(v41 - 8) + 56))(v23, 1, 1, v41);
      }

      outlined destroy of BodyTrackingComponent?(v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      return REEntityRemoveComponentByClass();
    }

    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass || (result = REEntityAddComponentNoEvents()) != 0)
    {
      v34 = *(a3 + 16);
      v35 = REEntityGetObservationRegistrar();
      if (v35)
      {
        outlined init with copy of [String : String](v35, v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v36 = type metadata accessor for ObservationRegistrar();
        v37 = *(v36 - 8);
        v48 = *(v37 + 48);
        v49 = v37;
        if (v48(v15, 1, v36) != 1)
        {
          v38 = outlined destroy of BodyTrackingComponent?(v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v38);
          *(&v47 - 4) = &type metadata for PerspectiveCameraComponent;
          *(&v47 - 3) = &protocol witness table for PerspectiveCameraComponent;
          *(&v47 - 2) = &type metadata for PerspectiveCameraComponent;
          swift_getKeyPath();
          v39 = *(a3 + 16);
          v40 = REEntityGetObservationRegistrar();
          if (v40)
          {
            outlined init with copy of [String : String](v40, v12, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v48(v12, 1, v36) != 1)
            {
              v52 = a3;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v49 + 8))(v12, v36);
              goto LABEL_30;
            }
          }

          else
          {
            (*(v49 + 56))(v12, 1, 1, v36);
          }

          outlined destroy of BodyTrackingComponent?(v12, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_30:
          REPerspectiveCameraComponentSetNear();
          REPerspectiveCameraComponentSetFar();
          REPerspectiveCameraComponentSetFieldOfView();
          REPerspectiveCameraComponentSetFieldOfViewDirection();
          RENetworkMarkComponentDirty();
          v45 = *(a3 + 16);
          v46 = REEntityGetObservationRegistrar();
          if (v46)
          {
            outlined init with copy of [String : String](v46, v9, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v48(v9, 1, v36) != 1)
            {
              v52 = a3;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v49 + 8))(v9, v36);
              goto LABEL_35;
            }
          }

          else
          {
            (*(v49 + 56))(v9, 1, 1, v36);
          }

          outlined destroy of BodyTrackingComponent?(v9, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_35:

          if (ComponentByClass)
          {
            return result;
          }

          return REEntitySendAddAndActivateComponentEvents();
        }
      }

      else
      {
        v42 = type metadata accessor for ObservationRegistrar();
        (*(*(v42 - 8) + 56))(v15, 1, 1, v42);
      }

      outlined destroy of BodyTrackingComponent?(v15, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      REPerspectiveCameraComponentSetNear();
      REPerspectiveCameraComponentSetFar();
      REPerspectiveCameraComponentSetFieldOfView();
      REPerspectiveCameraComponentSetFieldOfViewDirection();
      result = RENetworkMarkComponentDirty();
      if (ComponentByClass)
      {
        return result;
      }

      return REEntitySendAddAndActivateComponentEvents();
    }
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA017ModelDebugOptionsD0V_TtB5Tf4ndn_n(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &KeyPath - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &KeyPath - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &KeyPath - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &KeyPath - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &KeyPath - v21;
  v23 = *(a2 + 16);
  result = REComponentClassFromType();
  if (result)
  {
    if (a1 == 21)
    {
      v25 = *(a2 + 16);
      ObservationRegistrar = REEntityGetObservationRegistrar();
      if (ObservationRegistrar)
      {
        outlined init with copy of [String : String](ObservationRegistrar, v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v27 = type metadata accessor for ObservationRegistrar();
        v28 = *(v27 - 8);
        v29 = *(v28 + 48);
        if (v29(v22, 1, v27) != 1)
        {
          v54 = v29;
          v30 = outlined destroy of BodyTrackingComponent?(v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v30);
          *(&KeyPath - 4) = &type metadata for ModelDebugOptionsComponent;
          *(&KeyPath - 3) = &protocol witness table for ModelDebugOptionsComponent;
          *(&KeyPath - 2) = &type metadata for ModelDebugOptionsComponent;
          swift_getKeyPath();
          v31 = *(a2 + 16);
          v32 = REEntityGetObservationRegistrar();
          if (v32)
          {
            outlined init with copy of [String : String](v32, v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            v33 = v54;
            if (v54(v19, 1, v27) != 1)
            {
              v56 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              v33 = v54;
              (*(v28 + 8))(v19, v27);
              goto LABEL_22;
            }
          }

          else
          {
            (*(v28 + 56))(v19, 1, 1, v27);
            v33 = v54;
          }

          outlined destroy of BodyTrackingComponent?(v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_22:
          REEntityRemoveComponentByClass();
          v47 = *(a2 + 16);
          v48 = REEntityGetObservationRegistrar();
          if (v48)
          {
            outlined init with copy of [String : String](v48, v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v33(v16, 1, v27) != 1)
            {
              v56 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v28 + 8))(v16, v27);
            }
          }

          else
          {
            (*(v28 + 56))(v16, 1, 1, v27);
          }

          outlined destroy of BodyTrackingComponent?(v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        }
      }

      else
      {
        v45 = type metadata accessor for ObservationRegistrar();
        (*(*(v45 - 8) + 56))(v22, 1, 1, v45);
      }

      outlined destroy of BodyTrackingComponent?(v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      return REEntityRemoveComponentByClass();
    }

    ComponentByClass = REEntityGetComponentByClass();
    v35 = ComponentByClass;
    if (ComponentByClass || (result = REEntityAddComponentNoEvents(), (v35 = result) != 0))
    {
      v36 = *(a2 + 16);
      v37 = REEntityGetObservationRegistrar();
      if (v37)
      {
        outlined init with copy of [String : String](v37, v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v38 = type metadata accessor for ObservationRegistrar();
        v39 = *(v38 - 8);
        v40 = *(v39 + 48);
        v52 = v38;
        v53 = v40;
        v54 = v39;
        if ((v40)(v13, 1) != 1)
        {
          v41 = outlined destroy of BodyTrackingComponent?(v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v41);
          *(&KeyPath - 4) = &type metadata for ModelDebugOptionsComponent;
          *(&KeyPath - 3) = &protocol witness table for ModelDebugOptionsComponent;
          *(&KeyPath - 2) = &type metadata for ModelDebugOptionsComponent;
          KeyPath = swift_getKeyPath();
          v42 = *(a2 + 16);
          v43 = REEntityGetObservationRegistrar();
          if (v43)
          {
            outlined init with copy of [String : String](v43, v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            v44 = v52;
            if (v53(v10, 1, v52) != 1)
            {
              v56 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v54 + 1))(v10, v44);
              goto LABEL_30;
            }
          }

          else
          {
            v44 = v52;
            (*(v54 + 7))(v10, 1, 1, v52);
          }

          outlined destroy of BodyTrackingComponent?(v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_30:
          v55 = a1;
          v56 = v35;
          ModelDebugOptionsComponent.__toCore(_:)(&v56);
          v49 = *(a2 + 16);
          v50 = REEntityGetObservationRegistrar();
          if (v50)
          {
            outlined init with copy of [String : String](v50, v7, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v53(v7, 1, v44) != 1)
            {
              v56 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v54 + 1))(v7, v44);
              goto LABEL_35;
            }
          }

          else
          {
            (*(v54 + 7))(v7, 1, 1, v44);
          }

          outlined destroy of BodyTrackingComponent?(v7, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_35:

          if (ComponentByClass)
          {
            return result;
          }

          return REEntitySendAddAndActivateComponentEvents();
        }
      }

      else
      {
        v46 = type metadata accessor for ObservationRegistrar();
        (*(*(v46 - 8) + 56))(v13, 1, 1, v46);
      }

      outlined destroy of BodyTrackingComponent?(v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v55 = a1;
      v56 = v35;
      result = ModelDebugOptionsComponent.__toCore(_:)(&v56);
      if (ComponentByClass)
      {
        return result;
      }

      return REEntitySendAddAndActivateComponentEvents();
    }
  }

  return result;
}

double _s17RealityFoundation20VideoPlayerComponentVSgWOi0_(uint64_t a1)
{
  *(a1 + 125) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type Entity and conformance Entity()
{
  result = lazy protocol witness table cache variable for type Entity and conformance Entity;
  if (!lazy protocol witness table cache variable for type Entity and conformance Entity)
  {
    type metadata accessor for Entity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity and conformance Entity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity and conformance Entity;
  if (!lazy protocol witness table cache variable for type Entity and conformance Entity)
  {
    type metadata accessor for Entity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity and conformance Entity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity and conformance Entity;
  if (!lazy protocol witness table cache variable for type Entity and conformance Entity)
  {
    type metadata accessor for Entity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity and conformance Entity);
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation025ProjectiveTransformCameraD0V_TtB5Tf4ndn_n(__int128 *a1, uint64_t a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v73 = *a1;
  v74 = v4;
  v5 = a1[3];
  v75 = a1[2];
  v76 = v5;
  v6 = *(a1 + 9);
  v67 = *(a1 + 8);
  v65 = v6;
  v7 = *(a1 + 11);
  v69 = *(a1 + 10);
  v66 = v7;
  v8 = *(a1 + 13);
  v71 = *(a1 + 12);
  v68 = v8;
  v9 = *(a1 + 15);
  v72 = *(a1 + 14);
  v70 = v9;
  v10 = *(a1 + 128);
  v11 = *(a1 + 129);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v63 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v63 - v28;
  v77 = a2;
  v30 = *(a2 + 16);
  result = REComponentClassFromType();
  if (!result)
  {
    goto LABEL_41;
  }

  v32 = a1[6];
  v33 = a1[7];
  v34 = a1[4];
  v88[5] = a1[5];
  v88[6] = v32;
  v88[7] = v33;
  v36 = a1[2];
  v35 = a1[3];
  v89 = *(a1 + 64);
  v88[3] = v35;
  v88[4] = v34;
  v37 = *a1;
  v88[1] = a1[1];
  v88[2] = v36;
  v88[0] = v37;
  if (_s17RealityFoundation34ProjectiveTransformCameraComponentVSgWOg(v88) != 1)
  {
    v79 = v10;
    v78 = v11;
    ComponentByClass = REEntityGetComponentByClass();
    if (!ComponentByClass)
    {
      result = REEntityAddComponentNoEvents();
      if (!result)
      {
        goto LABEL_41;
      }
    }

    v47 = *(v77 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v49 = type metadata accessor for ObservationRegistrar();
      v50 = *(v49 - 8);
      v63 = *(v50 + 48);
      if (v63(v20, 1, v49) != 1)
      {
        v51 = outlined destroy of BodyTrackingComponent?(v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v51);
        *(&v63 - 4) = &type metadata for ProjectiveTransformCameraComponent;
        *(&v63 - 3) = &protocol witness table for ProjectiveTransformCameraComponent;
        *(&v63 - 2) = &type metadata for ProjectiveTransformCameraComponent;
        swift_getKeyPath();
        v52 = *(v77 + 16);
        v53 = REEntityGetObservationRegistrar();
        if (v53)
        {
          outlined init with copy of [String : String](v53, v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v63(v17, 1, v49) != 1)
          {
            v80 = v77;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v50 + 8))(v17, v49);
            goto LABEL_32;
          }
        }

        else
        {
          (*(v50 + 56))(v17, 1, 1, v49);
        }

        outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_32:
        v58 = v79;
        RECustomMatrixCameraComponentSetRenderProjectionMatrix();
        if ((v58 & 1) == 0)
        {
          v81 = v65;
          v80 = v67;
          v83 = v66;
          v82 = v69;
          v85 = v68;
          v84 = v71;
          v86 = v72;
          v87 = v70;
        }

        RECustomMatrixCameraComponentSetCullingTransformMatrix();
        RECustomMatrixCameraComponentSetAutoFitFullScreenAspect();
        RECustomMatrixCameraComponentSetEyeCount();
        RENetworkMarkComponentDirty();
        v59 = *(v77 + 16);
        v60 = REEntityGetObservationRegistrar();
        v61 = v64;
        if (v60)
        {
          outlined init with copy of [String : String](v60, v64, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v63(v61, 1, v49) != 1)
          {
            v80 = v77;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v50 + 8))(v61, v49);
            goto LABEL_39;
          }
        }

        else
        {
          (*(v50 + 56))(v64, 1, 1, v49);
        }

        outlined destroy of BodyTrackingComponent?(v61, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_39:

        if (ComponentByClass)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v55 = type metadata accessor for ObservationRegistrar();
      (*(*(v55 - 8) + 56))(v20, 1, 1, v55);
      v10 = v79;
    }

    outlined destroy of BodyTrackingComponent?(v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    RECustomMatrixCameraComponentSetRenderProjectionMatrix();
    if ((v10 & 1) == 0)
    {
      v81 = v65;
      v80 = v67;
      v83 = v66;
      v82 = v69;
      v85 = v68;
      v84 = v71;
      v86 = v72;
      v87 = v70;
    }

    RECustomMatrixCameraComponentSetCullingTransformMatrix();
    RECustomMatrixCameraComponentSetAutoFitFullScreenAspect();
    RECustomMatrixCameraComponentSetEyeCount();
    result = RENetworkMarkComponentDirty();
    if (ComponentByClass)
    {
      goto LABEL_41;
    }

LABEL_40:
    result = REEntitySendAddAndActivateComponentEvents();
    goto LABEL_41;
  }

  v38 = *(v77 + 16);
  v39 = REEntityGetObservationRegistrar();
  if (v39)
  {
    outlined init with copy of [String : String](v39, v29, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    v40 = type metadata accessor for ObservationRegistrar();
    v41 = *(v40 - 8);
    v42 = *(v41 + 48);
    if (v42(v29, 1, v40) != 1)
    {
      v43 = outlined destroy of BodyTrackingComponent?(v29, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      MEMORY[0x1EEE9AC00](v43);
      *(&v63 - 4) = &type metadata for ProjectiveTransformCameraComponent;
      *(&v63 - 3) = &protocol witness table for ProjectiveTransformCameraComponent;
      *(&v63 - 2) = &type metadata for ProjectiveTransformCameraComponent;
      swift_getKeyPath();
      v44 = *(v77 + 16);
      v45 = REEntityGetObservationRegistrar();
      if (v45)
      {
        outlined init with copy of [String : String](v45, v26, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        if (v42(v26, 1, v40) != 1)
        {
          v80 = v77;
          lazy protocol witness table accessor for type Entity and conformance Entity();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();
          (*(v41 + 8))(v26, v40);
          goto LABEL_24;
        }
      }

      else
      {
        (*(v41 + 56))(v26, 1, 1, v40);
      }

      outlined destroy of BodyTrackingComponent?(v26, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_24:
      REEntityRemoveComponentByClass();
      v56 = *(v77 + 16);
      v57 = REEntityGetObservationRegistrar();
      if (v57)
      {
        outlined init with copy of [String : String](v57, v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        if (v42(v23, 1, v40) != 1)
        {
          v80 = v77;
          lazy protocol witness table accessor for type Entity and conformance Entity();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();
          (*(v41 + 8))(v23, v40);
LABEL_29:

          goto LABEL_41;
        }
      }

      else
      {
        (*(v41 + 56))(v23, 1, 1, v40);
      }

      outlined destroy of BodyTrackingComponent?(v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      goto LABEL_29;
    }
  }

  else
  {
    v54 = type metadata accessor for ObservationRegistrar();
    (*(*(v54 - 8) + 56))(v29, 1, 1, v54);
  }

  outlined destroy of BodyTrackingComponent?(v29, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  result = REEntityRemoveComponentByClass();
LABEL_41:
  v62 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation018OrthographicCameraD0V_TtB5Tf4ndn_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v51 = *(a3 + 16);
  result = REComponentClassFromType();
  v50 = result;
  if (result)
  {
    if ((a2 & 0xFF00000000) == 0x200000000)
    {
      v25 = *(a3 + 16);
      ObservationRegistrar = REEntityGetObservationRegistrar();
      if (ObservationRegistrar)
      {
        outlined init with copy of [String : String](ObservationRegistrar, v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v27 = type metadata accessor for ObservationRegistrar();
        v28 = *(v27 - 8);
        v29 = *(v28 + 48);
        if (v29(v23, 1, v27) != 1)
        {
          v30 = outlined destroy of BodyTrackingComponent?(v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v30);
          *(&v47 - 4) = &type metadata for OrthographicCameraComponent;
          *(&v47 - 3) = &protocol witness table for OrthographicCameraComponent;
          *(&v47 - 2) = &type metadata for OrthographicCameraComponent;
          swift_getKeyPath();
          v31 = *(a3 + 16);
          v32 = REEntityGetObservationRegistrar();
          if (v32)
          {
            outlined init with copy of [String : String](v32, v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v29(v20, 1, v27) != 1)
            {
              v52 = a3;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v28 + 8))(v20, v27);
              goto LABEL_22;
            }
          }

          else
          {
            (*(v28 + 56))(v20, 1, 1, v27);
          }

          outlined destroy of BodyTrackingComponent?(v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_22:
          REEntityRemoveComponentByClass();
          v43 = *(a3 + 16);
          v44 = REEntityGetObservationRegistrar();
          if (v44)
          {
            outlined init with copy of [String : String](v44, v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v29(v17, 1, v27) != 1)
            {
              v52 = a3;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v28 + 8))(v17, v27);
            }
          }

          else
          {
            (*(v28 + 56))(v17, 1, 1, v27);
          }

          outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        }
      }

      else
      {
        v41 = type metadata accessor for ObservationRegistrar();
        (*(*(v41 - 8) + 56))(v23, 1, 1, v41);
      }

      outlined destroy of BodyTrackingComponent?(v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      return REEntityRemoveComponentByClass();
    }

    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass || (result = REEntityAddComponentNoEvents()) != 0)
    {
      v34 = *(a3 + 16);
      v35 = REEntityGetObservationRegistrar();
      if (v35)
      {
        outlined init with copy of [String : String](v35, v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v36 = type metadata accessor for ObservationRegistrar();
        v37 = *(v36 - 8);
        v48 = *(v37 + 48);
        v49 = v37;
        if (v48(v14, 1, v36) != 1)
        {
          v38 = outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v38);
          *(&v47 - 4) = &type metadata for OrthographicCameraComponent;
          *(&v47 - 3) = &protocol witness table for OrthographicCameraComponent;
          *(&v47 - 2) = &type metadata for OrthographicCameraComponent;
          swift_getKeyPath();
          v39 = *(a3 + 16);
          v40 = REEntityGetObservationRegistrar();
          if (v40)
          {
            outlined init with copy of [String : String](v40, v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v48(v11, 1, v36) != 1)
            {
              v52 = a3;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v49 + 8))(v11, v36);
              goto LABEL_30;
            }
          }

          else
          {
            (*(v49 + 56))(v11, 1, 1, v36);
          }

          outlined destroy of BodyTrackingComponent?(v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_30:
          REOrthographicCameraComponentSetNear();
          REOrthographicCameraComponentSetFar();
          REOrthographicCameraComponentSetScale();
          REOrthographicCameraComponentSetScaleDirection();
          RENetworkMarkComponentDirty();
          v45 = *(a3 + 16);
          v46 = REEntityGetObservationRegistrar();
          if (v46)
          {
            outlined init with copy of [String : String](v46, v8, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v48(v8, 1, v36) != 1)
            {
              v52 = a3;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v49 + 8))(v8, v36);
              goto LABEL_35;
            }
          }

          else
          {
            (*(v49 + 56))(v8, 1, 1, v36);
          }

          outlined destroy of BodyTrackingComponent?(v8, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_35:

          if (ComponentByClass)
          {
            return result;
          }

          return REEntitySendAddAndActivateComponentEvents();
        }
      }

      else
      {
        v42 = type metadata accessor for ObservationRegistrar();
        (*(*(v42 - 8) + 56))(v14, 1, 1, v42);
      }

      outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      REOrthographicCameraComponentSetNear();
      REOrthographicCameraComponentSetFar();
      REOrthographicCameraComponentSetScale();
      REOrthographicCameraComponentSetScaleDirection();
      result = RENetworkMarkComponentDirty();
      if (ComponentByClass)
      {
        return result;
      }

      return REEntitySendAddAndActivateComponentEvents();
    }
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation07OpacityD0V_TtB5Tf4ndn_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, float))
{
  v60 = a5;
  v61 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v58 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v58 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v58 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v58 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v58 - v26;
  v62 = *(a2 + 16);
  result = REComponentClassFromType();
  if (!result)
  {
    return result;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v43 = *(a2 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v27, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v45 = type metadata accessor for ObservationRegistrar();
      v46 = *(v45 - 8);
      v47 = *(v46 + 48);
      if (v47(v27, 1, v45) != 1)
      {
        v48 = outlined destroy of BodyTrackingComponent?(v27, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v48);
        v49 = v60;
        *(&v58 - 4) = a4;
        *(&v58 - 3) = v49;
        *(&v58 - 2) = a4;
        swift_getKeyPath();
        v50 = *(a2 + 16);
        v51 = REEntityGetObservationRegistrar();
        if (v51)
        {
          outlined init with copy of [String : String](v51, v25, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v47(v25, 1, v45) != 1)
          {
            v63 = a2;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v46 + 8))(v25, v45);
            goto LABEL_22;
          }
        }

        else
        {
          (*(v46 + 56))(v25, 1, 1, v45);
        }

        outlined destroy of BodyTrackingComponent?(v25, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_22:
        REEntityRemoveComponentByClass();
        v54 = *(a2 + 16);
        v55 = REEntityGetObservationRegistrar();
        if (v55)
        {
          outlined init with copy of [String : String](v55, v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v47(v22, 1, v45) != 1)
          {
            v63 = a2;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v46 + 8))(v22, v45);
          }
        }

        else
        {
          (*(v46 + 56))(v22, 1, 1, v45);
        }

        outlined destroy of BodyTrackingComponent?(v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v52 = type metadata accessor for ObservationRegistrar();
      (*(*(v52 - 8) + 56))(v27, 1, 1, v52);
    }

    outlined destroy of BodyTrackingComponent?(v27, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  ComponentByClass = REEntityGetComponentByClass();
  v30 = ComponentByClass;
  if (ComponentByClass || (result = REEntityAddComponentNoEvents(), (v30 = result) != 0))
  {
    v31 = *&a1;
    v32 = *(a2 + 16);
    v33 = REEntityGetObservationRegistrar();
    if (v33)
    {
      outlined init with copy of [String : String](v33, v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v34 = type metadata accessor for ObservationRegistrar();
      v35 = *(v34 - 8);
      v36 = *(v35 + 48);
      v58 = v34;
      v59 = v36;
      if ((v36)(v19, 1) != 1)
      {
        v37 = outlined destroy of BodyTrackingComponent?(v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v37);
        v38 = v60;
        *(&v58 - 4) = a4;
        *(&v58 - 3) = v38;
        *(&v58 - 2) = a4;
        KeyPath = swift_getKeyPath();
        v40 = *(a2 + 16);
        v41 = REEntityGetObservationRegistrar();
        if (v41)
        {
          outlined init with copy of [String : String](v41, v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          v42 = v58;
          if (v59(v16, 1, v58) != 1)
          {
            v63 = a2;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            v60 = KeyPath;
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v35 + 8))(v16, v42);
            goto LABEL_30;
          }
        }

        else
        {
          v42 = v58;
          (*(v35 + 56))(v16, 1, 1, v58);
        }

        outlined destroy of BodyTrackingComponent?(v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_30:
        v61(v30, v31);
        RENetworkMarkComponentDirty();
        v56 = *(a2 + 16);
        v57 = REEntityGetObservationRegistrar();
        if (v57)
        {
          outlined init with copy of [String : String](v57, v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v59(v13, 1, v42) != 1)
          {
            v63 = a2;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v35 + 8))(v13, v42);
            goto LABEL_35;
          }
        }

        else
        {
          (*(v35 + 56))(v13, 1, 1, v42);
        }

        outlined destroy of BodyTrackingComponent?(v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_35:

        if (ComponentByClass)
        {
          return result;
        }

        return REEntitySendAddAndActivateComponentEvents();
      }
    }

    else
    {
      v53 = type metadata accessor for ObservationRegistrar();
      (*(*(v53 - 8) + 56))(v19, 1, 1, v53);
    }

    outlined destroy of BodyTrackingComponent?(v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    v61(v30, v31);
    result = RENetworkMarkComponentDirty();
    if (ComponentByClass)
    {
      return result;
    }

    return REEntitySendAddAndActivateComponentEvents();
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012SpatialAudioD0V_TtB5Tf4ndn_n(_OWORD *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &KeyPath - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &KeyPath - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &KeyPath - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &KeyPath - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &KeyPath - v21;
  v23 = *(a2 + 16);
  result = REComponentClassFromType();
  if (result)
  {
    v59 = result;
    v60 = v23;
    v25 = a1[5];
    v76[4] = a1[4];
    v76[5] = v25;
    v77[0] = a1[6];
    *(v77 + 9) = *(a1 + 105);
    v26 = a1[1];
    v76[0] = *a1;
    v76[1] = v26;
    v27 = a1[3];
    v76[2] = a1[2];
    v76[3] = v27;
    if (_s17RealityFoundation21SpatialAudioComponentVSgWOg(v76) == 1)
    {
      v28 = *(a2 + 16);
      ObservationRegistrar = REEntityGetObservationRegistrar();
      if (ObservationRegistrar)
      {
        outlined init with copy of [String : String](ObservationRegistrar, v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v30 = type metadata accessor for ObservationRegistrar();
        v31 = *(v30 - 8);
        v32 = *(v31 + 48);
        if (v32(v22, 1, v30) != 1)
        {
          v33 = outlined destroy of BodyTrackingComponent?(v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v33);
          *(&KeyPath - 4) = &type metadata for SpatialAudioComponent;
          *(&KeyPath - 3) = &protocol witness table for SpatialAudioComponent;
          *(&KeyPath - 2) = &type metadata for SpatialAudioComponent;
          swift_getKeyPath();
          v34 = *(a2 + 16);
          v35 = REEntityGetObservationRegistrar();
          if (v35)
          {
            outlined init with copy of [String : String](v35, v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v32(v20, 1, v30) != 1)
            {
              *&v69 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v31 + 8))(v20, v30);
              goto LABEL_22;
            }
          }

          else
          {
            (*(v31 + 56))(v20, 1, 1, v30);
          }

          outlined destroy of BodyTrackingComponent?(v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_22:
          REEntityRemoveComponentByClass();
          v52 = *(a2 + 16);
          v53 = REEntityGetObservationRegistrar();
          if (v53)
          {
            outlined init with copy of [String : String](v53, v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v32(v17, 1, v30) != 1)
            {
              *&v69 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v31 + 8))(v17, v30);
            }
          }

          else
          {
            (*(v31 + 56))(v17, 1, 1, v30);
          }

          outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        }
      }

      else
      {
        v50 = type metadata accessor for ObservationRegistrar();
        (*(*(v50 - 8) + 56))(v22, 1, 1, v50);
      }

      outlined destroy of BodyTrackingComponent?(v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      return REEntityRemoveComponentByClass();
    }

    v36 = a1[5];
    v73 = a1[4];
    v74 = v36;
    v75[0] = a1[6];
    *(v75 + 9) = *(a1 + 105);
    v37 = a1[1];
    v69 = *a1;
    v70 = v37;
    v38 = a1[3];
    v71 = a1[2];
    v72 = v38;
    ComponentByClass = REEntityGetComponentByClass();
    v40 = ComponentByClass;
    if (ComponentByClass || (result = REEntityAddComponentNoEvents(), (v40 = result) != 0))
    {
      v41 = *(a2 + 16);
      v42 = REEntityGetObservationRegistrar();
      if (v42)
      {
        outlined init with copy of [String : String](v42, v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v43 = type metadata accessor for ObservationRegistrar();
        v44 = *(*(v43 - 8) + 48);
        v57 = *(v43 - 8);
        v58 = v44;
        if (v44(v14, 1, v43) != 1)
        {
          v45 = outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v45);
          *(&KeyPath - 4) = &type metadata for SpatialAudioComponent;
          *(&KeyPath - 3) = &protocol witness table for SpatialAudioComponent;
          *(&KeyPath - 2) = &type metadata for SpatialAudioComponent;
          KeyPath = swift_getKeyPath();
          v46 = *(a2 + 16);
          v47 = REEntityGetObservationRegistrar();
          if (v47)
          {
            outlined init with copy of [String : String](v47, v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            v48 = v58(v11, 1, v43);
            v49 = v57;
            if (v48 != 1)
            {
              *&v62 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v49 + 8))(v11, v43);
              goto LABEL_30;
            }
          }

          else
          {
            v49 = v57;
            (*(v57 + 56))(v11, 1, 1, v43);
          }

          outlined destroy of BodyTrackingComponent?(v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_30:
          v66 = v73;
          v67 = v74;
          v68[0] = v75[0];
          *(v68 + 9) = *(v75 + 9);
          v62 = v69;
          v63 = v70;
          v64 = v71;
          v65 = v72;
          v61 = v40;
          SpatialAudioComponent.__toCore(_:)(&v61);
          v54 = *(a2 + 16);
          v55 = REEntityGetObservationRegistrar();
          if (v55)
          {
            outlined init with copy of [String : String](v55, v8, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v58(v8, 1, v43) != 1)
            {
              *&v62 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v49 + 8))(v8, v43);
              goto LABEL_35;
            }
          }

          else
          {
            (*(v49 + 56))(v8, 1, 1, v43);
          }

          outlined destroy of BodyTrackingComponent?(v8, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_35:

          if (ComponentByClass)
          {
            return result;
          }

          return REEntitySendAddAndActivateComponentEvents();
        }
      }

      else
      {
        v51 = type metadata accessor for ObservationRegistrar();
        (*(*(v51 - 8) + 56))(v14, 1, 1, v51);
      }

      outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v66 = v73;
      v67 = v74;
      v68[0] = v75[0];
      *(v68 + 9) = *(v75 + 9);
      v62 = v69;
      v63 = v70;
      v64 = v71;
      v65 = v72;
      v61 = v40;
      result = SpatialAudioComponent.__toCore(_:)(&v61);
      if (ComponentByClass)
      {
        return result;
      }

      return REEntitySendAddAndActivateComponentEvents();
    }
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA016DirectionalLightD0V6ShadowV_TtB5Tf4ndn_n(unint64_t a1, uint64_t a2, unint64_t a3, char a4, unint64_t a5)
{
  v61 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &KeyPath - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &KeyPath - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &KeyPath - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &KeyPath - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &KeyPath - v26;
  v63 = *(a5 + 16);
  result = REComponentClassFromType();
  v62 = result;
  if (!result)
  {
    return result;
  }

  if (a4 == -1)
  {
    v41 = *(a5 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v27, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v43 = type metadata accessor for ObservationRegistrar();
      v44 = *(v43 - 8);
      v45 = *(v44 + 48);
      if (v45(v27, 1, v43) != 1)
      {
        v46 = outlined destroy of BodyTrackingComponent?(v27, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v46);
        *(&KeyPath - 4) = &type metadata for DirectionalLightComponent.Shadow;
        *(&KeyPath - 3) = &protocol witness table for DirectionalLightComponent.Shadow;
        *(&KeyPath - 2) = &type metadata for DirectionalLightComponent.Shadow;
        swift_getKeyPath();
        v47 = *(a5 + 16);
        v48 = REEntityGetObservationRegistrar();
        if (v48)
        {
          outlined init with copy of [String : String](v48, v25, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v45(v25, 1, v43) != 1)
          {
            v65 = a5;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v44 + 8))(v25, v43);
            goto LABEL_31;
          }
        }

        else
        {
          (*(v44 + 56))(v25, 1, 1, v43);
        }

        outlined destroy of BodyTrackingComponent?(v25, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_31:
        REEntityRemoveComponentByClass();
        v53 = *(a5 + 16);
        v54 = REEntityGetObservationRegistrar();
        if (v54)
        {
          outlined init with copy of [String : String](v54, v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v45(v22, 1, v43) != 1)
          {
            v65 = a5;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v44 + 8))(v22, v43);
          }
        }

        else
        {
          (*(v44 + 56))(v22, 1, 1, v43);
        }

        outlined destroy of BodyTrackingComponent?(v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v50 = type metadata accessor for ObservationRegistrar();
      (*(*(v50 - 8) + 56))(v27, 1, 1, v50);
    }

    outlined destroy of BodyTrackingComponent?(v27, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  ComponentByClass = REEntityGetComponentByClass();
  v30 = ComponentByClass;
  if (ComponentByClass || (result = REEntityAddComponentNoEvents(), (v30 = result) != 0))
  {
    v59 = HIDWORD(a1);
    v60 = HIDWORD(a3);
    v31 = *(a5 + 16);
    *(&v32 + 1) = a3;
    *&v32 = v61;
    v58 = v32 >> 32;
    v33 = REEntityGetObservationRegistrar();
    if (v33)
    {
      outlined init with copy of [String : String](v33, v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v34 = type metadata accessor for ObservationRegistrar();
      v35 = *(v34 - 8);
      v36 = *(v35 + 48);
      v56 = v34;
      v57 = v36;
      if ((v36)(v19, 1) != 1)
      {
        v37 = outlined destroy of BodyTrackingComponent?(v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v37);
        *(&KeyPath - 4) = &type metadata for DirectionalLightComponent.Shadow;
        *(&KeyPath - 3) = &protocol witness table for DirectionalLightComponent.Shadow;
        *(&KeyPath - 2) = &type metadata for DirectionalLightComponent.Shadow;
        KeyPath = swift_getKeyPath();
        v38 = *(a5 + 16);
        v39 = REEntityGetObservationRegistrar();
        if (v39)
        {
          outlined init with copy of [String : String](v39, v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          v40 = v56;
          if (v57(v16, 1, v56) != 1)
          {
            v65 = a5;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v35 + 8))(v16, v40);
            goto LABEL_22;
          }
        }

        else
        {
          v40 = v56;
          (*(v35 + 56))(v16, 1, 1, v56);
        }

        outlined destroy of BodyTrackingComponent?(v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_22:
        v65 = __PAIR64__(v59, a1);
        v66 = v61;
        v67 = v58;
        v68 = v60;
        v69 = a4 & 1;
        v64 = v30;
        DirectionalLightComponent.Shadow.__toCore(_:)(&v64);
        v51 = *(a5 + 16);
        v52 = REEntityGetObservationRegistrar();
        if (v52)
        {
          outlined init with copy of [String : String](v52, v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v57(v13, 1, v40) != 1)
          {
            v65 = a5;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v35 + 8))(v13, v40);
            goto LABEL_27;
          }
        }

        else
        {
          (*(v35 + 56))(v13, 1, 1, v40);
        }

        outlined destroy of BodyTrackingComponent?(v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_27:

        if (ComponentByClass)
        {
          return result;
        }

        return REEntitySendAddAndActivateComponentEvents();
      }
    }

    else
    {
      v49 = type metadata accessor for ObservationRegistrar();
      (*(*(v49 - 8) + 56))(v19, 1, 1, v49);
    }

    outlined destroy of BodyTrackingComponent?(v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    v65 = __PAIR64__(v59, a1);
    v66 = v61;
    v67 = v58;
    v68 = v60;
    v69 = a4 & 1;
    v64 = v30;
    result = DirectionalLightComponent.Shadow.__toCore(_:)(&v64);
    if (ComponentByClass)
    {
      return result;
    }

    return REEntitySendAddAndActivateComponentEvents();
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation019CharacterControllerD0V_TtB5Tf4ndn_n(int *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v57 = *(a1 + 2);
  v9 = a1[12];
  v58 = a1[13];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v54 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v54 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v54 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = v54 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = v54 - v27;
  v59 = *(a2 + 16);
  result = REComponentClassFromType();
  if (result)
  {
    if (a1[14])
    {
      v30 = *(a2 + 16);
      ObservationRegistrar = REEntityGetObservationRegistrar();
      if (ObservationRegistrar)
      {
        outlined init with copy of [String : String](ObservationRegistrar, v28, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v32 = type metadata accessor for ObservationRegistrar();
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);
        if (v34(v28, 1, v32) != 1)
        {
          v35 = outlined destroy of BodyTrackingComponent?(v28, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v35);
          v54[-4] = &type metadata for CharacterControllerComponent;
          v54[-3] = &protocol witness table for CharacterControllerComponent;
          v54[-2] = &type metadata for CharacterControllerComponent;
          swift_getKeyPath();
          v36 = *(a2 + 16);
          v37 = REEntityGetObservationRegistrar();
          if (v37)
          {
            outlined init with copy of [String : String](v37, v26, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v34(v26, 1, v32) != 1)
            {
              v60 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v33 + 8))(v26, v32);
              goto LABEL_22;
            }
          }

          else
          {
            (*(v33 + 56))(v26, 1, 1, v32);
          }

          outlined destroy of BodyTrackingComponent?(v26, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_22:
          REEntityRemoveComponentByClass();
          v50 = *(a2 + 16);
          v51 = REEntityGetObservationRegistrar();
          if (v51)
          {
            outlined init with copy of [String : String](v51, v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v34(v23, 1, v32) != 1)
            {
              v60 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v33 + 8))(v23, v32);
            }
          }

          else
          {
            (*(v33 + 56))(v23, 1, 1, v32);
          }

          outlined destroy of BodyTrackingComponent?(v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        }
      }

      else
      {
        v48 = type metadata accessor for ObservationRegistrar();
        (*(*(v48 - 8) + 56))(v28, 1, 1, v48);
      }

      outlined destroy of BodyTrackingComponent?(v28, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      return REEntityRemoveComponentByClass();
    }

    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass || (result = REEntityAddComponentNoEvents()) != 0)
    {
      v39 = *(a2 + 16);
      v40 = REEntityGetObservationRegistrar();
      if (v40)
      {
        outlined init with copy of [String : String](v40, v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v41 = type metadata accessor for ObservationRegistrar();
        v42 = *(v41 - 8);
        v43 = v41;
        v55 = *(v42 + 48);
        v56 = v42;
        if ((v55)(v20, 1) != 1)
        {
          v44 = outlined destroy of BodyTrackingComponent?(v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v44);
          v54[-4] = &type metadata for CharacterControllerComponent;
          v54[-3] = &protocol witness table for CharacterControllerComponent;
          v54[-2] = &type metadata for CharacterControllerComponent;
          v54[1] = swift_getKeyPath();
          v45 = *(a2 + 16);
          v46 = REEntityGetObservationRegistrar();
          if (v46)
          {
            outlined init with copy of [String : String](v46, v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            v47 = v43;
            if (v55(v17, 1, v43) != 1)
            {
              v60 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v56 + 8))(v17, v43);
              goto LABEL_30;
            }
          }

          else
          {
            v47 = v43;
            (*(v56 + 56))(v17, 1, 1, v43);
          }

          outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_30:
          RECharacterControllerComponentSetRadius();
          RECharacterControllerComponentSetHeight();
          RECharacterControllerComponentSetSkinWidth();
          RECharacterControllerComponentSetSlopeLimit();
          RECharacterControllerComponentSetStepLimit();
          RECharacterControllerComponentSetUpVector();
          RECharacterControllerComponentSetCollisionFilter();
          v52 = *(a2 + 16);
          v53 = REEntityGetObservationRegistrar();
          if (v53)
          {
            outlined init with copy of [String : String](v53, v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v55(v14, 1, v47) != 1)
            {
              v60 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v56 + 8))(v14, v47);
              goto LABEL_35;
            }
          }

          else
          {
            (*(v56 + 56))(v14, 1, 1, v47);
          }

          outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_35:

          if (ComponentByClass)
          {
            return result;
          }

          return REEntitySendAddAndActivateComponentEvents();
        }
      }

      else
      {
        v49 = type metadata accessor for ObservationRegistrar();
        (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      }

      outlined destroy of BodyTrackingComponent?(v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      RECharacterControllerComponentSetRadius();
      RECharacterControllerComponentSetHeight();
      RECharacterControllerComponentSetSkinWidth();
      RECharacterControllerComponentSetSlopeLimit();
      RECharacterControllerComponentSetStepLimit();
      RECharacterControllerComponentSetUpVector();
      result = RECharacterControllerComponentSetCollisionFilter();
      if (ComponentByClass)
      {
        return result;
      }

      return REEntitySendAddAndActivateComponentEvents();
    }
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation024CharacterControllerStateD0V_TtB5Tf4ndn_n(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v50 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v50 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v50 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v50 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v50 - v23;
  v25 = *(a4 + 16);
  result = REComponentClassFromType();
  if (result)
  {
    if (a3 == 2)
    {
      v27 = *(a4 + 16);
      ObservationRegistrar = REEntityGetObservationRegistrar();
      if (ObservationRegistrar)
      {
        outlined init with copy of [String : String](ObservationRegistrar, v24, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v29 = type metadata accessor for ObservationRegistrar();
        v30 = *(v29 - 8);
        v31 = *(v30 + 48);
        if (v31(v24, 1, v29) != 1)
        {
          v51 = v31;
          v32 = outlined destroy of BodyTrackingComponent?(v24, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v32);
          v50[-4] = &type metadata for CharacterControllerStateComponent;
          v50[-3] = &protocol witness table for CharacterControllerStateComponent;
          v50[-2] = &type metadata for CharacterControllerStateComponent;
          swift_getKeyPath();
          v33 = *(a4 + 16);
          v34 = REEntityGetObservationRegistrar();
          if (v34)
          {
            outlined init with copy of [String : String](v34, v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            v35 = v51;
            if (v51(v22, 1, v29) != 1)
            {
              v52 = a4;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              v35 = v51;
              (*(v30 + 8))(v22, v29);
              goto LABEL_22;
            }
          }

          else
          {
            (*(v30 + 56))(v22, 1, 1, v29);
            v35 = v51;
          }

          outlined destroy of BodyTrackingComponent?(v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_22:
          REEntityRemoveComponentByClass();
          v46 = *(a4 + 16);
          v47 = REEntityGetObservationRegistrar();
          if (v47)
          {
            outlined init with copy of [String : String](v47, v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v35(v19, 1, v29) != 1)
            {
              v52 = a4;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v30 + 8))(v19, v29);
            }
          }

          else
          {
            (*(v30 + 56))(v19, 1, 1, v29);
          }

          outlined destroy of BodyTrackingComponent?(v19, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        }
      }

      else
      {
        v44 = type metadata accessor for ObservationRegistrar();
        (*(*(v44 - 8) + 56))(v24, 1, 1, v44);
      }

      outlined destroy of BodyTrackingComponent?(v24, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      return REEntityRemoveComponentByClass();
    }

    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass || (result = REEntityAddComponentNoEvents()) != 0)
    {
      v37 = *(a4 + 16);
      v38 = REEntityGetObservationRegistrar();
      if (v38)
      {
        outlined init with copy of [String : String](v38, v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v39 = type metadata accessor for ObservationRegistrar();
        v40 = *(v39 - 8);
        v51 = *(v40 + 48);
        if (v51(v16, 1, v39) != 1)
        {
          v41 = outlined destroy of BodyTrackingComponent?(v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v41);
          v50[-4] = &type metadata for CharacterControllerStateComponent;
          v50[-3] = &protocol witness table for CharacterControllerStateComponent;
          v50[-2] = &type metadata for CharacterControllerStateComponent;
          v50[1] = swift_getKeyPath();
          v42 = *(a4 + 16);
          v43 = REEntityGetObservationRegistrar();
          if (v43)
          {
            outlined init with copy of [String : String](v43, v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v51(v13, 1, v39) != 1)
            {
              v52 = a4;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v40 + 8))(v13, v39);
              goto LABEL_30;
            }
          }

          else
          {
            (*(v40 + 56))(v13, 1, 1, v39);
          }

          outlined destroy of BodyTrackingComponent?(v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_30:
          v48 = *(a4 + 16);
          v49 = REEntityGetObservationRegistrar();
          if (v49)
          {
            outlined init with copy of [String : String](v49, v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v51(v10, 1, v39) != 1)
            {
              v52 = a4;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v40 + 8))(v10, v39);
              goto LABEL_35;
            }
          }

          else
          {
            (*(v40 + 56))(v10, 1, 1, v39);
          }

          outlined destroy of BodyTrackingComponent?(v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_35:

          if (ComponentByClass)
          {
            return result;
          }

          return REEntitySendAddAndActivateComponentEvents();
        }
      }

      else
      {
        v45 = type metadata accessor for ObservationRegistrar();
        (*(*(v45 - 8) + 56))(v16, 1, 1, v45);
      }

      result = outlined destroy of BodyTrackingComponent?(v16, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      if (ComponentByClass)
      {
        return result;
      }

      return REEntitySendAddAndActivateComponentEvents();
    }
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09SpotLightD0V6ShadowV_TtB5Tf4ndn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &KeyPath - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &KeyPath - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &KeyPath - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &KeyPath - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &KeyPath - v24;
  v57 = *(a4 + 16);
  result = REComponentClassFromType();
  if (result)
  {
    if ((a1 & 0xFF00000000) == 0x400000000)
    {
      v27 = *(a4 + 16);
      ObservationRegistrar = REEntityGetObservationRegistrar();
      if (ObservationRegistrar)
      {
        outlined init with copy of [String : String](ObservationRegistrar, v25, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v29 = type metadata accessor for ObservationRegistrar();
        v30 = *(v29 - 8);
        v31 = *(v30 + 48);
        if (v31(v25, 1, v29) != 1)
        {
          v32 = outlined destroy of BodyTrackingComponent?(v25, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v32);
          *(&KeyPath - 4) = &type metadata for SpotLightComponent.Shadow;
          *(&KeyPath - 3) = &protocol witness table for SpotLightComponent.Shadow;
          *(&KeyPath - 2) = &type metadata for SpotLightComponent.Shadow;
          swift_getKeyPath();
          v33 = *(a4 + 16);
          v34 = REEntityGetObservationRegistrar();
          if (v34)
          {
            outlined init with copy of [String : String](v34, v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v31(v23, 1, v29) != 1)
            {
              v59 = a4;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v30 + 8))(v23, v29);
              goto LABEL_22;
            }
          }

          else
          {
            (*(v30 + 56))(v23, 1, 1, v29);
          }

          outlined destroy of BodyTrackingComponent?(v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_22:
          REEntityRemoveComponentByClass();
          v48 = *(a4 + 16);
          v49 = REEntityGetObservationRegistrar();
          if (v49)
          {
            outlined init with copy of [String : String](v49, v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v31(v20, 1, v29) != 1)
            {
              v59 = a4;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v30 + 8))(v20, v29);
            }
          }

          else
          {
            (*(v30 + 56))(v20, 1, 1, v29);
          }

          outlined destroy of BodyTrackingComponent?(v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        }
      }

      else
      {
        v46 = type metadata accessor for ObservationRegistrar();
        (*(*(v46 - 8) + 56))(v25, 1, 1, v46);
      }

      outlined destroy of BodyTrackingComponent?(v25, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      return REEntityRemoveComponentByClass();
    }

    ComponentByClass = REEntityGetComponentByClass();
    v36 = ComponentByClass;
    if (ComponentByClass || (result = REEntityAddComponentNoEvents(), (v36 = result) != 0))
    {
      v37 = *(a4 + 16);
      v38 = REEntityGetObservationRegistrar();
      if (v38)
      {
        outlined init with copy of [String : String](v38, v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v39 = type metadata accessor for ObservationRegistrar();
        v40 = *(v39 - 8);
        v41 = *(v40 + 48);
        v53 = v39;
        v54 = v41;
        v55 = v40;
        if ((v41)(v17, 1) != 1)
        {
          v42 = outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v42);
          *(&KeyPath - 4) = &type metadata for SpotLightComponent.Shadow;
          *(&KeyPath - 3) = &protocol witness table for SpotLightComponent.Shadow;
          *(&KeyPath - 2) = &type metadata for SpotLightComponent.Shadow;
          KeyPath = swift_getKeyPath();
          v43 = *(a4 + 16);
          v44 = REEntityGetObservationRegistrar();
          if (v44)
          {
            outlined init with copy of [String : String](v44, v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            v45 = v53;
            if (v54(v14, 1, v53) != 1)
            {
              v59 = a4;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v55 + 8))(v14, v45);
              goto LABEL_30;
            }
          }

          else
          {
            v45 = v53;
            (*(v55 + 56))(v14, 1, 1, v53);
          }

          outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_30:
          LODWORD(v59) = a1;
          BYTE4(v59) = BYTE4(a1);
          v60 = a2;
          v61 = BYTE4(a2) & 1;
          v62 = v56;
          v63 = BYTE4(v56) & 1;
          v58 = v36;
          SpotLightComponent.Shadow.__toCore(_:)(&v58);
          v50 = *(a4 + 16);
          v51 = REEntityGetObservationRegistrar();
          if (v51)
          {
            outlined init with copy of [String : String](v51, v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v54(v11, 1, v45) != 1)
            {
              v59 = a4;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v55 + 8))(v11, v45);
              goto LABEL_35;
            }
          }

          else
          {
            (*(v55 + 56))(v11, 1, 1, v45);
          }

          outlined destroy of BodyTrackingComponent?(v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_35:

          if (ComponentByClass)
          {
            return result;
          }

          return REEntitySendAddAndActivateComponentEvents();
        }
      }

      else
      {
        v47 = type metadata accessor for ObservationRegistrar();
        (*(*(v47 - 8) + 56))(v17, 1, 1, v47);
      }

      outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      LODWORD(v59) = a1;
      BYTE4(v59) = BYTE4(a1);
      v60 = a2;
      v61 = BYTE4(a2) & 1;
      v62 = v56;
      v63 = BYTE4(v56) & 1;
      v58 = v36;
      result = SpotLightComponent.Shadow.__toCore(_:)(&v58);
      if (ComponentByClass)
      {
        return result;
      }

      return REEntitySendAddAndActivateComponentEvents();
    }
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012ChannelAudioD0V_TtB5Tf4ndn_nTm(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, float, double), void (*a8)(uint64_t, float, double), void (*a9)(uint64_t, float), void (*a10)(uint64_t, float, double))
{
  v75 = a8;
  v76 = a7;
  v78 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v71 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v71 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v71 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v71 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v71 - v30;
  v79 = a5;
  v77 = *(a5 + 16);
  result = REComponentClassFromType();
  if (result)
  {
    v33 = result;
    if (v78 == 2)
    {
      v34 = *(v79 + 16);
      ObservationRegistrar = REEntityGetObservationRegistrar();
      if (ObservationRegistrar)
      {
        outlined init with copy of [String : String](ObservationRegistrar, v31, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v36 = type metadata accessor for ObservationRegistrar();
        v37 = *(v36 - 8);
        v38 = *(v37 + 48);
        if (v38(v31, 1, v36) != 1)
        {
          v39 = outlined destroy of BodyTrackingComponent?(v31, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v39);
          v41 = v75;
          v40 = v76;
          *(&v71 - 4) = v76;
          *(&v71 - 3) = v41;
          *(&v71 - 2) = v40;
          swift_getKeyPath();
          v42 = *(v79 + 16);
          v43 = REEntityGetObservationRegistrar();
          if (v43)
          {
            outlined init with copy of [String : String](v43, v29, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v38(v29, 1, v36) != 1)
            {
              v80 = v79;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v37 + 8))(v29, v36);
              goto LABEL_24;
            }
          }

          else
          {
            (*(v37 + 56))(v29, 1, 1, v36);
          }

          outlined destroy of BodyTrackingComponent?(v29, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_24:
          REEntityRemoveComponentByClass();
          v65 = *(v79 + 16);
          v66 = REEntityGetObservationRegistrar();
          if (v66)
          {
            outlined init with copy of [String : String](v66, v26, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v38(v26, 1, v36) != 1)
            {
              v80 = v79;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v37 + 8))(v26, v36);
            }
          }

          else
          {
            (*(v37 + 56))(v26, 1, 1, v36);
          }

          outlined destroy of BodyTrackingComponent?(v26, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        }
      }

      else
      {
        v61 = type metadata accessor for ObservationRegistrar();
        (*(*(v61 - 8) + 56))(v31, 1, 1, v61);
      }

      outlined destroy of BodyTrackingComponent?(v31, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      return REEntityRemoveComponentByClass();
    }

    ComponentByClass = REEntityGetComponentByClass();
    v45 = ComponentByClass;
    if (ComponentByClass || (result = REEntityAddComponentNoEvents(), (v45 = result) != 0))
    {
      v73 = v33;
      v46 = *&a2;
      v47 = *&a3;
      v48 = *(v79 + 16);
      v49 = REEntityGetObservationRegistrar();
      if (v49)
      {
        outlined init with copy of [String : String](v49, v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v50 = type metadata accessor for ObservationRegistrar();
        v51 = *(v50 - 8);
        v52 = *(v51 + 48);
        if (v52(v23, 1, v50) != 1)
        {
          v71 = a10;
          v72 = v50;
          v53 = outlined destroy of BodyTrackingComponent?(v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v53);
          v55 = v75;
          v54 = v76;
          *(&v71 - 4) = v76;
          *(&v71 - 3) = v55;
          *(&v71 - 2) = v54;
          swift_getKeyPath();
          v56 = *(v79 + 16);
          v57 = REEntityGetObservationRegistrar();
          if (v57)
          {
            outlined init with copy of [String : String](v57, v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            v58 = v72;
            v59 = v52(v20, 1, v72);
            v60 = v74;
            if (v59 != 1)
            {
              v80 = v79;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              v58 = v72;
              (*(v51 + 8))(v20, v72);
              goto LABEL_32;
            }
          }

          else
          {
            v58 = v72;
            (*(v51 + 56))(v20, 1, 1, v72);
            v60 = v74;
          }

          outlined destroy of BodyTrackingComponent?(v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_32:
          v67 = *&a1;
          a9(v45, v67);
          if (v78)
          {
            v68 = v46;
            v71(v45, v68, v47);
          }

          RENetworkMarkComponentDirty();
          v69 = *(v79 + 16);
          v70 = REEntityGetObservationRegistrar();
          if (v70)
          {
            outlined init with copy of [String : String](v70, v60, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v52(v60, 1, v58) != 1)
            {
              v80 = v79;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v51 + 8))(v60, v58);
              goto LABEL_39;
            }
          }

          else
          {
            (*(v51 + 56))(v60, 1, 1, v58);
          }

          outlined destroy of BodyTrackingComponent?(v60, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_39:

          if (ComponentByClass)
          {
            return result;
          }

          return REEntitySendAddAndActivateComponentEvents();
        }
      }

      else
      {
        v62 = type metadata accessor for ObservationRegistrar();
        (*(*(v62 - 8) + 56))(v23, 1, 1, v62);
      }

      outlined destroy of BodyTrackingComponent?(v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v63 = *&a1;
      a9(v45, v63);
      if (v78)
      {
        v64 = v46;
        a10(v45, v64, v47);
      }

      result = RENetworkMarkComponentDirty();
      if (!ComponentByClass)
      {
        return REEntitySendAddAndActivateComponentEvents();
      }
    }
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA013PhysicsMotionD0V_TtB5Tf4ndn_n(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v6 = a1[2];
  v5 = a1[3];
  v54 = a1[1];
  v55 = v6;
  v56 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &KeyPath - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &KeyPath - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &KeyPath - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &KeyPath - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &KeyPath - v24;
  v57 = *(a2 + 16);
  result = REComponentClassFromType();
  if (result)
  {
    if (a1[4])
    {
      v27 = *(a2 + 16);
      ObservationRegistrar = REEntityGetObservationRegistrar();
      if (ObservationRegistrar)
      {
        outlined init with copy of [String : String](ObservationRegistrar, v25, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v29 = type metadata accessor for ObservationRegistrar();
        v30 = *(v29 - 8);
        v31 = *(v30 + 48);
        if (v31(v25, 1, v29) != 1)
        {
          v32 = outlined destroy of BodyTrackingComponent?(v25, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v32);
          *(&KeyPath - 4) = &type metadata for PhysicsMotionComponent;
          *(&KeyPath - 3) = &protocol witness table for PhysicsMotionComponent;
          *(&KeyPath - 2) = &type metadata for PhysicsMotionComponent;
          swift_getKeyPath();
          v33 = *(a2 + 16);
          v34 = REEntityGetObservationRegistrar();
          if (v34)
          {
            outlined init with copy of [String : String](v34, v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v31(v23, 1, v29) != 1)
            {
              v58 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v30 + 8))(v23, v29);
              goto LABEL_22;
            }
          }

          else
          {
            (*(v30 + 56))(v23, 1, 1, v29);
          }

          outlined destroy of BodyTrackingComponent?(v23, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_22:
          REEntityRemoveComponentByClass();
          v47 = *(a2 + 16);
          v48 = REEntityGetObservationRegistrar();
          if (v48)
          {
            outlined init with copy of [String : String](v48, v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v31(v20, 1, v29) != 1)
            {
              v58 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v30 + 8))(v20, v29);
            }
          }

          else
          {
            (*(v30 + 56))(v20, 1, 1, v29);
          }

          outlined destroy of BodyTrackingComponent?(v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        }
      }

      else
      {
        v45 = type metadata accessor for ObservationRegistrar();
        (*(*(v45 - 8) + 56))(v25, 1, 1, v45);
      }

      outlined destroy of BodyTrackingComponent?(v25, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      return REEntityRemoveComponentByClass();
    }

    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass || (result = REEntityAddComponentNoEvents()) != 0)
    {
      v36 = *(a2 + 16);
      v37 = REEntityGetObservationRegistrar();
      if (v37)
      {
        outlined init with copy of [String : String](v37, v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        v38 = type metadata accessor for ObservationRegistrar();
        v39 = *(*(v38 - 8) + 48);
        v52 = *(v38 - 8);
        v53 = v39;
        if (v39(v17, 1, v38) != 1)
        {
          v40 = outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          MEMORY[0x1EEE9AC00](v40);
          *(&KeyPath - 4) = &type metadata for PhysicsMotionComponent;
          *(&KeyPath - 3) = &protocol witness table for PhysicsMotionComponent;
          *(&KeyPath - 2) = &type metadata for PhysicsMotionComponent;
          KeyPath = swift_getKeyPath();
          v41 = *(a2 + 16);
          v42 = REEntityGetObservationRegistrar();
          if (v42)
          {
            outlined init with copy of [String : String](v42, v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            v43 = v53(v14, 1, v38);
            v44 = v52;
            if (v43 != 1)
            {
              v58 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();
              (*(v44 + 8))(v14, v38);
              goto LABEL_30;
            }
          }

          else
          {
            v44 = v52;
            (*(v52 + 56))(v14, 1, 1, v38);
          }

          outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_30:
          REMotionStateComponentSetLinearVelocity();
          REMotionStateComponentSetAngularVelocity();
          RENetworkMarkComponentDirty();
          v49 = *(a2 + 16);
          v50 = REEntityGetObservationRegistrar();
          if (v50)
          {
            outlined init with copy of [String : String](v50, v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
            if (v53(v11, 1, v38) != 1)
            {
              v58 = a2;
              lazy protocol witness table accessor for type Entity and conformance Entity();
              ObservationRegistrar.didSet<A, B>(_:keyPath:)();
              (*(v44 + 8))(v11, v38);
              goto LABEL_35;
            }
          }

          else
          {
            (*(v44 + 56))(v11, 1, 1, v38);
          }

          outlined destroy of BodyTrackingComponent?(v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_35:

          if (ComponentByClass)
          {
            return result;
          }

          return REEntitySendAddAndActivateComponentEvents();
        }
      }

      else
      {
        v46 = type metadata accessor for ObservationRegistrar();
        (*(*(v46 - 8) + 56))(v17, 1, 1, v46);
      }

      outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      REMotionStateComponentSetLinearVelocity();
      REMotionStateComponentSetAngularVelocity();
      result = RENetworkMarkComponentDirty();
      if (ComponentByClass)
      {
        return result;
      }

      return REEntitySendAddAndActivateComponentEvents();
    }
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation018AdaptiveResolutionD0V_TtB5Tf4ndn_n(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v48 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v48 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v48 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v48 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v48 - v21;
  v23 = *(a2 + 16);
  result = REComponentClassFromType();
  if (!result)
  {
    return result;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v33 = *(a2 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v35 = type metadata accessor for ObservationRegistrar();
      v36 = *(v35 - 8);
      v37 = *(v36 + 48);
      if (v37(v22, 1, v35) != 1)
      {
        v49 = v37;
        v38 = outlined destroy of BodyTrackingComponent?(v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v38);
        v48[-4] = &type metadata for AdaptiveResolutionComponent;
        v48[-3] = &protocol witness table for AdaptiveResolutionComponent;
        v48[-2] = &type metadata for AdaptiveResolutionComponent;
        swift_getKeyPath();
        v39 = *(a2 + 16);
        v40 = REEntityGetObservationRegistrar();
        if (v40)
        {
          outlined init with copy of [String : String](v40, v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          v41 = v49;
          if (v49(v20, 1, v35) != 1)
          {
            v50 = a2;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            v41 = v49;
            (*(v36 + 8))(v20, v35);
            goto LABEL_22;
          }
        }

        else
        {
          (*(v36 + 56))(v20, 1, 1, v35);
          v41 = v49;
        }

        outlined destroy of BodyTrackingComponent?(v20, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_22:
        REEntityRemoveComponentByClass();
        v44 = *(a2 + 16);
        v45 = REEntityGetObservationRegistrar();
        if (v45)
        {
          outlined init with copy of [String : String](v45, v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v41(v17, 1, v35) != 1)
          {
            v50 = a2;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v36 + 8))(v17, v35);
          }
        }

        else
        {
          (*(v36 + 56))(v17, 1, 1, v35);
        }

        outlined destroy of BodyTrackingComponent?(v17, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v42 = type metadata accessor for ObservationRegistrar();
      (*(*(v42 - 8) + 56))(v22, 1, 1, v42);
    }

    outlined destroy of BodyTrackingComponent?(v22, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass || (result = REEntityAddComponentNoEvents()) != 0)
  {
    v26 = *(a2 + 16);
    v27 = REEntityGetObservationRegistrar();
    if (v27)
    {
      outlined init with copy of [String : String](v27, v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v28 = type metadata accessor for ObservationRegistrar();
      v29 = *(v28 - 8);
      v49 = *(v29 + 48);
      if (v49(v14, 1, v28) != 1)
      {
        v30 = outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v30);
        v48[-4] = &type metadata for AdaptiveResolutionComponent;
        v48[-3] = &protocol witness table for AdaptiveResolutionComponent;
        v48[-2] = &type metadata for AdaptiveResolutionComponent;
        v48[1] = swift_getKeyPath();
        v31 = *(a2 + 16);
        v32 = REEntityGetObservationRegistrar();
        if (v32)
        {
          outlined init with copy of [String : String](v32, v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v49(v11, 1, v28) != 1)
          {
            v50 = a2;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v29 + 8))(v11, v28);
            goto LABEL_30;
          }
        }

        else
        {
          (*(v29 + 56))(v11, 1, 1, v28);
        }

        outlined destroy of BodyTrackingComponent?(v11, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_30:
        v46 = *(a2 + 16);
        v47 = REEntityGetObservationRegistrar();
        if (v47)
        {
          outlined init with copy of [String : String](v47, v8, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v49(v8, 1, v28) != 1)
          {
            v50 = a2;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v29 + 8))(v8, v28);
            goto LABEL_35;
          }
        }

        else
        {
          (*(v29 + 56))(v8, 1, 1, v28);
        }

        outlined destroy of BodyTrackingComponent?(v8, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_35:

        if (ComponentByClass)
        {
          return result;
        }

        return REEntitySendAddAndActivateComponentEvents();
      }
    }

    else
    {
      v43 = type metadata accessor for ObservationRegistrar();
      (*(*(v43 - 8) + 56))(v14, 1, 1, v43);
    }

    result = outlined destroy of BodyTrackingComponent?(v14, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    if (ComponentByClass)
    {
      return result;
    }

    return REEntitySendAddAndActivateComponentEvents();
  }

  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation017EventSubscriptionD0V_TtB5Tf4ndn_n(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = *(a2 + 16);
  specialized static SceneManager.customComponentType(_:)(&type metadata for EventSubscriptionComponent, &protocol witness table for EventSubscriptionComponent);
  ComponentByClass = REEntityGetComponentByClass();
  outlined init with copy of [String : String](a1, v36, &_s17RealityFoundation26EventSubscriptionComponentVSgMd, &_s17RealityFoundation26EventSubscriptionComponentVSgMR);
  if (!*(&v37 + 1))
  {
    result = outlined destroy of BodyTrackingComponent?(v36, &_s17RealityFoundation26EventSubscriptionComponentVSgMd, &_s17RealityFoundation26EventSubscriptionComponentVSgMR);
    if (!ComponentByClass)
    {
      return result;
    }

    v20 = *(a2 + 16);
    ObservationRegistrar = REEntityGetObservationRegistrar();
    if (ObservationRegistrar)
    {
      outlined init with copy of [String : String](ObservationRegistrar, v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      v22 = type metadata accessor for ObservationRegistrar();
      v23 = *(v22 - 8);
      v34 = *(v23 + 48);
      v35 = v23;
      if (v34(v13, 1, v22) != 1)
      {
        v24 = outlined destroy of BodyTrackingComponent?(v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
        MEMORY[0x1EEE9AC00](v24);
        *(&v33 - 4) = &type metadata for EventSubscriptionComponent;
        *(&v33 - 3) = &protocol witness table for EventSubscriptionComponent;
        *(&v33 - 2) = &type metadata for EventSubscriptionComponent;
        swift_getKeyPath();
        v25 = *(a2 + 16);
        v26 = REEntityGetObservationRegistrar();
        if (v26)
        {
          outlined init with copy of [String : String](v26, v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          v27 = v34;
          v28 = v34(v10, 1, v22);
          v29 = v35;
          if (v28 != 1)
          {
            *&v38[0] = a2;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();
            (*(v29 + 8))(v10, v22);
            goto LABEL_19;
          }
        }

        else
        {
          v29 = v35;
          (*(v35 + 56))(v10, 1, 1, v22);
          v27 = v34;
        }

        outlined destroy of BodyTrackingComponent?(v10, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_19:
        REEntityRemoveComponentByClass();
        v31 = *(a2 + 16);
        v32 = REEntityGetObservationRegistrar();
        if (v32)
        {
          outlined init with copy of [String : String](v32, v7, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
          if (v27(v7, 1, v22) != 1)
          {
            *&v38[0] = a2;
            lazy protocol witness table accessor for type Entity and conformance Entity();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
            (*(v29 + 8))(v7, v22);
          }
        }

        else
        {
          (*(v29 + 56))(v7, 1, 1, v22);
        }

        outlined destroy of BodyTrackingComponent?(v7, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
      }
    }

    else
    {
      v30 = type metadata accessor for ObservationRegistrar();
      (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
    }

    outlined destroy of BodyTrackingComponent?(v13, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
    return REEntityRemoveComponentByClass();
  }

  v38[0] = v36[0];
  v38[1] = v36[1];
  v38[2] = v37;
  if (ComponentByClass || REEntityAddComponentNoEvents())
  {
    Object = RECustomComponentGetObject();
    if (Object)
    {
      MEMORY[0x1EEE9AC00](Object);
      *(&v33 - 4) = v38;
      *(&v33 - 3) = v17;
      *(&v33 - 16) = v18;
      _s10RealityKit6EntityC0A10FoundationE12withMutation13componentType_q_Sgxm_q_yKXEtKAA9ComponentRzr0_lFAA02__c4InfoI0V_ytTt0g5Tm(_s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFyyXEfU1_0A10Foundation017EventSubscriptionD0V_Tt0g5TA, (&v33 - 6), &type metadata for EventSubscriptionComponent, &protocol witness table for EventSubscriptionComponent, specialized Entity.withMutation<A, B>(keyPath:_:));
      if (!ComponentByClass)
      {
        REEntitySendAddAndActivateComponentEvents();
      }

      RENetworkMarkComponentDirty();
    }
  }

  return outlined destroy of EventSubscriptionComponent(v38);
}

uint64_t outlined consume of StateMachineGraph?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *v2;
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(v2 + 4);
  return specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v8 = *(v1 + 5);
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v10 = v2;
  return ReferenceComponent.__toCore(_:)(&v10);
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(*(v0 + 16));
}

{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return AnchoringComponent.__toCore(_:)(&v3);
}

{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  *v5 = *v2;
  *&v5[3] = *(v2 + 12);
  return specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(v5);
}

{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *v2;
  v5 = *(v2 + 2);
  return specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)();
}

{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *v2;
  v5 = *(v2 + 2);
  v6 = *(v2 + 12);
  return specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)();
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(*(v0 + 16));
}

{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return ManipulationComponent.__toCore(_:)(&v3);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 1);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v7 = v2;
  return InputTargetComponent.__toCore(_:)(&v7);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[9];
  v18 = v1[8];
  v19[0] = v3;
  *(v19 + 12) = *(v1 + 156);
  v4 = v1[5];
  v14 = v1[4];
  v15 = v4;
  v5 = v1[7];
  v16 = v1[6];
  v17 = v5;
  v6 = v1[1];
  v10 = *v1;
  v11 = v6;
  v7 = v1[3];
  v12 = v1[2];
  v13 = v7;
  v9 = v2;
  return PhysicsBodyComponent.__toCore(_:)(&v9);
}

{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 20);
  v6[0] = *(v0 + 24);
  v6[1] = v2;
  v7 = v3;
  v8 = *(v1 + 12);
  v9 = v4;
  return CollisionComponent.__toCore(_:)(v6);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *v1;
  v3 = v1[1];
  v6[1] = v4;
  v6[2] = v3;
  v6[0] = v2;
  return PhysicsJointsComponent.__toCore(_:)(v6);
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(*(v0 + 16));
}

{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = *(v1 + 10);
  v6 = *(v1 + 32);
  v8[0] = *(v0 + 24);
  v8[1] = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = *(v1 + 16);
  v13 = v6;
  return SynchronizationComponent.__toCore(_:)(v8);
}

{
  return specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  v1 = **(v0 + 16);
  v3 = *(v0 + 24);
  return AudioGroupPlaybackComponent.__toCore(_:)(&v3, v1);
}

uint64_t outlined init with copy of BodyTrackingComponent.Target(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BodyTrackingComponent.Target(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of BodyTrackingComponent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of BodyTrackingComponent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v4 = v1[3];
  v8 = v1[2];
  v9 = v4;
  v5 = v2;
  __AccessibilityComponent.__toCore(_:)(&v5);
}

double _s10RealityKit20PhysicsBodyComponentVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 156) = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t *partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = *(v1 + 8);
  LOBYTE(v1) = *(v1 + 12);
  v5[0] = *(v0 + 24);
  v5[1] = v2;
  v6 = v3;
  v7 = v1;
  return HoverEffectComponent.__toCore(_:)(v5);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 2);
  v6 = *v1;
  v7 = v3;
  v5 = v2;
  return _proto_StereoProjectiveTransformCameraComponent_v1.__toCore(_:)(&v5);
}

uint64_t _s17RealityFoundation21SpatialAudioComponentVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 72);
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

double _s17RealityFoundation21SpatialAudioComponentVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 105) = 0u;
  return result;
}

uint64_t _s10RealityKit20PhysicsBodyComponentVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[3];
  v9 = v1[2];
  v10 = v3;
  v11 = *(v1 + 8);
  v4 = v1[1];
  v7 = *v1;
  v8 = v4;
  v6 = v2;
  VFXComponent.__toCore(_:)(&v6);
  return result;
}

uint64_t outlined copy of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
  }

  return result;
}

uint64_t _s17RealityFoundation34ProjectiveTransformCameraComponentVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 129);
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

RealityKit::SceneUnderstandingComponent __swiftcall SceneUnderstandingComponent.init()()
{
  *v0 = 2;
  *(v0 + 8) = 1;
  return result;
}

uint64_t SceneUnderstandingComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  if (v3 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (*(v1 + 1))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return MEMORY[0x1EEDFE468](v2, v5, v6);
}

RealityKit::SceneUnderstandingComponent __swiftcall SceneUnderstandingComponent.init(from:)(Swift::OpaquePointer from)
{
  v2 = v1;
  SourceType = RESceneUnderstandingComponentGetSourceType();
  if (SourceType < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = SourceType;
    LOBYTE(SourceType) = RESceneUnderstandingComponentIsEntityType();
    if (SourceType)
    {
      v6 = 0;
    }

    else
    {
      SourceType = RESceneUnderstandingComponentIsEntityType();
      if (SourceType)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }

    *v2 = v6;
    *(v2 + 8) = v5 == 2;
  }

  result.internalOriginType = v4;
  result.entityType = SourceType;
  return result;
}

uint64_t SceneUnderstandingComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16[-v8];
  v10 = *v0;
  v11 = *(v0 + 1);
  v16[0] = v10;
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1897FC0;
  *(v12 + 32) = 0x7954797469746E65;
  *(v12 + 40) = 0xEA00000000006570;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27SceneUnderstandingComponentV10EntityTypeOSgMd, &_s10RealityKit27SceneUnderstandingComponentV10EntityTypeOSgMR);
  *(v12 + 48) = v10;
  *(v12 + 72) = v13;
  *(v12 + 80) = 0x6E696769726FLL;
  *(v12 + 88) = 0xE600000000000000;
  *(v12 + 120) = &type metadata for SceneUnderstandingComponent.Origin;
  *(v12 + 96) = v11 != 0;
  v14 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t lazy protocol witness table accessor for type SceneUnderstandingComponent.EntityType and conformance SceneUnderstandingComponent.EntityType()
{
  result = lazy protocol witness table cache variable for type SceneUnderstandingComponent.EntityType and conformance SceneUnderstandingComponent.EntityType;
  if (!lazy protocol witness table cache variable for type SceneUnderstandingComponent.EntityType and conformance SceneUnderstandingComponent.EntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneUnderstandingComponent.EntityType and conformance SceneUnderstandingComponent.EntityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneUnderstandingComponent.Origin and conformance SceneUnderstandingComponent.Origin()
{
  result = lazy protocol witness table cache variable for type SceneUnderstandingComponent.Origin and conformance SceneUnderstandingComponent.Origin;
  if (!lazy protocol witness table cache variable for type SceneUnderstandingComponent.Origin and conformance SceneUnderstandingComponent.Origin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneUnderstandingComponent.Origin and conformance SceneUnderstandingComponent.Origin);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneUnderstandingComponent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneUnderstandingComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

double static TextureResource.MipmapSelection.all.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1C189F1A0;
  return result;
}

uint64_t static TextureResource.MipmapSelection.skipLargest(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t TextureResource.PartialContents.Impl.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  RERelease();
  v2 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t TextureResource.PartialContents.mipmaps.getter@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 24);
  result = RETextureAssetDataGetMipmapRange();
  v6 = v5;
  if (v7 == -1 && v5 == 0)
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t TextureResource.PartialContents.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x1C68F4C10](*(*(*v0 + 16) + 16));
  return MEMORY[0x1C68F4C10](*(v1 + 24));
}

Swift::Int TextureResource.PartialContents.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(*(v1 + 16) + 16));
  MEMORY[0x1C68F4C10](*(v1 + 24));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextureResource.PartialContents.Impl()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(*(v1 + 16) + 16));
  MEMORY[0x1C68F4C10](*(v1 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TextureResource.PartialContents.Impl()
{
  v1 = *v0;
  MEMORY[0x1C68F4C10](*(*(*v0 + 16) + 16));
  return MEMORY[0x1C68F4C10](*(v1 + 24));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureResource.PartialContents.Impl()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(*(v1 + 16) + 16));
  MEMORY[0x1C68F4C10](*(v1 + 24));
  return Hasher._finalize()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance TextureResource.MemoryEstimate.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TextureResource.MemoryEstimate.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x80000001C18DF0E0 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C18DF100 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextureResource.MemoryEstimate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextureResource.MemoryEstimate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextureResource.MemoryEstimate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15TextureResourceC0D10FoundationE14MemoryEstimateV10CodingKeys33_14BD4E87735FC7DDB3A679582F35576FLLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15TextureResourceC0D10FoundationE14MemoryEstimateV10CodingKeys33_14BD4E87735FC7DDB3A679582F35576FLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t TextureResource.MemoryEstimate.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1C68F4C10](*v0);
  return MEMORY[0x1C68F4C10](v1);
}

Swift::Int TextureResource.MipmapSelection.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

uint64_t TextureResource.MemoryEstimate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15TextureResourceC0D10FoundationE14MemoryEstimateV10CodingKeys33_14BD4E87735FC7DDB3A679582F35576FLLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15TextureResourceC0D10FoundationE14MemoryEstimateV10CodingKeys33_14BD4E87735FC7DDB3A679582F35576FLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureResource.MipmapSelection()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

uint64_t TextureResource.sourceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  CanBeStreamed = RETextureAssetCanBeStreamed();
  result = RETextureAssetGetSourceMipmapLevelCount();
  *a1 = CanBeStreamed;
  *(a1 + 8) = result;
  return result;
}

uint64_t TextureResource.allocatedSizeBytes.getter()
{
  v1 = v0;
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v2 + 40, &v7);
  if (v8)
  {
    outlined init with take of ForceEffectBase(&v7, v9);
    v4 = v10;
    v5 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v5 + 24))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v9);
    v6 = *(v1 + 16);
    return RETextureAssetGetTextureDataAllocatedSize();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TextureResource.memoryEstimate(for:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v23 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a1[1];
  v7 = swift_slowAlloc();
  if (v5 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v8 | v5) < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8 > 0xFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v9 = v7;
  *v7 = __PAIR64__(v8, v5);
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __RenderService?(v10 + 40, &v18);
  if (!v19)
  {
    goto LABEL_12;
  }

  outlined init with take of ForceEffectBase(&v18, v20);
  v11 = v21;
  v12 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v12 + 24))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v20);
  v20[0] = 0;
  v13 = *(v3 + 16);
  v14 = RETextureAssetMemoryEstimateForLoadingPartialContents();
  if (v20[0])
  {
    *&v18 = v20[0];
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
    Error.localizedDescription.getter();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = v15;
    a2[1] = v14;
    result = MEMORY[0x1C6902A30](v9, -1, -1);
    v17 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t TextureResource.replace(with:)(uint64_t *a1)
{
  v3 = *a1;
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v5;
  v2[7] = v4;

  return MEMORY[0x1EEE6DFA0](TextureResource.replace(with:), v5, v4);
}

uint64_t TextureResource.replace(with:)()
{
  v1 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = specialized static __ServiceLocator.shared.getter();
  *(v0 + 64) = v2;

  *(v0 + 72) = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = TextureResource.replace(with:);

  return MEMORY[0x1EEE6DE38]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = TextureResource.replace(with:);
  }

  else
  {
    v7 = v2[9];
    v8 = v2[10];

    v4 = v2[6];
    v5 = v2[7];
    v6 = TextureResource.replace(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[12];

  return v5();
}

uint64_t closure #1 in TextureResource.replace(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  swift_beginAccess();
  v19 = *(a2 + 24);
  swift_unownedRetainStrong();
  v27 = *(v19 + 32);

  (*(v15 + 16))(v18, a1, v14);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v15 + 32))(v22 + v20, v18, v14);
  v23 = v29;
  *(v22 + v21) = v28;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = partial apply for closure #1 in closure #1 in TextureResource.replace(with:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_41;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v27;
  MEMORY[0x1C68F3CA0](0, v13, v9, v24);
  _Block_release(v24);

  (*(v32 + 8))(v9, v6);
  (*(v30 + 8))(v13, v31);
}

uint64_t closure #1 in closure #1 in TextureResource.replace(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (static Task<>.isCancelled.getter())
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    v5 = swift_allocError();
    CancellationError.init()();
    v17[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    goto LABEL_10;
  }

  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v6 + 40, &v15);
  if (v16)
  {
    outlined init with take of ForceEffectBase(&v15, v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = (*(v9 + 24))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v17[0] = 0;
    if (MEMORY[0x1C68FF210](v10, *(a2 + 16), *(a3 + 24), v17))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
      result = CheckedContinuation.resume(returning:)();
LABEL_11:
      v14 = *MEMORY[0x1E69E9840];
      return result;
    }

    v11 = v17[0];
    if (v17[0])
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      v12 = swift_allocError();
      *v13 = v11;
    }

    else
    {
      type metadata accessor for TextureResource.LoadError();
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError);
      v12 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    *&v15 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
LABEL_10:
    result = CheckedContinuation.resume(throwing:)();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t TextureResource.PartialContents.init(source:mipmaps:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = *a3;
  return MEMORY[0x1EEE6DFA0](TextureResource.PartialContents.init(source:mipmaps:), 0, 0);
}

uint64_t TextureResource.PartialContents.init(source:mipmaps:)()
{
  v8 = *(v0 + 40);
  v1 = *(v0 + 32);
  v2 = RECancellationTokenSourceCreate();
  *(v0 + 56) = v2;
  *(v0 + 16) = 0;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v0 + 16;
  *(v3 + 24) = v8;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x1E69E88F0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = TextureResource.PartialContents.init(source:mipmaps:);

  return MEMORY[0x1EEE6DE18]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = TextureResource.PartialContents.init(source:mipmaps:);
  }

  else
  {
    v6 = *(v2 + 64);
    v5 = *(v2 + 72);

    v4 = TextureResource.PartialContents.init(source:mipmaps:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[7];
    v4 = v0[3];
    v3 = v0[4];
    type metadata accessor for TextureResource.PartialContents.Impl();
    v5 = swift_allocObject();

    RERetain();
    *(v5 + 16) = v3;
    *(v5 + 24) = v1;
    *v4 = v5;
    RERelease();
  }

  else
  {
    lazy protocol witness table accessor for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError();
    swift_allocError();
    swift_willThrow();
    v7 = v0[7];
    v8 = v0[4];
  }

  RERelease();

  v6 = v0[1];

  return v6();
}

{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[4];
  RERelease();

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in TextureResource.PartialContents.init(source:mipmaps:), 0, 0);
}

uint64_t closure #1 in TextureResource.PartialContents.init(source:mipmaps:)()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 48);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = closure #1 in TextureResource.PartialContents.init(source:mipmaps:);
  v7 = MEMORY[0x1E69E6B70];

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000015, 0x80000001C18DF140, partial apply for closure #1 in closure #1 in TextureResource.PartialContents.init(source:mipmaps:), v3, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = closure #1 in TextureResource.PartialContents.init(source:mipmaps:);
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = closure #1 in TextureResource.PartialContents.init(source:mipmaps:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  **(v0 + 24) = *(v0 + 16);
  return (*(v0 + 8))();
}

{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t closure #1 in closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  if ((static Task<>.isCancelled.getter() & 1) != 0 || !static __ServiceLocator.sharedEngine)
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    v32 = swift_allocError();
    CancellationError.init()();
    aBlock[0] = v32;
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v36 = a2;
    v37 = a3;
    v38 = a1;
    v39 = a5;
    v40 = a4;
    v15 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    result = outlined init with copy of __RenderService?(v15 + 40, &v45);
    if (v46)
    {
      outlined init with take of ForceEffectBase(&v45, aBlock);
      v17 = v42;
      v18 = v43;
      __swift_project_boxed_opaque_existential_1(aBlock, v42);
      v19 = *(v18 + 3);

      v34 = v19(v17, v18);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      swift_beginAccess();
      outlined init with copy of __REAssetService(v15 + 120, &v45);
      v20 = v46;
      v21 = v47;
      __swift_project_boxed_opaque_existential_1(&v45, v46);
      v35 = (*(v21 + 32))(v20, v21);
      v33 = *(*(v15 + 168) + 16);
      (*(v11 + 16))(v14, v38, v10);
      v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
      v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      (*(v11 + 32))(v26 + v22, v14, v10);
      v27 = (v26 + v23);
      v28 = v37;
      *v27 = v36;
      v27[1] = v28;
      *(v26 + v24) = v34;
      v29 = v39;
      *(v26 + v25) = v40;
      *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
      v43 = partial apply for closure #1 in closure #1 in closure #1 in TextureResource.PartialContents.init(source:mipmaps:);
      v44 = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RECancellationTokenRef) -> ();
      v42 = &block_descriptor_0;
      v30 = _Block_copy(aBlock);
      v31 = v33;

      REAssetManagerRunTaskInBackgroundLoadingGroup();

      _Block_release(v30);

      return __swift_destroy_boxed_opaque_existential_1(&v45);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((static Task<>.isCancelled.getter() & 1) == 0 && !RECancellationTokenIsCancellationRequested())
  {
    v10 = swift_slowAlloc();
    v11.i64[0] = a3;
    v11.i64[1] = a4;
    v12 = vandq_s8(v11, vcgtzq_s64(v11));
    v13.i64[0] = 0xFFFFFFFFLL;
    v13.i64[1] = 0xFFFFFFFFLL;
    v14 = vcgtq_s64(v13, v12);
    *v10 = vmovn_s64(vornq_s8(vandq_s8(v12, v14), v14));
    if ((static Task<>.isCancelled.getter() & 1) != 0 || RECancellationTokenIsCancellationRequested())
    {
      type metadata accessor for CancellationError();
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
      swift_allocError();
      CancellationError.init()();
    }

    else
    {
      v16 = *(a6 + 16);
      v17 = RECancellationTokenSourceGetToken();
      TextureAssetData = RETextureAssetCreateTextureAssetData();

      if (TextureAssetData)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
        CheckedContinuation.resume(returning:)();
        goto LABEL_8;
      }

      lazy protocol witness table accessor for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError();
      swift_allocError();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
LABEL_8:
    result = MEMORY[0x1C6902A30](v10, -1, -1);
    goto LABEL_9;
  }

  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
  swift_allocError();
  CancellationError.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
  result = CheckedContinuation.resume(throwing:)();
LABEL_9:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed RECancellationTokenRef) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

Swift::Int TextureResource.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v0 + 16));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextureResource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v1 + 16));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureResource()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(*v0 + 16));
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of __RenderService?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t lazy protocol witness table accessor for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError()
{
  result = lazy protocol witness table cache variable for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError;
  if (!lazy protocol witness table cache variable for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError;
  if (!lazy protocol witness table cache variable for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.MipmapSelection and conformance TextureResource.MipmapSelection()
{
  result = lazy protocol witness table cache variable for type TextureResource.MipmapSelection and conformance TextureResource.MipmapSelection;
  if (!lazy protocol witness table cache variable for type TextureResource.MipmapSelection and conformance TextureResource.MipmapSelection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MipmapSelection and conformance TextureResource.MipmapSelection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.PartialContents and conformance TextureResource.PartialContents()
{
  result = lazy protocol witness table cache variable for type TextureResource.PartialContents and conformance TextureResource.PartialContents;
  if (!lazy protocol witness table cache variable for type TextureResource.PartialContents and conformance TextureResource.PartialContents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.PartialContents and conformance TextureResource.PartialContents);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.MemoryEstimate and conformance TextureResource.MemoryEstimate()
{
  result = lazy protocol witness table cache variable for type TextureResource.MemoryEstimate and conformance TextureResource.MemoryEstimate;
  if (!lazy protocol witness table cache variable for type TextureResource.MemoryEstimate and conformance TextureResource.MemoryEstimate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MemoryEstimate and conformance TextureResource.MemoryEstimate);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.SourceInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureResource.SourceInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v5);
  v9 = *(v1 + v6);
  v10 = *v8;
  v11 = v8[1];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(a1, v1 + v4, v10, v11, v9, v12);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in TextureResource.replace(with:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in TextureResource.replace(with:)(v0 + v2, v4, v5);
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

uint64_t lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized PredicateFactory.enumerate<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 8 * v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 24);
  result = (*(a1 + 16))(v4);
  if (result)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      *(v2 + 16) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    *&v11[8 * v14 + 32] = v10;
    *(v2 + 16) = v11;
    swift_endAccess();
    v15 = *(a1 + 40);
    (*(a1 + 32))(v2, &protocol witness table for PredicateFactory);
    if (v7)
    {
      REQueryConnectEntityPredicates();
    }

    else
    {
      *(v2 + 24) = v10;
    }

    swift_beginAccess();
    specialized RangeReplaceableCollection<>.popLast()();
    return swift_endAccess();
  }

  return result;
}

uint64_t PredicateFactory.enumerate<A>(_:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  v22 = a1[3];
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v6 + 8 * v7 + 24);
  }

  else
  {
    v8 = 0;
  }

  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  type metadata accessor for QueryPredicate();
  result = QueryPredicate.makeInternal()();
  if (result)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      *(v3 + 16) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    *&v11[8 * v14 + 32] = v10;
    *(v3 + 16) = v11;
    swift_endAccess();
    QueryPredicate.enumerate(using:)();
    if (v8)
    {
      specialized PredicateFactory.connect<A>(_:from:to:)(a2, v8, v10);
    }

    else
    {
      *(v3 + 24) = v10;
    }

    swift_beginAccess();
    specialized RangeReplaceableCollection<>.popLast()();
    return swift_endAccess();
  }

  return result;
}

uint64_t PredicateFactory.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t Query.predicate.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = v3[1];
  v12[0] = *v3;
  v12[1] = v4;
  v6 = v3[3];
  v13 = v3[2];
  v5 = v13;
  v14 = v6;
  *a2 = v12[0];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  Predicate = type metadata accessor for QueryPredicate();
  return (*(*(Predicate - 8) + 16))(&v11, v12, Predicate);
}

__n128 Query.init(selector:_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Query();
  *(a4 + *(v8 + 40)) = 0;
  (*(*(a3 - 8) + 32))(a4, a1, a3);
  v9 = a4 + *(v8 + 36);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  result = *(a2 + 32);
  v12 = *(a2 + 48);
  *(v9 + 32) = result;
  *(v9 + 48) = v12;
  return result;
}

uint64_t Query.init(for:where:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a2[1];
  v27[0] = *a2;
  v27[1] = v8;
  v9 = a2[3];
  v27[2] = a2[2];
  v27[3] = v9;
  v10 = type metadata accessor for Query();
  v11 = *(v10 + 40);
  *(a4 + v11) = 0;
  v12 = *(a3 - 8);
  (*(v12 + 16))(a4, a1, a3);
  v13 = (a4 + *(v10 + 36));
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v15 = a2[3];
  v13[2] = a2[2];
  v13[3] = v15;
  type metadata accessor for PredicateFactory();
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  *(v16 + 24) = 0;
  v17 = a2[1];
  v26[0] = *a2;
  v26[1] = v17;
  v18 = a2[3];
  v26[2] = a2[2];
  v26[3] = v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Predicate = type metadata accessor for QueryPredicate();
  v21 = *(Predicate - 8);
  (*(v21 + 16))(v25, v27, Predicate);
  PredicateFactory.enumerate<A>(_:)(v26, AssociatedTypeWitness);
  (*(v21 + 8))(v27, Predicate);
  if (!*(v16 + 24))
  {
    (*(v12 + 8))(a1, a3);
  }

  type metadata accessor for Entity();
  if (swift_dynamicCastMetatype())
  {
    type metadata accessor for Query.Destructor();
    EntityQuery = REQueryCreateEntityQuery();
  }

  else
  {
    if (!swift_conformsToProtocol2() || !AssociatedTypeWitness)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    type metadata accessor for Query.Destructor();
    EntityQuery = REQueryCreateComponentQuery();
  }

  v24 = EntityQuery;

  (*(v12 + 8))(a1, a3);
  result = swift_allocObject();
  *(result + 16) = v24;
  *(a4 + v11) = result;
  return result;
}

uint64_t Query.Destructor.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t Query.internalQuery.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  if (v2)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t *Query.Destructor.deinit()
{
  v1 = *v0;
  if (v0[2])
  {
    v3 = *(v1 + 80);
    v2 = *(v1 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for Entity();
    if (swift_dynamicCastMetatype())
    {
      REEntityQueryDestroy();
    }

    else
    {
      if (swift_conformsToProtocol2())
      {
        v5 = AssociatedTypeWitness == 0;
      }

      else
      {
        v5 = 1;
      }

      if (!v5)
      {
        REComponentQueryDestroy();
      }
    }
  }

  return v0;
}

uint64_t Query.Destructor.__deallocating_deinit()
{
  Query.Destructor.deinit();

  return swift_deallocClassInstance();
}

uint64_t EntityQuery.predicate.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return outlined init with copy of QueryPredicate<Entity>(v7, &v6);
}

uint64_t outlined init with copy of QueryPredicate<Entity>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 EntityQuery.init()@<Q0>(__n128 *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  v3 = swift_allocObject();
  *(v3 + 16) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  v7.n128_u64[0] = partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
  v7.n128_u64[1] = v2;
  v8 = partial apply for specialized closure #1 in makeCustomPredicate<A>(predicate:);
  v9 = v4;
  v10 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v11 = v3;
  v12 = 0;
  v13 = 0;
  EntityQuery.init(where:)(&v7, v14);
  v5 = v14[3];
  a1[2] = v14[2];
  a1[3] = v5;
  a1[4].n128_u64[0] = v15;
  result = v14[1];
  *a1 = v14[0];
  a1[1] = result;
  return result;
}

__n128 EntityQuery.init(where:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  type metadata accessor for PredicateFactory();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = 0;
  outlined init with copy of QueryPredicate<Entity>(v13, &v12);
  specialized PredicateFactory.enumerate<A>(_:)(v13);
  outlined destroy of QueryPredicate<Entity>(v13);
  if (*(v6 + 24))
  {
    EntityQuery = REQueryCreateEntityQuery();

    type metadata accessor for EntityQuery.Destructor();
    v8 = swift_allocObject();
    *(v8 + 16) = EntityQuery;
  }

  else
  {

    v8 = 0;
  }

  v9 = a1[1];
  *a2 = *a1;
  a2[1] = v9;
  result = a1[2];
  v11 = a1[3];
  a2[2] = result;
  a2[3] = v11;
  a2[4].n128_u64[0] = v8;
  return result;
}

uint64_t EntityQuery.Destructor.__deallocating_deinit()
{
  if (*(v0 + 16))
  {
    REEntityQueryDestroy();
  }

  return swift_deallocClassInstance();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Entity) -> (@out Bool)(uint64_t a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t specialized RangeReplaceableCollection<>.popLast()()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v2 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
LABEL_4:
      v5 = v4 - 1;
      result = *(v1 + 8 * v5 + 32);
      *(v1 + 16) = v5;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in makeCustomPredicate<A>(predicate:)(char *a1)
{
  v1 = *a1;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in closure #1 in makeCustomPredicate<A>(predicate:);
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.QueryEvaluable.Value) -> (@unowned Bool);
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Entity) -> (@out Bool);
  *(v5 + 24) = v4;
  v9[4] = partial apply for thunk #1 (_:) in createEntityPredicate(_:);
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
  v9[3] = &block_descriptor_1;
  v6 = _Block_copy(v9);

  CustomEntityPredicate = REQueryCreateCustomEntityPredicate();

  _Block_release(v6);
  return CustomEntityPredicate;
}

uint64_t outlined destroy of QueryPredicate<Entity>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type QueryPredicate<Entity> and conformance QueryPredicate<A>()
{
  result = lazy protocol witness table cache variable for type QueryPredicate<Entity> and conformance QueryPredicate<A>;
  if (!lazy protocol witness table cache variable for type QueryPredicate<Entity> and conformance QueryPredicate<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QueryPredicate<Entity> and conformance QueryPredicate<A>);
  }

  return result;
}

uint64_t type metadata completion function for Query(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for QueryPredicate();
    if (v6 <= 0x3F)
    {
      type metadata accessor for Query.Destructor();
      result = type metadata accessor for Optional();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Query(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *storeEnumTagSinglePayload for Query(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = &result[v8 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
          *(v19 + 56) = 0;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit5SceneCSayAA6EntityCGSgIeggo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EntityQuery(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for EntityQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.QueryEvaluable.Value) -> (@unowned Bool)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *a1;
  result = v4(&v7);
  *a2 = result & 1;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Entity) -> (@out Bool)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized PredicateFactory.connect<A>(_:from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Entity();
  if (swift_dynamicCastMetatype())
  {

    return REQueryConnectEntityPredicates();
  }

  else
  {

    return MEMORY[0x1EEDFDA60](a2, a3);
  }
}

RealityKit::__RKEntityEmphasisAnimationType_optional __swiftcall __RKEntityEmphasisAnimationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityEmphasisAnimationType.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t __RKEntityEmphasisAnimationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 7368560;
  v3 = 0x65736C7570;
  if (v1 != 6)
  {
    v3 = 1852403827;
  }

  v4 = 0x74616F6C66;
  if (v1 != 4)
  {
    v4 = 0x656C6767696ALL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x65636E756F62;
  if (v1 != 2)
  {
    v5 = 1885957222;
  }

  if (*v0)
  {
    v2 = 0x6B6E696C62;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityEmphasisAnimationType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368560;
  v5 = 0xE500000000000000;
  v6 = 0x65736C7570;
  if (v2 != 6)
  {
    v6 = 1852403827;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x74616F6C66;
  if (v2 != 4)
  {
    v8 = 0x656C6767696ALL;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x65636E756F62;
  if (v2 != 2)
  {
    v10 = 1885957222;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x6B6E696C62;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t __RKEntityEmphasisAction.__allocating_init(targetEntity:duration:iterations:animationStyle:emphasisAnimationType:)(uint64_t a1, char *a2, char *a3, float a4, float a5)
{
  v10 = swift_allocObject();
  v11 = *a2;
  v12 = *a3;
  *(v10 + 120) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 0;
  *(v10 + 208) = 1;
  *(v10 + 108) = a4;
  *(v10 + 112) = a5;
  *(v10 + 116) = v11;
  *(v10 + 117) = v12;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityEmphasisAction.init(targetEntity:duration:iterations:animationStyle:emphasisAnimationType:)(uint64_t a1, char *a2, char *a3, float a4, float a5)
{
  v6 = *a2;
  v7 = *a3;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0;
  *(v5 + 208) = 1;
  *(v5 + 108) = a4;
  *(v5 + 112) = a5;
  *(v5 + 116) = v6;
  *(v5 + 117) = v7;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityEmphasisAction.perform(with:)(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v197 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v217 = *(v11 - 8);
  v12 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v216 = &v197 - v13;
  v14 = *(a1 + 8);
  swift_beginAccess();
  v15 = *(v4 + 16);
  *&v218 = 91;
  *(&v218 + 1) = 0xE100000000000000;
  if (v15)
  {
    v224._rawValue = 0;
    v225 = 0xE000000000000000;
    v228 = v15;

    _print_unlocked<A, B>(_:_:)();
    rawValue = v224._rawValue;
    v17 = v225;
  }

  else
  {
    v17 = 0xE300000000000000;
    rawValue = 7104878;
  }

  MEMORY[0x1C68F3410](rawValue, v17);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v18 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v18);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v19 = v218;
  v20 = *(v4 + 16);
  if (!v20)
  {
    v27 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v27, &v218);
LABEL_27:

    return 0;
  }

  swift_beginAccess();
  if (*(v4 + 104) == 1 && *(v4 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v4 + 105) == 1)
    {

LABEL_14:
      v218 = v19;
      v28 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v28, &v218);

      return 0;
    }
  }

  v21 = *(v14 + 16);

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_14;
  }

  v215 = v10;
  v22 = v20;
  v23 = v14;
  v214 = v11;
  v24 = v22;
  v25 = v22[2];
  RERigidBodyComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    MotionType = RERigidBodyComponentGetMotionType();
    if (MotionType != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }
  }

  else
  {
    MotionType = 0;
  }

  if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), v212 = MEMORY[0x1C68FE1F0](ServiceLocator), RETransformComponentGetComponentType(), (v30 = REEntityGetComponentByClass()) == 0))
  {

    goto LABEL_27;
  }

  v209 = MotionType;
  v31 = v30;
  RETransformComponentGetLocalPose();
  v200 = v32;
  RETransformComponentGetLocalPose();
  v201 = v33;
  v208 = v31;
  RETransformComponentGetLocalScale();
  v202 = v34;
  v35 = *(v4 + 96);
  v36 = *(v4 + 104);
  *(v4 + 96) = 1;
  *(v4 + 104) = 1;
  *&v218 = v35;
  BYTE8(v218) = v36;
  __RKEntityAction.state.didset(&v218);
  v37 = *(v4 + 117);
  v38 = v24[2];
  result = REEntityComputeMeshBounds();
  v41 = *(&v40 + 2);
  v43 = *(&v42 + 2);
  v210 = v19;
  v211 = v14;
  v204 = v42;
  v203 = v40;
  if (v37 <= 3)
  {
    if (v37 > 1)
    {
      if (v37 != 2)
      {
        if (v212)
        {
          v44 = *(v4 + 108);
          if (*(v4 + 116))
          {
            if (*(v4 + 116) == 1)
            {
              v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 125, 0, MEMORY[0x1E69E7CC0]);
              v51 = &static EmphasizeAnimations.playfulFlipAnimationData;
            }

            else
            {
              v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 183, 0, MEMORY[0x1E69E7CC0]);
              v51 = &static EmphasizeAnimations.wildFlipAnimationData;
            }
          }

          else
          {
            v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 63, 0, MEMORY[0x1E69E7CC0]);
            v51 = &static EmphasizeAnimations.basicFlipAnimationData;
          }

          v133 = *v51;

          __makeXfos(_:_:)(v134, &v224);

          v55 = v224._rawValue;
          if (*(v224._rawValue + 2))
          {
            RESampledAnimationDefaultParameters();
            v56 = *(v55 + 2);
            if (v56)
            {
              v135 = BYTE1(v219);
              v136 = DWORD2(v219);
              v137 = &v55[48 * v56];
              v138 = *v137;
              v199 = *(v137 - 1);
              v198 = v138;
              v197 = *(v137 + 1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56 + 1, 1, v55);
              }

              v140 = *(v55 + 2);
              v139 = *(v55 + 3);
              if (v140 >= v139 >> 1)
              {
                v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v139 > 1), v140 + 1, 1, v55);
              }

              *(v55 + 2) = v140 + 1;
              v141 = &v55[48 * v140];
              v142 = v198;
              *(v141 + 2) = v199;
              *(v141 + 3) = v142;
              *(v141 + 4) = v197;
              v224._rawValue = v55;
              v218 = v200;
              v219 = v201;
              v220 = v202;
              specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v203, v41, *&v204, v43, &v218, &v224);
              v143 = *(v224._rawValue + 2);
              LOBYTE(v218) = 1;
              *(&v218 + 1) = "Transform.transform";
              LOBYTE(v219) = 1;
              BYTE1(v219) = v135 & 1;
              *(&v219 + 1) = v44 / v56;
              *(&v219 + 1) = __PAIR64__(LODWORD(v44), v136);
              SRTSampledAnimation = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
              if (SRTSampledAnimation)
              {
                v145 = SRTSampledAnimation;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
                v67 = swift_allocObject();
                *(v67 + 16) = xmmword_1C1887600;

                *(v67 + 32) = v145;
              }

              else
              {

                v67 = MEMORY[0x1E69E7CC0];
              }

              v68 = 4611;
              goto LABEL_162;
            }

            goto LABEL_173;
          }

          v67 = MEMORY[0x1E69E7CC0];
          v68 = 4611;
          goto LABEL_162;
        }

        goto LABEL_182;
      }

      if (v212)
      {
        v44 = *(v4 + 108);
        if (*(v4 + 116))
        {
          if (*(v4 + 116) == 1)
          {
            v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 140, 0, MEMORY[0x1E69E7CC0]);
            v47 = &static EmphasizeAnimations.playfulBounceAnimationData;
          }

          else
          {
            v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 271, 0, MEMORY[0x1E69E7CC0]);
            v47 = &static EmphasizeAnimations.wildBounceAnimationData;
          }
        }

        else
        {
          v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 94, 0, MEMORY[0x1E69E7CC0]);
          v47 = &static EmphasizeAnimations.basicBounceAnimationData;
        }

        v82 = *v47;

        __makeXfos(_:_:)(v83, &v224);

        v55 = v224._rawValue;
        if (*(v224._rawValue + 2))
        {
          RESampledAnimationDefaultParameters();
          v56 = *(v55 + 2);
          if (v56)
          {
            v84 = BYTE1(v219);
            v85 = DWORD2(v219);
            v86 = &v55[48 * v56];
            v87 = *v86;
            v199 = *(v86 - 1);
            v198 = v87;
            v197 = *(v86 + 1);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56 + 1, 1, v55);
            }

            v89 = *(v55 + 2);
            v88 = *(v55 + 3);
            if (v89 >= v88 >> 1)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v55);
            }

            *(v55 + 2) = v89 + 1;
            v90 = &v55[48 * v89];
            v91 = v198;
            *(v90 + 2) = v199;
            *(v90 + 3) = v91;
            *(v90 + 4) = v197;
            v224._rawValue = v55;
            v218 = v200;
            v219 = v201;
            v220 = v202;
            specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v203, v41, *&v204, v43, &v218, &v224);
            v92 = *(v224._rawValue + 2);
            LOBYTE(v218) = 1;
            *(&v218 + 1) = "Transform.transform";
            LOBYTE(v219) = 1;
            BYTE1(v219) = v84 & 1;
            *(&v219 + 1) = v44 / v56;
            *(&v219 + 1) = __PAIR64__(LODWORD(v44), v85);
            v93 = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
            if (v93)
            {
              v94 = v93;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
              v67 = swift_allocObject();
              *(v67 + 16) = xmmword_1C1887600;

              *(v67 + 32) = v94;
            }

            else
            {

              v67 = MEMORY[0x1E69E7CC0];
            }

            v68 = 4610;
            goto LABEL_162;
          }

          goto LABEL_169;
        }

        v67 = MEMORY[0x1E69E7CC0];
        v68 = 4610;
        goto LABEL_162;
      }

      goto LABEL_178;
    }

    if (v37)
    {
      if (v212)
      {
        v44 = *(v4 + 108);
        if (*(v4 + 116))
        {
          if (*(v4 + 116) == 1)
          {
            v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 168, 0, MEMORY[0x1E69E7CC0]);
            v49 = &static EmphasizeAnimations.playfulBlinkAnimationData;
          }

          else
          {
            v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 226, 0, MEMORY[0x1E69E7CC0]);
            v49 = &static EmphasizeAnimations.wildBlinkAnimationData;
          }
        }

        else
        {
          v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 133, 0, MEMORY[0x1E69E7CC0]);
          v49 = &static EmphasizeAnimations.basicBlinkAnimationData;
        }

        v108 = *v49;

        __makeXfos(_:_:)(v109, &v224);

        v55 = v224._rawValue;
        if (!*(v224._rawValue + 2))
        {

          v67 = MEMORY[0x1E69E7CC0];
          v68 = 4609;
          goto LABEL_162;
        }

        RESampledAnimationDefaultParameters();
        v56 = *(v55 + 2);
        if (!v56)
        {
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        v110 = BYTE1(v219);
        v111 = DWORD2(v219);
        v112 = &v55[48 * v56];
        v113 = *v112;
        v199 = *(v112 - 1);
        v198 = v113;
        v197 = *(v112 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56 + 1, 1, v55);
        }

        v115 = *(v55 + 2);
        v114 = *(v55 + 3);
        if (v115 >= v114 >> 1)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v55);
        }

        *(v55 + 2) = v115 + 1;
        v116 = &v55[48 * v115];
        v117 = v198;
        *(v116 + 2) = v199;
        *(v116 + 3) = v117;
        *(v116 + 4) = v197;
        v224._rawValue = v55;
        v218 = v200;
        v219 = v201;
        v220 = v202;
        specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v203, v41, *&v204, v43, &v218, &v224);
        v118 = *(v224._rawValue + 2);
        LOBYTE(v218) = 1;
        *(&v218 + 1) = "Transform.transform";
        LOBYTE(v219) = 1;
        BYTE1(v219) = v110 & 1;
        *(&v219 + 1) = v44 / v56;
        *(&v219 + 1) = __PAIR64__(LODWORD(v44), v111);
        result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
        if (result)
        {
          v119 = result;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_1C1887600;
          *(v67 + 32) = v119;
          v68 = 4609;
          goto LABEL_162;
        }

LABEL_184:
        __break(1u);
        return result;
      }

      goto LABEL_180;
    }

    if (v212)
    {
      v44 = *(v4 + 108);
      if (*(v4 + 116))
      {
        if (*(v4 + 116) == 1)
        {
          v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 264, 0, MEMORY[0x1E69E7CC0]);
          v45 = &static EmphasizeAnimations.playfulPopAnimationData;
        }

        else
        {
          v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 52, 0, MEMORY[0x1E69E7CC0]);
          v45 = &static EmphasizeAnimations.wildPopAnimationData;
        }
      }

      else
      {
        v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 118, 0, MEMORY[0x1E69E7CC0]);
        v45 = &static EmphasizeAnimations.basicPopAnimationData;
      }

      v53 = *v45;

      __makeXfos(_:_:)(v54, &v224);

      v55 = v224._rawValue;
      if (*(v224._rawValue + 2))
      {
        RESampledAnimationDefaultParameters();
        v56 = *(v55 + 2);
        if (v56)
        {
          v23 = BYTE1(v219);
          v3 = v56;
          v2 = DWORD2(v219);
          v57 = &v55[48 * v56];
          v58 = *v57;
          v199 = *(v57 - 1);
          v198 = v58;
          v197 = *(v57 + 1);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_73:
            v60 = *(v55 + 2);
            v59 = *(v55 + 3);
            v61 = v44 / v3;
            if (v60 >= v59 >> 1)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v55);
            }

            *(v55 + 2) = v60 + 1;
            v62 = &v55[48 * v60];
            v63 = v198;
            *(v62 + 2) = v199;
            *(v62 + 3) = v63;
            *(v62 + 4) = v197;
            v224._rawValue = v55;
            v218 = v200;
            v219 = v201;
            v220 = v202;
            specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v203, v41, *&v204, v43, &v218, &v224);
            v64 = *(v224._rawValue + 2);
            LOBYTE(v218) = 1;
            *(&v218 + 1) = "Transform.transform";
            LOBYTE(v219) = 1;
            BYTE1(v219) = v23 & 1;
            *(&v219 + 4) = __PAIR64__(v2, LODWORD(v61));
            *(&v219 + 3) = v44;
            v65 = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
            if (v65)
            {
              v66 = v65;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
              v67 = swift_allocObject();
              *(v67 + 16) = xmmword_1C1887600;

              *(v67 + 32) = v66;
            }

            else
            {

              v67 = MEMORY[0x1E69E7CC0];
            }

            v68 = 4608;
            goto LABEL_162;
          }

LABEL_175:
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56 + 1, 1, v55);
          goto LABEL_73;
        }

        __break(1u);
        goto LABEL_168;
      }

      v67 = MEMORY[0x1E69E7CC0];
      v68 = 4608;
      goto LABEL_162;
    }

    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  if (v37 > 5)
  {
    if (v37 != 6)
    {
      if (v212)
      {
        v44 = *(v4 + 108);
        if (*(v4 + 116))
        {
          if (*(v4 + 116) == 1)
          {
            v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 148, 0, MEMORY[0x1E69E7CC0]);
            v52 = &static EmphasizeAnimations.playfulSpinAnimationData;
          }

          else
          {
            v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 27, 0, MEMORY[0x1E69E7CC0]);
            v52 = &static EmphasizeAnimations.wildSpinAnimationData;
          }
        }

        else
        {
          v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 97, 0, MEMORY[0x1E69E7CC0]);
          v52 = &static EmphasizeAnimations.basicSpinAnimationData;
        }

        v146 = *v52;

        __makeXfos(_:_:)(v147, &v224);

        v55 = v224._rawValue;
        if (!*(v224._rawValue + 2))
        {
          goto LABEL_160;
        }

        RESampledAnimationDefaultParameters();
        v56 = *(v55 + 2);
        if (!v56)
        {
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        v148 = BYTE1(v219);
        v149 = DWORD2(v219);
        v150 = &v55[48 * v56];
        v151 = *v150;
        v199 = *(v150 - 1);
        v198 = v151;
        v197 = *(v150 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56 + 1, 1, v55);
        }

        v153 = *(v55 + 2);
        v152 = *(v55 + 3);
        if (v153 >= v152 >> 1)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v152 > 1), v153 + 1, 1, v55);
        }

        *(v55 + 2) = v153 + 1;
        v154 = &v55[48 * v153];
        v155 = v198;
        *(v154 + 2) = v199;
        *(v154 + 3) = v155;
        *(v154 + 4) = v197;
        v224._rawValue = v55;
        v218 = v200;
        v219 = v201;
        v220 = v202;
        specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v203, v41, *&v204, v43, &v218, &v224);
        v156 = *(v224._rawValue + 2);
        LOBYTE(v218) = 1;
        *(&v218 + 1) = "Transform.transform";
        LOBYTE(v219) = 1;
        BYTE1(v219) = v148 & 1;
        *(&v219 + 1) = v44 / v56;
        *(&v219 + 1) = __PAIR64__(LODWORD(v44), v149);
        v157 = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
        if (v157)
        {
          v158 = v157;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_1C1887600;

          *(v67 + 32) = v158;
        }

        else
        {
LABEL_160:

          v67 = MEMORY[0x1E69E7CC0];
        }

        v68 = 4615;
        goto LABEL_162;
      }

      goto LABEL_183;
    }

    if (v212)
    {
      v44 = *(v4 + 108);
      if (*(v4 + 116))
      {
        if (*(v4 + 116) == 1)
        {
          v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 107, 0, MEMORY[0x1E69E7CC0]);
          v48 = &static EmphasizeAnimations.playfulPulseAnimationData;
        }

        else
        {
          v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 99, 0, MEMORY[0x1E69E7CC0]);
          v48 = &static EmphasizeAnimations.wildPulseAnimationData;
        }
      }

      else
      {
        v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 71, 0, MEMORY[0x1E69E7CC0]);
        v48 = &static EmphasizeAnimations.basicPulseAnimationData;
      }

      v95 = *v48;

      __makeXfos(_:_:)(v96, &v224);

      v55 = v224._rawValue;
      if (*(v224._rawValue + 2))
      {
        RESampledAnimationDefaultParameters();
        v56 = *(v55 + 2);
        if (v56)
        {
          v97 = BYTE1(v219);
          v98 = DWORD2(v219);
          v99 = &v55[48 * v56];
          v100 = *v99;
          v199 = *(v99 - 1);
          v198 = v100;
          v197 = *(v99 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56 + 1, 1, v55);
          }

          v102 = *(v55 + 2);
          v101 = *(v55 + 3);
          if (v102 >= v101 >> 1)
          {
            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v55);
          }

          *(v55 + 2) = v102 + 1;
          v103 = &v55[48 * v102];
          v104 = v198;
          *(v103 + 2) = v199;
          *(v103 + 3) = v104;
          *(v103 + 4) = v197;
          v224._rawValue = v55;
          v218 = v200;
          v219 = v201;
          v220 = v202;
          specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v203, v41, *&v204, v43, &v218, &v224);
          v105 = *(v224._rawValue + 2);
          LOBYTE(v218) = 1;
          *(&v218 + 1) = "Transform.transform";
          LOBYTE(v219) = 1;
          BYTE1(v219) = v97 & 1;
          *(&v219 + 1) = v44 / v56;
          *(&v219 + 1) = __PAIR64__(LODWORD(v44), v98);
          v106 = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
          if (v106)
          {
            v107 = v106;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
            v67 = swift_allocObject();
            *(v67 + 16) = xmmword_1C1887600;

            *(v67 + 32) = v107;
          }

          else
          {

            v67 = MEMORY[0x1E69E7CC0];
          }

          v68 = 4614;
          goto LABEL_162;
        }

        goto LABEL_170;
      }

      v67 = MEMORY[0x1E69E7CC0];
      v68 = 4614;
      goto LABEL_162;
    }

    goto LABEL_179;
  }

  if (v37 != 4)
  {
    if (v212)
    {
      v44 = *(v4 + 108);
      if (*(v4 + 116))
      {
        if (*(v4 + 116) == 1)
        {
          v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 203, 0, MEMORY[0x1E69E7CC0]);
          v50 = &static EmphasizeAnimations.playfulJiggleAnimationData;
        }

        else
        {
          v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 79, 0, MEMORY[0x1E69E7CC0]);
          v50 = &static EmphasizeAnimations.wildJiggleAnimationData;
        }
      }

      else
      {
        v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 107, 0, MEMORY[0x1E69E7CC0]);
        v50 = &static EmphasizeAnimations.basicJiggleAnimationData;
      }

      v120 = *v50;

      __makeXfos(_:_:)(v121, &v224);

      v55 = v224._rawValue;
      if (*(v224._rawValue + 2))
      {
        RESampledAnimationDefaultParameters();
        v56 = *(v55 + 2);
        if (v56)
        {
          v122 = BYTE1(v219);
          v123 = DWORD2(v219);
          v124 = &v55[48 * v56];
          v125 = *v124;
          v199 = *(v124 - 1);
          v198 = v125;
          v197 = *(v124 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56 + 1, 1, v55);
          }

          v127 = *(v55 + 2);
          v126 = *(v55 + 3);
          if (v127 >= v126 >> 1)
          {
            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v55);
          }

          *(v55 + 2) = v127 + 1;
          v128 = &v55[48 * v127];
          v129 = v198;
          *(v128 + 2) = v199;
          *(v128 + 3) = v129;
          *(v128 + 4) = v197;
          v224._rawValue = v55;
          v218 = v200;
          v219 = v201;
          v220 = v202;
          specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v203, v41, *&v204, v43, &v218, &v224);
          v130 = *(v224._rawValue + 2);
          LOBYTE(v218) = 1;
          *(&v218 + 1) = "Transform.transform";
          LOBYTE(v219) = 1;
          BYTE1(v219) = v122 & 1;
          *(&v219 + 1) = v44 / v56;
          *(&v219 + 1) = __PAIR64__(LODWORD(v44), v123);
          v131 = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
          if (v131)
          {
            v132 = v131;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
            v67 = swift_allocObject();
            *(v67 + 16) = xmmword_1C1887600;

            *(v67 + 32) = v132;
          }

          else
          {

            v67 = MEMORY[0x1E69E7CC0];
          }

          v68 = 4613;
          goto LABEL_162;
        }

        goto LABEL_172;
      }

      v67 = MEMORY[0x1E69E7CC0];
      v68 = 4613;
      goto LABEL_162;
    }

    goto LABEL_181;
  }

  if (!v212)
  {
    goto LABEL_177;
  }

  v44 = *(v4 + 108);
  if (*(v4 + 116))
  {
    if (*(v4 + 116) == 1)
    {
      v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 375, 0, MEMORY[0x1E69E7CC0]);
      v46 = &static EmphasizeAnimations.playfulFloatAnimationData;
    }

    else
    {
      v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 404, 0, MEMORY[0x1E69E7CC0]);
      v46 = &static EmphasizeAnimations.wildFloatAnimationData;
    }
  }

  else
  {
    v224._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 318, 0, MEMORY[0x1E69E7CC0]);
    v46 = &static EmphasizeAnimations.basicFloatAnimationData;
  }

  v69 = *v46;

  __makeXfos(_:_:)(v70, &v224);

  v55 = v224._rawValue;
  if (*(v224._rawValue + 2))
  {
    RESampledAnimationDefaultParameters();
    v56 = *(v55 + 2);
    if (v56)
    {
      v71 = BYTE1(v219);
      v72 = DWORD2(v219);
      v73 = &v55[48 * v56];
      v74 = *v73;
      v199 = *(v73 - 1);
      v198 = v74;
      v197 = *(v73 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56 + 1, 1, v55);
      }

      v76 = *(v55 + 2);
      v75 = *(v55 + 3);
      if (v76 >= v75 >> 1)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v55);
      }

      *(v55 + 2) = v76 + 1;
      v77 = &v55[48 * v76];
      v78 = v198;
      *(v77 + 2) = v199;
      *(v77 + 3) = v78;
      *(v77 + 4) = v197;
      v224._rawValue = v55;
      v218 = v200;
      v219 = v201;
      v220 = v202;
      specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v203, v41, *&v204, v43, &v218, &v224);
      v79 = *(v224._rawValue + 2);
      LOBYTE(v218) = 1;
      *(&v218 + 1) = "Transform.transform";
      LOBYTE(v219) = 1;
      BYTE1(v219) = v71 & 1;
      *(&v219 + 1) = v44 / v56;
      *(&v219 + 1) = __PAIR64__(LODWORD(v44), v72);
      v80 = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
      if (v80)
      {
        v81 = v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_1C1887600;

        *(v67 + 32) = v81;
      }

      else
      {

        v67 = MEMORY[0x1E69E7CC0];
      }

      v68 = 4612;
      goto LABEL_162;
    }

LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v67 = MEMORY[0x1E69E7CC0];
  v68 = 4612;
LABEL_162:
  v159 = specialized _arrayForceCast<A, B>(_:)(v67);

  v160 = *(v159 + 16);
  v207 = v6;
  v206 = v7;
  v205 = *(&v19 + 1);
  if (v160)
  {
    v161 = *(v159 + 32);

    if (v161)
    {
      REAnimationComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      *&v218 = 5;
      DWORD2(v218) = v68;
      *&v219 = "EMPHASIS";
      BYTE8(v219) = 0;
      *(v4 + 200) = REAnimationComponentPlay();
      *(v4 + 208) = 0;
      RERelease();
    }
  }

  else
  {
  }

  v162 = ComponentByClass == 0;
  v163 = swift_allocObject();
  swift_weakInit();
  v164 = swift_allocObject();
  *(v164 + 16) = v163;
  *(v164 + 24) = v25;
  *(v164 + 32) = v208;
  *(v164 + 40) = v209;
  *(v164 + 44) = v162;
  v165 = *(v4 + 32);
  v166 = *(v4 + 40);
  *(v4 + 32) = partial apply for specialized closure #1 in __RKEntityEmphasisAction.perform(with:);
  *(v4 + 40) = v164;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v165);

  ComponentByClass = type metadata accessor for Entity();
  v226 = ComponentByClass;
  v227 = &protocol witness table for Entity;
  v224._rawValue = v24;
  v167 = swift_allocObject();
  swift_weakInit();

  Scene.eventService.getter(&v218);
  v168 = *(&v219 + 1);
  v169 = v220;
  __swift_project_boxed_opaque_existential_1(&v218, *(&v219 + 1));
  type metadata accessor for REAnimationHasCompletedEvent(0);
  EventService.publisher<A>(for:on:)(v170, &v224, v168, v170, v169);
  v171 = v221;
  v172 = v222;
  v173 = v223;
  __swift_destroy_boxed_opaque_existential_1(&v218);
  *(swift_allocObject() + 16) = 0;
  *&v218 = v171;
  *(&v218 + 1) = v172;
  *&v219 = v173;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
  v212 = &protocol conformance descriptor for Scene.CorePublisher<A>;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
  v174 = v216;
  Publisher.compactMap<A>(_:)();

  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
  v176 = *(v175 + 48);
  v177 = *(v175 + 52);
  v178 = swift_allocObject();
  (*(v217 + 32))(&v178[*(*v178 + *MEMORY[0x1E695BEE8] + 16)], v174, v214);
  *&v218 = v178;
  v179 = swift_allocObject();
  *(v179 + 16) = partial apply for closure #2 in __RKEntityEmphasisAction.perform(with:);
  *(v179 + 24) = v167;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackCompleted> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
  v180 = Publisher<>.sink(receiveValue:)();

  v181 = type metadata accessor for AnyCancellable();
  *(&v219 + 1) = v181;
  *&v220 = MEMORY[0x1E695BF08];

  *&v218 = v180;
  outlined destroy of BodyTrackingComponent?(&v224, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v218, v4 + 120);
  swift_endAccess();
  v226 = ComponentByClass;
  v227 = &protocol witness table for Entity;
  v224._rawValue = v24;
  v182 = swift_allocObject();
  swift_weakInit();

  Scene.eventService.getter(&v218);
  v183 = *(&v219 + 1);
  v184 = v220;
  __swift_project_boxed_opaque_existential_1(&v218, *(&v219 + 1));
  type metadata accessor for REAnimationHasTerminatedEvent(0);
  EventService.publisher<A>(for:on:)(v185, &v224, v183, v185, v184);
  v186 = v221;
  v187 = v222;
  v188 = v223;
  __swift_destroy_boxed_opaque_existential_1(&v218);
  *(swift_allocObject() + 16) = 0;
  *&v218 = v186;
  *(&v218 + 1) = v187;
  *&v219 = v188;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
  v189 = v215;
  Publisher.compactMap<A>(_:)();

  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
  v191 = *(v190 + 48);
  v192 = *(v190 + 52);
  v193 = swift_allocObject();
  (*(v206 + 32))(&v193[*(*v193 + *MEMORY[0x1E695BEE8] + 16)], v189, v207);
  *&v218 = v193;
  v194 = swift_allocObject();
  *(v194 + 16) = partial apply for closure #3 in __RKEntityEmphasisAction.perform(with:);
  *(v194 + 24) = v182;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackTerminated> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
  v195 = Publisher<>.sink(receiveValue:)();

  *(&v219 + 1) = v181;
  *&v220 = MEMORY[0x1E695BF08];

  *&v218 = v195;
  outlined destroy of BodyTrackingComponent?(&v224, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v218, v4 + 160);
  swift_endAccess();
  *&v218 = v210;
  *(&v218 + 1) = v205;
  v196 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v196, &v218);

  return 1;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = (a1 + 40);
    v2 = v13;
    do
    {
      v9 = *(v4 - 8);
      v10 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV15TransparentPassO_SitMd, &_s10RealityKit26__RKMaterialParameterBlockV15TransparentPassO_SitMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV15TransparentPassO4pass_Si13techniqueHashtMd, &_s10RealityKit26__RKMaterialParameterBlockV15TransparentPassO4pass_Si13techniqueHashtMR);
      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      v4 += 2;
      *(v13 + 16) = v6 + 1;
      v7 = v13 + 16 * v6;
      *(v7 + 32) = v11;
      *(v7 + 40) = v12;
      --v1;
    }

    while (v1);
  }

  return v2;
}