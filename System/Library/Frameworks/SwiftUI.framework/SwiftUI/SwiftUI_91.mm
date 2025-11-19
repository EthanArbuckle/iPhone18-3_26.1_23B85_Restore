void _UIHostingView._legacyHostKeyboardHeight.getter()
{
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0));
    if ((v1[4] & 1) == 0)
    {
      v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0));
      if (v2)
      {
        v4 = v1[2];
        v3 = v1[3];
        v6 = *v1;
        v5 = v1[1];
        v7 = v2;
        v8 = [v0 window];
        if (v8 && (v8, v4 > 0.0) && v3 > 0.0)
        {
          [v0 convertRect:objc_msgSend(v7 fromCoordinateSpace:{sel_coordinateSpace), v6, v5, v4, v3}];
          v10 = v9;
          v12 = v11;
          v14 = v13;
          v16 = v15;
          [v0 bounds];
          CGRectGetMaxY(v17);
          v18.origin.x = v10;
          v18.origin.y = v12;
          v18.size.width = v14;
          v18.size.height = v16;
          CGRectGetMinY(v18);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }
}

Swift::Void __swiftcall _UIHostingView._legacyKeyboardWillShow(note:)(NSNotification note)
{
  v2 = v1;
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 || (NSNotification.keyboardIsLocal.getter() & 1) != 0)
    {
      v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8);
      v6 = *(v2 + v5) + 1;
      *(v2 + v5) = v6;
      if ((_UIHostingView.legacyShouldAddKeyboardToSafeArea.getter() & 1) != 0 && (NSNotification.keyboardFrame.getter(v17), (v18 & 1) == 0) && (v15 = v17[1], v16 = v17[0], (v8 = NSNotification.keyboardScreen.getter()) != 0))
      {
        v9 = v8;
        v10 = v8;
        NSNotification.keyboardAnimationDuration.getter();
        if (v11 & 1) != 0 || (v12 = NSNotification.keyboardAnimationCurve.getter(), (v13))
        {
          v14 = 0;
        }

        else
        {
          v14 = static Animation.uiViewAnimation(curve:duration:)(v12);
        }

        _.value.origin = v16;
        _.value.size = v15;
        _.is_nil = 0;
        _UIHostingView.legacyUpdateKeyboardFrame(_:screen:animation:seed:)(&_, v9, v14, v6);
      }

      else
      {
        memset(&_, 0, 32);
        _.is_nil = 1;
        v21.value.super.isa = 0;
        v21.is_nil = v6;
        _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(&_, v21, v7);
      }
    }
  }
}

id NSNotification.keyboardFrame.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 userInfo];
  v4 = 0uLL;
  if (result)
  {
    v5 = result;
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v22[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22[1] = v7;
    AnyHashable.init<A>(_:)();
    if (*(v6 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v9 & 1) != 0))
    {
      outlined init with copy of Any(*(v6 + 56) + 32 * v8, v22);
      outlined destroy of AnyHashable(v23);

      outlined init with take of Any(v22, v24);
      outlined init with copy of Any(v24, v23);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSValue);
      v10 = swift_dynamicCast();
      if (v10)
      {
        v11 = v22[0];
        [v22[0] CGRectValue];
        v19 = v12;
        v20 = v13;
        v18 = v14;
        v21 = v15;

        result = __swift_destroy_boxed_opaque_existential_1(v24);
        *&v16 = v18;
        *&v4 = v19;
        *(&v4 + 1) = v20;
        *(&v16 + 1) = v21;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v24);
        v4 = 0uLL;
        v16 = 0uLL;
      }

      v17 = v10 ^ 1;
    }

    else
    {

      result = outlined destroy of AnyHashable(v23);
      v17 = 1;
      v16 = 0uLL;
      v4 = 0uLL;
    }
  }

  else
  {
    v17 = 1;
    v16 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  return result;
}

uint64_t NSNotification.keyboardScreen.getter()
{
  if ([v0 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScreen);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v5);
    return 0;
  }
}

uint64_t _UIHostingView.legacyUpdateKeyboardFrame(_:screen:animation:seed:)(uint64_t a1, void *a2, uint64_t a3, _BOOL4 a4)
{
  v9 = *MEMORY[0x1E69E7D40] & *v4;
  static Semantics.v7.getter();
  result = isLinkedOnOrAfter(_:)();
  if ((result & 1) == 0)
  {
    v11 = _UIHostingView.viewController.getter();
    if (v11)
    {
      v13 = v11;
      v14 = [v11 _appearState];

      if (v14 == 2 && a3 != 0)
      {
        goto LABEL_10;
      }
    }

    else if (a3)
    {
LABEL_10:

      v16 = _UIHostingView.viewGraph.getter();
      swift_beginAccess();
      v17 = *(v16 + 128);

      if (v17 == 1)
      {
        _UIHostingView.viewGraph.getter();

        Transaction.init(animation:)();
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19 = swift_allocObject();
        *(v19 + 16) = *(v9 + 80);
        *(v19 + 24) = *(v9 + 88);
        *(v19 + 32) = v18;
        *(v19 + 40) = a3;
        v20 = *(a1 + 16);
        *(v19 + 48) = *a1;
        *(v19 + 64) = v20;
        *(v19 + 80) = *(a1 + 32);
        *(v19 + 88) = a2;
        *(v19 + 96) = a4;
        v21 = a2;

        default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
        GraphHost.asyncTransaction(_:id:_:)();
      }
    }

    v22.value.super.isa = a2;
    v22.is_nil = a4;
    return _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(a1, v22, v12);
  }

  return result;
}

Swift::Void __swiftcall _UIHostingView._legacyKeyboardWillHide(note:)(NSNotification note)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  static Semantics.v7.getter();
  if (isLinkedOnOrAfter(_:)() & 1) == 0 && (_UIHostingView.legacyShouldUpdateKeyboardSafeArea.getter())
  {
    v4 = _UIHostingView.viewController.getter();
    if (v4)
    {
      v5 = *((*v2 & *v1) + 0xB8);
      v6 = *(v1 + v5) + 1;
      *(v1 + v5) = v6;
      v7 = v4;
      v8 = [v7 transitionCoordinator];
      if (v8)
      {
        v9 = [v8 isInteractive];
        swift_unknownObjectRelease();
        v10 = v9 ^ 1;
      }

      else
      {
        v10 = 1;
      }

      if ([v7 _appearState] == 2)
      {
      }

      else
      {
        v11 = [v7 _appearState];

        if ((v11 != 3) | v10 & 1)
        {
LABEL_18:
          memset(&_, 0, 32);
          _.is_nil = 1;
          v23.value.super.isa = 0;
          v23.is_nil = v6;
          _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(&_, v23, v12);

          return;
        }
      }

      v13 = _UIHostingView.base.getter();
      v14 = UIHostingViewBase.updatesWillBeVisible.getter();

      if ((v14 & 1) != 0 && (_UIHostingView.isExitingForeground.getter() & 1) == 0)
      {
        NSNotification.keyboardAnimationDuration.getter();
        if ((v15 & 1) == 0)
        {
          v16 = NSNotification.keyboardAnimationCurve.getter();
          if ((v17 & 1) == 0)
          {
            if (static Animation.uiViewAnimation(curve:duration:)(v16))
            {
              v18 = _UIHostingView.viewGraph.getter();
              swift_beginAccess();
              v19 = *(v18 + 128);

              if (v19 == 1)
              {
                _UIHostingView.viewGraph.getter();

                Transaction.init(animation:)();
                v20 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v21 = swift_allocObject();
                *(v21 + 16) = *(v3 + 80);
                *(v21 + 24) = *(v3 + 88);
                *(v21 + 32) = v20;
                *(v21 + 40) = v6;

                default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
                GraphHost.asyncTransaction(_:id:_:)();

                return;
              }
            }
          }
        }
      }

      goto LABEL_18;
    }
  }
}

void closure #1 in _UIHostingView._legacyKeyboardWillHide(note:)(uint64_t a1, Swift::Bool a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    memset(&_, 0, 32);
    _.is_nil = 1;
    v7.value.super.isa = 0;
    v7.is_nil = a2;
    _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(&_, v7, v4);
  }
}

Swift::Void __swiftcall _UIHostingView._legacyKeyboardFrameWillChange(note:)(NSNotification note)
{
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (v3 || (NSNotification.keyboardIsLocal.getter() & 1) != 0)
    {
      v4 = MEMORY[0x1E69E7D40];
      if ((*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0) + 32) & 1) == 0)
      {
        v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
        v6 = *(v1 + v5) + 1;
        *(v1 + v5) = v6;
        if ((_UIHostingView.legacyShouldAddKeyboardToSafeArea.getter() & 1) != 0 && (NSNotification.keyboardFrame.getter(v13), (v14 & 1) == 0) && (v10 = v13[1], *v11 = v13[0], (v8 = NSNotification.keyboardScreen.getter()) != 0))
        {
          _.value.origin = *v11;
          _.value.size = v10;
          _.is_nil = 0;
          v9 = *(v1 + *((*v4 & *v1) + 0xC8));
          v12 = v8;

          _UIHostingView.legacyUpdateKeyboardFrame(_:screen:animation:seed:)(&_, v12, v9, v6);
        }

        else
        {
          memset(&_, 0, 32);
          _.is_nil = 1;
          v17.value.super.isa = 0;
          v17.is_nil = v6;
          _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(&_, v17, v7);
        }
      }
    }
  }
}

void closure #1 in _UIHostingView.legacyUpdateKeyboardFrame(_:screen:animation:seed:)(uint64_t a1, uint64_t a2, __C::CGRect_optional *a3, objc_class *a4, Swift::Bool a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xC8)) = a2;
    v10 = Strong;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v13 = v11;
    v14.value.super.isa = a4;
    v14.is_nil = a5;
    _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(a3, v14, v12);
  }
}

id NSNotification.keyboardAnimationDuration.getter()
{
  result = [v0 userInfo];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v7[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v7[0] + 1) = v4;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v6 & 1) != 0))
    {
      outlined init with copy of Any(*(v3 + 56) + 32 * v5, v7);
      outlined destroy of AnyHashable(v8);

      outlined init with take of Any(v7, v9);
      outlined init with take of Any(v9, v8);
      if (swift_dynamicCast())
      {
        return *&v7[0];
      }

      else
      {
        return 0;
      }
    }

    else
    {

      outlined destroy of AnyHashable(v8);
      return 0;
    }
  }

  return result;
}

id NSNotification.keyboardAnimationCurve.getter()
{
  result = [v0 userInfo];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v7[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v7[0] + 1) = v4;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v6 & 1) != 0))
    {
      outlined init with copy of Any(*(v3 + 56) + 32 * v5, v7);
      outlined destroy of AnyHashable(v8);

      outlined init with take of Any(v7, v9);
      outlined init with take of Any(v9, v8);
      if (swift_dynamicCast())
      {
        return *&v7[0];
      }

      else
      {
        return 0;
      }
    }

    else
    {

      outlined destroy of AnyHashable(v8);
      return 0;
    }
  }

  return result;
}

uint64_t NSNotification.keyboardIsLocal.getter()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v9 + 1) = v4;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v6 & 1) == 0))
  {

    outlined destroy of AnyHashable(v8);
LABEL_8:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v5, &v9);
  outlined destroy of AnyHashable(v8);

  if (!*(&v10 + 1))
  {
LABEL_9:
    outlined destroy of Any?(&v9);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v8[0];
  }

  return result;
}

uint64_t MapKitViewTraitCollection.init()@<X0>(void *a1@<X8>)
{
  result = ViewTraitCollection.init()();
  *a1 = v3;
  return result;
}

uint64_t MapKitViewTraitCollection.subscript.setter(uint64_t a1)
{
  specialized MapKitViewTraitCollection.subscript.setter(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

void (*MapKitViewTraitCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  ViewTraitCollection.value<A>(for:)();
  return MapKitViewTraitCollection.subscript.modify;
}

void MapKitViewTraitCollection.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    specialized MapKitViewTraitCollection.subscript.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized MapKitViewTraitCollection.subscript.setter(*(*a1 + 56));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t specialized MapKitViewTraitCollection.subscript.setter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  return ViewTraitCollection.subscript.setter();
}

uint64_t key path getter for EnvironmentValues.menuTitleVisibility : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuTitleVisibilityKey>, &type metadata for MenuTitleVisibilityKey, &protocol witness table for MenuTitleVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuTitleVisibilityKey>, &type metadata for MenuTitleVisibilityKey, &protocol witness table for MenuTitleVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.menuTitleVisibility : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuTitleVisibilityKey>, &type metadata for MenuTitleVisibilityKey, &protocol witness table for MenuTitleVisibilityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t PaletteControlGroupStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = swift_getKeyPath();
  *(a1 + 16) = 0;
  result = swift_getKeyPath();
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  return result;
}

uint64_t PaletteControlGroupStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v19 = *v1;
  v20 = v3;
  v21 = *(v1 + 32);
  v15 = static VerticalAlignment.center.getter();
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v17 = 0;
  v18 = 1;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  v16[5] = Namespace.wrappedValue.getter();
  _print_unlocked<A, B>(_:_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  v7 = swift_getKeyPath();
  specialized Environment.wrappedValue.getter(*(&v19 + 1), v20, v16);
  v8 = LOWORD(v16[0]);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 48) = 0;
  v10 = swift_allocObject();
  v11 = v20;
  *(v10 + 16) = v19;
  *(v10 + 32) = v11;
  *(v10 + 48) = v21;
  v12 = swift_getKeyPath();
  *a1 = v15;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = 0;
  *(a1 + 65) = 0;
  *(a1 + 72) = v4;
  *(a1 + 80) = 0;
  *(a1 + 81) = 0;
  *(a1 + 88) = v5;
  *(a1 + 96) = 0;
  *(a1 + 104) = partial apply for closure #1 in View.platformItemIdentifier(_:);
  *(a1 + 112) = v6;
  *(a1 + 120) = v7;
  *(a1 + 128) = 1;
  *(a1 + 136) = partial apply for closure #1 in View.platformItemSystemType(_:);
  *(a1 + 144) = v9;
  *(a1 + 152) = partial apply for closure #3 in PaletteControlGroupStyle.makeBody(configuration:);
  *(a1 + 160) = v10;
  *(a1 + 168) = v12;
  *(a1 + 176) = closure #4 in PaletteControlGroupStyle.makeBody(configuration:);
  *(a1 + 184) = 0;
  return outlined init with copy of PaletteControlGroupStyle(&v19, v16);
}

void closure #3 in PaletteControlGroupStyle.makeBody(configuration:)(uint64_t a1, uint64_t a2)
{
  if (specialized Environment.wrappedValue.getter(*(a2 + 24), *(a2 + 32)) == 2)
  {
    v3 = *a1;
    v4 = *(*a1 + 16);
    if (v4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_10:
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      }

      for (i = 0; i != v4; ++i)
      {
        if (i >= v3[2])
        {
          __break(1u);
          goto LABEL_10;
        }

        v6 = *(type metadata accessor for PlatformItemList.Item() - 8);
        v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v8 = *(v6 + 72) * i;
        v9 = *&v7[v8];
        *&v7[v8] = 0;
      }

      *a1 = v3;
    }
  }
}

_BYTE *closure #4 in PaletteControlGroupStyle.makeBody(configuration:)(_BYTE *result)
{
  if (!*result)
  {
    *result = 2;
  }

  return result;
}

uint64_t destroy for PaletteControlGroupStyle(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*(a1 + 8), *(a1 + 16));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for PaletteControlGroupStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = *(v2 + 24);
  LOBYTE(v2) = *(v2 + 32);
  outlined copy of Environment<Selector?>.Content(v6, v2);
  *(a1 + 24) = v6;
  *(a1 + 32) = v2;
  return a1;
}

uint64_t assignWithCopy for PaletteControlGroupStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(v2 + 24);
  LOBYTE(v2) = *(v2 + 32);
  outlined copy of Environment<Selector?>.Content(v8, v2);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 24) = v8;
  *(a1 + 32) = v2;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  return a1;
}

uint64_t assignWithTake for PaletteControlGroupStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  v7 = *(a2 + 32);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for PaletteControlGroupStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for PaletteControlGroupStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>, &type metadata for MenuActionDismissBehavior, MEMORY[0x1E6980B20]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>();
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>)
  {
    type metadata accessor for Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>();
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>);
    }
  }
}

void type metadata accessor for Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>)
  {
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(255, &lazy cache variable for type metadata for HStack<ControlGroupStyleConfiguration.Label>, &type metadata for ControlGroupStyleConfiguration.Label, &protocol witness table for ControlGroupStyleConfiguration.Label, MEMORY[0x1E69817F0]);
    lazy protocol witness table accessor for type HStack<ControlGroupStyleConfiguration.Label> and conformance HStack<A>();
    v0 = type metadata accessor for Menu();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HStack<ControlGroupStyleConfiguration.Label> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<ControlGroupStyleConfiguration.Label> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<ControlGroupStyleConfiguration.Label> and conformance HStack<A>)
  {
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(255, &lazy cache variable for type metadata for HStack<ControlGroupStyleConfiguration.Label>, &type metadata for ControlGroupStyleConfiguration.Label, &protocol witness table for ControlGroupStyleConfiguration.Label, MEMORY[0x1E69817F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<ControlGroupStyleConfiguration.Label> and conformance HStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>();
    lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content> and conformance Menu<A, B>, type metadata accessor for Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>, type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>, &type metadata for MenuActionDismissBehavior, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t SheetPreference.Value.dismissalTransaction(for:)(uint64_t a1)
{
  outlined init with copy of SheetPreference.Value(v1, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      outlined destroy of SheetPreference.Value(v8);
    }
  }

  else
  {
    v3 = v8[0];
    if (*(v8[0] + 16))
    {
      v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if (v5)
      {
        v6 = *(*(v3 + 56) + 8 * v4);

        return v6;
      }
    }
  }

  return 1;
}

unint64_t SheetPreference.Value.debugDescription.getter()
{
  outlined init with copy of SheetPreference.Value(v0, v9);
  if (v11)
  {
    if (v11 == 1)
    {
      v7[4] = v9[4];
      v8[0] = *v10;
      *(v8 + 10) = *&v10[10];
      v7[0] = v9[0];
      v7[1] = v9[1];
      v7[2] = v9[2];
      v7[3] = v9[3];
      v4[0] = 0;
      v4[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v5 = 0xD000000000000012;
      v6 = 0x800000018CD47AE0;
      outlined init with copy of SheetPreference(v7, v4);
      v1 = String.init<A>(describing:)();
      MEMORY[0x18D00C9B0](v1);

      v2 = v5;
      outlined destroy of SheetPreference(v7);
      return v2;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    outlined destroy of SheetPreference.Value(v9);
    return 0xD000000000000016;
  }
}

uint64_t closure #1 in ItemSheetPresentationModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v36 = a8;
  KeyPath = a1;
  v41 = a9;
  type metadata accessor for Optional();
  v15 = type metadata accessor for Binding();
  v16 = *(v15 - 8);
  v37 = v15;
  v38 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  v19 = type metadata accessor for SheetContent();
  v40 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v35 = &v32 - v20;
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6981948]);
  v39 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v39);
  v34 = &v32 - v21;
  v22 = a2;
  v23 = v36;
  closure #1 in closure #1 in ItemSheetPresentationModifier.body(content:)(v22, KeyPath, a3, a4, a5, a6, a7);
  KeyPath = swift_getKeyPath();
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v50 = a6;
  v51 = a7;
  v52 = v23;
  v24 = type metadata accessor for ItemSheetPresentationModifier();
  ItemSheetPresentationModifier.item.getter(v24, MEMORY[0x1E6981928]);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a3, a6, v25, v26);
  type metadata accessor for PresentationMode.FromItem();
  swift_getWitnessTable();
  v27 = v37;
  Binding.projecting<A>(_:)();
  (*(v38 + 8))(v18, v27);
  v44 = v47;
  v45 = v48;
  v46 = v49;
  WitnessTable = swift_getWitnessTable();
  v29 = v35;
  View.environment<A>(_:_:)();

  (*(v40 + 8))(v29, v19);
  v30 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>();
  v42 = WitnessTable;
  v43 = v30;
  swift_getWitnessTable();
  result = AnyView.init<A>(_:)();
  *v41 = result;
  return result;
}

uint64_t closure #1 in closure #1 in ItemSheetPresentationModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - v15;
  v26[0] = v17;
  v26[1] = v18;
  v26[2] = v19;
  v26[3] = v20;
  v26[4] = v21;
  v26[5] = v22;
  v23 = type metadata accessor for ItemSheetPresentationModifier();
  (*(a1 + *(v23 + 72)))(a2);
  static ViewBuilder.buildExpression<A>(_:)(v13, a4, a7);
  v24 = *(v11 + 8);
  v24(v13, a4);
  static ViewBuilder.buildExpression<A>(_:)(v16, a4, a7);
  return (v24)(v16, a4);
}

uint64_t closure #2 in ItemSheetPresentationModifier.body(content:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  if (a1)
  {
    (*(*(a3 - 8) + 56))(v19, 1, 1, a3, v17);
    v24 = a3;
    v25 = a4;
    v26 = a5;
    v27 = a6;
    v28 = a7;
    v29 = v23;
    type metadata accessor for ItemSheetPresentationModifier();
    specialized ItemSheetPresentationModifier.item.setter();
    (*(v16 + 8))(v19, v15);
  }

  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = v23;
  result = type metadata accessor for ItemSheetPresentationModifier();
  v21 = (a2 + *(result + 68));
  if (*v21)
  {
    return (*v21)();
  }

  return result;
}

uint64_t closure #2 in SheetPresentationModifier.body(content:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    type metadata accessor for SheetPresentationModifier();
    result = dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    return v3(result);
  }

  return result;
}

uint64_t View.sheet<A, B>(item:drawsBackground:content:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v35 = a8;
  v33 = a9;
  v34 = a5;
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v28 = a1;
  v29 = a12;
  type metadata accessor for Optional();
  v14 = type metadata accessor for Binding();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v19 = v18;
  v20 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>();
  v36 = a6;
  v37 = a7;
  v38 = v19;
  v39 = a10;
  v40 = a11;
  v41 = v20;
  v21 = type metadata accessor for ItemSheetPresentationModifier();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v27 - v24;
  (*(v15 + 16))(v17, v28, v14, v23);
  ItemSheetPresentationModifier<>.init(item:onDismiss:sheetContent:placement:drawsBackground:)(v17, 0, 0, v30, v31, v29, v32, a6, v25, a7);

  MEMORY[0x18D00A570](v25, v34, v21, v35);
  return (*(v22 + 8))(v25, v21);
}

uint64_t View.sheet<A>(isPresented:drawsBackground:content:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  SheetPresentationModifier<>.init(isPresented:onDismiss:sheetContent:placement:drawsBackground:)(a1, a2, a3, 0, 0, a5, a6, a11, v18, a4, a8, a10);
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v14 = v13;
  v15 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>();

  *&v20 = a8;
  *(&v20 + 1) = v14;
  *&v21 = a10;
  *(&v21 + 1) = v15;
  v16 = type metadata accessor for SheetPresentationModifier();
  MEMORY[0x18D00A570](v18, a7, v16, a9);
  v20 = v18[0];
  v21 = v18[1];
  v22[0] = v19[0];
  *(v22 + 11) = *(v19 + 11);
  return (*(*(v16 - 8) + 8))(&v20, v16);
}

uint64_t View.formSheet<A, B>(item:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v66 = a9;
  v64 = a3;
  v65 = a7;
  v60 = a6;
  v61 = a1;
  v62 = a4;
  v63 = a2;
  type metadata accessor for Optional();
  v12 = type metadata accessor for Binding();
  v51 = v12;
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v49 - v13;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980910]);
  v15 = type metadata accessor for ModifiedContent();
  v54 = v15;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v17 = v16;
  v18 = lazy protocol witness table accessor for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>();
  v74 = a10;
  v75 = v18;
  v50 = a10;
  WitnessTable = swift_getWitnessTable();
  v20 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>();
  v68 = a5;
  v69 = v15;
  v70 = v17;
  v71 = a8;
  v21 = a8;
  v72 = WitnessTable;
  v73 = v20;
  v49[1] = WitnessTable;
  v22 = type metadata accessor for ItemSheetPresentationModifier();
  MEMORY[0x1EEE9AC00](v22);
  v57 = v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v49 - v25;
  v53 = v49 - v25;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<PadInterfaceIdiom>, MEMORY[0x1E697F278], MEMORY[0x1E697F270], MEMORY[0x1E69801E0]);
  v56 = v22;
  v27 = type metadata accessor for StaticIf();
  v28 = *(v27 - 8);
  v58 = v27;
  v59 = v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v55 = v49 - v30;
  v31 = *(v67 + 16);
  v67 += 16;
  v52 = v31;
  v32 = v61;
  (v31)(v14, v61, v12, v29);
  v33 = swift_allocObject();
  v34 = v62;
  v33[2] = v62;
  v33[3] = a5;
  v35 = a5;
  v36 = v60;
  v37 = v65;
  v33[4] = v60;
  v33[5] = v37;
  v38 = v21;
  v33[6] = v21;
  v33[7] = a10;
  v40 = v63;
  v39 = v64;
  v33[8] = v63;
  v33[9] = v39;
  v41 = v54;
  v42 = v26;
  v43 = v35;
  ItemSheetPresentationModifier<>.init(item:onDismiss:sheetContent:placement:drawsBackground:)(v14, 0, 0, partial apply for closure #1 in View.formSheet<A, B>(item:content:), v33, 2, 1, v35, v42, v54);
  v52(v14, v32, v51);
  v44 = swift_allocObject();
  v44[2] = v34;
  v44[3] = v43;
  v44[4] = v36;
  v44[5] = v37;
  v45 = v50;
  v44[6] = v38;
  v44[7] = v45;
  v44[8] = v40;
  v44[9] = v39;
  ItemSheetPresentationModifier<>.init(item:onDismiss:sheetContent:placement:drawsBackground:)(v14, 0, 0, partial apply for closure #2 in View.formSheet<A, B>(item:content:), v44, 0, 1, v43, v57, v41);
  swift_retain_n();
  swift_getWitnessTable();
  v46 = v55;
  StaticIf<>.init<A>(idiom:then:else:)();
  v47 = v58;
  MEMORY[0x18D00A570](v46, v34, v58, v37);
  return (*(v59 + 8))(v46, v47);
}

uint64_t closure #1 in View.formSheet<A, B>(item:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  View.transformPreference<A>(_:_:)();
  return (*(v7 + 8))(v10, a6);
}

uint64_t closure #1 in View.formSheet<A>(isPresented:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v6);
  View.transformPreference<A>(_:_:)();
  return (*(v5 + 8))(v8, a4);
}

uint64_t key path getter for EnvironmentValues.tintAdjustmentMode : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.tintAdjustmentMode.getter();
  *a1 = v3;
  return result;
}

uint64_t key path getter for EnvironmentValues.menuIndicatorProminenceReduced : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedMenuIndicatorProminence>, &type metadata for ReducedMenuIndicatorProminence, &protocol witness table for ReducedMenuIndicatorProminence, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedMenuIndicatorProminence>, &type metadata for ReducedMenuIndicatorProminence, &protocol witness table for ReducedMenuIndicatorProminence, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.menuIndicatorProminenceReduced : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedMenuIndicatorProminence>, &type metadata for ReducedMenuIndicatorProminence, &protocol witness table for ReducedMenuIndicatorProminence, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t assignWithCopy for SheetPreference.Value(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 106);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {

      if (*(a1 + 8))
      {
      }

      if (*(a1 + 56))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 32);
      }
    }

    else if (!v4)
    {
    }

    v5 = *(a2 + 106);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      v6 = *(a2 + 1);

      if (v6)
      {
        v7 = *(a2 + 2);
        *(a1 + 8) = v6;
        *(a1 + 16) = v7;
      }

      else
      {
        *(a1 + 8) = *(a2 + 8);
      }

      *(a1 + 24) = *(a2 + 3);
      v13 = *(a2 + 7);
      if (v13)
      {
        *(a1 + 56) = v13;
        *(a1 + 64) = *(a2 + 8);
        (**(v13 - 8))(a1 + 32, (a2 + 2));
      }

      else
      {
        v14 = a2[2];
        v15 = a2[3];
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 32) = v14;
        *(a1 + 48) = v15;
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 73) = *(a2 + 73);
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 96) = *(a2 + 12);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 105) = *(a2 + 105);
      *(a1 + 106) = 1;
    }

    else if (v5)
    {
      v8 = *a2;
      v9 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v9;
      *a1 = v8;
      v10 = a2[3];
      v11 = a2[4];
      v12 = a2[5];
      *(a1 + 91) = *(a2 + 91);
      *(a1 + 64) = v11;
      *(a1 + 80) = v12;
      *(a1 + 48) = v10;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 106) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for SheetPreference.Value(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 106);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {

      if (*(a1 + 8))
      {
      }

      if (*(a1 + 56))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 32);
      }
    }

    else if (!v4)
    {
    }

    v5 = *(a2 + 106);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 90) = *(a2 + 90);
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      v8 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v8;
      *(a1 + 106) = 1;
    }

    else if (v5)
    {
      v9 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v9;
      *(a1 + 91) = *(a2 + 91);
      v10 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v10;
      v11 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v11;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 106) = 0;
    }
  }

  return a1;
}

uint64_t getEnumTag for SheetPreference.Value(uint64_t a1)
{
  result = *(a1 + 106);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SheetPreference.Value(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 90) = 0u;
    v2 = a2 - 2;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 106) = a2;
  return result;
}

uint64_t assignWithCopy for SheetPreference(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      *(a1 + 8) = v4;
      *(a1 + 16) = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = *(a2 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v6;

    goto LABEL_8;
  }

  *(a1 + 8) = *(a2 + 8);
LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 56);
  if (*(a1 + 56))
  {
    v8 = (a1 + 32);
    if (v7)
    {
      __swift_assign_boxed_opaque_existential_1(v8, (a2 + 32));
    }

    else
    {
      outlined destroy of AnyHashable(v8);
      v9 = *(a2 + 64);
      v10 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v10;
      *(a1 + 64) = v9;
    }
  }

  else if (v7)
  {
    *(a1 + 56) = v7;
    *(a1 + 64) = *(a2 + 64);
    (**(v7 - 8))(a1 + 32, a2 + 32);
  }

  else
  {
    v11 = *(a2 + 32);
    v12 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v11;
    *(a1 + 48) = v12;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  return a1;
}

uint64_t assignWithTake for SheetPreference(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      *(a1 + 8) = v4;
      *(a1 + 16) = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = *(a2 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v6;
    goto LABEL_8;
  }

  *(a1 + 8) = *(a2 + 8);
LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  if (*(a1 + 56))
  {
    if (*(a2 + 56))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 32);
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 32);
    }
  }

  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for ItemSheetPresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = *(v5 + 64) + 1;
  }

  v9 = v7 + v8;
  v10 = *(a3 + 32);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (*(v11 + 80) | *(v5 + 80)) & 0x100000;
  v14 = ((-19 - v12 - ((((v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v12) - *(v11 + 64);
  v15 = *a2;
  *a1 = *a2;
  if ((v12 | v6) <= 7 && v13 == 0 && v14 >= 0xFFFFFFFFFFFFFFE7)
  {
    v36 = v11;
    v37 = v10;
    v38 = a1;
    v19 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = *v19;
    v20 = v19 + 1;
    v22 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v22 = v21;
    v23 = v22 + 1;
    v24 = *(v5 + 48);

    if (v24(v20, 1, v4))
    {
      memcpy(v23, v20, v8);
    }

    else
    {
      (*(v5 + 16))(v23, v20, v4);
      (*(v5 + 56))(v23, 0, 1, v4);
    }

    v18 = v38;
    v25 = (v38 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (a2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v26 < 0xFFFFFFFFuLL)
    {
      *v25 = *v26;
    }

    else
    {
      v27 = *(v26 + 8);
      *v25 = *v26;
      *(v25 + 8) = v27;
    }

    v28 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
    v30 = *(v29 + 8);
    *v28 = *v29;
    *(v28 + 8) = v30;
    *(v28 + 16) = *(v29 + 16);
    *(v28 + 17) = *(v29 + 17);
    v31 = v28 + v12 + 18;
    v32 = v29 + v12 + 18;
    v33 = *(v36 + 16);

    v33(v31 & ~v12, v32 & ~v12, v37);
  }

  else
  {
    v18 = (v15 + (((v12 | v6) & 0xF8 ^ 0x1F8) & ((v12 | v6) + 16)));
  }

  return v18;
}

void *initializeWithTake for ItemSheetPresentationModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v6 + v10 + 8;
  v12 = v7 + v10 + 8;
  if ((*(v9 + 48))(v12 & ~v10, 1, v8))
  {
    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy((v11 & ~v10), (v12 & ~v10), v15);
  }

  else
  {
    (*(v9 + 32))(v11 & ~v10, v12 & ~v10, v8);
    v17 = *(v9 + 56);
    v16 = v9 + 56;
    v17(v11 & ~v10, 0, 1, v8);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  if (v13)
  {
    v18 = v14 + ((v10 + 16) & ~v10);
  }

  else
  {
    v18 = v14 + ((v10 + 16) & ~v10) + 1;
  }

  v19 = (a1 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (a2 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v20 < 0xFFFFFFFFuLL)
  {
    *v19 = *v20;
  }

  else
  {
    v21 = *(v20 + 8);
    *v19 = *v20;
    *(v19 + 8) = v21;
  }

  v22 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  *(v22 + 16) = *(v23 + 16);
  *(v22 + 17) = *(v23 + 17);
  v24 = *(*(a3 + 32) - 8);
  (*(v24 + 32))((*(v24 + 80) + 18 + v22) & ~*(v24 + 80), (*(v24 + 80) + 18 + v23) & ~*(v24 + 80));
  return a1;
}

void *assignWithTake for ItemSheetPresentationModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;
  v7 = a1 + 15;

  v8 = v7 & 0xFFFFFFFFFFFFFFF8;
  *(v7 & 0xFFFFFFFFFFFFFFF8) = *(v6 & 0xFFFFFFFFFFFFFFF8);

  v29 = a3;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 8 + v8;
  v13 = v11 + 8 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v14 = *(v10 + 48);
  LODWORD(v8) = v14(v12 & ~v11, 1, v9);
  v15 = v14(v13 & ~v11, 1, v9);
  if (v8)
  {
    if (v15)
    {
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
LABEL_6:
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 + 1;
      }

      memcpy((v12 & ~v11), (v13 & ~v11), v18);
      goto LABEL_12;
    }

    (*(v10 + 32))(v12 & ~v11, v13 & ~v11, v9);
    (*(v10 + 56))(v12 & ~v11, 0, 1, v9);
  }

  else
  {
    if (v15)
    {
      (*(v10 + 8))(v12 & ~v11, v9);
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
      goto LABEL_6;
    }

    (*(v10 + 40))(v12 & ~v11, v13 & ~v11, v9);
  }

LABEL_12:
  v19 = *(v10 + 64) + ((v11 + 16) & ~v11);
  if (!*(v10 + 84))
  {
    ++v19;
  }

  v20 = ((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((a2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v21;
  if (*v20 < 0xFFFFFFFFuLL)
  {
    if (v22 >= 0xFFFFFFFF)
    {
      v24 = v21[1];
      *v20 = v22;
      v20[1] = v24;
      goto LABEL_21;
    }

LABEL_20:
    *v20 = *v21;
    goto LABEL_21;
  }

  if (v22 < 0xFFFFFFFF)
  {

    goto LABEL_20;
  }

  v23 = v21[1];
  *v20 = v22;
  v20[1] = v23;

LABEL_21:
  v25 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v25 = *v26;

  *(v25 + 16) = *(v26 + 16);
  *(v25 + 17) = *(v26 + 17);
  v27 = *(*(v29 + 32) - 8);
  (*(v27 + 40))((*(v27 + 80) + 18 + v25) & ~*(v27 + 80), (*(v27 + 80) + 18 + v26) & ~*(v27 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for ItemSheetPresentationModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a3 + 32);
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v5 + 80);
  v15 = *(v10 + 80);
  if (v6)
  {
    v16 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v16 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v16 + ((v14 + 16) & ~v14);
  v18 = v15 + 18;
  v19 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v20 = ((v18 + ((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + *(*(v9 - 8) + 64);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 < 2)
    {
LABEL_37:
      if (v8 >= v12)
      {
        v30 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v7 & 0x80000000) != 0)
        {
          v32 = (*(v5 + 48))((v30 + v14 + 8) & ~v14);
          if (v32 >= 2)
          {
            return v32 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v31 = *v30;
          if (v31 >= 0xFFFFFFFF)
          {
            LODWORD(v31) = -1;
          }

          return (v31 + 1);
        }
      }

      else
      {
        v28 = *(v11 + 48);
        v29 = (v18 + ((((a1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15;

        return v28(v29, v12, v9);
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_37;
  }

LABEL_24:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v13 + (v27 | v25) + 1;
}

void storeEnumTagSinglePayload for ItemSheetPresentationModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
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

  v11 = *(a4 + 32);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v7 + 80);
  v15 = *(*(*(a4 + 16) - 8) + 64);
  v16 = *(v12 + 80);
  if (v13 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  if (!v8)
  {
    ++v15;
  }

  v18 = ((v14 + 16) & ~v14) + v15;
  v19 = ((v16 + 18 + ((((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + *(*(v11 - 8) + 64);
  v20 = a3 >= v17;
  v21 = a3 - v17;
  if (v21 == 0 || !v20)
  {
LABEL_27:
    if (v17 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if (v19 > 3)
  {
    v6 = 1;
    if (v17 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
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

    goto LABEL_27;
  }

  v6 = 4;
  if (v17 < a2)
  {
LABEL_28:
    v24 = ~v17 + a2;
    if (v19 >= 4)
    {
      bzero(a1, v19);
      *a1 = v24;
      v25 = 1;
      if (v6 > 1)
      {
        goto LABEL_30;
      }

      goto LABEL_66;
    }

    v25 = (v24 >> (8 * v19)) + 1;
    if (v19)
    {
      v28 = v24 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v28;
          if (v6 > 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          *a1 = v24;
          if (v6 > 1)
          {
LABEL_30:
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

LABEL_66:
        if (v6)
        {
          a1[v19] = v25;
        }

        return;
      }

      *a1 = v28;
      a1[2] = BYTE2(v28);
    }

    if (v6 > 1)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_16:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
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

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v10 < v13)
  {
    v26 = *(v12 + 56);
    v27 = (v16 + 18 + (((&a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16;

    v26(v27);
    return;
  }

  if (v10 < a2)
  {
    if (v18 <= 3)
    {
      v29 = ~(-1 << (8 * v18));
    }

    else
    {
      v29 = -1;
    }

    if (!v18)
    {
      return;
    }

    v30 = v29 & (~v10 + a2);
    if (v18 <= 3)
    {
      v31 = ((v14 + 16) & ~v14) + v15;
    }

    else
    {
      v31 = 4;
    }

    bzero(a1, ((v14 + 16) & ~v14) + v15);
    if (v31 <= 2)
    {
      if (v31 == 1)
      {
LABEL_54:
        *a1 = v30;
        return;
      }

LABEL_81:
      *a1 = v30;
      return;
    }

    goto LABEL_82;
  }

  v32 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v33 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v33 = a2 - 1;
    }

    *v32 = v33;
    return;
  }

  v34 = v32 + v14 + 8;
  a1 = (v34 & ~v14);
  if (v9 < a2)
  {
    if (v15 <= 3)
    {
      v35 = ~(-1 << (8 * v15));
    }

    else
    {
      v35 = -1;
    }

    if (!v15)
    {
      return;
    }

    v30 = v35 & (~v9 + a2);
    if (v15 <= 3)
    {
      v31 = v15;
    }

    else
    {
      v31 = 4;
    }

    bzero(a1, v15);
    if (v31 <= 2)
    {
      if (v31 == 1)
      {
        goto LABEL_54;
      }

      goto LABEL_81;
    }

LABEL_82:
    if (v31 == 3)
    {
      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    else
    {
      *a1 = v30;
    }

    return;
  }

  v36 = *(v7 + 56);
  v37 = a2 + 1;

  v36(v34 & ~v14, v37);
}

uint64_t initializeBufferWithCopyOfBuffer for SheetPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || v7 - ((-59 - v6) | v6) > 0x18)
  {
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  else
  {
    v24 = ~v6;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v12 = a1 & 0xFFFFFFFFFFFFFFF8;
    v13 = a2 & 0xFFFFFFFFFFFFFFF8;
    v15 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
    v14 = *v15;

    if (v14 < 0xFFFFFFFF)
    {
      *(v12 + 24) = *v15;
    }

    else
    {
      v16 = v15[1];
      *(v12 + 24) = v14;
      *(v12 + 32) = v16;
    }

    v17 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v13 + 47) & 0xFFFFFFFFFFFFFFF8;
    v19 = *(v18 + 8);
    *v17 = *v18;
    *(v17 + 8) = v19;
    *(v17 + 16) = *(v18 + 16);
    *(v17 + 17) = *(v18 + 17);
    v20 = (v17 + v6 + 18) & v24;
    v21 = (v18 + v6 + 18) & v24;
    v22 = *(v5 + 16);

    v22(v20, v21, v4);
    *(v20 + v7) = *(v21 + v7);
  }

  return a1;
}

uint64_t initializeWithTake for SheetPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v5 < 0xFFFFFFFF)
  {
    *(v4 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
  }

  v7 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 17) = *(v8 + 17);
  v9 = *(*(a3 + 24) - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = (v11 + 18 + v7) & ~v11;
  v13 = (v11 + 18 + v8) & ~v11;
  (*(v9 + 32))(v12, v13);
  *(*(v10 + 32) + v12) = *(*(v10 + 32) + v13);
  return a1;
}

uint64_t assignWithTake for SheetPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  v7 = a2 & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 24);
  if (*v6 < 0xFFFFFFFF)
  {
    if (v8 >= 0xFFFFFFFF)
    {
      v10 = *(v7 + 32);
      *v6 = v8;
      *((a1 & 0xFFFFFFFFFFFFFFF8) + 32) = v10;
      goto LABEL_8;
    }

LABEL_7:
    *v6 = *(v7 + 24);
    goto LABEL_8;
  }

  if (v8 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  v9 = *(v7 + 32);
  *v6 = v8;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 32) = v9;

LABEL_8:
  v11 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;

  *(v11 + 16) = *(v12 + 16);
  *(v11 + 17) = *(v12 + 17);
  v13 = *(*(a3 + 24) - 8);
  v14 = v13 + 40;
  v15 = *(v13 + 80);
  v16 = (v15 + 18 + v11) & ~v15;
  v17 = (v15 + 18 + v12) & ~v15;
  (*(v13 + 40))(v16, v17);
  *(*(v14 + 24) + v16) = *(*(v14 + 24) + v17);
  return a1;
}

uint64_t getEnumTagSinglePayload for SheetPresentationModifier(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v9 = *(*(*(a3 + 24) - 8) + 64) + ((v6 + 58) & ~v6) + 1;
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
        return (*(v4 + 48))(((((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v6 + 18) & ~v6);
      }

      v15 = *(a1 + 8);
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

void storeEnumTagSinglePayload for SheetPresentationModifier(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
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
  v10 = *(*(*(a4 + 24) - 8) + 64) + ((v9 + 58) & ~v9) + 1;
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
      if (*(*(*(a4 + 24) - 8) + 64) + ((v9 + 58) & ~v9) != -1)
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
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
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
        *(a1 + 2) = BYTE2(v18);
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
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
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
    v20 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v9 + 18) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 16) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = a2 - 1;
  }
}

unint64_t lazy protocol witness table accessor for type SheetPreference.Placement and conformance SheetPreference.Placement()
{
  result = lazy protocol witness table cache variable for type SheetPreference.Placement and conformance SheetPreference.Placement;
  if (!lazy protocol witness table cache variable for type SheetPreference.Placement and conformance SheetPreference.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SheetPreference.Placement and conformance SheetPreference.Placement);
  }

  return result;
}

uint64_t View.inspectorSheet<A>(isPresented:activeInspector:content:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(0, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.InspectorKey>, &type metadata for SheetPreference.InspectorKey, &protocol witness table for SheetPreference.InspectorKey, type metadata accessor for NullSheetAnchor);
  v18 = v17;
  v19 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.InspectorKey> and conformance NullSheetAnchor<A>();
  *&v27 = a1;
  *(&v27 + 1) = a2;
  LOBYTE(v28) = a3;
  *(&v28 + 1) = 0;
  *v29 = 0;
  *&v29[8] = a5;
  *&v29[16] = a6;
  *&v29[24] = 256;
  *&v30 = a8;
  *(&v30 + 1) = v18;
  *&v31 = a10;
  *(&v31 + 1) = v19;
  v20 = type metadata accessor for SheetPresentationModifier();
  (*(*(v18 - 8) + 32))(&v27 + *(v20 + 68));
  *(&v27 + *(v20 + 72)) = a4;
  v24 = v27;
  v25 = v28;
  v26[0] = *v29;
  *(v26 + 11) = *&v29[11];

  *&v30 = a8;
  *(&v30 + 1) = v18;
  *&v31 = a10;
  *(&v31 + 1) = v19;
  v21 = type metadata accessor for SheetPresentationModifier();
  MEMORY[0x18D00A570](&v24, a7, v21, a9);
  v30 = v24;
  v31 = v25;
  v32[0] = v26[0];
  *(v32 + 11) = *(v26 + 11);
  return (*(*(v21 - 8) + 8))(&v30, v21);
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v38 = a5;
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
  while (v9)
  {
    v35 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(*(a1 + 56) + v15);
    v37[0] = *(*(a1 + 48) + v15);
    v37[1] = v16;

    a2(v36, v37);

    v17 = v36[0];
    v18 = v36[1];
    v19 = *v38;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v36[0]);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_25;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((v35 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, v35 & 1);
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v21 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v38;
    if (v25)
    {
      v12 = *(v28[7] + 8 * v21);

      *(v28[7] + 8 * v21) = v12;
    }

    else
    {
      v28[(v21 >> 6) + 8] |= 1 << v21;
      *(v28[6] + 8 * v21) = v17;
      *(v28[7] + 8 * v21) = v18;
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v28[2] = v31;
    }

    a4 = 1;
    v11 = v13;
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
      outlined consume of Set<UIPress>.Iterator._Variant();
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v35 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized static SheetPreference.reduce(value:nextValue:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = outlined init with copy of SheetPreference.Value(a1, v17);
  if (v18)
  {
    if (v18 == 1)
    {
      return outlined destroy of SheetPreference.Value(v17);
    }

    else
    {
      v10 = outlined destroy of SheetPreference.Value(a1);
      return a2(v10);
    }
  }

  else
  {
    v6 = v17[0];
    (a2)(v14, v4);
    if (v16)
    {
      if (v16 == 1)
      {
        outlined destroy of SheetPreference.Value(a1);

        v7 = *v15;
        *(a1 + 64) = v14[4];
        *(a1 + 80) = v7;
        *(a1 + 90) = *&v15[10];
        v8 = v14[1];
        *a1 = v14[0];
        *(a1 + 16) = v8;
        v9 = v14[3];
        *(a1 + 32) = v14[2];
        *(a1 + 48) = v9;
        *(a1 + 106) = 1;
      }

      else
      {
      }
    }

    else
    {
      v11 = *&v14[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v6;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v11, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v13);

      result = outlined destroy of SheetPreference.Value(a1);
      *a1 = v13;
      *(a1 + 106) = 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #2 in SheetPresentationModifier.body(content:)(uint64_t a1)
{
  v3 = *(type metadata accessor for SheetPresentationModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return closure #2 in SheetPresentationModifier.body(content:)(a1, v4);
}

uint64_t partial apply for closure #2 in ItemSheetPresentationModifier.body(content:)(char a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for ItemSheetPresentationModifier() - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return closure #2 in ItemSheetPresentationModifier.body(content:)(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t specialized ItemSheetPresentationModifier.item.setter()
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();

  return specialized Binding.wrappedValue.setter();
}

uint64_t *initializeBufferWithCopyOfBuffer for CoreSheetPresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 - ((-81 - v6) | v6) > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = *a2;
    v11 = a2 + 15;
    *a1 = v12;
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *(v11 & 0xFFFFFFFFFFFFFFF8);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v15 = ((v11 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = *v15;

    if (v16 < 0xFFFFFFFF)
    {
      *v14 = *v15;
    }

    else
    {
      v17 = *(v15 + 8);
      *v14 = v16;
      *(v14 + 8) = v17;
    }

    *(v14 + 16) = *(v15 + 16);
    *(v14 + 17) = *(v15 + 17);
    v18 = (v14 + 25) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v15 + 25) & 0xFFFFFFFFFFFFFFF8;
    v20 = *(v19 + 24);
    if (v20 < 0xFFFFFFFF)
    {
      v21 = *v19;
      v22 = *(v19 + 16);
      *(v18 + 32) = *(v19 + 32);
      *v18 = v21;
      *(v18 + 16) = v22;
    }

    else
    {
      *(v18 + 24) = v20;
      *(v18 + 32) = *(v19 + 32);
      (**(v20 - 8))(v18, v19);
    }

    v23 = v18 + 40;
    v24 = v19 + 40;
    (*(v5 + 16))(v23, v24, v4);
    *(v7 + v23) = *(v7 + v24);
  }

  return v3;
}

void *initializeWithTake for CoreSheetPresentationModifier(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*v8 < 0xFFFFFFFFuLL)
  {
    *v7 = *v8;
  }

  else
  {
    v9 = *(v8 + 8);
    *v7 = *v8;
    *(v7 + 8) = v9;
  }

  *(v7 + 16) = *(v8 + 16);
  *(v7 + 17) = *(v8 + 17);
  v10 = (v7 + 25) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 25) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v12;
  *(v10 + 16) = v13;
  v14 = *(*(a3 + 16) - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = (v10 + v16 + 40) & ~v16;
  v18 = (v11 + v16 + 40) & ~v16;
  (*(v14 + 32))(v17, v18);
  *(v17 + *(v15 + 32)) = *(v18 + *(v15 + 32));
  return a1;
}

void *assignWithTake for CoreSheetPresentationModifier(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 15;
  *a1 = v6;
  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = (v5 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);

  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  if (*v9 < 0xFFFFFFFFuLL)
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v13 = *(v10 + 8);
      *v9 = v11;
      *(v9 + 8) = v13;
      goto LABEL_8;
    }
  }

  else
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v12 = *(v10 + 8);
      *v9 = v11;
      *(v9 + 8) = v12;

      goto LABEL_8;
    }
  }

  *v9 = *v10;
LABEL_8:
  *(v9 + 16) = *(v10 + 16);
  *(v9 + 17) = *(v10 + 17);
  v14 = (v9 + 25) & 0xFFFFFFFFFFFFFFF8;
  if (*(v14 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  v15 = (v10 + 25) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  v17 = *(v15 + 16);
  *(v14 + 32) = *(v15 + 32);
  *v14 = v16;
  *(v14 + 16) = v17;
  v18 = *(*(a3 + 16) - 8);
  v19 = v18 + 40;
  v20 = *(v18 + 80);
  v21 = (v14 + v20 + 40) & ~v20;
  v22 = (v15 + v20 + 40) & ~v20;
  (*(v18 + 40))(v21, v22);
  *(v21 + *(v19 + 24)) = *(v22 + *(v19 + 24));
  return a1;
}

uint64_t getEnumTagSinglePayload for CoreSheetPresentationModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 80) & ~v6) + 1;
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
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + v6 + 40) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
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

void storeEnumTagSinglePayload for CoreSheetPresentationModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 80) & ~v9) + 1;
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
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 80) & ~v9) != -1)
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
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v7 > 0x7FFFFFFE)
  {
    v20 = *(v6 + 56);

    v20((((((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + v9 + 40) & ~v9);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v19 = 0;
    *v19 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v19 = a2;
  }
}

unint64_t lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.InspectorKey> and conformance NullSheetAnchor<A>()
{
  result = lazy protocol witness table cache variable for type NullSheetAnchor<SheetPreference.InspectorKey> and conformance NullSheetAnchor<A>;
  if (!lazy protocol witness table cache variable for type NullSheetAnchor<SheetPreference.InspectorKey> and conformance NullSheetAnchor<A>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.InspectorKey>, &type metadata for SheetPreference.InspectorKey, &protocol witness table for SheetPreference.InspectorKey, type metadata accessor for NullSheetAnchor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NullSheetAnchor<SheetPreference.InspectorKey> and conformance NullSheetAnchor<A>);
  }

  return result;
}

uint64_t destroy for UpdateViewDestinationRequest(uint64_t result)
{
  v1 = result;
  if (*(result + 8) != 1)
  {
    swift_weakDestroy();
  }

  if (*(v1 + 160) >> 1 != 0xFFFFFFFFLL)
  {
    switch(*(v1 + 120))
    {
      case 0:
        goto LABEL_32;
      case 1:

        goto LABEL_32;
      case 2:

        __swift_destroy_boxed_opaque_existential_1(v1 + 40);
        break;
      case 3:

        break;
      case 4:
      case 5:

        goto LABEL_32;
      case 6:

        goto LABEL_32;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1(v1 + 24);

        goto LABEL_32;
      case 0xB:
        __swift_destroy_boxed_opaque_existential_1(v1 + 24);
        break;
      case 0xC:
      case 0xD:

        if (*(v1 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 32);
        }

        if (*(v1 + 80) != 1)
        {
        }

        goto LABEL_32;
      case 0xE:

        if (*(v1 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 32);
        }

        v2 = *(v1 + 80);
        goto LABEL_27;
      case 0x12:

        if (*(v1 + 64))
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 40);
        }

        if (*(v1 + 88) != 1)
        {
        }

        goto LABEL_32;
      case 0x13:
        if (*(v1 + 48))
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 24);
        }

        v2 = *(v1 + 72);
LABEL_27:
        if (v2 == 1)
        {
          break;
        }

        goto LABEL_32;
      case 0x15:
        if (*(v1 + 24))
        {
        }

        if (*(v1 + 40))
        {
LABEL_32:
        }

        break;
      default:
        break;
    }
  }

  return result;
}

uint64_t initializeWithCopy for UpdateViewDestinationRequest(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    swift_weakCopyInit();
    v4 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v4;
  }

  if (*(a2 + 160) >> 1 == 0xFFFFFFFFLL)
  {
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    switch(*(a2 + 120))
    {
      case 0:
        v5 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v5;
        *(a1 + 120) = 0;
        goto LABEL_62;
      case 1:
        v21 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v21;
        v22 = *(a2 + 48);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = v22;
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 120) = 1;

        goto LABEL_62;
      case 2:
        v14 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v14;
        v15 = *(a2 + 64);
        *(a1 + 64) = v15;
        v16 = v15;
        v17 = **(v15 - 8);

        v17(a1 + 40, a2 + 40, v16);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 120) = 2;
        break;
      case 3:
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 120) = 3;

        break;
      case 4:
        v30 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v30;
        *(a1 + 40) = *(a2 + 40);
        v13 = 4;
        goto LABEL_26;
      case 5:
        v18 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v18;
        *(a1 + 40) = *(a2 + 40);
        v13 = 5;
        goto LABEL_26;
      case 6:
        v23 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v23;
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 120) = 6;

        goto LABEL_62;
      case 0xA:
        v24 = *(a2 + 48);
        *(a1 + 48) = v24;
        (**(v24 - 8))(a1 + 24, a2 + 24);
        v25 = *(a2 + 72);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v25;
        *(a1 + 80) = *(a2 + 80);
        v13 = 10;
        goto LABEL_26;
      case 0xB:
        v33 = *(a2 + 48);
        *(a1 + 48) = v33;
        (**(v33 - 8))(a1 + 24, a2 + 24);
        *(a1 + 120) = 11;
        break;
      case 0xC:
        *(a1 + 24) = *(a2 + 24);
        v31 = *(a2 + 56);

        if (v31)
        {
          v32 = *(a2 + 64);
          *(a1 + 56) = v31;
          *(a1 + 64) = v32;
          (**(v31 - 8))(a1 + 32, a2 + 32, v31);
        }

        else
        {
          v47 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v47;
          *(a1 + 64) = *(a2 + 64);
        }

        v48 = *(a2 + 80);
        if (v48 == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = v48;
        }

        v49 = *(a2 + 96);
        v50 = *(a2 + 104);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v49;
        *(a1 + 104) = v50;
        v37 = 12;
        goto LABEL_61;
      case 0xD:
        *(a1 + 24) = *(a2 + 24);
        v9 = *(a2 + 56);

        if (v9)
        {
          v10 = *(a2 + 64);
          *(a1 + 56) = v9;
          *(a1 + 64) = v10;
          (**(v9 - 8))(a1 + 32, a2 + 32, v9);
        }

        else
        {
          v38 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v38;
          *(a1 + 64) = *(a2 + 64);
        }

        v39 = *(a2 + 80);
        if (v39 == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = v39;
        }

        v40 = *(a2 + 96);
        v41 = *(a2 + 104);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v40;
        *(a1 + 104) = v41;
        *(a1 + 112) = *(a2 + 112);
        v37 = 13;
        goto LABEL_61;
      case 0xE:
        *(a1 + 24) = *(a2 + 24);
        v19 = *(a2 + 56);

        if (v19)
        {
          v20 = *(a2 + 64);
          *(a1 + 56) = v19;
          *(a1 + 64) = v20;
          (**(v19 - 8))(a1 + 32, a2 + 32, v19);
        }

        else
        {
          v42 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v42;
          *(a1 + 64) = *(a2 + 64);
        }

        v43 = *(a2 + 80);
        if (v43 == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = v43;
        }

        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 120) = 14;
        break;
      case 0x11:
        v11 = *(a2 + 48);
        *(a1 + 48) = v11;
        (**(v11 - 8))(a1 + 24, a2 + 24);
        *(a1 + 64) = *(a2 + 64);
        v12 = *(a2 + 80);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = v12;
        *(a1 + 88) = *(a2 + 88);
        v13 = 17;
LABEL_26:
        *(a1 + 120) = v13;

        goto LABEL_62;
      case 0x12:
        v6 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v6;
        v7 = *(a2 + 64);

        if (v7)
        {
          v8 = *(a2 + 72);
          *(a1 + 64) = v7;
          *(a1 + 72) = v8;
          (**(v7 - 8))(a1 + 40, a2 + 40, v7);
        }

        else
        {
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
        }

        v34 = *(a2 + 88);
        if (v34 == 1)
        {
          *(a1 + 80) = *(a2 + 80);
        }

        else
        {
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 88) = v34;
        }

        v35 = *(a2 + 104);
        v36 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = v35;
        *(a1 + 112) = v36;
        v37 = 18;
LABEL_61:
        *(a1 + 120) = v37;
LABEL_62:

        break;
      case 0x13:
        v26 = *(a2 + 48);
        if (v26)
        {
          v27 = *(a2 + 56);
          *(a1 + 48) = v26;
          *(a1 + 56) = v27;
          (**(v26 - 8))(a1 + 24, a2 + 24);
        }

        else
        {
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
        }

        v44 = *(a2 + 72);
        if (v44 == 1)
        {
          *(a1 + 64) = *(a2 + 64);
        }

        else
        {
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 72) = v44;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 120) = 19;
        break;
      case 0x15:
        v28 = *(a2 + 24);
        if (v28)
        {
          v29 = *(a2 + 32);
          *(a1 + 24) = v28;
          *(a1 + 32) = v29;
        }

        else
        {
          *(a1 + 24) = *(a2 + 24);
        }

        v45 = *(a2 + 40);
        if (v45)
        {
          v46 = *(a2 + 48);
          *(a1 + 40) = v45;
          *(a1 + 48) = v46;
        }

        else
        {
          *(a1 + 40) = *(a2 + 40);
        }

        *(a1 + 120) = 21;
        break;
      default:
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        break;
    }

    v51 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v51;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
  }

  return a1;
}

uint64_t assignWithCopy for UpdateViewDestinationRequest(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v5;
    }

    else
    {
      swift_weakCopyInit();
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 2);
    }
  }

  else if (v4 == 1)
  {
    outlined destroy of NavigationAuthority(a1);
    v6 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 16) = v6;
  }

  else
  {
    swift_weakCopyAssign();
    *(a1 + 8) = *(a2 + 1);

    *(a1 + 16) = *(a2 + 2);
  }

  v7 = a2[10] & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 160) >> 1 == 0xFFFFFFFFLL)
  {
    if (v7 == 0x1FFFFFFFELL)
    {
      v8 = *(a2 + 24);
      v9 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v9;
      *(a1 + 24) = v8;
      v10 = *(a2 + 72);
      v11 = *(a2 + 88);
      v12 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v12;
      *(a1 + 88) = v11;
      *(a1 + 72) = v10;
      v13 = *(a2 + 136);
      v14 = *(a2 + 152);
      v15 = *(a2 + 168);
      *(a1 + 184) = *(a2 + 23);
      *(a1 + 168) = v15;
      *(a1 + 152) = v14;
      *(a1 + 136) = v13;
    }

    else
    {
      switch(*(a2 + 120))
      {
        case 0:
          v24 = *(a2 + 4);
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = v24;
          *(a1 + 120) = 0;
          goto LABEL_95;
        case 1:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 56) = *(a2 + 7);
          *(a1 + 120) = 1;

          goto LABEL_95;
        case 2:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          v30 = *(a2 + 8);
          *(a1 + 64) = v30;
          *(a1 + 72) = *(a2 + 9);
          v31 = **(v30 - 8);

          v31(a1 + 40, a2 + 40, v30);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 120) = 2;
          break;
        case 3:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 120) = 3;

          break;
        case 4:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 41) = *(a2 + 41);
          v29 = 4;
          goto LABEL_36;
        case 5:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 41) = *(a2 + 41);
          v29 = 5;
          goto LABEL_36;
        case 6:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 120) = 6;

          goto LABEL_95;
        case 0xA:
          v33 = *(a2 + 6);
          *(a1 + 48) = v33;
          *(a1 + 56) = *(a2 + 7);
          (**(v33 - 8))(a1 + 24, a2 + 24);
          *(a1 + 64) = *(a2 + 8);
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 81) = *(a2 + 81);
          v29 = 10;
          goto LABEL_36;
        case 0xB:
          v38 = *(a2 + 6);
          *(a1 + 48) = v38;
          *(a1 + 56) = *(a2 + 7);
          (**(v38 - 8))(a1 + 24, a2 + 24);
          *(a1 + 120) = 11;
          break;
        case 0xC:
          *(a1 + 24) = *(a2 + 3);
          v37 = *(a2 + 7);

          if (v37)
          {
            *(a1 + 56) = v37;
            *(a1 + 64) = *(a2 + 8);
            (**(v37 - 8))(a1 + 32, (a2 + 2), v37);
          }

          else
          {
            v75 = a2[2];
            v76 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v75;
            *(a1 + 48) = v76;
          }

          if (*(a2 + 10) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 18);
            *(a1 + 76) = *(a2 + 19);
            *(a1 + 80) = *(a2 + 10);
          }

          *(a1 + 88) = *(a2 + 11);
          v77 = *(a2 + 13);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = v77;
          v65 = 12;
          goto LABEL_94;
        case 0xD:
          *(a1 + 24) = *(a2 + 3);
          v27 = *(a2 + 7);

          if (v27)
          {
            *(a1 + 56) = v27;
            *(a1 + 64) = *(a2 + 8);
            (**(v27 - 8))(a1 + 32, (a2 + 2), v27);
          }

          else
          {
            v66 = a2[2];
            v67 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v66;
            *(a1 + 48) = v67;
          }

          if (*(a2 + 10) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 18);
            *(a1 + 76) = *(a2 + 19);
            *(a1 + 80) = *(a2 + 10);
          }

          *(a1 + 88) = *(a2 + 11);
          v68 = *(a2 + 13);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = v68;
          *(a1 + 112) = *(a2 + 112);
          v65 = 13;
          goto LABEL_94;
        case 0xE:
          *(a1 + 24) = *(a2 + 3);
          v32 = *(a2 + 7);

          if (v32)
          {
            *(a1 + 56) = v32;
            *(a1 + 64) = *(a2 + 8);
            (**(v32 - 8))(a1 + 32, (a2 + 2), v32);
          }

          else
          {
            v69 = a2[2];
            v70 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v69;
            *(a1 + 48) = v70;
          }

          if (*(a2 + 10) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 18);
            *(a1 + 76) = *(a2 + 19);
            *(a1 + 80) = *(a2 + 10);
          }

          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 96);
          *(a1 + 120) = 14;
          break;
        case 0x11:
          v28 = *(a2 + 6);
          *(a1 + 48) = v28;
          *(a1 + 56) = *(a2 + 7);
          (**(v28 - 8))(a1 + 24, a2 + 24);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 88);
          *(a1 + 89) = *(a2 + 89);
          v29 = 17;
LABEL_36:
          *(a1 + 120) = v29;

          goto LABEL_95;
        case 0x12:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          v26 = *(a2 + 8);

          if (v26)
          {
            *(a1 + 64) = v26;
            *(a1 + 72) = *(a2 + 9);
            (**(v26 - 8))(a1 + 40, a2 + 40, v26);
          }

          else
          {
            v62 = *(a2 + 40);
            v63 = *(a2 + 56);
            *(a1 + 72) = *(a2 + 9);
            *(a1 + 56) = v63;
            *(a1 + 40) = v62;
          }

          if (*(a2 + 11) == 1)
          {
            *(a1 + 80) = a2[5];
          }

          else
          {
            *(a1 + 80) = *(a2 + 20);
            *(a1 + 84) = *(a2 + 21);
            *(a1 + 88) = *(a2 + 11);
          }

          *(a1 + 96) = *(a2 + 12);
          v64 = *(a2 + 14);
          *(a1 + 104) = *(a2 + 13);
          *(a1 + 112) = v64;
          v65 = 18;
LABEL_94:
          *(a1 + 120) = v65;
LABEL_95:

          break;
        case 0x13:
          v34 = *(a2 + 6);
          if (v34)
          {
            *(a1 + 48) = v34;
            *(a1 + 56) = *(a2 + 7);
            (**(v34 - 8))(a1 + 24, a2 + 24);
          }

          else
          {
            v71 = *(a2 + 24);
            v72 = *(a2 + 40);
            *(a1 + 56) = *(a2 + 7);
            *(a1 + 40) = v72;
            *(a1 + 24) = v71;
          }

          if (*(a2 + 9) == 1)
          {
            *(a1 + 64) = a2[4];
          }

          else
          {
            *(a1 + 64) = *(a2 + 16);
            *(a1 + 68) = *(a2 + 17);
            *(a1 + 72) = *(a2 + 9);
          }

          *(a1 + 80) = *(a2 + 10);
          *(a1 + 120) = 19;
          break;
        case 0x15:
          v35 = *(a2 + 3);
          if (v35)
          {
            v36 = *(a2 + 4);
            *(a1 + 24) = v35;
            *(a1 + 32) = v36;
          }

          else
          {
            *(a1 + 24) = *(a2 + 24);
          }

          v73 = *(a2 + 5);
          if (v73)
          {
            v74 = *(a2 + 6);
            *(a1 + 40) = v73;
            *(a1 + 48) = v74;
          }

          else
          {
            *(a1 + 40) = *(a2 + 40);
          }

          *(a1 + 120) = 21;
          break;
        default:
          v39 = *(a2 + 24);
          v40 = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 40) = v40;
          *(a1 + 24) = v39;
          v41 = *(a2 + 72);
          v42 = *(a2 + 88);
          v43 = *(a2 + 104);
          *(a1 + 120) = *(a2 + 120);
          *(a1 + 104) = v43;
          *(a1 + 88) = v42;
          *(a1 + 72) = v41;
          break;
      }

      v78 = a2[8];
      v79 = a2[10];
      *(a1 + 144) = a2[9];
      *(a1 + 160) = v79;
      *(a1 + 128) = v78;
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 23);
    }
  }

  else if (v7 == 0x1FFFFFFFELL)
  {
    outlined destroy of NavigationRequest(a1 + 24);
    v16 = *(a2 + 56);
    v17 = *(a2 + 40);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = v17;
    *(a1 + 56) = v16;
    v18 = *(a2 + 88);
    v19 = *(a2 + 104);
    v20 = *(a2 + 120);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 120) = v20;
    *(a1 + 104) = v19;
    *(a1 + 88) = v18;
    v21 = *(a2 + 152);
    v22 = *(a2 + 168);
    v23 = *(a2 + 23);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 184) = v23;
    *(a1 + 168) = v22;
    *(a1 + 152) = v21;
  }

  else
  {
    if (a1 != a2)
    {
      outlined destroy of NavigationRequest.Action(a1 + 24);
      switch(*(a2 + 120))
      {
        case 0:
          v25 = *(a2 + 4);
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = v25;
          *(a1 + 120) = 0;
          goto LABEL_128;
        case 1:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 56) = *(a2 + 7);
          *(a1 + 120) = 1;

          goto LABEL_128;
        case 2:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          v48 = *(a2 + 8);
          *(a1 + 64) = v48;
          *(a1 + 72) = *(a2 + 9);
          v49 = **(v48 - 8);

          v49(a1 + 40, a2 + 40, v48);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 120) = 2;
          break;
        case 3:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 120) = 3;

          break;
        case 4:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 41) = *(a2 + 41);
          v47 = 4;
          goto LABEL_59;
        case 5:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 41) = *(a2 + 41);
          v47 = 5;
          goto LABEL_59;
        case 6:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 120) = 6;

          goto LABEL_128;
        case 0xA:
          v51 = *(a2 + 6);
          *(a1 + 48) = v51;
          *(a1 + 56) = *(a2 + 7);
          (**(v51 - 8))(a1 + 24, a2 + 24);
          *(a1 + 64) = *(a2 + 8);
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 81) = *(a2 + 81);
          v47 = 10;
          goto LABEL_59;
        case 0xB:
          v56 = *(a2 + 6);
          *(a1 + 48) = v56;
          *(a1 + 56) = *(a2 + 7);
          (**(v56 - 8))(a1 + 24, a2 + 24);
          *(a1 + 120) = 11;
          break;
        case 0xC:
          *(a1 + 24) = *(a2 + 3);
          v55 = *(a2 + 7);

          if (v55)
          {
            *(a1 + 56) = v55;
            *(a1 + 64) = *(a2 + 8);
            (**(v55 - 8))(a1 + 32, (a2 + 2), v55);
          }

          else
          {
            v93 = a2[2];
            v94 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v93;
            *(a1 + 48) = v94;
          }

          if (*(a2 + 10) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 18);
            *(a1 + 76) = *(a2 + 19);
            *(a1 + 80) = *(a2 + 10);
          }

          *(a1 + 88) = *(a2 + 11);
          v95 = *(a2 + 13);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = v95;
          v83 = 12;
          goto LABEL_127;
        case 0xD:
          *(a1 + 24) = *(a2 + 3);
          v45 = *(a2 + 7);

          if (v45)
          {
            *(a1 + 56) = v45;
            *(a1 + 64) = *(a2 + 8);
            (**(v45 - 8))(a1 + 32, (a2 + 2), v45);
          }

          else
          {
            v84 = a2[2];
            v85 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v84;
            *(a1 + 48) = v85;
          }

          if (*(a2 + 10) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 18);
            *(a1 + 76) = *(a2 + 19);
            *(a1 + 80) = *(a2 + 10);
          }

          *(a1 + 88) = *(a2 + 11);
          v86 = *(a2 + 13);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = v86;
          *(a1 + 112) = *(a2 + 112);
          v83 = 13;
          goto LABEL_127;
        case 0xE:
          *(a1 + 24) = *(a2 + 3);
          v50 = *(a2 + 7);

          if (v50)
          {
            *(a1 + 56) = v50;
            *(a1 + 64) = *(a2 + 8);
            (**(v50 - 8))(a1 + 32, (a2 + 2), v50);
          }

          else
          {
            v87 = a2[2];
            v88 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v87;
            *(a1 + 48) = v88;
          }

          if (*(a2 + 10) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 18);
            *(a1 + 76) = *(a2 + 19);
            *(a1 + 80) = *(a2 + 10);
          }

          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 96);
          *(a1 + 120) = 14;
          break;
        case 0x11:
          v46 = *(a2 + 6);
          *(a1 + 48) = v46;
          *(a1 + 56) = *(a2 + 7);
          (**(v46 - 8))(a1 + 24, a2 + 24);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 88);
          *(a1 + 89) = *(a2 + 89);
          v47 = 17;
LABEL_59:
          *(a1 + 120) = v47;

          goto LABEL_128;
        case 0x12:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          v44 = *(a2 + 8);

          if (v44)
          {
            *(a1 + 64) = v44;
            *(a1 + 72) = *(a2 + 9);
            (**(v44 - 8))(a1 + 40, a2 + 40, v44);
          }

          else
          {
            v80 = *(a2 + 40);
            v81 = *(a2 + 56);
            *(a1 + 72) = *(a2 + 9);
            *(a1 + 56) = v81;
            *(a1 + 40) = v80;
          }

          if (*(a2 + 11) == 1)
          {
            *(a1 + 80) = a2[5];
          }

          else
          {
            *(a1 + 80) = *(a2 + 20);
            *(a1 + 84) = *(a2 + 21);
            *(a1 + 88) = *(a2 + 11);
          }

          *(a1 + 96) = *(a2 + 12);
          v82 = *(a2 + 14);
          *(a1 + 104) = *(a2 + 13);
          *(a1 + 112) = v82;
          v83 = 18;
LABEL_127:
          *(a1 + 120) = v83;
LABEL_128:

          break;
        case 0x13:
          v52 = *(a2 + 6);
          if (v52)
          {
            *(a1 + 48) = v52;
            *(a1 + 56) = *(a2 + 7);
            (**(v52 - 8))(a1 + 24, a2 + 24);
          }

          else
          {
            v89 = *(a2 + 24);
            v90 = *(a2 + 40);
            *(a1 + 56) = *(a2 + 7);
            *(a1 + 40) = v90;
            *(a1 + 24) = v89;
          }

          if (*(a2 + 9) == 1)
          {
            *(a1 + 64) = a2[4];
          }

          else
          {
            *(a1 + 64) = *(a2 + 16);
            *(a1 + 68) = *(a2 + 17);
            *(a1 + 72) = *(a2 + 9);
          }

          *(a1 + 80) = *(a2 + 10);
          *(a1 + 120) = 19;
          break;
        case 0x15:
          v53 = *(a2 + 3);
          if (v53)
          {
            v54 = *(a2 + 4);
            *(a1 + 24) = v53;
            *(a1 + 32) = v54;
          }

          else
          {
            *(a1 + 24) = *(a2 + 24);
          }

          v91 = *(a2 + 5);
          if (v91)
          {
            v92 = *(a2 + 6);
            *(a1 + 40) = v91;
            *(a1 + 48) = v92;
          }

          else
          {
            *(a1 + 40) = *(a2 + 40);
          }

          *(a1 + 120) = 21;
          break;
        default:
          v57 = *(a2 + 24);
          v58 = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 40) = v58;
          *(a1 + 24) = v57;
          v59 = *(a2 + 72);
          v60 = *(a2 + 88);
          v61 = *(a2 + 104);
          *(a1 + 120) = *(a2 + 120);
          *(a1 + 104) = v61;
          *(a1 + 88) = v60;
          *(a1 + 72) = v59;
          break;
      }
    }

    v96 = a2[8];
    v97 = a2[10];
    *(a1 + 144) = a2[9];
    *(a1 + 160) = v97;
    *(a1 + 128) = v96;
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 23);
  }

  return a1;
}

__n128 initializeWithTake for UpdateViewDestinationRequest(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  if (*(a2 + 8) == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    a1 = swift_weakTakeInit();
    *(a1 + 8) = *v3;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

uint64_t assignWithTake for UpdateViewDestinationRequest(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v5 != 1)
    {
      swift_weakTakeInit();
      *v4 = *v6;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v5 == 1)
  {
    outlined destroy of NavigationAuthority(a1);
LABEL_6:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  swift_weakTakeAssign();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

LABEL_8:
  if (*(a1 + 160) >> 1 == 0xFFFFFFFFLL)
  {
LABEL_11:
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    return a1;
  }

  if (*(a2 + 160) >> 1 == 0xFFFFFFFFLL)
  {
    outlined destroy of NavigationRequest(a1 + 24);
    goto LABEL_11;
  }

  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1 + 24);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v7 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v7;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);

  return a1;
}

uint64_t storeEnumTagSinglePayload for UpdateViewDestinationRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 160) = 2 * ~a2;
      *(result + 168) = 0;
    }
  }

  return result;
}

Swift::Void __swiftcall UpdateViewDestinationRequest.enqueue()()
{
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v0, v5, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (*(&v5[0] + 1) == 1)
  {
    outlined destroy of NavigationAuthority?(v5, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  else
  {
    outlined init with take of NavigationAuthority(v5, v7);
    _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v0 + 24, v1, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
    if (*(&v2 + 1) >> 1 == 0xFFFFFFFFLL)
    {
      outlined destroy of NavigationAuthority(v7);
      outlined destroy of NavigationAuthority?(v1, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
    }

    else
    {
      v5[8] = v2;
      v5[9] = v3;
      v6 = v4;
      v5[4] = v1[4];
      v5[5] = v1[5];
      v5[6] = v1[6];
      v5[7] = v1[7];
      v5[0] = v1[0];
      v5[1] = v1[1];
      v5[2] = v1[2];
      v5[3] = v1[3];
      NavigationAuthority.enqueueRequest(_:)(v5);
      outlined destroy of NavigationRequest(v5);
      outlined destroy of NavigationAuthority(v7);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance UpdateViewDestinationRequestProcessor<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t UpdateViewDestinationViewModifier.RequestWriter.structuralSeed.getter()
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v1 = *WeakValue;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((WeakValue == 0) << 32);
}

uint64_t UpdateViewDestinationRequest.init<A>(presentDestination:key:depth:linkIdentifier:shouldTargetSourceColumn:isPresented:navigationAuthority:transaction:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v25[0] = xmmword_18CD633F0;
  memset(&v25[1], 0, 144);
  v26 = 0x1FFFFFFFELL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (v16 >> 1 == 0xFFFFFFFF)
  {

    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v21 = 0x1FFFFFFFELL;
    v23 = 0;
    v24 = 0;
    v22 = 0;
  }

  else
  {
    v18[0] = v14;
    v18[1] = v15;
    v18[2] = v16;
    closure #1 in UpdateViewDestinationRequest.init<A>(presentDestination:key:depth:linkIdentifier:shouldTargetSourceColumn:isPresented:navigationAuthority:transaction:)(v18, a1, a3, a4, a5, a6, a7 & 1, v19, a11);
  }

  outlined assign with take of NavigationRequest?(v19, &v25[1] + 8, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
  outlined assign with take of NavigationRequest?(a9, v25, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  outlined init with copy of UpdateViewDestinationRequest(v25, a8);
  outlined destroy of NavigationLinkSelectionIdentifier(a4);
  (*(*(a11 - 8) + 8))(a1, a11);
  return outlined destroy of UpdateViewDestinationRequest(v25);
}

uint64_t UpdateViewDestinationRequest.init<A>(updateDestination:key:identifier:shouldTargetSourceColumn:navigationAuthority:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v22[0] = xmmword_18CD633F0;
  memset(&v22[1], 0, 144);
  v23 = 0x1FFFFFFFELL;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v14 >> 1 == 0xFFFFFFFF)
  {
    memset(v16, 0, sizeof(v16));
    v17 = 0;
    v18 = 0x1FFFFFFFELL;
    v20 = 0;
    v21 = 0;
    v19 = 0;
  }

  else
  {
    v27[0] = v12;
    v27[1] = v13;
    v27[2] = v14;
    static NavigationRequest.updateView<A>(_:from:identifier:shouldTargetSourceColumn:)(a1, v27, a3, a4 & 1, a6, v16);
  }

  outlined assign with take of NavigationRequest?(v16, &v22[1] + 8, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
  outlined assign with take of NavigationRequest?(a5, v22, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  outlined init with copy of UpdateViewDestinationRequest(v22, a7);
  outlined destroy of NavigationLinkSelectionIdentifier(a3);
  (*(*(a6 - 8) + 8))(a1, a6);
  return outlined destroy of UpdateViewDestinationRequest(v22);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance UpdateViewDestinationViewModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t closure #1 in UpdateViewDestinationRequest.init<A>(presentDestination:key:depth:linkIdentifier:shouldTargetSourceColumn:isPresented:navigationAuthority:transaction:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>, uint64_t a9)
{
  v14 = a1[1];
  v19[0] = *a1;
  v19[1] = v14;
  v19[2] = a1[2];
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  *(v15 + 32) = a7;

  static NavigationRequest.programmaticallyPresentView<A>(_:from:transaction:depth:identifier:dismiss:)(a2, v19, a3, a4, partial apply for closure #1 in View.actionSheet(isPresented:content:), v15, a9, a8);
}

uint64_t *initializeBufferWithCopyOfBuffer for UpdateViewDestinationRequestProcessor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  v12 = *(v9 + 64) + 7;
  v13 = v10 | *(v7 + 80) & 0xF8;
  if (v13 > 7 || ((*(v7 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((v12 + ((v8 + v10) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v17 = ~v10;
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    v18 = (a2 + v11) & v17;
    (*(v9 + 16))((a1 + v11) & v17, v18, v5);
    *((v12 + ((a1 + v11) & v17)) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v18) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for UpdateViewDestinationRequestProcessor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 16);
  v7 = *(*(v6 - 8) + 8);
  v8 = *(*(v6 - 8) + 80);
  v9 = *(v5 + 64) + a1;
  if (!*(v5 + 84))
  {
    ++v9;
  }

  return v7((v9 + v8) & ~v8);
}

void *initializeWithCopy for UpdateViewDestinationRequestProcessor(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (a1 + v17) & ~v16;
  v19 = (a2 + v17) & ~v16;
  (*(v14 + 16))(v18, v19);
  *((*(v15 + 48) + 7 + v18) & 0xFFFFFFFFFFFFFFF8) = *((*(v15 + 48) + 7 + v19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithCopy for UpdateViewDestinationRequestProcessor(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 16) - 8);
  v16 = v15 + 24;
  v17 = *(v15 + 80);
  v18 = v14 + v17;
  v19 = (a1 + v18) & ~v17;
  v20 = (a2 + v18) & ~v17;
  (*(v15 + 24))(v19, v20);
  *((*(v16 + 40) + 7 + v19) & 0xFFFFFFFFFFFFFFF8) = *((*(v16 + 40) + 7 + v20) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *initializeWithTake for UpdateViewDestinationRequestProcessor(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (a1 + v17) & ~v16;
  v19 = (a2 + v17) & ~v16;
  (*(v14 + 32))(v18, v19);
  *((*(v15 + 32) + 7 + v18) & 0xFFFFFFFFFFFFFFF8) = *((*(v15 + 32) + 7 + v19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for UpdateViewDestinationRequestProcessor(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 16) - 8);
  v16 = v15 + 40;
  v17 = *(v15 + 80);
  v18 = v14 + v17;
  v19 = (a1 + v18) & ~v17;
  v20 = (a2 + v18) & ~v17;
  (*(v15 + 40))(v19, v20);
  *((*(v16 + 24) + 7 + v19) & 0xFFFFFFFFFFFFFFF8) = *((*(v16 + 24) + 7 + v20) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateViewDestinationRequestProcessor(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80);
  if (v6)
  {
    v14 = *(*(*(a3 + 24) - 8) + 64);
  }

  else
  {
    v14 = *(*(*(a3 + 24) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v14 + v13;
  if (v12 < a2)
  {
    v16 = ((*(*(v8 - 8) + 64) + (v15 & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v17 = a2 - v12;
    v18 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    v21 = v19 >= 2 ? v20 : 0;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v16);
      if (v22)
      {
LABEL_26:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      }
    }

    if (!v12)
    {
      return 0;
    }
  }

  if (v7 >= v11)
  {
    v28 = (*(v5 + 48))(a1, v6);
    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v25 = *(v10 + 48);
    v26 = (a1 + v15) & ~v13;

    return v25(v26, v11, v8);
  }
}

void storeEnumTagSinglePayload for UpdateViewDestinationRequestProcessor(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(a4 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v10 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (!v7)
  {
    ++v11;
  }

  v15 = ((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    v16 = a3 - v14;
    if (((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v5 = v18;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = a2 - v14;
    }

    else
    {
      v19 = 1;
    }

    if (((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v20 = ~v14 + a2;
      v21 = a1;
      bzero(a1, ((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      a1 = v21;
      *v21 = v20;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v15) = v19;
      }

      else
      {
        *(a1 + v15) = v19;
      }
    }

    else if (v5)
    {
      *(a1 + v15) = v19;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v15) = 0;
  }

  else if (v5)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v8 >= v10)
  {
    if (v8 >= a2)
    {
      v28 = *(v6 + 56);

      v28();
    }

    else
    {
      if (v11 <= 3)
      {
        v24 = ~(-1 << (8 * v11));
      }

      else
      {
        v24 = -1;
      }

      if (v11)
      {
        v25 = v24 & (~v8 + a2);
        if (v11 <= 3)
        {
          v26 = v11;
        }

        else
        {
          v26 = 4;
        }

        v27 = a1;
        bzero(a1, v11);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v27 = v25;
            *(v27 + 2) = BYTE2(v25);
          }

          else
          {
            *v27 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v27 = v25;
        }

        else
        {
          *v27 = v25;
        }
      }
    }
  }

  else
  {
    v22 = *(v9 + 56);
    v23 = (a1 + v11 + v12) & ~v12;

    v22(v23);
  }
}

uint64_t getEnumTagSinglePayload for UpdateViewDestinationRequestProcessor.PreferenceDebouncer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 60))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 44);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateViewDestinationRequestProcessor.PreferenceDebouncer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 60) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 60) = 0;
    }

    if (a2)
    {
      *(result + 44) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for UpdateViewDestinationViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = v13[2];
  v12[1] = v13[1];
  v12[2] = v15;
  *v12 = v14;
  v16 = (v12 + 55) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v13 + 55) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 8);
  *v16 = *v17;
  *(v16 + 8) = v18;
  v19 = (v12 + 71) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v13 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v12 + 87) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v13 + 87) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v21 + 8);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  v24 = v23 - 1;
  v25 = *(v22 + 8);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  v26 = v25 - 1;
  if ((v24 & 0x80000000) == 0)
  {
    if (v26 < 0)
    {
      swift_weakCopyInit();
      *(v21 + 8) = *(v22 + 8);
      *(v21 + 16) = *(v22 + 16);

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v26 & 0x80000000) == 0)
  {
    swift_weakDestroy();

LABEL_10:
    v27 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v27;
    goto LABEL_11;
  }

  swift_weakCopyAssign();
  *(v21 + 8) = *(v22 + 8);

  *(v21 + 16) = *(v22 + 16);

LABEL_11:
  *(v21 + 24) = *(v22 + 24);
  v28 = ((v12 + 119) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v13 + 119) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v30) = -1;
  if (*v28 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  else
  {
    v31 = *v28;
  }

  v32 = v31 - 1;
  v33 = *v29;
  if (*v29 < 0xFFFFFFFF)
  {
    v30 = *v29;
  }

  v34 = v30 - 1;
  if (v32 < 0)
  {
    if (v34 < 0)
    {
      *v28 = v33;
    }

    else
    {

      *v28 = *v29;
    }
  }

  else
  {
    *v28 = v33;
    if (v34 < 0)
    {
    }
  }

  return a1;
}

uint64_t assignWithTake for UpdateViewDestinationViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = v13[2];
  v12[1] = v13[1];
  v12[2] = v15;
  *v12 = v14;
  v16 = (v12 + 55) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v13 + 55) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 8);
  *v16 = *v17;
  *(v16 + 8) = v18;
  v19 = (v12 + 71) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v13 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v12 + 87) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v13 + 87) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v21 + 8);
  if (*(v21 + 8) >= 0xFFFFFFFFuLL)
  {
    v23 = -1;
  }

  v24 = v23 - 1;
  v25 = *(v22 + 8);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  v26 = v25 - 1;
  if ((v24 & 0x80000000) == 0)
  {
    if (v26 < 0)
    {
      swift_weakTakeInit();
      *(v21 + 8) = *(v22 + 8);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v26 & 0x80000000) == 0)
  {
    swift_weakDestroy();

LABEL_10:
    v27 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v27;
    goto LABEL_11;
  }

  swift_weakTakeAssign();
  *(v21 + 8) = *(v22 + 8);

  *(v21 + 16) = *(v22 + 16);

LABEL_11:
  *(v21 + 24) = *(v22 + 24);
  v28 = ((v12 + 119) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v13 + 119) & 0xFFFFFFFFFFFFFFF8);
  if (*v28 >= 0xFFFFFFFF)
  {
    LODWORD(v30) = -1;
  }

  else
  {
    v30 = *v28;
  }

  v31 = *v29;
  if (v30 - 1 < 0)
  {
    LODWORD(v32) = -1;
    if (v31 < 0xFFFFFFFF)
    {
      v32 = *v29;
    }

    if (v32 - 1 < 0)
    {
      *v28 = v31;

      return a1;
    }

    v31 = *v29;
  }

  *v28 = v31;
  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateViewDestinationViewModifier(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
    }

    v17 = *(a1 + 8);
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

_BYTE *storeEnumTagSinglePayload for UpdateViewDestinationViewModifier(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = &result[v8 + 17] & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[16] = 0;
        *result = a2 & 0x7FFFFFFF;
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
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

uint64_t assignWithCopy for UpdateViewDestinationViewModifier.RequestWriter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = v4;
  if (*(a1 + 128) == 255)
  {
    switch(*(a2 + 128))
    {
      case 0:
LABEL_7:
        v10 = *(a2 + 40);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = v10;
        *(a1 + 128) = 0;

        return a1;
      case 1:
LABEL_19:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 128) = 1;

        goto LABEL_27;
      case 2:
LABEL_18:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        v16 = *(a2 + 72);
        *(a1 + 72) = v16;
        *(a1 + 80) = *(a2 + 80);
        v17 = **(v16 - 8);

        v17(a1 + 48, a2 + 48, v16);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        v18 = 2;
        goto LABEL_63;
      case 3:
LABEL_23:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 128) = 3;

        return a1;
      case 4:
LABEL_17:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 49) = *(a2 + 49);
        v15 = 4;
        goto LABEL_25;
      case 5:
LABEL_16:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 49) = *(a2 + 49);
        v15 = 5;
        goto LABEL_25;
      case 6:
LABEL_26:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 128) = 6;

LABEL_27:

        return a1;
      case 0xA:
LABEL_20:
        v19 = *(a2 + 56);
        *(a1 + 56) = v19;
        *(a1 + 64) = *(a2 + 64);
        (**(v19 - 8))(a1 + 32, a2 + 32);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 89) = *(a2 + 89);
        v15 = 10;
        goto LABEL_25;
      case 0xB:
LABEL_28:
        v22 = *(a2 + 56);
        *(a1 + 56) = v22;
        *(a1 + 64) = *(a2 + 64);
        (**(v22 - 8))(a1 + 32, a2 + 32);
        v18 = 11;
        goto LABEL_63;
      case 0xC:
LABEL_12:
        *(a1 + 32) = *(a2 + 32);
        v13 = *(a2 + 64);

        if (v13)
        {
          *(a1 + 64) = v13;
          *(a1 + 72) = *(a2 + 72);
          (**(v13 - 8))(a1 + 40, a2 + 40, v13);
        }

        else
        {
          v36 = *(a2 + 40);
          v37 = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 56) = v37;
          *(a1 + 40) = v36;
        }

        if (*(a2 + 88) == 1)
        {
          *(a1 + 80) = *(a2 + 80);
        }

        else
        {
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 84) = *(a2 + 84);
          *(a1 + 88) = *(a2 + 88);
        }

        *(a1 + 96) = *(a2 + 96);
        v38 = *(a2 + 112);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 112) = v38;
        v35 = 12;
        goto LABEL_52;
      case 0xD:
LABEL_10:
        *(a1 + 32) = *(a2 + 32);
        v12 = *(a2 + 64);

        if (v12)
        {
          *(a1 + 64) = v12;
          *(a1 + 72) = *(a2 + 72);
          (**(v12 - 8))(a1 + 40, a2 + 40, v12);
        }

        else
        {
          v32 = *(a2 + 40);
          v33 = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 56) = v33;
          *(a1 + 40) = v32;
        }

        if (*(a2 + 88) == 1)
        {
          *(a1 + 80) = *(a2 + 80);
        }

        else
        {
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 84) = *(a2 + 84);
          *(a1 + 88) = *(a2 + 88);
        }

        *(a1 + 96) = *(a2 + 96);
        v34 = *(a2 + 112);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 112) = v34;
        *(a1 + 120) = *(a2 + 120);
        v35 = 13;
        goto LABEL_52;
      case 0xE:
LABEL_21:
        *(a1 + 32) = *(a2 + 32);
        v20 = *(a2 + 64);

        if (v20)
        {
          *(a1 + 64) = v20;
          *(a1 + 72) = *(a2 + 72);
          (**(v20 - 8))(a1 + 40, a2 + 40, v20);
        }

        else
        {
          v42 = *(a2 + 40);
          v43 = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 56) = v43;
          *(a1 + 40) = v42;
        }

        if (*(a2 + 88) == 1)
        {
          *(a1 + 80) = *(a2 + 80);
        }

        else
        {
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 84) = *(a2 + 84);
          *(a1 + 88) = *(a2 + 88);
        }

        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = *(a2 + 104);
        v18 = 14;
        goto LABEL_63;
      case 0x11:
LABEL_24:
        v21 = *(a2 + 56);
        *(a1 + 56) = v21;
        *(a1 + 64) = *(a2 + 64);
        (**(v21 - 8))(a1 + 32, a2 + 32);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 97) = *(a2 + 97);
        v15 = 17;
LABEL_25:
        *(a1 + 128) = v15;

        return a1;
      case 0x12:
LABEL_14:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        v14 = *(a2 + 72);

        if (v14)
        {
          *(a1 + 72) = v14;
          *(a1 + 80) = *(a2 + 80);
          (**(v14 - 8))(a1 + 48, a2 + 48, v14);
        }

        else
        {
          v39 = *(a2 + 48);
          v40 = *(a2 + 64);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 48) = v39;
          *(a1 + 64) = v40;
        }

        if (*(a2 + 96) == 1)
        {
          *(a1 + 88) = *(a2 + 88);
        }

        else
        {
          *(a1 + 88) = *(a2 + 88);
          *(a1 + 92) = *(a2 + 92);
          *(a1 + 96) = *(a2 + 96);
        }

        *(a1 + 104) = *(a2 + 104);
        v41 = *(a2 + 120);
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 120) = v41;
        v35 = 18;
LABEL_52:
        *(a1 + 128) = v35;

        return a1;
      case 0x13:
LABEL_8:
        v11 = *(a2 + 56);
        if (v11)
        {
          *(a1 + 56) = v11;
          *(a1 + 64) = *(a2 + 64);
          (**(v11 - 8))(a1 + 32, a2 + 32);
        }

        else
        {
          v30 = *(a2 + 32);
          v31 = *(a2 + 48);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 32) = v30;
          *(a1 + 48) = v31;
        }

        if (*(a2 + 80) == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 76) = *(a2 + 76);
          *(a1 + 80) = *(a2 + 80);
        }

        *(a1 + 88) = *(a2 + 88);
        v18 = 19;
        goto LABEL_63;
      case 0x15:
LABEL_29:
        v23 = *(a2 + 32);
        if (v23)
        {
          v24 = *(a2 + 40);
          *(a1 + 32) = v23;
          *(a1 + 40) = v24;
        }

        else
        {
          *(a1 + 32) = *(a2 + 32);
        }

        v44 = *(a2 + 48);
        if (v44)
        {
          v45 = *(a2 + 56);
          *(a1 + 48) = v44;
          *(a1 + 56) = v45;
        }

        else
        {
          *(a1 + 48) = *(a2 + 48);
        }

        v18 = 21;
LABEL_63:
        *(a1 + 128) = v18;
        break;
      default:
LABEL_31:
        v25 = *(a2 + 32);
        v26 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v26;
        *(a1 + 32) = v25;
        v27 = *(a2 + 80);
        v28 = *(a2 + 96);
        v29 = *(a2 + 112);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 96) = v28;
        *(a1 + 112) = v29;
        *(a1 + 80) = v27;
        break;
    }
  }

  else if (*(a2 + 128) == 255)
  {
    outlined destroy of NavigationRequest.Action(a1 + 32);
    v6 = *(a2 + 48);
    v5 = *(a2 + 64);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v6;
    *(a1 + 64) = v5;
    v8 = *(a2 + 96);
    v7 = *(a2 + 112);
    v9 = *(a2 + 80);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 96) = v8;
    *(a1 + 112) = v7;
    *(a1 + 80) = v9;
  }

  else if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1 + 32);
    switch(*(a2 + 128))
    {
      case 0:
        goto LABEL_7;
      case 1:
        goto LABEL_19;
      case 2:
        goto LABEL_18;
      case 3:
        goto LABEL_23;
      case 4:
        goto LABEL_17;
      case 5:
        goto LABEL_16;
      case 6:
        goto LABEL_26;
      case 0xA:
        goto LABEL_20;
      case 0xB:
        goto LABEL_28;
      case 0xC:
        goto LABEL_12;
      case 0xD:
        goto LABEL_10;
      case 0xE:
        goto LABEL_21;
      case 0x11:
        goto LABEL_24;
      case 0x12:
        goto LABEL_14;
      case 0x13:
        goto LABEL_8;
      case 0x15:
        goto LABEL_29;
      default:
        goto LABEL_31;
    }
  }

  return a1;
}

__n128 assignWithTake for UpdateViewDestinationViewModifier.RequestWriter(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *a1 = *a2;
  v3 = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = v3;
  *(a1 + 24) = *(a2 + 24);
  if (*(a1 + 128) == 255)
  {
    goto LABEL_7;
  }

  if (*(a2 + 128) == 255 || a1 != a2)
  {
    v5 = a1;
    v6 = a2;
    outlined destroy of NavigationRequest.Action(a1 + 32);
    a2 = v6;
    a1 = v5;
LABEL_7:
    v7 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v7;
    *(a1 + 128) = *(a2 + 128);
    v8 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v8;
    result = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateViewDestinationViewModifier.RequestWriter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE9 && *(a1 + 129))
  {
    return (*a1 + 233);
  }

  v3 = *(a1 + 128);
  if (v3 <= 0x16)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateViewDestinationViewModifier.RequestWriter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE8)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 233;
    if (a3 >= 0xE9)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE9)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = ~a2;
    }
  }

  return result;
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSd_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for UserDefaultLocation<Double>, MEMORY[0x1E69E63B0], type metadata accessor for UserDefaultLocation);
  v12 = swift_allocObject();
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = [objc_opt_self() standardUserDefaults];
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 116) = 0;
  *(v12 + 124) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = a5;
  *(v12 + 64) = 0;
  return v12;
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSS_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for UserDefaultLocation<String>, MEMORY[0x1E69E6158], type metadata accessor for UserDefaultLocation);
  v14 = swift_allocObject();
  *(v14 + 88) = 0;
  *(v14 + 96) = 0;
  *(v14 + 80) = 0;
  *(v14 + 104) = [objc_opt_self() standardUserDefaults];
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 124) = 0;
  *(v14 + 132) = 1;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  *(v14 + 64) = a5;
  *(v14 + 72) = 0;
  return v14;
}

char *_s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation3URLV_Tt3g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v24 = a3;
  v25 = a4;
  v13 = a7(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  (*(v14 + 16))(&v24 - v16, a6, v13, v15);
  a8(0);
  v18 = swift_allocObject();
  *&v18[*(*v18 + 128)] = 0;
  (*(v14 + 56))(&v18[*(*v18 + 136)], 1, 1, v13);
  v19 = *(*v18 + 144);
  v20 = [objc_opt_self() standardUserDefaults];
  (*(v14 + 8))(a6, v13);
  *&v18[v19] = v20;
  *&v18[*(*v18 + 152)] = 0;
  v18[*(*v18 + 160)] = 0;
  v21 = &v18[*(*v18 + 168)];
  *v21 = 0;
  v21[8] = 1;
  *&v18[*(*v18 + 112)] = a5;
  *(v18 + 2) = a1;
  *(v18 + 3) = a2;
  v22 = v25;
  *(v18 + 4) = v24;
  *(v18 + 5) = v22;
  (*(v14 + 32))(&v18[*(*v18 + 104)], v17, v13);
  *&v18[*(*v18 + 120)] = 0;
  return v18;
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation4DataV_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for UserDefaultLocation<Data>, MEMORY[0x1E6969080], type metadata accessor for UserDefaultLocation);
  v14 = swift_allocObject();
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  *(v14 + 96) = 0xF000000000000000;
  *(v14 + 104) = [objc_opt_self() standardUserDefaults];
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 124) = 0;
  *(v14 + 132) = 1;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  *(v14 + 64) = a5;
  *(v14 + 72) = 0;
  return v14;
}

char *_s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation3URLVSg_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  type metadata accessor for URL?();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a6, v15, type metadata accessor for URL?);
  type metadata accessor for PropertyListTransform<Date>(0, &lazy cache variable for type metadata for UserDefaultLocation<URL?>, type metadata accessor for URL?, type metadata accessor for UserDefaultLocation);
  v16 = swift_allocObject();
  *&v16[*(*v16 + 128)] = 0;
  (*(v13 + 56))(&v16[*(*v16 + 136)], 1, 1, v12);
  v17 = *(*v16 + 144);
  v18 = [objc_opt_self() standardUserDefaults];
  outlined destroy of Date?(a6, type metadata accessor for URL?);
  *&v16[v17] = v18;
  *&v16[*(*v16 + 152)] = 0;
  v16[*(*v16 + 160)] = 0;
  v19 = &v16[*(*v16 + 168)];
  *v19 = 0;
  v19[8] = 1;
  *&v16[*(*v16 + 112)] = a5;
  *(v16 + 2) = a1;
  *(v16 + 3) = a2;
  v20 = v23;
  *(v16 + 4) = a3;
  *(v16 + 5) = v20;
  outlined init with take of URL?(v15, &v16[*(*v16 + 104)], type metadata accessor for URL?);
  *&v16[*(*v16 + 120)] = 0;
  return v16;
}

char *_s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation4DateVSg_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  type metadata accessor for Date?();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a6, v15, type metadata accessor for Date?);
  type metadata accessor for PropertyListTransform<Date>(0, &lazy cache variable for type metadata for UserDefaultLocation<Date?>, type metadata accessor for Date?, type metadata accessor for UserDefaultLocation);
  v16 = swift_allocObject();
  *&v16[*(*v16 + 128)] = 0;
  (*(v13 + 56))(&v16[*(*v16 + 136)], 1, 1, v12);
  v17 = *(*v16 + 144);
  v18 = [objc_opt_self() standardUserDefaults];
  outlined destroy of Date?(a6, type metadata accessor for Date?);
  *&v16[v17] = v18;
  *&v16[*(*v16 + 152)] = 0;
  v16[*(*v16 + 160)] = 0;
  v19 = &v16[*(*v16 + 168)];
  *v19 = 0;
  v19[8] = 1;
  *&v16[*(*v16 + 112)] = a5;
  *(v16 + 2) = a1;
  *(v16 + 3) = a2;
  v20 = v23;
  *(v16 + 4) = a3;
  *(v16 + 5) = v20;
  outlined init with take of URL?(v15, &v16[*(*v16 + 104)], type metadata accessor for Date?);
  *&v16[*(*v16 + 120)] = 0;
  return v16;
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCAA17ToolbarLabelStyleV_Tt3B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for UserDefaultLocation<ToolbarLabelStyle>, &type metadata for ToolbarLabelStyle, type metadata accessor for UserDefaultLocation);
  v12 = swift_allocObject();
  *(v12 + 72) = 0;
  *(v12 + 80) = 4;
  *(v12 + 88) = [objc_opt_self() standardUserDefaults];
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 108) = 0;
  *(v12 + 116) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = a5;
  *(v12 + 64) = 0;
  return v12;
}

char *_s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCAA23TabSidebarCustomizationV_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a4;
  v11 = type metadata accessor for TabSidebarCustomization();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a6, v14, type metadata accessor for TabSidebarCustomization);
  type metadata accessor for PropertyListTransform<Date>(0, &lazy cache variable for type metadata for UserDefaultLocation<TabSidebarCustomization>, type metadata accessor for TabSidebarCustomization, type metadata accessor for UserDefaultLocation);
  v15 = swift_allocObject();
  *&v15[*(*v15 + 128)] = 0;
  (*(v12 + 56))(&v15[*(*v15 + 136)], 1, 1, v11);
  v16 = *(*v15 + 144);
  v17 = [objc_opt_self() standardUserDefaults];
  outlined destroy of Date?(a6, type metadata accessor for TabSidebarCustomization);
  *&v15[v16] = v17;
  *&v15[*(*v15 + 152)] = 0;
  v15[*(*v15 + 160)] = 0;
  v18 = &v15[*(*v15 + 168)];
  *v18 = 0;
  v18[8] = 1;
  *&v15[*(*v15 + 112)] = a5;
  *(v15 + 2) = a1;
  *(v15 + 3) = a2;
  v19 = v22;
  *(v15 + 4) = a3;
  *(v15 + 5) = v19;
  outlined init with take of URL?(v14, &v15[*(*v15 + 104)], type metadata accessor for TabSidebarCustomization);
  *&v15[*(*v15 + 120)] = 0;
  return v15;
}

char *_s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCAA20TabViewCustomizationV_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a4;
  v11 = type metadata accessor for TabViewCustomization();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a6, v14, type metadata accessor for TabViewCustomization);
  type metadata accessor for PropertyListTransform<Date>(0, &lazy cache variable for type metadata for UserDefaultLocation<TabViewCustomization>, type metadata accessor for TabViewCustomization, type metadata accessor for UserDefaultLocation);
  v15 = swift_allocObject();
  *&v15[*(*v15 + 128)] = 0;
  (*(v12 + 56))(&v15[*(*v15 + 136)], 1, 1, v11);
  v16 = *(*v15 + 144);
  v17 = [objc_opt_self() standardUserDefaults];
  outlined destroy of Date?(a6, type metadata accessor for TabViewCustomization);
  *&v15[v16] = v17;
  *&v15[*(*v15 + 152)] = 0;
  v15[*(*v15 + 160)] = 0;
  v18 = &v15[*(*v15 + 168)];
  *v18 = 0;
  v18[8] = 1;
  *&v15[*(*v15 + 112)] = a5;
  *(v15 + 2) = a1;
  *(v15 + 3) = a2;
  v19 = v22;
  *(v15 + 4) = a3;
  *(v15 + 5) = v19;
  outlined init with take of URL?(v14, &v15[*(*v15 + 104)], type metadata accessor for TabViewCustomization);
  *&v15[*(*v15 + 120)] = 0;
  return v15;
}

uint64_t AppStorage.location.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AppStorage.wrappedValue.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized AppStorage.wrappedValue.setter();
  v5 = *(*(a3 - 8) + 8);

  return v5(a1, a3);
}

void (*AppStorage.wrappedValue.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = a3;
  v9 = *(a3 - 8);
  v7[2] = v9;
  v10 = *(v9 + 64);
  if (v6)
  {
    v7[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v8[4] = v11;
  UserDefaultLocation.canonicalLocation.getter();
  UserDefaultLocation.getValue(forReading:)(1, v12);

  return AppStorage.wrappedValue.modify;
}

void AppStorage.wrappedValue.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    UserDefaultLocation.canonicalLocation.getter();
    UserDefaultLocation.set(_:transaction:)();

    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    UserDefaultLocation.canonicalLocation.getter();
    UserDefaultLocation.set(_:transaction:)();

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AppStorage.projectedValue.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  UserDefaultLocation.canonicalLocation.getter();
  UserDefaultLocation.getValue(forReading:)(0, v2);

  type metadata accessor for UserDefaultLocation();
  swift_getWitnessTable();
  type metadata accessor for LocationBox();
  v4[1] = UserDefaultLocation.canonicalLocation.getter();
  swift_allocObject();
  LocationBox.init(_:)();
  return Binding.init(value:location:)();
}

uint64_t AppStorage.init<A>(wrappedValue:_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSS_Tt3g5(a3, a4, &unk_1EFFBA3D0, &protocol witness table for StringTransform, a5, a1, a2);
}

{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for PropertyListTransform<Data>, MEMORY[0x1E6969080], type metadata accessor for PropertyListTransform);

  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation4DataV_Tt3g5(a3, a4, v10, &protocol witness table for PropertyListTransform<A>, a5, a1, a2);
}

char *AppStorage.init<A>(wrappedValue:_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation3URLV_Tt3g5Tm(a2, a3, &unk_1EFFBA3B0, &protocol witness table for URLTransform, a4, v12, MEMORY[0x1E6968FB0], type metadata accessor for UserDefaultLocation<URL>);
  (*(v9 + 8))(a1, v8);
  return v13;
}

{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListTransform<Date>(0, &lazy cache variable for type metadata for PropertyListTransform<Date>, MEMORY[0x1E6969530], type metadata accessor for PropertyListTransform);
  v13 = v12;
  (*(v9 + 16))(v11, a1, v8);
  v14 = _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation3URLV_Tt3g5Tm(a2, a3, v13, &protocol witness table for PropertyListTransform<A>, a4, v11, MEMORY[0x1E6969530], type metadata accessor for UserDefaultLocation<Date>);
  (*(v9 + 8))(a1, v8);
  return v14;
}

{
  v8 = type metadata accessor for TabSidebarCustomization();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TabSidebarCustomization(a1, v10, type metadata accessor for TabSidebarCustomization);
  v11 = _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCAA23TabSidebarCustomizationV_Tt3g5(a2, a3, &unk_1EFFBBC20, &protocol witness table for TabSidebarCustomizationTransform, a4, v10);
  outlined destroy of TabSidebarCustomization(a1, type metadata accessor for TabSidebarCustomization);
  return v11;
}

{
  v8 = type metadata accessor for TabViewCustomization();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TabViewCustomization(a1, v10, type metadata accessor for TabViewCustomization);
  v11 = _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCAA20TabViewCustomizationV_Tt3g5(a2, a3, &unk_1F0005B70, &protocol witness table for TabViewCustomizationTransform, a4, v10);
  outlined destroy of TabViewCustomization(a1, type metadata accessor for TabViewCustomization);
  return v11;
}

char *AppStorage<A>.init(wrappedValue:_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for JSONCodableTransform();
  v11 = specialized AppStorage.init(key:transform:store:defaultValue:)(a2, a3, v10, &protocol witness table for JSONCodableTransform<A>, a4, a1, a5);
  (*(*(a5 - 8) + 8))(a1, a5);
  return v11;
}

char *AppStorage<A>.init<>(_:store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation3URLVSg_Tt3g5(a1, a2, &unk_1EFFBA3B0, &protocol witness table for URLTransform, a3, v8);
}

{
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListTransform<Date>(0, &lazy cache variable for type metadata for PropertyListTransform<Date>, MEMORY[0x1E6969530], type metadata accessor for PropertyListTransform);
  v10 = v9;
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation4DateVSg_Tt3g5(a1, a2, v10, &protocol witness table for PropertyListTransform<A>, a3, v8);
}

char *AppStorage<A>.init<A>(_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = type metadata accessor for JSONCodableTransform();
  (*(*(a4 - 8) + 56))(v11, 1, 1, a4);
  v13 = specialized AppStorage.init(key:transform:store:defaultValue:)(a1, a2, v12, &protocol witness table for JSONCodableTransform<A>, a3, v11, v8);
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t (*AppStorage.objectWillChange.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = AppStorage.objectWillChange.getter();
  return AppStorage.objectWillChange.modify;
}

uint64_t AppStorage.objectWillChange.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return AppStorage.objectWillChange.setter(*a1);
  }

  AppStorage.objectWillChange.setter(v2);
}

uint64_t (*protocol witness for _ObservableObjectProperty.objectWillChange.modify in conformance AppStorage<A>(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = v2;
  a1[2] = a2;
  *a1 = AppStorage.objectWillChange.getter();
  return protocol witness for _ObservableObjectProperty.objectWillChange.modify in conformance AppStorage<A>;
}

uint64_t protocol witness for _ObservableObjectProperty.objectWillChange.modify in conformance AppStorage<A>(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return AppStorage.objectWillChange.setter(*a1);
  }

  AppStorage.objectWillChange.setter(v2);
}

uint64_t EnvironmentValues.defaultAppStorageDefaults.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.defaultAppStorageDefaults : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.defaultAppStorageDefaults : EnvironmentValues(void **a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>);
  v4 = v3;

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void EnvironmentValues.defaultAppStorageDefaults.setter(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>);
  v3 = a1;

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.defaultAppStorage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  a4();
}

void (*EnvironmentValues.defaultAppStorageDefaults.modify(void *a1))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v3[3] = *v1;
  v5 = v1[1];
  v3[4] = v5;
  type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>);
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *v4 = v4[1];
  return EnvironmentValues.defaultAppStorageDefaults.modify;
}

void EnvironmentValues.defaultAppStorageDefaults.modify(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  (*a1)[1] = v4;
  v5 = v3[4];
  type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>);
  v6 = v4;

  if (a2)
  {
    v7 = v6;
    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  else
  {
    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  free(v3);
}

double static PropertyListTransform.readValue(from:key:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = MEMORY[0x18D00C850](a2, a3);
  v7 = [a1 objectForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t static PropertyListTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  outlined init with copy of Any?(a1, v25);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v16 = swift_dynamicCast();
  v17 = *(a5 - 8);
  (*(v17 + 56))(v15, v16 ^ 1u, 1, a5);
  v18 = *(v17 + 48);
  if (v18(v15, 1, a5) == 1)
  {
    v19 = MEMORY[0x18D00C850](a3, a4);
    [v24 removeObjectForKey_];
  }

  else
  {
    v23 = a3;
    v20 = v24;
    (*(v10 + 16))(v12, v15, v9);
    if (v18(v12, 1, a5) == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v12, a5);
    }

    v19 = MEMORY[0x18D00C850](v23, a4);
    [v20 setObject:v21 forKey:v19];
    swift_unknownObjectRelease();
  }

  return (*(v10 + 8))(v15, v9);
}

void _s7SwiftUI32ScalarUserDefaultsValueTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLPAAE05writeF0_2to3keyyypSg_So06NSUserE0CSStFZAA04BoolG0ACLLV_Tt2g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a1, v10);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    v10[0] = v9 & 1;
    v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 setObject:v7 forKey:v8];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 removeObjectForKey_];
  }
}

void _s7SwiftUI32ScalarUserDefaultsValueTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLPAAE05writeF0_2to3keyyypSg_So06NSUserE0CSStFZAA07IntegerG0ACLLV_Tt2g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a1, v10);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    v10[0] = v9;
    v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 setObject:v7 forKey:v8];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 removeObjectForKey_];
  }
}

void _s7SwiftUI32ScalarUserDefaultsValueTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLPAAE05writeF0_2to3keyyypSg_So06NSUserE0CSStFZAA06DoubleG0ACLLV_Tt2g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a1, v10);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    v10[0] = v9;
    v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 setObject:v7 forKey:v8];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 removeObjectForKey_];
  }
}

void static JSONCodableTransform.readValue(from:key:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = MEMORY[0x18D00C850](a2, a3);
  v9 = [a1 dataForKey_];

  if (v9)
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    *(a5 + 24) = a4;
    __swift_allocate_boxed_opaque_existential_1(a5);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v10, v12);
  }

  else
  {
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }
}

uint64_t static JSONCodableTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[0] = a2;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - v11;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(a1, v26);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if (v17)
  {
    v18(v12, 0, 1, a5);
    (*(v13 + 32))(v16, v12, a5);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v21 = v20;
    outlined copy of Data._Representation(v19, v20);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v19, v21);
    v23 = MEMORY[0x18D00C850](a3, a4);
    [v25[0] setObject:isa forKey:v23];

    swift_unknownObjectRelease();

    outlined consume of Data?(v19, v21);
    return (*(v13 + 8))(v16, a5);
  }

  else
  {
    v18(v12, 1, 1, a5);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t static URLTransform.readValue(from:key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = MEMORY[0x18D00C850](a2, a3, v12);
  v16 = [a1 URLForKey_];

  if (v16)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  }

  else
  {
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  }

  outlined init with take of URL?(v10, v14, type metadata accessor for URL?);
  type metadata accessor for URL();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v14, 1, v17) == 1)
  {
    result = outlined destroy of Date?(v14, type metadata accessor for URL?);
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    *(a4 + 24) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    return (*(v18 + 32))(boxed_opaque_existential_1, v14, v17);
  }

  return result;
}

double _s7SwiftUI25RawRepresentableTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLV9readValue4from3keyypSgSo14NSUserDefaultsC_SStFZAA17ToolbarLabelStyleV4RoleO_AA07IntegerE0ACLLVTt2g5@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  specialized static ScalarUserDefaultsValueTransform.readValue(from:key:)(a1, a2, a3, &v10);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v5 = swift_dynamicCast();
  if (v5)
  {
    v13 = v5 ^ 1;
    if ((v12 - 5) > 3)
    {
      v10 = 0u;
      v11 = 0u;
    }

    else
    {
      v9 = &type metadata for ToolbarLabelStyle.Role;
      LOBYTE(v8) = v12 - 5;
      outlined init with take of Any(&v8, &v10);
    }

    result = *&v10;
    v7 = v11;
    *a4 = v10;
    a4[1] = v7;
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t closure #1 in static RawRepresentableTransform.readValue(from:key:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  return dispatch thunk of RawRepresentable.init(rawValue:)();
}

uint64_t _s7SwiftUI25RawRepresentableTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLV10writeValue_2to3keyyypSg_So14NSUserDefaultsCSStFZAA17ToolbarLabelStyleV4RoleO_AA07IntegerE0ACLLVTt2g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a1, &v9);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast() && v8 != 4)
  {
    *(&v10 + 1) = MEMORY[0x1E69E6530];
    *&v9 = v8 + 5;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  _s7SwiftUI32ScalarUserDefaultsValueTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLPAAE05writeF0_2to3keyyypSg_So06NSUserE0CSStFZAA07IntegerG0ACLLV_Tt2g5(&v9, a2, a3, a4);
  return outlined destroy of Any?(&v9);
}

uint64_t static RawRepresentableTransform.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a3;
  v26 = a4;
  v24 = a2;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(a1, &v27);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v15, 0, 1, a5);
    (*(v16 + 32))(v19, v15, a5);
    *(&v28 + 1) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_1(&v27);
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(a8 + 16))(&v27, v24, v25, v26, a6, a8);
    (*(v16 + 8))(v19, a5);
  }

  else
  {
    v21(v15, 1, 1, a5);
    (*(v13 + 8))(v15, v12);
    v27 = 0u;
    v28 = 0u;
    (*(a8 + 16))(&v27, v24, v25, v26, a6, a8);
  }

  return outlined destroy of Any?(&v27);
}

double static ToolbarLabelStyleTransform.readValue(from:key:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _s7SwiftUI25RawRepresentableTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLV9readValue4from3keyypSgSo14NSUserDefaultsC_SStFZAA17ToolbarLabelStyleV4RoleO_AA07IntegerE0ACLLVTt2g5(a1, a2, a3, &v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      *(a4 + 24) = &type metadata for ToolbarLabelStyle;
      *a4 = v6;
      return result;
    }
  }

  else
  {
    outlined destroy of Any?(&v7);
  }

  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t UserDefaultLocation.wasRead.getter()
{
  v1 = *(*v0 + 160);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UserDefaultLocation.wasRead.setter(char a1)
{
  v3 = *(*v1 + 160);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t UserDefaultLocation.changeSignal.setter(uint64_t result, char a2)
{
  v3 = v2 + *(*v2 + 168);
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

char *UserDefaultLocation.copy()(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - v4;
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = *(v1 + 5);
  v10 = UserDefaultLocation.store.getter();
  (*(v3 + 16))(v5, &v1[*(*v1 + 104)], v2);
  v11 = *&v1[*(*v1 + 120)];
  if (!v11)
  {

    v11 = v1;
  }

  type metadata accessor for UserDefaultLocation();
  swift_allocObject();

  return UserDefaultLocation.init(key:transform:store:defaultValue:base:)(v6, v7, v8, v9, v10, v5, v11);
}

uint64_t UserDefaultLocation.set(_:transaction:)()
{
  if (*(v0 + *(*v0 + 128)))
  {

    ObservableObjectPublisher.send()();
  }

  v1 = Transaction.current.getter();
  MEMORY[0x1EEE9AC00](v1);
  withTransaction<A>(_:_:)();
}

uint64_t closure #1 in UserDefaultLocation.set(_:transaction:)(void *a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v5 = type metadata accessor for Optional();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = *(v4 - 8);
  v10 = *(v9 + 16);
  v10(v16 - v7, a2, v4, v6);
  (*(v9 + 56))(v8, 0, 1, v4);
  UserDefaultLocation.cachedValue.setter(v8);
  v11 = a1[4];
  v12 = a1[5];
  v16[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (v10)(boxed_opaque_existential_1, a2, v4);
  v14 = UserDefaultLocation.store.getter();
  (*(v12 + 16))(v16, v14, a1[2], a1[3], v11, v12);

  return outlined destroy of Any?(v16);
}

uint64_t UserDefaultLocation.update()(uint64_t a1)
{
  v3 = *v1;
  if ((*(v1 + *(*v1 + 168) + 8) & 1) != 0 || AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    v4 = *(v3 + 160);
    v5 = 1;
    swift_beginAccess();
    *(v1 + v4) = 1;
  }

  else
  {
    AGGraphGetValue();
    v5 = v6 & 1;
  }

  UserDefaultLocation.getValue(forReading:)(0, a1);
  return v5;
}

void (*protocol witness for Location.wasRead.modify in conformance UserDefaultLocation<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = UserDefaultLocation.wasRead.modify();
  return protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape;
}

void UserDefaultPropertyBox.reset()(uint64_t a1, uint64_t a2)
{
  v2 = a2 + OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state;
  v3 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state);
  if (v3)
  {
    v5 = *(v2 + 8);
    v4 = *(v2 + 16);
    v6 = v3;

    UserDefaultObserver.unobserve(oldDefaults:key:)(v6, v5, v4);
  }
}

uint64_t closure #1 in UserDefaultObserver.Target.GraphAttribute.send()(uint64_t result)
{
  if (result)
  {
    static Transaction.current.getter();
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)();
    GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)();
  }

  return result;
}

uint64_t UserDefaultObserver.Target.send()()
{
  outlined init with copy of UserDefaultObserver.Target(v0, v7);
  if (v8)
  {
    ObservableObjectPublisher.send()();
  }

  else
  {
    outlined init with take of UserDefaultObserver.Target.GraphAttribute(v7, v5);
    static Semantics.v7.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 && !pthread_main_np())
    {
      static os_log_type_t.fault.getter();
      v2 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    Strong = swift_weakLoadStrong();
    v4 = swift_allocObject();
    *(v4 + 16) = Strong;
    *(v4 + 24) = v6;

    onMainThread(do:)();

    return outlined destroy of weak AnyGestureResponder?(v5);
  }
}

id UserDefaultObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  v3 = *&v0[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  if (v3)
  {
    v5 = *(v2 + 1);
    v4 = *(v2 + 2);
    v6 = v3;

    UserDefaultObserver.unobserve(oldDefaults:key:)(v6, v5, v4);
  }

  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void UserDefaultObserver.userDefaultsDidChange(_:)()
{
  v1 = &v0[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  v2 = *&v0[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  if (v2)
  {
    v3 = v0;
    v5 = *(v1 + 1);
    v4 = *(v1 + 2);
    outlined copy of UserDefaultObserver.State(*&v0[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state]);
    v6 = v2;
    Notification.object.getter();
    v7 = v18;
    if (v18)
    {
      v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
      v9 = *(v7 - 8);
      v10 = MEMORY[0x1EEE9AC00](v8);
      v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);
      v13 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v9 + 8))(v12, v7);
      __swift_destroy_boxed_opaque_existential_1(v17);
      swift_unknownObjectRelease();

      if (v13 == v6)
      {
        v17[0] = v5;
        v17[1] = v4;
        v16[0] = 46;
        v16[1] = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v14 = StringProtocol.contains<A>(_:)();

        if (v14)
        {
          LOBYTE(v17[0]) = 17;
          *(swift_allocObject() + 16) = v3;
          v15 = v3;
          static Update.enqueueAction(reason:_:)();
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t closure #1 in UserDefaultObserver.noteDefaultChange()(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_target;
  swift_beginAccess();
  outlined init with copy of UserDefaultObserver.Target(a1 + v2, v4);
  UserDefaultObserver.Target.send()();
  return outlined destroy of UserDefaultObserver.Target(v4);
}

uint64_t specialized AppStorage.wrappedValue.setter()
{
  UserDefaultLocation.canonicalLocation.getter();
  UserDefaultLocation.set(_:transaction:)();
}

void type metadata accessor for PropertyListTransform<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t assignWithCopy for UserDefaultObserver.Target(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 16);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else
    {
      swift_weakDestroy();
    }

    v5 = *(a2 + 16);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 16) = 1;
    }

    else
    {
      swift_weakCopyInit();
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for UserDefaultObserver.Target(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 16);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else
    {
      swift_weakDestroy();
    }

    v5 = *(a2 + 16);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      v6 = 1;
    }

    else
    {
      swift_weakTakeInit();
      v6 = 0;
      *(a1 + 8) = *(a2 + 8);
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

id *destroy for UserDefaultObserver.State(id *result)
{
  if (*result >= 0xFFFFFFFF)
  {
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for UserDefaultObserver.State(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *a1 = v2;
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    v5 = v2;
  }

  return result;
}

uint64_t assignWithCopy for UserDefaultObserver.State(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 2);
      v7 = v5;

      return a1;
    }

LABEL_7:
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = v5;
  v6 = v5;

  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = *(a2 + 2);

  return a1;
}

uint64_t assignWithTake for UserDefaultObserver.State(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*result < 0xFFFFFFFFuLL)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    if (*a2 < 0xFFFFFFFFuLL)
    {
      v4 = result;

      *v4 = *a2;
      *(v4 + 16) = *(a2 + 16);
    }

    else
    {
      *result = *a2;
      v4 = result;

      v5 = *(a2 + 16);
      *(v4 + 8) = *(a2 + 8);
      *(v4 + 16) = v5;
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserDefaultObserver.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for UserDefaultObserver.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for UserDefaultObserver.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
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

void specialized static StringTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a1, v9);
  if (!v10)
  {
    outlined destroy of Any?(v9);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 removeObjectForKey_];
    goto LABEL_6;
  }

  v7 = MEMORY[0x18D00C850]();

  v8 = MEMORY[0x18D00C850](a3, a4);
  [a2 setObject:v7 forKey:v8];

LABEL_6:
}

void specialized static URLTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any?(a1, v21);
  if (v22)
  {
    v15 = swift_dynamicCast();
    (*(v12 + 56))(v10, v15 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v14, v10, v11);
      URL._bridgeToObjectiveC()(v16);
      v18 = v17;
      v19 = MEMORY[0x18D00C850](a3, a4);
      [a2 setURL:v18 forKey:v19];

      (*(v12 + 8))(v14, v11);
      return;
    }
  }

  else
  {
    outlined destroy of Any?(v21);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  outlined destroy of Date?(v10, type metadata accessor for URL?);
  v20 = MEMORY[0x18D00C850](a3, a4);
  [a2 removeObjectForKey_];
}

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized static ToolbarLabelStyleTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a1, &v9);
  if (!*(&v10 + 1))
  {
    outlined destroy of Any?(&v9);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_6;
  }

  *(&v10 + 1) = &type metadata for ToolbarLabelStyle.Role;
  LOBYTE(v9) = v8;
LABEL_6:
  _s7SwiftUI25RawRepresentableTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLV10writeValue_2to3keyyypSg_So14NSUserDefaultsCSStFZAA17ToolbarLabelStyleV4RoleO_AA07IntegerE0ACLLVTt2g5(&v9, a2, a3, a4);
  return outlined destroy of Any?(&v9);
}

void specialized UserDefaultObserver.observeValue(forKeyPath:of:change:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4 == &static UserDefaultObserver.observationContext)
  {
    v5 = &v4[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
    v6 = *&v4[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
    if (v6)
    {
      v22 = a1;
      v9 = *(v5 + 1);
      v8 = *(v5 + 2);
      outlined init with copy of Any?(a3, v23);
      v10 = v24;
      if (v24)
      {
        v11 = __swift_project_boxed_opaque_existential_1(v23, v24);
        v12 = *(v10 - 8);
        v13 = MEMORY[0x1EEE9AC00](v11);
        v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v12 + 16))(v15, v13);
        outlined copy of UserDefaultObserver.State(v6);
        v16 = v6;
        v17 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v12 + 8))(v15, v10);
        __swift_destroy_boxed_opaque_existential_1(v23);
        swift_unknownObjectRelease();

        if (v17 == v16 && a2)
        {
          if (v9 == v22 && v8 == a2)
          {

LABEL_16:
            LOBYTE(v23[0]) = 17;
            *(swift_allocObject() + 16) = v4;
            v20 = v4;
            static Update.enqueueAction(reason:_:)();

            goto LABEL_6;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }

LABEL_6:
      }
    }
  }
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t assignWithCopy for UserDefaultPropertyBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for UserDefaultPropertyBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t initializeWithCopy for UserDefaultObserver.Target.GraphAttribute(uint64_t a1, uint64_t a2)
{
  result = swift_weakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for UserDefaultObserver.Target.GraphAttribute(uint64_t a1, uint64_t a2)
{
  result = swift_weakCopyAssign();
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

uint64_t initializeWithTake for UserDefaultObserver.Target.GraphAttribute(uint64_t a1, uint64_t a2)
{
  result = swift_weakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

double assignWithTake for UserDefaultObserver.Target.GraphAttribute(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakTakeAssign();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

uint64_t specialized Binding.projecting<A>(_:)(uint64_t a1)
{
  v5 = a1;
  outlined init with copy of _VariadicView_Children(a1 + 16, v2);
  specialized Sequence.first(where:)(partial apply for closure #1 in ChildIndexProjection.get(base:), v3);
  outlined destroy of EnumeratedSequence<_VariadicView_Children>.Iterator(v2, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>, MEMORY[0x1E69E6E48]);
  if (v4)
  {
    outlined destroy of _VariadicView_Children.Element(v3 + 8);
  }

  else
  {
    outlined destroy of (offset: Int, element: _VariadicView_Children.Element)(v3, type metadata accessor for (offset: Int, element: _VariadicView_Children.Element)?);
  }

  type metadata accessor for ChildIndexProjection();
  lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type ChildIndexProjection and conformance ChildIndexProjection, type metadata accessor for ChildIndexProjection);
  dispatch thunk of AnyLocation.projecting<A>(_:)();
}

uint64_t specialized Binding.projecting<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(*(a1 + 24) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a4);
  }

  swift_endAccess();
  type metadata accessor for ItemIndexTabsOnlyIndexProjection();
  lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection, type metadata accessor for ItemIndexTabsOnlyIndexProjection);
  dispatch thunk of AnyLocation.projecting<A>(_:)();
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(_BYTE *)@<X0>, _OWORD *a2@<X8>)
{
  outlined init with copy of EnumeratedSequence<_VariadicView_Children>(v2, v21);
  if (_VariadicView_Children.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      _VariadicView_Children.subscript.getter();
      result = _VariadicView_Children.endIndex.getter();
      if (v6 >= result)
      {
        break;
      }

      *&v13[56] = v17;
      *&v13[72] = v18;
      *&v13[88] = v19;
      *&v13[8] = v14;
      *&v13[24] = v15;
      v8 = v6 + 1;
      *&v13[104] = v20;
      *&v13[40] = v16;
      *v13 = v6;
      v9 = a1(v13);
      if (v3)
      {
        v22 = v6 + 1;
        v23 = v6 + 1;
        outlined destroy of (offset: Int, element: _VariadicView_Children.Element)(v13, type metadata accessor for (offset: Int, element: _VariadicView_Children.Element));
        return outlined destroy of EnumeratedSequence<_VariadicView_Children>.Iterator(v21, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>.Iterator, MEMORY[0x1E69E6E40]);
      }

      if (v9)
      {
        v22 = v6 + 1;
        v23 = v6 + 1;
        result = outlined destroy of EnumeratedSequence<_VariadicView_Children>.Iterator(v21, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>.Iterator, MEMORY[0x1E69E6E40]);
        v10 = *&v13[80];
        a2[4] = *&v13[64];
        a2[5] = v10;
        a2[6] = *&v13[96];
        v11 = *&v13[16];
        *a2 = *v13;
        a2[1] = v11;
        v12 = *&v13[48];
        a2[2] = *&v13[32];
        a2[3] = v12;
        return result;
      }

      outlined destroy of (offset: Int, element: _VariadicView_Children.Element)(v13, type metadata accessor for (offset: Int, element: _VariadicView_Children.Element));
      ++v6;
      if (v8 == _VariadicView_Children.endIndex.getter())
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
LABEL_9:
    v22 = v8;
    v23 = v8;
    result = outlined destroy of EnumeratedSequence<_VariadicView_Children>.Iterator(v21, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>.Iterator, MEMORY[0x1E69E6E40]);
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      outlined init with copy of IdentifiedDocumentGroupConfiguration(v7, v11);
      result = v6(v11);
      if (v3)
      {
        return outlined destroy of IdentifiedDocumentGroupConfiguration(v11);
      }

      if (result)
      {
        break;
      }

      result = outlined destroy of IdentifiedDocumentGroupConfiguration(v11);
      v7 += 128;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v8 = v11[5];
    a3[4] = v11[4];
    a3[5] = v8;
    a3[6] = v12[0];
    *(a3 + 105) = *(v12 + 9);
    v9 = v11[1];
    *a3 = v11[0];
    a3[1] = v9;
    v10 = v11[3];
    a3[2] = v11[2];
    a3[3] = v10;
  }

  else
  {
LABEL_6:
    *(a3 + 105) = 0u;
    a3[5] = 0u;
    a3[6] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

void specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for UISceneSession();
    lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type UISceneSession and conformance NSObject, type metadata accessor for UISceneSession);
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for UISceneSession();
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    outlined consume of Set<UIPress>.Iterator._Variant();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, __int128 *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = (a2 + 40);
    while (1)
    {
      v8 = *v7;
      *&v10 = *(v7 - 1);
      *(&v10 + 1) = v8;

      result = v6(&v10);
      if (v3)
      {
      }

      if (result)
      {
        break;
      }

      v7 += 2;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v9 = v10;
  }

  else
  {
LABEL_6:
    v9 = xmmword_18CD633F0;
  }

  *a3 = v9;
  return result;
}

uint64_t specialized Sequence.first(where:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a4)
  {
    return 0;
  }

  else
  {
    v5 = a3;
    if (a4 >= a3)
    {
      v7 = result;
      while (a4 != v5)
      {
        v8 = v5;
        result = v7(&v8);
        if (v4 || (result & 1) != 0)
        {
          return v5;
        }

        if (a4 == ++v5)
        {
          return 0;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t thunk for @callee_guaranteed (@in_guaranteed Binding<A>) -> (@owned Binding<Int?>)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  return result;
}

uint64_t static SidebarAdaptableTabViewStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for AdaptableTabViewRoot();
  type metadata accessor for TabViewStyleConfiguration.Content();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TabViewValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for SidebarAdaptableTabViewStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t static SidebarAdaptableTabViewStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for AdaptableTabViewRoot();
  type metadata accessor for TabViewStyleConfiguration.Content();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TabViewValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for SidebarAdaptableTabViewStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t SidebarAdaptableTabViewStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _TabViewValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t SidebarAdaptableTabViewStyle.Body.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  type metadata accessor for Binding();
  v23 = type metadata accessor for Optional();
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v21 - v8;
  v30 = &type metadata for SidebarAdaptableTabViewStyle;
  v31 = a2;
  v32 = &protocol witness table for SidebarAdaptableTabViewStyle;
  v33 = a3;
  v10 = type metadata accessor for _TabViewValue();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for AdaptableTabViewRoot();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v21 = type metadata accessor for TabViewStyleConfiguration.Content();
  v16 = type metadata accessor for _VariadicView.Tree();
  v22 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21 - v17;
  SidebarAdaptableTabViewStyle.Body.base.getter(v12);
  (*(v7 + 32))(v9, v12, v23);
  KeyPath = swift_getKeyPath();
  AdaptableTabViewRoot.init(clientSidebarVisibility:selection:adaptationMode:)(KeyPath, 0, 0, v9, 1, v15);
  v25 = a2;
  v26 = a3;
  v27 = a1;
  _VariadicView.Tree.init(_:content:)();
  WitnessTable = swift_getWitnessTable();
  v29 = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  swift_getWitnessTable();
  lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
  View.input<A>(_:)();
  return (*(v22 + 8))(v18, v16);
}

uint64_t AdaptableTabViewRoot.init(clientSidebarVisibility:selection:adaptationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = HIBYTE(a3) & 1;
  AnyHashable.init<A>(_:)();
  *(a6 + 24) = v13;
  *(a6 + 40) = v14;
  *(a6 + 56) = v15;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0;
  *(a6 + 80) = 0;
  v9 = type metadata accessor for AdaptableTabViewRoot();
  v10 = *(v9 + 44);
  type metadata accessor for Binding();
  v11 = type metadata accessor for Optional();
  result = (*(*(v11 - 8) + 32))(a6 + v10, a4, v11);
  *(a6 + *(v9 + 48)) = a5;
  return result;
}

uint64_t closure #1 in SidebarAdaptableTabViewStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = &type metadata for SidebarAdaptableTabViewStyle;
  v10[1] = a2;
  v10[2] = &protocol witness table for SidebarAdaptableTabViewStyle;
  v10[3] = a3;
  v3 = type metadata accessor for _TabViewValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  SidebarAdaptableTabViewStyle.Body.base.getter(v10 - v5);
  (*(v4 + 8))(v6, v3);
  v7 = type metadata accessor for TabViewStyleConfiguration.Content();
  v8 = static ViewBuilder.buildExpression<A>(_:)(v7, v7, &protocol witness table for TabViewStyleConfiguration<A>.Content);
  return static ViewBuilder.buildExpression<A>(_:)(v8, v7, &protocol witness table for TabViewStyleConfiguration<A>.Content);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SidebarAdaptableTabViewStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AdaptableTabViewRoot();
  type metadata accessor for TabViewStyleConfiguration.Content();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t type metadata completion function for AdaptableTabViewRoot()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for AdaptableTabViewRoot(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 84);
  v8 = v6;
  v9 = v6 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v10 = ((v8 + 16) & ~v8) + *(v5 + 64);
  v11 = v6 & 0x100000;
  if (v8 <= 7 && v11 == 0 && v10 + (v9 & (v8 + 88)) + 1 <= 0x18)
  {
    v15 = *a2;
    v16 = *(a2 + 8);
    v17 = *(a2 + 17);
    v18 = *(a2 + 16);
    outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v16, v18, v17);
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 16) = v18;
    *(a1 + 17) = v17;
    v20 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
    v22 = v21[3];
    v20[3] = v22;
    v20[4] = v21[4];
    (**(v22 - 8))(v20, v21);
    v20[5] = v21[5];
    v23 = (v20 + 55) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v21 + 55) & 0xFFFFFFFFFFFFFFF8;
    *v23 = *v24;
    *(v23 + 8) = *(v24 + 8);
    v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
    v27 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);

    if ((v7 & 0x80000000) != 0)
    {
      if ((*(v5 + 48))(v27 + 1, v7, v4))
      {
LABEL_14:
        memcpy(v25, v26, v10);
LABEL_17:
        *(v25 + v10) = *(v26 + v10);
        return a1;
      }
    }

    else
    {
      v28 = *v27;
      if (*v27 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      if (v28 != -1)
      {
        goto LABEL_14;
      }
    }

    *v25 = *v26;
    v29 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v27;
    v30 = *(v5 + 16);

    v30(v29 + 1, v27 + 1, v4);
    goto LABEL_17;
  }

  v14 = *a2;
  *a1 = *a2;
  a1 = v14 + (v9 & (v8 + 16));

  return a1;
}

uint64_t destroy for AdaptableTabViewRoot(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Binding<Visibility>?>.Content(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 17));
  v4 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v4);

  v5 = (v4 + 55) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + (v8 | 7) + 16) & ~(v8 | 7);
  v10 = ~v8;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = v7;
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    result = (*(v7 + 48))((v11 + v8 + 8) & v10);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v12 = *v11;
  if (*v11 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  result = (v12 + 1);
  if (v12 == -1)
  {
LABEL_7:

    v14 = *(v15 + 8);

    return v14((v11 + v8 + 8) & v10, v6);
  }

  return result;
}

uint64_t initializeWithCopy for AdaptableTabViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v7, v9, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  v10 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[3];
  v10[3] = v12;
  v10[4] = v11[4];
  (**(v12 - 8))(v10, v11);
  v10[5] = v11[5];
  v13 = (v10 + 55) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;
  *(v13 + 8) = *(v14 + 8);
  v15 = *(a3 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(v16 + 80);
  v19 = *(v16 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  __dst = ((v18 + 16 + v13) & v19);
  v20 = ((v18 + 16 + v14) & v19);
  v21 = ~v18;
  v22 = ((v18 + 16) & ~v18) + *(v16 + 64);
  v23 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);

  if ((v17 & 0x80000000) == 0)
  {
    v24 = *v23;
    if (*v23 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    if (v24 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v25 = __dst;
    *__dst = *v20;
    v26 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = v15;
    *v26 = *v23;
    v27 = v26 + v18 + 8;
    v28 = *(v16 + 16);

    v28(v27 & v21, (v23 + v18 + 8) & v21, v30);
    goto LABEL_8;
  }

  if (!(*(v16 + 48))((v23 + v18 + 8) & v21, v17, v15))
  {
    goto LABEL_7;
  }

LABEL_5:
  v25 = __dst;
  memcpy(__dst, v20, v22);
LABEL_8:
  *(v25 + v22) = *(v20 + v22);
  return a1;
}

uint64_t assignWithCopy for AdaptableTabViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v7, v9, v8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 17);
  *a1 = v6;
  *(a1 + 8) = v7;
  v13 = *(a1 + 16);
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  outlined consume of Environment<Binding<Visibility>?>.Content(v10, v11, v13, v12);
  v14 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v14, v15);
  v14[5] = v15[5];

  v16 = (v14 + 55) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  v21 = *(v19 + 80);
  v22 = *(v19 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v23 = ((v21 + 16 + v16) & v22);
  v24 = ((v21 + 16 + v17) & v22);
  v25 = ~v21;
  v26 = *(v19 + 64);
  v27 = ((v21 + 16) & ~v21) + v26;
  v28 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v20 & 0x80000000) != 0)
  {
    v41 = ((v21 + 16) & ~v21) + v26;
    v32 = *(v19 + 48);
    v40 = v32((v28 + v21 + 8) & ~v21, v20, v18);
    v29 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = ~v21;
    v31 = v32((v29 + v21 + 8) & ~v21, v20, v18);
    v28 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    v27 = v41;
    if (!v40)
    {
LABEL_5:
      v42 = v28;
      if (!v31)
      {
        *v23 = *v24;

        *v42 = *v29;

        (*(v19 + 24))((v42 + v21 + 8) & v25, (v29 + v21 + 8) & v25, v18);
        goto LABEL_12;
      }

      (*(v19 + 8))((v42 + v21 + 8) & v25, v18);
      goto LABEL_9;
    }
  }

  else
  {
    v29 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = *v29;
    if (*v29 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v30) = -1;
    }

    v31 = v30 + 1;
    if (*v28 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v31)
  {
    *v23 = *v24;
    *v28 = *v29;
    v33 = v21 + 8;
    v34 = v27;
    v35 = v28 + v33;
    v36 = v29 + v33;
    v37 = *(v19 + 16);

    v38 = v35 & v25;
    v27 = v34;
    v37(v38, v36 & v25, v18);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v23, v24, v27);
LABEL_12:
  *(v23 + v27) = *(v24 + v27);
  return a1;
}