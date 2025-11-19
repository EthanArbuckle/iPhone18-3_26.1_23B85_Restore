unint64_t sub_1000FB2EC()
{
  result = qword_10026D088;
  if (!qword_10026D088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026D088);
  }

  return result;
}

unsigned __int8 *sub_1000FB330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000FB848();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_100007A78();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  sub_10000841C();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_100007A78();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                sub_10000841C();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        sub_1000052B8();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              sub_10000841C();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        sub_1000052B8();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              sub_10000841C();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      sub_1000052B8();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            sub_10000841C();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
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

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_1000FB848()
{
  v0 = sub_100080528();
  v4 = sub_1000FB8B0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000FB8B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
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
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100011768(v9, 0);
  v12 = sub_1000FBA10(v15, (v11 + 4), v10, a1, a2, a3, a4);

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

unint64_t sub_1000FBA10(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1000FBC20(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1000FBC20(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000FBC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_10000752C(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_10000752C(v3);
    return v4 | 8;
  }
}

id sub_1000FBC7C(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 bag:a2];

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1000FBCDC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*HeapType.comparator<A>(type:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4))()
{
  if (a2)
  {
    v6 = sub_1000FC180;
  }

  else
  {
    v6 = sub_1000FC1AC;
  }

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a3;
  return v6;
}

uint64_t sub_1000FC180()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return dispatch thunk of static Comparable.< infix(_:_:)() & 1;
}

uint64_t sub_1000FC1AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return dispatch thunk of static Comparable.> infix(_:_:)() & 1;
}

Swift::Int sub_1000FC1D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  HeapType.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t sub_1000FC220()
{
  result = qword_10026D090[0];
  if (!qword_10026D090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10026D090);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HeapType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000FC350()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000FC3C0(uint64_t result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = __OFADD__(2 * result, 2);
  result = 2 * result + 2;
  if (v1)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FC3E4(void *a1, uint64_t (*a2)(_BYTE *, _BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a3;
  v31 = a6;
  v29 = *(a5 - 8);
  v10 = *(v29 + 64);
  v11 = __chkstk_darwin(a1);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v11);
  v16 = &v25[-v15];
  if (v17 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = sub_1000FC3C0(a4);
  v19 = *a1;
  result = ContiguousArray.count.getter();
  if (__OFSUB__(result, 1))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v28 = a1;
  v20 = a4;
  if (result - 1 > 2 * a4)
  {
    v20 = (2 * a4) | 1;
    ContiguousArray.subscript.getter();
    ContiguousArray.subscript.getter();
    v26 = a2(v16, v13);
    v27 = a2;
    v21 = *(v29 + 8);
    v21(v13, a5);
    v21(v16, a5);
    a2 = v27;
    if ((v26 & 1) == 0)
    {
      v20 = a4;
    }
  }

  result = ContiguousArray.count.getter();
  if (__OFSUB__(result, 1))
  {
    goto LABEL_15;
  }

  if (result - 1 >= v18)
  {
    ContiguousArray.subscript.getter();
    ContiguousArray.subscript.getter();
    v22 = a2(v16, v13);
    v23 = *(v29 + 8);
    v23(v13, a5);
    result = (v23)(v16, a5);
    if (v22)
    {
      v20 = v18;
    }
  }

  if (v20 != a4)
  {
    v32 = v20;
    v33 = a4;
    type metadata accessor for ContiguousArray();
    swift_getWitnessTable();
    v24 = v28;
    MutableCollection.swapAt(_:_:)();
    return sub_1000FC3E4(v24, a2, v30, v20, a5, v31);
  }

  return result;
}

uint64_t sub_1000FC6A8(uint64_t *a1, uint64_t (*a2)(char *, char *), uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v25 - v18;
  v20 = *v17;
  ContiguousArray.subscript.getter();
  v26 = a5;
  v27 = a2;
  v28 = a3;
  LOBYTE(a3) = a2(v19, a5);
  v21 = *(v12 + 8);
  v21(v19, a6);
  if (a3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v22 = *a1;
    sub_1000FD784(a4, *a1);
    result = (*(v12 + 24))(v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * a4, v26, a6);
    while (a4 >= 1)
    {
      v24 = *a1;
      ContiguousArray.subscript.getter();
      ContiguousArray.subscript.getter();
      LOBYTE(v24) = v27(v19, v16);
      v21(v16, a6);
      result = (v21)(v19, a6);
      if ((v24 & 1) == 0)
      {
        break;
      }

      v29 = (a4 - 1) >> 1;
      v30 = a4;
      swift_getWitnessTable();
      result = MutableCollection.swapAt(_:_:)();
      a4 = (a4 - 1) >> 1;
    }
  }

  return result;
}

uint64_t sub_1000FC958@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v44 = a3;
  v7 = *(a2 + 16);
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v36 - v13;
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = *(v3 + 8);
  v42 = (v3 + 8);
  v45 = v17;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    v18 = 1;
    v19 = v44;
    return sub_10000A7C0(v19, v18, 1, v7);
  }

  v41 = v16;
  ContiguousArray.subscript.getter();
  if (ContiguousArray.count.getter() == 1)
  {
    goto LABEL_6;
  }

  v40 = a1;
  ContiguousArray.subscript.getter();
  v20 = ContiguousArray.count.getter();
  v21 = __OFSUB__(v20, 1);
  result = v20 - 1;
  if (v21)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  ContiguousArray.subscript.getter();
  v39 = *(a2 + 24);
  v23 = *(v39 + 8);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v43 + 8);
  v25(v11, v7);
  v25(v14, v7);
  v26 = v40;
  if (v24)
  {
LABEL_6:
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.removeLast()();
    v27 = v43;
    (*(v43 + 8))(v14, v7);
    v28 = v41;
LABEL_7:
    v19 = v44;
    (*(v27 + 32))(v44, v28, v7);
    v18 = 0;
    return sub_10000A7C0(v19, v18, 1, v7);
  }

  v29 = *(v4 + 24);
  v38 = *(v4 + 16);
  ContiguousArray.subscript.getter();
  v30 = ContiguousArray.count.getter();
  v21 = __OFSUB__(v30, 1);
  result = v30 - 1;
  if (v21)
  {
    goto LABEL_19;
  }

  ContiguousArray.subscript.getter();
  v31 = v38(v14, v11);
  v25(v11, v7);
  v25(v14, v7);
  v32 = ContiguousArray.count.getter();
  v21 = __OFSUB__(v32, 1);
  result = v32 - 1;
  v33 = v21;
  if (v31)
  {
    v36 = v29;
    v37 = v25;
    v28 = v41;
    if ((v33 & 1) == 0)
    {
      ContiguousArray.subscript.getter();
      v34 = v42;
      ContiguousArray._makeMutableAndUnique()();
      v35 = *v34;
      sub_1000FD784(v26, *v34);
      v27 = v43;
      (*(v43 + 40))(v35 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v26, v14, v7);
      swift_getWitnessTable();
      swift_getWitnessTable();
      RangeReplaceableCollection<>.removeLast()();
      v37(v14, v7);
      sub_1000FC3E4(v34, v38, v36, v26, v7, v39);
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  v28 = v41;
  if ((v33 & 1) == 0)
  {
    ContiguousArray.subscript.getter();
    sub_1000FC6A8(v42, v38, v29, v26, v14, v7);
    v25(v14, v7);
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.removeLast()();
    v25(v14, v7);
    v27 = v43;
    goto LABEL_7;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000FD3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(describing:)();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1000FD480(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1000FD4C4(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = (2 * result) | 1;
  v16 = sub_1000FC3C0(result);
  if (v15 >= ContiguousArray.count.getter())
  {
    goto LABEL_7;
  }

  result = sub_1000FD4C4(v15, a2 & 1, a3, a4, a5, a6, a7, a8);
  v18 = result + v17;
  if (__OFADD__(result, v17))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18 + a6;
  if (!__OFADD__(v18, a6))
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v19 = 0;
LABEL_8:
  if (v16 >= ContiguousArray.count.getter())
  {
    return v19;
  }

  result = sub_1000FD4C4(v16, a2 & 1, a3, a4, a5, a6, a7, a8);
  if (!__OFADD__(result, v20))
  {
    if (__OFADD__(result + v20, a6))
    {
      __break(1u);
    }

    return v19;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000FD608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Heap();

  return sub_1000FC94C(v5, a2);
}

uint64_t sub_1000FD658(char a1)
{

  return a1 & 1;
}

uint64_t sub_1000FD6AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = sub_1000FD658(v3);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a1 = v7 & 1;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1000FD72C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  return sub_1000FD64C();
}

unint64_t sub_1000FD784(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FD7A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000FD7DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000FD81C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1000FD87C()
{
  result = [objc_allocWithZone(NSISO8601DateFormatter) init];
  qword_1002877E0 = result;
  return result;
}

uint64_t sub_1000FD8B0()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC14amsengagementd12JetpackIndex_scriptURL;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC14amsengagementd12JetpackIndex_properties);

  return v0;
}

uint64_t sub_1000FD928()
{
  sub_1000FD8B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JetpackIndex()
{
  result = qword_10026D1C0;
  if (!qword_10026D1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FD9D4()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000FDA8C()
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = sub_100002CC4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = sub_100002CC4(v10);
  v40 = v12;
  v41 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for JetpackOutputWriter();
  v18 = *(v17 + 28);
  v42 = v0;
  if (*(v0 + v18) == 1)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      v20 = 1;
      goto LABEL_7;
    }

    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

LABEL_7:
  v21 = type metadata accessor for PropertyListEncoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v45[0] = v20;
  sub_1000FE220();
  v24 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    if (qword_1002686C8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v29 = *(type metadata accessor for LogInterpolation() - 8);
    v30 = *(v29 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v46 = v17;
    v32 = sub_100017E64(v45);
    sub_1000FE274(v42, v32);
    v33 = AMSLogKey();
    if (v33)
    {
      v34 = v33;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v45);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v35 = v43;
    v36 = v44;
    v46 = v44;
    v37 = sub_100017E64(v45);
    (*(*(v36 - 8) + 16))(v37, v35, v36);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v45);
    v38 = static os_log_type_t.error.getter();
    sub_1000036B0(v38);

    return swift_willThrow();
  }

  else
  {
    v26 = v24;
    v27 = v25;

    v28 = *(v17 + 20);
    strcpy(v45, "metadata.plist");
    HIBYTE(v45[1]) = -18;
    (*(v5 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
    sub_10001ECE0();
    URL.appending<A>(path:directoryHint:)();
    (*(v5 + 8))(v9, v2);
    Data.write(to:options:)();
    (*(v40 + 8))(v16, v41);
    return sub_1000253FC(v26, v27);
  }
}

uint64_t sub_1000FDF78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000FDFF0(void *a1)
{
  v2 = sub_10007B9A4(&qword_10026D310, &qword_1001EC718);
  v3 = sub_100002CC4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_1000337F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v9, v2);
}

uint64_t sub_1000FE114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000FDF78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000FE140(uint64_t a1)
{
  v2 = sub_1000337F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FE17C(uint64_t a1)
{
  v2 = sub_1000337F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for JetpackOutputWriter()
{
  result = qword_10026D2B8;
  if (!qword_10026D2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000FE220()
{
  result = qword_10026D258;
  if (!qword_10026D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D258);
  }

  return result;
}

uint64_t sub_1000FE274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetpackOutputWriter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000FE300()
{
  sub_1000FE394();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000FE394()
{
  if (!qword_10026D2C8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10026D2C8);
    }
  }
}

unint64_t sub_1000FE408()
{
  result = qword_10026D318;
  if (!qword_10026D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D318);
  }

  return result;
}

unint64_t sub_1000FE460()
{
  result = qword_10026D320;
  if (!qword_10026D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D320);
  }

  return result;
}

unint64_t sub_1000FE4B8()
{
  result = qword_10026D328;
  if (!qword_10026D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D328);
  }

  return result;
}

uint64_t sub_1000FE50C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007B9A4(&qword_10026D330, &unk_1001EC840);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v37 - v9;
  v11 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
  v12 = sub_100002DDC(v11);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v37 - v19;
  __chkstk_darwin(v18);
  v22 = v37 - v21;
  sub_1000FE964(*(a1 + 1), v10);
  if (sub_100009F34(v10, 1, v11) == 1)
  {
    sub_10000A00C(v10, &qword_10026D330, &unk_1001EC840);
    if (qword_1002685F8 != -1)
    {
      swift_once();
    }

    v23 = qword_10026A070;
    sub_10007B9A4(&qword_10026D340, &qword_1001EC850);
    v24 = Promise.__allocating_init()();
    sub_10007B9A4(&qword_10026D348, qword_1001EC858);
    v25 = sub_10009D750();
    v26 = [v23 URLForKey:v25];

    v27 = [v26 valuePromise];
    Promise<A>.init(_:)();
    v28 = swift_allocObject();
    v29 = *(a1 + 16);
    *(v28 + 16) = *a1;
    *(v28 + 32) = v29;
    v30 = *(a1 + 48);
    *(v28 + 48) = *(a1 + 32);
    *(v28 + 64) = v30;
    *(v28 + 80) = v23;
    *(v28 + 88) = v24;
    v31 = sub_100017A08();
    (*(v3 + 104))(v6, enum case for DispatchQoS.QoSClass.userInitiated(_:), v2);
    swift_retain_n();
    sub_10000F4A4(a1, v37);
    swift_unknownObjectRetain();
    v32 = static OS_dispatch_queue.global(qos:)();
    (*(v3 + 8))(v6, v2);
    v37[3] = v31;
    v37[4] = &protocol witness table for OS_dispatch_queue;
    v37[0] = v32;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(v37);
  }

  else
  {
    sub_1000FF4B8(v10, v22);
    sub_10007B9A4(&qword_10026D340, &qword_1001EC850);
    sub_1000FF528(v22, v20);
    v33 = *(v11 + 48);
    *v17 = *v20;
    v34 = type metadata accessor for URL();
    sub_100002DDC(v34);
    (*(v35 + 32))(&v17[v33], &v20[v33]);
    v24 = Promise.__allocating_init(value:)();
    sub_10000A00C(v22, &qword_10026D338, &qword_1001EDA20);
  }

  return v24;
}

uint64_t sub_1000FE964@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  v11 = type metadata accessor for URL();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  type metadata accessor for Defaults();
  if (sub_1000571D4(11))
  {
    v40 = v11;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = 0xE900000000000073;
      v20 = 0x636974796C616E61;
      switch(a1)
      {
        case 1:
          v19 = 0xE800000000000000;
          v20 = 0x6C616E7265746E69;
          break;
        case 2:
          v19 = 0xE800000000000000;
          v20 = 0x7379656E72756F6ALL;
          break;
        case 3:
          v20 = 0x6E656D6D6F636572;
          v19 = 0xEF736E6F69746164;
          break;
        default:
          break;
      }

      *&v42 = v20;
      *(&v42 + 1) = v19;
      v26 = [v18 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v26)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
      }

      v44 = v42;
      v45 = v43;
      if (*(&v43 + 1))
      {
        if (swift_dynamicCast())
        {
          URL.init(string:)();

          swift_unknownObjectRelease();
          v27 = v40;
          if (sub_100009F34(v10, 1, v40) == 1)
          {
            v28 = &unk_10026FEE0;
            v29 = &unk_1001E67C0;
            v30 = v10;
LABEL_36:
            sub_10000A00C(v30, v28, v29);
LABEL_38:
            v36 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
            v34 = a2;
            v37 = 1;
            return sub_10000A7C0(v34, v37, 1, v36);
          }

          v31 = *(v41 + 32);
          v31(v17, v10, v27);
          v32 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
          v33 = *(v32 + 48);
          *a2 = 1;
          v31(&a2[v33], v17, v27);
          v34 = a2;
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      goto LABEL_35;
    }

    swift_unknownObjectRelease();
    v11 = v40;
  }

  if (sub_1000571D4(12))
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = 0xE900000000000073;
      v23 = 0x636974796C616E61;
      switch(a1)
      {
        case 1:
          v22 = 0xE800000000000000;
          v23 = 0x6C616E7265746E69;
          break;
        case 2:
          v22 = 0xE800000000000000;
          v23 = 0x7379656E72756F6ALL;
          break;
        case 3:
          v23 = 0x6E656D6D6F636572;
          v22 = 0xEF736E6F69746164;
          break;
        default:
          break;
      }

      *&v42 = v23;
      *(&v42 + 1) = v22;
      v35 = [v21 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v35)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
      }

      v44 = v42;
      v45 = v43;
      if (*(&v43 + 1))
      {
        if (swift_dynamicCast())
        {
          URL.init(string:)();

          swift_unknownObjectRelease();
          if (sub_100009F34(v8, 1, v11) == 1)
          {
            v28 = &unk_10026FEE0;
            v29 = &unk_1001E67C0;
            v30 = v8;
            goto LABEL_36;
          }

          v38 = *(v41 + 32);
          v38(v15, v8, v11);
          v32 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
          v39 = *(v32 + 48);
          *a2 = 0;
          v38(&a2[v39], v15, v11);
          v34 = a2;
LABEL_41:
          v37 = 0;
          v36 = v32;
          return sub_10000A7C0(v34, v37, 1, v36);
        }

LABEL_37:
        swift_unknownObjectRelease();
        goto LABEL_38;
      }

LABEL_35:
      swift_unknownObjectRelease();
      v28 = &qword_10026D350;
      v29 = &qword_1001E6050;
      v30 = &v44;
      goto LABEL_36;
    }

    swift_unknownObjectRelease();
  }

  v24 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);

  return sub_10000A7C0(a2, 1, 1, v24);
}

uint64_t sub_1000FEFF8(uint64_t *a1)
{
  v2 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = *(v3 + 56);
  *v6 = 1;
  (*(v8 + 32))(&v6[v13], v11, v7);
  Promise.resolve(_:)();
  return sub_10000A00C(v6, &qword_10026D338, &qword_1001EDA20);
}

uint64_t sub_1000FF164(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = *(type metadata accessor for LogInterpolation() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v23 = &type metadata for JetPackResourceResolver;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v22);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001001F7F70;
  v13._countAndFlagsBits = 0xD000000000000047;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  v14 = *(a2 + 1);
  v23 = &unk_1002471C0;
  LOBYTE(v22[0]) = v14;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(v22, &qword_10026D350, &qword_1001E6050);
  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  v16 = static os_log_type_t.error.getter();
  sub_1000036B0(v16);

  sub_10007B9A4(&qword_10026D348, qword_1001EC858);
  v17 = sub_10009D6AC();
  v18 = [a3 URLForKey:{v17, a4}];

  v19 = [v18 valuePromise];
  Promise<A>.init(_:)();
  v23 = type metadata accessor for SyncTaskScheduler();
  v24 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v22);
  SyncTaskScheduler.init()();
  sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
  Promise.map<A>(on:_:)();

  sub_100002C00(v22);
  sub_1000EA43C();
}

uint64_t sub_1000FF4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FF528(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FF598@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(sub_10007B9A4(&qword_10026D338, &qword_1001EDA20) + 48);
  *a2 = 0;
  return static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_1000FF664()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14amsengagementd9JSAccount_account) ams_accountFlags];
  if (v1)
  {
    type metadata accessor for AMSAccountFlag(0);
    sub_1000AF20C();
    sub_1000FF9EC();
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v1 = sub_1000C5120(v2);
  }

  return v1;
}

id sub_1000FF780(void *a1)
{
  if ([*(v1 + OBJC_IVAR____TtC14amsengagementd9JSAccount_account) ams_accountFlagValueForAccountFlag:*a1])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_100002C5C(v7);
    return 0;
  }

  sub_1000AF20C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = [v4 BOOLValue];

  return v2;
}

Class sub_1000FF874(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    sub_1000AF20C();
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

uint64_t sub_1000FF8FC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14amsengagementd9JSAccount_account) ams_privacyAcknowledgement];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1000AF20C();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_1000FF9B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAccount();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000FF9EC()
{
  result = qword_100269058;
  if (!qword_100269058)
  {
    type metadata accessor for AMSAccountFlag(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269058);
  }

  return result;
}

id sub_1000FFA84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAccountStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000FFF9C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14amsengagementd5JSAMS_props);
  *(v1 + OBJC_IVAR____TtC14amsengagementd5JSAMS_props) = a1;
}

id sub_100100010(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

id sub_100100190()
{
  v1 = type metadata accessor for LogInterpolation.StringInterpolation();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_100002DEC();
  if (qword_1002686C0 != -1)
  {
    sub_1000031E0();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = *(type metadata accessor for LogInterpolation() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v6 = type metadata accessor for JSAMS();
  v18 = v6;
  v17[0] = v0;
  v7 = v0;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v17);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x20636F6C6C616544;
  v10._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  v11 = OBJC_IVAR____TtC14amsengagementd5JSAMS_uuid;
  v18 = sub_10007B9A4(&qword_10026D4C8, &qword_1001EC8C0);
  v12 = sub_100017E64(v17);
  sub_100037A94(v7 + v11, v12);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v17, &qword_10026D350, &qword_1001E6050);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  LogInterpolation.init(stringInterpolation:)();
  v14 = static os_log_type_t.debug.getter();
  sub_1000036B0(v14);

  v16.receiver = v7;
  v16.super_class = v6;
  return objc_msgSendSuper2(&v16, "dealloc");
}

void sub_10010064C()
{
  sub_100100724();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100100724()
{
  if (!qword_10026D4C0)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for AppReference();
    if (!v1)
    {
      atomic_store(v0, &qword_10026D4C0);
    }
  }
}

uint64_t sub_1001007C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd5JSApp_name);
  v2 = *(v0 + OBJC_IVAR____TtC14amsengagementd5JSApp_name + 8);

  return v1;
}

id sub_100100844()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSApp();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_10010088C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244ED8, v2);

  return v3 != 0;
}

BOOL sub_1001008FC@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10010088C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100100930@<X0>(void *a1@<X8>)
{
  result = sub_1001008D4();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

id sub_1001009A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSRuntime();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100100A50()
{
  sub_100023724();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100100AF4()
{
  if (qword_1002686C0 != -1)
  {
    sub_1000031E0();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_10000A610();
  v1 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v1);
  v3 = *(v2 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v10[3] = type metadata accessor for JSAppEngine();
  v10[0] = v0;
  v4 = (*(v0 + 24) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v10);
  LogInterpolation.init(stringLiteral:)();
  v7 = static os_log_type_t.info.getter();
  sub_1000036B0(v7);

  v8 = *(v0 + 16);

  return v0;
}

uint64_t sub_100100C88()
{
  sub_100100AF4();
  sub_1000074E4();

  return swift_deallocClassInstance();
}

uint64_t sub_100100CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[31] = a4;
  v5[32] = a5;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v7 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_100100DA4, 0, 0);
}

uint64_t sub_100100DA4()
{
  v1 = *(v0 + 240) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config;
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E61;
  switch(*(v1 + 1))
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6C616E7265746E69;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v2 = 0xEF736E6F69746164;
      v3 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v4 = *(v0 + 232);
  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  sub_100002C4C((v0 + 16), (v0 + 48));

  swift_isUniquelyReferenced_nonNull_native();
  sub_10000DFC4();
  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      v5 = 0xEF636E7953746867;
      v6 = 0x696577746867696CLL;
    }

    else
    {
      v5 = 0xE400000000000000;
      v6 = 1668184435;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x65756575716E65;
  }

  *(v0 + 104) = &type metadata for String;
  *(v0 + 80) = v6;
  *(v0 + 88) = v5;
  sub_100002C4C((v0 + 80), (v0 + 112));
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000DFC4();
  v7 = objc_opt_self();
  *(v0 + 280) = v7;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 208) = 0;
  v9 = [v7 dataWithJSONObject:isa options:0 error:v0 + 208];

  v10 = *(v0 + 208);
  if (v9)
  {
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(v0 + 288) = v11;
    *(v0 + 296) = v13;
    v14 = swift_task_alloc();
    *(v0 + 304) = v14;
    *v14 = v0;
    v14[1] = sub_100101114;
    v15 = *(v0 + 248);

    return sub_1000C12E8(v11, v13);
  }

  else
  {
    v17 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v19 = *(v0 + 264);
    v18 = *(v0 + 272);

    sub_100002D8C();

    return v20();
  }
}

uint64_t sub_100101114()
{
  sub_100004768();
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(v2 + 312) = v4;
  *(v2 + 320) = v0;

  if (v0)
  {
    v5 = sub_1001015D0;
  }

  else
  {
    v5 = sub_100101250;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100101250()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 216) = 0;
  v4 = [v2 dataWithJSONObject:isa options:2 error:v0 + 216];

  v5 = *(v0 + 216);
  if (v4)
  {
    v6 = *(v0 + 272);
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    static String.Encoding.utf8.getter();
    v37 = v9;
    v38 = v7;
    v36 = String.init(data:encoding:)();
    v11 = v10;
    if (qword_1002686C0 != -1)
    {
      sub_1000031E0();
    }

    v12 = *(v0 + 256);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_10000A610();
    v13 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v13);
    v15 = *(v14 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    *(v0 + 168) = type metadata accessor for JSAppEngine();
    *(v0 + 144) = v12;

    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v21 = *(v0 + 264);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 144));
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._object = 0x80000001001F9B80;
    v22._countAndFlagsBits = 0xD000000000000013;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    if (v11)
    {
      v23 = &type metadata for String;
      v24 = v36;
    }

    else
    {
      v24 = 0;
      v23 = 0;
      *(v0 + 192) = 0;
    }

    v26 = *(v0 + 288);
    v25 = *(v0 + 296);
    v27 = *(v0 + 264);
    *(v0 + 176) = v24;
    *(v0 + 184) = v11;
    *(v0 + 200) = v23;
    LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
    sub_10000A064(v0 + 176, &qword_10026D350, &qword_1001E6050);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    LogInterpolation.init(stringInterpolation:)();
    v29 = static os_log_type_t.default.getter();
    sub_1000036B0(v29);
    v30 = sub_100003B80();
    sub_1000253FC(v30, v31);

    sub_1000253FC(v38, v37);
  }

  else
  {
    v18 = v5;
    v20 = *(v0 + 288);
    v19 = *(v0 + 296);
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000253FC(v20, v19);
  }

  v33 = *(v0 + 264);
  v32 = *(v0 + 272);
  **(v0 + 224) = *(v0 + 312);

  sub_100002D8C();

  return v34();
}

uint64_t sub_1001015D0()
{
  sub_1000253FC(v0[36], v0[37]);
  v1 = v0[40];
  v3 = v0[33];
  v2 = v0[34];

  sub_100002D8C();

  return v4();
}

uint64_t sub_100101674(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_10007B9A4(&qword_10026D668, &qword_1001EC9C0);
  v8 = Promise.__allocating_init()();
  v9 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v8;

  sub_1001BE5A8(0, 0, v7, &unk_1001EC9D0, v10);

  return v8;
}

uint64_t sub_1001017A8(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_10026D670, &qword_1001EC9D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for JSError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = a1;
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  if (swift_dynamicCast())
  {
    sub_10000A7C0(v5, 0, 1, v6);
    (*(v7 + 32))(v10, v5, v6);
    v28 = _convertErrorToNSError(_:)();
    sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E6580;
    *&v26 = 0x6E6D756C6F63;
    *(&v26 + 1) = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    v12 = JSError.column.getter();
    if (v13)
    {
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = 0x6E776F6E6B6E75;
      *(inited + 80) = 0xE700000000000000;
    }

    else
    {
      v27 = &type metadata for Int;
      *&v26 = v12;
      sub_100002C4C(&v26, (inited + 72));
    }

    *&v26 = 1701734764;
    *(&v26 + 1) = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    v15 = JSError.line.getter();
    if (v16)
    {
      *(inited + 168) = &type metadata for String;
      *(inited + 144) = 0x6E776F6E6B6E75;
      *(inited + 152) = 0xE700000000000000;
    }

    else
    {
      v27 = &type metadata for Int;
      *&v26 = v15;
      sub_100002C4C(&v26, (inited + 144));
    }

    *&v26 = 0x6567617373656DLL;
    *(&v26 + 1) = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v17 = JSError.message.getter();
    *(inited + 240) = &type metadata for String;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *&v26 = 0x5255656372756F73;
    *(&v26 + 1) = 0xE90000000000004CLL;
    AnyHashable.init<A>(_:)();
    v19 = JSError.sourceURL.getter();
    *(inited + 312) = &type metadata for String;
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0x6E776F6E6B6E75;
    }

    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0xE700000000000000;
    }

    *(inited + 288) = v21;
    *(inited + 296) = v22;
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v24 = v28;
    [v28 ams_errorByAddingUserInfo:isa];

    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    sub_10000A7C0(v5, 1, 1, v6);
    sub_10000A064(v5, &qword_10026D670, &qword_1001EC9D8);
    swift_willThrow();
    return swift_errorRetain();
  }
}

uint64_t sub_100101B90(uint64_t a1, void (*a2)(void))
{
  a2();
  sub_1000EAA68();
}

uint64_t sub_100101BE4()
{
  if (qword_1002686C0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v0 = *(type metadata accessor for LogInterpolation() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  type metadata accessor for JSAppEngine();
  v3 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v4 = static os_log_type_t.fault.getter();
  sub_1000036B0(v4);

  return 1;
}

uint64_t sub_100101D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D638, &qword_1001EC980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100101DFC(uint64_t a1, void (*a2)(void *, void))
{
  v4[0] = a1;
  v4[1] = a1;

  a2(v4, 0);

  return Promise.resolve(_:)();
}

uint64_t sub_100101E64(uint64_t a1, void (*a2)(void *, void))
{
  v4[0] = a1;
  v4[1] = a1;

  a2(v4, 0);

  return Promise.resolve(_:)();
}

uint64_t sub_100101ECC(uint64_t a1, void (*a2)(char *, void))
{
  v4 = sub_10007B9A4(&qword_10026D688, &qword_1001EC9E8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for JSResponse();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  sub_10000A7C0(v7, 0, 1, v8);
  a2(v7, 0);
  sub_10000A064(v7, &qword_10026D688, &qword_1001EC9E8);
  return Promise.resolve(_:)();
}

uint64_t sub_100101FE8(uint64_t a1, void (*a2)(uint64_t *, uint64_t))
{
  v3 = 0;
  a2(&v3, a1);
  return Promise.reject(_:)();
}

uint64_t sub_100102044(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v4 = sub_10007B9A4(&qword_10026D688, &qword_1001EC9E8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for JSResponse();
  sub_10000A7C0(v7, 1, 1, v8);
  a2(v7, a1);
  sub_10000A064(v7, &qword_10026D688, &qword_1001EC9E8);
  return Promise.reject(_:)();
}

uint64_t sub_100102128(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_10010221C;

  return v10(v6 + 16);
}

uint64_t sub_10010221C()
{
  sub_100004768();
  v2 = *(*v1 + 32);
  v3 = *v1;
  sub_100002D20();
  *v4 = v3;
  *(v5 + 40) = v0;

  if (v0)
  {
    v6 = sub_100102388;
  }

  else
  {
    v6 = sub_100102324;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100102324()
{
  sub_100004768();
  v1 = *(v0 + 24);
  Promise.resolve(_:)();
  v2 = *(v0 + 16);

  sub_100002D8C();

  return v3();
}

uint64_t sub_100102388()
{
  sub_100004768();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  Promise.reject(_:)();

  sub_100002D8C();

  return v3();
}

uint64_t sub_1001023F8(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1001023F0(a1, *(v1 + 16));
}

uint64_t sub_100102404(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100101FE8(a1, *(v1 + 16));
}

uint64_t sub_10010242C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = *a4;
  v13[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v13[4] = &protocol witness table for OS_dispatch_queue;
  v13[0] = a3;
  v8 = a3;
  v9 = Promise.__allocating_init()();
  sub_100007A3C();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v9;
  sub_100007A3C();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v9;
  swift_retain_n();
  swift_retain_n();
  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v13);
  return v9;
}

uint64_t sub_100102570()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000C08D0;
  v7 = sub_100007FD0();

  return sub_100100CB4(v7, v8, v9, v10, v4);
}

uint64_t sub_100102620()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000C08D0;
  v8 = sub_100007FD0();

  return v9(v8);
}

uint64_t sub_1001026EC(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100102424(a1, *(v1 + 16));
}

unint64_t sub_1001026F8()
{
  result = qword_10026D680;
  if (!qword_10026D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D680);
  }

  return result;
}

uint64_t sub_10010274C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100101ECC(a1, *(v1 + 16));
}

uint64_t sub_100102758(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100102044(a1, *(v1 + 16));
}

_BYTE *storeEnumTagSinglePayload for JSAppEngineError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100102820()
{
  result = qword_10026D690;
  if (!qword_10026D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D690);
  }

  return result;
}

uint64_t sub_100102878(void *a1, void *a2, void *a3, void *a4)
{
  v7 = (*&v4[OBJC_IVAR____TtC14amsengagementd9JSBacklog_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = v7[1];
  }

  else
  {
    v9 = 0;
  }

  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v11 = *(type metadata accessor for LogInterpolation() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v25[3] = type metadata accessor for JSBacklog();
  v25[0] = v4;
  v4;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v25);
  LogInterpolation.init(stringLiteral:)();
  v14 = static os_log_type_t.default.getter();
  sub_1000036B0(v14);

  sub_100004AA0();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v9;
  v16[4] = v8;
  v16[5] = a1;
  v16[6] = a4;
  v16[7] = a3;
  v16[8] = a2;

  v17 = a1;
  v18 = a4;
  v19 = a3;
  v20 = a2;
  v21 = sub_10011F39C("lookup(_:_:_:_:)", 0x10uLL, 2);

  return v21;
}

uint64_t sub_100102ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v96 = a6;
  v95 = a5;
  v94 = a3;
  v91 = a2;
  v12 = type metadata accessor for LogInterpolation.StringInterpolation();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for JSCallable();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v92 = v17;
  v18 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v89 = v14;
    type metadata accessor for AppDatabase();
    v21 = sub_10001D804(*(*&v20[OBJC_IVAR____TtC14amsengagementd9JSBacklog_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1));
    v93 = v10;
    v90 = v15;
    v88 = v18;
    if (v10)
    {
LABEL_13:
      v91 = 0;
      if (qword_1002686E8 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v47 = *(type metadata accessor for LogInterpolation() - 8);
      v48 = *(v47 + 72);
      v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v98 = type metadata accessor for JSBacklog();
      v97[0] = v20;
      v50 = v20;
      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(v97);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v51._countAndFlagsBits = 0xD00000000000002DLL;
      v51._object = 0x80000001001F9D20;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v51);
      v52 = v93;
      swift_getErrorValue();
      v53 = v100;
      v54 = v101;
      v98 = v101;
      v55 = sub_100017E64(v97);
      (*(*(v54 - 8) + 16))(v55, v53, v54);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009F5C(v97, &qword_10026D350, &qword_1001E6050);
      v56._countAndFlagsBits = 41;
      v56._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v56);
      LogInterpolation.init(stringInterpolation:)();
      v57 = static os_log_type_t.error.getter();
      sub_1000036B0(v57);

      v96 = v50;
      sub_10011F068("lookup(_:_:_:_:)", 16, 2, v97);
      if (v98)
      {
        v95 = v99;
        sub_100003CA8(v97, v98);
        v58 = v90;
        v59 = v52;
        v60 = v88;
        v61 = v89;
        (*(v90 + 16))(v88, v94, v89);
        v62 = (*(v58 + 80) + 16) & ~*(v58 + 80);
        v63 = (v92 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
        v64 = swift_allocObject();
        (*(v58 + 32))(v64 + v62, v60, v61);
        *(v64 + v63) = v59;
        swift_errorRetain();
        dispatch thunk of TaskScheduler.schedule(task:)();

        return sub_100002C00(v97);
      }

      else
      {

        return sub_100009F5C(v97, &qword_10026D6C8, &unk_1001ECB60);
      }
    }

    v22 = v21;
    v23 = sub_100137414(a7);
    if (v23 && (v24 = sub_10005CC34(v23), , v24))
    {
      v25 = v93;
      sub_100103774(v24, v102);
      v93 = v25;
      if (v25)
      {

        goto LABEL_13;
      }

      v87 = v22;
      v34 = v102[0];
      v35 = v102[1];
      v36 = v102[2];
      v37 = v102[3];
      v38 = v103;
    }

    else
    {
      v87 = v22;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 255;
    }

    v83 = v37;
    v85 = v35;
    v84 = v36;
    v82 = v38;
    v86 = v34;
    v104[0] = v34;
    v104[1] = v35;
    v104[2] = v36;
    v104[3] = v37;
    v105 = v38;
    v39 = swift_allocObject();
    *(v39 + 16) = _swiftEmptyArrayStorage;
    v79[1] = v39 + 16;
    v81 = JSValue.int.getter();
    v80 = v40;
    v41 = swift_allocObject();
    v41[2] = v39;
    v41[3] = a9;
    v41[4] = a10;
    v41[5] = v20;
    v42 = v96;
    v41[6] = v95;
    v41[7] = v42;
    sub_1000A0D24();
    v43 = a9;
    v44 = a10;
    v45 = v20;

    v46 = v93;
    sub_1000A66D8(v104, v81, v80 & 1, sub_100104714, v41);
    if (v46)
    {

      sub_10010473C(v86, v85, v84, v83, v82);

      v93 = v46;
      goto LABEL_13;
    }

    swift_beginAccess();
    v65 = *(v39 + 16);
    if (*(v65 + 16))
    {
      sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1001E61B0;
      *(v66 + 56) = sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
      *(v66 + 32) = v65;
    }

    v67 = v45;
    v68 = v90;
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v69 = *(type metadata accessor for LogInterpolation() - 8);
    v70 = *(v69 + 72);
    v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v98 = type metadata accessor for JSBacklog();
    v97[0] = v67;
    v72 = v67;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v97);
    LogInterpolation.init(stringLiteral:)();
    v73 = static os_log_type_t.default.getter();
    sub_1000036B0(v73);

    sub_10011F068("lookup(_:_:_:_:)", 16, 2, v97);
    if (v98)
    {
      v96 = v99;
      v95 = sub_100003CA8(v97, v98);
      v74 = v88;
      v75 = v89;
      (*(v68 + 16))(v88, v91, v89);
      v76 = v68;
      v77 = (*(v68 + 80) + 16) & ~*(v68 + 80);
      v78 = swift_allocObject();
      (*(v76 + 32))(v78 + v77, v74, v75);
      dispatch thunk of TaskScheduler.schedule(task:)();

      sub_10010473C(v86, v85, v84, v83, v82);
      sub_100002C00(v97);
    }

    else
    {

      sub_10010473C(v86, v85, v84, v83, v82);
      sub_100009F5C(v97, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v26 = *(type metadata accessor for LogInterpolation() - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    type metadata accessor for JSBacklog();
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v29 = static os_log_type_t.error.getter();
    sub_1000036B0(v29);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v31 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
    v32 = sub_100051018();

    *(v30 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v30 + 32) = v32;
    sub_10005C768(v30);
  }
}

void sub_100103774(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100052D94(a1, &v114);
  if (!v115)
  {

    sub_100009F5C(&v114, &qword_10026D350, &qword_1001E6050);
LABEL_20:
    sub_1001048B4();
    sub_100007544();
    *v27 = 0;
    *(v27 + 8) = 0;
    v28 = 2;
    goto LABEL_21;
  }

  if ((sub_100006D00() & 1) == 0)
  {

    goto LABEL_20;
  }

  v6 = v103;
  v5 = v110;
  v7 = v103 == 6581857 && v110 == 0xE300000000000000;
  if (!v7 && (sub_100003200() & 1) == 0)
  {
    v29 = v103 == 7368801 && v110 == 0xE300000000000000;
    if (v29 || (sub_100003200() & 1) != 0)
    {

      sub_100052D94(a1, &v114);

      if (v115)
      {
        if (sub_100006D00())
        {
          v30 = 0;
          v31 = 0;
          v6 = v103;
          v5 = v110;
          v32 = 1;
          goto LABEL_32;
        }
      }

      else
      {
        sub_100009F5C(&v114, &qword_10026D350, &qword_1001E6050);
      }

      sub_1001048B4();
      sub_100007544();
      v35 = xmmword_1001ECB30;
LABEL_89:
      *v34 = v35;
      *(v34 + 16) = 0;
      goto LABEL_90;
    }

    v36 = v103 == 0x5472657461657267 && v110 == 0xEB000000006E6168;
    if (v36 || (sub_100003200() & 1) != 0)
    {

      sub_1000052F8(v37, v38, v39, v40, v41, v42, v43, v44, v103, v110, v114);
      if (v115)
      {
        v45 = sub_100006D00();
        if (v45)
        {
          sub_100007A90(v45, v46, v47, v48, v49, v50, v51, v52, v104, v111, v114);

          if (v115)
          {
            if (sub_100006D00())
            {
              v31 = 0;
              v30 = v105;
              v32 = 2;
              goto LABEL_32;
            }

            goto LABEL_56;
          }

          goto LABEL_55;
        }

        goto LABEL_69;
      }

      goto LABEL_68;
    }

    v53 = v103 == 0x6E6168547373656CLL && v110 == 0xE800000000000000;
    if (v53 || (sub_100003200() & 1) != 0)
    {

      sub_1000052F8(v54, v55, v56, v57, v58, v59, v60, v61, v103, v110, v114);
      if (v115)
      {
        v62 = sub_100006D00();
        if (v62)
        {
          sub_100007A90(v62, v63, v64, v65, v66, v67, v68, v69, v106, v112, v114);

          if (v115)
          {
            if (sub_100006D00())
            {
              v31 = 0;
              v30 = v107;
              v32 = 3;
              goto LABEL_32;
            }

LABEL_56:

            goto LABEL_57;
          }

LABEL_55:

          sub_100009F5C(&v114, &qword_10026D350, &qword_1001E6050);
LABEL_57:
          sub_1001048B4();
          sub_100007544();
          v35 = xmmword_1001ECB20;
          goto LABEL_89;
        }

        goto LABEL_69;
      }

      goto LABEL_68;
    }

    v70 = v103 == 1701538156 && v110 == 0xE400000000000000;
    if (v70 || (sub_100003200() & 1) != 0)
    {

      sub_1000052F8(v71, v72, v73, v74, v75, v76, v77, v78, v103, v110, v114);
      if (v115)
      {
        if (sub_100006D00())
        {
          v6 = v108;
          v5 = v113;
          sub_100052D94(a1, &v114);

          if (v115)
          {
            if (sub_100006D00())
            {
              v30 = v108;
              v31 = v113;
              v32 = 4;
              goto LABEL_32;
            }
          }

          else
          {

            sub_100009F5C(&v114, &qword_10026D350, &qword_1001E6050);
          }

          sub_1001048B4();
          sub_100007544();
          v35 = xmmword_1001ECB00;
          goto LABEL_89;
        }

LABEL_69:

        goto LABEL_70;
      }

LABEL_68:

      sub_100009F5C(&v114, &qword_10026D350, &qword_1001E6050);
LABEL_70:
      sub_1001048B4();
      sub_100007544();
      v35 = xmmword_1001ECB10;
      goto LABEL_89;
    }

LABEL_72:
    v79 = v6 == 29295 && v5 == 0xE200000000000000;
    if (v79 || (sub_100003200() & 1) != 0)
    {

      sub_10000BFDC(v80, v81, v82, v83, v84, v85, v86, v87, v103, v110, v114);

      if (!v115)
      {
        goto LABEL_87;
      }

      sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);
      if ((sub_100006D00() & 1) == 0)
      {
        goto LABEL_88;
      }

      v5 = v109;
      v6 = *(v109 + 16);
      if (v6)
      {
        sub_100005900();
        v88 = 0;
        v89 = v114;
        while (v88 < *(v109 + 16))
        {
          v90 = *(v109 + 8 * v88 + 32);

          sub_100103774(v118, v91);
          if (v2)
          {
            goto LABEL_91;
          }

          *&v114 = v89;
          v92 = v89[2];
          v93 = v92 + 1;
          if (v92 >= v89[3] >> 1)
          {
            v97 = sub_100006454();
            v99 = v98;
            sub_10009BA18(v97, v100, v101);
            v92 = v99;
            v89 = v114;
          }

          ++v88;
          v89[2] = v93;
          v94 = &v89[5 * v92];
          v95 = v118[0];
          v96 = v118[1];
          *(v94 + 64) = v119;
          *(v94 + 2) = v95;
          *(v94 + 3) = v96;
          if (v6 == v88)
          {

            goto LABEL_97;
          }
        }

        __break(1u);
        return;
      }

      v89 = _swiftEmptyArrayStorage;
LABEL_97:
      sub_100004AA0();
      swift_allocObject();
      sub_100023DA0();
      *(v102 + 16) = v89;
      v32 = 5;
LABEL_32:
      *a2 = v6;
      *(a2 + 8) = v5;
      *(a2 + 16) = v30;
      *(a2 + 24) = v31;
      *(a2 + 32) = v32;
      return;
    }

    sub_1001048B4();
    sub_100007544();
    *v27 = v6;
    *(v27 + 8) = v5;
    v28 = 1;
LABEL_21:
    *(v27 + 16) = v28;
LABEL_90:
    swift_willThrow();
    return;
  }

  sub_10000BFDC(v8, v9, v10, v11, v12, v13, v14, v15, v103, v110, v114);

  if (!v115)
  {
LABEL_87:
    sub_100009F5C(&v114, &qword_10026D350, &qword_1001E6050);
    goto LABEL_88;
  }

  sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);
  if ((sub_100006D00() & 1) == 0)
  {
LABEL_88:
    sub_1001048B4();
    sub_100007544();
    v35 = xmmword_1001ECAF0;
    goto LABEL_89;
  }

  v5 = v103;
  v6 = *(v103 + 16);
  if (!v6)
  {

    v17 = _swiftEmptyArrayStorage;
LABEL_31:
    sub_100004AA0();
    swift_allocObject();
    sub_100023DA0();
    v32 = 0;
    *(v33 + 16) = v17;
    goto LABEL_32;
  }

  sub_100005900();
  v16 = 0;
  v17 = v114;
  while (1)
  {
    if (v16 >= *(v103 + 16))
    {
      __break(1u);
      goto LABEL_72;
    }

    v18 = *(v103 + 8 * v16 + 32);

    sub_100103774(v116, v19);
    if (v2)
    {
      break;
    }

    *&v114 = v17;
    v20 = v17[2];
    if (v20 >= v17[3] >> 1)
    {
      v24 = sub_100006454();
      sub_10009BA18(v24, v25, v26);
      v17 = v114;
    }

    ++v16;
    v17[2] = v20 + 1;
    v21 = &v17[5 * v20];
    v22 = v116[0];
    v23 = v116[1];
    *(v21 + 64) = v117;
    *(v21 + 2) = v22;
    *(v21 + 3) = v23;
    if (v6 == v16)
    {

      goto LABEL_31;
    }
  }

LABEL_91:
}

id sub_100103ED8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_opt_self();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v40[0] = 0;
  v14 = [v10 JSONObjectWithData:isa options:0 error:v40];

  if (!v14)
  {
    v27 = v40[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    v28 = qword_100287848;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v29 = *(type metadata accessor for LogInterpolation() - 8);
    v30 = *(v29 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v41 = type metadata accessor for JSBacklog();
    v40[0] = a5;
    v32 = a5;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v40);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v33._object = 0x80000001001F9D70;
    v33._countAndFlagsBits = 0xD000000000000034;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
    swift_getErrorValue();
    v41 = v38;
    v34 = sub_100017E64(v40);
    (*(*(v38 - 8) + 16))(v34);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009F5C(v40, &qword_10026D350, &qword_1001E6050);
    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
    LogInterpolation.init(stringInterpolation:)();
    v36 = static os_log_type_t.error.getter();
    v25 = v28;
    sub_1000036B0(v36);

    swift_willThrow();
    return (v25 & 1);
  }

  v15 = v40[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    return (v25 & 1);
  }

  swift_beginAccess();

  sub_1000EF558();
  v16 = *(*(a2 + 16) + 16);
  sub_1000EF644(v16);
  v17 = *(a2 + 16);
  *(v17 + 16) = v16 + 1;
  *(v17 + 8 * v16 + 32) = v39;
  *(a2 + 16) = v17;
  swift_endAccess();
  v18 = JSValue.int.getter();
  if ((v19 & 1) != 0 || (v20 = v18, swift_beginAccess(), v21 = *(a2 + 16), *(v21 + 16) != v20))
  {

    v25 = 1;
    return (v25 & 1);
  }

  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1001E61B0;
  *(v22 + 56) = sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
  *(v22 + 32) = v21;

  result = sub_1001047E4(v22, a4);
  if (result)
  {
    v24 = result;

    v25 = JSValue.BOOL.getter();

    swift_beginAccess();
    v26 = *(a2 + 16);
    *(a2 + 16) = _swiftEmptyArrayStorage;

    return (v25 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_100104398()
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001E61B0;
  v1 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 56) = sub_10007B9A4(&qword_10026D6E0, &unk_1001ECB78);
  *(v0 + 32) = v1;
  sub_10005C768(v0);
}

uint64_t sub_100104450(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  v4 = objc_allocWithZone(type metadata accessor for JSError());
  swift_errorRetain();
  v5 = sub_1000505C8(a2);
  v6 = sub_100051018();

  *(v3 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v3 + 32) = v6;
  sub_10005C768(v3);
}

id sub_100104610()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBacklog();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100104688()
{
  v1 = *(type metadata accessor for JSCallable() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100104450(v0 + v2, v3);
}

unint64_t sub_100104714(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return sub_100103ED8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40)) & 1;
}

uint64_t sub_10010473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_100104750(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_100104750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 5:

      break;
    case 1:
    case 2:
    case 3:

      goto LABEL_4;
    case 4:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

id sub_1001047E4(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [a2 callWithArguments:isa];

  return v4;
}

uint64_t sub_100104854()
{
  v0 = *(*(type metadata accessor for JSCallable() - 8) + 80);

  return sub_100104398();
}

unint64_t sub_1001048B4()
{
  result = qword_10026D6D0;
  if (!qword_10026D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D6D0);
  }

  return result;
}

uint64_t sub_100104908(uint64_t a1)
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

uint64_t sub_100104924(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100104964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001049A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id sub_1001049D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007B9A4(&qword_10026D760, &qword_1001ECC90);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v20 - v14;
  (*(v7 + 16))(v10, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v6);
  result = sub_100050BA8(a3);
  if (v17)
  {
    v18 = String._bridgeToObjectiveC()();

    Bag.subscript.getter();

    (*(v7 + 8))(v10, v6);
    Bag.Value.currentOrNil()();
    if (v21)
    {
      result = [objc_opt_self() valueWithUndefinedInContext:a1];
      if (result)
      {
LABEL_6:
        v19 = result;
        (*(v12 + 8))(v15, v11);
        return v19;
      }

      __break(1u);
    }

    result = [objc_opt_self() valueWithDouble:a1 inContext:v20[2]];
    if (result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100104CA8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007B9A4(&qword_10026D758, &qword_1001ECC88);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v20 - v14;
  (*(v7 + 16))(v10, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v6);
  result = sub_100050BA8(a3);
  if (v17)
  {
    v18 = String._bridgeToObjectiveC()();

    Bag.subscript.getter();

    (*(v7 + 8))(v10, v6);
    Bag.Value.currentOrNil()();
    if (v21 == 1)
    {
      result = [objc_opt_self() valueWithUndefinedInContext:a1];
      if (result)
      {
LABEL_6:
        v19 = result;
        (*(v12 + 8))(v15, v11);
        return v19;
      }

      __break(1u);
    }

    result = [objc_opt_self() valueWithDouble:a1 inContext:v20[2]];
    if (result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100104F88(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007B9A4(&qword_10026D750, &qword_1001ECC80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  (*(v7 + 16))(v10, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v6);
  result = sub_100050BA8(a3);
  if (v17)
  {
    v18 = String._bridgeToObjectiveC()();

    Bag.subscript.getter();

    (*(v7 + 8))(v10, v6);
    Bag.Value.currentOrNil()();
    v19 = v24;
    v20 = &AMSAccountMediaTypeAppStore_ptr;
    if (v24 == 2)
    {
      result = [objc_opt_self() valueWithUndefinedInContext:a1];
      if (result)
      {
LABEL_6:
        v22 = result;
        (*(v12 + 8))(v15, v11);
        return v22;
      }

      __break(1u);
    }

    v21 = v20[195];
    result = [objc_opt_self() valueWithBool:v19 & 1 inContext:a1];
    if (result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100105254(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007B9A4(&qword_10026D748, &qword_1001ECC78);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v22 - v14;
  (*(v7 + 16))(v10, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v6);
  result = sub_100050BA8(a3);
  if (!v17)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = String._bridgeToObjectiveC()();

  Bag.subscript.getter();

  (*(v7 + 8))(v10, v6);
  Bag.Value.currentOrNil()();
  v19 = v22[0];
  if (v22[0])
  {
    sub_100002BC0(0, &qword_10026D738, JSValue_ptr);
    v22[3] = sub_10007B9A4(&qword_10026A520, &qword_1001E83B0);
    v22[0] = v19;
    v20 = a1;

    result = sub_100055480(v22, a1);
    if (result)
    {
      v21 = result;
      (*(v12 + 8))(v15, v11);

      return v21;
    }

    goto LABEL_9;
  }

  result = [objc_opt_self() valueWithUndefinedInContext:a1];
  if (result)
  {
    v21 = result;
    (*(v12 + 8))(v15, v11);
    return v21;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_100105570(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007B9A4(&qword_10026D740, &qword_1001ECC70);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v22 - v14;
  (*(v7 + 16))(v10, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v6);
  result = sub_100050BA8(a3);
  if (!v17)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = String._bridgeToObjectiveC()();

  Bag.subscript.getter();

  (*(v7 + 8))(v10, v6);
  Bag.Value.currentOrNil()();
  v19 = v22[0];
  if (v22[0])
  {
    sub_100002BC0(0, &qword_10026D738, JSValue_ptr);
    v22[3] = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    v22[0] = v19;
    v20 = a1;

    result = sub_100055480(v22, a1);
    if (result)
    {
      v21 = result;
      (*(v12 + 8))(v15, v11);

      return v21;
    }

    goto LABEL_9;
  }

  result = [objc_opt_self() valueWithUndefinedInContext:a1];
  if (result)
  {
    v21 = result;
    (*(v12 + 8))(v15, v11);
    return v21;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100105818(void *a1, uint64_t a2, void *a3)
{
  v36 = a1;
  v5 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v32 - v7;
  v34 = type metadata accessor for URL();
  v33 = *(v34 - 8);
  v9 = *(v33 + 64);
  __chkstk_darwin(v34);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Bag();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007B9A4(&qword_10026D730, &qword_1001ECC68);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  (*(v12 + 16))(v15, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v11);
  result = sub_100050BA8(a3);
  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();

    Bag.subscript.getter();

    (*(v12 + 8))(v15, v11);
    Bag.Value.currentOrNil()();
    v24 = v34;
    if (sub_100009F34(v8, 1, v34) == 1)
    {
      sub_10008E750(v8);
      v25 = [objc_opt_self() valueWithUndefinedInContext:v36];
      if (v25)
      {
LABEL_7:
        (*(v17 + 8))(v20, v16);
        return v25;
      }

      __break(1u);
    }

    v27 = v32;
    v26 = v33;
    (*(v33 + 32))(v32, v8, v24);
    sub_100002BC0(0, &qword_10026D738, JSValue_ptr);
    v28 = URL.absoluteString.getter();
    v35[3] = &type metadata for String;
    v35[0] = v28;
    v35[1] = v29;
    v30 = v36;
    v31 = v36;
    result = sub_100055480(v35, v30);
    if (result)
    {
      v25 = result;
      (*(v26 + 8))(v27, v24);
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100105C6C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100105D18()
{
  result = type metadata accessor for Bag();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100105EF0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14amsengagementd8JSClient_demo);
  *(v1 + OBJC_IVAR____TtC14amsengagementd8JSClient_demo) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_100105F50(SEL *a1)
{
  result = sub_100106334(*(v1 + OBJC_IVAR____TtC14amsengagementd8JSClient_clientInfo), a1);
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100106000()
{
  if ([objc_opt_self() deviceIsAudioAccessory])
  {
    v0 = String._bridgeToObjectiveC()();
    v1 = kCFPreferencesAnyApplication;
    v2 = kCFPreferencesCurrentUser;
    v3 = kCFPreferencesAnyHost;
    v4 = CFPreferencesCopyValue(v0, kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

    if (v4)
    {
      if (sub_100006D20())
      {
        v5 = v12;
        if (v12)
        {
          v6 = v11;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v1 = kCFPreferencesAnyApplication;
    v2 = kCFPreferencesCurrentUser;
    v3 = kCFPreferencesAnyHost;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = CFPreferencesCopyValue(v7, v1, v2, v3);

  if (v8)
  {
    v9 = sub_100006D20();
    v6 = v11;
    v5 = v12;
    if (!v9)
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

LABEL_11:
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

id sub_100106194(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100106204()
{
  v1 = [objc_opt_self() userAgentForProcessInfo:*(v0 + OBJC_IVAR____TtC14amsengagementd8JSClient_clientInfo)];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_1001062B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSClient();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100106334(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

unint64_t sub_1001063D4()
{
  v7 = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v3 = [v1 typeOfDemoDevice:&v6];

    v7 = v6;
    v4 = v6;
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v2 = v4;
  }

  else
  {
    v3 = 0;
  }

  sub_1001064AC(&v7, v0);

  return v3;
}

uint64_t sub_1001064AC(void **a1, void *a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v7 = *a1;
  if (*a1)
  {
    v8 = qword_1002686E8;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v10 = *(type metadata accessor for LogInterpolation() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v21 = type metadata accessor for JSClientDemo();
    v20[0] = a2;
    v13 = a2;
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v20);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._object = 0x80000001001FA190;
    v16._countAndFlagsBits = 0xD000000000000025;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    v21 = sub_100106F74();
    v20[0] = v9;
    v17 = v9;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v20);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    LogInterpolation.init(stringInterpolation:)();
    v19 = static os_log_type_t.error.getter();
    sub_1000036B0(v19);
  }

  return result;
}

uint64_t sub_1001067D4()
{
  v8 = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = v1;
  if (!v1)
  {
    goto LABEL_5;
  }

  v7 = 0;
  v3 = [v1 getDeviceOptions:&v7];

  v4 = v7;
  v8 = v7;
  if (!v3)
  {
    v2 = v7;
LABEL_5:
    v5 = Dictionary.init(dictionaryLiteral:)();
    goto LABEL_6;
  }

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v4;

LABEL_6:
  sub_10010690C(&v8, v0);

  return v5;
}

uint64_t sub_10010690C(void **a1, void *a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v7 = *a1;
  if (*a1)
  {
    v8 = qword_1002686E8;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v10 = *(type metadata accessor for LogInterpolation() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v21 = type metadata accessor for JSClientDemo();
    v20[0] = a2;
    v13 = a2;
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v20);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._object = 0x80000001001FA160;
    v16._countAndFlagsBits = 0xD000000000000029;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    v21 = sub_100106F74();
    v20[0] = v9;
    v17 = v9;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v20);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    LogInterpolation.init(stringInterpolation:)();
    v19 = static os_log_type_t.error.getter();
    sub_1000036B0(v19);
  }

  return result;
}

void *sub_100106BD8()
{
  v8 = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = v1;
  if (v1)
  {
    v7 = 0;
    v3 = [v1 getStoreID:&v7];

    v4 = v7;
    v8 = v7;
    if (v3)
    {
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
    }

    else
    {
      v5 = v7;
      v2 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  sub_100106CEC(&v8, v0);

  return v2;
}

uint64_t sub_100106CEC(void **a1, void *a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v7 = *a1;
  if (*a1)
  {
    v8 = qword_1002686E8;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v10 = *(type metadata accessor for LogInterpolation() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v21 = type metadata accessor for JSClientDemo();
    v20[0] = a2;
    v13 = a2;
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v20);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._object = 0x80000001001FA130;
    v16._countAndFlagsBits = 0xD000000000000022;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    v21 = sub_100106F74();
    v20[0] = v9;
    v17 = v9;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v20);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    LogInterpolation.init(stringInterpolation:)();
    v19 = static os_log_type_t.error.getter();
    sub_1000036B0(v19);
  }

  return result;
}

id sub_100106F40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSClientDemo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100106F74()
{
  result = qword_100271EB0;
  if (!qword_100271EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100271EB0);
  }

  return result;
}

uint64_t sub_100106FB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for JSContent.Request(0);
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v11 = v10 - v9;
  sub_10001CD7C();
  v33[0] = v12;
  v33[1] = 0xE800000000000000;
  sub_100004900();
  v13 = sub_100005924();
  sub_10000E0C8(v13, a1, v14);
  sub_10000E1E8(v34);
  if (!v36)
  {

    sub_10000A00C(v35, &qword_10026D350, &qword_1001E6050);
LABEL_11:
    sub_10010B854();
    sub_100007544();
    *v25 = 0;
    return swift_willThrow();
  }

  sub_100007ABC();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  v16 = v33[0];
  v15 = v33[1];
  sub_1000071E8();
  v33[0] = v17;
  v33[1] = 0xE700000000000000;
  sub_100004900();
  v18 = sub_100005924();
  sub_10000E0C8(v18, a1, v19);
  sub_10000E1E8(v34);
  if (!v36)
  {

    sub_10000A00C(v35, &qword_10026D350, &qword_1001E6050);
LABEL_14:
    sub_10010B854();
    sub_100007544();
    v27 = 1;
LABEL_18:
    *v26 = v27;
    return swift_willThrow();
  }

  sub_100007ABC();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  v21 = v33[0];
  v20 = v33[1];
  strcpy(v33, "contentRequest");
  HIBYTE(v33[1]) = -18;
  sub_100004900();
  v22 = sub_100005924();
  sub_10000E0C8(v22, a1, v23);
  sub_10000E1E8(v34);
  if (!v36)
  {

    sub_10000A00C(v35, &qword_10026D350, &qword_1001E6050);
LABEL_17:
    sub_10010B854();
    sub_100007544();
    v27 = 2;
    goto LABEL_18;
  }

  v37 = v21;
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  sub_100007ABC();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  sub_1001073E0(v33[0]);
  if (v2)
  {
  }

  strcpy(v33, "options");
  v33[1] = 0xE700000000000000;
  sub_100004900();
  v28 = sub_100005924();
  sub_10000E0C8(v28, a1, v29);

  sub_10000E1E8(v34);
  if (v36)
  {
    sub_100007ABC();
    if (swift_dynamicCast())
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_10000A00C(v35, &qword_10026D350, &qword_1001E6050);
  }

  Dictionary.init(dictionaryLiteral:)();
LABEL_25:
  v30 = sub_100107984();
  *a2 = v16;
  a2[1] = v15;
  a2[2] = v37;
  a2[3] = v20;
  v31 = type metadata accessor for JSContent.CacheRequest(0);
  result = sub_10010B7F8(v11, a2 + *(v31 + 24));
  v32 = a2 + *(v31 + 28);
  *v32 = v30 & 1;
  v32[1] = BYTE1(v30) & 1;
  v32[2] = (v30 & 0xFFFF0000) != 0;
  return result;
}

uint64_t sub_100107984()
{
  *&v37 = 0x756F656D69546E6FLL;
  *(&v37 + 1) = 0xE900000000000074;
  v0 = AnyHashable.init<A>(_:)();
  sub_100011A40(v0, v1, v2, v3, v4, v5, v6, v7, v28, v32[0], v33, v34, v35, v36, v37);
  sub_10000E1E8(v32);
  if (v38)
  {
    if (sub_10000A3FC())
    {
      v8 = HIBYTE(v29);
      goto LABEL_6;
    }
  }

  else
  {
    sub_10000A00C(&v37, &qword_10026D350, &qword_1001E6050);
  }

  v8 = 0;
LABEL_6:
  *&v37 = 0xD000000000000011;
  *(&v37 + 1) = 0x80000001001FA3D0;
  v9 = AnyHashable.init<A>(_:)();
  sub_100011A40(v9, v10, v11, v12, v13, v14, v15, v16, v29, v32[0], v33, v34, v35, v36, v37);
  sub_10000E1E8(v32);
  if (!v38)
  {
    sub_10000A00C(&v37, &qword_10026D350, &qword_1001E6050);
    goto LABEL_12;
  }

  if (!sub_10000A3FC())
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  if (HIBYTE(v30))
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

LABEL_13:
  *&v37 = 0xD00000000000001ALL;
  *(&v37 + 1) = 0x80000001001FA3F0;
  v18 = AnyHashable.init<A>(_:)();
  sub_100011A40(v18, v19, v20, v21, v22, v23, v24, v25, v30, v32[0], v33, v34, v35, v36, v37);

  sub_10000E1E8(v32);
  if (!v38)
  {
    sub_10000A00C(&v37, &qword_10026D350, &qword_1001E6050);
    goto LABEL_19;
  }

  if (!sub_10000A3FC())
  {
LABEL_19:
    v26 = 0;
    return v17 | v8 | v26;
  }

  if (v31)
  {
    v26 = 0x10000;
  }

  else
  {
    v26 = 0;
  }

  return v17 | v8 | v26;
}

unint64_t sub_100107B68(uint64_t a1)
{
  strcpy(&v5, "requestingApp");
  HIWORD(v5._object) = -4864;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v6, a1, v7);
  sub_10000E1E8(v6);
  if (v8)
  {
    if (sub_10000A87C())
    {
      v2 = v5;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10000A00C(v7, &qword_10026D350, &qword_1001E6050);
  }

  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
LABEL_6:
  v3 = sub_1000116D0(v2);
  strcpy(v7, "notificationId");
  v7[15] = -18;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v6, a1, v7);

  sub_10000E1E8(v6);
  if (v8)
  {
    sub_10000A87C();
  }

  else
  {
    sub_10000A00C(v7, &qword_10026D350, &qword_1001E6050);
  }

  return v3;
}

unint64_t sub_100107CEC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244F48, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100107D38(char a1)
{
  result = 0x5443454E4E4F43;
  switch(a1)
  {
    case 1:
      result = 0x4554454C4544;
      break;
    case 2:
      v3 = 17735;
      goto LABEL_9;
    case 3:
      result = 1145128264;
      break;
    case 4:
      result = 0x4843544150;
      break;
    case 5:
      result = 1414745936;
      break;
    case 6:
      v3 = 21840;
LABEL_9:
      result = v3 | 0x540000u;
      break;
    case 7:
      result = 0x455441445055;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100107E10@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100107CEC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100107E40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100107D38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100107E6C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for JSContent.CacheRequest(0);
  v9 = sub_100002CFC(v8);
  v41 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v15 = (v14 - v13);
  v42 = *(v4 + OBJC_IVAR____TtC14amsengagementd9JSContent_runtime);
  if (*(v42 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
    v44 = *(v42 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  }

  if (qword_1002686E8 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v16);
    v18 = *(v17 + 72);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v48 = type metadata accessor for JSContent();
    *&v47 = v4;
    v4;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v47);
    LogInterpolation.init(stringLiteral:)();
    v48 = &type metadata for String;
    *&v47 = a1;
    *(&v47 + 1) = a2;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v47, &qword_10026D350, &qword_1001E6050);
    v21 = static os_log_type_t.default.getter();
    sub_1000036B0(v21);

    result = sub_100146C24(a3);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v23 = *(result + 16);
    v24 = _swiftEmptyArrayStorage;
    if (v23)
    {
      v25 = result + 32;
      do
      {
        sub_100011BAC(v25, &v47);
        sub_100002C4C(&v47, &v45);
        sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
        if (swift_dynamicCast())
        {
          v26 = v46;
          if (v46)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000D4DDC(0, v24[2] + 1, 1, v24);
              v24 = v29;
            }

            v28 = v24[2];
            v27 = v24[3];
            if (v28 >= v27 >> 1)
            {
              sub_1000D4DDC(v27 > 1, v28 + 1, 1, v24);
              v24 = v30;
            }

            v24[2] = v28 + 1;
            v24[v28 + 4] = v26;
          }
        }

        v25 += 32;
        --v23;
      }

      while (v23);
    }

    a2 = v24[2];
    if (!a2)
    {
      break;
    }

    *&v47 = _swiftEmptyArrayStorage;
    sub_10009BA38(0, a2, 0);
    a1 = 0;
    a3 = v47;
    v4 = v41;
    while (a1 < v24[2])
    {
      v31 = v24[a1 + 4];

      sub_100106FB8(v32, v15);
      *&v47 = a3;
      v34 = a3[2];
      v33 = a3[3];
      if (v34 >= v33 >> 1)
      {
        sub_10009BA38(v33 > 1, v34 + 1, 1);
        v4 = v41;
        a3 = v47;
      }

      ++a1;
      a3[2] = v34 + 1;
      v35 = *(v4 + 80);
      sub_100004864();
      sub_10010B7F8(v15, a3 + v36 + *(v4 + 72) * v34);
      if (a2 == a1)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    sub_100006D40();
    swift_once();
  }

  a3 = _swiftEmptyArrayStorage;
LABEL_23:
  v37 = sub_10000AF50();
  v38 = v37;
  sub_10000755C(v37);
  sub_10001CBE4();

  sub_100002C00(&v47);
  LogInterpolation.init(stringLiteral:)();
  v48 = sub_10007B9A4(&qword_10026D808, &qword_1001ECD00);
  *&v47 = a3;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v47, &qword_10026D350, &qword_1001E6050);
  v39 = static os_log_type_t.default.getter();
  sub_1000036B0(v39);

  sub_1000181EC(v42 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config);
  *(sub_100004BC8() + 16) = v38;
  sub_10005DFA4(a4);
  sub_100107B68(v40);
  sub_1000B3264();
}

uint64_t sub_1001085E4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC14amsengagementd9JSContent_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  type metadata accessor for ContentManager();
  *(sub_100004BC8() + 16) = v1;
  v2 = sub_100003B80();
  v4 = sub_1000B7FA8(v2, v3);
  v5 = sub_1000B253C(v4);

  return v5;
}

uint64_t sub_10010871C()
{
  v1 = type metadata accessor for ContentInfo();
  v2 = sub_100002CFC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v9 = v8 - v7;
  v10 = *(*(v0 + OBJC_IVAR____TtC14amsengagementd9JSContent_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  type metadata accessor for ContentManager();
  *(sub_100004BC8() + 16) = v10;
  v11 = sub_100003B80();
  v13 = sub_1000B7FA8(v11, v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v4 + 80);
    sub_100004864();
    v17 = v13 + v16;
    v18 = *(v4 + 72);
    do
    {
      sub_1000B2AD0(v17, v9);
      sub_100003B80();
      sub_1000B84AC();
      sub_100005320();
      sub_10010B72C(v9, v19);
      v17 += v18;
      --v14;
    }

    while (v14);
  }

  else
  {
  }
}

uint64_t sub_1001088A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = type metadata accessor for JSContent.Request(0);
  v13 = sub_100003D10(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100002DEC();
  v36 = v17 - v16;
  v34 = *&v7[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime];
  if (*(v34 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
    v18 = *(v34 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  }

  else
  {
    v18 = 0;
  }

  v37 = a4;
  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v19 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v19);
  v21 = *(v20 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E61C0;
  v33 = type metadata accessor for JSContent();
  v40 = v33;
  v38 = v7;
  v32 = v7;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v38);
  LogInterpolation.init(stringLiteral:)();
  v40 = &type metadata for String;
  v38 = a1;
  v39 = a2;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v38, &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v40 = &type metadata for String;
  v38 = a3;
  v39 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v38, &qword_10026D350, &qword_1001E6050);
  v24 = static os_log_type_t.default.getter();
  sub_1000036B0(v24);

  v25 = *(v34 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  type metadata accessor for ContentManager();
  *(sub_100004BC8() + 16) = v25;
  sub_10005DFA4(a5);
  v26 = v36;
  sub_1001073E0(v27);

  sub_10005DFA4(a6);
  v28 = sub_100107984();
  sub_1000B48D0(0, 0, a1, a2, a3, v37, v36, v28 & 0x101 | (((v28 & 0xFFFF0000) != 0) << 16), 0, 0, 1, v30, a2, a6, v32, v18, v33, a3, v34, a5, v36, v37, a1);

  return sub_10010B72C(v26, type metadata accessor for JSContent.Request);
}

uint64_t sub_100108E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v40 = type metadata accessor for ContentInfo();
  v8 = sub_100002CC4(v40);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  v15 = v14 - v13;
  v16 = *&v4[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime];
  if (*(v16 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
    v41 = *(v16 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  }

  v17 = *(v16 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  type metadata accessor for ContentManager();
  *(sub_100004BC8() + 16) = v17;
  v18 = *(sub_1000B7DD0(a1, a2, a3, a4, 2) + 16);
  if (v18)
  {
    v19 = *(v10 + 80);
    sub_100004864();
    v22 = v20 + v21;
    v23 = *(v10 + 72);
    do
    {
      sub_1000B2AD0(v22, v15);
      if (qword_1002686E8 != -1)
      {
        sub_100006D40();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v24 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v24);
      v26 = *(v25 + 72);
      sub_1000056F8();
      *(swift_allocObject() + 16) = xmmword_1001E5F60;
      v47 = type metadata accessor for JSContent();
      v44 = v5;
      v27 = v5;
      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(&v44);
      LogInterpolation.init(stringLiteral:)();
      v47 = &type metadata for String;
      v44 = a1;
      v45 = a2;

      static LogInterpolation.safe(_:)();
      sub_10000A00C(&v44, &qword_10026D350, &qword_1001E6050);
      v28 = static os_log_type_t.default.getter();
      sub_1000036B0(v28);

      v29 = v15 + *(v40 + 32);
      Date.addTimeInterval(_:)(2592000.0);
      sub_1000B8A2C(v15);
      sub_100005320();
      sub_10010B72C(v15, v30);
      v22 += v23;
      --v18;
    }

    while (v18);
  }

  else
  {

    if (qword_1002686E8 != -1)
    {
      sub_100006D40();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v31 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v31);
    v33 = *(v32 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E6580;
    v47 = type metadata accessor for JSContent();
    v44 = v4;
    v34 = v4;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v44);
    LogInterpolation.init(stringLiteral:)();
    v47 = &type metadata for String;
    v44 = a1;
    v45 = a2;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v44, &qword_10026D350, &qword_1001E6050);
    if (a4)
    {
      v35 = &type metadata for String;
      v36 = a4;
      v37 = a3;
    }

    else
    {
      v37 = 0;
      v36 = 0;
      v35 = 0;
      v46 = 0;
    }

    v44 = v37;
    v45 = v36;
    v47 = v35;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v44, &qword_10026D350, &qword_1001E6050);
    v38 = static os_log_type_t.default.getter();
    sub_1000036B0(v38);
  }
}

uint64_t sub_1001093EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = sub_100003D10(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  v91 = type metadata accessor for Date();
  v11 = sub_100002CC4(v91);
  v95 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  v90 = v16 - v15;
  v89 = type metadata accessor for ContentInfo();
  v17 = sub_100002CC4(v89);
  v93 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_100002DEC();
  v92 = (v22 - v21);
  v87 = v3;
  v23 = *(v3 + OBJC_IVAR____TtC14amsengagementd9JSContent_runtime);
  if (*(v23 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
    v86 = *(v23 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  }

  sub_100006750();
  sub_100052D94(a3, &v99);
  if (v101)
  {
    v24 = swift_dynamicCast();
    if (v24)
    {
      v25 = v97;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v98;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    sub_10000A00C(&v99, &qword_10026D350, &qword_1001E6050);
    v25 = 0;
    v26 = 0;
  }

  v27 = &type metadata for String;
  v28 = *(v23 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  type metadata accessor for ContentManager();
  *(sub_100004BC8() + 16) = v28;
  v29 = sub_1000B7DD0(a1, a2, v25, v26, 4);
  v30 = *(v29 + 16);
  if (v30)
  {

    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v31 = Dictionary.init(dictionaryLiteral:)();
    v32 = v92;
    v33 = *(v93 + 80);
    sub_100004864();
    v35 = v29 + v34;
    v85 = *(v36 + 72);
    v88 = (v95 + 8);
    while (1)
    {
      v94 = v35;
      v96 = v30;
      sub_1000B2AD0(v35, v32);
      sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001E7880;
      sub_10001CD7C();
      *(v38 + 32) = v39;
      *(v38 + 40) = 0xE800000000000000;
      v40 = v32[3];
      *(inited + 48) = v32[2];
      *(inited + 56) = v40;
      *(inited + 72) = v27;
      *(inited + 80) = 0x64657461657263;
      *(inited + 88) = 0xE700000000000000;
      v41 = v89[7];

      Date.timeIntervalSince1970.getter();
      *(inited + 96) = v42 * 1000.0;
      *(inited + 120) = &type metadata for Double;
      *(inited + 128) = 0x73657269707865;
      *(inited + 136) = 0xE700000000000000;
      v43 = v89[8];
      Date.timeIntervalSince1970.getter();
      *(inited + 144) = v44 * 1000.0;
      *(inited + 168) = &type metadata for Double;
      *(inited + 176) = 0x64657269707865;
      *(inited + 184) = 0xE700000000000000;
      Date.init()();
      LOBYTE(v41) = static Date.< infix(_:_:)();
      (*v88)(v90, v91);
      *(inited + 192) = v41 & 1;
      *(inited + 216) = &type metadata for Bool;
      *(inited + 224) = 0x6574617473;
      *(inited + 232) = 0xE500000000000000;
      *(inited + 240) = *(v32 + v89[10]);
      *(inited + 264) = &type metadata for Int;
      *(inited + 272) = 1752457584;
      *(inited + 280) = 0xE400000000000000;
      v45 = (v32 + v89[9]);
      v47 = *v45;
      v46 = v45[1];
      sub_10007B9A4(&unk_10026CD20, &unk_1001E7CC0);
      *(inited + 288) = v47;
      *(inited + 296) = v46;
      sub_1000071E8();
      *(inited + 312) = v48;
      *(inited + 320) = v49;
      *(inited + 328) = 0xE700000000000000;
      v50 = (v32 + v89[12]);
      v51 = *v50;
      v26 = v50[1];
      *(inited + 336) = *v50;
      *(inited + 344) = v26;
      *(inited + 360) = v27;
      *(inited + 368) = 0x79654B6863746162;
      *(inited + 376) = 0xE900000000000073;
      v52 = *v32;
      *(inited + 408) = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
      *(inited + 384) = v52;

      v53 = v27;
      v54 = Dictionary.init(dictionaryLiteral:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v99 = v31;
      v56 = sub_100012A94();
      v58 = v31[2];
      v59 = (v57 & 1) == 0;
      v60 = v58 + v59;
      if (__OFADD__(v58, v59))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v61 = v56;
      v62 = v57;
      sub_10007B9A4(&qword_10026B2D8, &unk_1001EEA60);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v60))
      {
        v63 = sub_100012A94();
        v32 = v92;
        if ((v62 & 1) != (v64 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v61 = v63;
      }

      else
      {
        v32 = v92;
      }

      v31 = v99;
      if (v62)
      {
        v65 = *(v99 + 56);
        v66 = *(v65 + 8 * v61);
        *(v65 + 8 * v61) = v54;
      }

      else
      {
        *(v99 + 8 * (v61 >> 6) + 64) |= 1 << v61;
        v67 = (v31[6] + 16 * v61);
        *v67 = v51;
        v67[1] = v26;
        *(v31[7] + 8 * v61) = v54;
        v68 = v31[2];
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (v69)
        {
          goto LABEL_31;
        }

        v31[2] = v70;
      }

      sub_100005320();
      sub_10010B72C(v32, v71);
      v35 = v94 + v85;
      v30 = v96 - 1;
      v27 = v53;
      if (v96 == 1)
      {

        sub_1000E375C(v31);
        v73 = v72;

        return v73;
      }
    }
  }

  v92 = v25;
  v53 = v87;
  v51 = a1;
  v96 = a2;

  if (qword_1002686E8 != -1)
  {
LABEL_32:
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v74 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v74);
  v76 = *(v75 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v101 = type metadata accessor for JSContent();
  *&v99 = v53;
  v77 = v53;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v99);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v78._object = 0x80000001001FA310;
  v78._countAndFlagsBits = 0xD000000000000025;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v78);
  v101 = &type metadata for String;
  *&v99 = v51;
  *(&v99 + 1) = v96;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(&v99, &qword_10026D350, &qword_1001E6050);
  v79._countAndFlagsBits = 0x6F6973726576202CLL;
  v79._object = 0xEB00000000203A6ELL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v79);
  if (v26)
  {
    v80 = &type metadata for String;
    v81 = v92;
  }

  else
  {
    v81 = 0;
    v80 = 0;
    v100 = 0;
  }

  *&v99 = v81;
  *(&v99 + 1) = v26;
  v101 = v80;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(&v99, &qword_10026D350, &qword_1001E6050);
  v82._countAndFlagsBits = 41;
  v82._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v82);
  LogInterpolation.init(stringInterpolation:)();
  v83 = static os_log_type_t.default.getter();
  sub_1000036B0(v83);

  return 0;
}

uint64_t sub_100109D54(uint64_t a1)
{
  sub_1000181EC(*(v1 + OBJC_IVAR____TtC14amsengagementd9JSContent_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config);
  *(sub_100004BC8() + 16) = v2;
  v4 = sub_1000B822C(a1);
  v5 = sub_1000B253C(v4);

  return v5;
}

uint64_t sub_100109E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *(&v112 + 1) = a2;
  v113 = a3;
  *&v112 = a1;
  v110 = a4;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v89[1] = v10 - v9;
  v90 = type metadata accessor for URL();
  v11 = sub_100002CC4(v90);
  v89[3] = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  v17 = v16 - v15;
  v93 = type metadata accessor for Date();
  v18 = sub_100002CC4(v93);
  v92 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_100002DEC();
  v91 = v23 - v22;
  v24 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  v25 = sub_100003D10(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v107 = v89 - v28;
  v108 = type metadata accessor for ContentInfo();
  v29 = sub_100002DDC(v108);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_100002DEC();
  v94 = v33 - v32;
  v34 = *&v4[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime];
  v35 = *(v34 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
  if (v35)
  {
    v36 = *(v34 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
    v37 = *(v34 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
  }

  else
  {
    v36 = 0;
  }

  sub_1000181EC(v34 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config);
  v38 = sub_100004BC8();
  *(v38 + 16) = v34;
  sub_100006750();
  sub_100052D94(v113, &v117);
  if (v118)
  {
    v39 = swift_dynamicCast();
    v40 = v114;
    if (!v39)
    {
      v40 = 0;
    }

    v106 = v40;
    if (v39)
    {
      v41 = v115;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    sub_10000A00C(&v117, &qword_10026D350, &qword_1001E6050);
    v106 = 0;
    v41 = 0;
  }

  v111 = v38;
  v89[2] = v17;
  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  v42 = qword_100287848;
  v43 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v44 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v44);
  v46 = *(v45 + 72);
  v48 = *(v47 + 80);
  v49 = (v48 + 32) & ~v48;
  v97 = 5 * v46;
  v101 = v48;
  v103 = v43;
  v50 = swift_allocObject();
  v96 = xmmword_1001E61C0;
  *(v50 + 16) = xmmword_1001E61C0;
  v102 = v49;
  v100 = type metadata accessor for JSContent();
  v118 = v100;
  *&v117 = v4;
  v99 = v4;
  v104 = v36;
  v109 = v35;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v117);
  LogInterpolation.init(stringLiteral:)();
  v98 = 2 * v46;
  v118 = &type metadata for String;
  v51 = v112;
  v117 = v112;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v117, &qword_10026D350, &qword_1001E6050);
  v95 = 3 * v46;
  sub_100005C94();
  v52 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  v118 = v52;
  *&v117 = v113;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v117, &qword_10026D350, &qword_1001E6050);
  v53 = static os_log_type_t.default.getter();
  v105 = v42;
  sub_1000036B0(v53);

  v54 = sub_1000B7DD0(v51, *(&v51 + 1), v106, v41, 2);

  v55 = v107;
  sub_10018A29C(v54, v107);

  v56 = v108;
  if (sub_100009F34(v55, 1, v108) == 1)
  {
    sub_10000A00C(v55, &qword_10026A050, &unk_1001EA2B0);
LABEL_19:
    v74 = sub_100019C3C(&v119);
    *(v74 + 16) = v96;
    sub_100012C9C();
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v117);
    LogInterpolation.init(stringLiteral:)();
    v118 = &type metadata for String;
    v117 = v112;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v117, &qword_10026D350, &qword_1001E6050);
    sub_100005C94();
    v118 = v52;
    *&v117 = v113;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v117, &qword_10026D350, &qword_1001E6050);
    v75 = static os_log_type_t.default.getter();
    sub_1000036B0(v75);

LABEL_20:
    v77 = v110;
    *v110 = 0u;
    v77[1] = 0u;
    return result;
  }

  v57 = v94;
  sub_10010B7F8(v55, v94);
  v58 = *(v56 + 32);
  v59 = v91;
  Date.init()();
  LOBYTE(v58) = static Date.< infix(_:_:)();
  (*(v92 + 8))(v59, v93);
  if ((v58 & 1) != 0 || (v60 = (v57 + *(v56 + 36)), (v61 = v60[1]) == 0))
  {
    sub_100005320();
    sub_10010B72C(v57, v73);
    goto LABEL_19;
  }

  v62 = *v60;
  v63 = v60[1];

  URL.init(fileURLWithPath:)();
  v78 = Data.init(contentsOf:options:)();
  v80 = v79;
  v81 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v117 = 0;
  v83 = [v81 JSONObjectWithData:isa options:0 error:&v117];

  v84 = v117;
  if (!v83)
  {
    v88 = v84;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000253FC(v78, v80);
    *(sub_100019C3C(&v120) + 16) = xmmword_1001E5F70;
    sub_100012C9C();
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v117);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v64._object = 0x80000001001FA2F0;
    v64._countAndFlagsBits = 0xD000000000000016;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v64);
    v118 = &type metadata for String;
    *&v117 = v62;
    *(&v117 + 1) = v61;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v117, &qword_10026D350, &qword_1001E6050);
    v65._countAndFlagsBits = 8236;
    v65._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v65);
    swift_getErrorValue();
    v66 = v116;
    v118 = v116;
    sub_100017E64(&v117);
    sub_1000047A4(v66);
    (*(v67 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v117, &qword_10026D350, &qword_1001E6050);
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v68);
    LogInterpolation.init(stringInterpolation:)();
    v69 = static os_log_type_t.error.getter();
    sub_1000036B0(v69);

    v70 = sub_100007FE8();
    v71(v70);
    sub_100005320();
    result = sub_10010B72C(v94, v72);
    goto LABEL_20;
  }

  _bridgeAnyObjectToAny(_:)();
  sub_1000253FC(v78, v80);

  swift_unknownObjectRelease();
  v85 = sub_100007FE8();
  v86(v85);
  sub_100005320();
  return sub_10010B72C(v94, v87);
}

uint64_t sub_10010AA38(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime];
  if (*(v5 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
    v6 = *(v5 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
    v7 = *(v5 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
  }

  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v10 = *(v9 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v18 = type metadata accessor for JSContent();
  v17[0] = v2;
  v11 = v2;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v17);
  LogInterpolation.init(stringLiteral:)();
  v18 = &type metadata for String;
  v17[0] = a1;
  v17[1] = a2;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(v17, &qword_10026D350, &qword_1001E6050);
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12);

  v13 = *(v5 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  type metadata accessor for ContentManager();
  *(sub_100004BC8() + 16) = v13;
  v14 = sub_100003B80();
  sub_1000B8874(v14, v15, 0, 0);
}

uint64_t sub_10010AC74(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_10010ACE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v36 = a4;
  *(&v36 + 1) = a5;
  v8 = *&v6[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime];
  if (*(v8 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
    v9 = *(v8 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
    v10 = *(v8 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
  }

  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v11 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E61C0;
  v32 = type metadata accessor for JSContent();
  v40 = v32;
  *&v39 = v6;
  v31 = v6;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v39);
  LogInterpolation.init(stringLiteral:)();
  v40 = &type metadata for String;
  *&v39 = a2;
  *(&v39 + 1) = a3;

  static LogInterpolation.safe(_:)();
  sub_10000A9BC();
  v40 = &type metadata for String;
  v39 = v36;

  static LogInterpolation.safe(_:)();
  sub_10000A9BC();
  v40 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *&v39 = a6;

  static LogInterpolation.safe(_:)();
  sub_10000A9BC();
  v16 = static os_log_type_t.default.getter();
  sub_1000036B0(v16);

  v17 = *(v8 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  sub_100052D94(a6, &v39);
  if (v40)
  {
    if (swift_dynamicCast())
    {
      v18 = sub_1000116D0(v37);
      if (v18 != 4)
      {
        v17 = v18;
      }
    }
  }

  else
  {
    sub_10000A00C(&v39, &qword_10026D350, &qword_1001E6050);
  }

  type metadata accessor for ContentManager();
  *(sub_100004BC8() + 16) = v17;
  if (sub_100137414(a1))
  {
    v19 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v39 = 0;
    v21 = [v19 dataWithJSONObject:isa options:0 error:&v39];

    v22 = v39;
    if (v21)
    {

      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      sub_10005DFA4(a6);
      sub_1000B8BD8();

      return sub_1000253FC(v23, v25);
    }

    else
    {
      v27 = v22;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      *(swift_allocObject() + 16) = xmmword_1001E5F60;
      v40 = v32;
      *&v39 = v31;
      v28 = v31;
      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v39);
      LogInterpolation.init(stringLiteral:)();
      swift_getErrorValue();
      v40 = v38;
      sub_100017E64(&v39);
      sub_1000047A4(v38);
      (*(v29 + 16))();
      static LogInterpolation.safe(_:)();
      sub_10000A00C(&v39, &qword_10026D350, &qword_1001E6050);
      v30 = static os_log_type_t.error.getter();
      sub_1000036B0(v30);
    }
  }

  else
  {
  }
}

uint64_t sub_10010B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v19 = *&v7[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime];
  if (*(v19 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
    v11 = *(v19 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
    v12 = *(v19 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
  }

  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v13 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v13);
  v15 = *(v14 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E6580;
  v23 = type metadata accessor for JSContent();
  v21 = v7;
  v16 = v7;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v21);
  LogInterpolation.init(stringLiteral:)();
  v23 = &type metadata for String;
  v21 = a3;
  v22 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v21, &qword_10026D350, &qword_1001E6050);
  v23 = &type metadata for String;
  v21 = a5;
  v22 = a6;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v21, &qword_10026D350, &qword_1001E6050);
  v17 = static os_log_type_t.default.getter();
  sub_1000036B0(v17);

  sub_1000181EC(v19 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config);
  *(sub_100004BC8() + 16) = 3 * v15;
  sub_1000B97BC();
}

id sub_10010B6C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSContent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010B72C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002DDC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_10010B784()
{
  result = qword_10026D800;
  if (!qword_10026D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D800);
  }

  return result;
}

uint64_t sub_10010B7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003EFC();
  v6 = v5(v4);
  sub_100002DDC(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

unint64_t sub_10010B854()
{
  result = qword_10026D810;
  if (!qword_10026D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D810);
  }

  return result;
}

uint64_t sub_10010B8A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010B8FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JSContent.CacheRequest.CacheRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10010BA64()
{
  result = type metadata accessor for JSContent.Request(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for JSContent.Options(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for JSContent.Options(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for JSContent.Options(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
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
      *result = a2 + 1;
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

_BYTE *storeEnumTagSinglePayload for JSContent.Request.RequestError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_10010BD14()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10010BDB8();
    if (v1 <= 0x3F)
    {
      sub_10010BE1C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010BDB8()
{
  if (!qword_10026D918)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10026D918);
    }
  }
}

void sub_10010BE1C()
{
  if (!qword_10026B378)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10026B378);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for JSContent.Request.Method(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10010BF4C()
{
  result = qword_10026D950;
  if (!qword_10026D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D950);
  }

  return result;
}

unint64_t sub_10010BFA4()
{
  result = qword_10026D958;
  if (!qword_10026D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D958);
  }

  return result;
}

unint64_t sub_10010BFFC()
{
  result = qword_10026D960;
  if (!qword_10026D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D960);
  }

  return result;
}

unint64_t sub_10010C05C()
{
  result = qword_10026D728;
  if (!qword_10026D728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026D728);
  }

  return result;
}

uint64_t sub_10010C0A0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JSPromise();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;

  JSPromise.init(in:executor:)();
  if (!v3)
  {
    a3 = JSPromise.value.getter();
    (*(v7 + 8))(v10, v6);
  }

  return a3;
}

void sub_10010C1D8(uint64_t a1, void *a2, void *a3)
{
  v3 = a2;
  v4 = *(a1 + 16);
  v5 = (a1 + 40);
  if (!v4)
  {
LABEL_17:

    return;
  }

  while (1)
  {
    v7 = *(v5 - 1);
    v6 = *v5;

    sub_10010CA1C(&v38);
    if (!v39)
    {
      sub_100009FB0(&v38, &qword_10026D350, &qword_1001E6050);
      v22 = *v3;
      v23 = sub_100012A94();
      if (v24)
      {
        v25 = v23;
        v26 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = *a2;
        v28 = v40[3];
        sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v28);
        v29 = v40;
        v30 = *(v40[6] + 16 * v25 + 8);

        sub_100002C4C((v29[7] + 32 * v25), v37);
        _NativeDictionary._delete(at:)();
        *a2 = v29;
        v3 = a2;
      }

      else
      {
        memset(v37, 0, sizeof(v37));
      }

      sub_100009FB0(v37, &qword_10026D350, &qword_1001E6050);
      goto LABEL_16;
    }

    sub_100002C4C(&v38, v37);
    v8 = *v3;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v3;
    v10 = v40;
    v11 = sub_100012A94();
    v13 = v10[2];
    v14 = (v12 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v16 = v11;
    v17 = v12;
    sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v15))
    {
      v18 = sub_100012A94();
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_20;
      }

      v16 = v18;
    }

    v20 = v40;
    if (v17)
    {
      v21 = (v40[7] + 32 * v16);
      sub_100002C00(v21);
      sub_100002C4C(v37, v21);
    }

    else
    {
      v40[(v16 >> 6) + 8] |= 1 << v16;
      v31 = (v20[6] + 16 * v16);
      *v31 = v7;
      v31[1] = v6;
      sub_100002C4C(v37, (v20[7] + 32 * v16));
      v32 = v20[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_19;
      }

      v20[2] = v34;
    }

    v3 = a2;
    *a2 = v20;
LABEL_16:

    v5 += 2;
    if (!--v4)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10010C4A0()
{
  sub_100003D74();
  v2 = v1;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100005338();
  v7 = *(v0 + OBJC_IVAR____TtC14amsengagementd10JSDatabase_database);
  sub_100051540();
  sub_100051670(v2);

  sub_100005F14();
}

void sub_10010C744()
{
  sub_100003D74();
  v2 = v1;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100005338();
  v7 = *(v0 + OBJC_IVAR____TtC14amsengagementd10JSDatabase_database);
  sub_100051540();
  sub_100053070(v2);

  sub_100005F14();
}

double sub_10010CA1C@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC14amsengagementd20JSUbiquitousDatabase_keyValueStore);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_10010CAD0(uint64_t a1)
{
  v4 = Dictionary.init(dictionaryLiteral:)();
  sub_10010C1D8(a1, &v4, v1);
  return v4;
}

Class sub_10010CB60(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  a4(v6);

  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

void sub_10010CC08(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC14amsengagementd20JSUbiquitousDatabase_keyValueStore) dictionaryRepresentation];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100002BC0(0, &qword_10026D9C8, NSPredicate_ptr);
  sub_10007B9A4(&unk_100270BA0, &unk_1001EC990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E61B0;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100003E9C();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v43 = NSPredicate.init(format:_:)();
  v8 = *(v6 + 64);
  v9 = *(v6 + 32);
  sub_100004E5C();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;

  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  while (1)
  {
    v17 = v15;
    if (!v12)
    {
      break;
    }

LABEL_6:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = (*(v6 + 48) + ((v15 << 10) | (16 * v18)));
    v21 = *v19;
    v20 = v19[1];

    v22 = String._bridgeToObjectiveC()();
    v23 = [v43 evaluateWithObject:v22];

    if (v23)
    {
      *&v47 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100027C2C(0, v16[2] + 1, 1);
        v16 = v47;
      }

      v25 = v16[2];
      v24 = v16[3];
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        sub_100027C2C((v24 > 1), v25 + 1, 1);
        v26 = v25 + 1;
        v16 = v47;
      }

      v16[2] = v26;
      v27 = &v16[2 * v25];
      v27[4] = v21;
      v27[5] = v20;
    }

    else
    {
    }
  }

  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      v28 = 0;
      v29 = v16[2];
      v30 = v16 + 5;
      v31 = _swiftEmptyArrayStorage;
      while (v29 != v28)
      {
        if (v28 >= v16[2])
        {
          goto LABEL_27;
        }

        if (*(v6 + 16))
        {
          v33 = *(v30 - 1);
          v32 = *v30;

          v34 = sub_100012A94();
          if (v35)
          {
            sub_100011BAC(*(v6 + 56) + 32 * v34, v44);
            sub_100002C4C(v44, &v47);
            *&v45 = v33;
            *(&v45 + 1) = v32;
            sub_100002C4C(&v47, v46);
            v47 = v45;
            v48 = v46[0];
            v49 = v46[1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = v31[2];
              sub_1000D5E38();
              v31 = v41;
            }

            v36 = v31[2];
            if (v36 >= v31[3] >> 1)
            {
              sub_1000D5E38();
              v31 = v42;
            }

            v31[2] = v36 + 1;
            v37 = &v31[6 * v36];
            v38 = v47;
            v39 = v49;
            v37[3] = v48;
            v37[4] = v39;
            v37[2] = v38;
          }

          else
          {
          }
        }

        v30 += 2;
        ++v28;
      }

      sub_10010CFC4(v31);

      return;
    }

    v12 = *(v6 + 64 + 8 * v15);
    ++v17;
    if (v12)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_10010CFC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10007B9A4(&qword_10026C910, &qword_1001EBDF0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_10010D62C(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_10010D074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    goto LABEL_5;
  }

  sub_10004EDFC(a3, v17, &qword_10026D350);
  if (v18)
  {
    sub_100002BC0(0, qword_10026A530, NSNull_ptr);
    if (swift_dynamicCast())
    {

LABEL_5:
      v5 = *(v3 + OBJC_IVAR____TtC14amsengagementd20JSUbiquitousDatabase_keyValueStore);
      v6 = String._bridgeToObjectiveC()();
      [v5 removeObjectForKey:v6];
      goto LABEL_11;
    }
  }

  else
  {
    sub_100009FB0(v17, &qword_10026D350, &qword_1001E6050);
  }

  v7 = *(v3 + OBJC_IVAR____TtC14amsengagementd20JSUbiquitousDatabase_keyValueStore);
  sub_10004EDFC(a3, v17, &qword_10026D350);
  v8 = v18;
  if (v18)
  {
    v9 = sub_100003CA8(v17, v18);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    __chkstk_darwin(v9);
    sub_100002DEC();
    v14 = v13 - v12;
    (*(v10 + 16))(v13 - v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v14, v8);
    sub_100002C00(v17);
  }

  else
  {
    v15 = 0;
  }

  v6 = String._bridgeToObjectiveC()();
  [v7 setObject:v15 forKey:v6];
  swift_unknownObjectRelease();
LABEL_11:
}

uint64_t sub_10010D2C4(uint64_t a1)
{
  v2 = a1 + 64;
  v1 = *(a1 + 64);
  v3 = *(a1 + 32);
  sub_100004E5C();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v18 = v9;

  for (i = 0; v6; result = sub_100009FB0(v22, qword_10026A9D8, &unk_1001E8390))
  {
    v12 = i;
LABEL_7:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(v18 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_100011BAC(*(v18 + 56) + 32 * v14, &v23);
    v22[0] = v16;
    v22[1] = v17;
    sub_10004EDFC(v22, v19, qword_10026A9D8);

    sub_100002C4C(&v20, v21);
    sub_10010D074(v16, v17, v21);
    sub_100009FB0(v21, &qword_10026D350, &qword_1001E6050);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
    }

    v6 = *(v2 + 8 * v12);
    ++i;
    if (v6)
    {
      i = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010D440(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  v7 = sub_100007594();
  a4(v7);
}

uint64_t sub_10010D4C0(uint64_t result)
{
  v3 = *(result + 16);
  for (i = result + 40; v3; --v3)
  {
    sub_10000A9D8();
    sub_10010D074(v2, v1, v5);

    result = sub_100009FB0(v5, &qword_10026D350, &qword_1001E6050);
    i += 16;
  }

  return result;
}

id sub_10010D5C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10010D62C(uint64_t a1, char a2, uint64_t *a3)
{
  v33 = a3;
  v28 = *(a1 + 16);
  if (!v28)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    sub_10004EDFC(v6, v31, &unk_100271F40);
    v8 = v31[0];
    v7 = v31[1];
    sub_100002C4C(&v32, v30);
    v9 = *v33;
    v11 = sub_100012A94();
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        _NativeDictionary.copy()();
        if (v15)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v16 = v33;
      sub_1001C699C(v14, a2 & 1);
      v17 = *v16;
      v18 = sub_100012A94();
      if ((v15 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

      v11 = v18;
      if (v15)
      {
LABEL_11:
        v20 = *v33;
        sub_100011BAC(v30, v29);
        sub_100002C00(v30);

        v21 = (*(v20 + 56) + 32 * v11);
        sub_100002C00(v21);
        sub_100002C4C(v29, v21);
        goto LABEL_15;
      }
    }

    v22 = *v33;
    v22[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v22[6] + 16 * v11);
    *v23 = v8;
    v23[1] = v7;
    sub_100002C4C(v30, (v22[7] + 32 * v11));
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v22[2] = v26;
LABEL_15:
    ++v5;
    v6 += 48;
    a2 = 1;
    if (v28 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10010D854()
{
  v4 = v0;
  sub_100005930();
  v6 = v5;
  type metadata accessor for JSAccount();
  if ([v6 toObjectOfClass:swift_getObjCClassFromMetadata()])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  if (*(&v44 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = [*&v42[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] ams_DSID];
      if (v7)
      {
        v8 = v7;

        v9 = [v8 description];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = type metadata accessor for JSOnDeviceStorageDatabase();
        v14 = objc_allocWithZone(v13);
        v15 = sub_1001304F4(v3, v2, v1, v0, v10, v12);
        sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
        inited = swift_initStackObject();
        v17 = sub_100006D54(inited, xmmword_1001E61B0);
        v17[4].n128_u64[1] = v13;
        v17[3].n128_u64[0] = v15;
        v18 = v15;
        v19 = Dictionary.init(dictionaryLiteral:)();

        return v19;
      }
    }
  }

  else
  {
    sub_100002C5C(&v45);
  }

  v20 = String._bridgeToObjectiveC()();
  v21 = AMSError();

  v22 = objc_allocWithZone(type metadata accessor for JSError());
  v23 = sub_100007594();
  v24 = sub_1000505C8(v23);
  v25 = sub_100051018();

  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v26 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v26);
  v28 = *(v27 + 72);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v31 = type metadata accessor for JSDatabaseStore();
  v32 = *&v4[OBJC_IVAR____TtC14amsengagementd15JSDatabaseStore_runtime];
  *(&v46 + 1) = v31;
  *&v45 = v4;
  v33 = (v32 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  if (v33[1])
  {
    v34 = *v33;
    v35 = v33[1];
  }

  v36 = v4;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v45);
  LogInterpolation.init(stringLiteral:)();
  v37 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(&v46 + 1) = v37;
  *&v45 = v25;

  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v45);
  v38 = static os_log_type_t.error.getter();
  sub_1000036B0(v38);

  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  v39 = swift_initStackObject();
  v40 = sub_100003250(v39, xmmword_1001E61B0);
  v40[4].n128_u64[1] = v37;
  v40[3].n128_u64[0] = v25;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10010DD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100005930();
  v12 = v11;
  v13 = type metadata accessor for JSOnDeviceStorageDatabase();
  objc_allocWithZone(v13);

  v14 = sub_1001304F4(v8, v7, v6, a6, v12, v9);
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  v16 = sub_100006D54(inited, xmmword_1001E61B0);
  v16[4].n128_u64[1] = v13;
  v16[3].n128_u64[0] = v14;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10010DF64()
{
  type metadata accessor for AppDatabase();
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd15JSDatabaseStore_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config;
  sub_10001D804(*(v1 + 1));
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  sub_100006D54(inited, xmmword_1001E61B0);
  v3 = *(v1 + 48);
  v5 = *v1;
  v4 = *(v1 + 16);
  v12[2] = *(v1 + 32);
  v12[3] = v3;
  v12[0] = v5;
  v12[1] = v4;
  v6 = type metadata accessor for JSScheduleDatabase();
  v7 = objc_allocWithZone(v6);
  sub_10000F4A4(v12, v11);

  v8 = sub_100137840(v12);
  inited[4].n128_u64[1] = v6;
  inited[3].n128_u64[0] = v8;
  v9 = Dictionary.init(dictionaryLiteral:)();

  return v9;
}

id sub_10010E2D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSDatabaseStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010E418@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v18 - v7;
  if (static DeviceDetails.deviceIsRunningInternalBuild()())
  {
    type metadata accessor for Defaults();
    v9 = sub_1000571D4(0);
    if (v9)
    {
      v18[1] = v9;
      v10 = type metadata accessor for Date();
      v11 = swift_dynamicCast();
      sub_10000A7C0(v8, v11 ^ 1u, 1, v10);
      if (sub_100009F34(v8, 1, v10) != 1)
      {
        (*(*(v10 - 8) + 32))(a1, v8, v10);
        return sub_10000A7C0(a1, 0, 1, v10);
      }
    }

    else
    {
      v13 = type metadata accessor for Date();
      sub_10000A7C0(v8, 1, 1, v13);
    }

    sub_10000A00C(v8, &unk_100271EA0, &qword_1001E77F0);
  }

  v14 = [objc_opt_self() current];
  v15 = [v14 date];

  if (v15)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = type metadata accessor for Date();
  sub_10000A7C0(v6, v16, 1, v17);
  return sub_100042090(v6, a1, &unk_100271EA0, &qword_1001E77F0);
}

uint64_t sub_10010E740(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for URLResourceValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007B9A4(&qword_10026DA50, &qword_1001ECFF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  sub_10010E978(&v16 - v9);
  if (sub_100009F34(v10, 1, v2))
  {
    sub_10000A00C(v10, &qword_10026DA50, &qword_1001ECFF0);
    return 0;
  }

  (*(v3 + 16))(v6, v10, v2);
  v11 = sub_10000A00C(v10, &qword_10026DA50, &qword_1001ECFF0);
  v12 = a1(v11);
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  if (v14)
  {
    return 0;
  }

  return v12;
}

uint64_t sub_10010E978@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007B9A4(&qword_10026DA58, &qword_1001ECFF8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = OBJC_IVAR____TtC14amsengagementd8JSDevice____lazy_storage___fileSystemSizeResults;
  swift_beginAccess();
  sub_10003AF98(v1 + v10, v9, &qword_10026DA58, &qword_1001ECFF8);
  v11 = sub_10007B9A4(&qword_10026DA50, &qword_1001ECFF0);
  if (sub_100009F34(v9, 1, v11) != 1)
  {
    return sub_100042090(v9, a1, &qword_10026DA50, &qword_1001ECFF0);
  }

  sub_10000A00C(v9, &qword_10026DA58, &qword_1001ECFF8);
  sub_10010EB28(a1);
  sub_10003AF98(a1, v7, &qword_10026DA50, &qword_1001ECFF0);
  sub_10000A7C0(v7, 0, 1, v11);
  swift_beginAccess();
  sub_10010F070(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_10010EB28@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  sub_10007B9A4(&qword_10026DA60, &unk_1001ED000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E6580;
  *(inited + 32) = NSURLVolumeAvailableCapacityKey;
  *(inited + 40) = NSURLVolumeAvailableCapacityForImportantUsageKey;
  *(inited + 48) = NSURLVolumeAvailableCapacityForOpportunisticUsageKey;
  *(inited + 56) = NSURLVolumeTotalCapacityKey;
  v8 = NSURLVolumeAvailableCapacityKey;
  v9 = NSURLVolumeAvailableCapacityForImportantUsageKey;
  v10 = NSURLVolumeAvailableCapacityForOpportunisticUsageKey;
  v11 = NSURLVolumeTotalCapacityKey;
  sub_1001CA00C(inited);
  URL.resourceValues(forKeys:)();
  (*(v3 + 8))(v6, v2);

  v12 = type metadata accessor for URLResourceValues();
  return sub_10000A7C0(a1, 0, 1, v12);
}

uint64_t sub_10010ED50()
{
  v0 = [objc_opt_self() languages];
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t sub_10010EEB4(SEL *a1)
{
  v2 = objc_opt_self();
  result = sub_100026484(v2, a1);
  if (!v4)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

id sub_10010EF08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSDevice();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10010EF7C()
{
  sub_10010F00C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10010F00C()
{
  if (!qword_10026DA48)
  {
    sub_10007BC70(&qword_10026DA50, &qword_1001ECFF0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10026DA48);
    }
  }
}

uint64_t sub_10010F070(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026DA58, &qword_1001ECFF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010F0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = AMSError();

  v9 = objc_allocWithZone(type metadata accessor for JSError());
  return sub_1000505C8(v8);
}

id sub_10010F1D8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10010F3B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSError();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010F3E4(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_10026DA90, &qword_1001ED048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10010F44C(uint64_t a1)
{
  v4 = sub_10000B958(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100015308(v4, 1, sub_1000D4ECC);
  sub_10000AF78();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  v8 = *(type metadata accessor for URLQueryItem() - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_10000ABF8();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10010F548(uint64_t a1)
{
  v4 = sub_10000B958(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100015308(v4, 1, sub_1000D5584);
  sub_10000AF78();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100005944();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_10000ABF8();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10010F5FC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100015308(result, 1, sub_1000D5F20);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10007B9A4(&qword_10026BF68, &unk_1001EA280);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10010F6E8()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100287808 = result;
  return result;
}

uint64_t sub_10010F948()
{
  v1 = OBJC_IVAR____TtC14amsengagementd11JSExtension____lazy_storage___extensionLoader;
  if (*(v0 + OBJC_IVAR____TtC14amsengagementd11JSExtension____lazy_storage___extensionLoader))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14amsengagementd11JSExtension____lazy_storage___extensionLoader);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ExtensionLoader();
    sub_100002FB8();
    swift_allocObject();
    v2 = sub_1000F4FE0();
    v4 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_10010F9D4()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v36 = v7;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for JSExtension.RequestOptions();
  v9 = sub_100002CFC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v9);
  v15 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v35 - v17;
  v19 = *(v16 + 28);
  v20 = enum case for DispatchQoS.QoSClass.unspecified(_:);
  v21 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002DDC(v21);
  (*(v22 + 104))(&v18[v19], v20);

  sub_100052D94(v2, &v39);

  if (v40)
  {
    v23 = swift_dynamicCast();
    if (v23)
    {
      v24 = v38;
    }

    else
    {
      v24 = 0;
    }

    v25 = v23 ^ 1;
  }

  else
  {
    sub_10000A00C(&v39, &qword_10026D350, &qword_1001E6050);
    v24 = 0;
    v25 = 1;
  }

  *v18 = v24;
  v26 = *(v0 + OBJC_IVAR____TtC14amsengagementd11JSExtension_runtime);
  v18[8] = v25;
  v27 = *(v26 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
  if (v27)
  {
    v28 = *(v26 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
    v29 = *(v26 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
  }

  else
  {
    v28 = 0;
  }

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100011BAC(v4, &v39);
  sub_100113438(v18, v15);
  v31 = (*(v11 + 80) + 88) & ~*(v11 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v28;
  v33 = v36;
  *(v32 + 32) = v27;
  *(v32 + 40) = v33;
  *(v32 + 48) = v6;
  sub_100002C4C(&v39, (v32 + 56));
  sub_10011349C(v15, v32 + v31);
  *(v32 + ((v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

  sub_10011F39C("request(_:_:_:)", 0xFuLL, 2);

  sub_1000075BC();
  sub_100112E80(v18, v34);

  sub_100005F14();
}

uint64_t sub_10010FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v51 = a5;
  v49 = a2;
  v50 = type metadata accessor for JSCallable();
  v14 = *(v50 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v50);
  v16 = sub_10007B9A4(&qword_10026DAE0, &qword_1001ED088);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v44 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v46 = a3;
    v47 = a6;
    sub_100113438(a10, v19);
    v22 = type metadata accessor for JSExtension.RequestOptions();
    sub_10000A7C0(v19, 0, 1, v22);
    v48 = sub_100111F48(a7, a8, a9, v19);
    sub_10000A00C(v19, &qword_10026DAE0, &qword_1001ED088);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = v14;
    v45 = *(v14 + 16);
    v25 = v50;
    v45(&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v50);
    v26 = v21;
    v27 = *(v24 + 80);
    v28 = swift_allocObject();
    v49 = v28;
    *(v28 + 16) = v23;
    v29 = *(v24 + 32);
    v29(v28 + ((v27 + 24) & ~v27), &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45(&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v46, v25);
    v31 = (v27 + 40) & ~v27;
    v32 = swift_allocObject();
    v33 = v47;
    v32[2] = v51;
    v32[3] = v33;
    v32[4] = v30;
    v29(v32 + v31, &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
    v34 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);

    v35 = static OS_dispatch_queue.main.getter();
    v52[3] = v34;
    v52[4] = &protocol witness table for OS_dispatch_queue;
    v52[0] = v35;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(v52);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v37 = *(type metadata accessor for LogInterpolation() - 8);
    v38 = *(v37 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v40 = static os_log_type_t.error.getter();
    sub_1000036B0(v40);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v42 = sub_10010F0F0(0, 0xD000000000000018, 0x80000001001FAFC0, 0x6E617620666C6553, 0xED00006465687369);
    v43 = sub_100051018();

    *(v41 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v41 + 32) = v43;
    sub_10005C768(v41);
  }
}

uint64_t sub_10011020C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for JSCallable();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_10011F068("request(_:_:_:)", 15, 2, v15);

    if (v16)
    {
      sub_100003CA8(v15, v16);
      (*(v6 + 16))(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
      sub_1000F0DD0(a1, v14);
      v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v11 = swift_allocObject();
      (*(v6 + 32))(v11 + v10, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      v12 = (v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
      v13 = v14[1];
      *v12 = v14[0];
      v12[1] = v13;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v15);
    }

    else
    {
      return sub_10000A00C(v15, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_100110404(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  sub_100011BAC(a2, v3 + 32);
  sub_10005C768(v3);
}

uint64_t sub_100110488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = type metadata accessor for JSCallable();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v24);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = *(type metadata accessor for LogInterpolation() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  type metadata accessor for JSExtension();
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.init(stringLiteral:)();
  v25[0] = a1;
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  v11 = String.init<A>(describing:)();
  v26 = &type metadata for String;
  v25[0] = v11;
  v25[1] = v12;
  static LogInterpolation.safe(_:)();
  sub_10000A00C(v25, &qword_10026D350, &qword_1001E6050);
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_10011F068("request(_:_:_:)", 15, 2, v25);

    if (v26)
    {
      sub_100003CA8(v25, v26);
      v16 = v22;
      v17 = v24;
      (*(v6 + 16))(v22, v23, v24);
      v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      (*(v6 + 32))(v20 + v18, v16, v17);
      *(v20 + v19) = a1;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v25);
    }

    else
    {
      return sub_10000A00C(v25, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

void sub_1001108F4()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10007B9A4(&qword_10026DAE0, &qword_1001ED088);
  v9 = sub_100003D10(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v30 - v12;
  v14 = type metadata accessor for JSExtension.RequestOptions();
  v15 = sub_100002DDC(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100002DEC();
  v20 = v19 - v18;
  v22 = *(v21 + 20);
  v23 = enum case for DispatchQoS.QoSClass.unspecified(_:);
  v24 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002DDC(v24);
  (*(v25 + 104))(v20 + v22, v23);

  sub_100052D94(v1, &v31);

  if (v32)
  {
    v26 = swift_dynamicCast();
    v27 = v30[1];
    if (!v26)
    {
      v27 = 0;
    }

    v28 = v26 ^ 1;
  }

  else
  {
    sub_10000A00C(&v31, &qword_10026D350, &qword_1001E6050);
    v27 = 0;
    v28 = 1;
  }

  *v20 = v27;
  *(v20 + 8) = v28;
  sub_100113438(v20, v13);
  sub_10000A7C0(v13, 0, 1, v14);
  sub_100111F48(v7, v5, v3, v13);
  sub_10000A00C(v13, &qword_10026DAE0, &qword_1001ED088);
  sub_1001B5F34(&v31);

  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  sub_100011BAC(&v31, inited + 48);
  Dictionary.init(dictionaryLiteral:)();
  sub_100112ED8(&v31);
  sub_100112E80(v20, type metadata accessor for JSExtension.RequestOptions);
  sub_100005F14();
}

void sub_100110F70()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v41 = v5;
  v42 = v6;
  v8 = v7;
  v40 = v9;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for Date();
  v11 = sub_100002EF0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v11);
  v17 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  Date.init()();
  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v23;
    v39 = v22;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v37 = *&v2[OBJC_IVAR____TtC14amsengagementd11JSExtension_runtime];
  sub_100011BAC(v4, v44);
  (*(v13 + 16))(v17, v19, v0);
  v24 = (*(v13 + 80) + 88) & ~*(v13 + 80);
  v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v40;
  *(v26 + 16) = v2;
  *(v26 + 24) = v27;
  *(v26 + 32) = v8;
  sub_100002C4C(v44, (v26 + 40));
  v28 = v41;
  v41 = v19;
  v29 = v0;
  v30 = v42;
  *(v26 + 72) = v28;
  *(v26 + 80) = v30;
  (*(v13 + 32))(v26 + v24, v17, v29);
  v31 = v37;
  *(v26 + v25) = v37;
  v32 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v33 = v38;
  *v32 = v39;
  v32[1] = v33;
  v34 = v2;

  v35 = v31;
  sub_100111BE0();

  (*(v13 + 8))(v41, v29);
  sub_100005F14();
}

void (*sub_1001111A8(void (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10))(void, void)
{
  v60 = a8;
  v61 = a1;
  v54 = a7;
  v56 = a5;
  v57 = a6;
  v51 = a2;
  v52 = a3;
  v58 = a9;
  v59 = a10;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v49 = v11;
  v53 = *(v11 - 8);
  v12 = v53;
  v13 = *(v53 + 64);
  __chkstk_darwin(v11);
  v55 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10007B9A4(&qword_10026DAE0, &qword_1001ED088);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v49 - v21;
  v23 = type metadata accessor for JSExtension.RequestOptions();
  v24 = *(v23 + 20);
  v50 = *(v12 + 104);
  v50(&v22[v24], enum case for DispatchQoS.QoSClass.unspecified(_:), v11);
  *v22 = 0x403E000000000000;
  v22[8] = 0;
  sub_10000A7C0(v22, 0, 1, v23);
  v26 = v51;
  v25 = v52;
  v61 = sub_100111F48(v51, v52, a4, v22);
  sub_10000A00C(v22, &qword_10026DAE0, &qword_1001ED088);
  sub_100011BAC(a4, &v62);
  (*(v16 + 16))(v18, v54, v15);
  v27 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v28 = (v17 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v25;
  v30 = v57;
  *(v29 + 32) = v56;
  *(v29 + 40) = v30;
  sub_100002C4C(&v62, (v29 + 48));
  (*(v16 + 32))(v29 + v27, v18, v15);
  v31 = v60;
  *(v29 + v28) = v60;
  v32 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
  v33 = v59;
  *v32 = v58;
  v32[1] = v33;
  v34 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v35 = v55;
  v36 = v49;
  v50(v55, enum case for DispatchQoS.QoSClass.default(_:), v49);

  v37 = v31;
  v38 = static OS_dispatch_queue.global(qos:)();
  (*(v53 + 8))(v35, v36);
  v63 = v34;
  v64 = &protocol witness table for OS_dispatch_queue;
  *&v62 = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_100113340;
  *(v39 + 24) = v29;
  v40 = objc_allocWithZone(NSLock);
  v41 = v38;

  v42 = [v40 init];
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v39;
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v44 + 24) = v39;
  v45 = v42;
  swift_retain_n();
  v46 = v45;
  v47 = v61;
  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(&v62);
  return v47;
}

void sub_10011164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ED060;
  *(inited + 32) = 0x6E696769726FLL;
  *(inited + 40) = 0xE600000000000000;
  strcpy((inited + 48), "amsengagementd");
  *(inited + 63) = -18;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x707954746E657665;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = 0x657645636E797341;
  *(inited + 104) = 0xEA0000000000746ELL;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x64496E6967756C70;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = a3;
  *(inited + 152) = a4;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x4974736575716572;
  *(inited + 184) = 0xE900000000000064;
  *(inited + 192) = a5;
  *(inited + 200) = a6;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x4474736575716572;
  *(inited + 232) = 0xEB00000000617461;
  sub_100011BAC(a7, inited + 240);
  *(inited + 272) = 0x64657461657263;
  *(inited + 280) = 0xE700000000000000;

  Date.timeIntervalSince1970.getter();
  *(inited + 312) = &type metadata for Double;
  *(inited + 288) = v18;
  v19 = Dictionary.init(dictionaryLiteral:)();
  sub_1000E0BFC(a1, &v35, &qword_10026C928, &unk_1001EBE08);
  if (*(&v36 + 1))
  {
    v37 = v35;
    v38 = v36;
    sub_100011BAC(&v37, &v35);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000DFC4();
    sub_100112ED8(&v37);
  }

  else
  {
    sub_10000A00C(&v35, &qword_10026C928, &unk_1001EBE08);
  }

  if (a2)
  {
    v20 = objc_allocWithZone(type metadata accessor for JSError());
    swift_errorRetain();
    swift_errorRetain();
    v21 = sub_1000505C8(a2);
    v22 = sub_100051018();

    *(&v38 + 1) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *&v37 = v22;
    sub_100002C4C(&v37, &v35);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000DFC4();
  }

  v23 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
  sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1001E61B0;
  sub_10005DFA4(v19);
  v26 = v25;

  *(v24 + 32) = v26;
  sub_1000F4334(v24, v23);
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1001E8AB0;
  v28 = v27;
  *(a9 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  *(v28 + 32) = sub_100092378();
  sub_1000F43B4(v28, v23);
  v29 = [objc_opt_self() currentProcess];
  [v23 setClientInfo:v29];

  if (a11)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  [v23 setLogKey:{v30, a1}];

  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v31 = sub_10002411C();
  v32 = [objc_allocWithZone(AMSEngagement) initWithBag:v31];

  v33 = [v32 _enqueue:v23];
}

void sub_100111BE0()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100002EF0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  v14 = v13 - v12;
  v25 = type metadata accessor for DispatchQoS();
  v15 = sub_100002CC4(v25);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_100002DEC();
  v22 = v21 - v20;
  if (qword_100268690 != -1)
  {
    sub_1000064B0();
  }

  v23 = swift_allocObject();
  v23[2] = v1;
  v23[3] = v5;
  v23[4] = v3;
  v26[4] = sub_100112FA4;
  v26[5] = v23;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 1107296256;
  v26[2] = sub_100005E50;
  v26[3] = &unk_10024C560;
  v24 = _Block_copy(v26);

  static DispatchQoS.unspecified.getter();
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v9 + 8))(v14, v0);
  (*(v17 + 8))(v22, v25);

  sub_100005F14();
}

void (*sub_100111F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(void, void)
{
  v5 = v4;
  v41 = a3;
  v42 = a1;
  v43 = a2;
  v7 = type metadata accessor for ExtensionLoader.RequestOptions();
  v8 = sub_100002DDC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  v13 = v12 - v11;
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = sub_100002CC4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_100002DEC();
  v22 = v21 - v20;
  v23 = sub_10007B9A4(&qword_10026DAE0, &qword_1001ED088);
  v24 = sub_100003D10(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = (&v40 - v27);
  sub_1000E0BFC(a4, &v40 - v27, &qword_10026DAE0, &qword_1001ED088);
  v29 = type metadata accessor for JSExtension.RequestOptions();
  if (sub_100009F34(v28, 1, v29) == 1)
  {
    sub_10000A00C(v28, &qword_10026DAE0, &qword_1001ED088);
  }

  else
  {
    v30 = *v28;
    v31 = *(v28 + 8);
    sub_1000075BC();
    sub_100112E80(v28, v32);
    if (v31 != 1)
    {
      goto LABEL_5;
    }
  }

  v30 = sub_10002F8B8(*(*(v5 + OBJC_IVAR____TtC14amsengagementd11JSExtension_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48));
LABEL_5:
  sub_10007B9A4(&qword_10026DAE8, &qword_1001ED090);
  Promise.__allocating_init()();
  v33 = sub_1000E9CD8(0xD000000000000011, 0x80000001001FAF20);

  if (*(*(v5 + OBJC_IVAR____TtC14amsengagementd11JSExtension_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config))
  {
    v34 = &enum case for DispatchQoS.QoSClass.userInteractive(_:);
  }

  else
  {
    v34 = &enum case for DispatchQoS.QoSClass.userInitiated(_:);
  }

  v35 = v14;
  (*(v17 + 104))(v22, *v34, v14);
  (*(v17 + 16))(v13, v22, v14);
  *(v13 + *(v7 + 20)) = v30;
  v36 = qword_100268830;

  if (v36 != -1)
  {
    swift_once();
  }

  sub_100011C54(0x6F69736E65747865, 0xEF726564616F4C6ELL);
  sub_10010F948();
  v37 = sub_1000F52E4(v42, v43);

  v38 = *(v5 + OBJC_IVAR____TtC14amsengagementd11JSExtension____lazy_storage___extensionLoader);

  sub_1000F57B0(v41, v37, v13, 0, sub_100112E78, v33);

  sub_100112E80(v13, type metadata accessor for ExtensionLoader.RequestOptions);
  (*(v17 + 8))(v22, v35);
  return v33;
}

uint64_t sub_100112364(uint64_t a1, uint64_t a2)
{
  sub_1000E0BFC(a1, &v6, &qword_10026D350, &qword_1001E6050);
  if (v7)
  {
    sub_100002C4C(&v6, v8);
    sub_100011BAC(v8, &v6);
    Promise.resolve(_:)();
    sub_100112ED8(&v6);
    sub_100002C00(v8);
  }

  else
  {
    sub_10000A00C(&v6, &qword_10026D350, &qword_1001E6050);
    v3 = objc_allocWithZone(type metadata accessor for JSError());
    swift_errorRetain();
    v4 = sub_1000505C8(a2);
    Promise.reject(_:)();
  }

  if (qword_100268830 != -1)
  {
    swift_once();
  }

  return sub_1001AE448(0x6F69736E65747865, 0xEF726564616F4C6ELL);
}

uint64_t sub_100112498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100268698 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&qword_10026BF60, &qword_1001EA278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(inited + 32) = sub_100112FB0;
  *(inited + 40) = v6;
  swift_beginAccess();

  sub_10010F5FC(inited);
  result = swift_endAccess();
  if (*(off_10026DAA0 + 2) == 1)
  {
    return sub_1001125A8();
  }

  return result;
}

uint64_t sub_1001125A8()
{
  v2 = v1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = sub_100002EF0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v11 = v10 - v9;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = sub_100002CC4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100002DEC();
  v20 = (v19 - v18);
  if (qword_100268690 != -1)
  {
    sub_1000064B0();
  }

  v21 = qword_100287808;
  *v20 = qword_100287808;
  (*(v15 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v12);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v20, v12);
  if (v21)
  {
    if (qword_100268698 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  result = swift_beginAccess();
  if (*(off_10026DAA0 + 2))
  {
    v25 = *(off_10026DAA0 + 4);
    v24 = *(off_10026DAA0 + 5);

    v25(v38, v26);

    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    v28 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    (*(v6 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v0);
    v29 = static OS_dispatch_queue.global(qos:)();
    (*(v6 + 8))(v11, v0);
    v38[3] = v28;
    v38[4] = &protocol witness table for OS_dispatch_queue;
    v38[0] = v29;
    sub_100002FB8();
    v30 = swift_allocObject();
    *(v30 + 16) = sub_100112FE0;
    *(v30 + 24) = v27;
    v31 = objc_allocWithZone(NSLock);
    v32 = v29;

    v33 = [v31 init];
    sub_100002FB8();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v30;
    sub_100002FB8();
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v30;
    v36 = v33;
    swift_retain_n();
    v37 = v36;
    Promise.then(perform:orCatchError:on:)();

    return sub_100002C00(v38);
  }

  return result;
}

uint64_t sub_10011295C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100268690 != -1)
  {
    swift_once();
  }

  v16[1] = qword_100287808;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  aBlock[4] = sub_100112FF8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_10024C678;
  v14 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v17);
}

uint64_t sub_100112C44()
{
  if (qword_100268698 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100112CD8();
  swift_endAccess();

  return sub_1001125A8(v0);
}

uint64_t sub_100112CD8()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);

    sub_100113240(0, 1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100112D6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd11JSExtension____lazy_storage___extensionLoader);
}

id sub_100112DAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSExtension.RequestOptions()
{
  result = qword_10026DB50;
  if (!qword_10026DB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100112E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002DDC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void (*sub_100112F08())(void, void)
{
  v1 = type metadata accessor for Date();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000326C();
  return sub_1001111A8(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + 40, *(v0 + 72), *(v0 + 80), v0 + v9, *(v0 + v8), *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100112FB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

id sub_100112FE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000EE3B8();
}

id sub_100112FF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000EE5F4();
}

uint64_t sub_100113000(uint64_t a1)
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
    _CocoaArrayWrapper.endIndex.getter();
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
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1001130A0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100015308(result, 1, sub_10000DE9C);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_10004F7A8((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100113190(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *v2;
  if (sub_1000116AC(*v2) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = 1 - v6;
  if (__OFSUB__(1, v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_10004369C(v5);
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (v9)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_100113000(v10);

  sub_10018B91C();
}

uint64_t sub_100113240(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100015308(result, 1, sub_1000D5F20);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = v9 + 16 * v5;
  sub_10007B9A4(&qword_10026BF68, &unk_1001EA280);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_10004F7A4(v9 + 16 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100113340(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  sub_100002CFC(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v11 = *(v9 + 64);
  sub_10000326C();
  sub_10011164C(a1, a2, v2[2], v2[3], v2[4], v2[5], (v2 + 6), v2 + v13, *(v2 + v12), *(v2 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1001133FC()
{
  v1 = *(v0 + 24);

  sub_100002FB8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100113438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSExtension.RequestOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011349C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSExtension.RequestOptions();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100113500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for JSExtension.RequestOptions();
  sub_100002CFC(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 88) & ~*(v9 + 80);
  v13 = *(v11 + 64);
  sub_10000326C();
  v17 = *(v3 + v14);
  return sub_10010FCC0(a1, a2, a3, v3[2], v3[3], v3[4], v3[5], v3[6], (v3 + 7), v3 + v15);
}

uint64_t sub_1001135C0(uint64_t a1)
{
  v3 = type metadata accessor for JSCallable();
  sub_100003D10(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_10011020C(a1, v5, v6);
}

uint64_t sub_100113630(uint64_t a1)
{
  v3 = type metadata accessor for JSCallable();
  sub_100003D10(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_100110488(a1, v5, v6, v7, v8);
}

uint64_t sub_1001136A4()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000326C();
  v10 = *(v0 + v9);

  return sub_100104450(v0 + v8, v10);
}

uint64_t sub_100113720()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000326C();

  return sub_100110404(v0 + v8, v0 + v9);
}

void sub_1001137D4()
{
  sub_100113858();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DispatchQoS.QoSClass();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100113858()
{
  if (!qword_10026DB60)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10026DB60);
    }
  }
}

uint64_t sub_1001138B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return sub_100006CA4();
}

uint64_t sub_1001138D0()
{
  sub_1000061B4();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = sub_10007B9A4(&unk_10026CD20, &unk_1001E7CC0);
  v5 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1001139DC;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, &type metadata for String, v4, 0, 0, &unk_1001ED308, v3, &type metadata for String);
}

uint64_t sub_1001139DC()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[8];

    v13 = v3[2];
    v14 = v3[3];
    v15 = *(v7 + 8);

    return v15(v13, v14);
  }
}

uint64_t sub_100113B00()
{
  sub_100004768();
  v1 = *(v0 + 64);

  sub_100002D8C();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_100113B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100113B80, 0, 0);
}

uint64_t sub_100113B80()
{
  sub_1000061B4();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_100002BC0(0, &qword_10026DBE0, FAFamilyCircle_ptr);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = sub_10007B9A4(&qword_10026DBE8, &qword_1001ED120);
  v6 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_100113CA4;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v3, v5, 0, 0, &unk_1001ED118, v4, v3);
}