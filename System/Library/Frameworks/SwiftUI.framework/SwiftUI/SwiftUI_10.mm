uint64_t outlined copy of AccessibilityImageLabel?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined copy of AccessibilityImageLabel(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined copy of AccessibilityImageLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }
}

uint64_t outlined consume of AccessibilityImageLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }
}

uint64_t closure #1 in ModifiedContent<>.accessibilityIdentifier(_:placement:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a3;
  if (*(a1 + 8))
  {

    AccessibilityIdentifierStorage.merge(with:)();
    v6 = a2;
    v4 = a3;
    v7 = a4;
  }

  else
  {
    v7 = a4;
    v6 = a2;
  }

  *a1 = v6;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = a1;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1819242306, 0xE400000000000000, &v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    LOBYTE(a1) = v9;
  }

  return a1 & 1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000018CD3F2E0, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a1, 0);

    return v9[2];
  }

  return a1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C616E6F6974704FLL, 0xEF3E726F6C6F433CLL, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a1, 0);

    return v9[2];
  }

  return a1;
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, 1701605202, 0xE400000000000000, outlined consume of Environment<Bool>.Content);
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, 0x6C616E6F6974704FLL, 0xEE003E6C6F6F423CLL, outlined consume of Environment<Bool>.Content);
}

{
  if ((a2 & 1) == 0)
  {
    v2 = a1;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000018CD3F730, &v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    LODWORD(a1) = v9 | (v10 << 16);
  }

  return a1 & 0xFFFFFF;
}

{
  if (a2)
  {
    LOWORD(v9) = a1 & 0x101;
    BYTE2(v9) = BYTE2(a1) & 1;
    HIBYTE(v9) = BYTE3(a1) & 1;
  }

  else
  {

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C654374694B4955, 0xEE0065746174536CLL, &v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return v9;
}

{
  if (a2)
  {
  }

  else
  {

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x800000018CD3F590, v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(a1, 0);

    return v8[2];
  }

  return a1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1953394502, 0xE400000000000000, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return v9[2];
  }

  return a1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000018CD3F420, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a1, 0);

    return v9[2];
  }

  return a1;
}

{
  if (a2)
  {
  }

  else
  {

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018CD3F8E0, v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(a1, 0);

    return v8[2];
  }

  return a1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000018CD3F460, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a1, 0);

    return v9[2];
  }

  return a1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6570616853796E41, 0xED0000656C797453, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return v9[2];
  }

  return a1;
}

{
  if ((a2 & 1) == 0)
  {
    v2 = a1;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000018CD3F4D0, &v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    LOBYTE(a1) = v9;
  }

  return a1 & 1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000018CD3F900, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return v9[2];
  }

  return a1;
}

void type metadata accessor for [UITraitBridgedEnvironmentKey.Type]()
{
  if (!lazy cache variable for type metadata for [UITraitBridgedEnvironmentKey.Type])
  {
    type metadata accessor for UITraitBridgedEnvironmentKey.Type();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UITraitBridgedEnvironmentKey.Type]);
    }
  }
}

unint64_t type metadata accessor for UITraitBridgedEnvironmentKey.Type()
{
  result = lazy cache variable for type metadata for UITraitBridgedEnvironmentKey.Type;
  if (!lazy cache variable for type metadata for UITraitBridgedEnvironmentKey.Type)
  {
    type metadata accessor for UITraitBridgedEnvironmentKey();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITraitBridgedEnvironmentKey.Type);
  }

  return result;
}

uint64_t View.accessibilityHidden(_:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 0x400000004;
  }

  else
  {
    v3 = 0x400000000;
  }

  v5[2] = v3;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityVisibility(_:), v5, a2, a3);
}

{
  if (a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  v4 = 4 * (a1 != 2);
  if (a1)
  {
    v4 = 4;
  }

  v6[4] = v3;
  v6[5] = v4;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityVisibility(_:), v6, a2, a3);
}

uint64_t partial apply for closure #1 in View.accessibilityVisibility(_:)(uint64_t result)
{
  *(result + 112) = *(v1 + 16);
  *(result + 120) = 0;
  return result;
}

void storeEnumTagSinglePayload for Button(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64) + ((v9 + 75) & ~v9);
  v11 = 48;
  if ((v10 + 1) > 0x30)
  {
    v11 = v10 + 1;
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  if (v13 <= 0xFD)
  {
    v15 = 253;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = v9 | 7;
  v17 = v11 + 1;
  v18 = v11 + 1 + v14;
  v19 = ((v18 + ((v16 + 1) & ~v16)) & ~v14) + *(v12 + 64);
  if (a3 <= v15)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v15 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v15 < a2)
  {
    v21 = ~v15 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_57:
              if (v20 == 2)
              {
                *&a1[v19] = v22;
              }

              else
              {
                *&a1[v19] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v20)
    {
      a1[v19] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v19] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v20)
  {
    goto LABEL_32;
  }

  a1[v19] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  v26 = (&a1[v16 + 1] & ~v16);
  if (v13 > 0xFD)
  {
    v27 = *(v12 + 56);

    v27(&v26[v18] & ~v14, a2);
  }

  else if (a2 > 0xFD)
  {
    if (v17 <= 3)
    {
      v28 = ~(-1 << (8 * v17));
    }

    else
    {
      v28 = -1;
    }

    if (v11 != -1)
    {
      v29 = v28 & (a2 - 254);
      if (v17 <= 3)
      {
        v30 = v11 + 1;
      }

      else
      {
        v30 = 4;
      }

      bzero(v26, v17);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          *v26 = v29;
          v26[2] = BYTE2(v29);
        }

        else
        {
          *v26 = v29;
        }
      }

      else if (v30 == 1)
      {
        *v26 = v29;
      }

      else
      {
        *v26 = v29;
      }
    }
  }

  else
  {
    v26[v11] = -a2;
  }
}

uint64_t getEnumTagSinglePayload for Button(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for URL() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64) + ((v7 + 75) & ~v7);
  v9 = *(*(a3 + 16) - 8);
  if ((v8 + 1) > 0x30)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = 48;
  }

  v11 = *(v9 + 84);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v11 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v7 | 7;
  v16 = v10 + v12 + 1;
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v17 = ((v16 + ((v15 + 1) & ~v15)) & ~v12) + v13;
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 < 2)
    {
LABEL_31:
      v25 = (a1 + v15 + 1) & ~v15;
      if (v11 > 0xFD)
      {
        v27 = *(*(*(a3 + 16) - 8) + 48);

        return v27((v16 + v25) & ~v12);
      }

      else
      {
        v26 = *(v25 + v10);
        if (v26 >= 3)
        {
          return (v26 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_31;
  }

LABEL_18:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v23 = v17;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v14 + (v24 | v22) + 1;
}

unint64_t _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5Tm(unsigned int a1, __int128 *a2, uint64_t a3, int a4, unint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v57 = *MEMORY[0x1E69E9840];
  v14 = a2 + 3;
  *&v41 = *(a2 + 6);
  DWORD2(v41) = *(a2 + 14);
  v15 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v15)
  {
    v38 = a7;
    *&v41 = *v14;
    DWORD2(v41) = *(v14 + 2);
    v36 = a5;
    v37 = a6;
    v31 = a4;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      *&v41 = a3;
      DWORD2(v41) = a4;
      v16 = PreferencesOutputs.subscript.getter();
      v17 = *MEMORY[0x1E698D3F8];
      if ((v16 & 0x100000000) != 0)
      {
        v18 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v18 = v16;
      }

      v35 = v18;
    }

    else
    {
      v17 = *MEMORY[0x1E698D3F8];
      v35 = *MEMORY[0x1E698D3F8];
    }

    v34 = *(a2 + 18);
    v20 = a2[3];
    *&v42[16] = a2[2];
    v43 = v20;
    *v44 = a2[4];
    *&v44[16] = *(a2 + 20);
    v21 = a2[1];
    v41 = *a2;
    *v42 = v21;
    v32 = _ViewInputs.position.getter();
    v33 = *(a2 + 15);
    _ViewInputs.scrapeableParentID.getter();
    v22 = *(a2 + 2);
    v23 = *(a2 + 6);
    v24 = *(a2 + 9);
    _GraphInputs.interfaceIdiom.getter();
    swift_beginAccess();
    v25 = *(v22 + 16);
    *&v41 = a3;
    DWORD2(v41) = v31;
    v26 = PreferencesOutputs.subscript.getter();
    if ((v26 & 0x100000000) != 0)
    {
      v27 = v17;
    }

    else
    {
      v27 = v26;
    }

    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, v36, v37, v38, type metadata accessor for AccessibilityViewModifierAccessor);
    *&v41 = v28;
    *(&v41 + 1) = a1;
    *&v42[8] = v39;
    *v42 = v40;
    *&v42[24] = v32;
    *&v42[28] = v34;
    *&v43 = __PAIR64__(v25, v33);
    *(&v43 + 1) = __PAIR64__(v35, v23);
    *v44 = v27;
    *&v44[8] = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
    v54 = (v24 & 0x20) == 0;
    v55 = 0;
    swift_unknownObjectWeakInit();
    v56 = 0;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PropertiesTransform and conformance PropertiesTransform();
    v29 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of PropertiesTransform(&v41);
    AGGraphSetFlags();
    v19 = v29;
  }

  else
  {
    v19 = 0;
  }

  return v19 | (((v15 & 1) == 0) << 32);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t destroy for AccessibilityScrollableModifier(uint64_t a1)
{

  v2 = *(a1 + 96);
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 72);
  }

LABEL_5:
  if (*(a1 + 248) != 1)
  {
  }
}

unint64_t _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5(unsigned int a1, __int128 *a2, uint64_t a3, int a4)
{

  return _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5Tm(a1, a2, a3, a4, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityScrollableModifier>, lazy protocol witness table accessor for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier, &type metadata for AccessibilityScrollableModifier);
}

unint64_t lazy protocol witness table accessor for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AccessibilityScrollableContextModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t protocol witness for static LazyContainerInputsProvider.configureContainer(inputs:) in conformance SwiftUILazyContainerInputsProvider()
{
  type metadata accessor for _SemanticFeature<Semantics_v6>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  result = static SemanticFeature.isEnabled.getter();
  if (result)
  {
    PreferenceKeys.remove(_:)();
    PreferenceKeys.remove(_:)();
    return PreferenceKeys.remove(_:)();
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityScrollableModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 96);

  if (v5)
  {
    if (v5 == 1)
    {
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_7;
    }

    v6 = *(a2 + 104);
    *(a1 + 96) = v5;
    *(a1 + 104) = v6;
    (**(v5 - 8))(a1 + 72, a2 + 72, v5);
  }

  else
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
  }

  *(a1 + 112) = *(a2 + 112);

LABEL_7:
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v7 = (a1 + 136);
  v8 = (a2 + 136);
  v9 = *(a2 + 248);
  if (v9 == 1)
  {
    v10 = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = v10;
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    v11 = *(a2 + 184);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = v11;
    v12 = *(a2 + 216);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = v12;
    v13 = *(a2 + 152);
    *v7 = *v8;
    *(a1 + 152) = v13;
  }

  else
  {
    *v7 = *v8;
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 161) = *(a2 + 161);
    *(a1 + 163) = *(a2 + 163);
    *(a1 + 164) = *(a2 + 164);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = v9;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = *(a2 + 280);
  }

  *(a1 + 288) = *(a2 + 288);

  return a1;
}

uint64_t type metadata completion function for LazyHGrid()
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

{
  return type metadata completion function for LazyHGrid();
}

uint64_t protocol witness for static LazyContainerInputsProvider.configureContainerContent(inputs:) in conformance SwiftUILazyContainerInputsProvider()
{
  static Semantics.v7.getter();
  result = isLinkedOnOrAfter(_:)();
  if (result)
  {
    return PreferenceKeys.remove(_:)();
  }

  return result;
}

uint64_t specialized static SwiftUILazyLayoutProvider.updateAccessibilityOutputs(_:inputs:placedSubviews:accessibilityRole:)(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v33[2] = *(a2 + 32);
  v33[3] = v7;
  v33[4] = *(a2 + 64);
  v34 = *(a2 + 80);
  v8 = *(a2 + 16);
  v33[0] = *a2;
  v33[1] = v8;
  v9 = *a4;
  v10 = *a1;
  v11 = *(a1 + 8);
  *&v22 = *a1;
  DWORD2(v22) = v11;
  v12 = PreferencesOutputs.subscript.getter();
  if ((v12 & 0x100000000) != 0 || (v13 = v12, *&v22 = v10, DWORD2(v22) = v11, v14 = PreferencesOutputs.subscript.getter(), (v14 & 0x100000000) != 0))
  {
    *&v22 = v10;
    DWORD2(v22) = v11;
    if ((PreferencesOutputs.subscript.getter() & 0x100000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = v14;
    v16 = *(a2 + 48);
    v26 = *(a2 + 32);
    v27 = v16;
    v28 = *(a2 + 64);
    v29 = *(a2 + 80);
    v17 = *(a2 + 16);
    v22 = *a2;
    v24 = DWORD1(v17);
    LOBYTE(v22) = 1;
    BYTE1(v22) = v9;
    DWORD1(v22) = _ViewInputs.accessibilityEnabled.getter();
    *(&v22 + 1) = __PAIR64__(v13, v15);
    v23 = a3;
    v25 = MEMORY[0x1E69E7CC0];
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type LayoutScrollableTransform and conformance LayoutScrollableTransform();
    Attribute.init<A>(body:value:flags:update:)();
  }

  LOBYTE(v22) = 0;
  PreferencesOutputs.subscript.setter();
LABEL_6:
  v18 = *(a1 + 8);
  *&v22 = *a1;
  DWORD2(v22) = v18;
  result = PreferencesOutputs.subscript.getter();
  if ((result & 0x100000000) == 0)
  {
    v20 = result;
    AccessibilityProperties.init()();
    v31 = 0x300000003;
    v32 = 0;
    outlined init with copy of AccessibilityProperties(v30, &v22 + 8);
    LOBYTE(v22) = 1;
    DWORD1(v22) = v20;
    v21 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AccessibilityScrollableModifier(&v22);
    _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5(v21, v33, *a1, *(a1 + 8));
    PreferencesOutputs.subscript.setter();
    return outlined destroy of AccessibilityProperties(v30);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutScrollableTransform and conformance LayoutScrollableTransform()
{
  result = lazy protocol witness table cache variable for type LayoutScrollableTransform and conformance LayoutScrollableTransform;
  if (!lazy protocol witness table cache variable for type LayoutScrollableTransform and conformance LayoutScrollableTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutScrollableTransform and conformance LayoutScrollableTransform);
  }

  return result;
}

uint64_t initializeWithCopy for LayoutScrollableTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

id closure #1 in EditMenuBridge.hostRemovedFromWindow()(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction);
  if (result)
  {
    return [result dismissMenu];
  }

  return result;
}

uint64_t AccessibilityRelationshipScope.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  return (*(a1 + 32))();
}

{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t one-time initialization function for ignore()
{
  _s7SwiftUI29AccessibilityChildBehaviorBox33_F0D4BE429651399A5FAD2DF7DCDF699DLLCyAA0cdE0V7CombineVGMaTm_1(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Ignore>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore);
  result = swift_allocObject();
  static AccessibilityChildBehavior.ignore = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityChildBehavior.Ignore(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore();
  *(a1 + 8) = result;
  return result;
}

void closure #1 in closure #1 in closure #1 in _UIHostingView.beginTransaction()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for _UIHostingView();
    swift_getWitnessTable();
    ViewGraphRootValueUpdater.updateGraph<A>(body:)();
  }
}

unint64_t lazy protocol witness table accessor for type _TaskModifier.Child and conformance _TaskModifier.Child()
{
  result = lazy protocol witness table cache variable for type _TaskModifier.Child and conformance _TaskModifier.Child;
  if (!lazy protocol witness table cache variable for type _TaskModifier.Child and conformance _TaskModifier.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TaskModifier.Child and conformance _TaskModifier.Child);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier>, type metadata accessor for _ViewModifier_Content<_TaskModifier.InnerModifier>);
    lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _ViewModifier_Content<_TaskModifier.InnerModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<_TaskModifier.InnerModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<_TaskModifier.InnerModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<_TaskModifier.InnerModifier>)
  {
    type metadata accessor for _TaskModifier.InnerModifier(255);
    lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier, type metadata accessor for _TaskModifier.InnerModifier);
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<_TaskModifier.InnerModifier>);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _TaskModifier()
{
  type metadata accessor for _TaskModifier.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier.Child and conformance _TaskModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier, type metadata accessor for _TaskModifier.InnerModifier);
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

uint64_t static UIViewRepresentable._makeView(view:inputs:)()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    _StringGuts.grow(_:)(44);

    v1 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor();
    type metadata accessor for _GraphValue();
    _GraphValue.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PlatformViewRepresentableAdaptor<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1580](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static CoreViewRepresentable.appendFeature(to:) in conformance PlatformViewRepresentableAdaptor<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return static PlatformViewRepresentable.appendFeature(to:)(a1, a2, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for PlatformViewRepresentableAdaptor<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id UIKitPlatformViewHost.makeEnvironmentWrapper(_:viewPhase:)()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for UIKitPlatformViewHost + 16);
  v2 = *v1;
  v3 = v1[8];
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = type metadata accessor for EnvironmentWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[direct field offset for EnvironmentWrapper.focusedValues];
  *v8 = v2;
  v8[8] = v3;
  *(v8 + 2) = v4;
  *(v8 + 3) = v5;
  v11.receiver = v7;
  v11.super_class = v6;

  v9 = objc_msgSendSuper2(&v11, sel_init);
  dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.setter();
  dispatch thunk of ViewGraphHostEnvironmentWrapper.phase.setter();

  return v9;
}

uint64_t type metadata accessor for EnvironmentWrapper()
{
  result = type metadata singleton initialization cache for EnvironmentWrapper;
  if (!type metadata singleton initialization cache for EnvironmentWrapper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UIKitPlatformViewHost.resolvedTraitCollection(baseTraitCollection:environment:wrapper:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = UITraitCollection._modifyingTraits(environmentWrapper:mutations:)();

  UICoreTraitCollectionResolutionOptions.init(rawValue:)();
  v5 = UITraitCollection.coreResolvedBaseTraitCollection(environment:wrapper:options:)();

  v6 = v5;
  v7 = UITraitCollection.coreResolvedGlassMaterialTraitCollection(environment:wrapper:)();

  return v7;
}

uint64_t UIKitPlatformViewHost.__allocating_init(_:host:environment:viewPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = specialized UIKitPlatformViewHost.init(_:host:environment:viewPhase:)(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v13;
}

uint64_t specialized UIKitPlatformViewHost.init(_:host:environment:viewPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  v17[1] = a2;
  v17[2] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v17 - v11;
  v14 = *a4;
  v13 = a4[1];
  LODWORD(a5) = *a5;
  swift_weakInit();
  v15 = v5 + *((*MEMORY[0x1E69E7D40] & *v5) + class metadata base offset for UIKitPlatformViewHost + 16);
  *v15 = 0;
  v15[8] = 0;
  *(v15 + 1) = xmmword_18CD76350;
  (*(v10 + 16))(v12, a1, AssociatedTypeWitness);
  v19 = v14;
  v20 = v13;
  v18 = a5;
  return UICorePlatformViewHost.init(_:host:environment:viewPhase:)();
}

uint64_t (*protocol witness for ViewGraphOwner.externalUpdateCount.modify in conformance _UIHostingView<A>(uint64_t **a1))()
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
  v2[4] = _UIHostingView.externalUpdateCount.modify(v2);
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance _UIHostingView<A>;
}

uint64_t (*_UIHostingView.externalUpdateCount.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = _UIHostingView.externalUpdateCount.getter();
  return _UIHostingView.externalUpdateCount.modify;
}

uint64_t _UIHostingView.externalUpdateCount.getter()
{
  v0 = UIHostingViewBase.viewGraph.getter();
  swift_beginAccess();
  v1 = *(v0 + 120);

  return v1;
}

void protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t _UIHostingView.externalUpdateCount.setter(uint64_t a1)
{
  v2 = UIHostingViewBase.viewGraph.getter();
  swift_beginAccess();
  *(v2 + 120) = a1;
}

uint64_t outlined consume of RepresentableContextValues.EnvironmentStorage(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesV02__D15_activeEditMenu33_2554D9DFC599D14C3CD7485EE0274C2FLLV_Tt1B5(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *a2;
  v10 = a2[5];
  if (v8 == 1)
  {
    if (v10 == 1)
    {
      outlined init with copy of AnyAccessibilityValue?(a1, v23, &lazy cache variable for type metadata for ActiveEditMenu?);
      outlined init with copy of AnyAccessibilityValue?(a2, v23, &lazy cache variable for type metadata for ActiveEditMenu?);
      v11 = 1;
      v12 = v4;
      v13 = v3;
      v14 = v6;
      v15 = v5;
      v16 = v7;
      v17 = 1;
LABEL_9:
      outlined consume of ActiveEditMenu?(v12, v13, v14, v15, v16, v17);
      return v11;
    }

    v19 = a2[4];
    v20 = a2[3];
    v21 = a2[2];
    v22 = a2[1];
    outlined init with copy of AnyAccessibilityValue?(a1, v23, &lazy cache variable for type metadata for ActiveEditMenu?);
    outlined init with copy of AnyAccessibilityValue?(a2, v23, &lazy cache variable for type metadata for ActiveEditMenu?);
  }

  else
  {
    v19 = a2[4];
    v20 = a2[3];
    v21 = a2[2];
    v22 = a2[1];
    if (v10 != 1)
    {
      outlined init with copy of AnyAccessibilityValue?(a1, v23, &lazy cache variable for type metadata for ActiveEditMenu?);
      outlined init with copy of AnyAccessibilityValue?(a2, v23, &lazy cache variable for type metadata for ActiveEditMenu?);
      outlined copy of ActiveEditMenu?(v4, v3, v6, v5, v7, v8);
      outlined consume of ActiveEditMenu?(v9, v22, v21, v20, v19, v10);
      v11 = v4 == v9;

      v12 = v4;
      v13 = v3;
      v14 = v6;
      v15 = v5;
      v16 = v7;
      v17 = v8;
      goto LABEL_9;
    }

    outlined init with copy of AnyAccessibilityValue?(a1, v23, &lazy cache variable for type metadata for ActiveEditMenu?);
    outlined init with copy of AnyAccessibilityValue?(a2, v23, &lazy cache variable for type metadata for ActiveEditMenu?);
    outlined copy of ActiveEditMenu?(v4, v3, v6, v5, v7, v8);
  }

  outlined consume of ActiveEditMenu?(v4, v3, v6, v5, v7, v8);
  outlined consume of ActiveEditMenu?(v9, v22, v21, v20, v19, v10);
  return 0;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.__Key_activeEditMenu(uint64_t a1, uint64_t a2)
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
  return _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesV02__D15_activeEditMenu33_2554D9DFC599D14C3CD7485EE0274C2FLLV_Tt1B5(v5, v7);
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance UndoManagerKey(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
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
    type metadata accessor for NSUndoManager();
    v6 = v2;
    v7 = v3;
    v8 = static NSObject.== infix(_:_:)();

    return v8 & 1;
  }

  return result;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance InheritedTraitCollectionKey(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
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
    type metadata accessor for UITraitCollection();
    v6 = v2;
    v7 = v3;
    v8 = static NSObject.== infix(_:_:)();

    return v8 & 1;
  }

  return result;
}

void *assignWithCopy for AlertTransformModifier(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void type metadata accessor for KeyboardShortcut?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI16KeyboardShortcutVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18BDD3FEC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 4) ^ *(a1 + 4) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for WeakBox<UIWindowScene>?(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for WeakBox<UISceneConnectionOptions>(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined consume of RepresentableContextValues?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result != 1)
  {

    return outlined consume of RepresentableContextValues.EnvironmentStorage(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_9Tm_1()
{

  return swift_deallocObject();
}

unint64_t type metadata accessor for NSUndoManager()
{
  result = lazy cache variable for type metadata for NSUndoManager;
  if (!lazy cache variable for type metadata for NSUndoManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUndoManager);
  }

  return result;
}

uint64_t View.accessibilityElement(children:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;

  MEMORY[0x18D00A570](&v6, a2, &type metadata for AccessibilityContainerModifier, a3);
}

uint64_t assignWithCopy for AccessibilityLargeContentViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance ButtonOutsetKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t static _TaskValueModifier._makeViewList(modifier:inputs:body:)()
{
  type metadata accessor for _TaskValueModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for _TaskValueModifier.InnerModifier();
  type metadata accessor for _TaskValueModifier.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

uint64_t UIKitPlatformViewHost.focusedValues.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for UIKitPlatformViewHost + 16);
  v4 = *v3;
  v5 = v3[8];
  *v3 = *a1;
  v3[8] = v2;
  v6 = *(a1 + 16);
  v9 = v4;
  v10 = v5;
  v7 = *(v3 + 1);
  *(v3 + 1) = v6;
  v11 = v7;
  UIKitPlatformViewHost.focusedValues.didset(&v9);
}

uint64_t UIKitPlatformViewHost.focusedValues.didset(uint64_t result)
{
  if (*(result + 24) != *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for UIKitPlatformViewHost + 16) + 24))
  {
    return MEMORY[0x1EEE4C620](256, 0);
  }

  return result;
}

uint64_t @objc EnvironmentWrapper.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = EnvironmentWrapper.isEqual(_:)(v8);

  _sypSgWOhTm_9(v8, type metadata accessor for Any?);
  return v6 & 1;
}

uint64_t EnvironmentWrapper.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v18);
  v3 = v19;
  if (v19)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v18, v19);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for EnvironmentWrapper();
  v17.receiver = v1;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, sel_isEqual_, v9);
  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_9;
  }

  outlined init with copy of Any?(a1, v18);
  if (!v19)
  {
    _sypSgWOhTm_9(v18, type metadata accessor for Any?);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v14 = 0;
    return v14 & 1;
  }

  v12 = v16[1];

  v13 = PropertyList.mayNotBeEqual(to:)();

  v14 = v13 ^ 1;
  return v14 & 1;
}

BOOL UIKitPlatformViewHost.isPlatformFocusContainerHost.getter()
{
  v1 = v0;
  swift_unknownObjectWeakInit();

  v2 = type metadata accessor for UIKitPlatformViewHost.UnarySubtreeSequence();
  swift_getWitnessTable();
  Sequence.first(where:)();
  (*(*(v2 - 8) + 8))(v5, v2);
  v3 = v6;
  if (v6)
  {
  }

  return v3 != 0;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance UIKitPlatformViewHost<A>.UnarySubtreeSequence@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  UIKitPlatformViewHost.UnarySubtreeSequence.makeIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t UIKitPlatformViewHost.UnarySubtreeSequence.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for _IteratorBox<_ClosureBasedIterator<UIView>>();
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in UIKitPlatformViewHost.UnarySubtreeSequence.makeIterator();
  *(result + 24) = v2;
  *a1 = result;
  return result;
}

uint64_t sub_18BDD4BC4()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

void type metadata accessor for _IteratorBox<_ClosureBasedIterator<UIView>>()
{
  if (!lazy cache variable for type metadata for _IteratorBox<_ClosureBasedIterator<UIView>>)
  {
    type metadata accessor for _ClosureBasedIterator<UIView>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _ClosureBasedIterator<UIView> and conformance _ClosureBasedIterator<A>, type metadata accessor for _ClosureBasedIterator<UIView>);
    v0 = type metadata accessor for _IteratorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _IteratorBox<_ClosureBasedIterator<UIView>>);
    }
  }
}

void closure #1 in UIKitPlatformViewHost.UnarySubtreeSequence.makeIterator()(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v4 = [Strong subviews];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 != 1)
  {
    v10 = 0;
LABEL_16:
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

LABEL_17:
    *a1 = v3;
    return;
  }

  v7 = [v3 subviews];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x18D00E9C0](0, v8);
    goto LABEL_10;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
LABEL_10:
    v10 = v9;
LABEL_15:

    goto LABEL_16;
  }

  __break(1u);
}

uint64_t closure #1 in UIKitPlatformViewHost.isPlatformFocusContainerHost.getter(void **a1)
{
  v1 = *a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScrollView);
  v2 = v1;
  result = swift_dynamicCast();
  if (result)
  {
    v4 = result;

    return v4;
  }

  return result;
}

uint64_t protocol witness for CoreViewRepresentable.makeViewProvider(context:) in conformance PlatformViewRepresentableAdaptor<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PlatformViewRepresentableAdaptor.makeViewProvider(context:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t PlatformViewRepresentableAdaptor.makeViewProvider(context:)(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  v4 = type metadata accessor for PlatformViewRepresentableContext();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v18 - v6);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = type metadata accessor for UIViewRepresentableContext();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v5 + 16))(v7, a1, v4, v12);
  swift_getWitnessTable();
  v15 = UIViewRepresentableContext.init<A>(_:)(v7, v14);
  v16 = (*(v9 + 32))(v14, v8, v9, v15);
  (*(v11 + 8))(v14, v10);
  return v16;
}

uint64_t type metadata completion function for UIViewRepresentableContext()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

__n128 UIViewRepresentableContext.init<A>(_:)@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for UIViewRepresentableContext();
  v4 = type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.coordinator.getter();
  v5 = *a1;
  v6 = a1[1];

  PlatformViewRepresentableContext.values.getter();
  (*(*(v4 - 8) + 8))(a1, v4);
  outlined copy of RepresentableContextValues.EnvironmentStorage(v8, *(&v8 + 1), v9);

  outlined consume of RepresentableContextValues.EnvironmentStorage(v8, *(&v8 + 1), v9);
  result.n128_u64[0] = v5;
  result.n128_u64[1] = v6;
  *a2 = result;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

uint64_t outlined copy of RepresentableContextValues.EnvironmentStorage(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t protocol witness for static CoreViewRepresentable.isViewController.getter in conformance ListRepresentable<A, B>()
{
  return MEMORY[0x1EEDE1578]();
}

{
  return MEMORY[0x1EEDE1578]();
}

uint64_t protocol witness for static CoreViewRepresentable.platformView(for:) in conformance PlatformViewRepresentableAdaptor<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  WitnessTable = swift_getWitnessTable();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v3, a2, WitnessTable, v5);

  return swift_unknownObjectRetain();
}

uint64_t destroy for UIViewRepresentableContext(uint64_t a1)
{

  outlined consume of RepresentableContextValues.EnvironmentStorage(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 8);
  v5 = (a1 + *(v3 + 80) + 33) & ~*(v3 + 80);

  return v4(v5, AssociatedTypeWitness);
}

uint64_t PlatformViewRepresentableAdaptor.updateViewProvider(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  swift_getWitnessTable();
  v5 = type metadata accessor for PlatformViewRepresentableContext();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v18 - v7);
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = type metadata accessor for UIViewRepresentableContext();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  (*(v6 + 16))(v8, a2, v5, v13);
  swift_getWitnessTable();
  v16 = UIViewRepresentableContext.init<A>(_:)(v8, v15);
  (*(v10 + 40))(v18, v15, v9, v10, v16);
  return (*(v12 + 8))(v15, v11);
}

uint64_t PlatformViewRepresentableAdaptor.sizeThatFits(_:provider:context:)(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a5;
  v24 = a2;
  v25 = a4;
  v26 = a1;
  v27 = a3;
  swift_getWitnessTable();
  v9 = type metadata accessor for PlatformViewRepresentableContext();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v23 - v11);
  v13 = *(a7 + 24);
  v14 = type metadata accessor for UIViewRepresentableContext();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  (*(v10 + 16))(v12, a6, v9, v16);
  swift_getWitnessTable();
  v19 = UIViewRepresentableContext.init<A>(_:)(v12, v18);
  v20 = *(v13 + 80);
  v30 = v24 & 1;
  v29 = v25 & 1;
  v21 = v20(v26, v19);
  (*(v15 + 8))(v18, v14);
  return v21;
}

void *static PlatformViewRepresentableAdaptor.layoutOptions(_:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  result = (*(a1 + 112))(&v4);
  *a2 = v4;
  return result;
}

uint64_t outlined destroy of _TaskModifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of _TaskModifier.InnerModifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of SearchToolbarItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *initializeWithCopy for _TaskModifier.InnerModifier(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(type metadata accessor for _TaskModifier(0) + 20);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = *(a3 + 20);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 1) = v13;

  return a1;
}

uint64_t destroy for _TaskModifier.InnerModifier(uint64_t a1)
{

  v2 = *(type metadata accessor for _TaskModifier(0) + 20);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance _TaskModifier.InnerModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  outlined init with copy of _TaskModifier.InnerModifier(v3, &v15 - v9, type metadata accessor for _TaskModifier.InnerModifier);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  outlined init with take of _TaskModifier2(v10, v12 + v11, type metadata accessor for _TaskModifier.InnerModifier);
  outlined init with copy of _TaskModifier.InnerModifier(v3, v7, type metadata accessor for _TaskModifier.InnerModifier);
  v13 = swift_allocObject();
  result = outlined init with take of _TaskModifier2(v7, v13 + v11, type metadata accessor for _TaskModifier.InnerModifier);
  *a3 = partial apply for closure #1 in _TaskModifier.InnerModifier.body(content:);
  a3[1] = v12;
  a3[2] = partial apply for closure #2 in _TaskModifier.InnerModifier.body(content:);
  a3[3] = v13;
  return result;
}

uint64_t ModifiedContent<>.accessibilityLabel<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  ModifiedContent<>.accessibilityLabel(_:)(v8, v9, v11 & 1, v13, a2, a3);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

uint64_t ModifiedContent<>.accessibilityLabel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Text>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CD63400;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3 & 1;
  *(v12 + 56) = a4;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityLabelStorage(_:), a5, a6);
}

char *assignWithCopy for _TaskModifier(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a3 + 20);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  return a1;
}

void @objc _UIHostingView.didAddSubview(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _UIHostingView.didAddSubview(_:)(v4);
}

Swift::Void __swiftcall _UIHostingView.didAddSubview(_:)(UIView *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v17.receiver = v1;
  v17.super_class = type metadata accessor for _UIHostingView();
  [(UIView *)&v17 didAddSubview:a1];
  if (*(v1 + *((*v3 & *v1) + 0x200)))
  {
    return;
  }

  v4 = _UIHostingView.foreignSubviews.getter();
  [v4 addObject_];

  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    return;
  }

  if (isAppleInternalBuild()())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v6 = 0xEE0077656956676ELL;
      v7 = 0x6974736F4849555FLL;
      goto LABEL_7;
    }
  }

  v6 = 0x800000018CD5A5C0;
  v7 = 0xD000000000000018;
LABEL_7:
  v8 = static os_log_type_t.fault.getter();
  v9 = static Log.runtimeIssuesLog.getter();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315650;
    swift_getObjectType();
    v12 = _typeName(_:qualified:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v16);
    *(v10 + 22) = 2080;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v16);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_18BD4A000, v9, v8, "Adding '%s' as a subview of %s is not supported and may result in a broken view hierarchy. Add your view above %s in a common superview or insert it into your SwiftUI content in a UIViewRepresentable instead.", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x18D0110E0](v11, -1, -1);
    MEMORY[0x18D0110E0](v10, -1, -1);
  }

  else
  {
  }
}

void type metadata accessor for Task<(), Never>()
{
  if (!lazy cache variable for type metadata for Task<(), Never>)
  {
    v0 = type metadata accessor for Task();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Task<(), Never>);
    }
  }
}

uint64_t partial apply for closure #1 in _TaskModifier.InnerModifier.body(content:)(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

void type metadata accessor for State<Task<(), Never>?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t partial apply for closure #1 in closure #1 in _TaskModifier.InnerModifier.body(content:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in _TaskModifier.InnerModifier.body(content:)(a1, v4, v5, v6);
}

uint64_t closure #1 in closure #1 in _TaskModifier.InnerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v7();
}

uint64_t closure #1 in _TaskModifier.InnerModifier.body(content:)(char *a1)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &a1[*(type metadata accessor for _TaskModifier.InnerModifier(0) + 20)];
  v6 = v5[1];
  v16 = *v5;
  v17 = v6;
  type metadata accessor for State<Task<(), Never>?>(0, &lazy cache variable for type metadata for State<Task<(), Never>?>, type metadata accessor for Task<(), Never>?, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (!v15[1])
  {
    v8 = *a1;
    v7 = *(a1 + 1);
    v9 = *(type metadata accessor for _TaskModifier(0) + 20);
    v10 = type metadata accessor for TaskPriority();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v4, &a1[v9], v10);
    (*(v11 + 56))(v4, 0, 1, v10);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v8;
    v12[5] = v7;

    v13 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #1 in _TaskModifier.InnerModifier.body(content:), v12);
    outlined destroy of _TaskModifier(v4, type metadata accessor for TaskPriority?);
    v16 = v13;
    if (v6)
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

void type metadata accessor for UTType?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s22UniformTypeIdentifiers6UTTypeVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for UTType();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s22UniformTypeIdentifiers6UTTypeVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s22UniformTypeIdentifiers6UTTypeVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s22UniformTypeIdentifiers6UTTypeVSgMaTm_5(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _ClosureBasedIterator<UIView>()
{
  if (!lazy cache variable for type metadata for _ClosureBasedIterator<UIView>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView);
    v0 = type metadata accessor for _ClosureBasedIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ClosureBasedIterator<UIView>);
    }
  }
}

void type metadata accessor for AnyIterator<UIView>()
{
  if (!lazy cache variable for type metadata for AnyIterator<UIView>[0])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView);
    v0 = type metadata accessor for AnyIterator();
    if (!v1)
    {
      atomic_store(v0, lazy cache variable for type metadata for AnyIterator<UIView>);
    }
  }
}

uint64_t Scene.environment<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v9 = a1;
  Scene.environment<A>(_:_:)(KeyPath, &v9, a2, a4);
}

uint64_t sub_18BDD6EDC@<X0>(uint64_t *a1@<X8>)
{
  result = specialized EnvironmentValues.subscript.getter();
  *a1 = result;
  return result;
}

__n128 sub_18BDD6F48(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t project #1 <A>(_:) in AppSceneDelegate.scene(_:willConnectTo:options:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ObjectFallbackDelegateBox();
  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UISceneDelegate);
  swift_unknownObjectRetain();
  swift_dynamicCast();
  *(a2 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox) = ObjectFallbackDelegateBox.__allocating_init(_:)(v4);
}

uint64_t ObjectFallbackDelegateBox.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t Menu.init(content:label:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Menu();
  v7 = (a3 + *(v6 + 56));
  *v7 = 0;
  v7[1] = 0;
  v8 = (a3 + *(v6 + 60));
  *v8 = 0;
  v8[1] = 0;
  v12 = a2(v6, v9, v10, v11);
  return a1(v12);
}

uint64_t initializeWithCopy for Menu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*v16 < 0xFFFFFFFFuLL)
  {
    *v15 = *v16;
  }

  else
  {
    v17 = *(v16 + 8);
    *v15 = *v16;
    *(v15 + 8) = v17;
  }

  v18 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*v19 < 0xFFFFFFFFuLL)
  {
    *v18 = *v19;
  }

  else
  {
    v20 = *(v19 + 8);
    *v18 = *v19;
    *(v18 + 8) = v20;
  }

  return a1;
}

uint64_t destroy for Menu(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  result = (*(v6 + 8))(v8);
  v10 = ((*(v7 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (*v10 >= 0xFFFFFFFFuLL)
  {
  }

  if (*((v10 + 23) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t destroy for SelectionEditMenuModifier.Child(id *a1)
{
}

uint64_t initializeWithCopy for PlatformItemListGenerator(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  v5 = v3;

  return a1;
}

id PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v9 = *MEMORY[0x1E698D3F8];
    *&v10[4] = *a2;
    *&v10[20] = *(a2 + 16);
    *&v10[84] = *(a2 + 80);
    *&v10[68] = *(a2 + 64);
    *&v10[52] = *(a2 + 48);
    *&v10[36] = *(a2 + 32);
    *a4 = result;
    *(a4 + 8) = a1;
    *(a4 + 28) = *&v10[16];
    *(a4 + 12) = *v10;
    *(a4 + 92) = *&v10[80];
    *(a4 + 76) = *&v10[64];
    *(a4 + 60) = *&v10[48];
    *(a4 + 44) = *&v10[32];
    *(a4 + 100) = a3 & 1;
    *(a4 + 104) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CoreSheetPresentationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1608](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for Attribute<AccessibilityNodeList>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for Attribute<PlatformItemList>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Attribute();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for Attribute<EnvironmentValues>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type SecureDrawingViewGraphFeature and conformance SecureDrawingViewGraphFeature()
{
  result = lazy protocol witness table cache variable for type SecureDrawingViewGraphFeature and conformance SecureDrawingViewGraphFeature;
  if (!lazy protocol witness table cache variable for type SecureDrawingViewGraphFeature and conformance SecureDrawingViewGraphFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureDrawingViewGraphFeature and conformance SecureDrawingViewGraphFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t assignWithCopy for SheetPresentationModifier(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  *a1 = *a2;

  *(a1 + 8) = *(v4 + 8);

  *(a1 + 16) = *(v4 + 16);
  v6 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  v7 = v4 & 0xFFFFFFFFFFFFFFF8;
  v4 &= 0xFFFFFFFFFFFFFFF8;
  v10 = *(v4 + 24);
  v9 = (v4 + 24);
  v8 = v10;
  if (*v6 < 0xFFFFFFFF)
  {
    if (v8 >= 0xFFFFFFFF)
    {
      v12 = v9[1];
      *v6 = v8;
      *((a1 & 0xFFFFFFFFFFFFFFF8) + 32) = v12;

      goto LABEL_8;
    }

LABEL_7:
    *v6 = *v9;
    goto LABEL_8;
  }

  if (v8 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  v11 = v9[1];
  *v6 = v8;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 32) = v11;

LABEL_8:
  v13 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 8);
  *v13 = *v14;
  *(v13 + 8) = v15;

  *(v13 + 16) = *(v14 + 16);
  *(v13 + 17) = *(v14 + 17);
  v16 = *(*(a3 + 24) - 8);
  v17 = v16 + 24;
  v18 = *(v16 + 80);
  v19 = (v18 + 18 + v13) & ~v18;
  v20 = (v18 + 18 + v14) & ~v18;
  (*(v16 + 24))(v19, v20);
  *(*(v17 + 40) + v19) = *(*(v17 + 40) + v20);
  return a1;
}

uint64_t View.sheet<A>(isPresented:onDismiss:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  SheetPresentationModifier<>.init(isPresented:onDismiss:sheetContent:placement:drawsBackground:)(a1, a2, a3, a4, a5, a6, a7, a12, v19, 1, a9, a11);

  outlined copy of AppIntentExecutor?(a4);
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v15 = v14;
  v16 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>();

  *&v21 = a9;
  *(&v21 + 1) = v15;
  *&v22 = a11;
  *(&v22 + 1) = v16;
  v17 = type metadata accessor for SheetPresentationModifier();
  MEMORY[0x18D00A570](v19, a8, v17, a10);
  v21 = v19[0];
  v22 = v19[1];
  v23[0] = v20[0];
  *(v23 + 11) = *(v20 + 11);
  return (*(*(v17 - 8) + 8))(&v21, v17);
}

double SheetPresentationModifier<>.init(isPresented:onDismiss:sheetContent:placement:drawsBackground:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, _OWORD *a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(0, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  *&v25 = a1;
  *(&v25 + 1) = a2;
  LOBYTE(v26) = a3;
  *(&v26 + 1) = a4;
  *v27 = a5;
  *&v27[8] = a6;
  *&v27[16] = a7;
  v27[24] = a8;
  v27[25] = a10;
  v28 = a11;
  v29 = v18;
  v30 = a12;
  v31 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>();
  v19 = type metadata accessor for SheetPresentationModifier();
  (*(*(v29 - 8) + 32))(&v25 + *(v19 + 68));
  *(&v25 + *(v19 + 72)) = 2;
  *&v32[11] = *&v27[11];
  v20 = v26;
  *v32 = *v27;
  *a9 = v25;
  a9[1] = v20;
  a9[2] = *v32;
  result = *&v32[11];
  *(a9 + 43) = *&v32[11];
  return result;
}

uint64_t initializeWithCopy for SheetPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = a1 & 0xFFFFFFFFFFFFFFF8;
  v7 = a2 & 0xFFFFFFFFFFFFFFF8;
  v8 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v9 = *v8;

  if (v9 < 0xFFFFFFFF)
  {
    *(v6 + 24) = *v8;
  }

  else
  {
    v10 = v8[1];
    *(v6 + 24) = v9;
    *(v6 + 32) = v10;
  }

  v11 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  *v11 = *v12;
  *(v11 + 8) = v13;
  *(v11 + 16) = *(v12 + 16);
  *(v11 + 17) = *(v12 + 17);
  v14 = *(a3 + 24);
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v17 = v15 + 16;
  v18 = *(v15 + 80);
  v19 = (v18 + 18 + v11) & ~v18;
  v20 = (v18 + 18 + v12) & ~v18;

  v16(v19, v20, v14);
  *(*(v17 + 48) + v19) = *(*(v17 + 48) + v20);
  return a1;
}

uint64_t destroy for SheetPresentationModifier(uint64_t a1, uint64_t a2)
{

  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 24) >= 0xFFFFFFFFuLL)
  {
  }

  v5 = *(*(a2 + 24) - 8);
  v6 = *(v5 + 8);
  v7 = (((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 18) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TransactionalPreferenceTransformModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for CoreSheetPresentationModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BDD8120()
{
  type metadata accessor for SheetPresentationModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for CoreSheetPresentationModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18BDD8264()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for StaticIf();
  lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t implicit closure #2 in static ContextMenuModifierCore._makeView(modifier:inputs:body:)()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  v0 = GraphHost.intern<A>(_:for:id:)();

  return v0;
}

unint64_t lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate()
{
  result = lazy protocol witness table cache variable for type AllowPresentationPredicate and conformance AllowPresentationPredicate;
  if (!lazy protocol witness table cache variable for type AllowPresentationPredicate and conformance AllowPresentationPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowPresentationPredicate and conformance AllowPresentationPredicate);
  }

  return result;
}

uint64_t specialized static AllowPresentationPredicate.evaluate(inputs:)()
{
  lazy protocol witness table accessor for type IsInImmersiveContext and conformance IsInImmersiveContext();
  PropertyList.subscript.getter();
  if ((v2 & 1) == 0)
  {
    lazy protocol witness table accessor for type IsInVolumetricContext and conformance IsInVolumetricContext();
    PropertyList.subscript.getter();
    if (v1 != 1)
    {
      return 1;
    }

    static Semantics.v7.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      return 1;
    }
  }

  MEMORY[0x18D009810](0xD000000000000040, 0x800000018CD3E970);
  return 0;
}

unint64_t lazy protocol witness table accessor for type IsInImmersiveContext and conformance IsInImmersiveContext()
{
  result = lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext;
  if (!lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext;
  if (!lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext;
  if (!lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext;
  if (!lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext;
  if (!lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsInVolumetricContext and conformance IsInVolumetricContext()
{
  result = lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext;
  if (!lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext;
  if (!lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext;
  if (!lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext;
  if (!lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext;
  if (!lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext);
  }

  return result;
}

uint64_t static TransactionalPreferenceTransformModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v27 = *MEMORY[0x1E69E9840];
  v26[0] = *a2;
  *(v26 + 12) = *(a2 + 12);
  v3 = *(a2 + 28);
  v13 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  v11 = *(a2 + 60);
  v12 = *(a2 + 76);
  type metadata accessor for TransactionalPreferenceTransformModifier();
  type metadata accessor for _GraphValue();
  *v18 = _GraphValue.value.getter();
  *&v18[4] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  IsAnimated = type metadata accessor for IsAnimated();
  WitnessTable = swift_getWitnessTable();
  v6 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v14, IsAnimated, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  v8 = AGGraphSetFlags();
  *v18 = v26[0];
  *&v18[12] = *(v26 + 12);
  v19 = v3;
  v20 = v13;
  v21 = v4;
  v22 = v5;
  v23 = v11;
  v24 = v12;
  a3(v8, v18);
  *v18 = v4;
  *&v18[8] = v5;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t type metadata accessor for IsAnimated()
{
  return __swift_instantiateGenericMetadata();
}

{
  return swift_getGenericMetadata();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance IsAnimated<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

double static OnTestViewModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, unint64_t *)@<X2>, uint64_t *a3@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  v23 = *(a1 + 36);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v20 = *(a1 + 60);
  v21 = *(a1 + 76);
  v22 = v7;
  v11 = one-time initialization token for currentPPTTest;

  if (v11 != -1)
  {
    swift_once();
  }

  v18 = static CachedEnvironment.ID.currentPPTTest;
  swift_beginAccess();
  type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for PPTTestCase?, &type metadata for PPTTestCase, MEMORY[0x1E69E6720]);
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type OnTestEffect and conformance OnTestEffect();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphGetFlags();
  v12 = AGGraphSetFlags();
  v24 = v4;
  v25 = v3;
  v26 = v5;
  v27 = v6;
  v28 = v22;
  v29 = v23;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v33 = v20;
  v34 = v21;
  a2(&v18, v12, &v24);
  v24 = v9;
  LODWORD(v25) = v10;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v24 = v18;
    LODWORD(v25) = LODWORD(v19);
    v13 = PreferencesOutputs.subscript.getter();
    if ((v13 & 0x100000000) != 0)
    {
      v14 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v14 = v13;
    }

    v24 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v14);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for [PPTTestCase.Name], &type metadata for PPTTestCase.Name, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type OnTestViewModifier.AddTestCase and conformance OnTestViewModifier.AddTestCase();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v24) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *a3 = v18;
  result = v19;
  *(a3 + 1) = v19;
  return result;
}

void _s7SwiftUI11PPTTestCaseVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type OnTestEffect and conformance OnTestEffect()
{
  result = lazy protocol witness table cache variable for type OnTestEffect and conformance OnTestEffect;
  if (!lazy protocol witness table cache variable for type OnTestEffect and conformance OnTestEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnTestEffect and conformance OnTestEffect);
  }

  return result;
}

__n128 __swift_memcpy25_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t static SubscriptionView._makeView(view:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a2[3];
  v33 = a2[2];
  v34 = v11;
  v35 = a2[4];
  v36 = *(a2 + 20);
  v12 = a2[1];
  v31 = *a2;
  v32 = v12;
  type metadata accessor for SubscriptionView();
  type metadata accessor for _GraphValue();
  v13 = _GraphValue.value.getter();
  type metadata accessor for SubscriptionLifetime();
  v17 = v13;
  v18 = SubscriptionLifetime.__allocating_init()();
  v19 = default argument 2 of SubscriptionView.Subscriber.init(view:subscriptionLifetime:actionBox:)(a3, a4, a5, a6);
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v25 = type metadata accessor for SubscriptionView.Subscriber();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, v24, v25, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);

  AGGraphSetFlags();
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  LODWORD(v27) = v10;
  _GraphValue.subscript.getter();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t initializeBufferWithCopyOfBuffer for SubscriptionView.Subscriber(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t closure #1 in static SubscriptionView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v12[2] = type metadata accessor for SubscriptionView();
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t View.onReceive<A>(_:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24[1] = a6;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v22, v21, v17);
  (*(v13 + 16))(v15, a1, a5);
  SubscriptionView.init(content:publisher:action:)(v19, v15, a2, a3, a5, a4, a7);
}

uint64_t SubscriptionView.init(content:publisher:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v12 = type metadata accessor for SubscriptionView();
  result = (*(*(a5 - 8) + 32))(a7 + *(v12 + 52), a2, a5);
  v14 = (a7 + *(v12 + 56));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t default argument 2 of SubscriptionView.Subscriber.init(view:subscriptionLifetime:actionBox:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for MutableBox();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v10[0] = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v10[1] = v8;
  return MEMORY[0x18D002830](v10);
}

uint64_t initializeWithCopy for SubscriptionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;

  return a1;
}

uint64_t destroy for SubscriptionView(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) - 8) + 8;
  (*v4)();
  (*(*(*(a2 + 16) - 8) + 8))((*(v4 + 56) + a1 + *(*(*(a2 + 16) - 8) + 80)) & ~*(*(*(a2 + 16) - 8) + 80));
}

void type metadata accessor for TextField<Text>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

void type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>);
    }
  }
}

uint64_t initializeWithCopy for NavigationTitleStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v6, v7);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v4;
  }

  else
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  v9 = *(a2 + 32);
  if (v9 != 1)
  {
  }

  *(a1 + 32) = v9;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t outlined destroy of NavigationTitleStorage?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<Int>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for Published<Visibility>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI22NavigationTitleStorageVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_2(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t destroy for _PresentationTransitionOutputs(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t destroy for NavigationTitleStorage(uint64_t a1)
{
  if (*(a1 + 24))
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  if (*(a1 + 32) != 1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier()
{
  result = lazy protocol witness table cache variable for type RefreshScopeModifier and conformance RefreshScopeModifier;
  if (!lazy protocol witness table cache variable for type RefreshScopeModifier and conformance RefreshScopeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RefreshScopeModifier and conformance RefreshScopeModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier()
{
  result = lazy protocol witness table cache variable for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier;
  if (!lazy protocol witness table cache variable for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DefaultFocusSectionResponderFilter(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t ToolbarBridge.willAppear<A>(hostingController:)(void *a1)
{
  ToolbarBridge.updateToolbarVisibility<A>(hostingController:)(a1);

  return ToolbarBridge.navigationItemWillAppear<A>(hostingController:)(a1);
}

uint64_t ToolbarBridge.navigationItemWillAppear<A>(hostingController:)(uint64_t result)
{
  if (*(*(v1 + direct field offset for ToolbarBridge.navigationAdaptor) + 16))
  {
    MEMORY[0x1EEE9AC00](result);

    static Update.ensure<A>(_:)();
  }

  return result;
}

uint64_t BarAppearanceBridge.willAppear<A>(animated:hostingController:)(char a1, void *a2)
{
  BarAppearanceBridge.UpdateContext.init<A>(hostingController:)(a2, v4);
  BarAppearanceBridge.willAppear(animated:updateContext:)(a1, v4);
  return outlined destroy of BarAppearanceBridge.UpdateContext(v4);
}

uint64_t BarAppearanceBridge.willAppear(animated:updateContext:)(char a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of BarAppearanceBridge.UpdateContext(a2, &v77);
  v4 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  swift_beginAccess();
  v53 = v4;
  outlined assign with take of BarAppearanceBridge.UpdateContext?(&v77, v3 + v4, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Published<Visibility>);
  swift_endAccess();
  v5 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
  swift_beginAccess();
  v6 = *(v3 + v5);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v3 + v5) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v55 = *(v3 + v5);

  v14 = 0;
  while (v12)
  {
LABEL_11:
    outlined init with copy of ToolbarPlacement.Role(*(v55 + 48) + 40 * (__clz(__rbit64(v12)) | (v14 << 6)), v75);
    v73[0] = v75[0];
    v73[1] = v75[1];
    v74 = v76;
    swift_beginAccess();
    v24 = *(v3 + v5);
    if (!*(v24 + 16))
    {
      goto LABEL_32;
    }

    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v73);
    if ((v26 & 1) == 0)
    {
      goto LABEL_32;
    }

    v27 = (*(v24 + 56) + 80 * v25);
    v77 = *v27;
    v29 = v27[2];
    v28 = v27[3];
    v30 = *(v27 + 57);
    v78 = v27[1];
    v79 = v29;
    *(v80 + 9) = v30;
    v80[0] = v28;
    swift_endAccess();
    v69 = v77;
    v70 = v78;
    v71 = v79;
    v72 = v80[0];
    v31 = BYTE8(v80[1]);
    outlined init with copy of ToolbarAppearanceConfiguration(&v77, &v65);
    if (a1)
    {
      v32 = static Animation.default.getter();
    }

    else
    {

      v32 = 0;
    }

    outlined init with copy of ToolbarPlacement.Role(v73, v64);
    v65 = v69;
    v66 = v70;
    v67 = v71;
    *v68 = v72;
    v56 = v32;
    *&v68[16] = v32;
    v57 = v31;
    v68[24] = v31;
    swift_beginAccess();
    outlined init with copy of ToolbarAppearanceConfiguration(&v65, &v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v3 + v5);
    v34 = v59;
    *(v3 + v5) = 0x8000000000000000;
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
    v37 = v34[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_endAccess();
      __break(1u);
LABEL_33:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v41 = v36;
    if (v34[3] < v40)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_33;
      }

LABEL_21:
      if (v41)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v50 = v35;
    specialized _NativeDictionary.copy()();
    v35 = v50;
    if (v41)
    {
LABEL_4:
      v15 = v59;
      v16 = (v59[7] + 80 * v35);
      v60 = *v16;
      v17 = v16[1];
      v18 = v16[2];
      v19 = v16[3];
      *&v63[9] = *(v16 + 57);
      v62 = v18;
      *v63 = v19;
      v61 = v17;
      v21 = v67;
      v20 = *v68;
      v22 = v66;
      *(v16 + 57) = *&v68[9];
      v16[2] = v21;
      v16[3] = v20;
      v16[1] = v22;
      *v16 = v65;
      outlined destroy of ToolbarAppearanceConfiguration(&v60);
      outlined destroy of ToolbarPlacement.Role(v64);
      goto LABEL_5;
    }

LABEL_22:
    v15 = v59;
    v59[(v35 >> 6) + 8] |= 1 << v35;
    v43 = v35;
    outlined init with copy of ToolbarPlacement.Role(v64, v15[6] + 40 * v35);
    v44 = (v15[7] + 80 * v43);
    v45 = *&v68[9];
    v47 = v67;
    v46 = *v68;
    v44[1] = v66;
    v44[2] = v47;
    v44[3] = v46;
    *(v44 + 57) = v45;
    *v44 = v65;
    outlined destroy of ToolbarPlacement.Role(v64);
    v48 = v15[2];
    v39 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v39)
    {
      goto LABEL_31;
    }

    v15[2] = v49;
LABEL_5:
    v12 &= v12 - 1;
    *(v3 + v5) = v15;
    swift_endAccess();
    outlined init with copy of ToolbarPlacement.Role(v73, v58);
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(&v60, v58);
    swift_endAccess();
    outlined destroy of ToolbarPlacement.Role(&v60);
    outlined destroy of ToolbarPlacement.Role(v73);
    v60 = v69;
    v61 = v70;
    v62 = v71;
    *v63 = v72;
    *&v63[16] = v56;
    v63[24] = v57;
    outlined destroy of ToolbarAppearanceConfiguration(&v60);
  }

  while (1)
  {
    v23 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v23 >= v13)
    {
      break;
    }

    v12 = *(v8 + 8 * v23);
    ++v14;
    if (v12)
    {
      v14 = v23;
      goto LABEL_11;
    }
  }

  BarAppearanceBridge.updateBarsToConfiguration()();
  v51 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates;
  if ((*(v3 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates) & 2) != 0)
  {
    BarAppearanceBridge.platformUpdateNavigationAdaptor()();
  }

  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v78 = 0u;
  v79 = 0u;
  v77 = 0u;
  swift_beginAccess();
  outlined assign with take of BarAppearanceBridge.UpdateContext?(&v77, v3 + v53, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Published<Visibility>);
  result = swift_endAccess();
  *(v3 + v51) = 0;
  return result;
}

uint64_t IsAnimated.updateValue()(uint64_t a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 16);
  type metadata accessor for TransactionalPreferenceTransformModifier();
  Value = AGGraphGetValue();
  v4 = v3;
  v15 = *Value;
  v16[0] = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1E69E7CA8];
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  result = AGGraphGetOutputValue();
  if (result)
  {
    v8 = (v4 & 1) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {

    AGGraphClearUpdate();
    v9 = *AGGraphGetValue();

    AGGraphSetUpdate();
    v10 = swift_allocObject();
    v11 = v15;
    *(v10 + 16) = v14;
    *(v10 + 32) = v11;
    *(v10 + 48) = v9;
    v16[0] = partial apply for closure #2 in IsAnimated.updateValue();
    v16[1] = v10;
    MEMORY[0x1EEE9AC00](v10);
    v13[2] = a1;
    v13[3] = swift_getWitnessTable();

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, partial apply for closure #1 in StatefulRule.value.setter, v13, FunctionTypeMetadata, MEMORY[0x1E69E73E0], v5 + 8, MEMORY[0x1E69E7410], v12);
  }

  return result;
}

{
  v2 = v1;
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v26 - v6;
  v7 = *(a1 + 16);
  *&v8 = v7;
  *(&v8 + 1) = v5;
  v33 = v8;
  v26 = *(a1 + 32);
  *&v9 = v26;
  *(&v9 + 1) = v4;
  v32 = v9;
  v38[0] = v8;
  v38[1] = v9;
  v30 = type metadata accessor for TransactionalPreferenceModifier();
  v29 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v11 = &v26 - v10;
  IsAnimated.modifier.getter(&v26 - v10);
  v12 = *(a1 + 56);
  v35 = v33;
  v36 = v32;
  v37 = v11;
  v13 = type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in IsAnimated.updateValue(), v34, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v14, v38);
  if (LOBYTE(v38[0]) == 2 || (v38[0] & 1) != 0)
  {
    (*(*(v13 - 8) + 8))(v1 + v12, v13);
    v15 = *(v7 - 8);
    (*(v15 + 16))(v2 + v12, v11, v7);
    (*(v15 + 56))(v2 + v12, 0, 1, v7);
    AGGraphClearUpdate();
    closure #2 in IsAnimated.updateValue()(v2, v7, v5, v26, v4, v38);
    AGGraphSetUpdate();
    v16 = *&v38[0];
    v17 = *(a1 + 60);

    *(v2 + v17) = v16;
    v20 = v30;
    v19 = AssociatedTypeWitness;
  }

  else
  {
    v19 = AssociatedTypeWitness;
    OutputValue = AGGraphGetOutputValue();
    v20 = v30;
    if (OutputValue)
    {
      return (*(v29 + 8))(v11, v20);
    }
  }

  MEMORY[0x1EEE9AC00](OutputValue);
  v21 = v32;
  *(&v26 - 3) = v33;
  *(&v26 - 2) = v21;
  *(&v26 - 2) = v2;
  v22 = v27;
  v23 = Attribute.syncMainIfReferences<A>(do:)();
  MEMORY[0x1EEE9AC00](v23);
  *(&v26 - 2) = a1;
  *(&v26 - 1) = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, partial apply for closure #1 in StatefulRule.value.setter, (&v26 - 4), v19, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v24);
  (*(v28 + 8))(v22, v19);
  return (*(v29 + 8))(v11, v20);
}

uint64_t sub_18BDDA56C()
{

  return swift_deallocObject();
}

uint64_t BarAppearanceBridge.uiPreferredStatusBarStyle.getter()
{
  if (!BarAppearanceBridge.uiHasStatusBarOpinion.getter())
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastBarUpdates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (!*(v2 + 16))
  {
LABEL_8:
    outlined destroy of ToolbarPlacement.Role(v10);
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
  if ((v4 & 1) == 0)
  {

    goto LABEL_8;
  }

  v5 = *(*(v2 + 56) + 2 * v3 + 1);

  if (v5 == 2)
  {
    outlined destroy of ToolbarPlacement.Role(v10);
    return 0;
  }

  else
  {
    v9 = v5 & 1;
    closure #1 in BarAppearanceBridge.uiPreferredStatusBarStyle.getter(&v9, &v8);
    v6 = v8;
    outlined destroy of ToolbarPlacement.Role(v10);
    return v6;
  }
}

uint64_t _UIHostingView.preferredStatusBarStyle.getter()
{
  _UIHostingView.colorScheme.getter(&v5);
  v0 = v5;
  if (v5 == 2)
  {
    return 0;
  }

  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  v3 = 3;
  if (v0)
  {
    v3 = 1;
  }

  v4 = 3;
  if ((v0 & 1) == 0)
  {
    v4 = 1;
  }

  if (IsInvertColorsEnabled)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

id @objc UIHostingController.childForScreenEdgesDeferringSystemGestures.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.childForScreenEdgesDeferringSystemGestures.getter();

  return v2;
}

unint64_t UIHostingController._childForScreenEdgesDeferringSystemGestures.getter()
{
  if ((UIHostingController.deferredEdges.getter() & 0x100) == 0 || (UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = [v0 childViewControllers];
  v2 = type metadata accessor for UIViewController();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = v3;
  v19[5] = v2;
  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v6 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x18D00E9C0](v6 - 1, v3);
      goto LABEL_11;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      __break(1u);
LABEL_26:
      v4 = __CocoaSet.count.getter();
      v5 = v4;
    }

    else
    {
      v7 = *(v3 + 32 + 8 * v5);
LABEL_11:
      v8 = v7;
      v9 = [v7 childViewControllerForScreenEdgesDeferringSystemGestures];

      if (v9)
      {

        break;
      }
    }
  }

  MEMORY[0x1EEE9AC00](v4);
  v19[2] = &v20;
  v11 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_So16UIViewControllerCTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v19, v5, v10);

  result = v11;
  if (v11)
  {
    return result;
  }

  v13 = [v0 childViewControllers];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = __CocoaSet.count.getter();
    if (!v15)
    {
      goto LABEL_28;
    }

LABEL_17:
    v16 = __OFSUB__(v15, 1);
    result = v15 - 1;
    if (v16)
    {
      __break(1u);
    }

    else if ((v14 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v14 + 8 * result + 32);
LABEL_22:
        v18 = v17;

        return v18;
      }

      __break(1u);
      return result;
    }

    v17 = MEMORY[0x18D00E9C0](result, v14);
    goto LABEL_22;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    goto LABEL_17;
  }

LABEL_28:

  return 0;
}

uint64_t @objc UIHostingController.preferredScreenEdgesDeferringSystemGestures.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.preferredScreenEdgesDeferringSystemGestures.getter();

  return v2;
}

uint64_t UIHostingController._preferredScreenEdgesDeferringSystemGestures.getter()
{
  v0 = UIHostingController.deferredEdges.getter();
  if ((v0 & 0x100) != 0)
  {
    v0 = static Edge.Set.horizontal.getter();
  }

  v2 = 0;
  return specialized UIRectEdge.init(_:layoutDirection:)(v0, &v2);
}

uint64_t specialized UIRectEdge.init(_:layoutDirection:)(uint64_t result, unsigned __int8 *a2)
{
  v2 = result;
  v3 = *a2;
  if (result > 3u)
  {
    if (result == 4)
    {
      return 4;
    }

    if (result == 8)
    {
      v4 = v3 == 0;
      v5 = 8;
      v6 = 2;
LABEL_8:
      if (v4)
      {
        return v5;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    if (result == 1)
    {
      return result;
    }

    if (result == 2)
    {
      v4 = v3 == 0;
      v5 = 2;
      v6 = 8;
      goto LABEL_8;
    }
  }

  if (static Edge.Set.vertical.getter() == result)
  {
    return 5;
  }

  if (static Edge.Set.horizontal.getter() == v2)
  {
    return 10;
  }

  if (static Edge.Set.all.getter() == v2)
  {
    return 15;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      result = 0;
      if ((v2 & 4) == 0)
      {
        if ((v2 & 8) != 0)
        {
          v7 = 8;
          if (v3)
          {
            return 2;
          }

          return v7;
        }

        return result;
      }

      goto LABEL_38;
    }

    v8 = 0;
    if (v3)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if ((v2 & 2) != 0)
  {
    v8 = 1;
    if (v3)
    {
LABEL_32:
      v9 = 8;
      goto LABEL_35;
    }

LABEL_34:
    v9 = 2;
LABEL_35:
    result = v8 | v9;
    if ((v2 & 4) == 0)
    {
LABEL_39:
      if ((v2 & 8) != 0)
      {
        if (v3)
        {
          if ((result & 2) == 0)
          {
            return result | 2;
          }
        }

        else if ((result & 8) == 0)
        {
          return result | 8;
        }
      }

      return result;
    }

LABEL_38:
    result |= 4uLL;
    goto LABEL_39;
  }

  if ((v2 & 4) != 0)
  {
    result = 1;
    goto LABEL_38;
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  v10 = 8;
  if (v3)
  {
    v10 = 2;
  }

  return v10 | 1;
}

uint64_t BarAppearanceBridge.didMoveToWindow<A>(hostingController:)(void *a1)
{
  BarAppearanceBridge.UpdateContext.init<A>(hostingController:)(a1, v7);
  outlined init with copy of BarAppearanceBridge.UpdateContext(v7, v5);
  v2 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  swift_beginAccess();
  outlined assign with take of BarAppearanceBridge.UpdateContext?(v5, v1 + v2);
  swift_endAccess();
  BarAppearanceBridge.updateBarsToConfiguration()();
  v3 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates;
  if ((*(v1 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates) & 2) != 0)
  {
    BarAppearanceBridge.platformUpdateNavigationAdaptor()();
  }

  outlined destroy of BarAppearanceBridge.UpdateContext(v7);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  swift_beginAccess();
  outlined assign with take of BarAppearanceBridge.UpdateContext?(v5, v1 + v2);
  result = swift_endAccess();
  *(v1 + v3) = 0;
  return result;
}

uint64_t outlined assign with take of BarAppearanceBridge.UpdateContext?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BarAppearanceBridge.UpdateContext?(0, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DisableNavigationSemantics and conformance DisableNavigationSemantics()
{
  result = lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics;
  if (!lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics;
  if (!lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics;
  if (!lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics;
  if (!lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics;
  if (!lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

double static IsSearchImplementedModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, double *a3@<X8>)
{
  v4 = a1[3];
  v5 = a1[1];
  v25 = a1[2];
  v26 = v4;
  v6 = a1[3];
  v27 = a1[4];
  v7 = a1[1];
  v23 = *a1;
  v24 = v7;
  v17 = v25;
  v18 = v6;
  v19 = a1[4];
  v28 = *(a1 + 20);
  v20 = *(a1 + 20);
  v15 = v23;
  v16 = v5;
  a2(&v21);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 28) = 1;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  outlined init with copy of _GraphInputs(&v15, &v13);
  lazy protocol witness table accessor for type IsSearchAllowedInput and conformance IsSearchAllowedInput();
  PropertyList.subscript.getter();
  v9 = outlined destroy of _GraphInputs(&v15);
  if (v13 == 1)
  {
    v13 = v26;
    v14 = DWORD2(v26);
    v11[2] = v26;
    v12 = DWORD2(v26);
    MEMORY[0x1EEE9AC00](v9);
    outlined init with copy of PreferencesInputs(&v13, v11);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  else
  {
  }

  *a3 = v21;
  result = v22;
  a3[1] = v22;
  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance DisableNavigationSemantics()
{
  lazy protocol witness table accessor for type DisableNavigationSemantics and conformance DisableNavigationSemantics();
  PropertyList.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs()
{
  result = lazy protocol witness table cache variable for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds()
{
  result = lazy protocol witness table cache variable for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds;
  if (!lazy protocol witness table cache variable for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds;
  if (!lazy protocol witness table cache variable for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateNavigationEventHandlers and conformance UpdateNavigationEventHandlers()
{
  result = lazy protocol witness table cache variable for type UpdateNavigationEventHandlers and conformance UpdateNavigationEventHandlers;
  if (!lazy protocol witness table cache variable for type UpdateNavigationEventHandlers and conformance UpdateNavigationEventHandlers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateNavigationEventHandlers and conformance UpdateNavigationEventHandlers);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context()
{
  result = lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context;
  if (!lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context;
  if (!lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context;
  if (!lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context;
  if (!lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context;
  if (!lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey()
{
  result = lazy protocol witness table cache variable for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey()
{
  result = lazy protocol witness table cache variable for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier()
{
  result = lazy protocol witness table cache variable for type NavigationCommonModifier and conformance NavigationCommonModifier;
  if (!lazy protocol witness table cache variable for type NavigationCommonModifier and conformance NavigationCommonModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationCommonModifier and conformance NavigationCommonModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvertedViewInputPredicate<DisableNavigationSemantics> and conformance InvertedViewInputPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InvertedViewInputPredicate<DisableNavigationSemantics> and conformance InvertedViewInputPredicate<A>;
  if (!lazy protocol witness table cache variable for type InvertedViewInputPredicate<DisableNavigationSemantics> and conformance InvertedViewInputPredicate<A>)
  {
    type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<DisableNavigationSemantics>, lazy protocol witness table accessor for type DisableNavigationSemantics and conformance DisableNavigationSemantics, &type metadata for DisableNavigationSemantics, MEMORY[0x1E6980680]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvertedViewInputPredicate<DisableNavigationSemantics> and conformance InvertedViewInputPredicate<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<NavigationCommonModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(255, a2, a3, a4, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Binding<AnyNavigationSplitVisibility>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Binding();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)()
{
  if (!lazy cache variable for type metadata for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues))
  {
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues));
    }
  }
}

uint64_t type metadata completion function for NavigationSelectionHost()
{
  result = type metadata accessor for ObservationRegistrar();
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

{
  return type metadata completion function for NavigationSelectionHost();
}

void type metadata accessor for Map<NavigationStateHost, NavigationSeedHost>()
{
  if (!lazy cache variable for type metadata for Map<NavigationStateHost, NavigationSeedHost>)
  {
    type metadata accessor for NavigationStateHost();
    type metadata accessor for NavigationSeedHost(255);
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<NavigationStateHost, NavigationSeedHost>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NavigationStateHost and conformance NavigationStateHost(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t static PositionedNavigationDestinationProcessor._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *a2;
  *&v46[8] = *(a2 + 1);
  v11 = *(a2 + 6);
  *&v46[28] = *(a2 + 28);
  v12 = *(a2 + 11);
  v48 = *(a2 + 76);
  v13 = a2[6];
  v14 = *(a2 + 14);
  *&v47[12] = *(a2 + 60);
  *v46 = v10;
  *&v46[44] = v12;
  *&v46[24] = v11;
  *v47 = v13;
  *&v47[8] = v14;
  a3(&v35);
  result = _ViewOutputs.subscript.getter();
  if ((result & 0x100000000) == 0)
  {
    v16 = result;
    *v46 = v9;
    type metadata accessor for PositionedNavigationDestinationProcessor();
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    closure #1 in static PositionedNavigationDestinationProcessor._makeView(modifier:inputs:body:)(1);
    AGGraphCreateOffsetAttribute2();
    v17 = AGCreateWeakAttribute();
    lazy protocol witness table accessor for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations();
    PropertyList.subscript.getter();
    v33 = v13;
    v18 = v46[0];
    v19 = (*(a5 + 8))(a4, a5);
    v21 = v20;
    default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(v46);
    v34 = a6;
    v22 = *&v46[8];
    v32 = v14;
    v23 = v46[12];
    v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI27NavigationStackViewPositionV_AC11VersionSeedVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v31[1] = v31;
    LODWORD(v38) = v16;
    *(&v38 + 4) = v17;
    HIDWORD(v38) = v11;
    LOBYTE(v39) = v18;
    *(&v39 + 1) = *v45;
    DWORD1(v39) = *&v45[3];
    *(&v39 + 1) = v19;
    *&v40 = v21;
    *(&v40 + 1) = *v46;
    LODWORD(v41) = v22;
    BYTE4(v41) = v23;
    *(&v41 + 5) = v43;
    BYTE7(v41) = v44;
    DWORD2(v41) = 0;
    v42 = v24;
    MEMORY[0x1EEE9AC00](v24);
    v25 = type metadata accessor for PositionedNavigationDestinationProcessor.PollingRule();
    v30[2] = v25;
    v30[3] = swift_getWitnessTable();
    a6 = v34;
    _s7SwiftUI19NavigationAuthorityVSgMaTm_1(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v38, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, v30, v25, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
    *&v46[16] = v39;
    *&v46[32] = v40;
    *v47 = v41;
    *&v47[16] = v42;
    *v46 = v38;
    (*(*(v25 - 8) + 8))(v46, v25);
    AGGraphSetFlags();
    *&v38 = v33;
    DWORD2(v38) = v32;

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  v28 = v36;
  v29 = v37;
  *a6 = v35;
  *(a6 + 8) = v28;
  *(a6 + 12) = v29;
  return result;
}

unint64_t lazy protocol witness table accessor for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations()
{
  result = lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations;
  if (!lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations;
  if (!lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations;
  if (!lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations;
  if (!lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations;
  if (!lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations);
  }

  return result;
}

uint64_t type metadata completion function for ToolbarItem()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t @objc UIHostingController.prefersStatusBarHidden.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.prefersStatusBarHidden.getter();

  return v2 & 1;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PlatformViewControllerRepresentableAdaptor<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1580](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static CoreViewRepresentable.appendFeature(to:) in conformance PlatformViewControllerRepresentableAdaptor<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return static PlatformViewRepresentable.appendFeature(to:)(a1, a2, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for PlatformViewControllerRepresentableAdaptor<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for ToolbarModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance RootModifier@<X0>(uint64_t a1@<X8>)
{
  swift_weakLoadStrong();
  swift_weakLoadStrong();
  swift_weakLoadStrong();
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  v7 = *(v1 + 88);
  swift_weakInit();
  outlined copy of SceneID?(v4, v5, v7);
  v8 = v6;

  swift_weakInit();

  swift_weakInit();

  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  return _ss11AnyHashableVSgWOcTm_2(v1 + 24, a1 + 64, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
}

void destroy for RootEnvironmentModifier(uint64_t a1)
{
  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  v2 = *(a1 + 48);
  if (v2 != 255)
  {
    outlined consume of SceneID(*(a1 + 32), *(a1 + 40), v2 & 1);
  }

  v3 = *(a1 + 56);
}

uint64_t outlined init with copy of WeakBox<UISceneConnectionOptions>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for (value: RootEnvironmentModifier, changed: Bool)()
{
  if (!lazy cache variable for type metadata for (value: RootEnvironmentModifier, changed: Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: RootEnvironmentModifier, changed: Bool));
    }
  }
}

uint64_t LazyView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - v11;
  v10();
  static ViewBuilder.buildExpression<A>(_:)(v9, a3, a4);
  v13 = *(v6 + 8);
  v13(v9, a3);
  static ViewBuilder.buildExpression<A>(_:)(v12, a3, a4);
  return (v13)(v12, a3);
}

uint64_t RootEnvironmentModifier.Child.updateValue()()
{
  v1 = v0;
  v30 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = v3;
  outlined init with copy of RootEnvironmentModifier(Value, v29);
  v5 = v4 & 1;
  v29[64] = v5;
  v6 = AGGraphGetValue();
  v7 = v6[1];
  *&v27 = *v6;
  *(&v27 + 1) = v7;
  v28 = v8 & 1;
  if (v8)
  {
  }

  else
  {
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);

      v20 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI23RootEnvironmentModifier33_4475FD12FD59DEBA453321BD91F6EA04LLV_s5NeverOSbTg5(partial apply for closure #1 in implicit closure #2 in implicit closure #1 in RootEnvironmentModifier.Child.updateValue());
      if (v20 == 2 || (v20 & 1) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    if (AGGraphGetOutputValue())
    {

      return outlined destroy of OpenURLContext(v29, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
    }
  }

LABEL_7:
  type metadata accessor for SceneBridge(0);
  lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type SceneBridge and conformance SceneBridge, type metadata accessor for SceneBridge);
  static ObservableObject.environmentStore.getter();
  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  Strong = swift_weakLoadStrong();
  outlined destroy of RootEnvironmentModifier(&v24);
  v22 = Strong;
  swift_setAtWritableKeyPath();

  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  v10 = swift_weakLoadStrong();
  outlined destroy of RootEnvironmentModifier(&v24);
  specialized EnvironmentValues.sceneStorageValues.setter(v10);

  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  v11 = v25;
  outlined destroy of RootEnvironmentModifier(&v24);
  LOBYTE(v22) = v11;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>, &type metadata for ScenePhaseKey, &protocol witness table for ScenePhaseKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>, &type metadata for ScenePhaseKey, &protocol witness table for ScenePhaseKey);

  PropertyList.subscript.setter();
  if (*(&v27 + 1))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  v12 = v25;
  outlined destroy of RootEnvironmentModifier(&v24);
  if (v12 != 2)
  {
    v13 = EnvironmentValues.redactionReasons.modify();
    *v14 |= 2uLL;
    v13(&v24, 0);
  }

  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  v15 = v26;
  outlined destroy of RootEnvironmentModifier(&v24);
  swift_unknownObjectWeakInit();
  v16 = swift_unknownObjectWeakAssign();
  v23 = 0;
  outlined init with copy of WeakBox<UISceneConnectionOptions>?(v16, v21, &lazy cache variable for type metadata for WeakBox<UISceneConnectionOptions>?, type metadata accessor for WeakBox<UISceneConnectionOptions>, MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ConnectionOptionsKey>, &type metadata for ConnectionOptionsKey, &protocol witness table for ConnectionOptionsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ConnectionOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ConnectionOptionsKey>, &type metadata for ConnectionOptionsKey, &protocol witness table for ConnectionOptionsKey);

  PropertyList.subscript.setter();
  if (*(&v27 + 1))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of PPTTestHost?(&v22, &lazy cache variable for type metadata for WeakBox<UISceneConnectionOptions>?, type metadata accessor for WeakBox<UISceneConnectionOptions>, MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  v17 = swift_weakLoadStrong();
  outlined destroy of RootEnvironmentModifier(&v24);
  if (v17)
  {
    (*(*v17 + 88))(&v27);
  }

  if (static AppGraph.delegateBox)
  {
    v18 = *(*static AppGraph.delegateBox + 88);

    v18(&v27);
  }

  v24 = v27;
  AGGraphSetOutputValue();

  outlined destroy of RootEnvironmentModifier?(v1 + 8, &lazy cache variable for type metadata for RootEnvironmentModifier?, &type metadata for RootEnvironmentModifier);
  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  outlined init with take of RootEnvironmentModifier(&v24, v1 + 8);
  return outlined destroy of OpenURLContext(v29, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
}

uint64_t initializeWithCopy for RootEnvironmentModifier(uint64_t a1, uint64_t a2)
{
  swift_weakCopyInit();
  swift_weakCopyInit();
  swift_weakCopyInit();
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  if (v4 == 255)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    v7 = v4 & 1;
    outlined copy of SceneID(v5, v6, v4 & 1);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    *(a1 + 48) = v7;
  }

  v8 = *(a2 + 56);
  *(a1 + 56) = v8;
  v9 = v8;
  return a1;
}

__n128 initializeWithCopy for _PresentationTransitionOutputs(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
  }

  else
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  return result;
}

void type metadata accessor for SceneStorage<URL>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RootEnvironmentModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t initializeWithTake for RootModifier(uint64_t a1, uint64_t a2)
{
  swift_weakTakeInit();
  swift_weakTakeInit();
  swift_weakTakeInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t specialized EnvironmentValues.sceneStorageValues.setter(uint64_t a1)
{
  if (a1)
  {
    swift_weakInit();
    swift_weakAssign();
  }

  else
  {
    v5 = 0;
  }

  v6 = a1 == 0;
  outlined init with copy of WeakBox<SceneStorageValues>?(&v5, &v4);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of WeakBox<SceneStorageValues>?(&v5, type metadata accessor for WeakBox<SceneStorageValues>?);
}

uint64_t outlined init with copy of WeakBox<SceneStorageValues>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<SceneStorageValues>?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WeakBox<SceneStorageValues>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI7WeakBoxVyAA18SceneStorageValuesCGSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithTake for RootEnvironmentModifier(uint64_t a1, uint64_t a2)
{
  swift_weakTakeInit();
  swift_weakTakeInit();
  swift_weakTakeInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t SceneBridgeReader.body.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22[-v13];
  v17 = specialized Environment.wrappedValue.getter(v16, v15 & 1);
  if (v17)
  {
    v18 = v17;
LABEL_6:
    a3(v18);

    static ViewBuilder.buildExpression<A>(_:)(v11, a5, a6);
    v21 = *(v9 + 8);
    v21(v11, a5);
    static ViewBuilder.buildExpression<A>(_:)(v14, a5, a6);
    return (v21)(v14, a5);
  }

  MEMORY[0x18D009810](0xD0000000000000E7, 0x800000018CD41CE0);
  v18 = static SceneBridge._devNullSceneBridge;
  if (static SceneBridge._devNullSceneBridge || (type metadata accessor for SceneBridge(0), v19 = swift_allocObject(), SceneBridge.init()(), static SceneBridge._devNullSceneBridge = v19, result = , (v18 = static SceneBridge._devNullSceneBridge) != 0))
  {

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in View.onOpenURL(perform:)(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void, void))
{
  v3 = *(*(v2 + 16) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return a2(a1, v2 + v4, *v5, v5[1]);
}

uint64_t closure #1 in View.onOpenURL(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for OpenURLContext(0);
  v19 = specialized static SceneBridge.sceneBridgePublisher(_:identifier:sceneBridge:)(v14, 0x434C52556E65704FLL, 0xEE00747865746E6FLL, a1);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  type metadata accessor for PassthroughSubject<Any, Never>();
  v17 = v16;
  lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>, type metadata accessor for PassthroughSubject<Any, Never>);
  View.onReceive<A>(_:perform:)(&v19, a6, v15, a4, v17, a5, a7);
}

uint64_t type metadata completion function for OpenURLContext()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized static SceneBridge.sceneBridgePublisher(_:identifier:sceneBridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(a4 + 16);
  v16 = *(v15 + 16);
  v40 = v12;
  v38 = a1;
  if (v16 && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v18 & 1) != 0))
  {
    v19 = *(*(v15 + 56) + 8 * v17);
    swift_endAccess();
    v20 = *(v19 + 16);

    if (v20)
    {
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v22)
      {
        v23 = *(*(v19 + 56) + 8 * v21);

        goto LABEL_11;
      }
    }
  }

  else
  {
    swift_endAccess();
    v19 = 0;
  }

  v35 = v10;
  v36 = v11;
  type metadata accessor for PassthroughSubject<Any, Never>();
  swift_allocObject();
  v23 = PassthroughSubject.init()();
  v37 = v8;
  if (v19)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v19;
    v25 = a2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, a2, a3, isUniquelyReferenced_nonNull_native, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
  }

  else
  {
    type metadata accessor for Predicate<Pack{String}>?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, PassthroughSubject<Any, Never>)>, 255, type metadata accessor for (String, PassthroughSubject<Any, Never>), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v25 = a2;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    *(inited + 48) = v23;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI18SceneStorageValuesC5Entry33_1700ED20D4EA891B02973E899ABDB425LLCTt0g5Tf4g_nTm(inited, type metadata accessor for _DictionaryStorage<String, PassthroughSubject<Any, Never>>);
    swift_setDeallocating();
    outlined destroy of Predicate<Pack{String}>?(inited + 32, type metadata accessor for (String, PassthroughSubject<Any, Never>));
  }

  swift_beginAccess();

  v28 = v38;
  specialized Dictionary.subscript.setter(v27, v38);
  swift_endAccess();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v29 = static OS_dispatch_queue.main.getter();
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = v25;
  v30[4] = a3;
  v30[5] = v28;
  aBlock[4] = partial apply for closure #1 in static SceneBridge.sceneBridgePublisher(_:identifier:sceneBridge:);
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_13;
  v31 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  type metadata accessor for [DispatchWorkItemFlags]();
  lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], type metadata accessor for [DispatchWorkItemFlags]);
  v32 = v35;
  v33 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x18D00DA20](0, v14, v32, v31);
  _Block_release(v31);

  (*(v37 + 8))(v32, v33);
  (*(v40 + 8))(v14, v36);
LABEL_11:

  return v23;
}

uint64_t sub_18BDDDC0C()
{

  return swift_deallocObject();
}

void type metadata accessor for (String, PassthroughSubject<Any, Never>)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, PassthroughSubject<Any, Never>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, PassthroughSubject<Any, Never>>)
  {
    type metadata accessor for PassthroughSubject<Any, Never>();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, PassthroughSubject<Any, Never>>);
    }
  }
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

{
  v3 = v2;
  if (*(a1 + 88) == 255)
  {
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for NavigationDestinationPresentation?, &type metadata for NavigationDestinationPresentation, MEMORY[0x1E69E6720]);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v13 = v20;
      }

      v14 = (*(v13 + 56) + 96 * v11);
      v15 = v14[1];
      v21 = *v14;
      v22 = v15;
      v17 = v14[3];
      v16 = v14[4];
      v18 = v14[2];
      *&v25[9] = *(v14 + 73);
      v24 = v17;
      *v25 = v16;
      v23 = v18;
      specialized _NativeDictionary._delete(at:)(v11, v13);
      *v3 = v13;
    }

    else
    {
      v24 = 0u;
      memset(v25, 0, 24);
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      v25[24] = -1;
    }

    return outlined destroy of TabEntry?(&v21, &lazy cache variable for type metadata for NavigationDestinationPresentation?, &type metadata for NavigationDestinationPresentation, MEMORY[0x1E69E6720]);
  }

  else
  {
    v5 = *(a1 + 48);
    v23 = *(a1 + 32);
    v24 = v5;
    *v25 = *(a1 + 64);
    *&v25[9] = *(a1 + 73);
    v6 = *(a1 + 16);
    v21 = *a1;
    v22 = v6;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v21, a2, v7);
    *v2 = v19;
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

void type metadata accessor for [DispatchWorkItemFlags]()
{
  if (!lazy cache variable for type metadata for [DispatchWorkItemFlags])
  {
    type metadata accessor for DispatchWorkItemFlags();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [DispatchWorkItemFlags]);
    }
  }
}

uint64_t closure #1 in View.onOpenURL(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  return closure #1 in View.onOpenURL(perform:)(a1, a2, a3, a4, a5, partial apply for closure #1 in closure #1 in View.onOpenURL(perform:), a6);
}

{
  return closure #1 in View.onOpenURL(perform:)(a1, a2, a3, a4, a5, partial apply for closure #1 in closure #1 in View.onOpenURL(perform:), a6);
}

uint64_t sub_18BDDE2CC()
{

  return swift_deallocObject();
}

__n128 initializeWithCopy for ToolbarItemPlacement(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    v2 = *(a2 + 24);
    *(a1 + 24) = v2;
    (**(v2 - 8))();
    *(a1 + 40) = 1;
  }

  else
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  return result;
}

uint64_t destroy for ToolbarSearchFieldStyle(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t initializeWithCopy for NavigationStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 24);
  if (v11 >= 2)
  {
    v11 = *v10 + 2;
  }

  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  if (v11 == 1)
  {
    *(v9 + 16) = *(v10 + 16);

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  *(v9 + 24) = v12;
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
  *v13 = v15;
  *(v13 + 8) = v16;
  *(v13 + 16) = v17;
  return a1;
}

uint64_t destroy for NavigationStack(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 24) - 8) + 8;
  (*v3)();
  v4 = (((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v4 + 24);
  if (v5 >= 2)
  {
    v5 = *v4 + 2;
  }

  if (v5 == 1)
  {
  }

  return outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
}

uint64_t UIHostingController.sizingOptions.getter@<X0>(void *a1@<X8>)
{
  v3 = direct field offset for UIHostingController.sizingOptions;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id specialized static SceneBridge.applySizes(min:max:toRestrictions:)(id result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, id a7)
{
  if ((a3 & 1) == 0)
  {
    v11 = *&result;
    *&result = COERCE_DOUBLE([a7 minimumSize]);
    if (v14 != v11 || v13 != *&a2)
    {
      *&result = COERCE_DOUBLE([a7 setMinimumSize_]);
    }
  }

  if ((a6 & 1) == 0)
  {
    *&result = COERCE_DOUBLE([a7 maximumSize]);
    if (v17 != INFINITY || v16 != INFINITY)
    {
      v19 = *&a5;
      v20 = *&a4;
      if (*&a4 > 2777777.0)
      {
        v20 = 2777777.0;
      }

      if (*&a5 > 2777777.0)
      {
        v19 = 2777777.0;
      }

      *&result = COERCE_DOUBLE([a7 setMaximumSize_]);
    }
  }

  return result;
}

void type metadata accessor for LocationBox<UIKitNavigationBridgePresentationModeLocation>()
{
  if (!lazy cache variable for type metadata for LocationBox<UIKitNavigationBridgePresentationModeLocation>)
  {
    lazy protocol witness table accessor for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation();
    v0 = type metadata accessor for LocationBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LocationBox<UIKitNavigationBridgePresentationModeLocation>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation()
{
  result = lazy protocol witness table cache variable for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation;
  if (!lazy protocol witness table cache variable for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation;
  if (!lazy protocol witness table cache variable for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation);
  }

  return result;
}

id UIKitNavigationBridge.isBeingPresented.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4 = ViewGraphDelegate.uiContainingViewController.getter(ObjectType, *(*(v2 + 16) + 8));
    swift_unknownObjectRelease();
    if (!v4)
    {
      return 0;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v0 + 24);
      v6 = swift_getObjectType();
      v7 = ViewGraphDelegate.uiContainingViewController.getter(v6, *(*(v5 + 16) + 8));
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 splitViewController];

    if (v8)
    {
      type metadata accessor for NotificationSendingSplitViewController();
      v9 = swift_dynamicCastClass();
      if (v9 || (type metadata accessor for NotifyingMulticolumnSplitViewController(), (v9 = swift_dynamicCastClass()) != 0))
      {
        v10 = v9;
        goto LABEL_11;
      }
    }

    v15 = [v4 navigationController];
    if (!v15)
    {
      v8 = 0;
      v14 = v4;
      goto LABEL_15;
    }

    v14 = v15;
    if ([v15 childViewControllersCount] < 2)
    {
      v8 = 0;
      v10 = v4;
      goto LABEL_14;
    }

    v8 = [v14 topViewController];

    if (!v8)
    {
      v14 = v4;
      goto LABEL_15;
    }

    v10 = v8;
LABEL_11:
    v11 = v8;
    result = [v4 view];
    if (result)
    {
      v12 = result;
      result = [v10 view];
      if (result)
      {
        v13 = result;
        v8 = [v12 isDescendantOfView_];

        v14 = v10;
LABEL_14:

LABEL_15:
        return v8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id ViewGraphDelegate.uiContainingViewController.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UICoreViewControllerProvider);
  (*(a2 + 16))(&v7, v4, v4, a1, a2);
  if (!v7)
  {
    return 0;
  }

  swift_getObjectType();
  v5 = UICoreViewControllerProvider.containingViewController.getter();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t UIKitNavigationBridge.presentationModeLocation.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    swift_weakInit();
    type metadata accessor for LocationBox<UIKitNavigationBridgePresentationModeLocation>();
    swift_allocObject();
    v1 = LocationBox.init(_:)();
    *(v0 + 32) = v1;
  }

  return v1;
}

void __swiftcall NavigationBridge_PhoneTV.pushTargetComponents(isDetail:)(Swift::tuple_navController_UINavigationController_optional_replaceRoot_Bool_column_UISplitViewControllerColumn_optional *__return_ptr retstr, Swift::Bool isDetail)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  v4 = static SemanticFeature.isEnabled.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    if (!Strong || (v6 = *(v2 + 24), v7 = swift_getObjectType(), ViewGraphDelegate.hostingControllerOverrides.getter(v7, *(*(v6 + 16) + 8), v31), swift_unknownObjectRelease(), v8 = swift_unknownObjectWeakLoadStrong(), outlined destroy of HostingControllerOverrides(v31), !v8))
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v2 + 24);
        ObjectType = swift_getObjectType();
        v11 = ViewGraphDelegate.uiContainingViewController.getter(ObjectType, *(*(v9 + 16) + 8));
        swift_unknownObjectRelease();
        v8 = [v11 navigationController];
      }

      else
      {
        v8 = 0;
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v2 + 24);
      v16 = swift_getObjectType();
      v17 = ViewGraphDelegate.uiContainingViewController.getter(v16, *(*(v15 + 16) + 8));
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0;
    }

    v18 = [v17 splitViewController];

    if (v18)
    {
      type metadata accessor for NotificationSendingSplitViewController();
      v19 = swift_dynamicCastClass();
      if (!v19 && (type metadata accessor for NotifyingMulticolumnSplitViewController(), (v19 = swift_dynamicCastClass()) == 0) || (v20 = v19, ![v19 style]) || !isDetail)
      {

        return;
      }

      v21 = v8;
      if ([v20 style])
      {
        v22 = [v20 viewControllerForColumn_];
        if (!v22)
        {
          v24 = 0;
          if (!v8)
          {
            goto LABEL_31;
          }

          goto LABEL_27;
        }

        v23 = v22;
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (!v24)
        {

          if (!v8)
          {
LABEL_31:
            if (v24)
            {
              swift_unknownObjectRelease();
              goto LABEL_33;
            }

            goto LABEL_42;
          }

LABEL_27:

          if (!v24 || (swift_unknownObjectRelease(), v8 != v24))
          {
LABEL_33:
            v21 = v21;
            if ([v20 style] && (v25 = objc_msgSend(v20, sel_viewControllerForColumn_, 1)) != 0)
            {
              v26 = v25;
              objc_opt_self();
              v27 = swift_dynamicCastObjCClass();
              if (!v27)
              {
              }
            }

            else
            {
              v27 = 0;
            }

            if (v8)
            {

              if (!v27 || (swift_unknownObjectRelease(), v8 != v27))
              {

                return;
              }
            }

            else if (v27)
            {

              swift_unknownObjectRelease();
              return;
            }

            if ([v20 style])
            {
              goto LABEL_52;
            }

            goto LABEL_55;
          }

LABEL_42:
          if ([v20 style])
          {
            v28 = [v20 viewControllerForColumn_];
            if (v28)
            {
              v29 = v28;
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {

                return;
              }
            }
          }

          if ([v20 style])
          {
LABEL_52:
            v30 = [v20 viewControllerForColumn_];

            if (v30)
            {
              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
              }
            }

            return;
          }

LABEL_55:

          return;
        }
      }

      else
      {
        v24 = 0;
      }

      if (!v8)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

  else if (!Strong || (v12 = *(v2 + 24), v13 = swift_getObjectType(), ViewGraphDelegate.hostingControllerOverrides.getter(v13, *(*(v12 + 16) + 8), v31), swift_unknownObjectRelease(), v14 = swift_unknownObjectWeakLoadStrong(), outlined destroy of HostingControllerOverrides(v31), !v14))
  {
    UIKitNavigationBridge.containingNavController.getter();
  }
}

uint64_t ViewGraphDelegate.hostingControllerOverrides.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UIHostingControllerProvider);
  (*(a2 + 16))(v10, v6, v6, a1, a2);
  if (*&v10[0])
  {
    v7 = *(&v10[0] + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v10, ObjectType, v7);
    swift_unknownObjectRelease();
    return outlined init with take of HostingControllerOverrides(v10, a3);
  }

  else
  {
    v10[0] = xmmword_18CD874B0;
    memset(&v10[1], 0, 32);
    v11 = 0;
    *a3 = xmmword_18CD874C0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    swift_unknownObjectWeakInit();
    result = swift_unknownObjectWeakInit();
    *(a3 + 48) = 2;
    if (BYTE8(v10[0]) != 3)
    {
      return outlined destroy of HostingControllerOverrides?(v10);
    }
  }

  return result;
}

uint64_t Toolbar.PlatformVended.uiSafeAreaTransitionState.getter()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    type metadata accessor for ToolbarSafeAreaTransitionState();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t outlined init with copy of SafeAreaTransitionStateKey.Value(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void type metadata accessor for EnvironmentPropertyKey<SafeAreaTransitionStateKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<SafeAreaTransitionStateKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SafeAreaTransitionStateKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<SafeAreaTransitionStateKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t initializeWithCopy for SafeAreaTransitionStateKey.Value(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance ExpandedSplitViewKey@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static ExpandedSplitViewKey.defaultValue;
  return result;
}

uint64_t one-time initialization function for defaultValue()
{
  static Semantics.v4.getter();
  result = isLinkedOnOrAfter(_:)();
  static ExpandedSplitViewKey.defaultValue = (result & 1) == 0;
  return result;
}

{
  xmmword_1EAB09A00 = 0u;
  xmmword_1EAB09A10 = 0u;
  xmmword_1EAB09A20 = 0u;
  xmmword_1EAB09A30 = 0u;
  xmmword_1EAB09A40 = 0u;
  xmmword_1EAB09A50 = 0u;
  memset(v2, 0, sizeof(v2));
  static SwipeActions.Key.defaultValue = 0u;
  xmmword_1EAB09990 = 0u;
  xmmword_1EAB099A0 = 0u;
  xmmword_1EAB099B0 = 0u;
  xmmword_1EAB099C0 = 0u;
  xmmword_1EAB099D0 = 0u;
  xmmword_1EAB099E0 = 0u;
  xmmword_1EAB099F0 = 0u;
  v0 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVySbGWOhTm_1(v2, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
  v3[4] = xmmword_1EAB09A30;
  v3[5] = xmmword_1EAB09A40;
  v3[6] = xmmword_1EAB09A50;
  v3[0] = xmmword_1EAB099F0;
  v3[1] = xmmword_1EAB09A00;
  v3[2] = xmmword_1EAB09A10;
  v3[3] = xmmword_1EAB09A20;
  xmmword_1EAB099F0 = 0u;
  xmmword_1EAB09A00 = 0u;
  xmmword_1EAB09A10 = 0u;
  xmmword_1EAB09A20 = 0u;
  xmmword_1EAB09A30 = 0u;
  xmmword_1EAB09A40 = 0u;
  xmmword_1EAB09A50 = 0u;
  return _s7SwiftUI7BindingVySbGWOhTm_1(v3, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v0);
}

{
  v13 = 257;
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  v19 = 4;
  v0 = MEMORY[0x1E69E7CC0];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v0);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  memset(v27, 0, 14);
  v27[14] = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  static EdgeInsets.zero.getter();
  v31 = v1;
  v32 = v2;
  v33 = v3;
  v34 = v4;
  static EdgeInsets.zero.getter();
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  type metadata accessor for ScrollEnvironmentStorage();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v9 = swift_allocObject();
  result = ScrollEnvironmentStorage.init(_:transform:)(&v13, v11);
  static EnvironmentValues.ScrollEnvironmentKey.defaultValue = v9;
  return result;
}

{
  return swift_weakInit();
}

{
  result = AXAssistiveAccessEnabled();
  static AssistiveAccessKey.defaultValue = result;
  return result;
}

{
  qword_1EAA14D60 = 0;
  return swift_unknownObjectWeakInit();
}

{
  return static Binding.constant(_:)();
}

{
  swift_weakInit();

  return swift_weakAssign();
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  static SegmentedControlStyleKey.defaultValue = static AnySegmentedControlStyle.default;
}

{
  v0 = type metadata accessor for TableColumnAlignment(0);
  __swift_allocate_value_buffer(v0, static TableColumnAlignment.Key.defaultValue);
  v1 = __swift_project_value_buffer(v0, static TableColumnAlignment.Key.defaultValue);
  v2 = type metadata accessor for Locale.NumberingSystem();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 5, v2);
}

{
  return static PlatformItem.empty.getter();
}

{
  result = specialized static SearchSuggestionsPlacement.Role.initial.getter();
  static EnvironmentValues.SearchSuggestionsPlacementKey.defaultValue = result & 1;
  return result;
}

{
  _s10Foundation3URLVSgMaTm_5(0, &lazy cache variable for type metadata for DocumentConfiguration?, type metadata accessor for DocumentConfiguration);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static DocumentConfigurationEnvironmentKey.defaultValue);
  v2 = __swift_project_value_buffer(v1, static DocumentConfigurationEnvironmentKey.defaultValue);
  v3 = type metadata accessor for DocumentConfiguration();
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

{
  type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for TabContextMenuKey.Storage?, type metadata accessor for TabContextMenuKey.Storage);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static TabContextMenuKey.defaultValue);
  v2 = __swift_project_value_buffer(v1, static TabContextMenuKey.defaultValue);
  v3 = type metadata accessor for TabContextMenuKey.Storage(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static WidgetAuxiliaryCurvedContentKey.defaultValue);
  v2 = __swift_project_value_buffer(v1, static WidgetAuxiliaryCurvedContentKey.defaultValue);
  v3 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

{
  result = static EdgeInsets.zero.getter();
  unk_1EAA38218 = 0;
  xmmword_1EAA38208 = 0uLL;
  byte_1EAA38220 = 0;
  *&xmmword_1EAA38228 = 0x4024000000000000;
  *(&xmmword_1EAA38228 + 1) = 1;
  byte_1EAA38238 = 0;
  *&static ProminentHeaderStylingKey.defaultValue = v1;
  *(&static ProminentHeaderStylingKey.defaultValue + 1) = v2;
  qword_1EAA381F8 = v3;
  unk_1EAA38200 = v4;
  return result;
}

{
  type metadata accessor for SceneStorage<TabViewCustomization>(0, &lazy cache variable for type metadata for Binding<TabViewCustomization>?, type metadata accessor for Binding<TabViewCustomization>, MEMORY[0x1E69E6720]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static TabViewCustomization.Key.defaultValue);
  v2 = __swift_project_value_buffer(v1, static TabViewCustomization.Key.defaultValue);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for SearchFieldConfiguration.Data?, type metadata accessor for SearchFieldConfiguration.Data, MEMORY[0x1E69E6720]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static SearchFieldConfiguration.Key.defaultValue);
  v2 = __swift_project_value_buffer(v1, static SearchFieldConfiguration.Key.defaultValue);
  v3 = type metadata accessor for SearchFieldConfiguration.Data(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18BDDF52C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

id @objc UIHostingController.childForStatusBarStyle.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.childForStatusBarStyle.getter();

  return v2;
}

unint64_t UIHostingController._childForStatusBarStyle.getter()
{
  v1 = v0;
  specialized UIHostingController.host.getter();
  _UIHostingView.colorScheme.getter(&v20);
  if (v20 != 2)
  {
    return 0;
  }

  v2 = specialized UIHostingController.barAppearanceBridge.getter();
  if (v2)
  {
    v3 = v2;
    HasStatusBar = BarAppearanceBridge.uiHasStatusBarOpinion.getter();

    if (HasStatusBar)
    {
      return 0;
    }
  }

  v5 = specialized UIHostingController.host.getter();
  v6 = _UIHostingView.shouldDeferToChildViewControllerForStatusBar.getter();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [v1 childViewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
LABEL_7:
      v10 = __OFSUB__(v9, 1);
      v11 = v9 - 1;
      if (v10)
      {
        __break(1u);
      }

      else if ((v8 & 0xC000000000000001) == 0)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v11 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v12 = *(v8 + 8 * v11 + 32);
LABEL_12:
          v13 = v12;
          goto LABEL_15;
        }

        __break(1u);
        goto LABEL_28;
      }

      v12 = MEMORY[0x18D00E9C0](v11, v8);
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_15:

  v14 = [v13 childViewControllerForStatusBarStyle];

  result = v14;
  if (v14)
  {
    return result;
  }

  v16 = [v1 childViewControllers];
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v1 >> 62))
  {
    v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
LABEL_29:

    return 0;
  }

LABEL_18:
  v10 = __OFSUB__(v17, 1);
  result = v17 - 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_33;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_33:
    v18 = MEMORY[0x18D00E9C0](result, v1);
    goto LABEL_23;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v1 + 8 * result + 32);
LABEL_23:
    v19 = v18;

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t UIHostingController._preferredStatusBarStyle.getter()
{
  v0 = specialized UIHostingController.barAppearanceBridge.getter();
  if (v0)
  {
    v1 = v0;
    v2 = BarAppearanceBridge.uiPreferredStatusBarStyle.getter();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return v2;
    }
  }

  v5 = specialized UIHostingController.host.getter();
  v6 = _UIHostingView.preferredStatusBarStyle.getter();

  return v6;
}

BOOL BarAppearanceBridge.uiHasStatusBarOpinion.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  if (!*(v3 + 16))
  {
    goto LABEL_6;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
  if ((v5 & 1) == 0)
  {

LABEL_6:
    outlined destroy of ToolbarPlacement.Role(v11);
    return 0;
  }

  v6 = *(v3 + 56) + 80 * v4;
  v7 = *(v6 + 57);
  v8 = *(v6 + 58);

  outlined destroy of ToolbarPlacement.Role(v11);

  if (v7 == 2)
  {
  }

  else
  {
    v11[0] = *(v1 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment);
    EnvironmentValues.explicitPreferredColorScheme.getter();

    if (v10 == 2)
    {
      return 1;
    }
  }

  return v8 != 0;
}

uint64_t @objc UIHostingController.preferredStatusBarStyle.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.preferredStatusBarStyle.getter();

  return v2;
}

uint64_t outlined assign with take of BarAppearanceBridge.UpdateContext?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 40))(a2, a1, v8);
  return a2;
}

uint64_t initializeWithTake for BarAppearanceBridge.UpdateContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (*(a2 + 24) == 2)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 25) = *(a2 + 25);
  }

  else
  {
    swift_unknownObjectWeakTakeInit();
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
  }

  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void type metadata accessor for BarAppearanceBridge.UpdateContext?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void BarAppearanceBridge.UpdateContext.init<A>(hostingController:)(void *a1@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  a2[9] = MEMORY[0x1E69E7CC0];
  a2[10] = v3;
  *a2 = a1;
  v4 = a1;
  Strong = [v4 navigationController];
  if (!Strong)
  {
    UIHostingController.overrides.getter(v22);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of HostingControllerOverrides(v22);
  }

  v6 = [v4 splitViewController];
  v7 = v6;
  if (!v6)
  {
    UIHostingController.overrides.getter(v22);
    v8 = swift_unknownObjectWeakLoadStrong();
    outlined destroy of HostingControllerOverrides(v22);
    if (!v8)
    {
      v7 = 0;
      goto LABEL_14;
    }

    v7 = v8;
    v6 = 0;
  }

  v9 = v6;
  v10 = v7;
  if (Strong)
  {
    v11 = [Strong parentViewController];
    v10 = v7;
    if (v11)
    {
      v12 = v11;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13 && (v14 = v13, (v15 = [v13 parentViewController]) != 0))
      {
        v16 = v15;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
        v17 = static NSObject.== infix(_:_:)();

        v10 = v12;
        if (v17)
        {
          a2[1] = v14;
          goto LABEL_15;
        }
      }

      else
      {

        v10 = v12;
      }
    }
  }

LABEL_14:
  a2[1] = Strong;
  v18 = Strong;
LABEL_15:
  UIHostingController.overrides.getter((a2 + 2));
  v19 = specialized UIHostingController.toolbarBridge.getter();
  if (v19)
  {
    v20 = *&v19[direct field offset for ToolbarBridge.navigationAdaptor];
    v21 = v19;

    a2[9] = v20;
  }

  else
  {
  }
}

uint64_t initializeWithCopy for BarAppearanceBridge.UpdateContext(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  v7 = v4;
  v8 = v5;
  if (v6 == 2)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 25) = *(a2 + 25);
  }

  else
  {
    swift_unknownObjectWeakCopyInit();
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
  }

  swift_unknownObjectWeakCopyInit();
  swift_unknownObjectWeakCopyInit();
  *(a1 + 64) = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  *(a1 + 72) = v9;
  *(a1 + 80) = v10;

  return a1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void ToolbarBridge.updateToolbarVisibility<A>(hostingController:)(void *a1)
{
  v3 = v1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = v1 + direct field offset for ToolbarBridge.platformVended;
    swift_beginAccess();
    v6 = *(v5 + 16);
    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v4;

    v9 = [v8 superview];
    v10 = v9;
    if (v7)
    {
      if (v9)
      {
      }

      else
      {
        v11 = [a1 view];
        if (v11)
        {
          v12 = v11;

          [v12 addSubview_];
        }

        else
        {
          __break(1u);
        }
      }
    }

    else if (v9)
    {

      [v8 removeFromSuperview];
    }

    else
    {
    }
  }
}

uint64_t storeEnumTagSinglePayload for ResolvedNavigationDestinations(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t BarAppearanceBridge.updateBarsToConfiguration()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_toUpdateBars;
  result = swift_beginAccess();
  v70 = v2;
  if (!*(*(v1 + v2) + 16))
  {
    return result;
  }

  type metadata accessor for Published<Visibility>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 5;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 3;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = xmmword_18CD90770;
  v5 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_allowedBars;
  v67 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates;
  v68 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  v69 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage;
  swift_beginAccess();
  for (i = 32; i != 192; i += 40)
  {
    outlined init with copy of ToolbarPlacement.Role(v4 + i, &v92);
    v7 = *(v1 + v5);

    v8 = specialized Set.contains(_:)(&v92, v7);

    if ((v8 & 1) == 0)
    {
      goto LABEL_81;
    }

    v74 = 0u;
    memset(v75, 0, 24);
    outlined init with copy of ToolbarPlacement.Role(&v92, &v76);
    outlined init with copy of ToolbarPlacement.Role(&v74, &v80);
    if (v79 <= 2)
    {
      if (v79)
      {
        if (v79 == 1)
        {
          outlined destroy of ToolbarPlacement.Role(&v74);
          if (*(&v81 + 1) != 1)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v79 != 2)
          {
            goto LABEL_22;
          }

          outlined destroy of ToolbarPlacement.Role(&v74);
          if (*(&v81 + 1) != 2)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        outlined destroy of ToolbarPlacement.Role(&v74);
        if (*(&v81 + 1))
        {
          goto LABEL_29;
        }
      }
    }

    else if (v79 > 4)
    {
      if (v79 == 5)
      {
        outlined destroy of ToolbarPlacement.Role(&v74);
        if (*(&v81 + 1) != 5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v79 != 6)
        {
LABEL_22:
          outlined init with copy of ToolbarPlacement.Role(&v76, &v88);
          if (*(&v81 + 1) >= 7uLL)
          {
            v85 = v80;
            v86 = v81;
            v87 = v82;
            v11 = MEMORY[0x18D00E7E0](&v88, &v85);
            outlined destroy of AnyHashable(&v85);
            outlined destroy of ToolbarPlacement.Role(&v74);
            outlined destroy of AnyHashable(&v88);
            if (v11)
            {
              goto LABEL_32;
            }

            outlined destroy of ToolbarPlacement.Role(&v76);
          }

          else
          {
            outlined destroy of ToolbarPlacement.Role(&v74);
            outlined destroy of AnyHashable(&v88);
LABEL_29:
            _s7SwiftUI16ToolbarPlacementV4RoleO_AEtWOhTm_0(&v76, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
          }

          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_18CD63400;
          outlined init with copy of ToolbarPlacement.Role(&v92, v9 + 32);
          v10 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI16ToolbarPlacementV4RoleO_Tt0g5Tf4g_n(v9);
          swift_setDeallocating();
          outlined destroy of ToolbarPlacement.Role(v9 + 32);
          goto LABEL_33;
        }

        outlined destroy of ToolbarPlacement.Role(&v74);
        if (*(&v81 + 1) != 6)
        {
          goto LABEL_29;
        }
      }
    }

    else if (v79 == 3)
    {
      outlined destroy of ToolbarPlacement.Role(&v74);
      if (*(&v81 + 1) != 3)
      {
        goto LABEL_29;
      }
    }

    else
    {
      outlined destroy of ToolbarPlacement.Role(&v74);
      if (*(&v81 + 1) != 4)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    outlined destroy of ToolbarPlacement.Role(&v76);
    v12 = swift_allocObject();
    v12[1] = xmmword_18CD63410;
    v12[3] = 0u;
    v12[4] = 0u;
    v12[2] = 0u;
    v12[5] = 0u;
    v12[6] = xmmword_18CD7DD20;
    v10 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI16ToolbarPlacementV4RoleO_Tt0g5Tf4g_n(v12);
    swift_setDeallocating();
    swift_arrayDestroy();
LABEL_33:
    swift_deallocClassInstance();
    if (!*(v10 + 16))
    {
      outlined destroy of ToolbarPlacement.Role(&v92);

      continue;
    }

    outlined init with copy of ToolbarPlacement.Role(&v92, &v88);
    if (v90 > 4)
    {
      if (v90 == 5)
      {
        if ((BarAppearanceBridge.updateTabBarConfiguration()() & 1) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_47;
      }

      if (v90 != 6)
      {
LABEL_41:

        outlined destroy of ToolbarPlacement.Role(&v88);
LABEL_81:
        v16 = &v92;
        goto LABEL_82;
      }

LABEL_80:

      goto LABEL_81;
    }

    if (!v90)
    {
      if (*(v1 + v69) != 1)
      {
        goto LABEL_80;
      }

      outlined init with copy of NavigationTitleStorage?(v1 + v68, &v76, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720]);
      if (v76)
      {
        outlined init with copy of HostingControllerOverrides(&v78, &v74);
        outlined destroy of BarAppearanceBridge.UpdateContext(&v76);
        Strong = swift_unknownObjectWeakLoadStrong();
        outlined destroy of HostingControllerOverrides(&v74);
        if (Strong)
        {
          goto LABEL_65;
        }
      }

      else
      {
        _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v76, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
      }

      outlined init with copy of NavigationTitleStorage?(v1 + v68, &v76, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720]);
      if (v76)
      {
        v14 = v77;
        Strong = v77;
        outlined destroy of BarAppearanceBridge.UpdateContext(&v76);
        if (!v14)
        {
          goto LABEL_80;
        }

LABEL_65:
        v15 = BarAppearanceBridge.updateNavigationAppearances(navigationController:)(Strong);
        outlined init with copy of NavigationTitleStorage?(v1 + v68, &v74, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720]);
        if (!v74)
        {
          goto LABEL_157;
        }

        outlined init with take of BarAppearanceBridge.UpdateContext(&v74, &v76);
        closure #1 in BarAppearanceBridge.updateNavigationVisibilities(navigationController:)(Strong, &v76, v1, &v74);

        outlined destroy of BarAppearanceBridge.UpdateContext(&v76);
        if ((v74 & 1) == 0 || (v15 & 1) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_47;
      }

      _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v76, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
      goto LABEL_80;
    }

    if (v90 != 3)
    {
      goto LABEL_41;
    }

    if ((BarAppearanceBridge.updateBottomBarConfiguration()() & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_47:
    swift_beginAccess();
    specialized Set._subtract<A>(_:)(v10);
    swift_endAccess();

    v74 = 0u;
    memset(v75, 0, 24);
    outlined init with copy of ToolbarPlacement.Role(&v92, &v76);
    outlined init with copy of ToolbarPlacement.Role(&v74, &v80);
    if (v79 <= 2)
    {
      if (v79)
      {
        if (v79 == 1)
        {
          outlined destroy of ToolbarPlacement.Role(&v74);
          outlined destroy of ToolbarPlacement.Role(&v92);
          if (*(&v81 + 1) != 1)
          {
            goto LABEL_78;
          }
        }

        else
        {
          if (v79 != 2)
          {
            goto LABEL_71;
          }

          outlined destroy of ToolbarPlacement.Role(&v74);
          outlined destroy of ToolbarPlacement.Role(&v92);
          if (*(&v81 + 1) != 2)
          {
            goto LABEL_78;
          }
        }
      }

      else
      {
        outlined destroy of ToolbarPlacement.Role(&v74);
        outlined destroy of ToolbarPlacement.Role(&v92);
        if (*(&v81 + 1))
        {
          goto LABEL_78;
        }
      }
    }

    else if (v79 > 4)
    {
      if (v79 == 5)
      {
        outlined destroy of ToolbarPlacement.Role(&v74);
        outlined destroy of ToolbarPlacement.Role(&v92);
        if (*(&v81 + 1) != 5)
        {
          goto LABEL_78;
        }

        goto LABEL_84;
      }

      if (v79 != 6)
      {
LABEL_71:
        outlined init with copy of ToolbarPlacement.Role(&v76, &v88);
        if (*(&v81 + 1) < 7uLL)
        {
          outlined destroy of ToolbarPlacement.Role(&v74);
          outlined destroy of ToolbarPlacement.Role(&v92);
          outlined destroy of AnyHashable(&v88);
LABEL_78:
          _s7SwiftUI16ToolbarPlacementV4RoleO_AEtWOhTm_0(&v76, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
          continue;
        }

        v85 = v80;
        v86 = v81;
        v87 = v82;
        v17 = MEMORY[0x18D00E7E0](&v88, &v85);
        outlined destroy of AnyHashable(&v85);
        outlined destroy of ToolbarPlacement.Role(&v74);
        outlined destroy of ToolbarPlacement.Role(&v92);
        outlined destroy of AnyHashable(&v88);
        if (v17)
        {
          goto LABEL_84;
        }

        v16 = &v76;
LABEL_82:
        outlined destroy of ToolbarPlacement.Role(v16);
        continue;
      }

      outlined destroy of ToolbarPlacement.Role(&v74);
      outlined destroy of ToolbarPlacement.Role(&v92);
      if (*(&v81 + 1) != 6)
      {
        goto LABEL_78;
      }
    }

    else if (v79 == 3)
    {
      outlined destroy of ToolbarPlacement.Role(&v74);
      outlined destroy of ToolbarPlacement.Role(&v92);
      if (*(&v81 + 1) != 3)
      {
        goto LABEL_78;
      }
    }

    else
    {
      outlined destroy of ToolbarPlacement.Role(&v74);
      outlined destroy of ToolbarPlacement.Role(&v92);
      if (*(&v81 + 1) != 4)
      {
        goto LABEL_78;
      }
    }

LABEL_84:
    outlined destroy of ToolbarPlacement.Role(&v76);
    *(v1 + v67) |= 2uLL;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v18 = *(v1 + v70);
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 56);
  v22 = (v19 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v23 = 0;
  for (j = MEMORY[0x1E69E7CC0]; v21; *(v32 + 3) = v34)
  {
LABEL_93:
    while (1)
    {
      outlined init with copy of ToolbarPlacement.Role(*(v18 + 48) + 40 * (__clz(__rbit64(v21)) | (v23 << 6)), &v76);
      outlined init with copy of ToolbarPlacement.Role(&v76, &v88);
      v26 = v90;
      if (v90 >= 7)
      {
        v29 = v88;
        v27 = v89;
        v28 = v91;
      }

      else
      {
        outlined destroy of ToolbarPlacement.Role(&v88);
        v27 = 0;
        v26 = 0;
        v28 = 0;
        v29 = 0uLL;
      }

      v92 = v29;
      v21 &= v21 - 1;
      *&v93 = v27;
      *(&v93 + 1) = v26;
      *&v94 = v28;
      outlined destroy of ToolbarPlacement.Role(&v76);
      if (*(&v93 + 1))
      {
        break;
      }

      _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v92, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
      if (!v21)
      {
        goto LABEL_89;
      }
    }

    v74 = v92;
    v75[0] = v93;
    *&v75[1] = v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      j = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(j + 2) + 1, 1, j);
    }

    v31 = *(j + 2);
    v30 = *(j + 3);
    if (v31 >= v30 >> 1)
    {
      j = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, j);
    }

    *(j + 2) = v31 + 1;
    v32 = &j[40 * v31];
    v33 = v74;
    v34 = v75[0];
    *(v32 + 8) = *&v75[1];
    *(v32 + 2) = v33;
  }

LABEL_89:
  while (2)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v74, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      if (v25 < v22)
      {
        v21 = *(v18 + 56 + 8 * v25);
        ++v23;
        if (v21)
        {
          v23 = v25;
          goto LABEL_93;
        }

        continue;
      }

      v35 = *(j + 2);
      v36 = v68;
      if (v35)
      {
        v37 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
        v38 = (j + 32);
        swift_beginAccess();
        for (k = 0; v35 != k; ++k)
        {
          if (k >= *(j + 2))
          {
            goto LABEL_156;
          }

          outlined init with copy of AnyHashable(v38, &v88);
          outlined init with copy of AnyHashable(&v88, &v85);
          outlined init with copy of ToolbarPlacement.Role(&v85, v83);
          if (v84 > 4)
          {
            if (v84 != 5)
            {
              if (v84 == 6)
              {
                v40 = &v85;
              }

              else
              {
LABEL_107:
                outlined destroy of ToolbarPlacement.Role(&v85);
                v40 = v83;
              }

              outlined destroy of ToolbarPlacement.Role(v40);
              goto LABEL_109;
            }

            outlined init with copy of NavigationTitleStorage?(v1 + v36, &v76, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720]);
            if (!v76)
            {
              outlined destroy of ToolbarPlacement.Role(&v85);
              v63 = &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?;
              v64 = &type metadata for BarAppearanceBridge.UpdateContext;
              goto LABEL_148;
            }

            v43 = v76;
            outlined destroy of BarAppearanceBridge.UpdateContext(&v76);
            v44 = [v43 tabBarController];
            if (v44)
            {
              v45 = v44;
              v46 = *(v1 + v37);
              *&v75[0] = 0;
              v74 = 0uLL;
              *(v75 + 8) = xmmword_18CD79540;
              if (!*(v46 + 16))
              {
                goto LABEL_150;
              }

              v47 = specialized __RawDictionaryStorage.find<A>(_:)(&v74);
              if ((v48 & 1) == 0)
              {

LABEL_150:

                outlined destroy of ToolbarPlacement.Role(&v74);
                outlined destroy of ToolbarPlacement.Role(&v85);
                goto LABEL_109;
              }

              v73 = v37;
              v49 = (*(v46 + 56) + 80 * v47);
              v92 = *v49;
              v51 = v49[2];
              v50 = v49[3];
              v52 = *(v49 + 57);
              v93 = v49[1];
              v94 = v51;
              *&v95[9] = v52;
              *v95 = v50;
              outlined init with copy of ToolbarAppearanceConfiguration(&v92, &v76);
              outlined destroy of ToolbarPlacement.Role(&v74);

              type metadata accessor for UIKitTabBarController();
              v53 = swift_dynamicCastClass();
              if (v53)
              {
                v54 = v53;
                outlined init with copy of ToolbarAppearanceConfiguration(&v92, &v76);
                v71 = v45;
                v55 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC0E23AppearanceConfigurationVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
                v76 = 0;
                v77 = 0;
                v78 = 0;
                v79 = xmmword_18CD79540;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v74 = v55;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v92, &v76, isUniquelyReferenced_nonNull_native);
                outlined destroy of ToolbarPlacement.Role(&v76);
                v57 = v74;
                v72 = v71;
                PlatformBarUpdater.callAsFunction(configurations:context:)(v57, 0, v54);

                outlined init with copy of NavigationTitleStorage?(v1 + v68, &v74, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720]);
                if (!v74)
                {
                  goto LABEL_157;
                }

                outlined init with take of BarAppearanceBridge.UpdateContext(&v74, &v76);
                closure #1 in BarAppearanceBridge.updateTabBarAppearance(_:tabBarController:)(&v76, v1);

                outlined destroy of BarAppearanceBridge.UpdateContext(&v76);
              }

              if (BYTE1(v92) == 2)
              {
                v58 = 7;
              }

              else
              {
                v58 = 3;
              }

              if (*&v95[16])
              {
                v59 = v58;
              }

              else
              {
                v59 = 0;
              }

              if (*&v95[16])
              {
                v60 = 0.3;
              }

              else
              {
                v60 = 0.0;
              }

              v61 = swift_allocObject();
              *(v61 + 16) = v45;
              *(v61 + 24) = v59;
              *(v61 + 32) = v60;
              v62 = v45;
              onNextMainRunLoop(do:)();

              outlined destroy of ToolbarPlacement.Role(&v85);
              outlined destroy of ToolbarAppearanceConfiguration(&v92);
              v36 = v68;
              v37 = v73;
LABEL_147:
              outlined init with copy of AnyHashable(&v88, &v74);
              swift_beginAccess();
              specialized Set._Variant.remove(_:)(&v74, &v76);
              swift_endAccess();
              outlined destroy of ToolbarPlacement.Role(&v74);
              v63 = &lazy cache variable for type metadata for ToolbarPlacement.Role?;
              v64 = &type metadata for ToolbarPlacement.Role;
LABEL_148:
              _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v76, v63, v64);
              goto LABEL_109;
            }

            outlined destroy of ToolbarPlacement.Role(&v85);
          }

          else
          {
            if (!v84)
            {
              if (*(v1 + v69) != 1)
              {
                goto LABEL_152;
              }

              outlined init with copy of NavigationTitleStorage?(v1 + v36, &v76, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720]);
              if (v76)
              {
                outlined init with copy of HostingControllerOverrides(&v78, &v74);
                outlined destroy of BarAppearanceBridge.UpdateContext(&v76);
                v42 = swift_unknownObjectWeakLoadStrong();
                outlined destroy of HostingControllerOverrides(&v74);
                if (!v42)
                {
LABEL_143:
                  outlined init with copy of NavigationTitleStorage?(v1 + v36, &v76, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720]);
                  if (!v76)
                  {
                    _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v76, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
LABEL_152:
                    outlined destroy of ToolbarPlacement.Role(&v85);
                    goto LABEL_109;
                  }

                  v65 = v77;
                  v42 = v77;
                  outlined destroy of BarAppearanceBridge.UpdateContext(&v76);
                  if (!v65)
                  {
                    goto LABEL_152;
                  }
                }

                v66 = BarAppearanceBridge.updateNavigationAppearances(navigationController:)(v42);
                outlined init with copy of NavigationTitleStorage?(v1 + v36, &v74, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720]);
                if (!v74)
                {
                  goto LABEL_157;
                }

                outlined init with take of BarAppearanceBridge.UpdateContext(&v74, &v76);
                closure #1 in BarAppearanceBridge.updateNavigationVisibilities(navigationController:)(v42, &v76, v1, &v74);

                outlined destroy of BarAppearanceBridge.UpdateContext(&v76);
                outlined destroy of ToolbarPlacement.Role(&v85);
                if (v74 & v66)
                {
                  goto LABEL_147;
                }

                goto LABEL_109;
              }

              _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v76, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
              goto LABEL_143;
            }

            if (v84 != 3)
            {
              goto LABEL_107;
            }

            v41 = BarAppearanceBridge.updateBottomBarConfiguration()();
            outlined destroy of ToolbarPlacement.Role(&v85);
            if (v41)
            {
              goto LABEL_147;
            }
          }

LABEL_109:
          outlined destroy of AnyHashable(&v88);
          v38 += 40;
        }
      }
    }

    return result;
  }
}

uint64_t sub_18BDE1164()
{

  return swift_deallocObject();
}

uint64_t destroy for BarAppearanceBridge.UpdateContext(uint64_t a1)
{
  if (*(a1 + 24) != 2)
  {
    MEMORY[0x18D011290](a1 + 16);
  }

  MEMORY[0x18D011290](a1 + 48);
  MEMORY[0x18D011290](a1 + 56);
}

void type metadata accessor for EnvironmentPropertyKey<WindowSceneKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<WindowSceneKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowSceneKey>);
    }
  }
}

uint64_t outlined destroy of WeakBox<UIWindowScene>(uint64_t a1)
{
  type metadata accessor for WeakBox<UISceneConnectionOptions>(0, &lazy cache variable for type metadata for WeakBox<UIWindowScene>, &lazy cache variable for type metadata for UIWindowScene);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for WeakBox<UISceneConnectionOptions>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for NSObject(255, a3);
    v4 = type metadata accessor for WeakBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id EnvironmentValues.sceneSession.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<WindowSceneKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    if (v5)
    {
LABEL_3:
      outlined destroy of WeakBox<UIWindowScene>?(&v4);
      return 0;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<WindowSceneKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of WeakBox<UIWindowScene>(&v4);
  if (Strong)
  {
    v2 = [Strong session];

    return v2;
  }

  return 0;
}

uint64_t View.task(priority:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for _TaskModifier(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 16))(&v12[v14], a1, v15);
  *v12 = a2;
  *(v12 + 1) = a3;

  MEMORY[0x18D00A570](v12, a4, v10, a5);
  return outlined destroy of _TaskModifier(v12, type metadata accessor for _TaskModifier);
}

double protocol witness for static StatefulRule.initialValue.getter in conformance TransactionWrapper@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t destroy for ToolbarAppearanceConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  v4 = *(a1 + 64);

  return a3(v4);
}

uint64_t getEnumTagSinglePayload for ToolbarPlacement.Role(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 40))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        outlined init with copy of ToolbarPlacement.Role(*(v3 + 48) + 40 * v6, v26);
        Hasher.init(_seed:)();
        outlined init with copy of ToolbarPlacement.Role(v26, &v23);
        if (*(&v24 + 1) <= 2)
        {
          if (*(&v24 + 1))
          {
            if (*(&v24 + 1) == 1)
            {
              v12 = 1;
            }

            else
            {
              if (*(&v24 + 1) != 2)
              {
                goto LABEL_18;
              }

              v12 = 2;
            }
          }

          else
          {
            v12 = 0;
          }
        }

        else if (*(&v24 + 1) > 4)
        {
          if (*(&v24 + 1) == 5)
          {
            v12 = 5;
          }

          else
          {
            if (*(&v24 + 1) != 6)
            {
LABEL_18:
              v21[0] = v23;
              v21[1] = v24;
              v22 = v25;
              MEMORY[0x18D00F6F0](6);
              AnyHashable.hash(into:)();
              outlined destroy of AnyHashable(v21);
              goto LABEL_23;
            }

            v12 = 7;
          }
        }

        else if (*(&v24 + 1) == 3)
        {
          v12 = 3;
        }

        else
        {
          v12 = 4;
        }

        MEMORY[0x18D00F6F0](v12);
LABEL_23:
        v13 = Hasher._finalize()();
        outlined destroy of ToolbarPlacement.Role(v26);
        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_28;
        }

        if (v2 >= v14)
        {
LABEL_28:
          v15 = *(v3 + 48);
          v16 = v15 + 40 * v2;
          v17 = (v15 + 40 * v6);
          if (v2 != v6 || v16 >= v17 + 40)
          {
            v10 = *v17;
            v11 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v10;
            *(v16 + 16) = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        MEMORY[0x18D00F6F0](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        outlined init with copy of AccessibilityRelationshipScope.Key(*(v3 + 48) + 48 * v6, v20);
        Hasher.init(_seed:)();
        AnyHashable.hash(into:)();
        MEMORY[0x18D00F6F0](v21);
        v12 = Hasher._finalize()();
        outlined destroy of AccessibilityRelationshipScope.Key(v20);
        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 48 * v2);
          v16 = (v14 + 48 * v6);
          if (v2 != v6 || v15 >= v16 + 3)
          {
            v10 = *v16;
            v11 = v16[2];
            v15[1] = v16[1];
            v15[2] = v11;
            *v15 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        outlined init with copy of SceneRequestCache.Item(*(v3 + 48) + 56 * v6, &v21);
        Hasher.init(_seed:)();
        String.hash(into:)();
        AnyHashable.hash(into:)();
        v13 = Hasher._finalize()();
        outlined destroy of SceneRequestCache.Item(&v21);
        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = v15 + 56 * v2;
          v17 = (v15 + 56 * v6);
          if (v2 != v6 || v16 >= v17 + 56)
          {
            v10 = *v17;
            v11 = v17[1];
            v12 = v17[2];
            *(v16 + 48) = *(v17 + 6);
            *(v16 + 16) = v11;
            *(v16 + 32) = v12;
            *v16 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        Hasher.init(_seed:)();
        MEMORY[0x18D00F6F0](v11);
        MEMORY[0x18D00F6F0](v12);
        v13 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 16 * v2);
          v16 = (v14 + 16 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationColumnState.ReplacedRoot(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  ToolbarPlacement.Role.hash(into:)();
  result = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_31:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = xmmword_18CD9F780;
    return result;
  }

  v10 = ~v8;
  while (1)
  {
    outlined init with copy of ToolbarPlacement.Role(*(v6 + 48) + 40 * v9, v24);
    outlined init with copy of ToolbarPlacement.Role(v24, v19);
    outlined init with copy of ToolbarPlacement.Role(a1, &v21);
    if (v20 <= 2)
    {
      switch(v20)
      {
        case 0:
          outlined destroy of ToolbarPlacement.Role(v24);
          if (!*(&v22 + 1))
          {
            goto LABEL_32;
          }

          goto LABEL_26;
        case 1:
          outlined destroy of ToolbarPlacement.Role(v24);
          if (*(&v22 + 1) == 1)
          {
            goto LABEL_32;
          }

          goto LABEL_26;
        case 2:
          outlined destroy of ToolbarPlacement.Role(v24);
          if (*(&v22 + 1) == 2)
          {
            goto LABEL_32;
          }

          goto LABEL_26;
      }
    }

    else
    {
      if (v20 <= 4)
      {
        if (v20 == 3)
        {
          outlined destroy of ToolbarPlacement.Role(v24);
          if (*(&v22 + 1) == 3)
          {
            goto LABEL_32;
          }
        }

        else
        {
          outlined destroy of ToolbarPlacement.Role(v24);
          if (*(&v22 + 1) == 4)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_26;
      }

      if (v20 == 5)
      {
        outlined destroy of ToolbarPlacement.Role(v24);
        if (*(&v22 + 1) == 5)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      if (v20 == 6)
      {
        outlined destroy of ToolbarPlacement.Role(v24);
        if (*(&v22 + 1) == 6)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }
    }

    outlined init with copy of ToolbarPlacement.Role(v19, v18);
    if (*(&v22 + 1) >= 7uLL)
    {
      break;
    }

    outlined destroy of ToolbarPlacement.Role(v24);
    outlined destroy of AnyHashable(v18);
LABEL_26:
    result = _s7SwiftUI16ToolbarPlacementV4RoleO_AEtWOhTm_1(v19, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
LABEL_27:
    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v16[0] = v21;
  v16[1] = v22;
  v17 = v23;
  v11 = MEMORY[0x18D00E7E0](v18, v16);
  outlined destroy of AnyHashable(v16);
  outlined destroy of ToolbarPlacement.Role(v24);
  outlined destroy of AnyHashable(v18);
  if ((v11 & 1) == 0)
  {
    result = outlined destroy of ToolbarPlacement.Role(v19);
    goto LABEL_27;
  }

LABEL_32:
  outlined destroy of ToolbarPlacement.Role(v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v19[0] = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v13 = v19[0];
  }

  v14 = *(v13 + 48) + 40 * v9;
  v15 = *(v14 + 16);
  *a2 = *v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = *(v14 + 32);
  result = specialized _NativeSet._delete(at:)(v9);
  *v3 = v19[0];
  return result;
}

{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  result = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v13 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v12 = v13;
    }

    *a2 = *(*(v12 + 48) + 8 * v8);
    result = specialized _NativeSet._delete(at:)(v8);
    v10 = 0;
    *v2 = v13;
  }

  else
  {
LABEL_5:
    *a2 = 0;
    v10 = 1;
  }

  *(a2 + 8) = v10;
  return result;
}

uint64_t ModifiedContent<>.accessibilityCustomAttribute(_:value:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6->super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  swift_storeEnumTagMultiPayload();
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)(v6, a1, a2);
  return outlined destroy of AccessibilityCustomAttributes.Value(v6);
}

uint64_t ModifiedContent<>.accessibilityCustomAttribute(_:value:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v6 - 8);
  outlined init with copy of AccessibilityCustomAttributes.Value(a1, v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));

  AccessibilityCustomAttributes.init(_:value:)();
  v10[0] = v10[1];
  v8 = lazy protocol witness table accessor for type AccessibilityCustomAttributes? and conformance <A> A?();
  ModifiedContent<>.update<A>(_:combining:isEnabled:)(MEMORY[0x1E69800C0], v10, 1, a2, MEMORY[0x1E69800C0], MEMORY[0x1E69800B8], v8, a3);
}

{
  return ModifiedContent<>.accessibilityCustomAttribute(_:value:)(a1, a2, MEMORY[0x1E6969E50], a3);
}

{
  return ModifiedContent<>.accessibilityCustomAttribute(_:value:)(a1, a2, MEMORY[0x1E696A038], a3);
}

{
  return ModifiedContent<>.accessibilityCustomAttribute(_:value:)(a1, a2, MEMORY[0x1E6968FB0], a3);
}

{
  return ModifiedContent<>.accessibilityCustomAttribute(_:value:)(a1, a2, MEMORY[0x1E6969530], a3);
}

uint64_t outlined init with copy of AccessibilityCustomAttributes.Value(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityCustomAttributes.Value();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AccessibilityCustomAttributes? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AccessibilityCustomAttributes? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomAttributes? and conformance <A> A?)
  {
    type metadata accessor for AccessibilityCustomAttributes?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomAttributes? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for AccessibilityCustomAttributes?()
{
  if (!lazy cache variable for type metadata for AccessibilityCustomAttributes?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityCustomAttributes?);
    }
  }
}

uint64_t outlined destroy of AccessibilityCustomAttributes.Value(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityCustomAttributes.Value();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ModifiedContent<>.update<A>(_:replacing:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    v10 = *(v5 + *(a4 + 36));
    swift_beginAccess();

    closure #1 in ModifiedContent<>.update<A>(_:replacing:isEnabled:)(v10 + 16, a1, a2);
    swift_endAccess();
  }

  return (*(*(a4 - 8) + 16))(a5, v5, a4);
}

uint64_t closure #1 in ModifiedContent<>.update<A>(_:replacing:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v7 + 16))(&v9 - v6, a3, v5);
  return AccessibilityProperties.subscript.setter();
}

void type metadata accessor for MutableBox<CachedEnvironment>()
{
  if (!lazy cache variable for type metadata for MutableBox<CachedEnvironment>)
  {
    v0 = type metadata accessor for MutableBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>);
    }
  }
}

uint64_t SubscriptionView.Subscriber.updateValue()(void *a1)
{
  v3 = a1[2];
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CombineIdentifier();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for ActionDispatcherSubscriber();
  v9 = *(v8 - 8);
  v45 = v8;
  v46 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v41 = v7;
  v42 = &v34 - v10;
  v11 = a1[3];
  *&v12 = v3;
  v38 = v3;
  *(&v12 + 1) = v11;
  v40 = v11;
  v35 = a1[5];
  *&v13 = v7;
  *(&v13 + 1) = v35;
  v36 = v13;
  v37 = v12;
  v49[1] = v13;
  v49[0] = v12;
  v14 = type metadata accessor for SubscriptionView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v21 = v1;
  v22 = *(v1 + 16);
  v39 = *(v21 + 8);
  SubscriptionView.Subscriber.view.getter(&v34 - v19);
  (*(v15 + 16))(v17, v20, v14);
  v23 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 16) = v37;
  *(v24 + 32) = v25;
  (*(v15 + 32))(v24 + v23, v17, v14);
  *&v49[0] = partial apply for closure #1 in SubscriptionView.Subscriber.updateValue();
  *(&v49[0] + 1) = v24;
  MEMORY[0x18D002810](v49);
  v26 = *(v15 + 8);
  v26(v20, v14);

  v27 = v44;
  CombineIdentifier.init()();
  v28 = v42;
  ActionDispatcherSubscriber.init(actionBox:combineIdentifier:)(v22, v27, v42);
  v29 = v38;
  SubscriptionView.Subscriber.view.getter(v20);
  v31 = v47;
  v30 = v48;
  (*(v48 + 16))(v47, &v20[*(v14 + 52)], v29);
  v26(v20, v14);
  v32 = v45;
  swift_getWitnessTable();
  swift_getWitnessTable();
  SubscriptionLifetime.subscribe<A>(subscriber:to:)();
  (*(v30 + 8))(v31, v29);
  return (*(v46 + 8))(v28, v32);
}

uint64_t sub_18BDE2710()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = (type metadata accessor for SubscriptionView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  (*(*(v5 - 8) + 8))(v3);
  (*(*(v1 - 8) + 8))(v3 + v2[15], v1);

  return swift_deallocObject();
}

uint64_t type metadata completion function for ActionDispatcherSubscriber()
{
  result = type metadata accessor for CombineIdentifier();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t SubscriptionView.Subscriber.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SubscriptionView();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t ActionDispatcherSubscriber.init(actionBox:combineIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for ActionDispatcherSubscriber() + 28);
  v6 = type metadata accessor for CombineIdentifier();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_18BDE2A4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CombineIdentifier();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t storeEnumTagSinglePayload for BorderlessButtonStyleEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BorderlessButtonStyleEnvironment(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_18BDE2C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance SearchContentKey@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = MEMORY[0x1E69E6720];
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  v7 = __swift_project_value_buffer(v6, a2);
  return outlined init with copy of ToolbarItemPlacement.Role?(v7, a3, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v5, _s7SwiftUI16CommandOperationVSgMaTm_2);
}

uint64_t one-time initialization function for defaultValue(uint64_t a1, uint64_t *a2)
{
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  v4 = v3;
  __swift_allocate_value_buffer(v3, a2);
  v5 = __swift_project_value_buffer(v4, a2);
  v6 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(v5, 1, 1, v6);
}

{
  type metadata accessor for ToolbarStorage.NavigationProperties?(0);
  v4 = v3;
  __swift_allocate_value_buffer(v3, a2);
  v5 = __swift_project_value_buffer(v4, a2);
  v6 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(v5, 1, 1, v6);
}

uint64_t outlined init with copy of ToolbarItemPlacement.Role?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_18BDE2F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 40) & 0xF000000000000007) != 0)
    {
      return (*(a1 + 32) & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance NavigationPropertiesKey@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for ToolbarStorage.NavigationProperties?(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWOcTm_1(v6, a3, type metadata accessor for ToolbarStorage.NavigationProperties?);
}

uint64_t outlined init with copy of ToolbarStorage.NavigationProperties?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  _s7SwiftUI25ToolbarContentDescriptionVSgMaTm_0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *initializeWithCopy for ActionDispatcherSubscriber(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 28);
  v6 = type metadata accessor for CombineIdentifier();
  v7 = *(*(v6 - 8) + 16);

  v7(&a1[v5], &a2[v5], v6);
  return a1;
}

void *sub_18BDE332C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CombineIdentifier();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}