Swift::Int sub_1000016BC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100001728()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100001780()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000017F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100001848(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_100002D0C(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_100001B94()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100001BE0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100001C38()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100001CA8(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100001CFC(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100001D54@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100001D8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100001E08(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_1000254C8, type metadata accessor for ENTestResultError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100001E74(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_1000254C8, type metadata accessor for ENTestResultError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100001EE0(void *a1, uint64_t a2)
{
  v4 = sub_1000023E4(&qword_1000254C8, type metadata accessor for ENTestResultError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100001F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000023E4(&qword_1000254C8, type metadata accessor for ENTestResultError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

void *sub_100001FEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000202C(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_100025480, type metadata accessor for ENError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100002098(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_100025480, type metadata accessor for ENError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002104(void *a1, uint64_t a2)
{
  v4 = sub_1000023E4(&qword_100025480, type metadata accessor for ENError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000021B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000023E4(&qword_100025480, type metadata accessor for ENError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100002238()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100002298()
{
  v2 = *v0;
  sub_1000023E4(&qword_100025420, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_1000023E4(&qword_100025428, type metadata accessor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000023E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002474(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_1000254D0, type metadata accessor for ENTestResultError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000024E0(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_1000254D0, type metadata accessor for ENTestResultError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000254C(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_1000254C8, type metadata accessor for ENTestResultError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000025B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000023E4(&qword_1000254C8, type metadata accessor for ENTestResultError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000263C(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_100025488, type metadata accessor for ENError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000026A8(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_100025488, type metadata accessor for ENError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002714(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_100025480, type metadata accessor for ENError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000023E4(&qword_100025480, type metadata accessor for ENError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

void *sub_100002840@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100002C00(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100002C00((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100002C00(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100002C00(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100002C00((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_100002C00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000070C0(&qword_100025438, &unk_100018E90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

unsigned __int8 *sub_100002D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100003288();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100003288()
{
  v0 = String.subscript.getter();
  v4 = sub_100003308(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100003308(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100015BA8(v9, 0);
  v12 = sub_100003460(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100003460(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100003680(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100003680(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100003680(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1000036FC(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static ENUIPublicHealthAgencyModel.activeRegion;
  if (static ENUIPublicHealthAgencyModel.activeRegion)
  {
    if (*(static ENUIPublicHealthAgencyModel.activeRegion + direct field offset for ENUIPublicHealthAgencyModel.isAssociatedDomainAllowed) == 1)
    {
      [static ENUIPublicHealthAgencyModel.activeRegion supportsFeatures:2];
      return 1;
    }

    else
    {
      v13 = Logger.launcher.unsafeMutableAddressor();
      (*(v8 + 16))(v11, v13, v7);
      (*(v3 + 16))(v6, a1, v2);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v22 = v16;
        v23 = swift_slowAlloc();
        v24 = v23;
        *v16 = 136315138;
        sub_1000023E4(&qword_100025A90, &type metadata accessor for URL);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        (*(v3 + 8))(v6, v2);
        v20 = sub_100015768(v17, v19, &v24);

        v21 = v22;
        *(v22 + 1) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "URL not enabled: %s", v21, 0xCu);
        sub_100007170(v23);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }

      (*(v8 + 8))(v11, v7);
      return 4;
    }
  }

  return result;
}

uint64_t sub_100003A5C(uint64_t a1)
{
  v440 = type metadata accessor for URLQueryItem();
  v433 = *(v440 - 8);
  v2 = *(v433 + 64);
  v3 = (__chkstk_darwin)();
  v421 = &v403[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v409 = &v403[-v6];
  v7 = __chkstk_darwin(v5);
  v422 = &v403[-v8];
  v9 = __chkstk_darwin(v7);
  v412 = &v403[-v10];
  v11 = __chkstk_darwin(v9);
  v423 = &v403[-v12];
  v13 = __chkstk_darwin(v11);
  v411 = &v403[-v14];
  v15 = __chkstk_darwin(v13);
  v439 = &v403[-v16];
  __chkstk_darwin(v15);
  v427 = &v403[-v17];
  v18 = type metadata accessor for URL();
  v449 = *(v18 - 8);
  v19 = *(v449 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v403[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20);
  v441 = &v403[-v24];
  v25 = __chkstk_darwin(v23);
  countAndFlagsBits = &v403[-v26];
  v27 = __chkstk_darwin(v25);
  v416 = &v403[-v28];
  v29 = __chkstk_darwin(v27);
  v418 = &v403[-v30];
  v31 = __chkstk_darwin(v29);
  v437 = &v403[-v32];
  v33 = __chkstk_darwin(v31);
  v429 = &v403[-v34];
  v35 = __chkstk_darwin(v33);
  v434 = &v403[-v36];
  v37 = __chkstk_darwin(v35);
  v425 = &v403[-v38];
  v39 = __chkstk_darwin(v37);
  v430 = &v403[-v40];
  v41 = __chkstk_darwin(v39);
  v443 = &v403[-v42];
  __chkstk_darwin(v41);
  v442 = &v403[-v43];
  v44 = type metadata accessor for Logger();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = __chkstk_darwin(v44);
  v448 = &v403[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = __chkstk_darwin(v47);
  v51 = &v403[-v50];
  v52 = __chkstk_darwin(v49);
  object = &v403[-v53];
  v54 = __chkstk_darwin(v52);
  v415 = &v403[-v55];
  v56 = __chkstk_darwin(v54);
  v417 = &v403[-v57];
  v58 = __chkstk_darwin(v56);
  v420 = &v403[-v59];
  v60 = __chkstk_darwin(v58);
  v408 = &v403[-v61];
  v62 = __chkstk_darwin(v60);
  v410 = &v403[-v63];
  v64 = __chkstk_darwin(v62);
  v419 = &v403[-v65];
  v66 = __chkstk_darwin(v64);
  v414 = &v403[-v67];
  v68 = __chkstk_darwin(v66);
  v413 = &v403[-v69];
  v70 = __chkstk_darwin(v68);
  v424 = &v403[-v71];
  v72 = __chkstk_darwin(v70);
  v428 = &v403[-v73];
  v74 = __chkstk_darwin(v72);
  v444 = &v403[-v75];
  v76 = __chkstk_darwin(v74);
  v426 = &v403[-v77];
  v78 = __chkstk_darwin(v76);
  v431 = &v403[-v79];
  v80 = __chkstk_darwin(v78);
  v432 = &v403[-v81];
  __chkstk_darwin(v80);
  v446 = &v403[-v82];
  v83 = sub_1000070C0(&qword_100025AA0, &unk_100018E80);
  v84 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v83 - 8);
  v86 = &v403[-v85];
  v87 = type metadata accessor for URLComponents();
  v88 = *(v87 - 8);
  v89 = *(v88 + 64);
  __chkstk_darwin(v87);
  v91 = &v403[-((v90 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v88 + 48))(v86, 1, v87) == 1)
  {
    sub_100007108(v86);
    v92 = Logger.launcher.unsafeMutableAddressor();
    (*(v45 + 16))(v448, v92, v44);
    v93 = v449;
    (*(v449 + 16))(v22, a1, v18);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    v96 = v44;
    v97 = v45;
    if (os_log_type_enabled(v94, v95))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v451 = v99;
      *v98 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL);
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = v18;
      v103 = v102;
      (*(v93 + 8))(v22, v101);
      v104 = sub_100015768(v100, v103, &v451);

      *(v98 + 4) = v104;
      _os_log_impl(&_mh_execute_header, v94, v95, "Could not get components from url: %s", v98, 0xCu);
      sub_100007170(v99);
    }

    else
    {

      (*(v93 + 8))(v22, v18);
    }

    (*(v97 + 8))(v448, v96);
    goto LABEL_17;
  }

  v436 = a1;
  v447 = v45;
  v448 = v18;
  v445 = v44;
  (*(v88 + 32))(v91, v86, v87);
  URLComponents.scheme.getter();
  v407 = v88;
  v406 = v87;
  if (!v105)
  {
    v114 = Logger.launcher.unsafeMutableAddressor();
    v115 = v447;
    v116 = v445;
    (*(v447 + 16))(v51, v114, v445);
    v118 = v448;
    v117 = v449;
    v119 = v441;
    (*(v449 + 16))(v441, v436, v448);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v120, v121))
    {

      (*(v117 + 8))(v119, v118);
      (*(v115 + 8))(v51, v116);
      (*(v407 + 8))(v91, v406);
      goto LABEL_17;
    }

    v122 = v119;
    v123 = swift_slowAlloc();
    v444 = v123;
    v446 = swift_slowAlloc();
    v451 = v446;
    *v123 = 136315138;
    sub_1000023E4(&qword_100025A90, &type metadata accessor for URL);
    v124 = v122;
    v125 = dispatch thunk of CustomStringConvertible.description.getter();
    v405 = v91;
    v127 = v126;
    (*(v117 + 8))(v124, v118);
    v128 = sub_100015768(v125, v127, &v451);

    v129 = v444;
    *(v444 + 4) = v128;
    _os_log_impl(&_mh_execute_header, v120, v121, "Could not get scheme from components: %s", v129, 0xCu);
    sub_100007170(v446);

    (*(v115 + 8))(v51, v116);
    goto LABEL_13;
  }

  v106 = String.lowercased()();

  URLComponents.host.getter();
  v107 = v447;
  v405 = v91;
  if (!v108)
  {

    v130 = Logger.launcher.unsafeMutableAddressor();
    v131 = object;
    v132 = v445;
    (*(v107 + 16))(object, v130, v445);
    v133 = v448;
    v134 = v449;
    v135 = countAndFlagsBits;
    (*(v449 + 16))(countAndFlagsBits, v436, v448);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = v107;
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v451 = v140;
      *v139 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL);
      v141 = dispatch thunk of CustomStringConvertible.description.getter();
      v142 = v135;
      v144 = v143;
      (*(v134 + 8))(v142, v133);
      v145 = sub_100015768(v141, v144, &v451);

      *(v139 + 4) = v145;
      _os_log_impl(&_mh_execute_header, v136, v137, "Could not get host from components: %s", v139, 0xCu);
      sub_100007170(v140);

      (*(v138 + 8))(object, v132);
    }

    else
    {

      (*(v134 + 8))(v135, v133);
      (*(v107 + 8))(v131, v132);
    }

LABEL_13:
    (*(v407 + 8))(v405, v406);
    goto LABEL_17;
  }

  v109 = String.lowercased()();
  countAndFlagsBits = v109._countAndFlagsBits;
  object = v109._object;

  if (!static ENUIPublicHealthAgencyModel.activeRegion)
  {
    v113 = 1;
    LODWORD(v441) = 1;
    v112 = v445;
    goto LABEL_20;
  }

  LODWORD(v441) = *(static ENUIPublicHealthAgencyModel.activeRegion + direct field offset for ENUIPublicHealthAgencyModel.isAssociatedDomainAllowed);
  v110 = *((swift_isaMask & *static ENUIPublicHealthAgencyModel.activeRegion) + 0x160);
  v111 = static ENUIPublicHealthAgencyModel.activeRegion;
  LOBYTE(v110) = v110();

  v112 = v445;
  if (v110)
  {
    v113 = 1;
LABEL_20:
    v148 = v448;
    v149 = v442;
    v150 = v443;
    goto LABEL_26;
  }

  v149 = v442;
  if (static ENUIPublicHealthAgencyModel.activeRegion)
  {
    v113 = *(static ENUIPublicHealthAgencyModel.activeRegion + direct field offset for ENUIPublicHealthAgencyModel.isPreauthorizationDomainAllowed);
  }

  else
  {
    v113 = 1;
  }

  v148 = v448;
  v150 = v443;
LABEL_26:
  v404 = v113;
  if ((v106._countAndFlagsBits != 7564901 || v106._object != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v106._countAndFlagsBits == 0x7370747468 && v106._object == 0xE500000000000000)
    {

      v199 = v432;
    }

    else
    {
      v207 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v199 = v432;
      if ((v207 & 1) != 0 || v106._countAndFlagsBits == 1886680168 && v106._object == 0xE400000000000000)
      {
      }

      else
      {
        v268 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v268 & 1) == 0)
        {

          Logger.launcher.unsafeMutableAddressor();
          v269 = v447;
          v270 = v112;
          v271 = v426;
          (*(v447 + 16))();
          v272 = v449;
          v273 = v425;
          (*(v449 + 16))(v425, v436, v148);
          v274 = Logger.logObject.getter();
          v275 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v274, v275))
          {
            v276 = v269;
            v277 = swift_slowAlloc();
            v278 = swift_slowAlloc();
            v451 = v278;
            *v277 = 136315138;
            sub_1000023E4(&qword_100025A90, &type metadata accessor for URL);
            v279 = dispatch thunk of CustomStringConvertible.description.getter();
            v280 = v273;
            v282 = v281;
            (*(v272 + 8))(v280, v148);
            v283 = sub_100015768(v279, v282, &v451);

            *(v277 + 4) = v283;
            _os_log_impl(&_mh_execute_header, v274, v275, "URL not supported: %s", v277, 0xCu);
            sub_100007170(v278);

            (*(v276 + 8))(v426, v270);
            (*(v407 + 8))(v405, v406);
          }

          else
          {

            (*(v272 + 8))(v273, v148);
            (*(v269 + 8))(v271, v112);
            (*(v407 + 8))(v91, v406);
          }

LABEL_115:
          LOBYTE(v146) = 1;
          result = 2;
          goto LABEL_18;
        }
      }
    }

    v208 = Logger.launcher.unsafeMutableAddressor();
    v153 = *(v447 + 16);
    v446 = v208;
    v153(v199);
    v209 = v449;
    v443 = *(v449 + 16);
    (v443)(v150, v436, v148);
    v210 = Logger.logObject.getter();
    v211 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v210, v211))
    {
      v212 = swift_slowAlloc();
      v426 = v153;
      v213 = v212;
      v214 = v150;
      v215 = swift_slowAlloc();
      v451 = v215;
      *v213 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL);
      v216 = dispatch thunk of CustomStringConvertible.description.getter();
      v217 = v148;
      v219 = v218;
      v220 = *(v209 + 8);
      (v220)(v214, v217);
      v221 = sub_100015768(v216, v219, &v451);

      *(v213 + 4) = v221;
      _os_log_impl(&_mh_execute_header, v210, v211, "Received associated domain link: %s", v213, 0xCu);
      sub_100007170(v215);

      v153 = v426;

      v222 = *(v447 + 8);
      v223 = v432;
    }

    else
    {

      v220 = *(v209 + 8);
      (v220)(v150, v148);
      v222 = *(v447 + 8);
      v223 = v199;
    }

    v224 = v222;
    v225 = (v222)(v223, v445);
    v226 = v430;
    v155 = v436;
    v227 = v431;
    if (!v441)
    {

      v237 = v445;
      (v153)(v227, v446, v445);
      v238 = v448;
      (v443)(v226, v155, v448);
      v239 = Logger.logObject.getter();
      v240 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v239, v240))
      {
        v241 = swift_slowAlloc();
        v242 = swift_slowAlloc();
        v451 = v242;
        *v241 = 136315138;
        sub_1000023E4(&qword_100025A90, &type metadata accessor for URL);
        v243 = dispatch thunk of CustomStringConvertible.description.getter();
        v244 = v226;
        v246 = v245;
        (v220)(v244, v238);
        v247 = sub_100015768(v243, v246, &v451);

        *(v241 + 4) = v247;
        _os_log_impl(&_mh_execute_header, v239, v240, "Associated URL support not enabled: %s", v241, 0xCu);
        sub_100007170(v242);

        v248 = v431;
      }

      else
      {

        (v220)(v226, v238);
        v248 = v227;
      }

      (v224)(v248, v237);
      (*(v407 + 8))(v405, v406);
      goto LABEL_128;
    }

    v442 = v220;
    v451 = 46;
    v452 = 0xE100000000000000;
    __chkstk_darwin(v225);
    *&v403[-16] = &v451;
    v228 = object;

    v168 = countAndFlagsBits;
    v229 = v228;
    v166 = 0;
    v231 = sub_100002840(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000071BC, &v403[-32], countAndFlagsBits, v229, v230);
    if (!v231[2])
    {

      v91 = v405;
      v165 = v445;
      v164 = v224;
      v167 = object;
      goto LABEL_33;
    }

    v432 = 0;
    v426 = v153;
    v233 = v231[4];
    v232 = v231[5];
    v235 = v231[6];
    v234 = v231[7];

    v236 = v445;
    v164 = v224;
    v167 = object;
    if (v168 == 1868770919 && object == 0xE400000000000000)
    {

      v167 = 0xE400000000000000;
      v168 = 1868770919;
      v91 = v405;
    }

    else
    {
      v267 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v91 = v405;
      if (v267)
      {

        v153 = v426;
        v168 = countAndFlagsBits;
        v155 = v436;
LABEL_108:
        v165 = v236;
        v166 = v432;
        goto LABEL_33;
      }

      v168 = static String._fromSubstring(_:)();
      v167 = v286;
    }

    v153 = v426;
    v155 = v436;
    goto LABEL_108;
  }

  v151 = Logger.launcher.unsafeMutableAddressor();
  v152 = v447;
  v153 = *(v447 + 16);
  (v153)(v446, v151, v112);
  v154 = v449;
  v155 = v436;
  v443 = *(v449 + 16);
  (v443)(v149, v436, v148);
  v156 = v149;
  v157 = Logger.logObject.getter();
  v158 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v432 = swift_slowAlloc();
    v451 = v432;
    *v159 = 136315138;
    sub_1000023E4(&qword_100025A90, &type metadata accessor for URL);
    v160 = dispatch thunk of CustomStringConvertible.description.getter();
    v426 = v153;
    v162 = v161;
    v442 = *(v154 + 8);
    (v442)(v156, v148);
    v163 = sub_100015768(v160, v162, &v451);
    v91 = v405;
    v153 = v426;

    *(v159 + 4) = v163;
    _os_log_impl(&_mh_execute_header, v157, v158, "Received deep link: %s", v159, 0xCu);
    sub_100007170(v432);

    v155 = v436;
  }

  else
  {

    v442 = *(v154 + 8);
    (v442)(v149, v148);
  }

  v164 = *(v152 + 8);
  v165 = v445;
  (v164)(v446, v445);
  v166 = 0;
  v167 = object;
  v168 = countAndFlagsBits;
LABEL_33:
  v169 = v437;
  if (v168 == 1868770919 && v167 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v170 = v165;

    v171 = URL.pathComponents.getter();
    v172 = v444;
    if (v441 && *(v171 + 16))
    {
      v173 = v171;
      URL.path.getter();
      v174._countAndFlagsBits = 1936614703;
      v174._object = 0xE400000000000000;
      v175 = String.hasPrefix(_:)(v174);

      if (v175)
      {
        URL.path.getter();
        v176._countAndFlagsBits = 0x2F722F736E652FLL;
        v176._object = 0xE700000000000000;
        v177 = String.hasPrefix(_:)(v176);

        if (v177 && v173[2] >= 4uLL)
        {
          v285 = v173[10];
          v284 = v173[11];

          (*(v407 + 8))(v405, v406);
          result = v285;
LABEL_113:
          LOBYTE(v146) = 0;
          goto LABEL_18;
        }

        URL.path.getter();
        v178._object = 0x80000001000198E0;
        v178._countAndFlagsBits = 0xD000000000000011;
        v179 = String.hasPrefix(_:)(v178);

        v180 = v407;
        v181 = v406;
        v182 = v405;
        if (v179)
        {
          v183 = static ENUIPublicHealthAgencyModel.activeRegion;
          v184 = *(v407 + 8);
          v185 = static ENUIPublicHealthAgencyModel.activeRegion;
          v184(v182, v181);
          if (!v183)
          {
            goto LABEL_44;
          }

          if (v404)
          {
            goto LABEL_44;
          }

LABEL_17:
          LOBYTE(v146) = 1;
          result = 3;
LABEL_18:
          LOBYTE(v451) = v146;
          return result;
        }

        URL.path.getter();
        v263._countAndFlagsBits = 0x7065722F736E652FLL;
        v263._object = 0xEB0000000074726FLL;
        v264 = String.hasPrefix(_:)(v263);

        if (v264)
        {
          v265 = sub_1000036FC(v155);
          v146 = (v266 >> 40) & 1;
          (*(v180 + 8))(v182, v181);
          result = v265;
          goto LABEL_18;
        }

        (*(v180 + 8))(v182, v181);
LABEL_112:
        result = 0;
        goto LABEL_113;
      }

      v446 = v164;

      v172 = v444;
    }

    else
    {
      v446 = v164;
    }

    v186 = Logger.launcher.unsafeMutableAddressor();
    (v153)(v172, v186, v170);
    v187 = v448;
    v188 = v434;
    (v443)(v434, v155, v448);
    v189 = Logger.logObject.getter();
    v190 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v189, v190))
    {
      v191 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v451 = v192;
      *v191 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL);
      v193 = dispatch thunk of CustomStringConvertible.description.getter();
      v194 = v188;
      v196 = v195;
      (v442)(v194, v187);
      v197 = sub_100015768(v193, v196, &v451);

      *(v191 + 4) = v197;
      _os_log_impl(&_mh_execute_header, v189, v190, "URL not supported: %s", v191, 0xCu);
      sub_100007170(v192);

      v198 = v444;
    }

    else
    {

      (v442)(v188, v187);
      v198 = v172;
    }

    (v446)(v198, v170);
    (*(v407 + 8))(v405, v406);
    if (v441)
    {
      result = 4;
    }

    else
    {
      result = 3;
    }

    LOBYTE(v146) = 1;
    goto LABEL_18;
  }

  if (v168 == 111 && v167 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v168 == 0x696472616F626E6FLL && v167 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v168 == 0x6472616F626E6FLL && v167 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v169 = v429;
    if (v441)
    {
      v200 = v91;
      v201 = URLComponents.queryItems.getter();
      if (v201)
      {
        v202 = v201;
        v203 = *(v201 + 16);
        if (v203)
        {
          v204 = 0;
          v153 = (v433 + 8);
          while (1)
          {
            if (v204 >= *(v202 + 16))
            {
              __break(1u);
              goto LABEL_132;
            }

            (*(v433 + 16))(v439, v202 + ((*(v433 + 80) + 32) & ~*(v433 + 80)) + *(v433 + 72) * v204, v440);
            v205 = URLQueryItem.name.getter();
            v200 = v206;
            if (v205 == 114 && v206 == 0xE100000000000000)
            {
              break;
            }

            v166 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v166)
            {
              goto LABEL_110;
            }

            ++v204;
            (*v153)(v439, v440);
            if (v203 == v204)
            {
              goto LABEL_74;
            }
          }

LABEL_110:

          v287 = v433 + 32;
          v288 = v427;
          v289 = v440;
          (*(v433 + 32))(v427, v439, v440);
          v290 = URLQueryItem.value.getter();
          v292 = v291;
          (*(v287 - 24))(v288, v289);
          (*(v407 + 8))(v91, v406);
          if (!v292)
          {
            goto LABEL_112;
          }

          LOBYTE(v146) = 0;
          result = v290;
          goto LABEL_18;
        }

LABEL_74:
        (*(v407 + 8))(v91, v406);
      }

      else
      {
        (*(v407 + 8))(v91, v406);
      }

      goto LABEL_112;
    }

    v446 = v164;
    v249 = Logger.launcher.unsafeMutableAddressor();
    v250 = v428;
    (v153)(v428, v249, v165);
    v251 = v448;
    (v443)(v169, v155, v448);
    v252 = v165;
    v253 = Logger.logObject.getter();
    v254 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v253, v254))
    {
      v255 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v451 = v256;
      *v255 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL);
      v257 = dispatch thunk of CustomStringConvertible.description.getter();
      v259 = v258;
      (v442)(v169, v251);
      v260 = sub_100015768(v257, v259, &v451);

      *(v255 + 4) = v260;
      _os_log_impl(&_mh_execute_header, v253, v254, "URL not enabled: %s", v255, 0xCu);
      sub_100007170(v256);

      v261 = &v454;
LABEL_91:
      v262 = *(v261 - 32);
LABEL_127:
      (v446)(v262, v252);
      (*(v407 + 8))(v405, v406);
LABEL_128:
      LOBYTE(v146) = 1;
      result = 4;
      goto LABEL_18;
    }

    goto LABEL_126;
  }

  if (v168 == 97 && v167 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v168 == 0x7A69726F68747561 && v167 == 0xE900000000000065 || (v432 = v166, v166 = v168, v200 = v167, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    goto LABEL_122;
  }

LABEL_132:
  v301 = v153;
  v446 = v164;
  if (v166 == 0x6F68747561657270 && v200 == 0xEC000000657A6972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v91 = v405;
    v165 = v445;
    v164 = v446;
    v155 = v436;
    v169 = v437;
LABEL_122:
    if ((v441 & v404) == 1)
    {
      (*(v407 + 8))(v91, v406);
LABEL_44:
      result = 0;
      LOBYTE(v146) = 0;
      goto LABEL_18;
    }

    v446 = v164;
    v293 = Logger.launcher.unsafeMutableAddressor();
    v250 = v424;
    (v153)(v424, v293, v165);
    v251 = v448;
    (v443)(v169, v155, v448);
    v252 = v165;
    v253 = Logger.logObject.getter();
    v294 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v253, v294))
    {
      v295 = swift_slowAlloc();
      v296 = swift_slowAlloc();
      v451 = v296;
      *v295 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL);
      v297 = dispatch thunk of CustomStringConvertible.description.getter();
      v299 = v298;
      (v442)(v169, v251);
      v300 = sub_100015768(v297, v299, &v451);

      *(v295 + 4) = v300;
      _os_log_impl(&_mh_execute_header, v253, v294, "URL not enabled: %s", v295, 0xCu);
      sub_100007170(v296);

      v261 = &v453;
      goto LABEL_91;
    }

LABEL_126:

    (v442)(v169, v251);
    v262 = v250;
    goto LABEL_127;
  }

  if (v166 == 0x74726F706572 && v200 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v302 = sub_1000036FC(v436);
    v146 = (v303 >> 40) & 1;
    (*(v407 + 8))(v405, v406);
    result = v302;
    goto LABEL_18;
  }

  if (v166 == 118 && v200 == 0xE100000000000000)
  {

    goto LABEL_144;
  }

  v304 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v304 & 1) == 0)
  {
    v321 = Logger.launcher.unsafeMutableAddressor();
    (v153)(v415, v321, v445);
    (v443)(v416, v436, v448);
    v322 = Logger.logObject.getter();
    v323 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v322, v323))
    {
      v324 = swift_slowAlloc();
      v325 = swift_slowAlloc();
      v451 = v325;
      *v324 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL);
      v326 = v416;
      v327 = v448;
      v328 = dispatch thunk of CustomStringConvertible.description.getter();
      v330 = v329;
      (v442)(v326, v327);
      v331 = sub_100015768(v328, v330, &v451);

      *(v324 + 4) = v331;
      _os_log_impl(&_mh_execute_header, v322, v323, "Unknown URL %s", v324, 0xCu);
      sub_100007170(v325);
    }

    else
    {

      (v442)(v416, v448);
    }

    (v446)(v415, v445);
    (*(v407 + 8))(v405, v406);
    goto LABEL_115;
  }

LABEL_144:
  result = URLComponents.queryItems.getter();
  if (!result)
  {
    v310 = Logger.testVerification.unsafeMutableAddressor();
    (v153)(v417, v310, v445);
    (v443)(v418, v436, v448);
    v311 = Logger.logObject.getter();
    v312 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v311, v312))
    {
      v313 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      v451 = v314;
      *v313 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL);
      v315 = v418;
      v316 = v448;
      v317 = dispatch thunk of CustomStringConvertible.description.getter();
      v319 = v318;
      (v442)(v315, v316);
      v320 = sub_100015768(v317, v319, &v451);

      *(v313 + 4) = v320;
      _os_log_impl(&_mh_execute_header, v311, v312, "Could not get query items from url: %s", v313, 0xCu);
      sub_100007170(v314);
    }

    else
    {

      (v442)(v418, v448);
    }

    (v446)(v417, v445);
    goto LABEL_13;
  }

  v305 = result;
  v449 = *(result + 16);
  if (v449)
  {
    v306 = 0;
    v307 = (v433 + 8);
    while (1)
    {
      if (v306 >= *(v305 + 16))
      {
        __break(1u);
        goto LABEL_206;
      }

      (*(v433 + 16))(v423, v305 + ((*(v433 + 80) + 32) & ~*(v433 + 80)) + *(v433 + 72) * v306, v440);
      if (URLQueryItem.name.getter() == 114 && v308 == 0xE100000000000000)
      {
        break;
      }

      v309 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v309)
      {
        goto LABEL_162;
      }

      ++v306;
      result = (*v307)(v423, v440);
      if (v449 == v306)
      {
        goto LABEL_168;
      }
    }

LABEL_162:
    v332 = v433 + 32;
    v333 = v411;
    v334 = v440;
    (*(v433 + 32))(v411, v423, v440);
    v335 = URLQueryItem.value.getter();
    v337 = v336;
    (*(v332 - 24))(v333, v334);
    if (!v337)
    {
      goto LABEL_168;
    }

    v338 = Logger.testVerification.unsafeMutableAddressor();
    (v301)(v413, v338, v445);

    v339 = Logger.logObject.getter();
    v340 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v339, v340))
    {
      v341 = swift_slowAlloc();
      v342 = swift_slowAlloc();
      v451 = v342;
      *v341 = 136315138;
      *(v341 + 4) = sub_100015768(v335, v337, &v451);
      _os_log_impl(&_mh_execute_header, v339, v340, "Recieved region string %s", v341, 0xCu);
      sub_100007170(v342);
    }

    (v446)(v413, v445);
    v343 = String._bridgeToObjectiveC()();

    v443 = [objc_opt_self() regionWithCode:v343];

    (v301)(v414, v338, v445);
    v344 = Logger.logObject.getter();
    v345 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v344, v345))
    {
      v346 = swift_slowAlloc();
      v347 = swift_slowAlloc();
      v450 = v347;
      *v346 = 136315138;
      if (v443)
      {
        v348 = [v443 description];
        v349 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v351 = v350;
      }

      else
      {
        v349 = 0;
        v351 = 0;
      }

      v451 = v349;
      v452 = v351;
      sub_1000070C0(&qword_100025430, &qword_100019860);
      v356 = String.init<A>(describing:)();
      v358 = sub_100015768(v356, v357, &v450);

      *(v346 + 4) = v358;
      _os_log_impl(&_mh_execute_header, v344, v345, "Got ENRegion %s", v346, 0xCu);
      sub_100007170(v347);
    }

    result = (v446)(v414, v445);
  }

  else
  {
LABEL_168:
    v352 = Logger.testVerification.unsafeMutableAddressor();
    (v301)(v419, v352, v445);
    v353 = Logger.logObject.getter();
    v354 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v353, v354))
    {
      v355 = swift_slowAlloc();
      *v355 = 0;
      _os_log_impl(&_mh_execute_header, v353, v354, "Did not receive region string", v355, 2u);
    }

    result = (v446)(v419, v445);
    v443 = 0;
  }

  if (!v449)
  {
LABEL_191:
    v375 = Logger.testVerification.unsafeMutableAddressor();
    (v301)(v420, v375, v445);

    v376 = Logger.logObject.getter();
    v377 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v376, v377))
    {
      v378 = swift_slowAlloc();
      v379 = swift_slowAlloc();
      v451 = v379;
      *v378 = 136315138;
      v380 = Array.description.getter();
      v382 = v381;

      v383 = sub_100015768(v380, v382, &v451);

      *(v378 + 4) = v383;
      _os_log_impl(&_mh_execute_header, v376, v377, "Did not receive a verification code in URL: %s", v378, 0xCu);
      sub_100007170(v379);
    }

    else
    {
    }

    (v446)(v420, v445);
    (*(v407 + 8))(v405, v406);

    goto LABEL_17;
  }

  v359 = 0;
  v448 = (v433 + 16);
  v360 = (v433 + 8);
  while (v359 < *(v305 + 16))
  {
    v361 = (*(v433 + 80) + 32) & ~*(v433 + 80);
    v362 = *(v433 + 72);
    v363 = *(v433 + 16);
    v363(v422, v305 + v361 + v362 * v359, v440);
    if (URLQueryItem.name.getter() == 99 && v364 == 0xE100000000000000)
    {

LABEL_183:
      v366 = v433 + 32;
      v367 = v412;
      v368 = v440;
      v439 = *(v433 + 32);
      (v439)(v412, v422, v440);
      v442 = URLQueryItem.value.getter();
      v370 = v369;
      v433 = v366;
      v444 = *(v366 - 24);
      result = (v444)(v367, v368);
      v441 = v370;
      if (v370)
      {
        v371 = 0;
        v372 = v305 + v361;
        while (1)
        {
          if (v371 >= *(v305 + 16))
          {
            goto LABEL_207;
          }

          v363(v421, v372, v440);
          if (URLQueryItem.name.getter() == 116 && v373 == 0xE100000000000000)
          {
            break;
          }

          v374 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v374)
          {
            goto LABEL_196;
          }

          ++v371;
          result = (v444)(v421, v440);
          v372 += v362;
          if (v449 == v371)
          {
            (*(v407 + 8))(v405, v406);

            goto LABEL_204;
          }
        }

LABEL_196:

        v384 = v409;
        v385 = v440;
        (v439)(v409, v421, v440);
        v386 = URLQueryItem.value.getter();
        v388 = v387;
        (v444)(v384, v385);
        if (!v388)
        {
          goto LABEL_203;
        }

        v389 = Logger.testVerification.unsafeMutableAddressor();
        (v301)(v410, v389, v445);

        v390 = Logger.logObject.getter();
        v391 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v390, v391))
        {
          v392 = swift_slowAlloc();
          v393 = swift_slowAlloc();
          v451 = v393;
          *v392 = 136315138;
          *(v392 + 4) = sub_100015768(v386, v388, &v451);
          _os_log_impl(&_mh_execute_header, v390, v391, "Got report type string: %s", v392, 0xCu);
          sub_100007170(v393);
        }

        (v446)(v410, v445);
        v394 = sub_100001848(v386, v388);
        if ((v394 & 0x100000000) != 0)
        {
LABEL_203:
          (*(v407 + 8))(v405, v406);
        }

        else
        {
          v395 = v394;
          (v301)(v408, v389, v445);
          v396 = Logger.logObject.getter();
          v397 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v396, v397))
          {
            v398 = swift_slowAlloc();
            v399 = swift_slowAlloc();
            v451 = v399;
            *v398 = 136315138;
            sub_100007214(v395);
            v400 = String.init(cString:)();
            v402 = sub_100015768(v400, v401, &v451);

            *(v398 + 4) = v402;
            _os_log_impl(&_mh_execute_header, v396, v397, "Got report type: %s", v398, 0xCu);
            sub_100007170(v399);
          }

          (v446)(v408, v445);
          (*(v407 + 8))(v405, v406);
        }

LABEL_204:
        LOBYTE(v146) = 0;
        result = v442;
        goto LABEL_18;
      }

      goto LABEL_191;
    }

    v365 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v365)
    {
      goto LABEL_183;
    }

    ++v359;
    result = (*v360)(v422, v440);
    if (v449 == v359)
    {
      goto LABEL_191;
    }
  }

LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
  return result;
}

uint64_t sub_1000070C0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100007108(uint64_t a1)
{
  v2 = sub_1000070C0(&qword_100025AA0, &unk_100018E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007170(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000071BC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

const char *sub_100007214(unsigned int a1)
{
  if (a1 > 5)
  {
    return "?";
  }

  else
  {
    return off_100020E70[a1];
  }
}

uint64_t getEnumTagSinglePayload for URLParser.URLParserError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for URLParser.URLParserError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000073B8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1000073D0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for URLParser.PreAuthorizationType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for URLParser.PreAuthorizationType(_WORD *result, int a2, int a3)
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

unint64_t sub_100007518()
{
  result = qword_100025460;
  if (!qword_100025460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025460);
  }

  return result;
}

unint64_t sub_10000780C()
{
  result = qword_1000254A8;
  if (!qword_1000254A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000254A8);
  }

  return result;
}

void sub_100007994(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for URLParser.UserReportErrorType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for URLParser.UserReportErrorType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100007D40()
{
  result = qword_100025518;
  if (!qword_100025518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025518);
  }

  return result;
}

id sub_100007F14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100008068()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = type metadata accessor for AppDelegate();
  v6 = NSStringFromClass(v5);
  UIApplicationMain(argc, argv, 0, v6);

  return 0;
}

void sub_10000811C(void *a1, char a2)
{
  if (a1)
  {
    v3 = qword_100025330;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = sub_100009AC8(v4);
    swift_endAccess();
    if (v5)
    {
      v6[0] = a2 & 3;
      v5(v6);
      sub_100008F5C(v5);
    }
  }
}

unint64_t sub_1000081E8()
{
  result = sub_100016364(&_swiftEmptyArrayStorage);
  qword_100025640 = result;
  return result;
}

uint64_t sub_100008210()
{
  type metadata accessor for ErrorDialog();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  qword_100026BE0 = result;
  return result;
}

void sub_100008240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v72 = a8;
  v73 = a5;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  __chkstk_darwin(v23);
  if (*(v10 + 16))
  {
    v26 = Logger.testVerification.unsafeMutableAddressor();
    (*(v18 + 16))(v22, v26, v17);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error dialog is already visible. Don't show a second one.", v29, 2u);
    }

    (*(v18 + 8))(v22, v17);
    return;
  }

  v67 = a7;
  v71 = v25;
  v66 = &v65 - v24;
  v70 = v10;
  v68 = v18;
  v69 = v17;
  error = 0;
  sub_1000070C0(&qword_100025730, &unk_100019680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100019630;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  *(inited + 56) = kCFUserNotificationAlertMessageKey;
  *(inited + 64) = a3;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 72) = a4;
  *(inited + 80) = kCFUserNotificationDefaultButtonTitleKey;
  *(inited + 88) = v73;
  *(inited + 96) = a6;
  v31 = kCFUserNotificationDefaultButtonTitleKey;

  v32 = kCFUserNotificationAlertHeaderKey;
  v33 = kCFUserNotificationAlertMessageKey;
  v34 = v72;
  v35 = sub_100016474(inited);
  swift_setDeallocating();
  sub_1000070C0(&qword_100025738, "Z-");
  swift_arrayDestroy();
  v75 = v35;
  if (v34)
  {

    v36 = kCFUserNotificationAlternateButtonTitleKey;
    sub_100008990(v67, v34, kCFUserNotificationAlternateButtonTitleKey);
  }

  v37 = v70;
  sub_1000070C0(&qword_100025740, qword_100019690);
  sub_100008D9C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v39 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, isa);

  v40 = *(v37 + 16);
  *(v37 + 16) = v39;
  v41 = v39;

  v42 = v71;
  if (!v41)
  {
    goto LABEL_10;
  }

  if (error)
  {

LABEL_10:

    v43 = Logger.testVerification.unsafeMutableAddressor();
    v44 = v68;
    v45 = v69;
    (*(v68 + 16))(v42, v43, v69);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 67109120;
      swift_beginAccess();
      *(v48 + 4) = error;
      _os_log_impl(&_mh_execute_header, v46, v47, "Could not create CFUserNotification: %d", v48, 8u);
      v42 = v71;
    }

    (*(v44 + 8))(v42, v45);
    return;
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v41, sub_100008AA0, 0);
  v50 = *(v37 + 24);
  *(v37 + 24) = RunLoopSource;
  v51 = RunLoopSource;

  if (v51)
  {
    v52 = CFRunLoopGetCurrent();
    v53 = CFRunLoopCopyCurrentMode(v52);
    if (!v53)
    {
      v53 = kCFRunLoopCommonModes;
    }

    if (qword_100025330 != -1)
    {
      swift_once();
    }

    v54 = swift_allocObject();
    swift_weakInit();
    v55 = swift_allocObject();
    v55[2] = v54;
    v55[3] = a9;
    v55[4] = a10;
    swift_beginAccess();

    sub_100008F4C(a9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = qword_100025640;
    qword_100025640 = 0x8000000000000000;
    sub_10000A708(sub_100008F40, v55, v41, isUniquelyReferenced_nonNull_native);
    qword_100025640 = v74;
    swift_endAccess();

    CFRunLoopAddSource(v52, v51, v53);
  }

  else
  {
    v57 = v37;

    v58 = Logger.testVerification.unsafeMutableAddressor();
    v59 = v66;
    (*(v68 + 16))(v66, v58, v69);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Could not create CFRunLoopSource.", v62, 2u);
      v59 = v66;

      v63 = v41;
    }

    else
    {
      v63 = v60;
      v60 = v41;
    }

    (*(v68 + 8))(v59, v69);
    v64 = *(v57 + 16);
    *(v57 + 16) = 0;
  }
}

void sub_100008990(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10000A868(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v9 = *v3;
    v10 = sub_100015DC0(a3);
    if (v11)
    {
      v12 = v10;
      v13 = *v4;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v19 = *v4;
      if (!v14)
      {
        sub_10000A598();
        v15 = v19;
      }

      v16 = *(*(v15 + 56) + 16 * v12 + 8);

      sub_10000A234(v12, v15);

      *v4 = v15;
    }

    else
    {
    }
  }
}

void sub_100008AA0(void *a1, char a2)
{
  v4 = a1;
  sub_10000811C(a1, a2);
}

uint64_t sub_100008AF4(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100008CE0();
    if (v10 == 1)
    {
      if (a3)
      {
        v12 = 1;
        goto LABEL_8;
      }
    }

    if (!v10)
    {
      if (a3)
      {
        v12 = 0;
LABEL_8:
        a3(v12);
      }
    }

    v13 = Logger.testVerification.unsafeMutableAddressor();
    (*(v6 + 16))(v9, v13, v5);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unexpected response from validating notification: %lu", v16, 0xCu);
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

void sub_100008CE0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    CFRunLoopSourceInvalidate(v1);
    v2 = *(v0 + 24);
    *(v0 + 24) = 0;
  }

  v3 = *(v0 + 16);
  if (v3)
  {
    CFUserNotificationCancel(v3);
    v4 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

uint64_t sub_100008D38()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

unint64_t sub_100008D9C()
{
  result = qword_100025748;
  if (!qword_100025748)
  {
    sub_100008E20(&qword_100025740, qword_100019690);
    sub_100008E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025748);
  }

  return result;
}

uint64_t sub_100008E20(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100008E68()
{
  result = qword_100025468;
  if (!qword_100025468)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025468);
  }

  return result;
}

uint64_t sub_100008EC0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008EF8()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008F4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008F5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_100008F6C(void *a1, char a2)
{
  if (a1)
  {
    v3 = qword_100025340;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = sub_100009AC8(v4);
    swift_endAccess();
    if (v5)
    {
      v6[0] = a2 & 3;
      v5(v6);
      sub_100008F5C(v5);
    }
  }
}

unint64_t sub_100009038()
{
  result = sub_100016364(&_swiftEmptyArrayStorage);
  qword_100025750 = result;
  return result;
}

void sub_100009060()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v51 - v8;
  __chkstk_darwin(v7);
  if (*(v0 + 32))
  {
    v11 = Logger.testVerification.unsafeMutableAddressor();
    (*(v2 + 16))(v6, v11, v1);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Validating dialog is already visible. Don't show a second one.", v14, 2u);
    }

    (*(v2 + 8))(v6, v1);
    return;
  }

  v51 = &v51 - v10;
  error = 0;
  sub_1000070C0(&qword_100025730, &unk_100019680);
  inited = swift_initStackObject();
  v52 = v1;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  *(inited + 16) = xmmword_1000196B0;
  v16 = objc_opt_self();
  v17 = kCFUserNotificationAlertHeaderKey;
  v18 = [v16 mainBundle];
  v55._object = 0xE500000000000000;
  v55._countAndFlagsBits = 0x656C746954;
  v19._object = 0x8000000100019A80;
  v19._countAndFlagsBits = 0xD000000000000022;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v55);

  *(inited + 40) = v21;
  *(inited + 56) = kCFUserNotificationDefaultButtonTitleKey;
  v22 = kCFUserNotificationDefaultButtonTitleKey;
  v23 = [v16 mainBundle];
  v56._object = 0xE600000000000000;
  v24._countAndFlagsBits = 0x6C65636E6143;
  v56._countAndFlagsBits = 0x6E6F74747542;
  v24._object = 0xE600000000000000;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v56);

  *(inited + 64) = v26;
  v27 = v52;
  sub_100016474(inited);
  swift_setDeallocating();
  sub_1000070C0(&qword_100025738, "Z-");
  swift_arrayDestroy();
  sub_1000070C0(&qword_100025740, qword_100019690);
  sub_100008D9C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v29 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, isa);

  v30 = *(v0 + 32);
  *(v0 + 32) = v29;
  v31 = v29;

  if (!v31)
  {
    goto LABEL_8;
  }

  if (error)
  {

LABEL_8:
    v32 = Logger.testVerification.unsafeMutableAddressor();
    (*(v2 + 16))(v9, v32, v27);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 67109120;
      swift_beginAccess();
      *(v35 + 4) = error;
      _os_log_impl(&_mh_execute_header, v33, v34, "Could not create CFUserNotification: %d", v35, 8u);
    }

    (*(v2 + 8))(v9, v27);
    return;
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v31, sub_100009748, 0);
  v37 = *(v0 + 40);
  *(v0 + 40) = RunLoopSource;
  v38 = RunLoopSource;

  if (v38)
  {
    v39 = CFRunLoopGetCurrent();
    v40 = CFRunLoopCopyCurrentMode(v39);
    if (!v40)
    {
      v40 = kCFRunLoopCommonModes;
    }

    if (qword_100025340 != -1)
    {
      swift_once();
    }

    v41 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = qword_100025750;
    qword_100025750 = 0x8000000000000000;
    sub_10000A708(sub_10000AA20, v41, v31, isUniquelyReferenced_nonNull_native);
    qword_100025750 = v53;
    swift_endAccess();

    CFRunLoopAddSource(v39, v38, v40);
  }

  else
  {
    v43 = v0;
    v44 = Logger.testVerification.unsafeMutableAddressor();
    v45 = v51;
    (*(v2 + 16))(v51, v44, v27);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Could not create CFRunLoopSource.", v48, 2u);

      v49 = v31;
    }

    else
    {
      v49 = v46;
      v46 = v31;
    }

    (*(v2 + 8))(v45, v27);
    v50 = *(v43 + 32);
    *(v43 + 32) = 0;
  }
}

void sub_100009748(void *a1, char a2)
{
  v4 = a1;
  sub_100008F6C(a1, a2);
}

uint64_t sub_10000979C(uint64_t *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v7)
    {
      v9 = Logger.testVerification.unsafeMutableAddressor();
      (*(v3 + 16))(v6, v9, v2);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = v7;
        _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected response from validating notification: %lu", v12, 0xCu);
      }

      else
      {
      }

      return (*(v3 + 8))(v6, v2);
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10000C1A8();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_100009984()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    CFRunLoopSourceInvalidate(v1);
    v2 = *(v0 + 40);
    *(v0 + 40) = 0;
  }

  v3 = *(v0 + 32);
  if (v3)
  {
    CFUserNotificationCancel(v3);
    v4 = *(v0 + 32);
    *(v0 + 32) = 0;
  }
}

uint64_t sub_1000099DC()
{
  sub_10000AA28(v0 + 16);

  return _swift_deallocClassInstance(v0, 48, 7);
}

void *sub_100009A48(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100009A68@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100009A98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100009AC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100015D7C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10000A434();
    v9 = v15;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_10000A0C4(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_100009B5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000070C0(&qword_100025860, &qword_100019750);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100009DD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000070C0(&unk_100025AD0, qword_100019870);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = v23[1];
      v37 = *v23;
      if ((v36 & 1) == 0)
      {
        v25 = v22;
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (v22)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFString(0);
        sub_10000AA50(&qword_100025868);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
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

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v37;
      v17[1] = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_38;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_10000A0C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10000A234(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      if (v10)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFString(0);
        sub_10000AA50(&qword_100025868);
        v10 = v10;
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v12)
      {
LABEL_13:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void *sub_10000A434()
{
  v1 = v0;
  sub_1000070C0(&qword_100025860, &qword_100019750);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void *sub_10000A598()
{
  v1 = v0;
  sub_1000070C0(&unk_100025AD0, qword_100019870);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

unint64_t sub_10000A708(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100015D7C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100009B5C(v16, a4 & 1);
      v20 = *v5;
      result = sub_100015D7C(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10000A434();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_10000A868(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_100015DC0(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_100009DD0(v15, a4 & 1);
      v19 = *v5;
      v10 = sub_100015DC0(a3);
      if ((v16 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1000070C0(&qword_100025740, qword_100019690);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v18 = v10;
      sub_10000A598();
      v10 = v18;
    }
  }

  v21 = *v5;
  if ((v16 & 1) == 0)
  {
    v21[(v10 >> 6) + 8] |= 1 << v10;
    *(v21[6] + 8 * v10) = a3;
    v25 = (v21[7] + 16 * v10);
    *v25 = a1;
    v25[1] = a2;
    v26 = v21[2];
    v14 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v14)
    {
      v21[2] = v27;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  v22 = (v21[7] + 16 * v10);
  v23 = v22[1];
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_10000A9E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AA50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000AA94(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v54 = a4;
  v55 = a6;
  v53 = a5;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = Logger.testVerification.unsafeMutableAddressor();
  v51 = v10[2];
  v51(v15, v16, v9);
  v57 = a3;
  v17 = a3;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  v20 = os_log_type_enabled(v18, v19);
  v56 = a1;
  if (v20)
  {
    v49 = v10;
    v21 = a2;
    v22 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v59[0] = v48;
    *v22 = 136315394;
    v50 = v21;
    *(v22 + 4) = sub_100015768(a1, v21, v59);
    *(v22 + 12) = 2080;
    if (v57)
    {
      v23 = v16;
      v24 = [v17 description];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v16 = v23;
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v29 = sub_100015768(v25, v27, v59);

    *(v22 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Validate Verification Code %s in region %s", v22, 0x16u);
    swift_arrayDestroy();

    v28 = v49[1];
    v28(v15, v9);
    a2 = v50;
  }

  else
  {

    v28 = v10[1];
    v28(v15, v9);
  }

  sub_10000B87C();
  v30 = v52;
  v51(v52, v16, v9);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = v30;
    v35 = swift_slowAlloc();
    v59[0] = v35;
    *v33 = 136315138;
    v36 = v56;
    *(v33 + 4) = sub_100015768(v56, a2, v59);
    _os_log_impl(&_mh_execute_header, v31, v32, "Validate Verification Code with server %s", v33, 0xCu);
    sub_100007170(v35);

    v28(v34, v9);
  }

  else
  {

    v28(v30, v9);
    v36 = v56;
  }

  v37 = ENManagerAdapter.defaultAdapter.unsafeMutableAddressor();
  swift_beginAccess();
  v38 = *v37;
  v39 = swift_allocObject();
  v40 = v53;
  v41 = v54;
  v42 = v58;
  v39[2] = v54;
  v39[3] = v42;
  v43 = v55;
  v39[4] = v40;
  v39[5] = v43;
  v44 = *((swift_isaMask & *v38) + 0x1F8);
  v45 = v38;
  v46 = v41;

  v44(v36, a2, v57, sub_10000BC68, v39);
}

uint64_t sub_10000AF7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v29 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v12 = *(v30 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v30);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000070C0(&qword_100025968, &qword_1000197D0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v20 = &v27 - v19;
  sub_10000BC74(a1, &v27 - v19);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = swift_allocObject();
  v24 = v28;
  v23 = v29;
  v22[2] = a3;
  v22[3] = v23;
  v22[4] = a5;
  v22[5] = v24;
  sub_10000BE04(v20, v22 + v21);
  aBlock[4] = sub_10000BE74;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C448;
  aBlock[3] = &unk_100020F78;
  v25 = _Block_copy(aBlock);

  v24;
  static DispatchQoS.unspecified.getter();
  v32 = &_swiftEmptyArrayStorage;
  sub_10000BF00();
  sub_1000070C0(&qword_100025978, &qword_1000197D8);
  sub_10000BF58();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v31 + 8))(v11, v8);
  (*(v12 + 8))(v15, v30);
}

uint64_t sub_10000B2B4(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v55 = a4;
  v56 = a2;
  v57 = a3;
  v6 = type metadata accessor for Logger();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  __chkstk_darwin(v10);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = *(v51 + 64);
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000070C0(&qword_100025968, &qword_1000197D0);
  v48 = *(v17 - 8);
  v18 = *(v48 + 64);
  __chkstk_darwin(v17);
  v20 = (&v46 - v19);
  v21 = type metadata accessor for DispatchTime();
  v22 = a1;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v21);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v46 - v28;
  if (*(v22 + 32))
  {
    sub_10000BA40();
    static DispatchTime.now()();
    + infix(_:_:)();
    v47 = *(v23 + 8);
    v47(v27, v21);
    sub_10000BC74(v50, v20);
    v30 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v31 = swift_allocObject();
    v32 = v57;
    *(v31 + 16) = v56;
    *(v31 + 24) = v32;
    sub_10000BE04(v20, v31 + v30);
    aBlock[4] = sub_10000C134;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C448;
    aBlock[3] = &unk_100020FC8;
    v33 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v58 = &_swiftEmptyArrayStorage;
    sub_10000BF00();
    sub_1000070C0(&qword_100025978, &qword_1000197D8);
    sub_10000BF58();
    v34 = v49;
    v35 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v33);
    (*(v53 + 8))(v34, v35);
    (*(v51 + 8))(v16, v52);
    v47(v29, v21);
  }

  else
  {
    v37 = v56;
    v38 = Logger.testVerification.unsafeMutableAddressor();
    v40 = v46;
    v39 = v47;
    (*(v46 + 16))(v9, v38, v47);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "User cancelled verification code validation", v43, 2u);
    }

    (*(v40 + 8))(v9, v39);
    v44 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    *v20 = v44;
    swift_storeEnumTagMultiPayload();
    v45 = v44;
    v37(v20);

    return sub_10000BFBC(v20);
  }
}

uint64_t sub_10000B87C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Logger.testVerification.unsafeMutableAddressor();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Show Validating Dialog", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  type metadata accessor for ValidatingDialog();
  v11 = swift_allocObject();
  v11[3] = 0;
  swift_unknownObjectWeakInit();
  v11[4] = 0;
  v11[5] = 0;
  v11[3] = &off_100020F18;
  swift_unknownObjectWeakAssign();
  v12 = *(v1 + 32);
  *(v1 + 32) = v11;

  sub_100009060();
}

uint64_t sub_10000BA40()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Logger.testVerification.unsafeMutableAddressor();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Hide Validating Dialog", v10, 2u);
  }

  result = (*(v3 + 8))(v6, v2);
  if (*(v1 + 32))
  {
    v12 = *(v1 + 32);

    sub_100009984();

    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t sub_10000BBC4()
{
  v1 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10000BC20()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000BC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000070C0(&qword_100025968, &qword_1000197D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BCE4()
{
  v1 = *(sub_1000070C0(&qword_100025968, &qword_1000197D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(v0 + v3);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000BE04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000070C0(&qword_100025968, &qword_1000197D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BE74()
{
  v1 = *(sub_1000070C0(&qword_100025968, &qword_1000197D0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_10000B2B4(v2, v3, v4, v5, v6);
}

uint64_t sub_10000BEE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000BF00()
{
  result = qword_100025970;
  if (!qword_100025970)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025970);
  }

  return result;
}

unint64_t sub_10000BF58()
{
  result = qword_100025980;
  if (!qword_100025980)
  {
    sub_100008E20(&qword_100025978, &qword_1000197D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025980);
  }

  return result;
}

uint64_t sub_10000BFBC(uint64_t a1)
{
  v2 = sub_1000070C0(&qword_100025968, &qword_1000197D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C024()
{
  v1 = *(sub_1000070C0(&qword_100025968, &qword_1000197D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(v0 + v3);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000C134()
{
  v1 = *(sub_1000070C0(&qword_100025968, &qword_1000197D0) - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

uint64_t sub_10000C1A8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = Logger.testVerification.unsafeMutableAddressor();
  (*(v1 + 16))(v4, v5, v0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Cancelling validating dialog", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return sub_10000BA40();
}

uint64_t sub_10000C314(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.startIndex.getter();
    v9 = v8;
    v10 = __CocoaSet.endIndex.getter();
    v12 = v11;
    v13 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000177B8(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_1000177B8(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v7 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10001614C(v7, v9, v6 != 0, a1, a2, a3);
  v17 = v16;
  sub_1000177B8(v7, v9, v6 != 0);
  return v17;
}

uint64_t sub_10000C448(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_10000C698(void *a1)
{
  v2 = sub_1000070C0(&qword_100025AA0, &unk_100018E80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v33 - v4;
  v6 = type metadata accessor for URL();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  v8 = __chkstk_darwin(v6);
  v9 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v33 - v11;
  __chkstk_darwin(v10);
  v14 = v33 - v13;
  v15 = [a1 activityType];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      return [a1 invalidate];
    }
  }

  v22 = [a1 webpageURL];
  if (!v22)
  {
    return [a1 invalidate];
  }

  v23 = v22;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = v35;
  v25 = *(v35 + 32);
  v25(v14, v12, v6);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v26 = type metadata accessor for URLComponents();
  if ((*(*(v26 - 8) + 48))(v5, 1, v26) == 1)
  {
    (*(v24 + 8))(v14, v6);
    sub_10001759C(v5, &qword_100025AA0, &unk_100018E80);
    return [a1 invalidate];
  }

  sub_10001759C(v5, &qword_100025AA0, &unk_100018E80);
  v33[1] = type metadata accessor for ENUIPublicHealthAgencyModel();
  (*(v24 + 16))(v9, v14, v6);
  v28 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  v25((v29 + v28), v9, v6);
  v30 = v34;
  *(v29 + ((v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v31 = a1;
  v32 = v30;
  static ENUIPublicHealthAgencyModel.refreshRegions(completion:)();

  return (*(v24 + 8))(v14, v6);
}

void sub_10000CA40(uint64_t *a1, void *a2, objc_class *a3)
{
  v78 = a1;
  v79 = a3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = type metadata accessor for Logger();
  v9 = *(v80 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v80);
  v13 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v75[-v15];
  __chkstk_darwin(v14);
  v18 = &v75[-v17];
  v19 = ENUIPublicHealthAgencyModel.availableRegions.unsafeMutableAddressor();
  swift_beginAccess();
  if (static ENUIPublicHealthAgencyModel.activeRegion)
  {
    v20 = *(static ENUIPublicHealthAgencyModel.activeRegion + direct field offset for ENUIPublicHealthAgencyModel.isAssociatedDomainAllowed);
    v21 = static ENUIPublicHealthAgencyModel.activeRegion;
    if (v20)
    {
      sub_10000D408(a2);
      goto LABEL_4;
    }

    v27 = Logger.launcher.unsafeMutableAddressor();
    v28 = v9;
    (*(v9 + 16))(v18, v27, v80);
    v29 = v21;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    v32 = os_log_type_enabled(v30, v31);
    v79 = v29;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v81 = v77;
      *v33 = 136315138;
      v34 = [*(v29 + direct field offset for ENUIPublicHealthAgencyModel.region) regionCode];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_100015768(v35, v37, &v81);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "Intercepted associated link is not allowed for %s", v33, 0xCu);
      sub_100007170(v77);
    }

    (*(v28 + 8))(v18, v80);
    [v78 invalidate];
    v39 = [objc_opt_self() defaultWorkspace];
    if (v39)
    {
      v41 = v39;
      URL._bridgeToObjectiveC()(v40);
      v43 = v42;
      sub_1000070C0(&qword_100025A40, &qword_100019838);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000196B0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v45;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v46;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = 1;
      sub_100016570(inited);
      swift_setDeallocating();
      sub_1000070C0(&qword_100025A48, &qword_100019840);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v41 openURL:v43 withOptions:isa];
    }

    return;
  }

  v22 = *v19;
  if (*v19 >> 62)
  {
    goto LABEL_26;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_30:
    v57 = Logger.launcher.unsafeMutableAddressor();
    v58 = v9;
    (*(v9 + 16))(v13, v57, v80);
    (*(v5 + 16))(v8, a2, v4);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v77 = v61;
      v78 = swift_slowAlloc();
      v81 = v78;
      *v61 = 136315138;
      sub_1000166A0(&qword_100025A90, &type metadata accessor for URL);
      v76 = v60;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      (*(v5 + 8))(v8, v4);
      v65 = sub_100015768(v62, v64, &v81);

      v66 = v77;
      *(v77 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v59, v76, "Intercepted associated link %s", v66, 0xCu);
      sub_100007170(v78);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    (*(v58 + 8))(v13, v80);
    v26 = a2;
LABEL_34:
    sub_10000D408(v26);
    return;
  }

  v77 = a2;

  do
  {
    v13 = 0;
    v5 = v22 & 0xC000000000000001;
    v4 = v22 & 0xFFFFFFFFFFFFFF8;
    v8 = (v22 + 32);
    a2 = &direct field offset for ENUIPublicHealthAgencyModel.isAssociatedDomainAllowed;
    while (v5)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        return;
      }

      v76 = *(v24 + direct field offset for ENUIPublicHealthAgencyModel.isAssociatedDomainAllowed);
      swift_unknownObjectRelease();
      if (v76 == 1)
      {
        goto LABEL_18;
      }

LABEL_14:
      if (v13 == v23)
      {
        goto LABEL_28;
      }
    }

    if ((v13 & 0x8000000000000000) == 0)
    {
      if (v13 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      if (*(*&v8[8 * v13] + direct field offset for ENUIPublicHealthAgencyModel.isAssociatedDomainAllowed))
      {
LABEL_18:

        v26 = v77;
        goto LABEL_34;
      }

      ++v13;
      goto LABEL_14;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (_CocoaArrayWrapper.endIndex.getter() <= 0)
    {
      goto LABEL_30;
    }

    v77 = a2;
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  while (v23);
LABEL_28:
  v48 = Logger.launcher.unsafeMutableAddressor();
  (*(v9 + 16))(v16, v48, v80);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v81 = v52;
    *v51 = 136315138;
    type metadata accessor for ENUIPublicHealthAgencyModel();
    v53 = Array.description.getter();
    v55 = v54;

    v56 = sub_100015768(v53, v55, &v81);

    *(v51 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v49, v50, "Intercepted associated link is not available in %s", v51, 0xCu);
    sub_100007170(v52);
  }

  else
  {
  }

  (*(v9 + 8))(v16, v80);
  [v78 invalidate];
  v67 = [objc_opt_self() defaultWorkspace];
  if (v67)
  {
    v69 = v67;
    URL._bridgeToObjectiveC()(v68);
    v71 = v70;
    sub_1000070C0(&qword_100025A40, &qword_100019838);
    v72 = swift_initStackObject();
    *(v72 + 16) = xmmword_1000196B0;
    *(v72 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v72 + 40) = v73;
    *(v72 + 72) = &type metadata for Bool;
    *(v72 + 48) = 1;
    *(v72 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v72 + 88) = v74;
    *(v72 + 120) = &type metadata for Bool;
    *(v72 + 96) = 1;
    sub_100016570(v72);
    swift_setDeallocating();
    sub_1000070C0(&qword_100025A48, &qword_100019840);
    swift_arrayDestroy();
    v21 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v69 openURL:v71 withOptions:v21];

LABEL_4:
  }
}

void sub_10000D408(void *a1)
{
  v2 = sub_1000070C0(&unk_100025A30, &unk_100019828);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v164 = (&v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v163 = &v158 - v6;
  v7 = type metadata accessor for URL();
  v165 = *(v7 - 8);
  v166 = v7;
  v8 = v165[8];
  v9 = __chkstk_darwin(v7);
  v162 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v161 = &v158 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v158 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v158 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v158 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v158 - v28;
  __chkstk_darwin(v27);
  v31 = &v158 - v30;
  v167 = a1;
  v32 = sub_100003A5C(a1);
  if ((v35 & 0x10000000000) != 0)
  {
    v59 = v32;
    v60 = Logger.launcher.unsafeMutableAddressor();
    (*(v13 + 16))(v17, v60, v12);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    v63 = v13;
    if (os_log_type_enabled(v61, v62))
    {
      v64 = swift_slowAlloc();
      v160 = v12;
      v65 = v64;
      v66 = swift_slowAlloc();
      v170 = v66;
      *v65 = 136315138;
      LOBYTE(v169) = v59;
      v67 = String.init<A>(describing:)();
      v69 = sub_100015768(v67, v68, &v170);

      *(v65 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v61, v62, "URL failed %s", v65, 0xCu);
      sub_100007170(v66);

      (*(v63 + 8))(v17, v160);
    }

    else
    {

      (*(v13 + 8))(v17, v12);
    }

    if (v59 - 2 < 2)
    {
      goto LABEL_10;
    }

    if (v59 != 4)
    {
      sub_10000EE98(v59 & 1);
      return;
    }

    URL.scheme.getter();
    if (v83 && (v84._countAndFlagsBits = 1886680168, v84._object = 0xE400000000000000, v85 = String.hasPrefix(_:)(v84), , v85))
    {
      v86 = [objc_opt_self() defaultWorkspace];
      if (v86)
      {
        v88 = v86;
        URL._bridgeToObjectiveC()(v87);
        v90 = v89;
        sub_1000070C0(&qword_100025A40, &qword_100019838);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000196B0;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v92;
        *(inited + 72) = &type metadata for Bool;
        *(inited + 48) = 1;
        *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 88) = v93;
        *(inited + 120) = &type metadata for Bool;
        *(inited + 96) = 1;
        sub_100016570(inited);
        swift_setDeallocating();
        sub_1000070C0(&qword_100025A48, &qword_100019840);
        swift_arrayDestroy();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v88 openURL:v90 withOptions:isa];
      }
    }

    else
    {
LABEL_10:
      if (qword_100025338 != -1)
      {
        swift_once();
      }

      v70 = objc_opt_self();

      v71 = [v70 mainBundle];
      v171._object = 0xEB00000000656C74;
      v171._countAndFlagsBits = 0x6974207472656C41;
      v72._object = 0x8000000100019F90;
      v72._countAndFlagsBits = 0xD000000000000011;
      v73._countAndFlagsBits = 0;
      v73._object = 0xE000000000000000;
      v74 = NSLocalizedString(_:tableName:bundle:value:comment:)(v72, 0, v71, v73, v171);

      v75 = [v70 mainBundle];
      v172._object = 0xED00006567617373;
      v172._countAndFlagsBits = 0x656D207472656C41;
      v76._countAndFlagsBits = 0xD000000000000013;
      v76._object = 0x8000000100019FB0;
      v77._countAndFlagsBits = 0;
      v77._object = 0xE000000000000000;
      v78 = NSLocalizedString(_:tableName:bundle:value:comment:)(v76, 0, v75, v77, v172);

      v79 = [v70 mainBundle];
      v173._object = 0xE600000000000000;
      v173._countAndFlagsBits = 0x6E6F74747542;
      v80._countAndFlagsBits = 19279;
      v80._object = 0xE200000000000000;
      v81._countAndFlagsBits = 0;
      v81._object = 0xE000000000000000;
      v82 = NSLocalizedString(_:tableName:bundle:value:comment:)(v80, 0, v79, v81, v173);

      sub_100008240(v74._countAndFlagsBits, v74._object, v78._countAndFlagsBits, v78._object, v82._countAndFlagsBits, v82._object, 0, 0, 0, 0);
    }
  }

  else
  {
    if (!BYTE4(v35))
    {
      v95 = v32;
      v96 = v33;
      v167 = v34;
      v97 = v35;
      sub_10001754C(v32, v33, v34, v35, 0);
      v98 = Logger.launcher.unsafeMutableAddressor();
      v99 = v12;
      (*(v13 + 16))(v31, v98, v12);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&_mh_execute_header, v100, v101, "onboarding", v102, 2u);
      }

      (*(v13 + 8))(v31, v99);
      sub_10000E5A4(v95, v96);
      v103 = v167;
      sub_1000174B4(v95, v96, v167, v97, 0);
      v104 = v95;
      v105 = v96;
      v106 = v103;
      v107 = v97;
      goto LABEL_26;
    }

    if (BYTE4(v35) == 1)
    {
      v36 = v33;
      v37 = v32;
      v159 = v35;
      v38 = v34;
      v39 = v34;

      v40 = Logger.testVerification.unsafeMutableAddressor();
      v41 = v13;
      v42 = *(v13 + 16);
      v43 = v12;
      v42(v23, v40, v12);

      v44 = v39;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();

      LODWORD(v166) = v46;
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v167 = v38;
        v48 = v47;
        v164 = swift_slowAlloc();
        v170 = v164;
        *v48 = 136315650;
        *(v48 + 4) = sub_100015768(v37, v36, &v170);
        *(v48 + 12) = 2080;
        v169 = v167;
        v49 = v44;
        sub_1000070C0(&qword_100025A98, &qword_100019868);
        v50 = String.init<A>(describing:)();
        v165 = v44;
        v52 = sub_100015768(v50, v51, &v170);
        v160 = v43;
        v53 = v41;
        v54 = v52;

        *(v48 + 14) = v54;
        *(v48 + 22) = 2080;
        v55 = v159;
        sub_100017528(v159);
        v56 = String.init(cString:)();
        v58 = sub_100015768(v56, v57, &v170);
        v44 = v165;

        *(v48 + 24) = v58;
        _os_log_impl(&_mh_execute_header, v45, v166, "Verification code: %s, region: %s, reportType: %s", v48, 0x20u);
        swift_arrayDestroy();

        v38 = v167;

        (*(v53 + 8))(v23, v160);
      }

      else
      {

        (*(v41 + 8))(v23, v43);
        v55 = v159;
      }

      sub_100010328(v37, v36, v38, v55);
      sub_1000174B4(v37, v36, v38, v55, 0);

      return;
    }

    v108 = v34 | v33;
    if (!v35 && !(v108 | v32))
    {
      v109 = v35;
      v110 = Logger.launcher.unsafeMutableAddressor();
      (*(v13 + 16))(v29, v110, v12);
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&_mh_execute_header, v111, v112, "preAuthorization", v113, 2u);
      }

      (*(v13 + 8))(v29, v12);
      sub_10000F928();
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = v109;
LABEL_26:
      sub_1000174B4(v104, v105, v106, v107, 0);
      return;
    }

    v159 = v35;
    if (v35 || v32 != 1 || v108)
    {
      v130 = Logger.launcher.unsafeMutableAddressor();
      v131 = v13;
      v132 = v12;
      (*(v13 + 16))(v20, v130, v12);
      v134 = v165;
      v133 = v166;
      v135 = v162;
      (v165[2])(v162, v167, v166);
      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v160 = v132;
        v139 = v133;
        v140 = v138;
        v168 = swift_slowAlloc();
        v170 = v168;
        *v140 = 136315138;
        sub_1000166A0(&qword_100025A90, &type metadata accessor for URL);
        v141 = dispatch thunk of CustomStringConvertible.description.getter();
        v142 = v135;
        v144 = v143;
        (v134[1])(v142, v139);
        v145 = sub_100015768(v141, v144, &v170);

        *(v140 + 4) = v145;
        _os_log_impl(&_mh_execute_header, v136, v137, "Unknown link %s", v140, 0xCu);
        sub_100007170(v168);

        sub_1000174B4(2, 0, 0, v159, 0);
        (*(v131 + 8))(v20, v160);
      }

      else
      {

        sub_1000174B4(2, 0, 0, v159, 0);
        (v134[1])(v135, v133);
        (*(v131 + 8))(v20, v132);
      }
    }

    else
    {
      v114 = Logger.launcher.unsafeMutableAddressor();
      v115 = v13;
      v116 = v12;
      (*(v13 + 16))(v26, v114, v12);
      v118 = v165;
      v117 = v166;
      v119 = v161;
      (v165[2])(v161, v167, v166);
      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v170 = v123;
        *v122 = 136315138;
        sub_1000166A0(&qword_100025A90, &type metadata accessor for URL);
        v124 = dispatch thunk of CustomStringConvertible.description.getter();
        v160 = v116;
        v126 = v125;
        v127 = v119;
        v128 = v165[1];
        v128(v127, v166);
        v129 = sub_100015768(v124, v126, &v170);

        *(v122 + 4) = v129;
        _os_log_impl(&_mh_execute_header, v120, v121, "Report link %s", v122, 0xCu);
        sub_100007170(v123);
        v118 = v165;

        v117 = v166;

        (*(v115 + 8))(v26, v160);
      }

      else
      {

        v146 = v119;
        v128 = v118[1];
        v128(v146, v117);
        (*(v115 + 8))(v26, v116);
      }

      v148 = v163;
      v147 = v164;
      URL.init(string:)();
      v149 = [objc_opt_self() defaultWorkspace];
      if (v149)
      {
        v150 = v149;
        sub_100016820(v148, v147, &unk_100025A30, &unk_100019828);
        if ((v118[6])(v147, 1, v117) == 1)
        {
          v152 = 0;
        }

        else
        {
          URL._bridgeToObjectiveC()(v151);
          v152 = v153;
          v128(v147, v117);
        }

        sub_1000070C0(&qword_100025A40, &qword_100019838);
        v154 = swift_initStackObject();
        *(v154 + 16) = xmmword_1000196B0;
        *(v154 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v154 + 40) = v155;
        *(v154 + 72) = &type metadata for Bool;
        *(v154 + 48) = 1;
        *(v154 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v154 + 88) = v156;
        *(v154 + 120) = &type metadata for Bool;
        *(v154 + 96) = 1;
        sub_100016570(v154);
        swift_setDeallocating();
        sub_1000070C0(&qword_100025A48, &qword_100019840);
        swift_arrayDestroy();
        v157 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v150 openSensitiveURL:v152 withOptions:v157];
      }

      sub_1000174B4(1, 0, 0, v159, 0);
      sub_10001759C(v148, &unk_100025A30, &unk_100019828);
    }
  }
}

uint64_t sub_10000E5A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Logger.launcher.unsafeMutableAddressor();
  (*(v7 + 16))(v10, v11, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Start onboarding...", v14, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v15 = ENManagerAdapter.defaultAdapter.unsafeMutableAddressor();
  swift_beginAccess();
  v16 = *v15;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v3;
  v18 = *((swift_isaMask & *v16) + 0x198);

  v19 = v3;
  v20 = v16;
  v18(sub_10001695C, v17);
}

uint64_t sub_10000E7D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = ENManagerAdapter.defaultAdapter.unsafeMutableAddressor();
    swift_beginAccess();
    v16 = *v15;
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a5;
    v17[5] = a1;
    v17[6] = a2;
    v18 = *((swift_isaMask & *v16) + 0x190);

    v19 = a5;

    v20 = v16;
    v18(a1, a2, sub_1000174A4, v17);
  }

  else
  {
    v22 = Logger.launcher.unsafeMutableAddressor();
    (*(v11 + 16))(v14, v22, v10);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = a3;
      v33 = v30;
      *v25 = 136315138;
      v32 = a4;

      sub_1000070C0(&qword_100025430, &qword_100019860);
      v26 = String.init<A>(describing:)();
      v28 = sub_100015768(v26, v27, &v33);

      *(v25 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "Start onboarding (query param: %s)", v25, 0xCu);
      sub_100007170(v30);
    }

    (*(v11 + 8))(v14, v10);
    return sub_100016ECC(a3, a4);
  }
}

void sub_10000EABC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  if (a1)
  {
    v19 = a1;
    v20 = Logger.launcher.unsafeMutableAddressor();
    (*(v12 + 16))(v18, v20, v11);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v44 = a5;
      v26 = v25;
      v46[0] = v25;
      *v24 = 136315138;
      v27 = [*&v21[direct field offset for ENUIPublicHealthAgencyModel.region] regionCode];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v21;
      v29 = a6;
      v30 = v28;
      v45 = v11;
      v32 = v31;

      v33 = sub_100015768(v30, v32, v46);

      *(v24 + 4) = v33;
      a6 = v29;
      v21 = v43;
      _os_log_impl(&_mh_execute_header, v22, v23, "Start onboarding for last visited region %s", v24, 0xCu);
      sub_100007170(v26);
      a5 = v44;

      (*(v12 + 8))(v18, v45);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }

    sub_100016ECC(a5, a6);
  }

  else
  {
    v34 = Logger.launcher.unsafeMutableAddressor();
    (*(v12 + 16))(v16, v34, v11);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v45 = v11;
      v38 = v37;
      v39 = swift_slowAlloc();
      v46[1] = a3;
      v47 = v39;
      *v38 = 136315138;
      v46[0] = a2;

      sub_1000070C0(&qword_100025430, &qword_100019860);
      v40 = String.init<A>(describing:)();
      v42 = sub_100015768(v40, v41, &v47);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "Using onboarding (query param: %s)", v38, 0xCu);
      sub_100007170(v39);

      (*(v12 + 8))(v16, v45);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }

    sub_100016ECC(a2, a3);
  }
}

uint64_t sub_10000EE98(char a1)
{
  if (a1)
  {
    if (static ENUIPublicHealthAgencyModel.activeRegion)
    {
      v2 = *(static ENUIPublicHealthAgencyModel.activeRegion + direct field offset for ENUIPublicHealthAgencyModel.name);
      v1 = *(static ENUIPublicHealthAgencyModel.activeRegion + direct field offset for ENUIPublicHealthAgencyModel.name + 8);
      v3 = objc_opt_self();

      v4 = [v3 mainBundle];
      v51._object = 0xEB00000000656C74;
      v5._object = 0x8000000100019FD0;
      v5._countAndFlagsBits = 0xD00000000000001ALL;
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      v51._countAndFlagsBits = 0x6974207472656C41;
      v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v51);

      v7 = [v3 mainBundle];
      v52._object = 0xED00006567617373;
      v8._countAndFlagsBits = 0xD00000000000001CLL;
      v8._object = 0x8000000100019FF0;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v52._countAndFlagsBits = 0x656D207472656C41;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v52);

      sub_1000070C0(&qword_100025A70, &qword_100019850);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1000197F0;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_100016740();
      *(v10 + 32) = v2;
      *(v10 + 40) = v1;
      countAndFlagsBits = String.init(format:_:)();
      object = v12;
    }

    else
    {
      v36 = objc_opt_self();
      v37 = [v36 mainBundle];
      v38._countAndFlagsBits = 0xD000000000000011;
      v57._object = 0xEB00000000656C74;
      v38._object = 0x8000000100019F90;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v57._countAndFlagsBits = 0x6974207472656C41;
      v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v57);

      v40 = [v36 mainBundle];
      v41._countAndFlagsBits = 0xD000000000000013;
      v58._object = 0xED00006567617373;
      v41._object = 0x8000000100019FB0;
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v58._countAndFlagsBits = 0x656D207472656C41;
      v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v58);
      countAndFlagsBits = v43._countAndFlagsBits;
      object = v43._object;
    }

    v44 = [objc_opt_self() mainBundle];
    v59._object = 0xE600000000000000;
    v45._countAndFlagsBits = 19279;
    v45._object = 0xE200000000000000;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    v59._countAndFlagsBits = 0x6E6F74747542;
    v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v59);
    v26 = v47._countAndFlagsBits;
    v27 = v47._object;

    v35 = 0;
    v34 = 0;
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v14 = objc_opt_self();
    v15 = [v14 mainBundle];
    v53._object = 0xEB00000000656C74;
    v16._object = 0x800000010001A010;
    v16._countAndFlagsBits = 0xD00000000000001ALL;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v53._countAndFlagsBits = 0x6974207472656C41;
    v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v53);

    v18 = [v14 mainBundle];
    v54._object = 0xED00006567617373;
    v19._countAndFlagsBits = 0xD00000000000001CLL;
    v19._object = 0x800000010001A030;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v54._countAndFlagsBits = 0x656D207472656C41;
    v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v54);
    countAndFlagsBits = v21._countAndFlagsBits;
    object = v21._object;

    v22 = [v14 mainBundle];
    v55._object = 0xE600000000000000;
    v23._countAndFlagsBits = 0xD000000000000020;
    v23._object = 0x8000000100019CE0;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v55._countAndFlagsBits = 0x6E6F74747542;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v55);
    v26 = v25._countAndFlagsBits;
    v27 = v25._object;

    v28 = [v14 mainBundle];
    v56._object = 0xE600000000000000;
    v29._countAndFlagsBits = 0x6C65636E6143;
    v29._object = 0xE600000000000000;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v56._countAndFlagsBits = 0x6E6F74747542;
    v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v56);
    v32 = v31._countAndFlagsBits;
    v33 = v31._object;

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v35 = sub_100016910;
  }

  if (qword_100025338 != -1)
  {
    swift_once();
  }

  sub_100008240(v49._countAndFlagsBits, v49._object, countAndFlagsBits, object, v26, v27, v32, v33, v35, v34);
  sub_100008F5C(v35);
  sub_100008F5C(v35);
}

uint64_t sub_10000F44C(char a1)
{
  v2 = sub_1000070C0(&unk_100025A30, &unk_100019828);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v38 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = Logger.testVerification.unsafeMutableAddressor();
  v18 = *(v10 + 16);
  if (a1)
  {
    v18(v14, v17, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "User chose Cancel", v21, 2u);
    }

    return (*(v10 + 8))(v14, v9);
  }

  else
  {
    v18(v16, v17, v9);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "User chose to turn on EN", v25, 2u);
    }

    (*(v10 + 8))(v16, v9);
    URL.init(string:)();
    v26 = [objc_opt_self() defaultWorkspace];
    if (v26)
    {
      v27 = v26;
      sub_100016820(v8, v6, &unk_100025A30, &unk_100019828);
      v28 = type metadata accessor for URL();
      v29 = *(v28 - 8);
      v31 = 0;
      if ((*(v29 + 48))(v6, 1, v28) != 1)
      {
        URL._bridgeToObjectiveC()(v30);
        v31 = v32;
        (*(v29 + 8))(v6, v28);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        sub_1000070C0(&qword_100025A40, &qword_100019838);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000196B0;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v35;
        *(inited + 72) = &type metadata for Bool;
        *(inited + 48) = 1;
        *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 88) = v36;
        *(inited + 120) = &type metadata for Bool;
        *(inited + 96) = 1;
        sub_100016570(inited);
        swift_setDeallocating();
        sub_1000070C0(&qword_100025A48, &qword_100019840);
        swift_arrayDestroy();
      }

      else
      {
        sub_100016570(&_swiftEmptyArrayStorage);
      }

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v27 openSensitiveURL:v31 withOptions:isa];
    }

    return sub_10001759C(v8, &unk_100025A30, &unk_100019828);
  }
}

uint64_t sub_10000F928()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Logger.launcher.unsafeMutableAddressor();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = String.init<A>(describing:)();
    v14 = sub_100015768(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Start pre-authorization for %s", v10, 0xCu);
    sub_100007170(v11);
  }

  (*(v3 + 8))(v6, v2);
  type metadata accessor for ENUIPublicHealthAgencyModel();
  *(swift_allocObject() + 16) = v1;
  v15 = v1;
  static ENUIPublicHealthAgencyModel.refreshRegions(completion:)();
}

void sub_10000FB3C()
{
  v0 = sub_1000070C0(&unk_100025A30, &unk_100019828);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0);
  v61 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v60 = &v59 - v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v59 - v7;
  __chkstk_darwin(v6);
  v10 = &v59 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v14);
  if (static ENUIPublicHealthAgencyModel.activeRegion)
  {
    v59 = &v59 - v17;
    v18 = *((swift_isaMask & *static ENUIPublicHealthAgencyModel.activeRegion) + 0x160);
    v19 = static ENUIPublicHealthAgencyModel.activeRegion;
    if (v18() & 1) != 0 && ((*((swift_isaMask & *v19) + 0x158))())
    {
      v20 = Logger.testVerification.unsafeMutableAddressor();
      v21 = v59;
      v22 = v62;
      (*(v12 + 16))(v59, v20, v62);
      v23 = v19;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v64 = v27;
        *v26 = 136315138;
        v28 = *(v23 + direct field offset for ENUIPublicHealthAgencyModel.appBundleId + 8);
        v63[0] = *(v23 + direct field offset for ENUIPublicHealthAgencyModel.appBundleId);
        v63[1] = v28;

        sub_1000070C0(&qword_100025430, &qword_100019860);
        v29 = String.init<A>(describing:)();
        v31 = sub_100015768(v29, v30, &v64);

        *(v26 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v24, v25, "Opening app: %s", v26, 0xCu);
        sub_100007170(v27);
      }

      (*(v12 + 8))(v21, v22);
      v32 = [objc_opt_self() defaultWorkspace];
      if (v32)
      {
        v33 = v32;
        if (*(v23 + direct field offset for ENUIPublicHealthAgencyModel.appBundleId + 8))
        {
          v34 = *(v23 + direct field offset for ENUIPublicHealthAgencyModel.appBundleId);
          v35 = *(v23 + direct field offset for ENUIPublicHealthAgencyModel.appBundleId + 8);

          v36 = String._bridgeToObjectiveC()();
        }

        else
        {
          v36 = 0;
        }

        [v33 openApplicationWithBundleID:v36];
      }

      else
      {
      }

      return;
    }

    v11 = v62;
  }

  URL.init(string:)();
  v37 = Logger.testVerification.unsafeMutableAddressor();
  (*(v12 + 16))(v16, v37, v11);
  sub_100016820(v10, v8, &unk_100025A30, &unk_100019828);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v59 = v10;
    v41 = v40;
    v42 = swift_slowAlloc();
    v63[0] = v42;
    *v41 = 136315138;
    sub_100016820(v8, v60, &unk_100025A30, &unk_100019828);
    v43 = String.init<A>(describing:)();
    v45 = v44;
    sub_10001759C(v8, &unk_100025A30, &unk_100019828);
    v46 = sub_100015768(v43, v45, v63);

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v38, v39, "Opening Settings to %s", v41, 0xCu);
    sub_100007170(v42);

    v10 = v59;

    (*(v12 + 8))(v16, v62);
  }

  else
  {

    sub_10001759C(v8, &unk_100025A30, &unk_100019828);
    (*(v12 + 8))(v16, v11);
  }

  v47 = [objc_opt_self() defaultWorkspace];
  v48 = v61;
  if (v47)
  {
    v49 = v47;
    sub_100016820(v10, v61, &unk_100025A30, &unk_100019828);
    v50 = type metadata accessor for URL();
    v51 = *(v50 - 8);
    v53 = 0;
    if ((*(v51 + 48))(v48, 1, v50) != 1)
    {
      URL._bridgeToObjectiveC()(v52);
      v53 = v54;
      (*(v51 + 8))(v48, v50);
    }

    sub_1000070C0(&qword_100025A40, &qword_100019838);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000196B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v56;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v57;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    sub_100016570(inited);
    swift_setDeallocating();
    sub_1000070C0(&qword_100025A48, &qword_100019840);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v49 openSensitiveURL:v53 withOptions:isa];
  }

  sub_10001759C(v10, &unk_100025A30, &unk_100019828);
}

void sub_100010328(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v31 = a4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Logger.testVerification.unsafeMutableAddressor();
  (*(v10 + 16))(v13, v14, v9);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = a3;
    v18 = v5;
    v19 = v17;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100015768(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v15, v16, "Verification code %s", v19, 0xCu);
    sub_100007170(v20);

    v5 = v18;
    a3 = v30;
  }

  (*(v10 + 8))(v13, v9);
  type metadata accessor for VerificationCodeValidator();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 1;
  *(v21 + 32) = 0;
  v22 = [objc_opt_self() sharedApplication];
  v23 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10001553C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C448;
  aBlock[3] = &unk_100020FF0;
  v24 = _Block_copy(aBlock);

  v25 = [v22 beginBackgroundTaskWithName:v23 expirationHandler:v24];
  _Block_release(v24);

  *(v21 + 16) = v25;
  *(v21 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = 0;
  *(v26 + 32) = a1;
  *(v26 + 40) = a2;
  *(v26 + 48) = a3;
  *(v26 + 56) = v5;
  *(v26 + 64) = v31;
  sub_1000177C4(0, &qword_100025A20, OS_dispatch_queue_ptr);
  v27 = a3;
  v28 = v5;

  v29 = static OS_dispatch_queue.main.getter();
  sub_10000AA94(a1, a2, a3, v29, sub_1000155A4, v26);
}

void sub_1000106C8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = Logger.testVerification.unsafeMutableAddressor();
    (*(v3 + 16))(v6, v8, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v7;
      v18 = v12;
      *v11 = 136315138;
      type metadata accessor for UIBackgroundTaskIdentifier(0);
      v13 = String.init<A>(describing:)();
      v15 = sub_100015768(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "The time given to complete the verification code validation task %s to complete while the app is in the background has expired.", v11, 0xCu);
      sub_100007170(v12);
    }

    (*(v3 + 8))(v6, v2);
    v16 = [objc_opt_self() sharedApplication];
    [v16 endBackgroundTask:v7];
  }
}

void sub_100014674(char a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = Logger.testVerification.unsafeMutableAddressor();
  v15 = *(v7 + 16);
  if (a1)
  {
    v15(v11, v14, v6);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "User chose Settings", v18, 2u);
    }

    (*(v7 + 8))(v11, v6);
    v19 = [objc_opt_self() defaultWorkspace];
    if (v19)
    {
      v20 = v19;
      v21 = String._bridgeToObjectiveC()();
      [v20 openApplicationWithBundleID:v21];
    }
  }

  else
  {
    v15(v13, v14, v6);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "User chose OK", v24, 2u);
    }

    (*(v7 + 8))(v13, v6);
  }

  if ((a3 & 1) == 0 && UIBackgroundTaskInvalid != a2)
  {
    v25 = [objc_opt_self() sharedApplication];
    [v25 endBackgroundTask:a2];
  }
}

void sub_100014950(char a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = Logger.testVerification.unsafeMutableAddressor();
  v19 = *(v11 + 16);
  if (a1)
  {
    v19(v15, v18, v10);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "User chose Cancel", v22, 2u);
    }

    (*(v11 + 8))(v15, v10);
  }

  else
  {
    v19(v17, v18, v10);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v33 = a4;
      v26 = a5;
      v27 = v25;
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_100015768(a2, a3, &v34);
      _os_log_impl(&_mh_execute_header, v23, v24, "User chose Open App, launching: %s", v27, 0xCu);
      sub_100007170(v28);

      a5 = v26;
      a4 = v33;
    }

    (*(v11 + 8))(v17, v10);
    v29 = [objc_opt_self() defaultWorkspace];
    if (v29)
    {
      v30 = v29;
      v31 = String._bridgeToObjectiveC()();
      [v30 openApplicationWithBundleID:v31];
    }
  }

  if ((a5 & 1) == 0 && UIBackgroundTaskInvalid != a4)
  {
    v32 = [objc_opt_self() sharedApplication];
    [v32 endBackgroundTask:a4];
  }
}

void sub_100014C98(char a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v73 = a5;
  v70 = a2;
  v69 = sub_1000070C0(&unk_100025A30, &unk_100019828);
  v7 = *(*(v69 - 8) + 64);
  v8 = __chkstk_darwin(v69);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v68 = &v66 - v12;
  v13 = __chkstk_darwin(v11);
  v71 = &v66 - v14;
  __chkstk_darwin(v13);
  v74 = &v66 - v15;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v72 = &v66 - v23;
  __chkstk_darwin(v22);
  v25 = &v66 - v24;
  v26 = Logger.testVerification.unsafeMutableAddressor();
  v27 = *(v17 + 16);
  if (a1)
  {
    v27(v21, v26, v16);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "User chose Cancel", v30, 2u);
    }

    (*(v17 + 8))(v21, v16);
  }

  else
  {
    v66 = v10;
    v27(v25, v26, v16);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "User chose Set Up", v33, 2u);
    }

    v67 = *(v17 + 8);
    v67(v25, v16);
    v76 = 0xD000000000000039;
    v77 = 0x8000000100019F20;
    if (v70)
    {
      v34 = [v70 regionCode];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v75._countAndFlagsBits = 47;
      v75._object = 0xE100000000000000;
      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      String.append(_:)(v75);
    }

    v39 = v74;
    URL.init(string:)();

    v40 = v72;
    v27(v72, v26, v16);
    v41 = v71;
    sub_100016820(v39, v71, &unk_100025A30, &unk_100019828);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v75._countAndFlagsBits = v45;
      *v44 = 136315138;
      v46 = a4;
      sub_100016820(v41, v68, &unk_100025A30, &unk_100019828);
      v47 = String.init<A>(describing:)();
      v48 = v41;
      v50 = v49;
      sub_10001759C(v48, &unk_100025A30, &unk_100019828);
      v51 = sub_100015768(v47, v50, &v75._countAndFlagsBits);

      *(v44 + 4) = v51;
      a4 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "Opening Settings to %s", v44, 0xCu);
      sub_100007170(v45);

      v52 = v72;
    }

    else
    {

      sub_10001759C(v41, &unk_100025A30, &unk_100019828);
      v52 = v40;
    }

    v67(v52, v16);
    v53 = [objc_opt_self() defaultWorkspace];
    if (v53)
    {
      v54 = v53;
      v55 = v66;
      sub_100016820(v74, v66, &unk_100025A30, &unk_100019828);
      v56 = type metadata accessor for URL();
      v57 = *(v56 - 8);
      v59 = 0;
      if ((*(v57 + 48))(v55, 1, v56) != 1)
      {
        URL._bridgeToObjectiveC()(v58);
        v59 = v60;
        (*(v57 + 8))(v55, v56);
      }

      sub_1000070C0(&qword_100025A40, &qword_100019838);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000196B0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v62;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v63;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = 1;
      sub_100016570(inited);
      swift_setDeallocating();
      sub_1000070C0(&qword_100025A48, &qword_100019840);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v54 openSensitiveURL:v59 withOptions:isa];
    }

    sub_10001759C(v74, &unk_100025A30, &unk_100019828);
  }

  if ((v73 & 1) == 0 && UIBackgroundTaskInvalid != a4)
  {
    v65 = [objc_opt_self() sharedApplication];
    [v65 endBackgroundTask:a4];
  }
}

id sub_1000154D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100015544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001555C()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 68, 7);
}

id sub_1000155BC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100015698(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10001570C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100015768(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100015768(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100015834(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_100015D20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007170(v11);
  return v7;
}

unint64_t sub_100015834(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100015940(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_100015940(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001598C(a1, a2);
  sub_100015ABC(&off_100020B30);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001598C(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100015BA8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100015BA8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100015ABC(uint64_t result)
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

  result = sub_100015C1C(result, v12, 1, v3);
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

void *sub_100015BA8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000070C0(&qword_100025A28, &qword_100019820);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100015C1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000070C0(&qword_100025A28, &qword_100019820);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

_BYTE **sub_100015D10(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100015D20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100015D7C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_100015F08(a1, v4);
}

unint64_t sub_100015DC0(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFString(0);
    sub_1000166A0(&qword_100025868, type metadata accessor for CFString);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();

  return sub_100015F74(a1, v4);
}

unint64_t sub_100015E90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100016094(a1, a2, v6);
}

unint64_t sub_100015F08(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100015F74(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_1000166A0(&qword_100025868, type metadata accessor for CFString);
          v10 = v9;
          v11 = static _CFObject.== infix(_:_:)();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100016094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_10001614C(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000177C4(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000177C4(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

unint64_t sub_100016364(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000070C0(&qword_100025860, &qword_100019750);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_100015D7C(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_100015D7C(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100016474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000070C0(&unk_100025AD0, qword_100019870);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = v5;

      result = sub_100015DC0(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100016570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000070C0(&unk_100025A80, &qword_100019858);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016820(v4, &v13, &qword_100025A48, &qword_100019840);
      v5 = v13;
      v6 = v14;
      result = sub_100015E90(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100016888(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000166A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000166E8()
{

  return _swift_deallocObject(v0, 41, 7);
}

unint64_t sub_100016740()
{
  result = qword_100025A78;
  if (!qword_100025A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A78);
  }

  return result;
}

uint64_t sub_100016794()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100016820(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000070C0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100016888(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100016898()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000168D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001691C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100016968(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = __chkstk_darwin(v7);
  v10 = &v27 - v9;
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v5;
    v14 = [a2 userActivities];
    sub_1000177C4(0, &qword_100025AB8, NSUserActivity_ptr);
    sub_100017764(&unk_100025AC0, &qword_100025AB8, NSUserActivity_ptr);
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = sub_10000C314(v15, &qword_100025AB8, NSUserActivity_ptr);

    if (v16)
    {
      sub_10000C698(v16);
    }

    v17 = [a2 URLContexts];
    sub_1000177C4(0, &qword_100025AA8, UIOpenURLContext_ptr);
    sub_100017764(&qword_100025AB0, &qword_100025AA8, UIOpenURLContext_ptr);
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = sub_10000C314(v18, &qword_100025AA8, UIOpenURLContext_ptr);

    v21 = v27;
    v20 = v28;
    if (v19)
    {
      v22 = [v19 URL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = *(v20 + 32);
      v23(v12, v10, v4);
      type metadata accessor for ENUIPublicHealthAgencyModel();
      (*(v20 + 16))(v21, v12, v4);
      v24 = (*(v20 + 80) + 24) & ~*(v20 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v2;
      v23((v25 + v24), v21, v4);
      v26 = v2;
      static ENUIPublicHealthAgencyModel.refreshRegions(completion:)();

      return (*(v20 + 8))(v12, v4);
    }
  }

  return result;
}

void *sub_100016CB4(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  result = sub_10000C314(a1, &qword_100025AA8, UIOpenURLContext_ptr);
  if (result)
  {
    v14 = result;
    v15 = [result URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = *(v4 + 32);
    v16(v12, v10, v3);
    type metadata accessor for ENUIPublicHealthAgencyModel();
    (*(v4 + 16))(v7, v12, v3);
    v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    v16((v18 + v17), v7, v3);
    v19 = v1;
    static ENUIPublicHealthAgencyModel.refreshRegions(completion:)();

    return (*(v4 + 8))(v12, v3);
  }

  return result;
}

uint64_t sub_100016ECC(uint64_t a1, void *a2)
{
  v46 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000070C0(&unk_100025A30, &unk_100019828);
  v8 = *(*(v45 - 8) + 64);
  v9 = __chkstk_darwin(v45);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v44 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v44 - v16;
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v48 = 0xD000000000000039;
  v49 = 0x8000000100019F20;
  if (a2)
  {
    v47._countAndFlagsBits = 47;
    v47._object = 0xE100000000000000;
    v20._countAndFlagsBits = v46;
    v20._object = a2;
    String.append(_:)(v20);
    String.append(_:)(v47);
  }

  URL.init(string:)();

  v21 = Logger.launcher.unsafeMutableAddressor();
  v22 = v7;
  (*(v4 + 16))(v7, v21, v3);
  sub_100016820(v19, v17, &unk_100025A30, &unk_100019828);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v46 = v19;
    v26 = v25;
    v27 = swift_slowAlloc();
    v47._countAndFlagsBits = v27;
    *v26 = 136315138;
    v44 = v22;
    sub_100016820(v17, v14, &unk_100025A30, &unk_100019828);
    v28 = String.init<A>(describing:)();
    v45 = v3;
    v30 = v29;
    sub_10001759C(v17, &unk_100025A30, &unk_100019828);
    v31 = sub_100015768(v28, v30, &v47._countAndFlagsBits);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "Opening Settings to %s", v26, 0xCu);
    sub_100007170(v27);

    v19 = v46;

    (*(v4 + 8))(v44, v45);
  }

  else
  {

    sub_10001759C(v17, &unk_100025A30, &unk_100019828);
    (*(v4 + 8))(v22, v3);
  }

  v32 = [objc_opt_self() defaultWorkspace];
  if (v32)
  {
    v33 = v32;
    sub_100016820(v19, v11, &unk_100025A30, &unk_100019828);
    v34 = type metadata accessor for URL();
    v35 = *(v34 - 8);
    v37 = 0;
    if ((*(v35 + 48))(v11, 1, v34) != 1)
    {
      URL._bridgeToObjectiveC()(v36);
      v37 = v38;
      (*(v35 + 8))(v11, v34);
    }

    sub_1000070C0(&qword_100025A40, &qword_100019838);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000196B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v40;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v41;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    sub_100016570(inited);
    swift_setDeallocating();
    sub_1000070C0(&qword_100025A48, &qword_100019840);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 openSensitiveURL:v37 withOptions:isa];
  }

  return sub_10001759C(v19, &unk_100025A30, &unk_100019828);
}

uint64_t sub_10001745C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1000174B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1000174C4(a1, a2, a3, a4, SBYTE4(a4));
  }
}

void sub_1000174C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else if (!a5)
  {
  }
}

const char *sub_100017528(unsigned int a1)
{
  if (a1 > 5)
  {
    return "?";
  }

  else
  {
    return (&off_1000211D0)[a1];
  }
}

uint64_t sub_10001754C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }

    v6 = a3;
  }
}

uint64_t sub_10001759C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000070C0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000175FC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1000176D4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10000CA40(v3, (v0 + v2), v4);
}

uint64_t sub_100017764(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000177C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000177B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000177C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10001780C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000178D4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v3 = *(v0 + 16);
  sub_10000D408(v2);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}