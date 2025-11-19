unint64_t sub_1C2C58498(uint64_t a1)
{
  result = sub_1C2C584C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C584C0()
{
  result = qword_1ED8B46D8;
  if (!qword_1ED8B46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B46D8);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1C2C58548(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 6;
}

unint64_t sub_1C2C58574()
{
  result = qword_1ED8B46D0;
  if (!qword_1ED8B46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B46D0);
  }

  return result;
}

unint64_t sub_1C2C585D8(uint64_t a1)
{
  result = sub_1C2C58600();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C58600()
{
  result = qword_1ED8B46C8;
  if (!qword_1ED8B46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B46C8);
  }

  return result;
}

unint64_t sub_1C2C58664()
{
  result = qword_1ED8B46C0;
  if (!qword_1ED8B46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B46C0);
  }

  return result;
}

void sub_1C2C586B8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 10) = 7;
}

uint64_t sub_1C2C586CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1C2C587B0(uint64_t a1)
{
  result = sub_1C2C587D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C587D8()
{
  result = qword_1ED8B46E8;
  if (!qword_1ED8B46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B46E8);
  }

  return result;
}

unint64_t sub_1C2C58830()
{
  result = qword_1ED8B46E0;
  if (!qword_1ED8B46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B46E0);
  }

  return result;
}

void sub_1C2C58884(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 12;
}

void sub_1C2C58A94(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 11;
}

uint64_t static PulseSymbolEffect.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return 1;
    }
  }

  else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t SymbolEffectConfiguration.Effect.hash(into:)()
{
  v1 = *v0;
  switch(*(v0 + 10))
  {
    case 1:
      v3 = 1;
      goto LABEL_14;
    case 2:
      MEMORY[0x1C6921C70](2);
      return VariableColorSymbolEffect.hash(into:)();
    case 3:
      v3 = 3;
      goto LABEL_14;
    case 4:
      v3 = 4;
      goto LABEL_14;
    case 5:
      v3 = 5;
      goto LABEL_14;
    case 6:
      v2 = 6;
      goto LABEL_18;
    case 7:
      return MEMORY[0x1C6921C70](7);
    case 8:
      v6 = ~*(v0 + 8);
      v7 = HIBYTE(*(v0 + 4));
      MEMORY[0x1C6921C70](8);
      if (v6)
      {
        sub_1C2C65CC0();
        WiggleSymbolEffect.WiggleStyle.hash(into:)();
        if (v7 == 2)
        {
          return sub_1C2C65CC0();
        }

        goto LABEL_29;
      }

      sub_1C2C65CC0();
      if (v7 != 2)
      {
LABEL_29:
        sub_1C2C65CC0();
      }

      return sub_1C2C65CC0();
    case 9:
      v3 = 9;
LABEL_14:
      MEMORY[0x1C6921C70](v3);
      if (v1 != 2)
      {
        sub_1C2C65CC0();
      }

      goto LABEL_21;
    case 0xA:
      MEMORY[0x1C6921C70](10);
      if (v1 == 2)
      {
        goto LABEL_21;
      }

      sub_1C2C65CC0();
      v5 = v1 & 1;
      goto LABEL_26;
    case 0xB:
      v2 = 11;
      goto LABEL_18;
    case 0xC:
      MEMORY[0x1C6921C70](12);
      if (v1 == 3)
      {
        return sub_1C2C65CC0();
      }

      sub_1C2C65CC0();
      return MEMORY[0x1C6921C70](v1);
    case 0xD:
      v2 = 13;
LABEL_18:
      MEMORY[0x1C6921C70](v2);
      if (v1 == 3)
      {
LABEL_21:
        sub_1C2C65CC0();
      }

      else
      {
        sub_1C2C65CC0();
        v5 = v1;
LABEL_26:
        MEMORY[0x1C6921C70](v5);
      }

      if ((v1 & 0xFF00) == 0x200)
      {
        return sub_1C2C65CC0();
      }

      goto LABEL_29;
    default:
      MEMORY[0x1C6921C70](0);
      if (v1 != 2)
      {
        goto LABEL_29;
      }

      return sub_1C2C65CC0();
  }
}

uint64_t SymbolEffectConfiguration.Effect.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  v4 = *(v0 + 10);
  sub_1C2C65CA0();
  SymbolEffectConfiguration.Effect.hash(into:)();
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C5D2C0()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  v4 = *(v0 + 10);
  sub_1C2C65CA0();
  SymbolEffectConfiguration.Effect.hash(into:)();
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C5D320()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  v4 = *(v0 + 10);
  sub_1C2C65CA0();
  SymbolEffectConfiguration.Effect.hash(into:)();
  return sub_1C2C65CE0();
}

void SymbolEffectConfiguration.effect.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 10);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
}

uint64_t SymbolEffectConfiguration.effect.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 10) = v3;
  return result;
}

uint64_t SymbolEffectConfiguration.init(effect:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 10) = v3;
  return result;
}

uint64_t static SymbolEffectConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 10);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 10);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  return _s7Symbols25SymbolEffectConfigurationV0C0O2eeoiySbAE_AEtFZ_0(&v11, &v8) & 1;
}

uint64_t SymbolEffectConfiguration.hash(into:)()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  v4 = *(v0 + 10);
  return SymbolEffectConfiguration.Effect.hash(into:)();
}

uint64_t SymbolEffectConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 10);
  sub_1C2C65CA0();
  SymbolEffectConfiguration.Effect.hash(into:)();
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C5D4F4()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 10);
  sub_1C2C65CA0();
  SymbolEffectConfiguration.Effect.hash(into:)();
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C5D558()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  v4 = *(v0 + 10);
  return SymbolEffectConfiguration.Effect.hash(into:)();
}

uint64_t sub_1C2C5D59C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 10);
  sub_1C2C65CA0();
  SymbolEffectConfiguration.Effect.hash(into:)();
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C5D5FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 10);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 10);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  return _s7Symbols25SymbolEffectConfigurationV0C0O2eeoiySbAE_AEtFZ_0(&v11, &v8) & 1;
}

unint64_t SymbolEffectConfiguration.rbAnimation.getter()
{
  v1 = 2;
  v2 = 0;
  switch(*(v0 + 10))
  {
    case 1:
      v2 = 0;
      v1 = 3;
      break;
    case 2:
      v2 = 0;
      v1 = 1;
      break;
    case 3:
      v2 = 0;
      v1 = 4;
      break;
    case 4:
      v2 = 0;
      v1 = 5;
      break;
    case 5:
      v2 = 0;
      v1 = 9;
      break;
    case 6:
    case 0xB:
      v2 = 0;
      v1 = 6;
      break;
    case 7:
      v1 = 0;
      v2 = 1;
      break;
    case 8:
      v2 = 0;
      v1 = 10;
      break;
    case 9:
      v2 = 0;
      v1 = 11;
      break;
    case 0xA:
      v2 = 0;
      v1 = 12;
      break;
    case 0xC:
      if (qword_1EC059328 != -1)
      {
        swift_once();
      }

      v2 = 0;
      v1 = dword_1EC0594F0;
      break;
    case 0xD:
      if (qword_1EC059330 != -1)
      {
        swift_once();
      }

      v2 = 0;
      v1 = dword_1EC0594F4;
      break;
    default:
      return v1 | (v2 << 32);
  }

  return v1 | (v2 << 32);
}

unint64_t SymbolEffectConfiguration.rbOptions(with:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(v1 + 8);
  v10 = *(v1 + 10);
  *&v33 = *v1;
  WORD4(v33) = v9;
  BYTE10(v33) = v10;
  v11 = SymbolEffectConfiguration.rbOptions.getter();
  v12 = *MEMORY[0x1E69C7260];
  v13 = v2;
  v14 = MEMORY[0x1E69E6448];
  v34 = MEMORY[0x1E69E6448];
  *&v33 = v13;
  sub_1C2C62A50(&v33, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C2C6222C(v32, v12, isUniquelyReferenced_nonNull_native);
  v16 = v11;
  if (v5)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = *MEMORY[0x1E69C7240];
    v34 = v14;
    if (v4)
    {
      LODWORD(v33) = 2139095040;
    }

    else
    {
      *&v33 = v3;
    }

    sub_1C2C62A50(&v33, v32);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1C2C6222C(v32, v17, v18);
    if (v8)
    {
LABEL_3:
      if (!v6)
      {
        return v16;
      }

      goto LABEL_10;
    }
  }

  v19 = *MEMORY[0x1E69C7248];
  v20 = v7;
  v34 = v14;
  *&v33 = v20;
  sub_1C2C62A50(&v33, v32);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C2C6222C(v32, v19, v21);
  if (!v6)
  {
    return v16;
  }

LABEL_10:
  switch(v10)
  {
    case 1:
      v27 = MEMORY[0x1E69C7208];
LABEL_19:
      v22 = *v27;
      if (*(v16 + 16) && (v28 = sub_1C2C61DC4(v22), (v29 & 1) != 0) && (sub_1C2C62A60(*(v16 + 56) + 32 * v28, &v33), swift_dynamicCast()))
      {
        v26 = LODWORD(v32[0]) | 0x10;
      }

      else
      {
        v26 = 16;
      }

      v34 = MEMORY[0x1E69E7668];
      goto LABEL_27;
    case 9:
      v27 = MEMORY[0x1E69C7258];
      goto LABEL_19;
    case 8:
      v22 = *MEMORY[0x1E69C7280];
      v23 = MEMORY[0x1E69E7668];
      if (*(v16 + 16) && (v24 = sub_1C2C61DC4(*MEMORY[0x1E69C7280]), (v25 & 1) != 0) && (sub_1C2C62A60(*(v16 + 56) + 32 * v24, &v33), swift_dynamicCast()))
      {
        v26 = LODWORD(v32[0]) | 0x100;
      }

      else
      {
        v26 = 256;
      }

      v34 = v23;
LABEL_27:
      LODWORD(v33) = v26;
      sub_1C2C62A50(&v33, v32);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C2C6222C(v32, v22, v30);
      break;
  }

  return v16;
}

unint64_t SymbolEffectConfiguration.rbOptions.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 10);
  v4 = sub_1C2C62ABC(MEMORY[0x1E69E7CC0]);
  switch(v3)
  {
    case 1:
      if ((LOWORD(v1) & 0xFF00) != 0x200)
      {
        v17 = *MEMORY[0x1E69C7218];
        v53 = MEMORY[0x1E69E6370];
        LOBYTE(v52[0]) = BYTE1(v1) & 1;
        sub_1C2C62A50(v52, v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1C2C6222C(v51, v17, isUniquelyReferenced_nonNull_native);
      }

      if (LOBYTE(v1))
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      v15 = LOBYTE(v1) == 2;
      v16 = MEMORY[0x1E69C7208];
      goto LABEL_52;
    case 2:
      v19 = (LODWORD(v1) >> 8) & 1;
      v20 = v19 | 8;
      if ((LOBYTE(v1) & 1) == 0)
      {
        v20 = (LODWORD(v1) >> 8) & 1;
      }

      if (LOBYTE(v1) != 2)
      {
        v19 = v20;
      }

      if ((*&v1 & 0xFF0000) == 0x20000)
      {
        v21 = 0;
      }

      else
      {
        v21 = (LODWORD(v1) >> 15) & 2;
      }

      v5 = *MEMORY[0x1E69C7270];
      v8 = v19 | v21;
      v53 = MEMORY[0x1E69E7668];
      goto LABEL_98;
    case 3:
      if ((LOWORD(v1) & 0xFF00) == 0x200)
      {
        return v4;
      }

      v5 = *MEMORY[0x1E69C7218];
      v53 = MEMORY[0x1E69E6370];
      LOBYTE(v52[0]) = BYTE1(v1) & 1;
      goto LABEL_99;
    case 4:
      if ((LOWORD(v1) & 0xFF00) != 0x200)
      {
        v24 = *MEMORY[0x1E69C7218];
        v53 = MEMORY[0x1E69E6370];
        LOBYTE(v52[0]) = BYTE1(v1) & 1;
        sub_1C2C62A50(v52, v51);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C2C6222C(v51, v24, v25);
      }

      v26 = LOBYTE(v1);
      if (LOBYTE(v1))
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }

      goto LABEL_51;
    case 5:
      if ((LOWORD(v1) & 0xFF00) != 0x200)
      {
        v29 = *MEMORY[0x1E69C7218];
        v53 = MEMORY[0x1E69E6370];
        LOBYTE(v52[0]) = BYTE1(v1) & 1;
        sub_1C2C62A50(v52, v51);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C2C6222C(v51, v29, v30);
      }

      v26 = LOBYTE(v1);
      if (LOBYTE(v1))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

LABEL_51:
      v15 = v26 == 2;
      v16 = MEMORY[0x1E69C7200];
      goto LABEL_52;
    case 6:
      if ((LOWORD(v1) & 0xFF00) != 0x200)
      {
        v22 = *MEMORY[0x1E69C7218];
        v53 = MEMORY[0x1E69E6370];
        LOBYTE(v52[0]) = BYTE1(v1) & 1;
        sub_1C2C62A50(v52, v51);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C2C6222C(v51, v22, v23);
      }

      if (LOBYTE(v1) > 1u)
      {
        if (LOBYTE(v1) == 2)
        {
          v8 = 228;
        }

        else
        {
          symbols_fall_2024_os_versions();
          if (dyld_program_sdk_at_least())
          {
            v8 = 0;
          }

          else
          {
            v8 = 224;
          }
        }
      }

      else if (LOBYTE(v1))
      {
        v8 = 227;
      }

      else
      {
        v8 = 226;
      }

      goto LABEL_86;
    case 7:
      return v4;
    case 8:
      if (v2 >> 8 != 2)
      {
        v34 = *MEMORY[0x1E69C7218];
        v53 = MEMORY[0x1E69E6370];
        LOBYTE(v52[0]) = BYTE1(v2) & 1;
        sub_1C2C62A50(v52, v51);
        v35 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C2C6222C(v51, v34, v35);
      }

      if (v2 > 1u)
      {
        v8 = 0;
      }

      else if (v2)
      {
        [objc_opt_self() _normalizeAngle_];
        if (v45 == 0.0)
        {
          v8 = 17;
        }

        else if (v45 == 90.0)
        {
          v8 = 18;
        }

        else if (v45 == -90.0)
        {
          v8 = 34;
        }

        else if (v45 == 180.0)
        {
          v8 = 33;
        }

        else
        {
          v46 = *MEMORY[0x1E69C7278];
          v47 = v45 * 0.0174532925;
          v53 = MEMORY[0x1E69E6448];
          v52[0] = v47;
          sub_1C2C62A50(v52, v51);
          v48 = swift_isUniquelyReferenced_nonNull_native();
          sub_1C2C6222C(v51, v46, v48);
          v8 = 0;
        }
      }

      else if (LOBYTE(v1))
      {
        v8 = 19;
      }

      else
      {
        v8 = 35;
      }

      v44 = MEMORY[0x1E69C7280];
      goto LABEL_97;
    case 9:
      if ((LOWORD(v1) & 0xFF00) != 0x200)
      {
        v12 = *MEMORY[0x1E69C7218];
        v53 = MEMORY[0x1E69E6370];
        LOBYTE(v52[0]) = BYTE1(v1) & 1;
        sub_1C2C62A50(v52, v51);
        v13 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C2C6222C(v51, v12, v13);
      }

      if (LOBYTE(v1))
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      v15 = LOBYTE(v1) == 2;
      v16 = MEMORY[0x1E69C7258];
LABEL_52:
      v5 = *v16;
      v31 = MEMORY[0x1E69E7668];
      if (v15)
      {
        v14 = 0;
      }

      goto LABEL_54;
    case 10:
      if ((LOWORD(v1) & 0xFF00) != 0x200)
      {
        v32 = *MEMORY[0x1E69C7218];
        v53 = MEMORY[0x1E69E6370];
        LOBYTE(v52[0]) = BYTE1(v1) & 1;
        sub_1C2C62A50(v52, v51);
        v33 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C2C6222C(v51, v32, v33);
      }

      v14 = LOBYTE(v1) & 1;
      v5 = *MEMORY[0x1E69C7210];
      v31 = MEMORY[0x1E69E7668];
LABEL_54:
      v53 = v31;
      LODWORD(v52[0]) = v14;
      goto LABEL_99;
    case 11:
      if ((LOWORD(v1) & 0xFF00) != 0x200)
      {
        v6 = *MEMORY[0x1E69C7218];
        v53 = MEMORY[0x1E69E6370];
        LOBYTE(v52[0]) = BYTE1(v1) & 1;
        sub_1C2C62A50(v52, v51);
        v7 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C2C6222C(v51, v6, v7);
      }

      v8 = dword_1C2C67DA0[SLOBYTE(v1)];
LABEL_86:
      v44 = MEMORY[0x1E69C7250];
LABEL_97:
      v5 = *v44;
      v53 = MEMORY[0x1E69E7668];
LABEL_98:
      LODWORD(v52[0]) = v8;
      goto LABEL_99;
    case 12:
      v9 = LOBYTE(v1);
      if (LOBYTE(v1) > 1u)
      {
        if (LOBYTE(v1) != 2)
        {
          goto LABEL_67;
        }
      }

      else if (LOBYTE(v1))
      {
        v10 = *MEMORY[0x1E69C7218];
        v53 = MEMORY[0x1E69E6370];
        LOBYTE(v52[0]) = 0;
        sub_1C2C62A50(v52, v51);
        v11 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C2C6222C(v51, v10, v11);
        goto LABEL_67;
      }

      v36 = *MEMORY[0x1E69C7218];
      v53 = MEMORY[0x1E69E6370];
      v37 = 1;
      LOBYTE(v52[0]) = 1;
      sub_1C2C62A50(v52, v51);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C2C6222C(v51, v36, v38);
      if (v9 == 2)
      {
        goto LABEL_68;
      }

LABEL_67:
      v37 = 0;
LABEL_68:
      if (qword_1EC059338 != -1)
      {
        swift_once();
      }

      v5 = qword_1EC0594F8;
      v53 = MEMORY[0x1E69E7668];
      LODWORD(v52[0]) = v37;
      goto LABEL_99;
    case 13:
      if (LOBYTE(v1) > 1u)
      {
        if (LOBYTE(v1) != 2)
        {
          goto LABEL_75;
        }
      }

      else if (LOBYTE(v1))
      {
        v27 = *MEMORY[0x1E69C7218];
        v53 = MEMORY[0x1E69E6370];
        LOBYTE(v52[0]) = 0;
        sub_1C2C62A50(v52, v51);
        v28 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C2C6222C(v51, v27, v28);
        goto LABEL_75;
      }

      v39 = *MEMORY[0x1E69C7218];
      v53 = MEMORY[0x1E69E6370];
      v40 = 1;
      LOBYTE(v52[0]) = 1;
      sub_1C2C62A50(v52, v51);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C2C6222C(v51, v39, v41);
      if (LOBYTE(v1) == 2)
      {
        goto LABEL_76;
      }

LABEL_75:
      v40 = 0;
LABEL_76:
      if ((LOWORD(v1) & 0xFF00) == 0x200)
      {
        v42 = 0;
      }

      else
      {
        v42 = (LODWORD(v1) >> 7) & 2;
      }

      v43 = v40 | v42;
      if (qword_1EC059338 != -1)
      {
        swift_once();
      }

      v5 = qword_1EC0594F8;
      v53 = MEMORY[0x1E69E7668];
      LODWORD(v52[0]) = v43;
LABEL_99:
      sub_1C2C62A50(v52, v51);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C2C6222C(v51, v5, v49);
      return v4;
    default:
      if (LOBYTE(v1) == 2)
      {
        return v4;
      }

      v5 = *MEMORY[0x1E69C7218];
      v53 = MEMORY[0x1E69E6370];
      LOBYTE(v52[0]) = LOBYTE(v1) & 1;
      goto LABEL_99;
  }
}

void PulseSymbolEffect.configuration.getter(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
}

uint64_t PulseSymbolEffect.hash(into:)()
{
  if (*v0 != 2)
  {
    sub_1C2C65CC0();
  }

  return sub_1C2C65CC0();
}

uint64_t PulseSymbolEffect.hashValue.getter()
{
  v1 = *v0;
  sub_1C2C65CA0();
  if (v1 != 2)
  {
    sub_1C2C65CC0();
  }

  sub_1C2C65CC0();
  return sub_1C2C65CE0();
}

void sub_1C2C5E448(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
}

uint64_t sub_1C2C5E45C()
{
  v1 = *v0;
  sub_1C2C65CA0();
  if (v1 != 2)
  {
    sub_1C2C65CC0();
  }

  sub_1C2C65CC0();
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C5E4C0()
{
  if (*v0 != 2)
  {
    sub_1C2C65CC0();
  }

  return sub_1C2C65CC0();
}

uint64_t sub_1C2C5E508()
{
  v1 = *v0;
  sub_1C2C65CA0();
  if (v1 != 2)
  {
    sub_1C2C65CC0();
  }

  sub_1C2C65CC0();
  return sub_1C2C65CE0();
}

BOOL sub_1C2C5E568(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

void BounceSymbolEffect.configuration.getter(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 1;
}

void sub_1C2C5E5FC(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 1;
}

Symbols::VariableColorSymbolEffect __swiftcall VariableColorSymbolEffect.init()()
{
  *v0 = 514;
  *(v0 + 2) = 2;
  return result;
}

void VariableColorSymbolEffect.reversing.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  *a1 = 1;
  *(a1 + 1) = v2;
}

void VariableColorSymbolEffect.nonReversing.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  *a1 = 0;
  *(a1 + 1) = v2;
}

void VariableColorSymbolEffect.cumulative.getter(uint64_t a1@<X8>)
{
  v2 = v1[2];
  *a1 = *v1;
  *(a1 + 2) = v2;
}

void VariableColorSymbolEffect.iterative.getter(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  *a1 = *v1;
  a1[1] = 1;
  a1[2] = v2;
}

void VariableColorSymbolEffect.configuration.getter(uint64_t a1@<X8>)
{
  *a1 = *v1 | (*(v1 + 2) << 16);
  *(a1 + 8) = 0;
  *(a1 + 10) = 2;
}

uint64_t VariableColorSymbolEffect.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  if (*v0 != 2)
  {
    sub_1C2C65CC0();
  }

  sub_1C2C65CC0();
  if (v1 != 2)
  {
    sub_1C2C65CC0();
  }

  sub_1C2C65CC0();
  if (v2 != 2)
  {
    sub_1C2C65CC0();
  }

  return sub_1C2C65CC0();
}

uint64_t VariableColorSymbolEffect.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1C2C65CA0();
  VariableColorSymbolEffect.hash(into:)();
  return sub_1C2C65CE0();
}

void sub_1C2C5E840(uint64_t a1@<X8>)
{
  *a1 = *v1 | (*(v1 + 2) << 16);
  *(a1 + 8) = 0;
  *(a1 + 10) = 2;
}

uint64_t sub_1C2C5E860()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1C2C65CA0();
  VariableColorSymbolEffect.hash(into:)();
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C5E8B8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1C2C65CA0();
  VariableColorSymbolEffect.hash(into:)();
  return sub_1C2C65CE0();
}

void ScaleSymbolEffect.up.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 1);
  *a1 = 1;
  a1[1] = v2;
}

void ScaleSymbolEffect.down.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 1);
  *a1 = 0;
  a1[1] = v2;
}

void ScaleSymbolEffect.configuration.getter(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 3;
}

void sub_1C2C5E9D8(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 3;
}

void AppearSymbolEffect.configuration.getter(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 4;
}

void sub_1C2C5EA48(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 4;
}

void DisappearSymbolEffect.configuration.getter(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 5;
}

void sub_1C2C5EAB8(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 5;
}

void ReplaceSymbolEffect.configuration.getter(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 6;
}

void AutomaticSymbolEffect.configuration.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 10) = 7;
}

uint64_t WiggleSymbolEffect.WiggleStyle.hash(into:)()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v4 = 0;
LABEL_9:
    MEMORY[0x1C6921C70](v4);
    return sub_1C2C65CC0();
  }

  if (*(v0 + 8) != 1)
  {
    v4 = 2;
    goto LABEL_9;
  }

  MEMORY[0x1C6921C70](1);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return MEMORY[0x1C6921C90](v2);
}

uint64_t WiggleSymbolEffect.WiggleStyle.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C2C65CA0();
  WiggleSymbolEffect.WiggleStyle.hash(into:)();
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C5ECC0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C2C65CA0();
  WiggleSymbolEffect.WiggleStyle.hash(into:)();
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C5ED18()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C2C65CA0();
  WiggleSymbolEffect.WiggleStyle.hash(into:)();
  return sub_1C2C65CE0();
}

void WiggleSymbolEffect.style.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t WiggleSymbolEffect.style.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void WiggleSymbolEffect.clockwise.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 9);
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 9) = v2;
}

void WiggleSymbolEffect.counterClockwise.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 9);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 9) = v2;
}

void WiggleSymbolEffect.left.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 9);
  *a1 = 0x4066800000000000;
  *(a1 + 8) = 1;
  *(a1 + 9) = v2;
}

void WiggleSymbolEffect.right.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 9);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = v2;
}

void WiggleSymbolEffect.up.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 9);
  *a1 = 0xC056800000000000;
  *(a1 + 8) = 1;
  *(a1 + 9) = v2;
}

void WiggleSymbolEffect.down.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 9);
  *a1 = 0x4056800000000000;
  *(a1 + 8) = 1;
  *(a1 + 9) = v2;
}

void WiggleSymbolEffect.forward.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 9);
  *a1 = 1;
  *(a1 + 8) = 2;
  *(a1 + 9) = v2;
}

void WiggleSymbolEffect.backward.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 9);
  *a1 = 0;
  *(a1 + 8) = 2;
  *(a1 + 9) = v2;
}

void WiggleSymbolEffect.custom(angle:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 9);
  *a1 = a2;
  *(a1 + 8) = 1;
  *(a1 + 9) = v3;
}

void WiggleSymbolEffect.byLayer.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = 1;
}

void WiggleSymbolEffect.wholeSymbol.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void WiggleSymbolEffect.configuration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 10) = 8;
}

uint64_t WiggleSymbolEffect.hash(into:)()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 255)
  {
    sub_1C2C65CC0();
    if (v1 == 2)
    {
      return sub_1C2C65CC0();
    }
  }

  else
  {
    v3 = *v0;
    sub_1C2C65CC0();
    WiggleSymbolEffect.WiggleStyle.hash(into:)();
    if (v1 == 2)
    {
      return sub_1C2C65CC0();
    }
  }

  sub_1C2C65CC0();
  return sub_1C2C65CC0();
}

uint64_t WiggleSymbolEffect.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1C2C65CA0();
  if (v2 == 255)
  {
    sub_1C2C65CC0();
    if (v3 == 2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C2C65CC0();
    WiggleSymbolEffect.WiggleStyle.hash(into:)();
    if (v3 == 2)
    {
      goto LABEL_6;
    }
  }

  sub_1C2C65CC0();
LABEL_6:
  sub_1C2C65CC0();
  return sub_1C2C65CE0();
}

void sub_1C2C5F074(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 10) = 8;
}

uint64_t sub_1C2C5F098()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1C2C65CA0();
  if (v2 == 255)
  {
    sub_1C2C65CC0();
    if (v3 == 2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C2C65CC0();
    WiggleSymbolEffect.WiggleStyle.hash(into:)();
    if (v3 == 2)
    {
      goto LABEL_6;
    }
  }

  sub_1C2C65CC0();
LABEL_6:
  sub_1C2C65CC0();
  return sub_1C2C65CE0();
}

void RotateSymbolEffect.configuration.getter(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 9;
}

uint64_t _s7Symbols17ScaleSymbolEffectV4hash4intoys6HasherVz_tF_0()
{
  v1 = v0[1];
  if (*v0 != 2)
  {
    sub_1C2C65CC0();
  }

  sub_1C2C65CC0();
  if (v1 != 2)
  {
    sub_1C2C65CC0();
  }

  return sub_1C2C65CC0();
}

uint64_t _s7Symbols17ScaleSymbolEffectV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C2C65CA0();
  if (v1 != 2)
  {
    sub_1C2C65CC0();
  }

  sub_1C2C65CC0();
  if (v2 != 2)
  {
    sub_1C2C65CC0();
  }

  sub_1C2C65CC0();
  return sub_1C2C65CE0();
}

void sub_1C2C5F2AC(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 9;
}

uint64_t sub_1C2C5F2C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C2C65CA0();
  if (v1 != 2)
  {
    sub_1C2C65CC0();
  }

  sub_1C2C65CC0();
  if (v2 != 2)
  {
    sub_1C2C65CC0();
  }

  sub_1C2C65CC0();
  return sub_1C2C65CE0();
}

uint64_t BreatheSymbolEffect.BreatheStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C2C65CA0();
  MEMORY[0x1C6921C70](v1);
  return sub_1C2C65CE0();
}

uint64_t _s7Symbols17DrawLayerBehaviorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C2C65CA0();
  MEMORY[0x1C6921C70](v1);
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C5F444()
{
  v1 = *v0;
  sub_1C2C65CA0();
  MEMORY[0x1C6921C70](v1);
  return sub_1C2C65CE0();
}

void BreatheSymbolEffect.configuration.getter(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 10;
}

uint64_t BreatheSymbolEffect.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 != 2)
  {
    sub_1C2C65CC0();
    MEMORY[0x1C6921C70](v1 & 1);
    if (v2 == 2)
    {
      return sub_1C2C65CC0();
    }

    goto LABEL_3;
  }

  sub_1C2C65CC0();
  if (v2 != 2)
  {
LABEL_3:
    sub_1C2C65CC0();
  }

  return sub_1C2C65CC0();
}

uint64_t BreatheSymbolEffect.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C2C65CA0();
  if (v1 != 2)
  {
    sub_1C2C65CC0();
    MEMORY[0x1C6921C70](v1 & 1);
    if (v2 == 2)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_1C2C65CC0();
  if (v2 != 2)
  {
LABEL_3:
    sub_1C2C65CC0();
  }

LABEL_5:
  sub_1C2C65CC0();
  return sub_1C2C65CE0();
}

void sub_1C2C5F608(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 10;
}

uint64_t sub_1C2C5F628()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C2C65CA0();
  if (v1 != 2)
  {
    sub_1C2C65CC0();
    MEMORY[0x1C6921C70](v1 & 1);
    if (v2 == 2)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_1C2C65CC0();
  if (v2 != 2)
  {
LABEL_3:
    sub_1C2C65CC0();
  }

LABEL_5:
  sub_1C2C65CC0();
  return sub_1C2C65CE0();
}

uint64_t (*ReplaceSymbolEffect.MagicReplace.fallback.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_1C2C5F744;
}

void ReplaceSymbolEffect.MagicReplace.configuration.getter(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 11;
}

uint64_t sub_1C2C5F770(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v2 == 3)
  {
    if (v4 != 3)
    {
      return 0;
    }

LABEL_5:
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v2 == v4)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_1C2C5F7D0(__int16 *a1, __int16 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return sub_1C2C5F770(&v5, &v4) & 1;
}

void DrawOnSymbolEffect.configuration.getter(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 12;
}

uint64_t DrawOnSymbolEffect.hash(into:)()
{
  v1 = *v0;
  if (v1 == 3)
  {
    return sub_1C2C65CC0();
  }

  sub_1C2C65CC0();
  return MEMORY[0x1C6921C70](v1);
}

uint64_t DrawOnSymbolEffect.hashValue.getter()
{
  v1 = *v0;
  sub_1C2C65CA0();
  sub_1C2C65CC0();
  if (v1 != 3)
  {
    MEMORY[0x1C6921C70](v1);
  }

  return sub_1C2C65CE0();
}

uint64_t sub_1C2C5F99C()
{
  v1 = *v0;
  sub_1C2C65CA0();
  sub_1C2C65CC0();
  if (v1 != 3)
  {
    MEMORY[0x1C6921C70](v1);
  }

  return sub_1C2C65CE0();
}

uint64_t sub_1C2C5FA04()
{
  v1 = *v0;
  if (v1 == 3)
  {
    return sub_1C2C65CC0();
  }

  sub_1C2C65CC0();
  return MEMORY[0x1C6921C70](v1);
}

uint64_t sub_1C2C5FA50()
{
  v1 = *v0;
  sub_1C2C65CA0();
  sub_1C2C65CC0();
  if (v1 != 3)
  {
    MEMORY[0x1C6921C70](v1);
  }

  return sub_1C2C65CE0();
}

void DrawOffSymbolEffect.individually.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 1);
  *a1 = 2;
  a1[1] = v2;
}

void DrawOffSymbolEffect.configuration.getter(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 13;
}

uint64_t sub_1C2C5FB28()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 != 3)
  {
    sub_1C2C65CC0();
    MEMORY[0x1C6921C70](v1);
    if (v2 == 2)
    {
      return sub_1C2C65CC0();
    }

    goto LABEL_3;
  }

  sub_1C2C65CC0();
  if (v2 != 2)
  {
LABEL_3:
    sub_1C2C65CC0();
  }

  return sub_1C2C65CC0();
}

uint64_t sub_1C2C5FBA8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C2C65CA0();
  if (v1 != 3)
  {
    sub_1C2C65CC0();
    MEMORY[0x1C6921C70](v1);
    if (v2 == 2)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_1C2C65CC0();
  if (v2 != 2)
  {
LABEL_3:
    sub_1C2C65CC0();
  }

LABEL_5:
  sub_1C2C65CC0();
  return sub_1C2C65CE0();
}

void sub_1C2C5FC48(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 10) = 13;
}

uint64_t sub_1C2C5FC60()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C2C65CA0();
  if (v1 != 3)
  {
    sub_1C2C65CC0();
    MEMORY[0x1C6921C70](v1);
    if (v2 == 2)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_1C2C65CC0();
  if (v2 != 2)
  {
LABEL_3:
    sub_1C2C65CC0();
  }

LABEL_5:
  sub_1C2C65CC0();
  return sub_1C2C65CE0();
}

id sub_1C2C5FCFC(uint64_t *a1)
{
  result = 0;
  v3 = *a1;
  v4 = *(a1 + 10);
  if (v4 > 4)
  {
    if (*(a1 + 10) <= 9u)
    {
      switch(v4)
      {
        case 5u:
          return DisappearSymbolEffect.objcRepresentation.getter();
        case 8u:
          v9 = *a1;
          v10 = *(a1 + 4);
          return WiggleSymbolEffect.objcRepresentation.getter();
        case 9u:
          return RotateSymbolEffect.objcRepresentation.getter();
      }

      return result;
    }

    if (v4 == 10)
    {
      return BreatheSymbolEffect.objcRepresentation.getter();
    }

    if (v4 != 12)
    {
      if (v4 == 13)
      {
        return DrawOffSymbolEffect.objcRepresentation.getter();
      }

      return result;
    }

    v5 = [objc_opt_self() effect];
    v6 = v5;
    v8 = qword_1C2C67DB0[v3];
LABEL_26:
    [v5 set:v8 layerBehavior:?];
    return v6;
  }

  if (*(a1 + 10) <= 1u)
  {
    if (*(a1 + 10))
    {
      return BounceSymbolEffect.objcRepresentation.getter();
    }

    v5 = [objc_opt_self() effect];
    v6 = v5;
    v7 = 1;
    if ((v3 & 1) == 0)
    {
      v7 = 2;
    }

    if (v3 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    goto LABEL_26;
  }

  switch(v4)
  {
    case 2u:
      return VariableColorSymbolEffect.objcRepresentation.getter();
    case 3u:
      return ScaleSymbolEffect.objcRepresentation.getter();
    case 4u:
      return AppearSymbolEffect.objcRepresentation.getter();
  }

  return result;
}

id BounceSymbolEffect.objcRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 2)
  {
    v3 = objc_opt_self();
    v4 = &selRef_effect;
  }

  else
  {
    v3 = objc_opt_self();
    v4 = &selRef_bounceDownEffect;
    if (v1)
    {
      v4 = &selRef_bounceUpEffect;
    }
  }

  v5 = [v3 *v4];
  v6 = v5;
  v7 = 1;
  if ((v2 & 1) == 0)
  {
    v7 = 2;
  }

  if (v2 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v5 set:v8 layerBehavior:?];
  return v6;
}

id PulseSymbolEffect.objcRepresentation.getter()
{
  v1 = *v0;
  v2 = [objc_opt_self() effect];
  v3 = v2;
  v4 = 1;
  if ((v1 & 1) == 0)
  {
    v4 = 2;
  }

  if (v1 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  [v2 set:v5 layerBehavior:?];
  return v3;
}

id ScaleSymbolEffect.objcRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 2)
  {
    v3 = objc_opt_self();
    v4 = &selRef_effect;
  }

  else
  {
    v3 = objc_opt_self();
    v4 = &selRef_scaleDownEffect;
    if (v1)
    {
      v4 = &selRef_scaleUpEffect;
    }
  }

  v5 = [v3 *v4];
  v6 = v5;
  v7 = 1;
  if ((v2 & 1) == 0)
  {
    v7 = 2;
  }

  if (v2 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v5 set:v8 layerBehavior:?];
  return v6;
}

void *VariableColorSymbolEffect.objcRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = [objc_opt_self() effect];
  v5 = v4;
  if (v2 == 2)
  {
    if (v1 == 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    [v4 set:v8 fillStyle:?];
    if (v1 == 2)
    {
LABEL_3:
      if (v3 == 2)
      {
        return v5;
      }

      goto LABEL_4;
    }
  }

  if (v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [v5 set:v9 playbackStyle:?];
  if (v3 != 2)
  {
LABEL_4:
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    [v5 set:v6 inactiveStyle:?];
  }

  return v5;
}

id AppearSymbolEffect.objcRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 2)
  {
    v3 = objc_opt_self();
    v4 = &selRef_effect;
  }

  else
  {
    v3 = objc_opt_self();
    v4 = &selRef_appearDownEffect;
    if (v1)
    {
      v4 = &selRef_appearUpEffect;
    }
  }

  v5 = [v3 *v4];
  v6 = v5;
  v7 = 1;
  if ((v2 & 1) == 0)
  {
    v7 = 2;
  }

  if (v2 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v5 set:v8 layerBehavior:?];
  return v6;
}

id DisappearSymbolEffect.objcRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 2)
  {
    v3 = objc_opt_self();
    v4 = &selRef_effect;
  }

  else
  {
    v3 = objc_opt_self();
    v4 = &selRef_disappearDownEffect;
    if (v1)
    {
      v4 = &selRef_disappearUpEffect;
    }
  }

  v5 = [v3 *v4];
  v6 = v5;
  v7 = 1;
  if ((v2 & 1) == 0)
  {
    v7 = 2;
  }

  if (v2 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v5 set:v8 layerBehavior:?];
  return v6;
}

id WiggleSymbolEffect.objcRepresentation.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      v6 = [objc_opt_self() effect];
      goto LABEL_12;
    }

    v4 = objc_opt_self();
    v5 = &selRef_wiggleForwardEffect;
    if ((LOBYTE(v1) & 1) == 0)
    {
      v5 = &selRef_wiggleBackwardEffect;
    }
  }

  else
  {
    if (v2)
    {
      v7 = v1;
      v8 = [objc_opt_self() effect];
      [v8 set:3 style:?];
      [v8 set:v7 angle:?];
      goto LABEL_13;
    }

    v4 = objc_opt_self();
    v5 = &selRef_wiggleClockwiseEffect;
    if ((LOBYTE(v1) & 1) == 0)
    {
      v5 = &selRef_wiggleCounterClockwiseEffect;
    }
  }

  v6 = [v4 *v5];
LABEL_12:
  v8 = v6;
LABEL_13:
  v9 = 1;
  if ((v3 & 1) == 0)
  {
    v9 = 2;
  }

  if (v3 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  [v8 set:v10 layerBehavior:?];

  return v8;
}

id RotateSymbolEffect.objcRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 2)
  {
    v3 = objc_opt_self();
    v4 = &selRef_effect;
  }

  else
  {
    v3 = objc_opt_self();
    v4 = &selRef_rotateCounterClockwiseEffect;
    if (v1)
    {
      v4 = &selRef_rotateClockwiseEffect;
    }
  }

  v5 = [v3 *v4];
  v6 = v5;
  v7 = 1;
  if ((v2 & 1) == 0)
  {
    v7 = 2;
  }

  if (v2 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v5 set:v8 layerBehavior:?];
  return v6;
}

id BreatheSymbolEffect.objcRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 2)
  {
    v3 = objc_opt_self();
    v4 = &selRef_effect;
  }

  else
  {
    v3 = objc_opt_self();
    v4 = &selRef_breatheByDimmingEffect;
    if (v1)
    {
      v4 = &selRef_breatheByScalingEffect;
    }
  }

  v5 = [v3 *v4];
  v6 = v5;
  v7 = 1;
  if ((v2 & 1) == 0)
  {
    v7 = 2;
  }

  if (v2 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v5 set:v8 layerBehavior:?];
  return v6;
}

id DrawOnSymbolEffect.objcRepresentation.getter()
{
  v1 = *v0;
  v2 = [objc_opt_self() effect];
  [v2 set:qword_1C2C67DB0[v1] layerBehavior:?];
  return v2;
}

id DrawOffSymbolEffect.objcRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = [objc_opt_self() effect];
  [v3 set:qword_1C2C67DB0[v1] layerBehavior:?];
  if (v2 != 2)
  {
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    [v3 set:v4 isReversed:?];
  }

  return v3;
}

id ReplaceSymbolEffect.objcRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = [objc_opt_self() *off_1E819A498[v1]];
  v4 = v3;
  v5 = 1;
  if ((v2 & 1) == 0)
  {
    v5 = 2;
  }

  if (v2 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  [v3 set:v6 layerBehavior:?];
  return v4;
}

id AutomaticSymbolEffect.objcRepresentation.getter()
{
  v0 = [objc_opt_self() transition];

  return v0;
}

id SymbolEffect.objcEffect.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v6);
  v3 = v6;
  v4 = v7;
  v5 = v8;
  return sub_1C2C5FCFC(&v3);
}

id SymbolEffect.objcTransition.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v6);
  switch(v7)
  {
    case 11:
      v3 = objc_opt_self();
      v4 = ReplaceSymbolEffect.objcRepresentation.getter();
      v5 = [v3 magicTransitionWithFallback_];

      return v5;
    case 7:
      return [objc_opt_self() transition];
    case 6:
      return ReplaceSymbolEffect.objcRepresentation.getter();
    default:
      return 0;
  }
}

id sub_1C2C607E8()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = ReplaceSymbolEffect.objcRepresentation.getter();
  v4 = [v2 magicTransitionWithFallback_];

  return v4;
}

void *sub_1C2C60858@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(a1 + 16))(&v10);
  v4 = v10;
  switch(v12)
  {
    case 1:
      v9 = v10 >> 8;
      *(a2 + 24) = &type metadata for BounceSymbolEffect;
      result = sub_1C2C648DC();
      goto LABEL_9;
    case 2:
      v7 = v10 >> 8;
      v8 = v10 >> 16;
      *(a2 + 24) = &type metadata for VariableColorSymbolEffect;
      result = sub_1C2C64888();
      *(a2 + 32) = result;
      *a2 = v4;
      *(a2 + 1) = v7;
      *(a2 + 2) = v8;
      return result;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 11:
    case 12:
    case 13:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    case 8:
      v5 = v11;
      v6 = HIBYTE(v11);
      *(a2 + 24) = &type metadata for WiggleSymbolEffect;
      result = sub_1C2C647E0();
      *(a2 + 32) = result;
      *a2 = v4;
      *(a2 + 8) = v5;
      *(a2 + 9) = v6;
      return result;
    case 9:
      v9 = v10 >> 8;
      *(a2 + 24) = &type metadata for RotateSymbolEffect;
      result = sub_1C2C6478C();
      goto LABEL_9;
    case 10:
      v9 = v10 >> 8;
      *(a2 + 24) = &type metadata for BreatheSymbolEffect;
      result = sub_1C2C64738();
LABEL_9:
      *(a2 + 32) = result;
      *a2 = v4;
      *(a2 + 1) = v9;
      break;
    default:
      *(a2 + 24) = &type metadata for PulseSymbolEffect;
      result = sub_1C2C64930();
      *(a2 + 32) = result;
      *a2 = v4;
      break;
  }

  return result;
}

void *sub_1C2C6099C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(a1 + 16))(&v10);
  v4 = v10;
  switch(v12)
  {
    case 1:
      v5 = v10 >> 8;
      *(a2 + 24) = &type metadata for BounceSymbolEffect;
      result = sub_1C2C648DC();
      goto LABEL_15;
    case 2:
      v8 = v10 >> 8;
      v9 = v10 >> 16;
      *(a2 + 24) = &type metadata for VariableColorSymbolEffect;
      result = sub_1C2C64888();
      *(a2 + 32) = result;
      *a2 = v4;
      *(a2 + 1) = v8;
      *(a2 + 2) = v9;
      return result;
    case 3:
      v5 = v10 >> 8;
      *(a2 + 24) = &type metadata for ScaleSymbolEffect;
      result = sub_1C2C64834();
      goto LABEL_15;
    case 4:
      v5 = v10 >> 8;
      *(a2 + 24) = &type metadata for AppearSymbolEffect;
      result = sub_1C2C646E4();
      goto LABEL_15;
    case 5:
      v5 = v10 >> 8;
      *(a2 + 24) = &type metadata for DisappearSymbolEffect;
      result = sub_1C2C64690();
      goto LABEL_15;
    case 6:
    case 7:
    case 11:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    case 8:
      v6 = v11;
      v7 = HIBYTE(v11);
      *(a2 + 24) = &type metadata for WiggleSymbolEffect;
      result = sub_1C2C647E0();
      *(a2 + 32) = result;
      *a2 = v4;
      *(a2 + 8) = v6;
      *(a2 + 9) = v7;
      return result;
    case 9:
      v5 = v10 >> 8;
      *(a2 + 24) = &type metadata for RotateSymbolEffect;
      result = sub_1C2C6478C();
      goto LABEL_15;
    case 10:
      v5 = v10 >> 8;
      *(a2 + 24) = &type metadata for BreatheSymbolEffect;
      result = sub_1C2C64738();
      goto LABEL_15;
    case 12:
      *(a2 + 24) = &type metadata for DrawOnSymbolEffect;
      result = sub_1C2C6463C();
      goto LABEL_10;
    case 13:
      v5 = v10 >> 8;
      *(a2 + 24) = &type metadata for DrawOffSymbolEffect;
      result = sub_1C2C645E8();
LABEL_15:
      *(a2 + 32) = result;
      *a2 = v4;
      *(a2 + 1) = v5;
      break;
    default:
      *(a2 + 24) = &type metadata for PulseSymbolEffect;
      result = sub_1C2C64930();
LABEL_10:
      *(a2 + 32) = result;
      *a2 = v4;
      break;
  }

  return result;
}

void *sub_1C2C60B54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(a1 + 16))(&v6);
  v4 = v6;
  switch(v7)
  {
    case 4:
      v5 = v6 >> 8;
      *(a2 + 24) = &type metadata for AppearSymbolEffect;
      result = sub_1C2C646E4();
      goto LABEL_8;
    case 5:
      v5 = v6 >> 8;
      *(a2 + 24) = &type metadata for DisappearSymbolEffect;
      result = sub_1C2C64690();
      goto LABEL_8;
    case 7:
      *(a2 + 24) = &type metadata for AutomaticSymbolEffect;
      result = sub_1C2C64498();
      *(a2 + 32) = result;
      return result;
    case 12:
      *(a2 + 24) = &type metadata for DrawOnSymbolEffect;
      result = sub_1C2C6463C();
      *(a2 + 32) = result;
      *a2 = v4;
      return result;
    case 13:
      v5 = v6 >> 8;
      *(a2 + 24) = &type metadata for DrawOffSymbolEffect;
      result = sub_1C2C645E8();
LABEL_8:
      *(a2 + 32) = result;
      *a2 = v4;
      *(a2 + 1) = v5;
      break;
    default:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      break;
  }

  return result;
}

void *sub_1C2C60C58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(a1 + 16))(&v6);
  v4 = v6;
  switch(v7)
  {
    case 6:
      v5 = v6 >> 8;
      *(a2 + 24) = &type metadata for ReplaceSymbolEffect;
      result = sub_1C2C64540();
      goto LABEL_7;
    case 7:
      *(a2 + 24) = &type metadata for AutomaticSymbolEffect;
      result = sub_1C2C64498();
      *(a2 + 32) = result;
      break;
    case 11:
      v5 = v6 >> 8;
      *(a2 + 24) = &type metadata for MagicReplaceSymbolEffect;
      result = sub_1C2C644EC();
LABEL_7:
      *(a2 + 32) = result;
      *a2 = v4;
      *(a2 + 1) = v5;
      break;
    default:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      break;
  }

  return result;
}

void sub_1C2C60D28(uint64_t a1@<X8>)
{
  switch([v1 _effectType])
  {
    case 1uLL:
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        goto LABEL_2;
      }

      v10 = v9;
      *(a1 + 24) = &type metadata for VariableColorSymbolEffect;
      *(a1 + 32) = sub_1C2C64888();
      v11 = v1;

      VariableColorSymbolEffect.init(objcEffect:)(v10);
      return;
    case 2uLL:
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (!v21)
      {
        goto LABEL_2;
      }

      v22 = v21;
      *(a1 + 24) = &type metadata for PulseSymbolEffect;
      *(a1 + 32) = sub_1C2C64930();
      v23 = [v22 _layerBehavior];
      v24 = 2 * (v23 != 2);
      if (v23 == 1)
      {
        v24 = 1;
      }

      *a1 = v24;
      return;
    case 3uLL:
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {
        goto LABEL_2;
      }

      v30 = v29;
      *(a1 + 24) = &type metadata for BounceSymbolEffect;
      *(a1 + 32) = sub_1C2C648DC();
      v31.super.super.isa = v1;
      v31.super.super.isa = v30;

      BounceSymbolEffect.init(objcEffect:)(v31);
      return;
    case 4uLL:
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (!v18)
      {
        goto LABEL_2;
      }

      v19 = v18;
      *(a1 + 24) = &type metadata for ScaleSymbolEffect;
      *(a1 + 32) = sub_1C2C64834();
      v20.super.super.isa = v1;
      v20.super.super.isa = v19;

      ScaleSymbolEffect.init(objcEffect:)(v20);
      return;
    case 5uLL:
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      if (!v35)
      {
        goto LABEL_2;
      }

      v16 = v35;
      *(a1 + 24) = &type metadata for AppearSymbolEffect;
      v17 = sub_1C2C646E4();
      goto LABEL_43;
    case 6uLL:
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {
        goto LABEL_2;
      }

      v16 = v15;
      *(a1 + 24) = &type metadata for DisappearSymbolEffect;
      v17 = sub_1C2C64690();
LABEL_43:
      *(a1 + 32) = v17;
      v36.super.super.isa = v1;
      v36.super.super.isa = v16;

      AppearSymbolEffect.init(objcEffect:)(v36);
      break;
    case 9uLL:
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (!v32)
      {
        goto LABEL_2;
      }

      v33 = v32;
      *(a1 + 24) = &type metadata for WiggleSymbolEffect;
      *(a1 + 32) = sub_1C2C647E0();
      v34 = v1;

      WiggleSymbolEffect.init(objcEffect:)(v33, a1);
      break;
    case 0xAuLL:
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        goto LABEL_2;
      }

      v7 = v6;
      *(a1 + 24) = &type metadata for RotateSymbolEffect;
      *(a1 + 32) = sub_1C2C6478C();
      v8.super.super.isa = v1;
      v8.super.super.isa = v7;

      RotateSymbolEffect.init(objcEffect:)(v8);
      break;
    case 0xCuLL:
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
        goto LABEL_2;
      }

      v13 = v12;
      *(a1 + 24) = &type metadata for BreatheSymbolEffect;
      *(a1 + 32) = sub_1C2C64738();
      v14.super.super.isa = v1;
      v14.super.super.isa = v13;

      BreatheSymbolEffect.init(objcEffect:)(v14);
      break;
    case 0xDuLL:
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (!v25)
      {
        goto LABEL_2;
      }

      v26 = v25;
      *(a1 + 24) = &type metadata for DrawOnSymbolEffect;
      *(a1 + 32) = sub_1C2C6463C();
      v27 = [v26 _layerBehavior];
      v28 = 0x2010003u >> (8 * v27);
      if (v27 >= 4)
      {
        LOBYTE(v28) = 3;
      }

      *a1 = v28;
      break;
    case 0xEuLL:
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (!v3)
      {
        goto LABEL_2;
      }

      v4 = v3;
      *(a1 + 24) = &type metadata for DrawOffSymbolEffect;
      *(a1 + 32) = sub_1C2C645E8();
      v5.super.super.isa = v1;
      v5.super.super.isa = v4;

      DrawOffSymbolEffect.init(objcEffect:)(v5);
      break;
    default:
LABEL_2:
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      break;
  }
}

Symbols::PulseSymbolEffect __swiftcall PulseSymbolEffect.init(objcEffect:)(NSSymbolPulseEffect objcEffect)
{
  isa = objcEffect.super.super.isa;
  v3 = v1;
  v4 = [(objc_class *)objcEffect.super.super.isa _layerBehavior];

  v6 = 2 * (v4 != 2);
  if (v4 == 1)
  {
    v6 = 1;
  }

  *v3 = v6;
  return result;
}

Symbols::VariableColorSymbolEffect __swiftcall VariableColorSymbolEffect.init(objcEffect:)(NSSymbolVariableColorEffect *objcEffect)
{
  v3 = v1;
  v4 = [(NSSymbolVariableColorEffect *)objcEffect _fillStyle];
  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (v4 != 2);
  }

  v6 = [(NSSymbolVariableColorEffect *)objcEffect _playbackStyle];
  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (v6 != 2);
  }

  v8 = [(NSSymbolVariableColorEffect *)objcEffect _inactiveStyle];

  v10 = 2 * (v8 != 2);
  *v3 = v7;
  if (v8 == 1)
  {
    v10 = 1;
  }

  v3[1] = v5;
  v3[2] = v10;
  return v9;
}

void WiggleSymbolEffect.init(objcEffect:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 _layerBehavior];
  v5 = [a1 _style];
  if (v5 <= 2)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {

        v8 = 0;
        v7 = 0;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v8 = 0;
LABEL_12:
    v7 = 1;
    goto LABEL_14;
  }

  switch(v5)
  {
    case 5:

      v7 = 0;
      v8 = 2;
      goto LABEL_14;
    case 4:

      v8 = 2;
      goto LABEL_12;
    case 3:
      [a1 _angle];
      v7 = v6;

      v8 = 1;
      goto LABEL_14;
  }

LABEL_13:

  v7 = 0;
  v8 = -1;
LABEL_14:
  v9 = 2 * (v4 != 2);
  *a2 = v7;
  if (v4 == 1)
  {
    v9 = 1;
  }

  *(a2 + 8) = v8;
  *(a2 + 9) = v9;
}

void sub_1C2C613DC(void *a1@<X0>, SEL *a2@<X1>, char *a3@<X8>)
{
  v6 = [a1 _layerBehavior];
  v7 = [a1 *a2];

  v8 = 2 * (v7 != 2);
  if (v7 == 1)
  {
    v8 = 1;
  }

  v9 = 2 * (v6 != 2);
  if (v6 == 1)
  {
    v9 = 1;
  }

  *a3 = v8;
  a3[1] = v9;
}

Symbols::BreatheSymbolEffect __swiftcall BreatheSymbolEffect.init(objcEffect:)(NSSymbolBreatheEffect objcEffect)
{
  isa = objcEffect.super.super.isa;
  v3 = v1;
  v4 = [(objc_class *)objcEffect.super.super.isa _layerBehavior:objcEffect._layerBehavior];
  v5 = [(objc_class *)isa _style];

  if (v5 == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v5 == 1)
  {
    v7 = 0;
  }

  v8 = 2 * (v4 != 2);
  if (v4 == 1)
  {
    v8 = 1;
  }

  *v3 = v7;
  v3[1] = v8;
  return v6;
}

Symbols::DrawOnSymbolEffect __swiftcall DrawOnSymbolEffect.init(objcEffect:)(NSSymbolDrawOnEffect objcEffect)
{
  isa = objcEffect.super.super.isa;
  v3 = v1;
  v4 = [(objc_class *)objcEffect.super.super.isa _layerBehavior];

  v6 = 0x2010003u >> (8 * v4);
  if (v4 >= 4)
  {
    LOBYTE(v6) = 3;
  }

  *v3 = v6;
  return result;
}

Symbols::DrawOffSymbolEffect __swiftcall DrawOffSymbolEffect.init(objcEffect:)(NSSymbolDrawOffEffect objcEffect)
{
  isa = objcEffect.super.super.isa;
  v3 = v1;
  v4 = [(objc_class *)objcEffect.super.super.isa _layerBehavior:objcEffect._layerBehavior];
  if (v4 >= 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0x2010003u >> (8 * v4);
  }

  v6 = [(objc_class *)isa _isReversed];

  v8 = 2 * (v6 != 2);
  if (v6 == 1)
  {
    v8 = 1;
  }

  *v3 = v5;
  v3[1] = v8;
  return v7;
}

double sub_1C2C6163C@<D0>(void (*a1)(uint64_t *__return_ptr)@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  a1(v8);
  v5 = v9;
  if (v9)
  {
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    a2(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    sub_1C2C62C28(v8);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_1C2C616FC(uint64_t a1@<X8>)
{
  switch([v1 _effectType])
  {
    case 7uLL:
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        goto LABEL_2;
      }

      v7 = v6;
      *(a1 + 24) = &type metadata for ReplaceSymbolEffect;
      *(a1 + 32) = sub_1C2C64540();
      v8.super.super.isa = v1;
      v8.super.super.isa = v7;

      ReplaceSymbolEffect.init(objcEffect:)(v8);
      break;
    case 8uLL:
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        goto LABEL_2;
      }

      *(a1 + 24) = &type metadata for AutomaticSymbolEffect;
      *(a1 + 32) = sub_1C2C64498();
      break;
    case 0xBuLL:
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (!v3)
      {
        goto LABEL_2;
      }

      v4 = v3;
      *(a1 + 24) = &type metadata for ReplaceSymbolEffect.MagicReplace;
      *(a1 + 32) = sub_1C2C64594();
      v5 = v1;
      v11.super.super.isa = [v4 _fallback];
      ReplaceSymbolEffect.init(objcEffect:)(v11);

      *a1 = v9;
      break;
    default:
LABEL_2:
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      break;
  }
}

Symbols::ReplaceSymbolEffect __swiftcall ReplaceSymbolEffect.init(objcEffect:)(NSSymbolReplaceContentTransition objcEffect)
{
  isa = objcEffect.super.super.isa;
  v3 = v1;
  v4 = [(objc_class *)objcEffect.super.super.isa _layerBehavior:objcEffect._layerBehavior];
  v5 = [(objc_class *)isa _style];

  v7 = 0x2010003u >> (8 * v5);
  if (v5 >= 4)
  {
    LOBYTE(v7) = 3;
  }

  v8 = 2 * (v4 != 2);
  if (v4 == 1)
  {
    v8 = 1;
  }

  *v3 = v7;
  v3[1] = v8;
  return v6;
}

Symbols::ReplaceSymbolEffect::MagicReplace __swiftcall ReplaceSymbolEffect.MagicReplace.init(objcEffect:)(NSSymbolMagicReplaceContentTransition objcEffect)
{
  isa = objcEffect.super.super.isa;
  v3 = v1;
  v7.super.super.isa = [(objc_class *)objcEffect.super.super.isa _fallback];
  ReplaceSymbolEffect.init(objcEffect:)(v7);

  *v3 = v5;
  return v4;
}

uint64_t sub_1C2C619B0()
{
  result = sub_1C2C65BD0();
  qword_1EC0594F8 = result;
  return result;
}

uint64_t sub_1C2C619F0(uint64_t a1, id *a2)
{
  result = sub_1C2C65BE0();
  *a2 = 0;
  return result;
}

uint64_t sub_1C2C61A68(uint64_t a1, id *a2)
{
  v3 = sub_1C2C65BF0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C2C61AE8@<X0>(uint64_t *a1@<X8>)
{
  sub_1C2C65C00();
  v2 = sub_1C2C65BD0();

  *a1 = v2;
  return result;
}

uint64_t sub_1C2C61B2C()
{
  v1 = *v0;
  v2 = sub_1C2C65C00();
  v3 = MEMORY[0x1C6921BE0](v2);

  return v3;
}

uint64_t sub_1C2C61B68()
{
  v1 = *v0;
  sub_1C2C65C00();
  sub_1C2C65C10();
}

uint64_t sub_1C2C61BBC()
{
  v1 = *v0;
  sub_1C2C65C00();
  sub_1C2C65CA0();
  sub_1C2C65C10();
  v2 = sub_1C2C65CE0();

  return v2;
}

uint64_t sub_1C2C61C30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1C2C65C00();
  v6 = v5;
  if (v4 == sub_1C2C65C00() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C2C65C80();
  }

  return v9 & 1;
}

uint64_t sub_1C2C61CB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C2C65BD0();

  *a2 = v5;
  return result;
}

uint64_t sub_1C2C61D00@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1C2C65C00();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1C2C61D2C(uint64_t a1)
{
  v2 = sub_1C2C64B1C(&qword_1EC0594C8);
  v3 = sub_1C2C64B1C(&qword_1EC0594D0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1C2C61DC4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C2C65C00();
  sub_1C2C65CA0();
  sub_1C2C65C10();
  v4 = sub_1C2C65CE0();

  return sub_1C2C61E58(a1, v4);
}

unint64_t sub_1C2C61E58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C2C65C00();
      v9 = v8;
      if (v7 == sub_1C2C65C00() && v9 == v10)
      {
        break;
      }

      v12 = sub_1C2C65C80();

      if ((v12 & 1) == 0)
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

uint64_t sub_1C2C61F5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC059490, &qword_1C2C67BD8);
  v37 = a2;
  result = sub_1C2C65C50();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_1C2C62A50(v23, v38);
      }

      else
      {
        sub_1C2C62A60(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_1C2C65C00();
      sub_1C2C65CA0();
      sub_1C2C65C10();
      v26 = sub_1C2C65CE0();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_1C2C62A50(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_1C2C6222C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1C2C61DC4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1C2C623D4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1C2C61F5C(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1C2C61DC4(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for OptionKey(0);
      result = sub_1C2C65C90();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    return sub_1C2C62A50(a1, v20);
  }

  else
  {
    sub_1C2C6236C(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_1C2C6236C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1C2C62A50(a3, (a4[7] + 32 * a1));
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

id sub_1C2C623D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC059490, &qword_1C2C67BD8);
  v2 = *v0;
  v3 = sub_1C2C65C40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1C2C62A60(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1C2C62A50(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t _s7Symbols25VariableColorSymbolEffectV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v2 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v5 == 2 || ((v5 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v3 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }

LABEL_11:
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        return 1;
      }
    }

    else if (v7 != 2 && ((v7 ^ v4) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if (v6 != 2 && ((v6 ^ v3) & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t _s7Symbols18WiggleSymbolEffectV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  if (v2 == 255)
  {
    if (v4 != 255)
    {
      return 0;
    }

LABEL_14:
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v4 == 255)
  {
    return 0;
  }

  v6 = *a1;
  v7 = *a2;
  if (!*(a1 + 8))
  {
    result = 0;
    if (*(a2 + 8))
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v2 != 1)
  {
    result = 0;
    if (v4 != 2)
    {
      return result;
    }

LABEL_13:
    if (((LODWORD(v7) ^ LODWORD(v6)) & 1) == 0)
    {
      goto LABEL_14;
    }

    return result;
  }

  result = 0;
  if (v4 == 1)
  {
    v9 = *a2;
    if (v6 == v7)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t _s7Symbols19BreatheSymbolEffectV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v2 != 2)
  {
    if (v4 == 2 || ((v4 ^ v2) & 1) != 0)
    {
      return 0;
    }

LABEL_6:
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v4 == 2)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t _s7Symbols18DrawOnSymbolEffectV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    if (v3 == 3)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t _s7Symbols25SymbolEffectConfigurationV0C0O2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 10);
  switch(*(a1 + 10))
  {
    case 1:
      if (v5 == 1)
      {
        goto LABEL_25;
      }

      goto LABEL_62;
    case 2:
      if (v5 != 2)
      {
        goto LABEL_62;
      }

      LOWORD(v17) = *a1;
      BYTE2(v17) = BYTE2(v2);
      LOWORD(v15) = v3;
      BYTE2(v15) = BYTE2(v3);
      v9 = _s7Symbols25VariableColorSymbolEffectV2eeoiySbAC_ACtFZ_0(&v17, &v15);
      return v9 & 1;
    case 3:
      if (v5 != 3)
      {
        goto LABEL_62;
      }

      goto LABEL_25;
    case 4:
      if (v5 != 4)
      {
        goto LABEL_62;
      }

      goto LABEL_25;
    case 5:
      if (v5 == 5)
      {
        goto LABEL_25;
      }

      goto LABEL_62;
    case 6:
      if (v5 == 6)
      {
        goto LABEL_36;
      }

      goto LABEL_62;
    case 7:
      if (v5 != 7)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    case 8:
      if (v5 != 8)
      {
        goto LABEL_62;
      }

      v13 = *(a1 + 4);
      v17 = *a1;
      v18 = v13;
      v15 = v3;
      v16 = v4;
      v9 = _s7Symbols18WiggleSymbolEffectV2eeoiySbAC_ACtFZ_0(&v17, &v15);
      return v9 & 1;
    case 9:
      if (v5 != 9)
      {
        goto LABEL_62;
      }

LABEL_25:
      v10 = *a2;
      if (*a1 == 2)
      {
        if (v10 != 2)
        {
          goto LABEL_62;
        }
      }

      else if (v10 == 2 || ((v3 ^ v2) & 1) != 0)
      {
        goto LABEL_62;
      }

      if ((*a1 & 0xFF00) == 0x200)
      {
        if (BYTE1(v3) == 2)
        {
          goto LABEL_61;
        }
      }

      else if (BYTE1(v3) != 2 && ((((*a1 & 0x100) == 0) ^ (v3 >> 8)) & 1) != 0)
      {
        goto LABEL_61;
      }

      goto LABEL_62;
    case 0xA:
      if (v5 != 10)
      {
        goto LABEL_62;
      }

      v12 = *a2;
      if (*a1 == 2)
      {
        if (v12 == 2)
        {
          goto LABEL_46;
        }
      }

      else if (v12 != 2 && ((v12 ^ *a1) & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    case 0xB:
      if (v5 != 11)
      {
        goto LABEL_62;
      }

      goto LABEL_36;
    case 0xC:
      if (v5 != 12)
      {
        goto LABEL_62;
      }

      v7 = *a1;
      v8 = *a2;
      if (v7 == 3)
      {
        if (v8 == 3)
        {
          goto LABEL_61;
        }
      }

      else if (v7 == v8)
      {
        goto LABEL_61;
      }

      goto LABEL_62;
    case 0xD:
      if (v5 != 13)
      {
        goto LABEL_62;
      }

LABEL_36:
      v11 = *a2;
      if (*a1 == 3)
      {
        if (v11 != 3)
        {
          goto LABEL_62;
        }
      }

      else if (*a1 != v11)
      {
        goto LABEL_62;
      }

LABEL_46:
      if (BYTE1(v2) == 2)
      {
        if (BYTE1(v3) == 2)
        {
          goto LABEL_61;
        }

        goto LABEL_62;
      }

      if (BYTE1(v3) == 2)
      {
        goto LABEL_62;
      }

      v3 >>= 8;
      v2 >>= 8;
      goto LABEL_60;
    default:
      if (*(a2 + 10))
      {
        goto LABEL_62;
      }

      v6 = *a2;
      if (*a1 == 2)
      {
        if (v6 != 2)
        {
          goto LABEL_62;
        }

LABEL_61:
        v9 = 1;
        return v9 & 1;
      }

      if (v6 != 2)
      {
LABEL_60:
        if (((v3 ^ v2) & 1) == 0)
        {
          goto LABEL_61;
        }
      }

LABEL_62:
      v9 = 0;
      return v9 & 1;
  }
}

uint64_t sub_1C2C629E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

LABEL_6:
    if (v3 == 2)
    {
      if (v5 == 2)
      {
        return 1;
      }
    }

    else if (v5 != 2 && ((v5 ^ v3) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

_OWORD *sub_1C2C62A50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C2C62A60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C2C62ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC059490, &qword_1C2C67BD8);
    v3 = sub_1C2C65C60();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C2C64984(v4, &v11);
      v5 = v11;
      result = sub_1C2C61DC4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C2C62A50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

BOOL _s7Symbols18WiggleSymbolEffectV0B5StyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *a2 ^ *a1 ^ 1;
  if (*(a2 + 8))
  {
    LOBYTE(v4) = 0;
  }

  v5 = *a2;
  v6 = *a1 == v2;
  if (v3 != 1)
  {
    v6 = 0;
  }

  v7 = LOBYTE(v2) ^ *a1 ^ 1;
  if (v3 != 2)
  {
    v7 = 0;
  }

  if (*(a1 + 8) != 1)
  {
    v6 = v7;
  }

  if (!*(a1 + 8))
  {
    return v4;
  }

  return v6;
}

uint64_t sub_1C2C62C28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC059340, &qword_1C2C66DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
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

unint64_t sub_1C2C62D20()
{
  result = qword_1EC059348;
  if (!qword_1EC059348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059348);
  }

  return result;
}

unint64_t sub_1C2C62D78()
{
  result = qword_1EC059350;
  if (!qword_1EC059350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059350);
  }

  return result;
}

unint64_t sub_1C2C62DCC(uint64_t a1)
{
  result = sub_1C2C62DF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C62DF4()
{
  result = qword_1EC059358;
  if (!qword_1EC059358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059358);
  }

  return result;
}

unint64_t sub_1C2C62E4C()
{
  result = qword_1EC059360;
  if (!qword_1EC059360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059360);
  }

  return result;
}

unint64_t sub_1C2C62EA0(uint64_t a1)
{
  result = sub_1C2C62EC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C62EC8()
{
  result = qword_1EC059200;
  if (!qword_1EC059200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059200);
  }

  return result;
}

unint64_t sub_1C2C62F20()
{
  result = qword_1EC0591F8;
  if (!qword_1EC0591F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0591F8);
  }

  return result;
}

unint64_t sub_1C2C62F74(uint64_t a1)
{
  result = sub_1C2C62F9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C62F9C()
{
  result = qword_1EC059368;
  if (!qword_1EC059368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059368);
  }

  return result;
}

unint64_t sub_1C2C62FF4()
{
  result = qword_1EC059370;
  if (!qword_1EC059370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059370);
  }

  return result;
}

unint64_t sub_1C2C63048(uint64_t a1)
{
  result = sub_1C2C63070();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C63070()
{
  result = qword_1EC059378;
  if (!qword_1EC059378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059378);
  }

  return result;
}

unint64_t sub_1C2C630C8()
{
  result = qword_1EC059380;
  if (!qword_1EC059380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059380);
  }

  return result;
}

unint64_t sub_1C2C6311C(uint64_t a1)
{
  result = sub_1C2C63144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C63144()
{
  result = qword_1EC059388;
  if (!qword_1EC059388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059388);
  }

  return result;
}

unint64_t sub_1C2C6319C()
{
  result = qword_1EC059390;
  if (!qword_1EC059390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059390);
  }

  return result;
}

unint64_t sub_1C2C631F0(uint64_t a1)
{
  result = sub_1C2C63218();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C63218()
{
  result = qword_1EC059398;
  if (!qword_1EC059398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059398);
  }

  return result;
}

unint64_t sub_1C2C63270()
{
  result = qword_1EC0593A0;
  if (!qword_1EC0593A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0593A0);
  }

  return result;
}

unint64_t sub_1C2C632C8()
{
  result = qword_1EC0593A8;
  if (!qword_1EC0593A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0593A8);
  }

  return result;
}

unint64_t sub_1C2C63320()
{
  result = qword_1EC0593B0;
  if (!qword_1EC0593B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0593B0);
  }

  return result;
}

unint64_t sub_1C2C63374(uint64_t a1)
{
  result = sub_1C2C6339C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C6339C()
{
  result = qword_1EC0591F0;
  if (!qword_1EC0591F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0591F0);
  }

  return result;
}

unint64_t sub_1C2C633F4()
{
  result = qword_1EC0591E8;
  if (!qword_1EC0591E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0591E8);
  }

  return result;
}

unint64_t sub_1C2C63448(uint64_t a1)
{
  result = sub_1C2C63470();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C63470()
{
  result = qword_1EC0593B8;
  if (!qword_1EC0593B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0593B8);
  }

  return result;
}

unint64_t sub_1C2C634C8()
{
  result = qword_1EC0593C0;
  if (!qword_1EC0593C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0593C0);
  }

  return result;
}

unint64_t sub_1C2C63520()
{
  result = qword_1EC0593C8;
  if (!qword_1EC0593C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0593C8);
  }

  return result;
}

unint64_t sub_1C2C63574(uint64_t a1)
{
  result = sub_1C2C6359C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C6359C()
{
  result = qword_1EC0593D0;
  if (!qword_1EC0593D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0593D0);
  }

  return result;
}

unint64_t sub_1C2C635F4()
{
  result = qword_1EC0593D8;
  if (!qword_1EC0593D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0593D8);
  }

  return result;
}

unint64_t sub_1C2C63648(uint64_t a1)
{
  result = sub_1C2C63670();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C63670()
{
  result = qword_1EC0593E0;
  if (!qword_1EC0593E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0593E0);
  }

  return result;
}

unint64_t sub_1C2C636C8()
{
  result = qword_1EC0593E8;
  if (!qword_1EC0593E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0593E8);
  }

  return result;
}

unint64_t sub_1C2C6371C(uint64_t a1)
{
  result = sub_1C2C63744();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C63744()
{
  result = qword_1EC0593F0;
  if (!qword_1EC0593F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0593F0);
  }

  return result;
}

unint64_t sub_1C2C6379C()
{
  result = qword_1EC0593F8;
  if (!qword_1EC0593F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0593F8);
  }

  return result;
}

unint64_t sub_1C2C637F4()
{
  result = qword_1EC059400;
  if (!qword_1EC059400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059400);
  }

  return result;
}

unint64_t sub_1C2C63848(uint64_t a1)
{
  result = sub_1C2C63870();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2C63870()
{
  result = qword_1EC059408;
  if (!qword_1EC059408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059408);
  }

  return result;
}

unint64_t sub_1C2C638C8()
{
  result = qword_1EC059410;
  if (!qword_1EC059410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059410);
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_1C2C63930(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 11))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 10);
  if (v3 <= 0xD)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C2C63978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PulseSymbolEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for PulseSymbolEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VariableColorSymbolEffect(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VariableColorSymbolEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomaticSymbolEffect(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AutomaticSymbolEffect(_WORD *result, int a2, int a3)
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

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WiggleSymbolEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WiggleSymbolEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WiggleSymbolEffect.WiggleStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WiggleSymbolEffect.WiggleStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1C2C63E88(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *storeEnumTagSinglePayload for BreatheSymbolEffect(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BreatheSymbolEffect(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t getEnumTagSinglePayload for BreatheSymbolEffect.BreatheStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BreatheSymbolEffect.BreatheStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DrawOnSymbolEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for DrawOnSymbolEffect(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C2C64338(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_1C2C643E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
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
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C2C64498()
{
  result = qword_1EC059418;
  if (!qword_1EC059418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059418);
  }

  return result;
}

unint64_t sub_1C2C644EC()
{
  result = qword_1EC059420;
  if (!qword_1EC059420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059420);
  }

  return result;
}

unint64_t sub_1C2C64540()
{
  result = qword_1EC059428;
  if (!qword_1EC059428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059428);
  }

  return result;
}

unint64_t sub_1C2C64594()
{
  result = qword_1EC059430;
  if (!qword_1EC059430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059430);
  }

  return result;
}

unint64_t sub_1C2C645E8()
{
  result = qword_1EC059438;
  if (!qword_1EC059438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059438);
  }

  return result;
}

unint64_t sub_1C2C6463C()
{
  result = qword_1EC059440;
  if (!qword_1EC059440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059440);
  }

  return result;
}

unint64_t sub_1C2C64690()
{
  result = qword_1EC059448;
  if (!qword_1EC059448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059448);
  }

  return result;
}

unint64_t sub_1C2C646E4()
{
  result = qword_1EC059450;
  if (!qword_1EC059450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059450);
  }

  return result;
}

unint64_t sub_1C2C64738()
{
  result = qword_1EC059458;
  if (!qword_1EC059458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059458);
  }

  return result;
}

unint64_t sub_1C2C6478C()
{
  result = qword_1EC059460;
  if (!qword_1EC059460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059460);
  }

  return result;
}

unint64_t sub_1C2C647E0()
{
  result = qword_1EC059468;
  if (!qword_1EC059468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059468);
  }

  return result;
}

unint64_t sub_1C2C64834()
{
  result = qword_1EC059470;
  if (!qword_1EC059470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059470);
  }

  return result;
}

unint64_t sub_1C2C64888()
{
  result = qword_1EC059478;
  if (!qword_1EC059478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059478);
  }

  return result;
}

unint64_t sub_1C2C648DC()
{
  result = qword_1EC059480;
  if (!qword_1EC059480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059480);
  }

  return result;
}

unint64_t sub_1C2C64930()
{
  result = qword_1EC059488;
  if (!qword_1EC059488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC059488);
  }

  return result;
}

uint64_t sub_1C2C64984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC059498, &qword_1C2C67BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_1C2C64A68(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1C2C64B1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL static SymbolEffectOptions.RepeatOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t SymbolEffectOptions.RepeatOption.hash(into:)()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1C6921C70](1);
  }

  return MEMORY[0x1C6921C70](v1);
}

uint64_t SymbolEffectOptions.RepeatOption.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C2C65CA0();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1C6921C70](1);
    v3 = v1;
  }

  MEMORY[0x1C6921C70](v3);
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C64E44()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C2C65CA0();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1C6921C70](1);
    v3 = v1;
  }

  MEMORY[0x1C6921C70](v3);
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C64EA4()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1C6921C70](1);
  }

  return MEMORY[0x1C6921C70](v1);
}

uint64_t sub_1C2C64EEC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C2C65CA0();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1C6921C70](1);
  }

  MEMORY[0x1C6921C70](v1);
  return sub_1C2C65CE0();
}

BOOL sub_1C2C64F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void SymbolEffectOptions.repeat.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t SymbolEffectOptions.repeat.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  return result;
}

uint64_t SymbolEffectOptions.repeatDelay.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t SymbolEffectOptions.repeatDelay.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

void static SymbolEffectOptions.default.getter(uint64_t a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

void static SymbolEffectOptions.speed(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

void SymbolEffectOptions.speed(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 17);
  v6 = *(v2 + 18);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  *a1 = a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 17) = v5;
  *(a1 + 18) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t static SymbolEffectOptions.repeat(_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  *(a3 + 17) = a2 & 1;
  *(a3 + 18) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return result;
}

uint64_t SymbolEffectOptions.repeat(_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = *v3;
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *(a3 + 8) = v4;
  *(a3 + 16) = 0;
  *(a3 + 17) = a2 & 1;
  *(a3 + 18) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return result;
}

void static SymbolEffectOptions.repeating.getter(uint64_t a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

void static SymbolEffectOptions.nonRepeating.getter(uint64_t a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

double sub_1C2C651B0@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = *v3;
  *a3 = *v3;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 17) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return result;
}

uint64_t SymbolEffectOptions.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1C6921C90](*&v1);
  if (v4 == 1)
  {
    sub_1C2C65CC0();
  }

  else
  {
    sub_1C2C65CC0();
    if (v3)
    {
      v8 = 0;
    }

    else
    {
      MEMORY[0x1C6921C70](1);
      v8 = v2;
    }

    MEMORY[0x1C6921C70](v8);
  }

  sub_1C2C65CC0();
  if (v7)
  {
    return sub_1C2C65CC0();
  }

  sub_1C2C65CC0();
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return MEMORY[0x1C6921C90](v10);
}

uint64_t SymbolEffectOptions.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = *(v0 + 18);
  v7 = v0[3];
  v8 = *(v0 + 32);
  sub_1C2C65CA0();
  SymbolEffectOptions.hash(into:)();
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C65324()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = *(v0 + 18);
  v7 = v0[3];
  v8 = *(v0 + 32);
  sub_1C2C65CA0();
  SymbolEffectOptions.hash(into:)();
  return sub_1C2C65CE0();
}

uint64_t sub_1C2C653A4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = *(v0 + 18);
  v7 = v0[3];
  v8 = *(v0 + 32);
  sub_1C2C65CA0();
  SymbolEffectOptions.hash(into:)();
  return sub_1C2C65CE0();
}

void static SymbolEffectOptions.repeating(delay:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
}

void SymbolEffectOptions.repeating(delay:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = *v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
}

uint64_t static SymbolEffectOptions.repeat(_:delay:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = v4;
  *(a3 + 16) = 0;
  *(a3 + 17) = a2 & 1;
  *(a3 + 18) = 0;
  *(a3 + 24) = a4;
  *(a3 + 32) = 0;
  return result;
}

uint64_t SymbolEffectOptions.repeat(_:delay:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = *v4;
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  *(a3 + 17) = a2 & 1;
  *(a3 + 18) = 0;
  *(a3 + 24) = a4;
  *(a3 + 32) = 0;
  return result;
}

void static SymbolEffectOptions._RepeatStyle.periodic.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t static SymbolEffectOptions._RepeatStyle.periodic(_:delay:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *(a5 + 24) = v5;
  *(a5 + 32) = a2 & 1;
  return result;
}

void static SymbolEffectOptions._RepeatStyle.continuous.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

id SymbolEffectOptions.objcRepresentation.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = [objc_opt_self() options];
  [v8 set:v1 speed:?];
  if (v4)
  {
    [v8 set:0 repeatBehavior:?];
    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3)
  {
    [v8 set:1 repeatBehavior:?];
    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [v8 set:2 repeatBehavior:?];
  [v8 set:v2 repeatCount:?];
  if ((v7 & 1) == 0)
  {
LABEL_8:
    sub_1C2C658E0();
    v9 = sub_1C2C65C30();
    [v8 set:v9 repeatDelay:?];
  }

LABEL_9:
  [v8 set:v5 prefersContinuous:?];
  return v8;
}

void SymbolEffectOptions.init(objcRepresentation:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 _speed];
  v5 = v4;
  v6 = [a1 _repeatBehavior];
  if (v6 == 1)
  {
    v8 = 0;
    v7 = 0;
    v9 = 1;
  }

  else if (v6 == 2)
  {
    v7 = [a1 _repeatCount];
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = 1;
  }

  v10 = [a1 _repeatDelay];
  v11 = v10;
  if (v10)
  {
    [v10 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v11 == 0;
  v15 = [a1 _prefersContinuous];

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 17) = v8;
  *(a2 + 18) = v15;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
}

void static SymbolEffectOptions.RepeatBehavior.periodic.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t static SymbolEffectOptions.RepeatBehavior.periodic(_:delay:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *(a5 + 24) = v5;
  *(a5 + 32) = a2 & 1;
  return result;
}

void static SymbolEffectOptions.RepeatBehavior.continuous.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

double sub_1C2C657C8@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = *(a1 + 3);
  v7 = a1[32];
  result = *v2;
  *a2 = *v2;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 18) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

char *sub_1C2C65804@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 1);
  v4 = result[16];
  v5 = *(result + 3);
  v6 = result[32];
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 18) = v2;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  return result;
}

uint64_t _s7Symbols19SymbolEffectOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 18);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (*(a1 + 17))
  {
    result = 0;
    if (!*(a2 + 17))
    {
      return result;
    }

    goto LABEL_4;
  }

  if (*(a2 + 17))
  {
    return 0;
  }

  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    result = 0;
    if ((*(a2 + 16) & 1) == 0)
    {
      return result;
    }

    goto LABEL_4;
  }

  result = 0;
  if ((*(a2 + 16) & 1) == 0 && *(a1 + 8) == *(a2 + 8))
  {
LABEL_4:
    if ((v2 ^ *(a2 + 18)))
    {
      return result;
    }

    if (v4)
    {
      if (*(a2 + 32))
      {
        return 1;
      }
    }

    else
    {
      if (v3 != *(a2 + 24))
      {
        v5 = 1;
      }

      if ((v5 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1C2C658E0()
{
  result = qword_1EC0594D8;
  if (!qword_1EC0594D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0594D8);
  }

  return result;
}

unint64_t sub_1C2C65930()
{
  result = qword_1EC0594E0;
  if (!qword_1EC0594E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0594E0);
  }

  return result;
}

unint64_t sub_1C2C65988()
{
  result = qword_1EC0594E8;
  if (!qword_1EC0594E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0594E8);
  }

  return result;
}

uint64_t sub_1C2C659DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 18);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C2C65A30(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 18) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolEffectOptions.RepeatOption(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SymbolEffectOptions.RepeatOption(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C2C65AC8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2C65AE4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C2C65B14(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
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

uint64_t sub_1C2C65B68(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}