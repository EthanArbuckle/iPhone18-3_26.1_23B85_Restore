Swift::Void __swiftcall ByteBuffer._moveWriterIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 12);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v4;
  }
}

void ByteBuffer._setBytes(_:at:)(uint64_t a1, uint64_t a2, Swift::UInt32 a3)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = a3 + v4;
  if (__CFADD__(a3, v4))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100062140(v5 - *(v3 + 16));
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v7, v8);
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if (HIDWORD(v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(v4, a3);
  v9 = *(v3 + 16);
  v10 = *(v3 + 20);
  v11 = *(v3 + 22);
  sub_100061FC4();
  swift_beginAccess();
  if (v9 >= (v11 | (v10 << 8)))
  {
    sub_100062134();
    sub_10005E808(a3);
    UnsafeMutableRawBufferPointer.init(fastRebase:)();
    sub_1001F7598();
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 20);
  v7 = *(v3 + 22);
  sub_100061FC4();
  result = swift_beginAccess();
  if (v5 < (v7 | (v6 << 8)))
  {
    __break(1u);
  }

  else
  {
    sub_100062134();
    sub_10005E808(a3);
    UnsafeMutableRawBufferPointer.init(fastRebase:)();
    return sub_1001F7598();
  }

  return result;
}

uint64_t ByteBuffer._slicedStorageBuffer.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_100061FC4();
  result = swift_beginAccess();
  v5 = (a3 >> 24) & 0xFFFF00 | BYTE6(a3);
  if (a3 >= v5)
  {
    return sub_1000621F0(v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005F8C8(uint64_t result, int64_t a2, int64_t a3, Swift::UInt32 a4)
{
  v5 = v4;
  v8 = result;
  v9 = a3 - a2;
  if (a3 < a2)
  {
    v9 += *(result + 16);
  }

  v10 = a4 + v9;
  if (!__CFADD__(a4, v9))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = *(v5 + 16);
      v12 = v10 >= v11;
      v13 = v10 - v11;
      if (v12)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v14, 0);
    }

    v15 = sub_1000605B4(v9, v5, a4);
    result = sub_10006D5E8(v44, v15, v9, v8, a2, a3);
    v16 = v45;
    if ((v45 & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

    if (HIDWORD(v45))
    {
      goto LABEL_48;
    }

    v17 = result;
    v42 = v45;
    v18 = v46;
    v19 = v47;
    v20 = v48;
    v21 = v44[1];
    v41 = v44[0];
    v40 = v44[0] + 32;
    v22 = v49;

    v23 = v19 == -1;
    for (i = v20 == 255; ; i = 1)
    {
      if (v18 == v42 && v23 && i && (((v16 < v21) ^ v22) & 1) != 0)
      {

        return v17;
      }

      v25 = *(v41 + 16);
      if (v25 <= v18)
      {
        break;
      }

      v26 = (v40 + 2 * v18);
      if (v26[1])
      {
        goto LABEL_49;
      }

      v18 = (v25 + 0x1FFFFFFFFLL) & (v18 + 1);
      if (HIDWORD(v18))
      {
        goto LABEL_37;
      }

      v27 = *v26;
      v22 = v18 >= v21;
      v49 = v18 >= v21;
      v28 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_38;
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      if (HIDWORD(v28))
      {
        goto LABEL_40;
      }

      v29 = v17;
      v30 = *(v5 + 20);
      v31 = *(v5 + 22);
      v32 = v31 | (v30 << 8);
      v33 = v32 + a4;
      if (__CFADD__(v32, a4))
      {
        goto LABEL_41;
      }

      v34 = v33 + v28;
      if (__CFADD__(v33, v28))
      {
        goto LABEL_42;
      }

      v35 = *(v5 + 16);
      v36 = *v5;
      if (v35 < v34)
      {
        v37 = *(v36 + 16);
        if (v37 >= v34)
        {
          if (v37 < v32)
          {
            goto LABEL_44;
          }

          *(v5 + 16) = v37;
        }

        else
        {
          if (__CFADD__(a4, v28))
          {
            goto LABEL_43;
          }

          if (v32)
          {
            if (v35 < v32)
            {
              goto LABEL_45;
            }

            v38 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v32 | (v35 << 32), a4 + v28);

            v39 = v38;
            *v5 = v38;
            v36 = v38;
          }

          else
          {
            ByteBuffer._Storage.reallocStorage(capacity:)(a4 + v28);
            v39 = *v5;
          }

          v31 = 0;
          v30 = 0;
          *(v5 + 16) = *(v36 + 16);
          *(v5 + 20) = 0;
          *(v5 + 22) = 0;
          v36 = v39;
        }
      }

      v18 = v18;
      result = swift_beginAccess();
      *(*(v36 + 24) + (v31 | (v30 << 8)) + a4 + v29) = v27;
      v17 = v29 + 1;
      v23 = 1;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_10005FBA4(Swift::UInt32 a1)
{
  v3 = sub_1000183C4(&qword_1002AFB18);
  result = sub_1000183C4(&qword_1002AFA40);
  if (v3 == result)
  {
    __break(1u);
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100062140(a1 - *(v1 + 16));
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v5, v6);
    }

    sub_1000605B4(0, v1, a1);
    return 0;
  }

  return result;
}

void sub_10005FC34(uint64_t a1, unint64_t a2, Swift::UInt32 a3)
{
  if (sub_1000183C4(&qword_1002AFA40) == &type metadata for String.UTF8View)
  {
    goto LABEL_20;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = sub_1001F6CF8();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a3 + v7;
  if (__CFADD__(a3, v7))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100062024();
    v11 = v9 >= v10;
    v12 = v9 - v10;
    if (!v11)
    {
      goto LABEL_18;
    }

    v11 = v8 >= v9;
    v13 = v8 - v9;
    if (!v11)
    {
      v13 = 0;
    }

    if (__CFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v12 + v13, 0);
  }

  sub_1000605B4(v7, v3, a3);
  sub_1001F77C8();
  if (v14)
  {
LABEL_21:
    __break(1u);
  }
}

void sub_10005FD28()
{
  v4 = sub_1000621AC();
  v5 = sub_100062038(v4);
  __chkstk_darwin(v5, v6);
  sub_100062084(v7, v30);
  if (sub_1000183C4(&qword_1002AFA40) == &type metadata for Data)
  {
    goto LABEL_47;
  }

  v8 = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_45;
      }

      v8 = HIDWORD(v3) - v3;
LABEL_7:
      v11 = v1 + v8;
      if (__CFADD__(v1, v8))
      {
        goto LABEL_42;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_15;
      }

      v12 = *(v0 + 16);
      v13 = *(v0 + 22) | (*(v0 + 20) << 8);
      v14 = v12 >= v13;
      v15 = v12 - v13;
      if (!v14)
      {
        goto LABEL_43;
      }

      v14 = v11 >= v12;
      v16 = v11 - v12;
      if (!v14)
      {
        v16 = 0;
      }

      if (__CFADD__(v15, v16))
      {
        goto LABEL_44;
      }

      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v15 + v16, 0);
LABEL_15:
      v17 = sub_1000605B4(v8, v0, v1);
      v18 = sub_100062188(v17);
      sub_100061F5C();
      break;
    case 2uLL:
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_7;
      }

      goto LABEL_46;
    case 3uLL:
      goto LABEL_7;
    default:
      v8 = BYTE6(v2);
      goto LABEL_7;
  }

  while (1)
  {
    sub_100062234();
    sub_1001F7578();
    if (v32)
    {
      break;
    }

    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      JUMPOUT(0x10005FFB8);
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    if (HIDWORD(v19))
    {
      goto LABEL_36;
    }

    sub_1000620D0();
    if (__CFADD__(v20, v1))
    {
      goto LABEL_37;
    }

    if (__CFADD__(v20 + v1, v21))
    {
      goto LABEL_38;
    }

    sub_100062050();
    if (!v14)
    {
      v26 = *(v31 + 16);
      if (v26 >= v25)
      {
        if (v26 < v22)
        {
          goto LABEL_39;
        }

        *(v0 + 16) = v26;
      }

      else
      {
        if (__CFADD__(v1, v23))
        {
          goto LABEL_40;
        }

        if (v22)
        {
          if (v24 < v22)
          {
            goto LABEL_41;
          }

          v27 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v22 | (v24 << 32), v1 + v23);

          *v0 = v27;
        }

        else
        {
          ByteBuffer._Storage.reallocStorage(capacity:)(v1 + v23);
        }

        sub_100062240();
        sub_100061FD4();
      }
    }

    sub_100047940();
    swift_beginAccess();
    sub_100062008();
  }

  v28 = sub_100062208();
  v29(v28);
  sub_100037B00();
}

uint64_t sub_10005FFC8(char a1, Swift::UInt32 a2)
{
  v5 = sub_1000183C4(&qword_1002AFB28);
  result = sub_1000183C4(&qword_1002AFA40);
  if (v5 == result)
  {
    goto LABEL_7;
  }

  if (a2 == -1)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100062140(a2 + 1 - *(v2 + 16));
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v7, v8);
  }

  *sub_1000605B4(1uLL, v2, a2) = a1;
  return 1;
}

void sub_10006006C()
{
  v4 = sub_1000621AC();
  v5 = sub_100062038(v4);
  __chkstk_darwin(v5, v6);
  sub_100062084(v7, v27);
  if (sub_1000183C4(&qword_1002AFA40) == &type metadata for Data)
  {
    goto LABEL_40;
  }

  v8 = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_38;
      }

      v8 = HIDWORD(v3) - v3;
LABEL_7:
      if (__CFADD__(v1, v8))
      {
        goto LABEL_37;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100062140(v1 + v8 - *(v0 + 16));
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v11, v12);
      }

      v13 = sub_1000605B4(v8, v0, v1);
      v14 = sub_100062188(v13);
      sub_100061F5C();
      break;
    case 2uLL:
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_7;
      }

      goto LABEL_39;
    case 3uLL:
      goto LABEL_7;
    default:
      v8 = BYTE6(v2);
      goto LABEL_7;
  }

  while (1)
  {
    sub_100062234();
    sub_1001F7578();
    if (v29)
    {
      break;
    }

    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      JUMPOUT(0x1000602D4);
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

    if (HIDWORD(v15))
    {
      goto LABEL_31;
    }

    sub_1000620D0();
    if (__CFADD__(v16, v1))
    {
      goto LABEL_32;
    }

    if (__CFADD__(v16 + v1, v17))
    {
      goto LABEL_33;
    }

    sub_100062050();
    if (!v22)
    {
      v23 = *(v28 + 16);
      if (v23 >= v21)
      {
        if (v23 < v18)
        {
          goto LABEL_34;
        }

        *(v0 + 16) = v23;
      }

      else
      {
        if (__CFADD__(v1, v19))
        {
          goto LABEL_35;
        }

        if (v18)
        {
          if (v20 < v18)
          {
            goto LABEL_36;
          }

          v24 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v18 | (v20 << 32), v1 + v19);

          *v0 = v24;
        }

        else
        {
          ByteBuffer._Storage.reallocStorage(capacity:)(v1 + v19);
        }

        sub_100062240();
        sub_100061FD4();
      }
    }

    sub_100047940();
    swift_beginAccess();
    sub_100062008();
  }

  v25 = sub_100062208();
  v26(v25);
  sub_100037B00();
}

void ByteBuffer._setSlowPath<A>(bytes:at:)(uint64_t a1, Swift::UInt32 a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_100062038(AssociatedTypeWitness);
  v9 = v8;
  __chkstk_darwin(v7, v10);
  v12 = &v33 - v11;
  if (sub_1000183C4(&qword_1002AFA40) == a3)
  {
    sub_100037B00();

    sub_10005F8C8(v28, v29, v30, v31);
  }

  else
  {
    v13 = sub_1001F6DD8();
    if (!__CFADD__(a2, v13))
    {
      v34 = v9;
      v36 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100062140(a2 + v13 - *(v3 + 16));
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v14, v15);
      }

      sub_1000605B4(v13, v3, v36);
      v16 = sub_1001F74C8();
      sub_100062234();
      v17 = v35;
      swift_getAssociatedConformanceWitness();
      while (1)
      {
        sub_100062234();
        sub_1001F7578();
        if (v37)
        {
          (*(v34 + 8))(v12, v17);
          sub_100037B00();
          return;
        }

        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        if (HIDWORD(v18))
        {
          goto LABEL_29;
        }

        sub_1000620D0();
        if (__CFADD__(v19, v36))
        {
          goto LABEL_30;
        }

        if (__CFADD__(v19 + v36, v20))
        {
          goto LABEL_31;
        }

        sub_100062050();
        if (!v25)
        {
          v26 = *(v12 + 4);
          if (v26 >= v24)
          {
            if (v26 < v21)
            {
              goto LABEL_32;
            }

            *(v3 + 16) = v26;
          }

          else
          {
            if (__CFADD__(a2, v22))
            {
              goto LABEL_33;
            }

            if (v21)
            {
              if (v23 < v21)
              {
                goto LABEL_34;
              }

              v27 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v21 | (v23 << 32), a2 + v22);

              *v3 = v27;
            }

            else
            {
              ByteBuffer._Storage.reallocStorage(capacity:)(a2 + v22);
            }

            sub_100062240();
            sub_100061FD4();
            v17 = v35;
          }
        }

        sub_100047940();
        swift_beginAccess();
        sub_100062008();
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
  }
}

unint64_t sub_1000605B4(unint64_t result, uint64_t *a2, Swift::UInt32 at)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    ByteBuffer._ensureAvailableCapacity(_:at:)(result, at);
    v5 = *a2;
    v6 = *(a2 + 10);
    v7 = *(a2 + 22);
    swift_beginAccess();
    return *(v5 + 24) + (v7 | (v6 << 8)) + at;
  }

  __break(1u);
  return result;
}

void ByteBuffer._setBytes<A>(_:at:)(uint64_t a1, Swift::UInt32 a2, uint64_t a3)
{
  sub_1001F6DE8();
  if (v6)
  {
    ByteBuffer._setSlowPath<A>(bytes:at:)(a1, a2, a3);
  }
}

void sub_1000606E0(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::UInt32 a3@<W3>, _DWORD *a4@<X8>)
{
  if (a1)
  {
    v5 = a2 + a1;
  }

  else
  {
    v5 = 0;
  }

  ByteBuffer._setBytes(_:at:)(a1, v5, a3);
  *a4 = v6;
}

uint64_t ByteBuffer.writableBytes.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 24) & 0xFFFF00 | BYTE6(a3);
  v4 = a3 >= v3;
  v5 = a3 - v3;
  if (v4)
  {
    result = v5 - HIDWORD(a2);
    if (v5 >= HIDWORD(a2))
    {
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.capacity.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 24) & 0xFFFF00 | BYTE6(a3);
  result = a3 - v3;
  if (a3 < v3)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ByteBuffer.reserveCapacity(_:)(Swift::Int a1)
{
  sub_100062024();
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (v4)
  {
    if (v5 < v1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v6 = sub_1000621FC();

        ByteBuffer._ensureAvailableCapacity(_:at:)(v6, v7);
      }

      else
      {
        v8 = sub_1000621FC();

        ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v8, v9);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ByteBuffer.reserveCapacity(minimumWritableBytes:)(Swift::Int minimumWritableBytes)
{
  v2 = *(v1 + 12);
  v3 = v2 + minimumWritableBytes;
  if (__OFADD__(v2, minimumWritableBytes))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  sub_100062024();
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (!v6)
  {
    goto LABEL_14;
  }

  if (v3 > v7)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = sub_1000621FC();

      ByteBuffer._ensureAvailableCapacity(_:at:)(v8, v9);
    }

    else
    {
      v10 = sub_1000621FC();

      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v10, v11);
    }
  }
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebaseIfNeeded()()
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100062024();
    if (v0 < v1)
    {
      __break(1u);
    }

    else
    {

      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v0 - v1, 0);
    }
  }
}

uint64_t ByteBuffer.withUnsafeMutableReadableBytes<A>(_:)()
{
  sub_100062064();
  v2 = *(v0 + 8);
  sub_100061FC4();
  result = swift_beginAccess();
  if (*(v0 + 12) >= v2)
  {
    sub_1000620C0();
    return v1();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBuffer.withUnsafeMutableWritableBytes<A>(_:)()
{
  sub_100062064();
  v2 = *(v0 + 16);
  v3 = *(v0 + 20);
  v4 = *(v0 + 22);
  sub_100061FC4();
  result = swift_beginAccess();
  if (v2 < (v4 | (v3 << 8)))
  {
    __break(1u);
  }

  else
  {
    sub_100062134();
    sub_10005E808(*(v0 + 12));
    UnsafeMutableRawBufferPointer.init(fastRebase:)();
    sub_1000620C0();
    return v1();
  }

  return result;
}

void ByteBuffer.writeWithUnsafeMutableBytes(minimumWritableBytes:_:)()
{
  sub_1000620F8();
  v4 = v3;
  if (v2 >= 1)
  {
    ByteBuffer.reserveCapacity(minimumWritableBytes:)(v2);
  }

  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v5 = *(v0 + 16);
  v6 = *(v0 + 20);
  v7 = *(v0 + 22);
  sub_100061FC4();
  swift_beginAccess();
  if (v5 < (v7 | (v6 << 8)))
  {
    __break(1u);
  }

  else
  {
    sub_100062134();
    v8 = *(v0 + 12);
    sub_10005E808(v8);
    v9 = UnsafeMutableRawBufferPointer.init(fastRebase:)();
    v10 = v4(v9);
    if (v1)
    {
LABEL_7:
      sub_1000620E0();
      return;
    }

    if (!__CFADD__(v8, v10))
    {
      *(v0 + 12) = v8 + v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void ByteBuffer.writeWithUnsafeMutableBytes(_:)()
{
  sub_1000620F8();
  v3 = v2;
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v4 = *(v0 + 16);
  v5 = *(v0 + 20);
  v6 = *(v0 + 22);
  sub_100061FC4();
  swift_beginAccess();
  if (v4 < (v6 | (v5 << 8)))
  {
    __break(1u);
  }

  else
  {
    sub_100062134();
    v7 = *(v0 + 12);
    sub_10005E808(v7);
    v8 = UnsafeMutableRawBufferPointer.init(fastRebase:)();
    v9 = v3(v8);
    if (v1)
    {
LABEL_5:
      sub_1000620E0();
      return;
    }

    if (!__CFADD__(v7, v9))
    {
      *(v0 + 12) = v7 + v9;
      goto LABEL_5;
    }
  }

  __break(1u);
}

void ByteBuffer.withVeryUnsafeBytes<A>(_:)()
{
  sub_100062128();
  sub_100061FC4();
  swift_beginAccess();
  sub_100062110();
  if (v2)
  {
    v3 = sub_1000621F0(v1);
    v0(v3);
  }

  else
  {
    __break(1u);
  }
}

void ByteBuffer.withVeryUnsafeMutableBytes<A>(_:)()
{
  sub_1000620F8();
  sub_100062064();
  v2 = *(v0 + 16);
  v3 = *(v0 + 20);
  v4 = *(v0 + 22);
  sub_100061FC4();
  swift_beginAccess();
  v5 = v4 | (v3 << 8);
  if (v2 < v5)
  {
    __break(1u);
  }

  else
  {
    sub_1000621F0(v5);
    sub_1000620C0();
    v1();
    sub_1000620E0();
  }
}

void ByteBuffer.withUnsafeReadableBytes<A>(_:)()
{
  sub_1000620F8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_100062128();
  v8 = HIDWORD(v7);
  sub_100061FC4();
  swift_beginAccess();
  if (v8 < v4)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v6 + 24) + ((v2 >> 24) & 0xFFFF00 | BYTE6(v2)) + v4;
    v0(v9, v9 + v8 - v4);
    sub_1000620E0();
  }
}

void ByteBuffer.withUnsafeReadableBytesWithStorageManagement<A>(_:)()
{
  sub_1000620F8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_100062128();
  v8 = HIDWORD(v7);
  sub_100061FC4();
  swift_beginAccess();
  if (v8 < v4)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v6 + 24) + ((v2 >> 24) & 0xFFFF00 | BYTE6(v2)) + v4;
    v0(v9, v9 + v8 - v4, v6);
    sub_1000620E0();
  }
}

void ByteBuffer.withVeryUnsafeBytesWithStorageManagement<A>(_:)()
{
  sub_100062128();
  sub_100061FC4();
  swift_beginAccess();
  sub_100062110();
  if (v2)
  {
    v3 = sub_1000621F0(v1);
    v0(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t ByteBuffer.getSlice(at:length:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  result = 0;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    if ((a2 & 0x8000000000000000) == 0 && a4 <= a1 && (HIDWORD(a4) - a2) >= a1)
    {
      v9 = BYTE6(a5) | (WORD2(a5) << 8);
      v10 = v9 + a1;
      if (__CFADD__(v9, a1))
      {
        __break(1u);
      }

      else
      {
        if (!HIBYTE(v10))
        {
          if (!__CFADD__(v10, a2))
          {
            _UInt24.init(_:)(0);
            _UInt24.init(_:)(v10);
          }

          goto LABEL_16;
        }

        if (!__CFADD__(a1, a2))
        {

          ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v7, 1);
          return a3;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }
  }

  return result;
}

Swift::Bool __swiftcall ByteBuffer.discardReadBytes()()
{
  v1 = *(v0 + 2);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = *(v0 + 3);
  if (v1 != v2)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v3 = *v0;
      sub_100061FC4();
      LOBYTE(v4) = swift_beginAccess();
      v5 = *(v0 + 22) | (*(v0 + 10) << 8);
      if (!__CFADD__(v5, v1))
      {
        v6 = v2 >= v1;
        v7 = v2 - v1;
        if (v6)
        {
          memmove((*(v3 + 24) + v5), (*(v3 + 24) + v5 + v1), v7);
          *(v0 + 2) = 0;
          *(v0 + 3) = v7;
          goto LABEL_11;
        }

LABEL_14:
        __break(1u);
        return v4;
      }

      __break(1u);
    }

    else
    {
      sub_100062024();
      v4 = v8 - v9;
      if (v8 >= v9)
      {
        ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v4, 1);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v0[1] = 0;
LABEL_11:
  LOBYTE(v4) = v1 != 0;
  return v4;
}

Swift::Void __swiftcall ByteBuffer.clear(minimumCapacity:)(Swift::UInt32 minimumCapacity)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (*(v5 + 16) < minimumCapacity)
    {
      ByteBuffer._Storage.reallocStorage(capacity:)(minimumCapacity);
    }
  }

  else
  {
    sub_10005EFF0(minimumCapacity);
    sub_10006226C();
    sub_100062228();
  }

  sub_100061FD4();
  v2[1] = 0;
}

Swift::Void __swiftcall ByteBuffer.clear(minimumCapacity:)(Swift::Int minimumCapacity)
{
  if (HIDWORD(minimumCapacity))
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = minimumCapacity;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (*(v5 + 16) < v3)
      {
        ByteBuffer._Storage.reallocStorage(capacity:)(v3);
      }
    }

    else
    {
      sub_10005EFF0(v3);
      sub_10006226C();
      sub_100062228();
    }

    sub_100061FD4();
    v2[1] = 0;
  }
}

void ByteBuffer.description.getter()
{
  sub_10006221C();
  v3 = HIDWORD(v2);
  sub_1001F77B8(136);
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v4._object = 0x80000001002252F0;
  sub_1001F6CA8(v4);
  v5._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v5);

  v6._countAndFlagsBits = 0x726574697277202CLL;
  v6._object = 0xEF203A7865646E49;
  sub_1001F6CA8(v6);
  v7._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v7);

  v8._object = 0x8000000100225310;
  v8._countAndFlagsBits = 0xD000000000000011;
  sub_1001F6CA8(v8);
  if (v3 < v1)
  {
    __break(1u);
  }

  else
  {
    v9._countAndFlagsBits = sub_1001F7E28();
    sub_1001F6CA8(v9);

    v10._countAndFlagsBits = 0x696361706163202CLL;
    v10._object = 0xEC000000203A7974;
    sub_1001F6CA8(v10);
    if (v0 >= ((v0 >> 24) & 0xFFFF00 | BYTE6(v0)))
    {
      sub_1000620B0();
      v11._countAndFlagsBits = sub_1001F7E28();
      sub_1001F6CA8(v11);

      v12._countAndFlagsBits = 0xD000000000000013;
      v12._object = 0x8000000100225330;
      sub_1001F6CA8(v12);
      sub_1000620B0();
      v13._countAndFlagsBits = sub_1001F7E28();
      sub_1001F6CA8(v13);

      v14._countAndFlagsBits = 0x3A6563696C73202CLL;
      v14._object = 0xE900000000000020;
      sub_1001F6CA8(v14);
      v15._countAndFlagsBits = _ByteBufferSlice.description.getter();
      sub_1001F6CA8(v15);

      v16._countAndFlagsBits = 0x6761726F7473202CLL;
      v16._object = 0xEB00000000203A65;
      sub_1001F6CA8(v16);
      sub_100061FC4();
      swift_beginAccess();
      sub_1001F7A28();
      v17._countAndFlagsBits = 10272;
      v17._object = 0xE200000000000000;
      sub_1001F6CA8(v17);
      v18._countAndFlagsBits = sub_1001F7E28();
      sub_1001F6CA8(v18);

      v19._countAndFlagsBits = 0x2029736574796220;
      v19._object = 0xE90000000000007DLL;
      sub_1001F6CA8(v19);
      return;
    }
  }

  __break(1u);
}

void ByteBuffer.debugDescription.getter()
{
  sub_10006221C();
  v3 = HIDWORD(v2);
  sub_1001F77B8(30);
  ByteBuffer.description.getter();

  v9._object = 0x8000000100225350;
  v9._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1001F6CA8(v9);
  if (v3 < v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v1;
    if (v3 - v1 >= 0x400)
    {
      v7 = 0;
    }

    else
    {
      v7 = v3 - v1;
    }

    v8 = v0;
    v10 = ByteBuffer._Storage.dumpBytes(slice:offset:length:)(*(&v6 - 2), v4, v5);
    sub_1001F6CA8(v10);
  }
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(to:)(Swift::Int to)
{
  if (*(v1 + 12) < to)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = to;
  }
}

Swift::Void __swiftcall ByteBuffer.moveWriterIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 12);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v1 + 16);
  v6 = *(v1 + 22) | (*(v1 + 20) << 8);
  v3 = v5 >= v6;
  v7 = v5 - v6;
  if (!v3)
  {
    goto LABEL_7;
  }

  if (v7 >= v4)
  {
    *(v1 + 12) = v4;
    return;
  }

LABEL_8:
  __break(1u);
}

Swift::Void __swiftcall ByteBuffer.moveWriterIndex(to:)(Swift::Int to)
{
  sub_100062024();
  v5 = v3 >= v4;
  v6 = v3 - v4;
  if (v5)
  {
    if (v6 >= v2)
    {
      *(v1 + 12) = v2;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ByteBuffer.copyBytes(at:to:length:)(Swift::Int at, Swift::Int to, Swift::Int length)
{
  sub_1000620F8();
  if ((v6 & 0x8000000000000000) != 0)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  if (!v6)
  {
LABEL_9:
    sub_1000620E0();
    return result;
  }

  v8 = result;
  if (*(v3 + 2) > result)
  {
LABEL_6:
    v10 = 1;
LABEL_8:
    sub_100061B5C();
    swift_allocError();
    *v11 = v10;
    swift_willThrow();
    goto LABEL_9;
  }

  if (__OFADD__(result, v6))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = *(v3 + 3);
  if ((result + v6) > v9)
  {
    goto LABEL_6;
  }

  v12 = v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
LABEL_16:
    if (!HIDWORD(v7))
    {
      ByteBuffer._ensureAvailableCapacity(_:at:)(v7, v12);
      v14 = *v3;
      v15 = *(v3 + 10);
      v16 = *(v3 + 22);
      sub_100061FC4();
      result = swift_beginAccess();
      v17 = v16 | (v15 << 8);
      if (*(v3 + 4) >= v17)
      {
        v18 = *(v14 + 24) + v17;
        sub_10005E808(v12);
        v19 = UnsafeMutableRawBufferPointer.init(fastRebase:)();
        if (v19)
        {
          memmove(v19, (v18 + v8), v7);
        }

        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!__OFADD__(v12, v7))
  {
    if (v9 <= v12 + v7)
    {
      v13 = v12 + v7;
    }

    else
    {
      v13 = v9;
    }

    ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v13, 0);
    goto LABEL_16;
  }

LABEL_23:
  __break(1u);
  return result;
}

Swift::Int sub_100061748(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t ByteBuffer.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = HIDWORD(a3);
  sub_100061FC4();
  result = swift_beginAccess();
  if (v4 >= v3)
  {
    return sub_1001F8078();
  }

  __break(1u);
  return result;
}

Swift::Int SocketAddressError.FailedToParseIPByteBuffer.hashValue.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  sub_1001F8068();
  sub_100047940();
  result = swift_beginAccess();
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    sub_1001F8078();
    return sub_1001F80D8();
  }

  return result;
}

Swift::Int sub_100061954()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1001F8068();
  ByteBuffer.hash(into:)(v4, v1, v2);
  return sub_1001F80D8();
}

uint64_t ByteBuffer.modifyIfUniquelyOwned<A>(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    result = a1(v3);
    if (v4)
    {
      return result;
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return sub_100018460(a3, v9, 1, a2);
}

int64_t ByteBuffer.rangeWithinReadableBytes(index:length:)(int64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result - a4;
  if (__OFSUB__(result, a4))
  {
    __break(1u);
    goto LABEL_13;
  }

  result = 0;
  if ((v4 & 0x8000000000000000) == 0 && (a2 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(a4) >= a4)
    {
      if ((HIDWORD(a4) - a4) - a2 < v4)
      {
        return 0;
      }

      if (!__OFADD__(v4, a2))
      {
        if (v4 + a2 >= v4)
        {
          return v4;
        }

LABEL_15:
        __break(1u);
        return result;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_100061AE8()
{
  result = qword_1002AFA38;
  if (!qword_1002AFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFA38);
  }

  return result;
}

unint64_t sub_100061B5C()
{
  result = qword_1002AFA48;
  if (!qword_1002AFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFA48);
  }

  return result;
}

unint64_t sub_100061BB4()
{
  result = qword_1002AFA50;
  if (!qword_1002AFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFA50);
  }

  return result;
}

unint64_t sub_100061C0C()
{
  result = qword_1002AFA58;
  if (!qword_1002AFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFA58);
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for _ByteBufferSlice(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _ByteBufferSlice(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 7))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ByteBufferSlice(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
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

  *(result + 7) = v3;
  return result;
}

uint64_t sub_100061CD0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100061D10(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100061D5C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 23))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100061D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 23) = 1;
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

    *(result + 23) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_100061E00(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100061ECCLL);
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

unint64_t sub_100061F08()
{
  result = qword_1002AFB10;
  if (!qword_1002AFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFB10);
  }

  return result;
}

unint64_t sub_100061F5C()
{
  result = qword_1002AFB20;
  if (!qword_1002AFB20)
  {
    sub_1001F6408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFB20);
  }

  return result;
}

void sub_100061FD4()
{
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 20) = 0;
  *(v0 + 22) = 0;
}

uint64_t sub_100061FE8()
{

  return swift_once();
}

void sub_100062064()
{

  ByteBuffer._copyStorageAndRebaseIfNeeded()();
}

uint64_t sub_100062140@<X0>(unsigned int a1@<W8>)
{
  if (v1)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100062164()
{
}

uint64_t sub_100062188(uint64_t a1)
{
  v7 = *(v4 - 120);

  return Data._copyContents(initializing:)(v7, a1, v3, v2, v1);
}

uint64_t sub_1000621AC()
{

  return sub_1001F6408();
}

uint64_t sub_10006224C()
{

  return swift_beginAccess();
}

uint64_t sub_10006226C()
{
}

void *sub_100062284()
{
  v1 = *(v0 + 128);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000ADA68(0xD00000000000001BLL, 0x8000000100225450, 1819112552, 0xE400000000000000);
    v3 = *(v0 + 128);
    *(v0 + 128) = v2;
    *(v0 + 136) = v4;

    sub_10001F734(v3);
  }

  sub_10001F78C(v1);
  return v2;
}

uint64_t sub_100062328@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001EA8E8();
  v3 = sub_1001F10F8(0x6D614E726566666FLL, 0xE900000000000065, v2);
  if (v4 && (v5 = v3, v6 = v4, sub_1001F10F8(6580578, 0xE300000000000000, v2), v8 = v7, , v8))
  {
    sub_100062834();
    sub_100062888();
    sub_1000795A8();
    v9 = sub_1000EDE14(v5, v6);

    if (v9)
    {

      sub_100062834();
      sub_100062888();
      sub_10007992C();

      v11 = sub_1000E087C(v10);

      v62 = v44;
      sub_10001C838(&v62);
      v61 = v45;
      sub_10001C838(&v61);
      v60 = v46;
      sub_10001C88C(&v60);
      if (v11)
      {
        v13 = *(v11 + 32);
        v12 = *(v11 + 40);
      }

      else
      {
        v13 = sub_1001E8450();
        v12 = v18;
      }

      sub_100062834();

      sub_1000792D8(&v47);
      sub_100062834();
      sub_100062888();
      sub_10007992C();
      v39 = sub_10004B628();
      v42 = v19;
      sub_10001C7E4(&v47);

      v59 = v49;
      sub_10001C838(&v59);
      v58 = v50;
      sub_10001C838(&v58);
      v57 = v51;
      sub_10001C88C(&v57);
      v20 = sub_100062284();
      if (v20)
      {
        v22 = v20;
        v37 = v21;
        type metadata accessor for AppIconRoute();
        v23 = sub_100062888();
        v36 = v12;
        v25 = sub_10005DC24(v23, v24);
        v26 = v13;
        v28 = v27;
        sub_100062834();
        sub_100062888();
        v29 = sub_10007935C();
        v31 = v30;

        *(&v53 + 1) = &type metadata for ConfirmPurchaseEngagementUIRoute.ViewProperties;
        v32 = swift_allocObject();
        *&v52 = v32;
        v32[2] = v25;
        v32[3] = v28;
        v32[4] = v29;
        v32[5] = v31;
        v32[6] = v26;
        v32[7] = v36;
        v32[8] = v39;
        v32[9] = v42;
        v33 = sub_1000ADFF4(&v52, v22, v37);
        v35 = v34;

        sub_100019CCC(&v52);
        sub_1000B738C(v33, v35, 1, &v52);
        v40 = v52;
        v43 = v53;
        v2 = (v54 | ((v55 | (v56 << 16)) << 32));

        type metadata accessor for HTTPResponseHead._Storage();
        result = sub_100021728();
        v15 = v40;
        v16 = v43;
        v17 = 3;
      }

      else
      {

        type metadata accessor for HTTPResponseHead._Storage();
        result = sub_100021728();
        v2 = 0;
        v15 = 0uLL;
        v17 = 49;
        v16 = 0uLL;
      }
    }

    else
    {

      sub_1001F77B8(19);

      v47 = 0xD000000000000011;
      v48 = 0x8000000100225430;
      v2 = &v47;
      v63._countAndFlagsBits = v5;
      v63._object = v6;
      sub_1001F6CA8(v63);

      sub_1000B738C(v47, v48, 6, &v47);
      sub_100062854();
      result = sub_100021728();
      v15 = v38;
      v16 = v41;
      v17 = 49;
    }
  }

  else
  {

    sub_1000B738C(0x7571657220646142, 0xEB00000000747365, 6, &v47);
    sub_100062854();
    result = sub_100021728();
    v15 = v38;
    v16 = v41;
    v17 = 21;
  }

  *(result + 32) = v17;
  *(result + 40) = 65537;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *a1 = result;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = 2;
  *(a1 + 24) = v15;
  *(a1 + 40) = v16;
  *(a1 + 56) = v2;
  *(a1 + 62) = BYTE6(v2);
  *(a1 + 60) = WORD2(v2);
  return result;
}

uint64_t sub_1000627D4()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100062854()
{

  return type metadata accessor for HTTPResponseHead._Storage();
}

uint64_t NIOClientTCPBootstrap.channelConvenienceOptions(_:)@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v14 = a1 & 0x101;
  v15 = BYTE2(a1) & 1;
  sub_1000629A0(v2, v10);
  v4 = v2[3];
  v5 = v2[4];
  sub_10001AE68(v2, v4);
  v6 = *(v5 + 32);
  v13[3] = v4;
  v13[4] = v5;
  sub_1000629FC(v13);
  v6(&v14, v4, v5);
  v8 = v11;
  v7 = v12;

  sub_100062A5C(v10);
  v13[5] = v8;
  v13[6] = v7;
  sub_100062AB0(v13, a2);
  return sub_100062A5C(v13);
}

uint64_t *sub_1000629FC(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

double sub_100062AB0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1000629A0(a1, a2);
  v6 = *v2;
  *v2 = 0;
  if (v6 == 1)
  {
    v69 = 0x40000FFFFLL;
    HIDWORD(v68) = 1;
    v7 = a2[3];
    v8 = a2[4];
    v9 = sub_10001AE68(a2, v7);
    sub_100063920(v9, v10, v11, v12, v13, v14, v15, v16, v65, v68, 0x40000FFFFLL, v70, *(&v70 + 1), v71, *(&v71 + 1), v72);
    v17 = sub_10006389C();
    v3(&v69, &v68 + 4, &type metadata for ChannelOptions.Types.SocketOption, v17, v7, v8);
    v18 = a2[6];
    v73 = a2[5];
    v74 = v18;

    v19 = sub_100062A5C(a2);
    *&result = sub_1000638F4(v19, v20, v21, v22, v23, v24, v25, v26, v66, v68, v69, v70, v71, v27, v72).n128_u64[0];
  }

  v28 = v2[2];
  v2[2] = 0;
  if (v28 == 1)
  {
    LOBYTE(v69) = 1;
    v29 = a2[3];
    v30 = a2[4];
    v31 = sub_10001AE68(a2, v29);
    sub_100063920(v31, v32, v33, v34, v35, v36, v37, v38, v65, v68, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72);
    v39 = sub_100063848();
    v3(v39, &v69, &type metadata for ChannelOptions.Types.AllowRemoteHalfClosureOption, v39, v29, v30);
    v40 = a2[6];
    v73 = a2[5];
    v74 = v40;

    v41 = sub_100062A5C(a2);
    *&result = sub_1000638F4(v41, v42, v43, v44, v45, v46, v47, v48, v67, v68, v69, v70, v71, v49, v72).n128_u64[0];
  }

  v50 = v2[1];
  v2[1] = 0;
  if (v50 == 1)
  {
    LOBYTE(v69) = 0;
    v51 = a2[3];
    v52 = a2[4];
    sub_10001AE68(a2, v51);
    v53 = *(v52 + 24);
    *(&v71 + 1) = v51;
    v72 = v52;
    sub_1000629FC(&v70);
    v54 = sub_1000637F4();
    v53(v54, &v69, &type metadata for ChannelOptions.Types.AutoReadOption, v54, v51, v52);
    v55 = a2[6];
    v73 = a2[5];
    v74 = v55;

    v56 = sub_100062A5C(a2);
    *&result = sub_1000638F4(v56, v57, v58, v59, v60, v61, v62, v63, v65, v68, v69, v70, v71, v64, v72).n128_u64[0];
  }

  return result;
}

Swift::Int sub_100062CB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t ChannelOptions.TCPConvenienceOptions.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = -v1;
    do
    {
      v7 = v2 + 32;
      while (1)
      {
        v8 = *(a1 + v7);
        if (v8 != 1)
        {
          break;
        }

        ++v7;
        v4 = 1;
        if (v6 + v7 == 32)
        {

          goto LABEL_12;
        }
      }

      v9 = v6 + v7 + 1;
      v2 = v7 - 31;
      if (v8)
      {
        v3 = 0x10000;
      }

      else
      {
        v5 = 1;
      }
    }

    while (v9 != 32);

    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    v10 = 256;
  }

  else
  {

    v3 = 0;
    v5 = 0;
LABEL_14:
    v10 = 0;
  }

  return v10 | v3 | v5 & 1u;
}

uint64_t ChannelOptions.TCPConvenienceOptions.add(_:)(uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      ++v1;
    }

    else
    {
      v1 += 2;
    }
  }

  *v1 = 1;
  return result;
}

BOOL ChannelOptions.TCPConvenienceOptions.consumeAllowLocalEndpointReuse()()
{
  v1 = *v0;
  *v0 = 0;
  return sub_100063914(v1);
}

BOOL ChannelOptions.TCPConvenienceOptions.consumeDisableAutoRead()()
{
  v1 = *(v0 + 1);
  *(v0 + 1) = 0;
  return sub_100063914(v1);
}

BOOL ChannelOptions.TCPConvenienceOptions.consumeAllowRemoteHalfClosure()()
{
  v1 = *(v0 + 2);
  *(v0 + 2) = 0;
  return sub_100063914(v1);
}

void ChannelOptions.TCPConvenienceOptions.hash(into:)(uint64_t a1, int a2)
{
  sub_1001F8098(a2 & 1);
  sub_1001F8098(BYTE1(a2) & 1);
  sub_1001F8098(BYTE2(a2) & 1);
}

Swift::Int ChannelOptions.TCPConvenienceOptions.hashValue.getter(int a1)
{
  sub_1001F8068();
  ChannelOptions.TCPConvenienceOptions.hash(into:)(v3, a1 & 0x10101);
  return sub_1001F80D8();
}

uint64_t sub_100062ED0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = ChannelOptions.TCPConvenienceOptions.init(arrayLiteral:)(a1);
  *a2 = result & 1;
  a2[1] = BYTE1(result) & 1;
  a2[2] = (result & 0xFFFF0000) != 0;
  return result;
}

Swift::Int sub_100062F10()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return ChannelOptions.TCPConvenienceOptions.hashValue.getter(v2 | *v0 | v1);
}

void sub_100062F40(uint64_t a1)
{
  if (v1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  ChannelOptions.TCPConvenienceOptions.hash(into:)(a1, v3 | *v1 | v2);
}

Swift::Int sub_100062F70()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1001F8068();
  if (v3)
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  ChannelOptions.TCPConvenienceOptions.hash(into:)(v7, v5 | v1 | v4);
  return sub_1001F80D8();
}

unint64_t sub_100062FE4()
{
  result = qword_1002AFC28;
  if (!qword_1002AFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFC28);
  }

  return result;
}

unint64_t sub_10006303C()
{
  result = qword_1002AFC30[0];
  if (!qword_1002AFC30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002AFC30);
  }

  return result;
}

BOOL sub_100063090(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return static ChannelOptions.TCPConvenienceOptions.__derived_struct_equals(_:_:)(v3 | *a1 | v2, v5 | *a2 | v4);
}

uint64_t sub_1000630EC()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_100063148(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
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
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_10001C990(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1000632D0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
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
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x1000634F0);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          v20 = a2 + 1;

          sub_100018460(a1, v20, v9, v7);
        }
      }

      return;
  }
}

uint64_t _s21TCPConvenienceOptionsVwCP(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s21TCPConvenienceOptionsVwet(unsigned __int16 *a1, unsigned int a2)
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

uint64_t _s21TCPConvenienceOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_10006366C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100063738);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100063774()
{
  result = qword_1002AFCB8;
  if (!qword_1002AFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFCB8);
  }

  return result;
}

uint64_t sub_1000637C8@<X0>(uint64_t *a1@<X8>)
{
  result = ChannelPipeline.syncOperations.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000637F4()
{
  result = qword_1002AFCC0;
  if (!qword_1002AFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFCC0);
  }

  return result;
}

unint64_t sub_100063848()
{
  result = qword_1002AFCC8;
  if (!qword_1002AFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFCC8);
  }

  return result;
}

unint64_t sub_10006389C()
{
  result = qword_1002AFCD0;
  if (!qword_1002AFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFCD0);
  }

  return result;
}

__n128 sub_1000638F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __n128 a14, uint64_t a15)
{
  *v15 = a12;
  *(v15 + 16) = a13;
  result = a14;
  *(v15 + 32) = a14;
  *(v15 + 48) = a15;
  return result;
}

uint64_t *sub_100063920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a15 = v16;
  a16 = v17;

  return sub_1000629FC(&a12);
}

void sub_100063944(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IAPTransaction();
  *&v59 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 72);
  if (!v8)
  {
    type metadata accessor for HTTPResponseHead._Storage();
    v14 = swift_allocObject();
    v15 = 0;
    v16 = 0uLL;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 21;
    *(v14 + 40) = 65537;
    v17 = 0uLL;
LABEL_26:
    *a2 = v14;
    *(a2 + 8) = _swiftEmptyArrayStorage;
    *(a2 + 16) = 2;
    *(a2 + 24) = v16;
    *(a2 + 40) = v17;
    *(a2 + 56) = v15;
    *(a2 + 62) = BYTE6(v15);
    *(a2 + 60) = WORD2(v15);
    return;
  }

  v109 = *(a1 + 56);
  v9 = *(a1 + 80);
  v10 = *(a1 + 87);
  v110 = v8;
  v111[0] = v9;
  *(v111 + 7) = v10;
  v11 = sub_1000B74F4();
  v13 = v12;
  sub_1001F6158();
  swift_allocObject();
  sub_1001F6148();
  sub_100063F8C();
  sub_1001F6138();
  v54 = v11;
  v55 = v13;
  v56 = a2;

  memcpy(v81, v82, 0x50uLL);
  v18 = sub_10006409C();
  v19 = *v18;
  v20 = *(*(*v18 + 128) + 16);

  os_unfair_lock_lock(v20);
  *(v19 + 112) = 0;
  os_unfair_lock_unlock(v20);

  sub_10006409C();
  v57 = v81[1];
  *&v58 = v81[0];
  v21 = sub_10008E6C0();
  v22 = sub_10013B560(v21);
  if (v22)
  {
    v23 = v22;
    if (v22 < 1)
    {
      __break(1u);
      goto LABEL_28;
    }

    v24 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = sub_1001F7808();
      }

      else
      {
        v25 = *(v21 + 8 * v24 + 32);
      }

      v26 = v25;
      ++v24;
      sub_10006409C();
      sub_10008BF94(v26, 1, v27, v28, v29, v30, v31, v32, v52, v53, v54, v55, v56, v57, v58, *(&v58 + 1), v59, *(&v59 + 1), v60, v61);
      v34 = v33;
    }

    while (v23 != v24);
  }

  sub_100056A98(0, &v83);
  v35 = v89;
  v96 = v88;
  v80 = v84;
  *v77 = *v85;
  *&v77[14] = *&v85[14];
  v76 = v86;
  v79 = v83;
  v75[0] = *v87;
  *(v75 + 3) = *&v87[3];
  v52 = v90;
  memcpy(v74, v91, sizeof(v74));
  v78 = 0;
  sub_10006409C();
  v36 = sub_10008D8C8(v58, v57);
  v37 = sub_10001A07C(v36);
  v61 = v37;
  v53 = v35;
  if (!v37)
  {

    sub_100063FE0(&v96);
    v40 = _swiftEmptyArrayStorage;
LABEL_22:
    v76 = 0;
    if (v81[9])
    {
      sub_10006409C();

      sub_10008D944();
      v45 = v44;
      v47 = v46;

      sub_100064048(v81);
      sub_10003A36C(v53, v52);
    }

    else
    {
      sub_100064048(v81);
      v47 = v52;
      v45 = v53;
    }

    v97 = v79;
    v98 = v80;
    v48 = v78;
    v99 = v78;
    v100 = 3;
    *v101 = *v77;
    *&v101[14] = *&v77[14];
    v49 = v61;
    v102 = v61;
    v50 = v76;
    v103 = v76;
    *&v104[3] = *(v75 + 3);
    *v104 = v75[0];
    v105 = v40;
    v106 = v45;
    v107 = v47;
    memcpy(v108, v74, sizeof(v108));
    sub_100057E10(&v97, &v62);
    sub_1001C6888(&v97, v92);
    v58 = v92[1];
    v59 = v92[0];
    v51 = v45;
    v15 = v93 | ((v94 | (v95 << 16)) << 32);
    sub_10003A380(v54, v55);
    type metadata accessor for HTTPResponseHead._Storage();
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 3;
    *(v14 + 40) = 65537;
    v62 = v79;
    v63 = v80;
    v64 = v48;
    v65 = 3;
    *v66 = *v77;
    *&v66[14] = *&v77[14];
    v67 = v49;
    v68 = v50;
    *&v69[3] = *(v75 + 3);
    *v69 = v75[0];
    v70 = v40;
    v71 = v51;
    v72 = v47;
    memcpy(v73, v74, sizeof(v73));
    sub_100057E48(&v62);
    v17 = v58;
    v16 = v59;
    a2 = v56;
    goto LABEL_26;
  }

  v38 = v37;
  *&v97 = _swiftEmptyArrayStorage;
  sub_10003414C();
  if ((v38 & 0x8000000000000000) == 0)
  {
    v39 = 0;
    v40 = v97;
    v41 = v59;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v42 = sub_1001F7808();
      }

      else
      {
        v42 = *(v36 + 8 * v39 + 32);
      }

      sub_1001D4DFC(v42, 0, 0, v7);
      *&v97 = v40;
      v43 = v40[2];
      if (v43 >= v40[3] >> 1)
      {
        sub_10003414C();
        v41 = v59;
        v40 = v97;
      }

      ++v39;
      v40[2] = v43 + 1;
      sub_100040BF8(v7, v40 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v43);
    }

    while (v61 != v39);

    sub_100063FE0(&v96);
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
}

unint64_t sub_100063F8C()
{
  result = qword_1002AFDB0;
  if (!qword_1002AFDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFDB0);
  }

  return result;
}

uint64_t sub_100063FE0(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002AFDB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10006409C()
{
  v2 = *(v0 + 112);

  return sub_10001AE68((v0 + 88), v2);
}

void sub_1000640B4(uint64_t (*a1)(char *))
{
  v3 = sub_100067224(a1);
  if (!v2)
  {
    v4 = *(v1 + 32);
    if (v4 < v3)
    {
      __break(1u);
    }

    else
    {
      sub_100064614(v3, v4);
    }
  }
}

uint64_t SocketAddressError.FailedToParseIPByteBuffer.address.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);

  *v3 = a1;
  *(v3 + 8) = v5;
  *(v3 + 12) = v7;
  *(v3 + 16) = v4;
  *(v3 + 20) = v8;
  *(v3 + 22) = v9;
  return result;
}

void *sub_100064190(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t ByteBufferView._range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ByteBufferView.init(buffer:range:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = BYTE6(a3) | (WORD2(a3) << 8);
  v7 = a3 >= v6;
  v8 = a3 - v6;
  if (v7)
  {
    if ((a4 & 0x8000000000000000) == 0 && v8 >= a5)
    {
      *a6 = result;
      *(a6 + 8) = a2;
      *(a6 + 16) = a3;
      *(a6 + 20) = WORD2(a3);
      *(a6 + 22) = BYTE6(a3);
      *(a6 + 24) = a4;
      *(a6 + 32) = a5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ByteBufferView.init(_:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = BYTE6(a3) | (WORD2(a3) << 8);
  v6 = a3 >= v5;
  v7 = a3 - v5;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (v4 <= v7)
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;
    *(a4 + 20) = WORD2(a3);
    *(a4 + 22) = BYTE6(a3);
    *(a4 + 24) = a2;
    *(a4 + 32) = v4;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000642D4(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v6 = *(a5 + 24);
    v5 = *(a5 + 32);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      return a3(result + v6, result + v6 + v8);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall Heap.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBufferView.subscript.getter(uint64_t result)
{
  if (*(v1 + 24) > result || *(v1 + 32) <= result)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_100067518();
  result = sub_100064380(v5, 0, v6, v7, v3 | (v4 << 48));
  if ((result & 0x100) != 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_100064380(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result - a4;
  if (__OFSUB__(result, a4))
  {
    __break(1u);
  }

  else
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }

    if (HIDWORD(a4) >= a4)
    {
      if (v5 < (HIDWORD(a4) - a4))
      {
        v8 = a4;
        sub_1000675D4();
        v9 = 0;
        v10 = *(*(a3 + 24) + ((a5 >> 24) & 0xFFFF00 | BYTE6(a5)) + v8 + v5);
        return v10 | (v9 << 8);
      }

LABEL_6:
      v10 = 0;
      v9 = 1;
      return v10 | (v9 << 8);
    }
  }

  __break(1u);
  return result;
}

void ByteBufferView.subscript.setter(char a1, uint64_t a2)
{
  if (*(v2 + 24) > a2)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (*(v2 + 32) <= a2)
  {
    goto LABEL_5;
  }

  v3 = a1;
  ByteBuffer._setBytes(_:at:)(&v3, &v4, a2);
}

uint64_t ByteBufferView.subscript.modify(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = v2;
  if (*(v2 + 24) > a2 || *(v2 + 32) <= a2)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    sub_1000675B8();
    result = sub_100064380(v5, 0, v6, v7, v8);
    if ((result & 0x100) == 0)
    {
      *(v4 + 16) = result;
      return sub_100064508;
    }
  }

  __break(1u);
  return result;
}

uint64_t ByteBufferView.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 20);
  v7 = *(v3 + 22);
  v8 = v7 | (v6 << 8);
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (v9)
  {
    v11 = result;
    if ((result & 0x8000000000000000) == 0 && v10 >= a2)
    {
      v14 = *v3;
      result = sub_100066CAC(v3, v13);
      *a3 = v14;
      *(a3 + 16) = v5;
      *(a3 + 20) = v6;
      *(a3 + 22) = v7;
      *(a3 + 24) = v11;
      *(a3 + 32) = a2;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ByteBufferView.subscript.setter(uint64_t *a1, uint64_t a2, Swift::Int at)
{
  sub_100064944(a2, at, a1);

  return sub_100066CE4(a1);
}

void sub_100064614(Swift::Int to, Swift::Int at)
{
  v3 = *(v2 + 24);
  if (v3 > to)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = *(v2 + 32);
  if (v5 < at)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = at - to;
  if (__OFSUB__(at, to))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7)
  {
    if (v7 <= 0)
    {
      v11 = *(v2 + 12);
      if (!__OFSUB__(v11, at))
      {
        ByteBuffer.copyBytes(at:to:length:)(at, to, v11 - at);
        if (v12)
        {
LABEL_26:
          swift_unexpectedError();
          __break(1u);
          return;
        }

        sub_10005FBA4(to);
        if (!__OFSUB__(0, v7))
        {
          ByteBuffer.moveWriterIndex(forwardBy:)(-v7);
          v13 = v5 - v7;
          if (!__OFADD__(v5, -v7))
          {
            if (v13 >= v3)
            {
              *(v2 + 24) = v3;
              *(v2 + 32) = v13;
              return;
            }

            goto LABEL_25;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    sub_10005FBA4(to);
    v8 = *(v2 + 12);
    if (!__OFSUB__(v8, at))
    {
      ByteBuffer.copyBytes(at:to:length:)(at, to, v8 - at);
      if (!v9)
      {
        ByteBuffer.moveWriterIndex(to:)(*(v2 + 12) - v7);
        *(v2 + 24) = sub_100065E78(v7, v3, v5);
        *(v2 + 32) = v10;
        return;
      }

      goto LABEL_26;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_10005FBA4(to);
}

void sub_10006479C(uint64_t a1, Swift::Int at, char a3)
{
  v4 = *(v3 + 24);
  if (v4 > a1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(v3 + 32);
  if (v6 < at)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = at - a1;
  if (__OFSUB__(at, a1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 != 1)
  {
    if (v8 <= 1)
    {
      if (!__OFADD__(a1, 1))
      {
        v13 = *(v3 + 12);
        if (!__OFSUB__(v13, at))
        {
          ByteBuffer.copyBytes(at:to:length:)(at, a1 + 1, v13 - at);
          if (v14)
          {
LABEL_30:
            sub_1000674E0();
            swift_unexpectedError();
            __break(1u);
            return;
          }

          sub_10005FFC8(a3, a1);
          v15 = 1 - v8;
          if (!__OFSUB__(1, v8))
          {
            ByteBuffer.moveWriterIndex(forwardBy:)(1 - v8);
            v16 = v6 + v15;
            if (!__OFADD__(v6, v15))
            {
              if (v16 >= v4)
              {
                *(v3 + 24) = v4;
                *(v3 + 32) = v16;
                return;
              }

              goto LABEL_29;
            }

LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    sub_10005FFC8(a3, a1);
    if (!__OFADD__(a1, 1))
    {
      v10 = *(v3 + 12);
      if (!__OFSUB__(v10, at))
      {
        ByteBuffer.copyBytes(at:to:length:)(at, a1 + 1, v10 - at);
        if (!v11)
        {
          ByteBuffer.moveWriterIndex(to:)(*(v3 + 12) - (v8 - 1));
          *(v3 + 24) = sub_100065E78(v8 - 1, v4, v6);
          *(v3 + 32) = v12;
          return;
        }

        goto LABEL_30;
      }

      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_10005FFC8(a3, a1);
}

void sub_100064944(uint64_t a1, Swift::Int at, uint64_t *a3)
{
  v4 = *(v3 + 24);
  if (v4 > a1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = *(v3 + 32);
  if (v6 < at)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = a3[3];
  v8 = a3[4];
  v10 = v8 - v9;
  if (v8 < v9)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(v8, v9))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = at - a1;
  if (__OFSUB__(at, a1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v10 == v12)
  {
    v13 = *a3;
    v14 = *(a3 + 10);
    v15 = *(a3 + 22);
    swift_beginAccess();
    v16 = *(v13 + 24) + (v15 | (v14 << 8)) + v9;
    ByteBuffer._setBytes(_:at:)(v16, v16 + v10, a1);
    return;
  }

  if (v10 >= v12)
  {
    if (!__OFADD__(a1, v10))
    {
      v25 = *(v3 + 12);
      if (!__OFSUB__(v25, at))
      {
        ByteBuffer.copyBytes(at:to:length:)(at, a1 + v10, v25 - at);
        if (!v26)
        {
          v27 = *a3;
          v28 = *(a3 + 10);
          v29 = *(a3 + 22);
          swift_beginAccess();
          v30 = *(v27 + 24) + (v29 | (v28 << 8)) + v9;
          ByteBuffer._setBytes(_:at:)(v30, v30 + v10, a1);
          v31 = v10 - v12;
          if (!__OFSUB__(v10, v12))
          {
            ByteBuffer.moveWriterIndex(forwardBy:)(v10 - v12);
            v32 = v6 + v31;
            if (!__OFADD__(v6, v31))
            {
              if (v32 >= v4)
              {
                *(v3 + 24) = v4;
                *(v3 + 32) = v32;
                return;
              }

              goto LABEL_35;
            }

LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          goto LABEL_32;
        }

        goto LABEL_36;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  v17 = *a3;
  v33 = *(a3 + 10);
  v18 = *(a3 + 22);
  swift_beginAccess();
  v19 = *(v17 + 24) + (v18 | (v33 << 8)) + v9;
  ByteBuffer._setBytes(_:at:)(v19, v19 + v10, a1);
  if (__OFADD__(a1, v10))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v20 = *(v3 + 12);
  if (__OFSUB__(v20, at))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  ByteBuffer.copyBytes(at:to:length:)(at, a1 + v10, v20 - at);
  if (!v21)
  {
    v22 = v12 - v10;
    if (!__OFSUB__(v12, v10))
    {
      v23 = *(v3 + 12);
      if (!__OFSUB__(v23, v22))
      {
        ByteBuffer.moveWriterIndex(to:)(v23 - v22);
        *(v3 + 24) = sub_100065E78(v12 - v10, v4, v6);
        *(v3 + 32) = v24;
        return;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

LABEL_36:
  swift_unexpectedError();
  __break(1u);
}

void ByteBufferView.replaceSubrange<A>(_:with:)(uint64_t a1, Swift::Int a2)
{
  v3 = *(v2 + 24);
  if (v3 > a1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v5 = *(v2 + 32);
  if (v5 < a2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = sub_1001F7118();
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 != v8)
  {
    if (sub_100067550() >= v8)
    {
      v22 = sub_100067550();
      if (!__OFADD__(a1, v22))
      {
        v23 = *(v2 + 12);
        if (!__OFSUB__(v23, a2))
        {
          ByteBuffer.copyBytes(at:to:length:)(a2, a1 + v22, v23 - a2);
          if (!v24)
          {
            v25 = sub_1000674F0();
            ByteBuffer.setBytes<A>(_:at:)(v25, v26, v27);
            v28 = sub_100067550();
            v29 = v28 - v8;
            if (!__OFSUB__(v28, v8))
            {
              ByteBuffer.moveWriterIndex(forwardBy:)(v28 - v8);
              v30 = v5 + v29;
              if (!__OFADD__(v5, v29))
              {
                if (v30 >= v3)
                {
                  *(v2 + 24) = v3;
                  *(v2 + 32) = v30;
                  return;
                }

                goto LABEL_33;
              }

LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            goto LABEL_30;
          }

          goto LABEL_34;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    v12 = sub_1000674F0();
    ByteBuffer.setBytes<A>(_:at:)(v12, v13, v14);
    v15 = sub_100067550();
    if (!__OFADD__(a1, v15))
    {
      v16 = *(v2 + 12);
      if (!__OFSUB__(v16, a2))
      {
        ByteBuffer.copyBytes(at:to:length:)(a2, a1 + v15, v16 - a2);
        if (!v17)
        {
          v18 = sub_100067550();
          v19 = v8 - v18;
          if (!__OFSUB__(v8, v18))
          {
            v20 = *(v2 + 12);
            if (!__OFSUB__(v20, v19))
            {
              ByteBuffer.moveWriterIndex(to:)(v20 - v19);
              *(v2 + 24) = sub_100065E78(v19, v3, v5);
              *(v2 + 32) = v21;
              return;
            }

            goto LABEL_31;
          }

          goto LABEL_29;
        }

LABEL_34:
        sub_1000674E0();
        swift_unexpectedError();
        __break(1u);
        return;
      }

      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v9 = sub_1000674F0();

  ByteBuffer.setBytes<A>(_:at:)(v9, v10, v11);
}

void (*ByteBufferView.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = sub_100064190(0x108uLL);
  *a1 = v7;
  v7[31] = a3;
  v7[32] = v3;
  v7[30] = a2;
  v8 = *(v3 + 32);
  v9 = *(v3 + 16);
  *v7 = *v3;
  *(v7 + 1) = v9;
  v7[4] = v8;
  ByteBufferView.subscript.getter(a2, a3, (v7 + 15));
  return sub_100064E38;
}

void sub_100064E38(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[31];
    v4 = v2[30];
    sub_10006756C();
    sub_100064944(v4, v3, v2 + 5);
    sub_100066CE4((v2 + 5));
    v5 = sub_10006759C();
  }

  else
  {
    sub_1000675F0(v2[30], v2[31]);
    v5 = (v2 + 10);
  }

  sub_100066CE4(v5);

  free(v2);
}

void ByteBufferView.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  ByteBufferView.withUnsafeBytes<A>(_:)();
  if (!v2)
  {
    sub_100018460(a2, 0, 1, a1);
  }
}

Swift::Int_optional_optional __swiftcall ByteBufferView._customIndexOfEquatableElement(_:)(Swift::UInt8 a1)
{
  v3 = *v1;
  v4 = *(v1 + 10);
  v5 = *(v1 + 22);
  v6 = sub_1000675D4();
  v9 = v1[3];
  v8 = v1[4];
  v10 = __OFSUB__(v8, v9);
  v11 = v8 - v9;
  if (!v10)
  {
    for (i = 0; v11 != i; ++i)
    {
      if (*(*(v3 + 24) + v9 + (v4 << 8) + v5 + i) == a1)
      {
        v6 = i + v9;
        if (__OFADD__(i, v9))
        {
          goto LABEL_12;
        }

        goto LABEL_9;
      }

      if ((v11 & ~(v11 >> 63)) == i)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    v6 = 0;
LABEL_9:
    v7 = v11 == i;
    goto LABEL_13;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  result.value.value = v6;
  result.value.is_nil = v7;
  return result;
}

Swift::Int_optional_optional __swiftcall ByteBufferView._customLastIndexOfEquatableElement(_:)(Swift::UInt8 a1)
{
  v3 = *v1;
  v4 = *(v1 + 10);
  v5 = *(v1 + 22);
  v6 = sub_1000675D4();
  v9 = v1[3];
  v8 = v1[4];
  v10 = __OFSUB__(v8, v9);
  v11 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = *(v3 + 24) + (v5 | (v4 << 8)) + v9;
  v6 = sub_10006507C(a1, v12, v12 + v11);
  if ((v7 & 1) == 0)
  {
    v10 = __OFADD__(v6, v9);
    v6 += v9;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  v7 &= 1u;
LABEL_7:
  result.value.value = v6;
  result.value.is_nil = v7;
  return result;
}

uint64_t sub_10006507C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3 == a2)
  {
    return 0;
  }

  v3 = a1;
  result = a3 - a2;
  while (!__OFSUB__(result--, 1))
  {
    if (result < 0 || result >= a3 - a2)
    {
      goto LABEL_12;
    }

    if (*(a2 + result) == v3 || !result)
    {
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000650D4(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (v4 < a2 || v3 > a2 || v3 > result || v4 < result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v8)
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_100065100(uint64_t a1)
{
  sub_10006762C(a1);
  sub_1000674C8();
  result = sub_100065134(v2);
  *v1 = result;
  return result;
}

uint64_t sub_100065134(uint64_t a1)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result < *(v1 + 24) || result >= *(v1 + 32))
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t *sub_100065158(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(v1 + 32) && v2 >= *(v1 + 24))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100065184(uint64_t a1)
{
  sub_10006762C(a1);
  sub_1000674C8();
  result = sub_1001B906C(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1000651F0@<X0>(uint64_t *a1@<X8>)
{
  result = ByteBufferView.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100065218@<X0>(uint64_t *a1@<X8>)
{
  result = ByteBufferView.endIndex.getter();
  *a1 = result;
  return result;
}

double sub_100065288@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v2[1];
  v11 = *v2;
  v12 = v6;
  v13 = *(v2 + 4);
  ByteBufferView.subscript.getter(v5, v4, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_1000652E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006532C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10006532C()
{
  result = *(v0 + 24);
  if (*(v0 + 32) < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000653CC@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_100065408(uint64_t a1)
{
  sub_10006762C(a1);
  sub_1000674C8();
  result = sub_1001B9090(v2, v3, v4);
  *v1 = result;
  *(v1 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000654A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000654B4(unint64_t result, unint64_t a2, unint64_t a3)
{
  if (!result)
  {
LABEL_7:
    if (!a3)
    {
      return result;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  if (!a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result < a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a3 && a3 < result)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

Swift::Int sub_100065534(uint64_t a1)
{
  v2 = sub_10006762C(a1);
  result = Heap.index(after:)(v2);
  *v1 = result;
  return result;
}

void *sub_10006555C(void *result)
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

__n128 sub_100065574@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 16) = *(v1 + 16);
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = result.n128_u64[0];
  return result;
}

uint64_t sub_100065680(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a1 = v2;
  *(a1 + 8) = result;
  if (result >= *(v2 + 24) && result < *(v2 + 32))
  {
    result = sub_100064380(result, 0, *v2, *(v2 + 8), *(v2 + 16) | (*(v2 + 22) << 48) | (*(v2 + 20) << 32));
    if ((result & 0x100) == 0)
    {
      *(a1 + 16) = result;
      return sub_100065704;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006572C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return ByteBufferView.subscript.setter(v4, *a2, a2[1]);
}

void (*sub_100065768(void *a1, uint64_t *a2))(uint64_t **a1, char a2)
{
  v5 = sub_100064190(0x108uLL);
  *a1 = v5;
  v6 = *a2;
  v7 = a2[1];
  v5[30] = v2;
  v5[31] = v6;
  v5[32] = v7;
  v8 = *v2;
  v9 = v2[1];
  v5[4] = *(v2 + 4);
  *v5 = v8;
  *(v5 + 1) = v9;
  ByteBufferView.subscript.getter(v6, v7, (v5 + 15));
  return sub_1000657EC;
}

void sub_1000657EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[31];
    v4 = v2[32];
    sub_10006756C();
    sub_100064944(v3, v4, v2 + 5);
    sub_100066CE4((v2 + 5));
    v5 = sub_10006759C();
  }

  else
  {
    sub_1000675F0(v2[31], v2[32]);
    v5 = (v2 + 10);
  }

  sub_100066CE4(v5);

  free(v2);
}

void sub_10006586C(uint64_t (*a1)(char *)@<X0>, void *a2@<X8>)
{
  sub_100065898(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

void sub_100065898(uint64_t (*a1)(char *))
{
  v3 = v1;
  v4 = v1[3];
  v19 = v1[4];
  v20 = v4;
  v21 = v19;
LABEL_2:
  while (v4 < v21)
  {
    if (v4 < v20 || v4 >= v19)
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v6 = *(v3 + 2);
    v7 = v4 - v6;
    if (__OFSUB__(v4, v6))
    {
      goto LABEL_28;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v8 = *(v3 + 3);
    v9 = v8 - v6;
    if (v8 < v6)
    {
      goto LABEL_30;
    }

    if (v7 >= v9)
    {
      goto LABEL_31;
    }

    v10 = *v3;
    v11 = *(v3 + 10);
    v12 = *(v3 + 22);
    swift_beginAccess();
    v13 = v12 | (v11 << 8);
    v22 = *(*(v10 + 24) + v13 + v4);
    v14 = a1(&v22);
    if (v2)
    {
      return;
    }

    if (v14)
    {
      v15 = v21;
      while (v15 > v20 && v21 <= v19)
      {
        if (v4 >= --v15)
        {
          return;
        }

        v17 = v15 - v6;
        if (__OFSUB__(v15, v6))
        {
          goto LABEL_33;
        }

        if (v17 >= v9)
        {
          goto LABEL_34;
        }

        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_35;
        }

        v22 = *(*(v10 + 24) + v13 + v15);
        if ((a1(&v22) & 1) == 0)
        {
          sub_100065A74(v4++, v15);
          v21 = v15;
          goto LABEL_2;
        }
      }

      goto LABEL_32;
    }

    ++v4;
  }
}

void sub_100065A74(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (v4 > a1 || v5 <= a1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = *(v2 + 16) | (*(v2 + 22) << 48) | (*(v2 + 20) << 32);
  v11 = sub_100064380(a1, 0, *v2, v9, v10);
  if ((v11 & 0x100) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 > a2 || v5 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v11;
  v14 = sub_100064380(a2, 0, v8, v9, v10);
  if ((v14 & 0x100) != 0)
  {
LABEL_18:
    __break(1u);
    return;
  }

  ByteBufferView.subscript.setter(v14, a1);

  ByteBufferView.subscript.setter(v13, a2);
}

void sub_100065B7C(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > a1)
      {
        if (v5 > a2)
        {
          v7 = *(v4 + 32 + 8 * a1);
          v8 = *(v4 + 32 + 8 * a2);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100111FFC();
            v4 = v9;
          }

          if (*(v4 + 16) > a1)
          {
            *(v4 + 32 + 8 * a1) = v8;

            if (*(v4 + 16) > a2)
            {
              *(v4 + 32 + 8 * a2) = v7;

              *v2 = v4;
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }
}

unint64_t sub_100065C5C(unint64_t result, unint64_t a2, uint64_t (*a3)(unint64_t))
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 <= result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v9 = *(v5 + 32 + 8 * result);
  v10 = *(v5 + 32 + 8 * a2);

  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if ((result & 1) == 0)
  {
    result = a3(v5);
    v5 = result;
    *v3 = result;
  }

  if (*(v5 + 16) <= v4)
  {
    goto LABEL_17;
  }

  *(v5 + 8 * v4 + 32) = v10;

  sub_1001F7898();
  v11 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v11;
  if ((result & 1) == 0)
  {
    result = a3(v11);
    v11 = result;
    *v3 = result;
  }

  if (*(v11 + 16) <= a2)
  {
    goto LABEL_18;
  }

  *(v11 + 8 * a2 + 32) = v9;

  return sub_1001F7898();
}

uint64_t ByteBufferView.init()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1002AC430 != -1)
  {
    sub_100061FE8();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  sub_100067504();
  ByteBufferView.init(_:)(v2, v5, v4 | (v3 << 48), v8);
  v6 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v9;
}

uint64_t sub_100065E78(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = a2 - a3;
  if (__OFSUB__(a2, a3))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
    return a2;
  }

  v6 = a3 - result;
  if (__OFADD__(a3, v4))
  {
    goto LABEL_17;
  }

  if (v6 >= a2 && v6 <= a3)
  {
    return a2;
  }

LABEL_18:
  __break(1u);
  return result;
}

double sub_100065EC8@<D0>(uint64_t a1@<X8>)
{
  ByteBufferView.init()(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_100065F0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  ByteBufferView.replaceSubrange<A>(_:with:)(*a1, a1[1]);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

void sub_100065F94(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_1002AC430 != -1)
  {
    swift_once();
  }

  ByteBufferView.init(_:)(static ByteBufferAllocator.zeroCapacityWithDefaultAllocator, qword_1002E6088, dword_1002E6090 | (word_1002E6094 << 32) | (byte_1002E6096 << 48), v5);
  if (!a1)
  {

    goto LABEL_7;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {

    sub_100113180();
LABEL_7:
    v4 = v5[1];
    *a2 = v5[0];
    *(a2 + 16) = v4;
    *(a2 + 32) = v6;
    return;
  }

  __break(1u);
}

uint64_t sub_1000660E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100066110(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100066110(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (v2 == v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  if (v2 > result || v3 <= result)
  {
    goto LABEL_9;
  }

  result = sub_100064380(result, 0, *v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 22) << 48) | (*(v1 + 20) << 32));
  if ((result & 0x100) == 0)
  {
    v6 = result;
    sub_100064614(v4, v4 + 1);
    return v6;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000661A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000661D8();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1000661D8()
{
  v1 = v0;
  v2 = v0[1];
  v18 = *v0;
  v19 = v2;
  v20 = *(v0 + 4);
  result = sub_1000C450C();
  if ((result & 0x100) == 0)
  {
    v4 = result;
    v5 = v1[1];
    v11 = *v1;
    v12 = v5;
    v6 = *(v1 + 4);
    v13 = v6;
    v7 = *(&v5 + 1);
    v14[0] = v11;
    v14[1] = v5;
    v15 = v6;
    sub_100066CAC(&v11, v16);
    result = sub_100066CE4(v14);
    v8 = v6 - 1;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
    }

    else if (v8 >= v7 && v6 - 1 < v6)
    {
      ByteBufferView.init(buffer:range:)(v11, *(&v11 + 1), v12 | (WORD2(v12) << 32) | (BYTE6(v12) << 48), v7, v8, v16);
      v10 = v16[1];
      *v1 = v16[0];
      v1[1] = v10;
      *(v1 + 4) = v17;
      return v4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000662BC(uint64_t result)
{
  v2 = -result;
  if (__OFSUB__(0, result))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v1 + 3);
  v3 = *(v1 + 4);
  v5 = v1[1];
  v17 = *v1;
  v18 = v5;
  v19 = v3;
  result = sub_1001B9090(v3, v2, v4);
  if ((v6 & 1) == 0)
  {
    v7 = result;
    v8 = v1[1];
    v15[0] = *v1;
    v15[1] = v8;
    v16 = *(v1 + 4);
    v9 = *(&v8 + 1);
    v11[0] = v15[0];
    v11[1] = v8;
    v12 = v16;
    sub_100066CAC(v15, v13);
    result = sub_100066CE4(v11);
    if (v7 >= v9)
    {
      ByteBufferView.subscript.getter(v9, v7, v13);
      sub_100066CE4(v15);
      v10 = v13[1];
      *v1 = v13[0];
      v1[1] = v10;
      *(v1 + 4) = v14;
      return 1;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1000663B4()
{
  if (*(v0 + 3) == *(v0 + 4))
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v0[1];
  v14 = *v0;
  v15 = v1;
  v16 = *(v0 + 4);
  sub_100088854();
  if ((v2 & 0x100) == 0)
  {
    v3 = v0[1];
    v12[0] = *v0;
    v12[1] = v3;
    v4 = *(v0 + 4);
    v13 = v4;
    v5 = *(&v3 + 1) + 1;
    if (!__OFADD__(*(&v3 + 1), 1))
    {
      v6 = v0[1];
      v8[0] = *v0;
      v8[1] = v6;
      v9 = *(v0 + 4);
      sub_100066CAC(v12, v10);
      sub_100066CE4(v8);
      if (v4 >= v5)
      {
        ByteBufferView.subscript.getter(v5, v4, v10);
        sub_100066CE4(v12);
        v7 = v10[1];
        *v0 = v10[0];
        v0[1] = v7;
        *(v0 + 4) = v11;
        return;
      }

      goto LABEL_8;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000664A8(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *(v1 + 3);
      v4 = *(v1 + 4);
      v5 = v1[1];
      v17 = *v1;
      v18 = v5;
      v19 = v4;
      result = sub_1001B9090(v3, v2, v4);
      if (v6)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      v7 = result;
      v8 = v1[1];
      v15[0] = *v1;
      v15[1] = v8;
      v9 = *(v1 + 4);
      v16 = v9;
      v11[0] = v15[0];
      v11[1] = v8;
      v12 = v9;
      sub_100066CAC(v15, v13);
      result = sub_100066CE4(v11);
      if (v9 >= v7)
      {
        ByteBufferView.subscript.getter(v7, v9, v13);
        result = sub_100066CE4(v15);
        v10 = v13[1];
        *v1 = v13[0];
        v1[1] = v10;
        *(v1 + 4) = v14;
        return result;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void sub_100066578(char a1)
{
  if ((a1 & 1) == 0)
  {
    v4 = *(v1 + 16);
    v6[0] = *v1;
    v6[1] = v4;
    v7 = *(v1 + 32);
    sub_100066CE4(v6);
    if (qword_1002AC430 == -1)
    {
LABEL_7:
      ByteBufferView.init(_:)(static ByteBufferAllocator.zeroCapacityWithDefaultAllocator, qword_1002E6088, dword_1002E6090 | (word_1002E6094 << 32) | (byte_1002E6096 << 48), v8);
      v5 = v8[1];
      *v1 = v8[0];
      *(v1 + 16) = v5;
      *(v1 + 32) = v9;

      return;
    }

LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_100064614(v2, v3);
}

uint64_t ByteBuffer.readableBytesView.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  ByteBufferView.init(_:)(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, v7);
  v5 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v5;
  *(a4 + 32) = v8;
}

void ByteBuffer.viewBytes(at:length:)(int64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X3>, void *a4@<X8>)
{
  if (a2 < 0)
  {
    sub_100067618();
    goto LABEL_12;
  }

  sub_100067618();
  if (v16 > v15)
  {
LABEL_12:
    *a4 = v12;
    a4[1] = v13;
    a4[2] = v5;
    a4[3] = v14;
    a4[4] = v4;
    return;
  }

  if ((HIDWORD(a3) - v9) < a1)
  {
    v12 = 0;
    v13 = 0;
    v5 = 0;
    v14 = 0;
    v4 = 0;
    goto LABEL_12;
  }

  v4 = a1 + v9;
  if (__OFADD__(a1, v9))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v4 < a1)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = (v11 >> 24) & 0xFFFF00 | BYTE6(v11);
  v18 = v11 >= v17;
  v19 = v11 - v17;
  if (!v18)
  {
    goto LABEL_15;
  }

  if (v4 <= v19)
  {
    v20 = v10;
    v5 = v11 & 0xFFFFFFFFFFFFFFLL;

    v12 = v20;
    v13 = a3;
    v14 = a1;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
}

uint64_t ByteBuffer.init(_:)(uint64_t a1)
{
  result = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3 < result)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (__OFSUB__(v3, result))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = ByteBuffer.getSlice(at:length:)(result, v3 - result, *a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  if (result)
  {
    v4 = result;
    sub_100066CE4(a1);
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static ByteBufferView.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = v4 - result;
  if (__OFSUB__(v4, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 != v9)
  {
    return 0;
  }

  sub_100067504();
  result = ByteBuffer.getSlice(at:length:)(v12, v5, v13, v14, v11 | (v10 << 48));
  if (result)
  {
    v17 = result;
    v18 = v15;
    v19 = v16;
    sub_100067518();
    result = ByteBuffer.getSlice(at:length:)(v7, v5, v22, v23, v20 | (v21 << 48));
    if (result)
    {
      v26 = static ByteBuffer.== infix(_:_:)(v17, v18, v19 & 0xFFFFFFFFFFFFFFLL, result, v24, v25 & 0xFFFFFFFFFFFFFFLL);

      return v26 & 1;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t ByteBufferView.hash(into:)()
{
  result = *(v0 + 24);
  if (__OFSUB__(*(v0 + 32), result))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000675B8();
  result = ByteBuffer.getSlice(at:length:)(v2, v3, v4, v5, v6);
  if (result)
  {
    v8 = v7;
    v9 = HIDWORD(v7);
    result = sub_1000675D4();
    if (v9 >= v8)
    {
      sub_1001F8078();
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

Swift::Int ByteBufferView.hashValue.getter()
{
  sub_1001F8068();
  ByteBufferView.hash(into:)();
  return sub_1001F80D8();
}

Swift::Int sub_100066A28()
{
  sub_1001F8068();
  ByteBufferView.hash(into:)();
  return sub_1001F80D8();
}

uint64_t ByteBufferView.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (qword_1002AC430 != -1)
  {
LABEL_25:
    sub_100061FE8();
  }

  v4 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  sub_100067504();
  ByteBufferView.init(_:)(v4, v7, v6 | (v5 << 48), &v24);
  v21 = v24;
  v22 = v25;
  v23 = v26;
  v20 = *(v2 + 16);
  if (v20)
  {
    v19 = a2;
    v8 = *(&v25 + 1);
    v9 = v26;
    v10 = v2;
    a2 = v2 + 32;
    v11 = HIDWORD(v24);

    v12 = 0;
    v2 = 0;
    v13 = v9;
    while (1)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v9 < v8)
      {
        goto LABEL_18;
      }

      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_19;
      }

      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_20;
      }

      v15 = *(a2 + v12);
      v16 = v13 + 1;
      ByteBuffer.copyBytes(at:to:length:)(v13, v13 + 1, v14);
      if (v2)
      {
        break;
      }

      sub_10005FFC8(v15, v13);
      v11 = HIDWORD(v21) + 1;
      if (HIDWORD(v21) == -1)
      {
        goto LABEL_21;
      }

      v17 = BYTE6(v22) | (WORD2(v22) << 8);
      if (v22 < v17)
      {
        goto LABEL_22;
      }

      if (v22 - v17 < v11)
      {
        goto LABEL_23;
      }

      ++HIDWORD(v21);
      if (v16 < v8)
      {
        goto LABEL_24;
      }

      ++v12;
      ++v13;
      if (v20 == v12)
      {

        *(&v22 + 1) = v8;
        v23 = v16;
        a2 = v19;
        goto LABEL_16;
      }
    }

    sub_1000674E0();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

LABEL_16:
    *a2 = v21;
    *(a2 + 16) = v22;
    *(a2 + 32) = v23;
  }

  return result;
}

double sub_100066C48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ByteBufferView.init(arrayLiteral:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_100066D14(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 24))(a1, v3);
}

unint64_t sub_100066D48()
{
  result = qword_1002AFDC0;
  if (!qword_1002AFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFDC0);
  }

  return result;
}

unint64_t sub_100066DD0()
{
  result = qword_1002AFDD8;
  if (!qword_1002AFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFDD8);
  }

  return result;
}

unint64_t sub_100066E28()
{
  result = qword_1002AFDE0;
  if (!qword_1002AFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFDE0);
  }

  return result;
}

unint64_t sub_100066E80()
{
  result = qword_1002AFDE8;
  if (!qword_1002AFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFDE8);
  }

  return result;
}

unint64_t sub_100066F10()
{
  result = qword_1002AFDF8;
  if (!qword_1002AFDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFDF8);
  }

  return result;
}

uint64_t sub_100066FA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002AFDD0);
    sub_100066DD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100067020()
{
  result = qword_1002AFE08;
  if (!qword_1002AFE08)
  {
    sub_100019BC4(&qword_1002AFE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFE08);
  }

  return result;
}

unint64_t sub_100067088()
{
  result = qword_1002AFE18;
  if (!qword_1002AFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFE18);
  }

  return result;
}

unint64_t sub_1000670E0()
{
  result = qword_1002AFE20;
  if (!qword_1002AFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFE20);
  }

  return result;
}

unint64_t sub_100067138()
{
  result = qword_1002AFE28;
  if (!qword_1002AFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFE28);
  }

  return result;
}

uint64_t sub_10006718C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000671CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100067224(uint64_t (*a1)(char *))
{
  v3 = *v1;
  v5 = *(v1 + 2);
  v4 = *(v1 + 3);
  v33 = *(v1 + 10);
  v6 = *(v1 + 22);
  v7 = v1[3];
  v8 = v1[4];
  v36 = v8;
  swift_beginAccess();
  v9 = v4 >= v5;
  v10 = v4 - v5;
  v11 = !v9;
  v12 = (v6 | (v33 << 8)) + v5;
  v34 = v7;
  while (v8 != v7)
  {
    if (v7 >= v8)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
    }

    v13 = v7 - v5;
    if (__OFSUB__(v7, v5))
    {
      goto LABEL_43;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_44;
    }

    if (v11)
    {
      goto LABEL_45;
    }

    if (v13 >= v10)
    {
      goto LABEL_46;
    }

    v39[0] = *(*(v3 + 24) + v12 + v13);
    v14 = a1(v39);
    if (v2)
    {
      return v36;
    }

    ++v7;
    if (v14)
    {
      v36 = v7 - 1;
      v15 = v35;
      while (v7 != v8)
      {
        if (v7 < v34 || v7 >= v8)
        {
          goto LABEL_47;
        }

        v17 = *(v15 + 2);
        v18 = v7 - v17;
        if (__OFSUB__(v7, v17))
        {
          goto LABEL_48;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        v19 = *(v15 + 3);
        v20 = v19 - v17;
        if (v19 < v17)
        {
          goto LABEL_50;
        }

        if (v18 >= v20)
        {
          goto LABEL_51;
        }

        v21 = *v15;
        v22 = *(v15 + 10);
        v23 = *(v15 + 22);
        swift_beginAccess();
        v24 = v23 | (v22 << 8);
        v38 = *(*(v21 + 24) + v24 + v7);
        if ((a1(&v38) & 1) == 0)
        {
          v25 = v36;
          if (v36 != v7)
          {
            if (v36 < v34 || v36 >= v8)
            {
              goto LABEL_53;
            }

            v27 = v36 - v17;
            if (__OFSUB__(v36, v17))
            {
              goto LABEL_54;
            }

            if ((v27 & 0x8000000000000000) != 0)
            {
              goto LABEL_55;
            }

            if (v27 >= v20)
            {
              goto LABEL_56;
            }

            v28 = *(v21 + 24) + v24 + v17;
            v29 = *(v28 + v27);
            v38 = *(v28 + v18);
            ByteBuffer._setBytes(_:at:)(&v38, v39, v36);
            v38 = v29;
            ByteBuffer._setBytes(_:at:)(&v38, v39, v7);
            v25 = v36;
          }

          v30 = __OFADD__(v25, 1);
          v31 = v25 + 1;
          if (v30)
          {
            goto LABEL_52;
          }

          v36 = v31;
        }

        v30 = __OFADD__(v7++, 1);
        v15 = v35;
        if (v30)
        {
          __break(1u);
          return v36;
        }
      }

      return v36;
    }
  }

  return v36;
}

uint64_t sub_100067550()
{

  return sub_1001F7118();
}

uint64_t sub_10006756C()
{
  *(v0 + 40) = *(v0 + 120);
  *(v0 + 56) = *(v0 + 136);
  *(v0 + 72) = *(v0 + 152);

  return sub_100066CAC(v0 + 40, v0 + 200);
}

uint64_t sub_10006759C()
{
  v1 = *(v0 + 136);
  *(v0 + 160) = *(v0 + 120);
  *(v0 + 176) = v1;
  *(v0 + 192) = *(v0 + 152);
  return v0 + 160;
}

uint64_t sub_1000675D4()
{

  return swift_beginAccess();
}

void sub_1000675F0(uint64_t a1, Swift::Int a2)
{
  v4 = *(v2 + 136);
  *(v2 + 80) = *(v2 + 120);
  *(v2 + 96) = v4;
  *(v2 + 112) = *(v2 + 152);

  sub_100064944(a1, a2, (v2 + 80));
}

uint64_t ECDSASignatureVerifier.__allocating_init(publicKey:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ECDSASignatureVerifier.init(publicKey:)(a1);
  return v2;
}

uint64_t ECDSASignatureVerifier.init(publicKey:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = kSecKeyAlgorithmECDSASignatureDigestX962SHA256;
  v2 = kSecKeyAlgorithmECDSASignatureDigestX962SHA256;
  return v1;
}

BOOL ECDSASignatureVerifier.verify(data:signature:)(uint64_t a1, unint64_t a2)
{
  v3 = sub_100169338(a1, a2);
  v5 = v4;
  v14 = 0;
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  isa = sub_1001F63A8().super.isa;
  v9 = sub_1001F63A8().super.isa;
  v10 = SecKeyVerifySignature(v7, v6, isa, v9, &v14);

  v11 = v14;
  if (v14)
  {
    type metadata accessor for CFError(0);
    sub_1000677BC();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
  }

  sub_10003A380(v3, v5);
  return v10 != 0;
}

unint64_t sub_1000677BC()
{
  result = qword_1002AFE30;
  if (!qword_1002AFE30)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFE30);
  }

  return result;
}

uint64_t ECDSASignatureVerifier.__deallocating_deinit()
{
  ECDSASignatureVerifier.deinit();

  return swift_deallocClassInstance();
}

void sub_100067894(char a1)
{
  if (a1)
  {
    sub_100031960();
  }

  else
  {

    *v1 = _swiftEmptyArrayStorage;
    sub_100033FEC();
    v2 = *v1;
    v3 = *(*v1 + 16);
    if (v3 >= *(*v1 + 24) >> 1)
    {
      sub_100033FEC();
      v2 = *v1;
    }

    *(v2 + 16) = v3 + 1;
    v4 = (v2 + 24 * v3);
    v4[4] = 0;
    v4[5] = 0;
    *(v4 + 47) = 0;
    *v1 = v2;
  }

  v1[1] = 0;
  v1[2] = 0;
}

BOOL ByteToMessageDecoder.shouldReclaimBytes(buffer:)(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFuLL)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  return v2 >= 0x401 && v2 - a2 < a2;
}

uint64_t ByteToMessageDecoder.wrapInboundOut(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10001A278();
  sub_10001E844();
  v7 = __chkstk_darwin(v5, v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, AssociatedTypeWitness, v7);
  return NIOAny.init<A>(_:)(v9, AssociatedTypeWitness, a2);
}

uint64_t ByteToMessageDecoder.decodeLast(context:buffer:seenEOF:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 16);
  do
  {
    v11 = v10(a1, a2, a4, a5);
  }

  while (!v5 && (v11 & 1) == 0);
  return 1;
}

Swift::Int sub_100067AF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

void *sub_100067B3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v8 = HIDWORD(a2);
  v9 = HIDWORD(a3);
  v10 = HIWORD(a3);
  v11 = sub_100106280(4);
  result = sub_1001CADA4(0, 0, 0, v11);
  *a4 = 1;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = a1;
  *(a4 + 40) = v5;
  *(a4 + 44) = v8;
  *(a4 + 48) = v4;
  *(a4 + 52) = v9;
  *(a4 + 54) = v10;
  return result;
}

void sub_100067BC8(char a1)
{
  if (*v1 != 1)
  {
    return;
  }

  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v5 - v4;
  if (v5 < v4)
  {
    v6 += *(v3 + 16);
  }

  if (v6 >= 1)
  {
    sub_1001C27F8(v3, v4, v5);
    if (v8)
    {
      v9 = v7;
      v10 = HIDWORD(v7);
      sub_100031960();
      v11 = *(v1 + 8);
      sub_100067D48(v11, *(v1 + 16), *(v1 + 24));
      sub_100067894(*(v11 + 16) < 0x10uLL);
      if (v10 >= v9)
      {
        if (v10 != v9 || (a1 & 1) != 0)
        {
          *v1 = 0;
        }

        else
        {
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a1)
  {
    *v1 = 0;
  }
}

void sub_100067D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = a3 - a2;
  if (a3 < a2)
  {
    v7 += *(a1 + 16);
  }

  if (v7 < 1)
  {
    return;
  }

  if (a2 > 0xFFFFFFFFLL)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((a3 | a2) < 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  if (a3 > 0xFFFFFFFFLL)
  {
    goto LABEL_42;
  }

  v8 = 0;
  v9 = a2;
  v10 = *(v3 + 12);
  v11 = a3;
  v12 = a1 + 32;
  v13 = a2;
  while (a3 >= a2 == v8 || v13 != a3)
  {
    v15 = *(a1 + 16);
    if (v15 <= v13)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v16 = (v12 + 24 * v13);
    if (!*v16)
    {
      goto LABEL_43;
    }

    v13 = (v15 + 0x1FFFFFFFFLL) & (v13 + 1);
    v8 = v13 < a2;
    if (HIDWORD(v13))
    {
      goto LABEL_34;
    }

    v17 = v16[1];
    v18 = HIDWORD(v17) >= v17;
    v19 = HIDWORD(v17) - v17;
    if (!v18)
    {
      goto LABEL_35;
    }

    v13 = v13;
    v20 = __OFADD__(v10, v19);
    v10 += v19;
    if (v20)
    {
      __break(1u);
      break;
    }
  }

  ByteBuffer.reserveCapacity(_:)(v10);

  v21 = 0;
  v38 = v5;
  v39 = v4;
  v37 = v4;
  while (v4 >= v5 == v21 || v9 != v11)
  {
    v23 = *(a1 + 16);
    if (v23 <= v9)
    {
      goto LABEL_36;
    }

    v24 = (v12 + 24 * v9);
    v25 = *v24;
    if (!*v24)
    {
      goto LABEL_44;
    }

    v26 = (v23 + 0x1FFFFFFFFLL) & (v9 + 1);
    if (HIDWORD(v26))
    {
      goto LABEL_37;
    }

    v40 = v26 < v5;
    v27 = v24[1];
    v28 = *(v24 + 22);
    v29 = *(v24 + 10);
    v30 = *(v24 + 4);
    v31 = *(v3 + 12);
    swift_beginAccess();
    if (HIDWORD(v27) < v27)
    {
      goto LABEL_38;
    }

    v32 = v30 | ((v29 | (v28 << 16)) << 32);
    v33 = *(v25 + 24) + ((v32 >> 24) & 0xFFFF00 | BYTE6(v32)) + v27;
    ByteBuffer._setBytes(_:at:)(v33, v33 + (HIDWORD(v27) - v27), v31);
    v34 = *(v3 + 12);
    v18 = __CFADD__(v34, v35);
    v36 = v34 + v35;
    if (v18)
    {
      goto LABEL_39;
    }

    v9 = v26;
    *(v3 + 12) = v36;
    v5 = v38;
    v4 = v39;
    v12 = a1 + 32;
    v11 = v37;
    v21 = v40;
  }
}

void sub_100067F88(uint64_t a1)
{
  *v1 = 1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  if (v3 < v2)
  {
    __break(1u);
  }

  else if (v3 == v2)
  {
    if (*(v1 + 16) != *(v1 + 24))
    {
      ByteBuffer.discardReadBytes()();
      v5 = *(v1 + 8);
      sub_100067D48(v5, *(v1 + 16), *(v1 + 24));
      sub_100067894(*(v5 + 16) < 0x10uLL);
      sub_10002EF5C(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
    }
  }

  else
  {
    sub_100068050(*a1, v2 | (v3 << 32), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  }
}

void sub_100068050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1] - 1;
  v9 = (*(*v3 + 16) - 1) & v8;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111F54();
    v7 = v10;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 >= *(v7 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v7 + 24 * v9;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 54) = BYTE6(a3);
  *(v11 + 52) = WORD2(a3);
  *(v11 + 48) = a3;

  *v3 = v7;
  v12 = (*(v7 + 16) - 1) & v8;
  v3[1] = v12;
  if (v12 == v3[2])
  {

    sub_100113DE8();
  }
}

Swift::Int sub_100068174()
{
  sub_1001F8068();
  CloseMode.hash(into:)(v2, *v0);
  return sub_1001F80D8();
}

unint64_t sub_1000681BC(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return sub_10006A634(v3);
}

uint64_t ByteToMessageHandler.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1, a2);
  (*(v5 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = ByteToMessageHandler.__allocating_init(_:maximumBufferSize:)();
  (*(v5 + 8))(a1, v4);
  return v7;
}

uint64_t ByteToMessageHandler.__allocating_init(_:maximumBufferSize:)()
{
  v0 = swift_allocObject();
  ByteToMessageHandler.init(_:maximumBufferSize:)();
  return v0;
}

void ByteToMessageHandler.init(_:maximumBufferSize:)()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *(*v0 + 80);
  v9 = sub_1001F74B8();
  sub_10001A278();
  v11 = v10;
  sub_10001E844();
  __chkstk_darwin(v12, v13);
  v15 = &v31 - v14;
  v16 = *(v7 + 96);
  sub_100018460(v0 + v16, 1, 1, v8);
  sub_10002E27C();
  v18 = (v0 + *(v17 + 112));
  *v18 = sub_10002EC5C(1uLL);
  v18[1] = v19;
  v18[2] = v20;
  sub_10002E27C();
  *(v0 + *(v21 + 120)) = 0;
  sub_10002E27C();
  *(v0 + *(v22 + 128)) = 0;
  sub_10002E27C();
  v24 = v0 + *(v23 + 136);
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 47) = 0;
  sub_10002E27C();
  *(v0 + *(v25 + 144)) = 0;
  sub_10002E27C();
  v27 = v0 + *(v26 + 152);
  *(v27 + 32) = 0;
  *v27 = v28;
  *(v27 + 16) = v28;
  (*(*(v8 - 8) + 32))(v15, v6, v8);
  sub_100018460(v15, 0, 1, v8);
  sub_100050548();
  (*(v11 + 40))(v0 + v16, v15, v9);
  swift_endAccess();
  sub_10002E27C();
  v30 = v0 + *(v29 + 104);
  *v30 = v4;
  *(v30 + 8) = v2 & 1;
  sub_100037B00();
}

uint64_t ByteToMessageHandler.deinit()
{
  sub_10006B0D8();
  sub_10006B0D8();
  v2 = *(v1 + 96);
  sub_1001F74B8();
  sub_100023520();
  (*(v3 + 8))(v0 + v2);
  sub_10002E27C();

  sub_10002E27C();
  sub_10006A634(*(v0 + *(v4 + 120)));
  sub_10002E27C();
  sub_10006A644(*(v0 + *(v5 + 136)), *(v0 + *(v5 + 136) + 8));
  sub_10002E27C();
  sub_10006A688(v0 + *(v6 + 152));
  return v0;
}

void sub_10006865C(uint64_t a1)
{
  v2 = v1;
  v23 = *v1;
  v4 = v23[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness, v6);
  v8 = &v19 - v7;
  v9 = (v1 + v23[14]);
  v10 = v23[12];
  swift_beginAccess();
  v21 = a1 + 24;
  for (i = (v5 + 8); ; (*i)(v8, AssociatedTypeWitness))
  {
    v11 = *v9;
    v12 = v9[1];
    v13 = v9[2];
    v14 = v13 - v12;
    if (v13 < v12)
    {
      v14 += *(v11 + 16);
    }

    if (v14 <= 0)
    {
      break;
    }

    swift_beginAccess();
    if (v13 == v12)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    if (HIDWORD(v12))
    {
      goto LABEL_22;
    }

    v15 = *(v11 + 16);
    if (v12 >= v15)
    {
      goto LABEL_23;
    }

    sub_10006AEB8(v11 + (v12 << 6) + 32, &v25, &qword_1002ADD30);
    if (v27[24] == 255)
    {
      goto LABEL_26;
    }

    v28[0] = v25;
    v28[1] = v26;
    v29[0] = *v27;
    *(v29 + 9) = *&v27[9];
    if (v13 >= v12)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    if ((v13 - v12 + v16) < 1)
    {
      goto LABEL_24;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v9 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100111F84();
      v11 = v18;
    }

    memset(v27, 0, 24);
    v26 = 0u;
    v25 = 0u;
    v27[24] = -1;
    *v9 = v11;
    if (v12 >= *(v11 + 16))
    {
      goto LABEL_25;
    }

    sub_10006AE68(&v25, v11 + (v12 << 6) + 32, &qword_1002ADD30);
    *v9 = v11;
    v9[1] = (*(v11 + 16) + 0x1FFFFFFFFLL) & (v12 + 1);
    swift_endAccess();
    v24 = a1;
    swift_getWitnessTable();
    ChannelOutboundHandler.unwrapOutboundIn(_:)(v8);
    sub_100034310(v28);
    swift_beginAccess();
    if (sub_10001C990(v2 + v10, 1, v4) == 1)
    {
      goto LABEL_27;
    }

    (*(a1 + 24))(v8, v4, a1);
    swift_endAccess();
  }
}

uint64_t sub_100068A44(uint64_t a1, uint64_t *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *a2;
  v8 = *a2;
  v9 = *(*a2 + 96);
  swift_beginAccess();
  v10 = *(v7 + 80);
  sub_1001F74B8();
  sub_1001F7FA8();
  result = swift_endAccess();
  v12 = *(a3 + 8);
  v13 = *(a3 + 12);
  if (v13 < v12)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v13 == v12 || *a4 != 1)
  {
LABEL_7:
    v18 = a2 + *(*a2 + 136);
    result = swift_beginAccess();
    if (*(v18 + 8))
    {
      sub_100067F88(a3);
      return swift_endAccess();
    }

    goto LABEL_10;
  }

  v21 = *(a3 + 16);
  v20 = *(a3 + 20);
  v19 = *(a3 + 22);
  swift_beginAccess();
  result = sub_10001C990(a2 + v9, 1, v10);
  if (result != 1)
  {
    v14 = *(v8 + 88);
    v15 = *(v14 + 48);

    v17 = v15(v16, v12 | (v13 << 32), v21 | (v20 << 32) | (v19 << 48), v10, v14);
    swift_endAccess();

    if (v17)
    {
      ByteBuffer.discardReadBytes()();
    }

    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_100068C4C(unint64_t result)
{
  if (!*(v1 + *(*v1 + 120)))
  {
    if (sub_100068D28(result, 1) == 2)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    return sub_1000681BC(v2);
  }

  return result;
}

uint64_t sub_100068D28(uint64_t a1, char a2)
{
  v4 = v2;
  v31 = a1;
  v6 = *v4;
  v33 = *(*v4 + 80);
  v34 = sub_1001F74B8();
  v7 = *(v34 - 8);
  __chkstk_darwin(v34, v8);
  v10 = &v29 - v9;
  v11 = a2 & 1;
  v41 = a2 & 1;
  v35 = v6[15];
  v29 = v6[16];
  v12 = v4 + v6[17];
  v32 = v6[12];
  v13 = (v4 + v6[14]);
  swift_beginAccess();
  v30 = (v7 + 8);
  while (1)
  {
    if (*(v4 + v35))
    {
      if (!v11)
      {
        return 0;
      }
    }

    else if (*(v4 + v29) != 1 && (v11 & 1) == 0)
    {
      return 0;
    }

    v14 = v41;
    result = swift_beginAccess();
    if (!*(v12 + 1))
    {
      break;
    }

    sub_100067BC8(v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    swift_endAccess();
    if (!v17)
    {
      goto LABEL_13;
    }

    if (v17 == 1)
    {
      return 2;
    }

    v36[0] = v17;
    v36[1] = v19;
    v37 = v21;
    v38 = WORD2(v21);
    v39 = BYTE6(v21);
    v40 = 0;
    v22 = v33;
    sub_100018460(v10, 1, 1, v33);
    swift_beginAccess();
    sub_1001F7FA8();
    swift_endAccess();
    result = sub_10001C990(v10, 1, v22);
    if (result == 1)
    {
      goto LABEL_23;
    }

    v23 = sub_100069198(v10, v36, v11, v4, v31, &v41);
    if (v3)
    {
      sub_100068A44(v10, v4, v36, &v40);

      return (*v30)(v10, v34);
    }

    v24 = v23;
    v40 = v23 & 1;
    sub_100068A44(v10, v4, v36, &v40);

    (*v30)(v10, v34);
    if (v24)
    {
LABEL_13:
      v25 = v13[1];
      v26 = v13[2];
      v27 = __OFSUB__(v26, v25);
      v28 = v26 - v25;
      if (v28 < 0 != v27)
      {
        v28 += *(*v13 + 16);
      }

      if (v28 < 1)
      {
        return 1;
      }
    }

    sub_100069098();
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100069098()
{
  v1 = (v0 + *(*v0 + 112));
  result = swift_beginAccess();
  v3 = v1[1];
  v4 = v1[2];
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v6 < 0 != v5)
  {
    v6 += *(*v1 + 16);
  }

  if (v6 >= 1)
  {
    v7 = *(*v0 + 152);
    swift_beginAccess();
    result = sub_10006AEB8(v0 + v7, v10, &qword_1002AFEE8);
    v8 = v11;
    if (v11)
    {
      v9 = v12;
      sub_10001AE68(v10, v11);
      (*(v9 + 8))(v8, v9);
      return sub_100019CCC(v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100069198(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, _BYTE *a6)
{
  v10 = *a4;
  v11 = *(*a4 + 80);
  v12 = *(v10 + 88);
  if (a3)
  {
    *a6 = 0;
    result = (*(v12 + 24))(a5, a2, *(a4 + *(*a4 + 144)), v11);
  }

  else
  {
    result = (*(v12 + 16))(a5, a2, v11, v12);
  }

  if (!v6)
  {
    if ((result & 1) == 0)
    {
      return result & 1;
    }

    v14 = a4 + *(*a4 + 104);
    if (*(v14 + 8))
    {
      return result & 1;
    }

    v15 = *(a2 + 8);
    v16 = *(a2 + 12);
    v17 = v16 >= v15;
    v18 = v16 - v15;
    if (!v17)
    {
      __break(1u);
      return result;
    }

    if (*v14 >= v18)
    {
      return result & 1;
    }

    else
    {
      sub_10006AF08();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t ByteToMessageHandler.handlerAdded(context:)()
{
  sub_10006B0D8();
  sub_10006B0D8();
  v4 = *(v3 + 80);
  sub_10006B0D8();
  v8 = *(v7 + 88);
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v0 = v5;
    *(v1 + v6) = 1;
    sub_10009B39C();
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(ObjectType, v11);
    swift_unknownObjectRelease();
    if (qword_1002AC430 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v13 = qword_1002E6088;
  v14 = dword_1002E6090 | (word_1002E6094 << 32) | (byte_1002E6096 << 48);

  sub_100067B3C(v15, v13, v14, v31);
  v16 = v32;
  v17 = v33;
  v18 = v35;
  v19 = v36;
  v20 = v34;
  v21 = v2 + *(*v2 + 136);
  swift_beginAccess();
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = v31[1];
  *v21 = v31[0];
  *(v21 + 16) = v24;
  *(v21 + 32) = v16;
  *(v21 + 40) = v17;
  *(v21 + 48) = v20;
  *(v21 + 54) = v19;
  *(v21 + 52) = v18;
  sub_10006A644(v22, v23);
  v30 = v2;

  sub_1000183C4(&qword_1002AFEF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
  }

  v25 = *(*v2 + 152);
  sub_100050548();
  sub_10006AE68(v28, v2 + v25, &qword_1002AFEE8);
  swift_endAccess();
  v26 = *(*v2 + 96);
  sub_100050548();
  result = sub_10001C990(v2 + v26, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 40))(v0, v4, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t ByteToMessageHandler.handlerRemoved(context:)(uint64_t a1)
{
  *(v1 + *(*v1 + 128)) = 4;
  sub_10006B0D8();
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  if (*(v1 + *(v3 + 120)) <= 1uLL)
  {
    sub_1000681BC(2);
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_10006B0D8();
  v8 = *(v7 + 152);
  sub_100050548();
  sub_10006AE68(v12, v1 + v8, &qword_1002AFEE8);
  swift_endAccess();
  sub_10002E27C();
  v10 = *(v9 + 96);
  sub_100050548();
  result = sub_10001C990(v1 + v10, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(a1, v5, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t ByteToMessageHandler.channelRead(context:data:)(uint64_t a1)
{
  v2 = v1;
  sub_10002E27C();
  swift_getWitnessTable();
  ChannelInboundHandler.unwrapInboundIn(_:)(&v17);
  v3 = v17;
  v5 = v18;
  v4 = v19;
  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = *(*v1 + 120);
  v10 = *(v1 + v9);
  if (v10 >= 3)
  {
    sub_10006A6F0();
    swift_allocError();
    *v15 = v10;
    *(v15 + 8) = v3;
    *(v15 + 16) = v5 | (v4 << 32);
    *(v15 + 30) = v8;
    *(v15 + 28) = v7;
    *(v15 + 24) = v6;
    sub_10006A744(v10);
    sub_10006A744(v10);

    ChannelHandlerContext.fireErrorCaught(_:)();

    sub_10006A634(v10);
  }

  v11 = v22;
  v12 = v1 + *(*v1 + 136);
  result = sub_100050548();
  if (!*(v12 + 8))
  {
    goto LABEL_15;
  }

  if (v4 < v5)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 != v5)
  {
    sub_10002EF5C(v3, v5 | (v4 << 32), v6 | (v7 << 32) | (v11 << 48));
  }

  swift_endAccess();
  v14 = sub_100068D28(a1, 0);
  if (v14 == 2 || *(v2 + v9) != 1)
  {
  }

  result = sub_100068D28(a1, 1);
  if (result != 2)
  {
    sub_1000681BC(2);
  }

LABEL_16:
  __break(1u);
  return result;
}

void ByteToMessageHandler.channelInactive(context:)()
{
  sub_10002E27C();
  *(v0 + *(v1 + 144)) = 1;
  sub_100068C4C(v2);
  ChannelHandlerContext.fireChannelInactive()();
}

uint64_t ByteToMessageHandler.userInboundEventTriggered(context:event:)(unint64_t a1, uint64_t a2)
{
  sub_10002F9B0(a2, v7);
  if (swift_dynamicCast() && (v6 & 1) == 0)
  {
    sub_10002E27C();
    *(v2 + *(v4 + 144)) = 1;
    sub_100068C4C(a1);
  }

  return ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
}

void ByteToMessageHandler<>.write(context:data:promise:)()
{
  sub_100037C08();
  v2 = v1;
  v26 = v3;
  v27 = v4;
  v6 = v5;
  v25 = *v0;
  v7 = v25;
  v8 = *(v25 + 80);
  swift_getAssociatedTypeWitness();
  sub_10001A278();
  v23 = v10;
  v24 = v9;
  sub_10001E844();
  __chkstk_darwin(v11, v12);
  v14 = &v23 - v13;
  v15 = sub_1001F74B8();
  sub_10001A278();
  v17 = v16;
  sub_10001E844();
  __chkstk_darwin(v18, v19);
  v21 = &v23 - v20;
  v22 = *(v7 + 96);
  swift_beginAccess();
  (*(v17 + 16))(v21, &v0[v22], v15);
  LODWORD(v7) = sub_10001C990(v21, 1, v8);
  (*(v17 + 8))(v21, v15);
  if (v7 == 1)
  {
    sub_10002E27C();
    sub_100050548();
    sub_10002F1C8(v6);
    swift_endAccess();
LABEL_5:
    ChannelHandlerContext.write(_:promise:)();
    sub_100037B00();
    return;
  }

  v28 = v2;
  swift_getWitnessTable();
  ChannelOutboundHandler.unwrapOutboundIn(_:)(v14);
  sub_100050548();
  if (sub_10001C990(&v0[v22], 1, v8) != 1)
  {
    (*(v2 + 24))(v14, v8, v2);
    swift_endAccess();
    (*(v23 + 8))(v14, v24);
    goto LABEL_5;
  }

  __break(1u);
}

void ByteToMessageHandler.removeHandler(context:removalToken:)()
{
  sub_100037C08();
  sub_10002E27C();
  v4 = *(v3 + 128);
  if (*(v0 + v4) == 1)
  {
    v5 = v2;
    v6 = v1;
    *(v0 + v4) = 2;
    v7 = *(*(v1 + 32) + 56);
    ObjectType = swift_getObjectType();
    v9 = swift_allocObject();
    v9[2] = v0;
    v9[3] = v6;
    v9[4] = v5;
    v10 = *(v7 + 24);

    swift_unknownObjectRetain();

    v10(sub_10006A79C, v9, ObjectType, v7);
    swift_unknownObjectRelease();
    sub_100037B00();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100069E54(uint64_t a1, unint64_t a2)
{
  sub_100068C4C(a2);
  v3 = *(*a1 + 128);
  if (*(a1 + v3) == 2)
  {
    *(a1 + v3) = 3;
  }

  return ChannelHandlerContext.leavePipeline(removalToken:)();
}

uint64_t MessageToByteHandler.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  MessageToByteHandler.init(_:)();
  return v0;
}

uint64_t MessageToByteHandler.init(_:)()
{
  *(v0 + 16) = 0;
  sub_10006B0D8();
  v2 = (v0 + *(v1 + 112));
  *v2 = 0;
  v2[1] = 0;
  *(v2 + 15) = 0;
  sub_10002E27C();
  (*(*(*(v4 + 80) - 8) + 32))(v0 + *(v3 + 104));
  return v0;
}

char *MessageToByteHandler.deinit()
{
  v1 = *v0;
  sub_10006A634(*(v0 + 2));
  sub_10002E27C();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 104)]);
  sub_10002E27C();

  return v0;
}

uint64_t sub_10006A040(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void MessageToByteHandler.write(context:data:promise:)()
{
  sub_100037C08();
  v30 = v1;
  v3 = v2;
  v4 = *v0;
  v5 = *(*v0 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v2, v7);
  v9 = &v26 - v8;
  v11 = *(v10 + 88);
  swift_getAssociatedTypeWitness();
  sub_10001A278();
  sub_10001E844();
  v14 = __chkstk_darwin(v12, v13);
  v17 = &v26 - v16;
  v18 = *(v0 + 2);
  switch(v18)
  {
    case 1:
      v27 = v14;
      v28 = v15;
      v29 = v3;
      swift_getWitnessTable();
      ChannelOutboundHandler.unwrapOutboundIn(_:)(v17);
      v19 = &v0[*(*v0 + 112)];
      sub_100050548();
      if (!*v19)
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *v19 = sub_10005EFF0(*(*v19 + 16));
      }

      v26 = v4;
      *(v19 + 4) = *(*v19 + 16);
      *(v19 + 10) = 0;
      v19[22] = 0;
      *(v19 + 1) = 0;
      swift_endAccess();
      (*(v6 + 16))(v9, &v0[*(*v0 + 104)], v5);
      sub_100050548();
      if (!*v19)
      {
        goto LABEL_20;
      }

      (*(v11 + 16))(v17, v19, v5, v11);
      swift_endAccess();
      (*(v6 + 8))(v9, v5);
      if (!*v19)
      {
        goto LABEL_21;
      }

      v22 = v19[22];
      v23 = *(v19 + 10);
      v24 = *(v19 + 4);
      v25 = *(v19 + 1);
      v31 = *v19;
      v32 = v25;
      v33 = v24;
      v34 = v23;
      v35 = v22;
      _EmittingChannelHandler.wrapOutboundOut(_:)(v36);
      ChannelHandlerContext.write(_:promise:)();
      sub_100034310(v36);
      (*(v28 + 8))(v17, v27);
LABEL_17:
      sub_100037B00();
      return;
    case 2:
      goto LABEL_17;
    case 0:
      __break(1u);
      goto LABEL_19;
  }

  if (v30)
  {
    swift_errorRetain();
    sub_1000A13B0();
  }

  else
  {
    swift_errorRetain();
  }

  ChannelHandlerContext.fireErrorCaught(_:)();
  sub_100037B00();

  sub_10006A634(v20);
}

uint64_t MessageToByteHandler.handlerAdded(context:)()
{
  v1 = v0;
  if (*(v0 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = 1;
    sub_10006A634(0);
    sub_10009B39C();
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(ObjectType, v3);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    swift_unknownObjectRelease();
    type metadata accessor for ByteBuffer._Storage();
    v12 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(256, v5, v7, v9, v11);
    LODWORD(v5) = *(v12 + 16);
    v13 = v1 + *(*v1 + 112);
    sub_10006B0E4();
    *v13 = v12;
    *(v13 + 8) = 0;
    *(v13 + 22) = 0;
    *(v13 + 20) = 0;
    *(v13 + 16) = v5;
  }

  return result;
}

uint64_t MessageToByteHandler.handlerRemoved(context:)()
{
  v1 = *(v0 + 16);
  *(v0 + 16) = 2;
  sub_10006A634(v1);
  sub_10002E27C();
  v3 = (v0 + *(v2 + 112));
  sub_10006B0E4();
  *v3 = 0;
  v3[1] = 0;
  *(v3 + 15) = 0;
}

unint64_t sub_10006A634(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_10006A644(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10006A688(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002AFEE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10006A6F0()
{
  result = qword_1002AFEF8;
  if (!qword_1002AFEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFEF8);
  }

  return result;
}

unint64_t sub_10006A744(unint64_t result)
{
  if (result >= 3)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10006A754()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10006A7AC()
{
  result = qword_1002AFF00;
  if (!qword_1002AFF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AFF00);
  }

  return result;
}

uint64_t sub_10006A800(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 sub_10006A868(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_10006A87C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 31))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_10006A8D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 30) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 31) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 31) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 23) = 0;
    }
  }

  return result;
}

uint64_t sub_10006A950()
{
  result = sub_1001F74B8();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006AA40()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006AB00(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10006AB30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10006AB4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 55))
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

uint64_t sub_10006AB8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 54) = 0;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 55) = 1;
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

    *(result + 55) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_10006ABFC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x10006ACC8);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10006AD08()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10006AD48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006ADA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_10006ADF8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_10006AE68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100037C20(a1, a2, a3);
  sub_100023520();
  (*(v5 + 40))(v3, v4);
  return v3;
}

uint64_t sub_10006AEB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100037C20(a1, a2, a3);
  sub_100023520();
  (*(v5 + 16))(v3, v4);
  return v3;
}

unint64_t sub_10006AF08()
{
  result = qword_1002B0240;
  if (!qword_1002B0240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0240);
  }

  return result;
}

_BYTE *sub_10006AF60(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10006B02CLL);
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

unint64_t sub_10006B068()
{
  result = qword_1002B0248;
  if (!qword_1002B0248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0248);
  }

  return result;
}

uint64_t sub_10006B0E4()
{

  return swift_beginAccess();
}

uint64_t sub_10006B104(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006B124(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

BOOL sub_10006B1B0()
{
  v1 = v0[1];
  v3[0] = *v0;
  v3[1] = v1;
  v3[2] = v0[2];
  return sub_10000B9DC(v3) == 0;
}

uint64_t sub_10006B218(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (!a2)
  {
    v3 = 0;
  }

  if (result)
  {
    if (result != -1 || v3 != 0x8000000000000000)
    {
      return v3 / result == 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10006B278(uint64_t a1)
{
  result = sub_10000BA98(4);
  if ((result - 0x2000000000000000) >> 62 == 3)
  {
    v3 = 4 * result;
    if (((4 * result) * a1) >> 64 == (4 * result * a1) >> 63)
    {
      swift_slowAlloc();
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_10006B3AC(_BOOL8 result, unint64_t a2)
{
  if (((a2 | result) & 0x8000000000000000) == 0)
  {
    return a2 >= result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006B3D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10006B3E4(unint64_t result, unint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_8;
  }

  if (!a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (result < a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 - 1 < result)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_10006B414(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (result)
  {
    if (!a3)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    if (result < a3)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }

  if (!a4)
  {
    return result;
  }

  if (!a2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (a4 < a2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10006B448(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006B45C()
{
  v1 = v0[1];
  v8 = *v0;
  v9 = v1;
  v10 = v0[2];
  v2 = sub_10000B9DC(&v8);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  do
  {
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    v6 = v0[1];
    v8 = *v0;
    v9 = v6;
    v10 = v0[2];
    v3 = sub_10000BA0C(&v8, v3);
    ++v4;
  }

  while (v3);
  return v5;
}

void sub_10006B520()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(v2, v1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!v3)
  {
    sub_100066CE4(v0);
    return;
  }

  v4 = sub_1000E4950(v2 - v1, 0);
  v5 = sub_10006D07C(v7, v4 + 32, v3);
  sub_100066CAC(v0, v6);
  sub_10006E354(v7);
  if (v5 == v3)
  {
    sub_100066CE4(v0);
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_10006B5CC(uint64_t a1)
{
  v1 = sub_10006FF68(a1);

  return v1;
}

uint64_t sub_10006B600(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result * a2;
  if ((result * a2) >> 64 != (result * a2) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v4 * a2) >> 64 != (v4 * a2) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 * a2 < v3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = a3 + v3;
  if (a3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006B658(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (!a2)
  {
    v3 = 0;
  }

  if (result)
  {
    if (result != -1 || v3 != 0x8000000000000000)
    {
      return v3 / result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006B690@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006B658(*v1, v1[1], v1[2]);
  *a1 = result;
  return result;
}

void (*sub_10006B6C0(void *a1, uint64_t *a2))(void *a1)
{
  v5 = sub_100064190(0x38uLL);
  *a1 = v5;
  v6 = sub_10006B77C(v5, *a2, *v2);
  v5[4] = v7;
  v5 += 4;
  v5[1] = v8;
  v5[2] = v6;
  return sub_10006B734;
}

void sub_10006B734(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1);

  free(v1);
}

uint64_t (*sub_10006B77C(uint64_t a1, uint64_t a2, uint64_t a3))(void, void, void, void, void, void)
{
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((v3 * a3) >> 64 != (v3 * a3) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 * a3 >= a2 * a3)
  {
    return debugOnly(_:);
  }

LABEL_9:
  __break(1u);
  return result;
}

double sub_10006B7EC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10006B8E8(*a1, a1[1], *v2, v2[1], v2[2], v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_10006B840@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[1];
  v10[0] = *v3;
  v10[1] = v7;
  v10[2] = v3[2];
  result = sub_10000B9DC(v10);
  if (!a1)
  {
    goto LABEL_4;
  }

  if (result)
  {
    if (result > a1)
    {
      __break(1u);
    }

LABEL_4:
    v9 = v3[1];
    *(a3 + 16) = *v3;
    *(a3 + 32) = v9;
    *(a3 + 48) = v3[2];
    *a3 = a1;
    *(a3 + 8) = a2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006B8E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if (!a3)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a3 == -1 && v6 == 0x8000000000000000)
  {
    goto LABEL_16;
  }

  v8 = v6 / a3;
  if (v8 < 0)
  {
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (v8 >= a2)
    {
      *a6 = result;
      a6[1] = a2;
      a6[2] = a3;
      a6[3] = a4;
      a6[4] = a5;
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10006B940(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0 || *(a3 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = result;

    return v3;
  }

  return result;
}

double sub_10006B9A0@<D0>(uint64_t a1@<X8>)
{
  sub_10006BA6C(*v1, v1[1], v1[2], v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_10006B9EC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  *a1 = *v1;
  *(a1 + 16) = v3;
  v5 = *v1;
  v4 = v1[1];
  *(a1 + 32) = v1[2];
  v7[0] = v5;
  v7[1] = v4;
  v7[2] = v1[2];
  result = sub_10000B9DC(v7);
  *(a1 + 48) = result;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_10006BA6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3 - a2;
  if (!a2)
  {
    v4 = 0;
  }

  if (result)
  {
    if (result != -1 || v4 != 0x8000000000000000)
    {
      *a4 = result;
      a4[1] = a2;
      a4[2] = a3;
      a4[3] = 0;
      a4[4] = v4 / result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006BAF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10006BB2C(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006BB2C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result += a2;
  return result;
}

unsigned int *sub_10006BB54(unsigned int *a1, uint64_t a2)
{
  v3 = a2;
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3)
  {
    while (1)
    {
      v5 = v2[1];
      v7[0] = *v2;
      v7[1] = v5;
      v7[2] = v2[2];
      if (!a1)
      {
        break;
      }

      a1 = sub_10000BA0C(v7, a1);
      if (!--v3)
      {
        return a1;
      }
    }

LABEL_7:
    __break(1u);
  }

  return a1;
}

uint64_t sub_10006BBE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_10006BCF0(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

unsigned int *sub_10006BC28(unsigned int *a1, uint64_t a2, unsigned int *a3)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  for (i = a2; i; --i)
  {
    if (a1)
    {
      if (a1 == a3)
      {
        return 0;
      }
    }

    else if (!a3)
    {
      return 0;
    }

    v7 = v3[1];
    v9[0] = *v3;
    v9[1] = v7;
    v9[2] = v3[2];
    if (!a1)
    {
      goto LABEL_13;
    }

    a1 = sub_10000BA0C(v9, a1);
  }

  return a1;
}

uint64_t sub_10006BCF0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2)
  {
    while (1)
    {
      if (a3 == result)
      {
        return 0;
      }

      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++result;
      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

char *sub_10006BD50(char *result, char *a2)
{
  if (a2)
  {
    if (!result)
    {
      __break(1u);
      return result;
    }

    if (a2 < result)
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }

    if (result == a2)
    {
      return 0;
    }

LABEL_8:
    for (i = 0; ; ++i)
    {
      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10006E460();
      if (!v5)
      {
        goto LABEL_18;
      }

      v6 = sub_10000BA0C(&v7, v5);
      if (v6)
      {
        if (v6 == a2)
        {
          return v3;
        }
      }

      else if (!a2)
      {
        return v3;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (result)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_10006BE24(uint64_t a1, uint64_t a2)
{
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (result < 0 != v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(a1, a2);
  v5 = a1 - a2;
  if (!v5)
  {
    return HTTPHeaders.startIndex.getter();
  }

  if (v5 < 0 == v4)
  {
    goto LABEL_9;
  }

  if (v5 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

Swift::Int sub_10006BEC8@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = Heap.index(after:)(*a1);
  *a2 = result;
  return result;
}

__n128 sub_10006BEF4@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = 0;
  return result;
}

unint64_t sub_10006BF24()
{
  result = qword_1002B0260;
  if (!qword_1002B0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0260);
  }

  return result;
}

uint64_t sub_10006C058(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == a2)
    {
      return 1;
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

char *sub_10006C1C8()
{
  sub_10006E460();
  if (!v0)
  {
    __break(1u);
  }

  return sub_10000BA0C(&v2, v0);
}

uint64_t sub_10006C228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006C174();
  *a1 = result;
  return result;
}

char *sub_10006C250(uint64_t a1, char **a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = *(result + 4);
    v5 = sub_10013E944(result);
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
    return debugOnly(_:);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned int *sub_10006C3A8@<X0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, unsigned int **a3@<X8>)
{
  result = sub_10006BB54(*a1, a2);
  *a3 = result;
  return result;
}

unsigned int *sub_10006C3F0@<X0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, unsigned int **a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_10006BC28(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

char *sub_10006C558@<X0>(char **a1@<X8>)
{
  result = sub_10006C1C8();
  *a1 = result;
  return result;
}

char *sub_10006C584(unsigned int **a1)
{
  v2 = *(v1 + 2);
  v3 = v1[2];
  v4 = *(v1 + 6);
  v5 = v1[4];
  v6 = *a1;
  v9 = *v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v1[5];
  if (!v6)
  {
    __break(1u);
  }

  result = sub_10000BA0C(&v9, v6);
  *a1 = result;
  return result;
}

uint64_t sub_10006C620@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = v1[2];
  v6 = *(v1 + 6);
  v7 = v1[4];
  v8 = *(v1 + 10);
  v9 = *(v1 + 11);
  *a1 = *v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 44) = v9;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  result = sub_10000B9DC(&v11);
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_10006C774()
{
  result = qword_1002B0298;
  if (!qword_1002B0298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0298);
  }

  return result;
}

unint64_t sub_10006C7CC()
{
  result = qword_1002B02A0;
  if (!qword_1002B02A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B02A0);
  }

  return result;
}

unint64_t sub_10006C8AC()
{
  result = qword_1002B02C8;
  if (!qword_1002B02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B02C8);
  }

  return result;
}

uint64_t sub_10006C900(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  v3 = a1[2];
  v4 = *(a1 + 6);
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a1 + 1);
  __dst = *a1;
  v29 = v7;
  v30 = *(a1 + 2);
  v8 = sub_10000B9DC(&__dst);
  v26 = 0;
  v27 = 0xF000000000000007;
  while (1)
  {
    do
    {
      do
      {
        while (1)
        {
          if (!v8)
          {
            return v26;
          }

          v9 = v8[1];
          v10 = v8[2];
          v11 = sub_10000BA58(v8);
          v12 = *v8;
          v13 = sub_10000BA90(0);
          v14 = __OFSUB__(v12, v13);
          v15 = v12 - v13;
          if (v14)
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
          }

          *&__dst = v1;
          DWORD2(__dst) = v2;
          *&v29 = v3;
          DWORD2(v29) = v4;
          *&v30 = v5;
          *(&v30 + 1) = v6;
          result = sub_10000BA0C(&__dst, v8);
          v8 = result;
          if (v9)
          {
            break;
          }

          if (v10 == 27)
          {
            if (!v11 || v15 < 1)
            {
              goto LABEL_41;
            }

            v22 = *v11;
LABEL_24:
            if (qword_1002AC4C8 != -1)
            {
              swift_once();
            }

            v23 = dword_1002E615C;
            if (qword_1002AC4D8 != -1)
            {
              sub_10006E49C();
              swift_once();
            }

            v24 = v23 & v22;
            v26 = 2;
            if (dword_1002E6164 != (v23 & v22))
            {
              if (qword_1002AC4D0 != -1)
              {
                sub_10006E488();
                swift_once();
              }

              v26 = 1;
              if (dword_1002E6160 != v24)
              {
                if (qword_1002AC4E0 != -1)
                {
                  sub_10006E474();
                  swift_once();
                }

                if (dword_1002E6168 == v24)
                {
                  v25 = 3;
                }

                else
                {
                  v25 = 0;
                }

                v26 = v25;
              }
            }
          }

          else
          {
            if (qword_1002AC4F0 != -1)
            {
              result = swift_once();
            }

            if (v10 == dword_1002E6170)
            {
              if (!v11)
              {
                goto LABEL_43;
              }

              v20 = v11[2];
              sub_10002D83C(v27);
              sub_1000183C4(&qword_1002AE9A8);
              v21 = swift_allocObject();
              *(v21 + 16) = 512;
              *(v21 + 20) = v20;
              *(v21 + 24) = 0;
              *(v21 + 32) = 0;
              v27 = v21;
              *(v21 + 40) = 0xE000000000000000;
            }
          }
        }
      }

      while (v9 != 41);
      if (v10 == 36)
      {
        if (!v11 || v15 < 4)
        {
          goto LABEL_40;
        }

        LODWORD(__dst) = 0;
        memcpy(&__dst, v11, v15);
        v22 = __dst;
        goto LABEL_24;
      }

      if (qword_1002AC500 != -1)
      {
        result = swift_once();
      }
    }

    while (v10 != dword_1002E6178);
    if (!v11)
    {
      break;
    }

    v17 = *v11;
    v18 = *(v11 + 1);
    sub_10002D83C(v27);
    sub_1000183C4(&qword_1002AE9A0);
    v19 = swift_allocObject();
    *(v19 + 24) = v17;
    *(v19 + 32) = v18;
    *(v19 + 16) = 7680;
    *(v19 + 40) = 0;
    v27 = v19 | 0x4000000000000000;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0xE000000000000000;
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_10006CCB0(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_1002AC4D0 != -1)
      {
        sub_10006E488();
        swift_once();
      }

      v1 = &dword_1002E6160;
      break;
    case 2:
      if (qword_1002AC4D8 != -1)
      {
        sub_10006E49C();
        swift_once();
      }

      v1 = &dword_1002E6164;
      break;
    case 3:
      if (qword_1002AC4E0 != -1)
      {
        sub_10006E474();
        swift_once();
      }

      v1 = &dword_1002E6168;
      break;
    default:
      if (qword_1002AC4C0 != -1)
      {
        swift_once();
      }

      v1 = &dword_1002E6158;
      break;
  }

  return *v1;
}

void sub_10006CDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a3 < 0)
    {
      __break(1u);
    }
  }

  else
  {
    _s25ASOctaneSupportXPCService17EventLoopIteratorVyACSayAA0dE0_pGcfC_0();
  }
}

uint64_t sub_10006CDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = v3[1];
  v22 = v3[2];
  v23 = *v3;
  v18 = v3[3];
  v21 = v3[4];
  v19 = *(v3 + 11);
  v20 = *(v3 + 10);
  v7 = *(v3 + 1);
  v24 = *v3;
  v25 = v7;
  v26 = *(v3 + 2);
  v8 = sub_10000B9DC(&v24);
  if (a2)
  {
    if (a3)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        v9 = 0;
        while (1)
        {
          v10 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (!v8)
          {
            a3 = v9;
            goto LABEL_15;
          }

          v11 = *(v8 + 1);
          v12 = sub_10000BA58(v8);
          v13 = *v8;
          v14 = sub_10000BA90(0);
          if (__OFSUB__(v13, v14))
          {
            goto LABEL_17;
          }

          *&v24 = v23;
          if (v12)
          {
            v15 = v12 + v13 - v14;
          }

          else
          {
            v15 = 0;
          }

          DWORD2(v24) = v17;
          *&v25 = v22;
          DWORD2(v25) = v18;
          *&v26 = v21;
          *(&v26 + 1) = __PAIR64__(v19, v20);
          v8 = sub_10000BA0C(&v24, v8);
          *a2 = v11;
          *(a2 + 8) = v12;
          *(a2 + 16) = v15;
          *(a2 + 24) = 0;
          a2 += 32;
          ++v9;
          if (v10 == a3)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    a3 = 0;
  }

LABEL_15:
  *a1 = v23;
  *(a1 + 8) = v17;
  *(a1 + 16) = v22;
  *(a1 + 24) = v18;
  *(a1 + 32) = v21;
  *(a1 + 40) = v20;
  *(a1 + 44) = v19;
  *(a1 + 48) = v8;
  return a3;
}