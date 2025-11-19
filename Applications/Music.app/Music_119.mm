void sub_100C99C80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_98;
  }

  if (v5 >= 1)
  {
    v6 = a4;
    v9 = *(a3 + 16);
    v63 = a2 - a1;
    if (a1 < (v9 - v5) / 2)
    {
      if (static _HashTable.maximumCapacity(forScale:)() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        if (v9 < a1)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        if (a1)
        {
          v10 = 0;
          v57 = a1;
          while (1)
          {
            v11 = a3 + 32 + 56 * v10;
            v12 = *(v11 + 32);
            v58 = *(v11 + 40);
            v60 = *(v11 + 48);
            v14 = *v11;
            v13 = *(v11 + 8);
            Hasher.init(_seed:)();
            if (v14 == 0.0)
            {
              v15 = 0.0;
            }

            else
            {
              v15 = v14;
            }

            Hasher._combine(_:)(*&v15);
            if (v13 == 0.0)
            {
              v16 = 0.0;
            }

            else
            {
              v16 = v13;
            }

            Hasher._combine(_:)(*&v16);

            String.hash(into:)();
            v17 = *(v12 + 16);
            Hasher._combine(_:)(v17);
            if (v17)
            {
              v18 = (v12 + 80);
              do
              {
                v19 = *(v18 - 6);
                v20 = *(v18 - 5);
                v22 = *(v18 - 2);
                v21 = *(v18 - 1);
                v24 = *v18;
                v18 += 7;
                v23 = *&v24;
                if (v19 == 0.0)
                {
                  v19 = 0.0;
                }

                Hasher._combine(_:)(*&v19);
                if (v20 == 0.0)
                {
                  v25 = 0.0;
                }

                else
                {
                  v25 = v20;
                }

                Hasher._combine(_:)(*&v25);

                String.hash(into:)();
                Hasher._combine(_:)(v22);
                Hasher._combine(_:)(v21);
                Hasher._combine(_:)(v23);

                --v17;
              }

              while (v17);
            }

            if (v60)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1uLL);
              v26 = (v58 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v58 : 0;
              Hasher._combine(_:)(v26);
            }

            v6 = a4;
            v5 = v63;
            Hasher._finalize()();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v27 = _HashTable.BucketIterator.currentValue.getter();
                if ((v28 & 1) == 0 && v27 == v10)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFADD__(v10, v63))
            {
              goto LABEL_95;
            }

            ++v10;
            _HashTable.BucketIterator.currentValue.setter();

            if (v10 == v57)
            {
              goto LABEL_37;
            }
          }

          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_37:

        goto LABEL_38;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v34 = _HashTable.BucketIterator.currentValue.getter();
      if ((v35 & 1) != 0 || v34 >= a1)
      {
LABEL_53:
        _HashTable.BucketIterator.advance()();
LABEL_38:
        v29 = v6[1];
        if (__OFSUB__(v29 >> 6, v5))
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v30 = 1 << *v6;
        v31 = __OFSUB__(v30, 1);
        v32 = v30 - 1;
        if (v31)
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v33 = (v32 & (((v29 >> 6) - v5) >> 63)) + (v29 >> 6) - v5;
        if (v33 < v32)
        {
          v32 = 0;
        }

        v6[1] = v6[1] & 0x3FLL | ((v33 - v32) << 6);
        return;
      }

      if (!__OFADD__(v34, v5))
      {
        _HashTable.BucketIterator.currentValue.setter();
        goto LABEL_53;
      }

      __break(1u);
LABEL_59:
      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v36 = _HashTable.BucketIterator.currentValue.getter();
      if ((v37 & 1) == 0 && v36 >= v4)
      {
        if (__OFSUB__(v36, v5))
        {
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if ((v9 - a2) >= static _HashTable.maximumCapacity(forScale:)() / 3)
    {
      goto LABEL_59;
    }

    if (v9 < v4)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v4 < 0)
    {
LABEL_105:
      __break(1u);
      return;
    }

    if (v9 != v4)
    {
      v56 = v9;
      do
      {
        v38 = a3 + 32 + 56 * v4;
        v39 = *(v38 + 32);
        v59 = *(v38 + 40);
        v61 = *(v38 + 48);
        v41 = *v38;
        v40 = *(v38 + 8);
        Hasher.init(_seed:)();
        if (v41 == 0.0)
        {
          v42 = 0.0;
        }

        else
        {
          v42 = v41;
        }

        Hasher._combine(_:)(*&v42);
        if (v40 == 0.0)
        {
          v43 = 0.0;
        }

        else
        {
          v43 = v40;
        }

        Hasher._combine(_:)(*&v43);

        String.hash(into:)();
        v44 = *(v39 + 16);
        Hasher._combine(_:)(v44);
        if (v44)
        {
          v45 = (v39 + 80);
          do
          {
            v46 = *(v45 - 6);
            v47 = *(v45 - 5);
            v48 = *(v45 - 2);
            v49 = *(v45 - 1);
            v51 = *v45;
            v45 += 7;
            v50 = *&v51;
            if (v46 == 0.0)
            {
              v46 = 0.0;
            }

            Hasher._combine(_:)(*&v46);
            if (v47 == 0.0)
            {
              v52 = 0.0;
            }

            else
            {
              v52 = v47;
            }

            Hasher._combine(_:)(*&v52);

            String.hash(into:)();
            Hasher._combine(_:)(v48);
            Hasher._combine(_:)(v49);
            Hasher._combine(_:)(v50);

            --v44;
          }

          while (v44);
        }

        if (v61)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1uLL);
          v53 = (v59 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v59 : 0;
          Hasher._combine(_:)(v53);
        }

        Hasher._finalize()();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_97;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v54 = _HashTable.BucketIterator.currentValue.getter();
            if ((v55 & 1) == 0 && v54 == v4)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      while (++v4 != v56);
    }
  }
}

void sub_100C9A398(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_54;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if (a1 < (v9 - v5) / 2)
    {
      if (static _HashTable.maximumCapacity(forScale:)() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v9 < a1)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (a1)
        {
          v10 = 0;
          while (1)
          {
            v11 = *(a3 + 32 + 8 * v10);
            Hasher.init(_seed:)();
            Hasher._combine(_:)(v11);
            Hasher._finalize()();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v12 = _HashTable.BucketIterator.currentValue.getter();
                if ((v13 & 1) == 0 && v12 == v10)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFADD__(v10, v5))
            {
              goto LABEL_51;
            }

            ++v10;
            _HashTable.BucketIterator.currentValue.setter();
            if (v10 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v19 = _HashTable.BucketIterator.currentValue.getter();
      if ((v20 & 1) != 0 || v19 >= a1)
      {
LABEL_29:
        _HashTable.BucketIterator.advance()();
LABEL_17:
        v14 = a4[1];
        if (__OFSUB__(v14 >> 6, v5))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v15 = 1 << *a4;
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v16)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v18 = (v17 & (((v14 >> 6) - v5) >> 63)) + (v14 >> 6) - v5;
        if (v18 < v17)
        {
          v17 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v18 - v17) << 6);
        return;
      }

      if (!__OFADD__(v19, v5))
      {
        _HashTable.BucketIterator.currentValue.setter();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v21 = _HashTable.BucketIterator.currentValue.getter();
      if ((v22 & 1) == 0 && v21 >= v4)
      {
        if (__OFSUB__(v21, v5))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ((v9 - a2) >= static _HashTable.maximumCapacity(forScale:)() / 3)
    {
      goto LABEL_35;
    }

    if (v9 < v4)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v4 < 0)
    {
LABEL_61:
      __break(1u);
      return;
    }

    if (v9 != v4)
    {
      while (1)
      {
        v23 = *(a3 + 32 + 8 * v4);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v23);
        Hasher._finalize()();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v24 = _HashTable.BucketIterator.currentValue.getter();
            if ((v25 & 1) == 0 && v24 == v4)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        _HashTable.BucketIterator.currentValue.setter();
        if (++v4 == v9)
        {
          return;
        }
      }

      goto LABEL_53;
    }
  }
}

uint64_t sub_100C9A7A8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000D9158(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(v12 + 176) >= *(*v14 + 176))
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      _s4WordCMa();
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v18[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v18[1] = v7;
    sub_100C9AA2C(v18, v19, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100C9A8F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100C9A794(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100C9B190(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100C9AA2C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_124:
    v4 = *v102;
    if (*v102)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 176);
    v10 = *(*(*a3 + 8 * v6) + 176);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v9 >= v10)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 176);
      v14 = v13 >= v12;
      ++v11;
      v12 = v13;
    }

    while ((((v9 < v10) ^ v14) & 1) != 0);
    v8 = v11 - 1;
    if (v9 >= v10)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_153;
    }

    if (v6 < v8)
    {
      v15 = 8 * v8 - 8;
      v16 = 8 * v6;
      v17 = v8;
      v18 = v6;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v20 = *(v19 + v16);
          *(v19 + v16) = *(v19 + v15);
          *(v19 + v15) = v20;
        }

        ++v18;
        v15 -= 8;
        v16 += 8;
      }

      while (v18 < v17);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_152;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
          goto LABEL_154;
        }

        if (v6 + a4 < v5)
        {
          v5 = v6 + a4;
        }

        if (v5 < v6)
        {
          goto LABEL_155;
        }

        if (v8 != v5)
        {
          v21 = *a3;
          v22 = *a3 + 8 * v8 - 8;
          v23 = v6 - v8;
          do
          {
            v24 = *(v21 + 8 * v8);
            v25 = v23;
            v26 = v22;
            do
            {
              v27 = *v26;
              if (*(v24 + 176) >= *(*v26 + 176))
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_156;
              }

              *v26 = v24;
              v26[1] = v27;
              --v26;
            }

            while (!__CFADD__(v25++, 1));
            ++v8;
            v22 += 8;
            --v23;
          }

          while (v8 != v5);
          v8 = v5;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100C70FA4(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v30 = *(v7 + 2);
    v29 = *(v7 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_100C70FA4((v29 > 1), v30 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v31;
    v32 = &v7[16 * v30];
    *(v32 + 4) = v6;
    *(v32 + 5) = v8;
    v104 = v8;
    v33 = *v102;
    if (!*v102)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v6 = v104;
    v5 = a3[1];
    if (v104 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v34 = v31 - 1;
    if (v31 >= 4)
    {
      v39 = &v7[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_138;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_139;
      }

      v46 = &v7[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_141;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_144;
      }

      if (v50 >= v42)
      {
        v68 = &v7[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_148;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v31 == 3)
    {
      v35 = *(v7 + 4);
      v36 = *(v7 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_56:
      if (v38)
      {
        goto LABEL_140;
      }

      v51 = &v7[16 * v31];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_143;
      }

      v57 = &v7[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_147;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v61 = &v7[16 * v31];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_70:
    if (v56)
    {
      goto LABEL_142;
    }

    v64 = &v7[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_145;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v34 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v109 = v34;
    v110 = v7;
    v106 = v34 - 1;
    v73 = *&v7[16 * v34 + 32];
    v74 = *&v7[16 * v34 + 40];
    v107 = *&v7[16 * v34 + 16];
    v108 = v74;
    v7 = (8 * v107);
    v75 = (v72 + 8 * v107);
    v76 = 8 * v73;
    v77 = (v72 + 8 * v73);
    v78 = 8 * v74;
    v79 = (v72 + 8 * v74);
    v80 = 8 * v73 - 8 * v107;
    v81 = 8 * v74 - 8 * v73;
    if (v80 < v81)
    {
      if (v75 != v33 || v77 <= v33)
      {
        memmove(v33, (v72 + 8 * v107), 8 * v73 - 8 * v107);
      }

      v82 = &v33[v80];
      v83 = v80 < 1;
      v4 = v110;
      v84 = v108;
      if (v83 || v78 <= v76)
      {
        v85 = v33;
        v90 = v75;
        v86 = v109;
        v87 = v107;
        goto LABEL_114;
      }

      v85 = v33;
      v86 = v109;
      v87 = v107;
      while (1)
      {
        v88 = *v77;
        if (*(*v77 + 176) >= *(*v85 + 176))
        {
          break;
        }

        v89 = v75 == v77;
        v77 += 8;
        if (!v89)
        {
          goto LABEL_91;
        }

LABEL_92:
        v75 += 8;
        if (v85 >= v82 || v77 >= v79)
        {
          v90 = v75;
          goto LABEL_114;
        }
      }

      v88 = *v85;
      v89 = v75 == v85;
      v85 += 8;
      if (v89)
      {
        goto LABEL_92;
      }

LABEL_91:
      *v75 = v88;
      goto LABEL_92;
    }

    if (v77 != v33 || v79 <= v33)
    {
      memmove(v33, (v72 + 8 * v73), 8 * v74 - 8 * v73);
    }

    v82 = &v33[v81];
    v86 = v109;
    if (v81 < 1 || v76 <= v7)
    {
      v85 = v33;
      v90 = v77;
      v4 = v110;
      v87 = v107;
      v84 = v108;
    }

    else
    {
      v4 = v110;
      v87 = v107;
      v84 = v108;
      do
      {
        v90 = v77 - 8;
        v79 -= 8;
        v91 = v82;
        while (1)
        {
          v92 = v79 + 8;
          v94 = *(v91 - 8);
          v91 -= 8;
          v93 = v94;
          if (*(v94 + 176) < *(*v90 + 176))
          {
            break;
          }

          if (v92 != v82)
          {
            *v79 = v93;
          }

          v79 -= 8;
          v82 = v91;
          if (v91 <= v33)
          {
            v82 = v91;
            v85 = v33;
            v90 = v77;
            goto LABEL_114;
          }
        }

        if (v92 != v77)
        {
          *v79 = *v90;
        }

        v85 = v33;
        if (v82 <= v33)
        {
          break;
        }

        v77 -= 8;
      }

      while (v75 < v90);
    }

LABEL_114:
    v95 = v82 - v85 + (v82 - v85 < 0 ? 7uLL : 0);
    if (v90 != v85 || v90 >= &v85[v95 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v90, v85, 8 * (v95 >> 3));
    }

    if (v84 < v87)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100C9BB70(v4);
    }

    if (v86 > *(v4 + 2))
    {
      goto LABEL_137;
    }

    v96 = &v4[16 * v106];
    *(v96 + 4) = v87;
    *(v96 + 5) = v84;
    result = sub_100C9BAE4(v86);
    v7 = v4;
    v31 = *(v4 + 2);
    if (v31 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  result = sub_100C9BB70(v7);
  v7 = result;
LABEL_126:
  v97 = *(v7 + 2);
  if (v97 < 2)
  {
  }

  while (*a3)
  {
    v98 = *&v7[16 * v97];
    v99 = *&v7[16 * v97 + 24];
    sub_100C9B6EC((*a3 + 8 * v98), (*a3 + 8 * *&v7[16 * v97 + 16]), (*a3 + 8 * v99), v4);
    if (v103)
    {
    }

    if (v99 < v98)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100C9BB70(v7);
    }

    if (v97 - 2 >= *(v7 + 2))
    {
      goto LABEL_151;
    }

    v100 = &v7[16 * v97];
    *v100 = v98;
    *(v100 + 1) = v99;
    result = sub_100C9BAE4(v97 - 1);
    v97 = *(v7 + 2);
    if (v97 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_100C9B190(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100C9BB70(v8);
      v8 = result;
    }

    v76 = v8 + 2;
    v77 = v8[2];
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_100C9B8F0((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100C70FA4(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v30 = v8[3];
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_100C70FA4((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v31;
    v32 = v8 + 4;
    v33 = &v8[2 * v5 + 4];
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = v8[4];
          v35 = v8[5];
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[2 * v31];
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[2 * v5];
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[2 * v31];
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[2 * v5];
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[2 * v5 - 2];
        v72 = *v71;
        v73 = &v32[2 * v5];
        v74 = v73[1];
        sub_100C9B8F0((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = v8[2];
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove(&v32[2 * v5], v73 + 2, 16 * (v75 - 1 - v5));
        v8[2] = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[2 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[2 * v31];
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[2 * v5];
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_100C9B6EC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 176) < *(*v4 + 176))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 176) < *(*v17 + 176))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_100C9B8F0(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_100C9BAE4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100C9BB70(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_100C9BB84(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_100C95F20(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100C9BC20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10065BD00(&qword_1011BC558, &qword_1011BC550);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BC550);
            v9 = sub_100AA5324(v13, i, a3);
            v11 = *v10;

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
        _s4LineCMa();
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

uint64_t sub_100C9BDB0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10065BD00(&qword_1011BC528, &qword_1011BC520);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BC520);
            v9 = sub_100AA53A4(v13, i, a3);
            v11 = *v10;

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
        _s4WordCMa();
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

uint64_t sub_100C9BF40(int64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  v3 = sub_100C9BF90(a1);
  v4 = v3[2];

  return sub_100C97674((v3 + 4), v4, a2);
}

void *sub_100C9BF90(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_100C96094(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_100C9C04C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100C7F1E8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100C9C0E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100C9E4AC();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100C7F580(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100C9C158(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  _s4WordCMa();
  sub_100C9DE48(&qword_1011BC530, _s4WordCMa);
  result = Set.init(minimumCapacity:)();
  v9 = result;
  if (!i)
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_14:
          __break(1u);
          return v9;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * i + 32);

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }
      }

      sub_100C7F698(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_100C9C318()
{
  v1 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection) = 2;
  v2 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v4 = type metadata accessor for Locale.Language();
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = 1;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = 0;
  v6 = v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
  *v6 = 2;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer) = 0;
  v7 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v8 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  *(v0 + v8) = sub_100C76C78(_swiftEmptyArrayStorage);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100C9C4F8(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, CFIndex a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  *&v191[16] = a3;
  *&v191[24] = a4;
  *v191 = a1;
  *&v191[8] = a2;

  v19 = sub_100C9C158(a13);

  v235 = v19;
  v20 = CTLineRef.stringRange.getter();
  if (__OFSUB__(a12, v20))
  {
    goto LABEL_252;
  }

  v208 = a12 - v20;
  v21 = CTLineRef.glyphRuns.getter();
  v194 = v21;
  if (v21 >> 62)
  {
LABEL_253:
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v23 = a10;
    if (v22)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = a10;
    if (v22)
    {
LABEL_4:
      v198 = v22;
      v24 = Int.seconds.getter(0);
      v25 = 0;
      v230 = *(a8 + 16);
      v232 = a8 + 32;
      v185 = a6;
      do
      {
        if ((v194 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_249;
          }

          v26 = *(v194 + 32 + 8 * v25);
        }

        v216 = v26;
        v27 = __OFADD__(v25, 1);
        v28 = v25 + 1;
        if (v27)
        {
          goto LABEL_246;
        }

        v210 = v28;
        v29 = CTRunGetFont();
        CTFontGetLanguageAwareOutsets();

        if (String.containsExcessiveHeightCharacters.getter(a9, v23))
        {
          v30 = a6 - v24;
        }

        else
        {
          v30 = a6;
        }

        v215 = CTRunRef.positions.getter();
        a8 = CTRunRef.stringRange.getter();
        v32 = v31;
        v33 = CTRunRef.stringIndices.getter();
        if (v208)
        {
          v27 = __OFADD__(a8, v208);
          a8 += v208;
          if (v27)
          {
            goto LABEL_247;
          }

          v34 = *(v33 + 16);
          if (v34)
          {
            v35 = a11;
            v236[0] = _swiftEmptyArrayStorage;
            v36 = v33;
            sub_100C71400(0, v34, 0);
            v37 = v36;
            v38 = _swiftEmptyArrayStorage;
            v39 = 32;
            v40 = v208;
            do
            {
              v41 = *(v37 + v39);
              a11 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_234;
              }

              v236[0] = v38;
              v43 = v38[2];
              v42 = v38[3];
              if (v43 >= v42 >> 1)
              {
                sub_100C71400((v42 > 1), v43 + 1, 1);
                v37 = v36;
                v40 = v208;
                v38 = v236[0];
              }

              v38[2] = v43 + 1;
              v38[v43 + 4] = a11;
              v39 += 8;
              --v34;
            }

            while (v34);

            v217 = v38;
            a11 = v35;
          }

          else
          {

            v217 = _swiftEmptyArrayStorage;
          }
        }

        else
        {
          v217 = v33;
        }

        v44 = v230;
        if (!v230)
        {
LABEL_5:
          v23 = a10;
          goto LABEL_6;
        }

        v45 = 0;
        v234 = a8 + v32;
        v46 = __OFADD__(a8, v32);
        v193 = v215 + 32;
        v23 = a10;
        v229 = v46;
        do
        {
          while (1)
          {
            if (v45 >= v44)
            {
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
              goto LABEL_238;
            }

            v47 = v232 + 56 * v45;
            v48 = *v47;
            v49 = *(v47 + 8);
            v50 = *(v47 + 16);
            v51 = *(v47 + 24);
            v53 = *(v47 + 32);
            v52 = *(v47 + 40);
            v54 = *(v47 + 48);
            v55 = *(v53 + 16);
            if (v55)
            {
              v56 = v53 + 56 * v55;
              v58 = *(v56 + 8);
              v57 = *(v56 + 16);
              v27 = __OFADD__(v58, v57);
              v59 = v58 + v57;
              if (v27)
              {
                goto LABEL_235;
              }

              v55 = *(v53 + 64);
              v27 = __OFSUB__(v59, v55);
              v60 = v59 - v55;
              if (v27)
              {
                goto LABEL_229;
              }
            }

            else
            {
              v60 = 0;
            }

            v61 = v55 + a11;
            if (__OFADD__(v55, a11))
            {
              goto LABEL_230;
            }

            if (v46)
            {
              goto LABEL_231;
            }

            v62 = v61 + v60;
            if (__OFADD__(v61, v60))
            {
              goto LABEL_232;
            }

            v63 = v234;
            if (v234 >= v62)
            {
              v63 = v61 + v60;
            }

            if (a8 >= v61 && a8 < v62)
            {
              v64 = v63 - a8;
              if (__OFSUB__(v63, a8))
              {
                goto LABEL_236;
              }

              v61 = a8;
              goto LABEL_53;
            }

            if (v61 >= a8 && v61 < v234)
            {
              break;
            }

LABEL_32:
            v27 = __OFADD__(v45++, 1);
            if (v27)
            {
              goto LABEL_233;
            }

            if (v45 >= v44)
            {
              goto LABEL_6;
            }
          }

          v64 = v63 - v61;
          if (__OFSUB__(v63, v61))
          {
            goto LABEL_237;
          }

LABEL_53:
          if (v64 < 1)
          {
            goto LABEL_32;
          }

          v224 = v54;
          v225 = v52;
          v227 = v50;

          Range<>.init(_:in:)();
          if (v65)
          {

            v44 = v230;
            v46 = v229;
            goto LABEL_32;
          }

          v222 = v51;
          v231 = a11;

          v66 = _NSRange.init(range:in:)();
          v218 = v67;
          v219 = v66;
          v68 = String.subscript.getter();
          a11 = v70;
          v71 = v68 >> 16;
          v73 = v72 >> 16;
          if (v69 == 32)
          {
            if (v70 == 0xE100000000000000 && !v71 && v73 == 1 || (v74 = _stringCompareInternal(_:_:_:_:expecting:)(), v75 = 32, v76 = v73, v77 = v71, (v74 & 1) != 0))
            {
LABEL_62:

              v27 = __OFADD__(v45++, 1);
              if (!v27)
              {
                goto LABEL_63;
              }

              goto LABEL_239;
            }
          }

          else
          {
            v78 = v69;
            if (_stringCompareInternal(_:_:_:_:expecting:)())
            {
              goto LABEL_62;
            }

            v75 = v78;
            v76 = v73;
            v77 = v71;
            if (v78 == 10 && a11 == 0xE100000000000000 && !v71 && v76 == 1)
            {
LABEL_75:

              a11 = v231 + 1;
              v23 = a10;
              if (!__OFADD__(v231, 1))
              {
                goto LABEL_76;
              }

              goto LABEL_244;
            }
          }

          range_8 = v76;
          v79 = v75;
          if ((_stringCompareInternal(_:_:_:_:expecting:)() & 1) != 0 || v79 == 10519010 && a11 == 0xA300000000000000 && !v77 && range_8 == 3)
          {
            goto LABEL_75;
          }

          v209 = v79;
          if (_stringCompareInternal(_:_:_:_:expecting:)())
          {
            goto LABEL_75;
          }

          v80.location = v61;
          v80.length = v64;
          v248 = CTRunRef.convertToGlyphRange(textRange:stringIndices:)(v80, v217);
          if (v248.is_nil)
          {

            v27 = __OFADD__(v45++, 1);
            if (!v27)
            {
LABEL_63:
              a11 = v231;
              v23 = a10;
LABEL_76:
              v44 = v230;
              goto LABEL_77;
            }

            __break(1u);
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            __break(1u);
LABEL_258:
            __break(1u);
LABEL_259:
            __break(1u);
LABEL_260:
            __break(1u);
LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
          }

          v81 = v248.value.location + v248.value.length;
          if (__OFADD__(v248.value.location, v248.value.length))
          {
            goto LABEL_255;
          }

          if (v81 < v248.value.location)
          {
            goto LABEL_256;
          }

          if (v248.value.location < 0)
          {
            goto LABEL_257;
          }

          v82 = *(v215 + 16);
          if (v82 < v248.value.location || v82 < v81)
          {
            goto LABEL_258;
          }

          range = v248.value.location;
          if (v248.value.location == v81)
          {
            length = v248.value.length;
            v84 = INFINITY;
          }

          else
          {
            if (v248.value.location >= v81)
            {
              goto LABEL_261;
            }

            v85 = (v193 + 16 * v248.value.location);
            v84 = INFINITY;
            length = v248.value.length;
            v86 = v248.value.length;
            do
            {
              v87 = *v85;
              v85 += 2;
              v88 = v87;
              if (v87 < v84)
              {
                v84 = v88;
              }

              --v86;
            }

            while (v86);
          }

          v245.location = range;
          v245.length = length;
          CTRunRef.drawingWidth(range:positions:)(v245, v215);
          v187 = v89;

          Height = CGRectGetHeight(*v191);
          if ((v235 & 0xC000000000000001) != 0)
          {

            __CocoaSet.makeIterator()();
            _s4WordCMa();
            sub_100C9DE48(&qword_1011BC530, _s4WordCMa);
            Set.Iterator.init(_cocoa:)();
            v90 = v238;
            v91 = v239;
            v93 = v240;
            v92 = v241;
            v94 = v242;
          }

          else
          {
            v95 = -1 << *(v235 + 32);
            v93 = ~v95;
            v96 = -v95;
            if (v96 < 64)
            {
              v97 = ~(-1 << v96);
            }

            else
            {
              v97 = -1;
            }

            v94 = v97 & *(v235 + 56);

            v91 = v235 + 56;
            v92 = 0;
          }

          v202 = v91;
          v98 = (v93 + 64) >> 6;
          v204 = v90;
          while ((v90 & 0x8000000000000000) == 0)
          {
            v99 = v92;
            v100 = v94;
            if (!v94)
            {
              while (1)
              {
                v92 = v99 + 1;
                if (__OFADD__(v99, 1))
                {
                  break;
                }

                if (v92 >= v98)
                {
                  goto LABEL_141;
                }

                v100 = *(v91 + 8 * v92);
                ++v99;
                if (v100)
                {
                  goto LABEL_108;
                }
              }

LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
LABEL_244:
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
LABEL_249:
              __break(1u);
              goto LABEL_250;
            }

LABEL_108:
            v101 = (v100 - 1) & v100;
            v102 = *(*(v90 + 48) + ((v92 << 9) | (8 * __clz(__rbit64(v100)))));

            if (!v102)
            {
              goto LABEL_141;
            }

LABEL_112:
            v103 = *(v102 + 72);
            v104 = *(v102 + 80);
            if ((v104 & 0x2000000000000000) != 0)
            {
              v105 = HIBYTE(v104) & 0xF;
            }

            else
            {
              v105 = v103 & 0xFFFFFFFFFFFFLL;
            }

            v108 = v103 == v209 && v104 == a11 && v77 == 0 && v105 == range_8;
            if (!v108 && (_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0 || *(v102 + 88) != v219 || *(v102 + 96) != v218)
            {
              goto LABEL_102;
            }

            v109 = *(v102 + 104);
            if (v109 >> 62)
            {
              v199 = *(v102 + 104);
              v112 = _CocoaArrayWrapper.endIndex.getter();
              v109 = v199;
              if (!v112)
              {
                goto LABEL_102;
              }
            }

            else if (!*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_102;
            }

            if ((v109 & 0xC000000000000001) != 0)
            {

              v196 = specialized _ArrayBuffer._getElementSlowPath(_:)();

              v113 = *(v196 + 120);
              a6 = *(v196 + 128);
              swift_unknownObjectRelease();
              if (v113 != a5)
              {
                goto LABEL_102;
              }
            }

            else
            {
              if (!*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_260;
              }

              v110 = *(v109 + 32);
              if (*(v110 + 120) != a5)
              {
                goto LABEL_102;
              }

              a6 = *(v110 + 128);
            }

            if (a6 == v30)
            {
              v111 = CGRectGetHeight(*v191);
              if (v111 == CGRectGetHeight(*(v102 + 176)))
              {

                v165 = *(v102 + 176);
                *(v102 + 176) = v84;
                *(v102 + 184) = 0;
                *(v102 + 192) = v187;
                *(v102 + 200) = Height;
                *(v102 + 216) = v84 - v165 + *(v102 + 216);
                v166 = *(v102 + 104);
                if (v166 >> 62)
                {
                  v167 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v167 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                a11 = v231;
                v23 = a10;
                if (!v167)
                {
LABEL_217:
                  *(v102 + 144) = v84;
                  *(v102 + 152) = 0;
                  *(v102 + 160) = v187;
                  *(v102 + 168) = Height;
                  if (_swiftEmptyArrayStorage >> 62)
                  {
                    v176 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v176 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  a6 = v185;
                  *(v102 + 112) = v176;

                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v23 = a10;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  sub_100C81B9C(v102);
                  sub_10005C9F8();

                  v27 = __OFADD__(v45++, 1);
                  if (!v27)
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_270;
                }

                v168 = 0;
                v226 = v167;
                v228 = v166 & 0xC000000000000001;
                v223 = v166 & 0xFFFFFFFFFFFFFF8;
                v220 = v166 + 32;
                while (2)
                {
                  if (v228)
                  {
                    v169 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v27 = __OFADD__(v168++, 1);
                    if (v27)
                    {
                      goto LABEL_266;
                    }
                  }

                  else
                  {
                    if (v168 >= *(v223 + 16))
                    {
                      goto LABEL_269;
                    }

                    v169 = *(v220 + 8 * v168);

                    v27 = __OFADD__(v168++, 1);
                    if (v27)
                    {
                      goto LABEL_266;
                    }
                  }

                  v170 = *(v102 + 216);
                  *(v169 + 192) = v170;
                  *(v169 + 152) = CGRectOffset(*(v169 + 200), v170, 0.0);
                  v171 = *(v169 + 88);
                  if (v171 >> 62)
                  {
                    v172 = _CocoaArrayWrapper.endIndex.getter();
                    if (v172)
                    {
LABEL_209:
                      if (v172 < 1)
                      {
                        goto LABEL_267;
                      }

                      v173 = 0;
                      do
                      {
                        if ((v171 & 0xC000000000000001) != 0)
                        {
                          v174 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        }

                        else
                        {
                          v174 = *(v171 + 8 * v173 + 32);
                        }

                        ++v173;
                        v175 = *(v169 + 192);
                        *(v174 + 104) = v175;
                        *(v174 + 64) = CGRectOffset(*(v174 + 112), v175, 0.0);
                      }

                      while (v172 != v173);
                    }
                  }

                  else
                  {
                    v172 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v172)
                    {
                      goto LABEL_209;
                    }
                  }

                  a11 = v231;
                  v23 = a10;
                  if (v168 == v226)
                  {
                    goto LABEL_217;
                  }

                  continue;
                }
              }
            }

LABEL_102:

            v91 = v202;
            v90 = v204;
            v94 = v101;
          }

          v206 = v94;
          if (__CocoaSet.Iterator.next()())
          {
            _s4WordCMa();
            swift_dynamicCast();
            v102 = v236[0];
            v101 = v206;
            if (v236[0])
            {
              goto LABEL_112;
            }
          }

LABEL_141:
          sub_10005C9F8();
          v114 = *(v53 + 16);

          v192 = v216;
          if (!v114)
          {
            goto LABEL_186;
          }

          a11 = 0;
          v115 = v53 + 80;
          v207 = v114;
          do
          {
            v116 = (v115 + 56 * a11);
            while (1)
            {
              if (a11 >= v114)
              {
                goto LABEL_240;
              }

              v117 = a11 + 1;
              if (__OFADD__(a11, 1))
              {
                goto LABEL_241;
              }

              v118 = *(v116 - 2);
              v119 = v118 + v231;
              if (__OFADD__(v118, v231))
              {
                goto LABEL_242;
              }

              v120 = *(v116 - 1);
              v121 = v119 + v120;
              if (__OFADD__(v119, v120))
              {
                goto LABEL_243;
              }

              a6 = *(v116 - 6);
              v122 = *(v116 - 5);
              v123 = v234;
              if (v234 >= v121)
              {
                v123 = v119 + v120;
              }

              if (a8 >= v119 && a8 < v121)
              {
                break;
              }

              if (v119 >= a8 && v119 < v234)
              {
                v125 = v123 - v119;
                if (__OFSUB__(v123, v119))
                {
                  goto LABEL_248;
                }

                if (v125 >= 1)
                {
                  goto LABEL_163;
                }
              }

LABEL_145:
              ++a11;
              v116 += 7;
              if (v117 == v114)
              {
                goto LABEL_186;
              }
            }

            v125 = v123 - a8;
            if (__OFSUB__(v123, a8))
            {
              goto LABEL_245;
            }

            v119 = a8;
            if (v125 < 1)
            {
              goto LABEL_145;
            }

LABEL_163:
            v200 = *(v116 - 4);
            v201 = *v116;
            v203 = *(v116 - 1);
            v205 = *(v116 - 2);
            rangea = *(v116 - 3);
            range_8a = a11 + 1;

            Range<>.init(_:in:)();
            if ((v126 & 1) != 0 || (, v127.location = v119, v127.length = v125, v249 = CTRunRef.convertToGlyphRange(textRange:stringIndices:)(v127, v217), location = v249.value.location, v129 = v249.value.length, is_nil = v249.is_nil, , is_nil))
            {

              v117 = a11 + 1;
              v114 = v207;
              goto LABEL_145;
            }

            String.subscript.getter();
            v131 = location + v129;
            if (__OFADD__(location, v129))
            {
              goto LABEL_262;
            }

            if (v131 < location)
            {
              goto LABEL_263;
            }

            if ((location & 0x8000000000000000) != 0)
            {
              goto LABEL_264;
            }

            v132 = *(v215 + 16);
            if (v132 < location || v132 < v131)
            {
              goto LABEL_265;
            }

            v190 = *(v215 + 16);
            if (location == v131)
            {
              v133 = INFINITY;
              goto LABEL_177;
            }

            if (location >= v131)
            {
              goto LABEL_268;
            }

            v134 = (v193 + 16 * location);
            v133 = INFINITY;
            v135 = v129;
            do
            {
              v136 = *v134;
              v134 += 2;
              v137 = v136;
              if (v136 < v133)
              {
                v133 = v137;
              }

              --v135;
            }

            while (v135);
LABEL_177:
            v181 = v133;
            v195 = v24;
            v246.location = location;
            v246.length = v129;
            a11 = location;
            CTRunRef.drawingWidth(range:positions:)(v246, v215);
            v180 = v138;
            v179 = CGRectGetHeight(*v191);

            v139 = v192;
            specialized ContiguousArray.reserveCapacity(_:)();
            v182 = v129;
            v183 = location;
            _NSRange.makeIterator()();
            v236[0] = v140;
            v236[1] = v141;
            v236[2] = v142;
            v237 = v143 & 1;
            v243 = _NSRange.NSRangeIterator.next()();
            if (!v243.is_nil)
            {
              value = v243.value;
              v114 = v207;
              v188 = v122;
              v189 = a6;
              v197 = v139;
              while (value < v190)
              {
                a6 = v30;
                v145 = a5;
                v146 = *(v193 + 16 * value);
                v247.location = value;
                v247.length = v215;
                CTRunRef.drawingWidth(forGlyphAtIndex:positions:)(v247);
                v148 = v147;
                v149 = CGRectGetHeight(*v191);
                if (value >= v217[2])
                {
                  goto LABEL_251;
                }

                v150 = v149;
                sub_100009988();

                String.Index.init<A>(utf16Offset:in:)();
                v151 = String.subscript.getter();
                v153 = v152;
                _s5GlyphCMa();
                a11 = swift_allocObject();
                *(a11 + 96) = 0;
                *(a11 + 48) = v151;
                *(a11 + 56) = v153;
                *(a11 + 64) = v146;
                *(a11 + 72) = 0;
                *(a11 + 80) = v148;
                *(a11 + 88) = v150;
                *(a11 + 104) = v195;
                *(a11 + 112) = v146;
                *(a11 + 120) = 0;
                *(a11 + 128) = v148;
                *(a11 + 136) = v150;
                *(a11 + 16) = value;
                *(a11 + 40) = v197;
                a5 = v145;
                *(a11 + 24) = v145;
                *(a11 + 32) = a6;
                v30 = a6;
                v154 = v197;
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                v139 = v197;
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v244 = _NSRange.NSRangeIterator.next()();
                value = v244.value;
                v122 = v188;
                a6 = v189;
                if (v244.is_nil)
                {
                  goto LABEL_183;
                }
              }

LABEL_250:
              __break(1u);
LABEL_251:
              __break(1u);
LABEL_252:
              __break(1u);
              goto LABEL_253;
            }

            v114 = v207;
LABEL_183:

            v155 = static String._fromSubstring(_:)();
            v184 = v156;

            _s8SyllableCMa();
            v157 = swift_allocObject();
            *(v157 + 136) = 0;
            *(v157 + 144) = 2;
            *(v157 + 184) = 0;
            *(v157 + 16) = a6;
            *(v157 + 24) = v122;
            *(v157 + 32) = v200;
            *(v157 + 40) = rangea;
            *(v157 + 48) = v205;
            *(v157 + 56) = v203;
            *(v157 + 64) = v201;
            *(v157 + 72) = v155;
            *(v157 + 80) = v184;
            *(v157 + 88) = _swiftEmptyArrayStorage;
            v24 = v195;
            *(v157 + 192) = v195;
            *(v157 + 200) = v181;
            *(v157 + 208) = 0;
            *(v157 + 216) = v180;
            *(v157 + 224) = v179;
            *(v157 + 152) = v181;
            *(v157 + 160) = 0;
            *(v157 + 168) = v180;
            *(v157 + 176) = v179;
            *(v157 + 96) = v183;
            *(v157 + 104) = v182;
            *(v157 + 112) = v139;
            *(v157 + 120) = a5;
            *(v157 + 128) = v30;
            v158 = v139;

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            a11 = range_8a;
            v115 = v53 + 80;
          }

          while (range_8a != v114);
LABEL_186:

          v159 = static String._fromSubstring(_:)();
          v161 = v160;

          if (_swiftEmptyArrayStorage >> 62)
          {
            v162 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v162 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          _s4WordCMa();
          v163 = swift_allocObject();
          *(v163 + 136) = 2;
          *(v163 + 208) = 0;
          *(v163 + 216) = v24;
          *(v163 + 224) = v24;
          *(v163 + 232) = 0;
          *(v163 + 16) = v48;
          *(v163 + 24) = v49;
          *(v163 + 32) = v227;
          *(v163 + 40) = v222;
          *(v163 + 48) = v53;
          *(v163 + 56) = v225;
          *(v163 + 64) = v224;
          *(v163 + 72) = v159;
          *(v163 + 80) = v161;
          *(v163 + 184) = 0;
          *(v163 + 192) = v187;
          *(v163 + 200) = Height;
          *(v163 + 144) = v84;
          *(v163 + 152) = 0;
          *(v163 + 160) = v187;
          *(v163 + 168) = Height;
          *(v163 + 176) = v84;
          *(v163 + 104) = _swiftEmptyArrayStorage;
          *(v163 + 112) = v162;
          *(v163 + 88) = v219;
          *(v163 + 96) = v218;
          *(v163 + 120) = v192;
          *(v163 + 128) = 0;
          v164 = v192;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          a11 = v231;
          a6 = v185;
          if (v234 == v62)
          {
            goto LABEL_5;
          }

          v27 = __OFADD__(v45++, 1);
          v23 = a10;
          v44 = v230;
          if (v27)
          {
            goto LABEL_259;
          }

LABEL_77:
          v46 = v229;
        }

        while (v45 < v44);
LABEL_6:

        v25 = v210;
      }

      while (v210 != v198);
    }
  }

  v236[0] = sub_100C9BB84(v177, sub_100C9BDB0);
  sub_100C9A7A8(v236);

  return v236[0];
}

uint64_t sub_100C9DA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_100C9DA9C(int64_t a1, void (*a2)(uint64_t *__return_ptr, void *, uint64_t))
{
  v4 = sub_100C9BF90(a1);
  v5 = v4[2];

  a2(&v8, v4 + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

Swift::Int sub_100C9DB18(Swift::Int result, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = v3;
  v6 = a2;
  v7 = result;
  while (v6 < v4)
  {
    v8 = *(v7 + 8 * v6);
    v10 = *v5;
    v9 = v5[1];
    v11 = (v9 + 32);
    if (*v5)
    {
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v8);
      result = Hasher._finalize()();
      if (__OFSUB__(1 << *(v10 + 16), 1))
      {
        goto LABEL_33;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      result = _HashTable.BucketIterator.currentValue.getter();
      if ((v12 & 1) == 0)
      {
        while (v11[result] != v8)
        {
          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if (v13)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }
    }

    else
    {
      v14 = *(v9 + 16);
      if (v14)
      {
        while (*v11 != v8)
        {
          ++v11;
          if (!--v14)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }
    }

LABEL_16:
    swift_retain_n();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v15 = v5[1];
    v16 = *(v15 + 16);
    if (!v10)
    {
      if (v16 > 0xF)
      {
        v17 = 0;
LABEL_23:
        v18 = static _HashTable.scale(forCapacity:)();
        if (v17 <= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }

        v20 = sub_100C969C0(v15, v19, 0, v17);

        *v5 = v20;
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() >= v16)
    {
      result = swift_isUniquelyReferenced_native();
      v21 = *v5;
      if ((result & 1) == 0)
      {
        if (!v21)
        {
          goto LABEL_35;
        }

        v22 = _HashTable.copy()();

        *v5 = v22;
        v21 = v22;
      }

      if (!v21)
      {
        goto LABEL_34;
      }

      _HashTable.UnsafeHandle.subscript.setter();
LABEL_4:

      goto LABEL_5;
    }

    v17 = *(v10 + 24) & 0x3FLL;
    if (v16 > 0xF || v17)
    {
      goto LABEL_23;
    }

    *v5 = 0;
LABEL_5:
    if (++v6 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100C9DDFC()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_100C9DE48(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100C9DE90(id a1)
{
  if (a1 != 2)
  {
    sub_1009B8170(a1);
  }
}

id sub_100C9DEAC()
{
  result = *(v0 + 112);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id sub_100C9DEF0()
{
  result = *(v0 + 112);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

id sub_100C9DF2C()
{
  result = *(v0 + 112);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

id sub_100C9DFA8()
{
  result = *(v0 + 208);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

id sub_100C9E010()
{
  result = *(v0 + 208);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id sub_100C9E054()
{
  result = *(v0 + 208);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

void sub_100C9E070(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_100C9E0C8(a1, v2[2], v2[3], *(v2[4] + 8));
  if (!v3)
  {
    *a2 = v5;
    a2[1] = v6;
  }
}

void sub_100C9E0C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  _UnsafeBitSet.insertAll(upTo:)(v8);
  v9 = 0;
  v10 = *(a4 + 16);
  v11 = a4 + 32;
  v22 = a3;
  v12 = a3 + 32;
  v13 = v8;
  while (2)
  {
    if (v9 == v10)
    {
LABEL_19:
      v20 = *a1;
      v19 = a1[1];
      v21 = static MPMediaLibraryFilteringOptions.none.getter();

      *&v23 = v20;
      *(&v23 + 1) = v19;
      sub_100C98D38(v23, v13, 0, v21, a2, v22);
      return;
    }

    while (1)
    {
      if (v9 >= v10)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      v15 = *(v11 + 8 * v9++);
      if (a2)
      {
        v16 = sub_100C7D238(v15, v12, v8, a2 + 16, a2 + 32);
        if (v17)
        {
          goto LABEL_5;
        }

        v18 = v16;
        if (v16 < 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (!v8)
        {
          goto LABEL_5;
        }

        v18 = 0;
        while (*(v12 + 8 * v18) != v15)
        {
          if (v8 == ++v18)
          {
            goto LABEL_5;
          }
        }
      }

      if (_UnsafeBitSet.remove(_:)(v18))
      {
        break;
      }

LABEL_5:
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    if (--v13)
    {
      continue;
    }

    break;
  }

  sub_100C9BB84(_swiftEmptyArrayStorage, sub_100C9BC20);
}

void sub_100C9E294()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];
  v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
  *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
}

id sub_100C9E2F8(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

__n128 sub_100C9E308()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 64) = result;
  *(v1 + 80) = v3;
  return result;
}

void sub_100C9E32C(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

id sub_100C9E348(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

Swift::Int sub_100C9E3AC@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100C97B5C(a1, a2, *(v3 + 16));
  if (!v4)
  {
    *a3 = result & 1;
    *(a3 + 8) = v7;
  }

  return result;
}

id sub_100C9E408(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_100C9E41C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100C9E4AC()
{
  result = qword_1011BC580;
  if (!qword_1011BC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BC580);
  }

  return result;
}

uint64_t sub_100C9E500(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 _s5SpecsV20SelectedLinePositionOwcp(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100C9E52C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100C9E57C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100C9E5D8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100C9E610(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100C9E658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100C9E7E8(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100C9E814(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else
    {
      v4 = *a2;
      if (*a1)
      {
        if (v2 == 2 && v4 == 1)
        {
          return 1;
        }
      }

      else if (v2 == 2 && v4 == 0)
      {
        return 1;
      }
    }
  }

  else if (!*(a2 + 8))
  {
    return 1;
  }

  return 0;
}

char *sub_100C9E870()
{
  v1 = v0;
  v2 = *(v0 + 72);
  v3 = *(v0 + 104) - *(v0 + 64);
  MaxX = CGRectGetMaxX(*(v0 + 112));
  Height = CGRectGetHeight(*(v0 + 64));
  v6 = *(v0 + 96);
  if (v6)
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v11 = v6;
    [v11 setFrame:{v7, v8, v9, v10}];
    [*&v11[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_glyphView] setFrame:{v3, v2, MaxX, Height}];
  }

  else
  {
    v12 = *(v0 + 40);
    v13 = *(v0 + 16);
    v14 = v1[3];
    v15 = v1[4];
    v16 = objc_allocWithZone(_s5GlyphC9GlyphViewCMa());
    v17 = CTRunRef.PartialRunView.init(run:range:textPosition:)(v12, v13, 1, v14, v15);
    [v17 setFrame:{v3, v2, MaxX, Height}];
    v18 = v1[8];
    v19 = v1[9];
    v20 = v1[10];
    v21 = v1[11];
    v22 = _s5GlyphC18GlyphContainerViewCMa();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators] = _swiftEmptyArrayStorage;
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_glyphView] = v17;
    v37.receiver = v23;
    v37.super_class = v22;
    v24 = v17;
    v25 = objc_msgSendSuper2(&v37, "initWithFrame:", v18, v19, v20, v21);
    if (qword_1011BB888 != -1)
    {
      swift_once();
    }

    v26 = static LyricsOptionsManager.shared;
    if (os_variant_has_internal_content() && sub_100C6E398(9, *(v26 + 40)))
    {
      v27 = objc_opt_self();
      v28 = v25;
      v29 = [v27 greenColor];
      v30 = [v29 colorWithAlphaComponent:0.7];

      [v28 setBackgroundColor:v30];
      v31 = [v27 yellowColor];
      UIView.Border.init(thickness:color:)();
      UIView.border.setter(v33, v32 & 1, v34);
    }

    v11 = v25;
    [v11 addSubview:v24];

    v35 = *(v1 + 12);
    *(v1 + 12) = v11;
  }

  return v11;
}

id sub_100C9EC24(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10[0] = 0x3FF0000000000000;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0x3FF0000000000000;
  v10[4] = 0;
  v10[5] = 0;
  [a1 setTransform:v10];
  return UIView.untransformedFrame.setter(a2, a3, a4, a5);
}

void sub_100C9ECA0()
{
  v1 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
  swift_beginAccess();
  v30 = v1;
  v2 = *(v0 + v1);
  v29 = v2 >> 62;
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_75;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      if (v29)
      {
        v5 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v5 = *(v3 + 16);
      }

      goto LABEL_26;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_66;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = [v6 state];

    v9 = __OFADD__(v5, 1);
    if (v8 == 2 || v8 == 0)
    {
      break;
    }

    ++v5;
    if (v9)
    {
      goto LABEL_67;
    }
  }

  if (!v9)
  {
    if (v29)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *(v3 + 16);
    }

    v12 = v0;
    if (v5 + 1 != v11)
    {
      v3 = v5 + 5;
      do
      {
        v14 = v3 - 4;
        v0 = (v2 & 0xC000000000000001);
        if ((v2 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          if (v14 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_69;
          }

          v15 = *(v2 + 8 * v3);
        }

        v16 = v15;
        v17 = [v15 state];

        if (v17 != 2 && v17 != 0)
        {
          if (v14 != v5)
          {
            if (v0)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v5 & 0x8000000000000000) != 0)
              {
                goto LABEL_78;
              }

              v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v5 >= v21)
              {
                goto LABEL_79;
              }

              if (v14 >= v21)
              {
                goto LABEL_80;
              }

              v0 = *(v2 + 8 * v3);
              v19 = *(v2 + 8 * v5 + 32);
              v20 = v0;
            }

            v22 = v20;
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *(v12 + v30) = v2;
            if (!isUniquelyReferenced_nonNull_bridgeObject || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
            {
              v2 = sub_100C7D240(v2);
              *(v12 + v30) = v2;
            }

            if ((v5 & 0x8000000000000000) != 0)
            {
              goto LABEL_72;
            }

            v0 = (v2 & 0xFFFFFFFFFFFFFF8);
            if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_73;
            }

            v24 = &v0[v5];
            v25 = v24[4];
            v24[4] = v22;

            *(v12 + v30) = v2;
            if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
            {
              v2 = sub_100C7D240(v2);
              *(v12 + v30) = v2;
              v0 = (v2 & 0xFFFFFFFFFFFFFF8);
              if ((v14 & 0x8000000000000000) != 0)
              {
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
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                v4 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_3;
              }
            }

            else if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_65;
            }

            if (v14 >= v0[2])
            {
              goto LABEL_74;
            }

            v26 = v0[v3];
            v0[v3] = v19;

            *(v12 + v30) = v2;
          }

          if (__OFADD__(v5++, 1))
          {
            goto LABEL_71;
          }
        }

        v0 = (v3 - 3);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_70;
        }

        if (v2 >> 62)
        {
          v28 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v28 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v3;
      }

      while (v0 != v28);
    }

LABEL_26:
    if (v2 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (v13 >= v5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v5)
      {
LABEL_28:
        sub_100CDC764(v5, v13);
        swift_endAccess();
        return;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100C9F040(void *a1, double a2, double a3, CGFloat a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100C9F95C;
  *(v10 + 24) = v9;
  *&v14.tx = sub_10018A020;
  *&v14.ty = v10;
  *&v14.a = _NSConcreteStackBlock;
  *&v14.b = 1107296256;
  *&v14.c = sub_100029B9C;
  *&v14.d = &unk_1010F62D0;
  v11 = _Block_copy(&v14);
  v12 = a1;

  [v8 performWithoutAnimation:v11];
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    [v12 frame];
    [v12 setFrame:{a2, a3}];
    CGAffineTransformMakeScale(&v14, a4, a4);
    [v12 setTransform:&v14];
  }

  return result;
}

void sub_100C9F224(void *a1, double a2, double a3, double a4)
{
  v5 = v4;
  sub_100C9F8B8();
  isa = UIViewPropertyAnimator.init(springTimingParameters:)(a1).super.isa;
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  v22 = sub_100C9F904;
  v23 = v11;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10002BC98;
  v21 = &unk_1010F6190;
  v12 = _Block_copy(&v18);
  v13 = v5;

  [(objc_class *)isa addAnimations:v12];
  _Block_release(v12);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_100C9F910;
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100338AB8;
  v21 = &unk_1010F61E0;
  v15 = _Block_copy(&v18);

  [(objc_class *)isa addCompletion:v15];
  _Block_release(v15);
  [(objc_class *)isa startAnimationAfterDelay:a4];
  v16 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
  swift_beginAccess();
  v17 = isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v13 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v13 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t sub_100C9F474(void *a1, double a2, double a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100C9F92C;
  *(v8 + 24) = v7;
  v16 = sub_100029B94;
  v17 = v8;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100029B9C;
  v15 = &unk_1010F6258;
  v9 = _Block_copy(&v12);
  v10 = a1;

  [v6 performWithoutAnimation:v9];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v12 = 0x3FF0000000000000;
    v13 = 0;
    v14 = 0;
    v15 = 0x3FF0000000000000;
    v16 = 0;
    v17 = 0;
    [v10 setTransform:&v12];
    [v10 frame];
    [v10 setFrame:{a2, a3}];
  }

  return result;
}

id sub_100C9F638(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  swift_beginAccess();
  return UIView.setAnchorPoint(_:preserveFrame:)(1, *v2, v2[1]);
}

void sub_100C9F688()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100C9ECA0();
  }
}

id sub_100C9F70C()
{
  v2.receiver = v0;
  v2.super_class = _s5GlyphC18GlyphContainerViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100C9F804()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100C9F8B8()
{
  result = qword_1011BD500;
  if (!qword_1011BD500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011BD500);
  }

  return result;
}

void sub_100C9F9A4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    sub_100CA43A0();
  }

LABEL_10:
  v4 = *(v0 + 112);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v0 + 112);
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 112) = 0;
}

id sub_100C9FAB4()
{
  result = *(v0 + 112);
  if (!result)
  {
    return result;
  }

  result = [result maskView];
  if (result)
  {
    return result;
  }

  result = *(v0 + 112);
  if (!result)
  {
    return result;
  }

  v2 = [result subviews];
  sub_100009F78(0, &qword_1011BC570);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_10:
    v5 = v4;

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100C9FBB8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[2];
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v25 = _swiftEmptyArrayStorage;

    sub_100C71420(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    v5 = 0;
    v4 = v25;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v7 = *(v6 + 48);
      if (*(v7 + 16))
      {
        v8 = *(v7 + 32);
      }

      else
      {
        v8 = 0;
      }

      v25 = v4;
      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        sub_100C71420((v9 > 1), v10 + 1, 1);
        v4 = v25;
      }

      ++v5;
      *(v4 + 2) = v10 + 1;
      *&v4[8 * v10 + 32] = v8;
    }

    while (v3 != v5);
  }

  v25 = v4;

  sub_100C9A8F8(&v25);

  if (*(v25 + 2))
  {
    v11 = *(v25 + 4);
  }

  else
  {
    v11 = 0;
  }

  v1[8] = v11;
  v12 = v1[2];
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v25 = _swiftEmptyArrayStorage;

    sub_100C71420(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v14 = v25;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        v17 = *(v16 + 48);
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = *(v17 + 56 * v18 - 16);
        }

        else
        {
          v19 = 0;
        }

        v25 = v14;
        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          sub_100C71420((v20 > 1), v21 + 1, 1);
          v14 = v25;
        }

        ++v15;
        *(v14 + 2) = v21 + 1;
        *&v14[8 * v21 + 32] = v19;
      }

      while (v13 != v15);

      goto LABEL_34;
    }

LABEL_41:
    __break(1u);

    __break(1u);
    return result;
  }

LABEL_34:
  v25 = v14;

  sub_100C9A8F8(&v25);

  v22 = *(v25 + 2);
  if (v22)
  {
    v23 = *&v25[8 * v22 + 24];
  }

  else
  {
    v23 = 0;
  }

  v1[9] = v23;
  return result;
}

void sub_100C9FECC(uint64_t a1)
{
  v3 = *(v1 + 112);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
    if (v4)
    {
      swift_beginAccess();
      v6 = *(v1 + 16);
      if (v6 >> 62)
      {
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
          return;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          return;
        }
      }

      v8 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
        __break(1u);
      }

      else if ((v6 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_23;
        }

        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 8 * v8 + 32);
        v10 = v4;

LABEL_10:
        v2 = *(v9 + 104);
        if (!(v2 >> 62))
        {
          v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            goto LABEL_12;
          }

          goto LABEL_24;
        }

LABEL_23:
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (v11)
        {
LABEL_12:
          v12 = v11 - 1;
          if (!__OFSUB__(v11, 1))
          {
            if ((v2 & 0xC000000000000001) == 0)
            {
              if ((v12 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v12 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v13 = *(v2 + 8 * v12 + 32);

                if (*(v1 + 120))
                {
LABEL_17:

                  return;
                }

                goto LABEL_28;
              }

              __break(1u);
              return;
            }

LABEL_27:

            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();

            if (*(v1 + 120))
            {
              goto LABEL_17;
            }

LABEL_28:
            [*(a1 + 200) lineHeight];
            v16 = vabdd_f64(v15 * *(a1 + 256) + *(a1 + 464) + *(a1 + 464), CGRectGetHeight(*(v1 + 80))) * 0.5;
            *(v1 + 120) = 1;
            v17 = objc_opt_self();
            v18 = *(a1 + 648);
            v19 = swift_allocObject();
            *(v19 + 16) = v1;
            *(v19 + 24) = v4;
            *(v19 + 32) = v13;
            memcpy((v19 + 40), a1, 0x2B0uLL);
            *(v19 + 728) = v16;
            aBlock[4] = sub_100CA2E78;
            aBlock[5] = v19;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10002BC98;
            aBlock[3] = &unk_1010F6590;
            v20 = _Block_copy(aBlock);
            v21 = v4;

            sub_1002AD8C8(a1, v24);

            [v17 animateWithDuration:196609 delay:v20 options:0 animations:v18 completion:0.0];
            _Block_release(v20);
            sub_100009F78(0, &qword_1011BD580);
            v22 = static OS_dispatch_queue.main.getter();
            v23 = swift_allocObject();
            swift_weakInit();

            OS_dispatch_queue.asyncAfter(_:block:)(sub_100CA2E8C, v23);

            return;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_24:

        return;
      }

      v14 = v4;

      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_10;
    }
  }
}

id sub_100CA0290(uint64_t a1, id a2, uint64_t a3, uint64_t a4, double a5)
{
  if (*(a1 + 58))
  {
    [a2 frame];
    v10 = v9;
    v12 = v11;
    v13 = *(a4 + 504);
    Width = CGRectGetWidth(*(a1 + 80));
    v15 = v12;
    v16 = v10;
    v17 = Width;
    v18 = -(v13 + a5);
    v19 = v13 + v17 + a5;
  }

  else
  {
    v19 = CGRectGetMaxX(*(a3 + 152)) + *(a4 + 504) + a5;
    [a2 frame];
  }

  return [a2 setFrame:{v18, v16, v19, v15}];
}

uint64_t sub_100CA0378()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 120) = 0;
  }

  return result;
}

void sub_100CA03C8(unint64_t a1, double a2)
{
  swift_beginAccess();
  v14 = *(v3 + 16);
  if (v14 >> 62)
  {
    v2 = *(v3 + 16);
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v2;
    if (!v15)
    {
      goto LABEL_53;
    }

    goto LABEL_3;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
LABEL_3:
    v111 = *(v3 + 56);
    v109 = *(v3 + 57);
    v113 = v14 & 0xC000000000000001;
    v108 = v14 & 0xFFFFFFFFFFFFFF8;
    v107 = v3;
    v117 = &v120;

    v5 = 0;
    v9 = 1107296256;
    v110 = v15;
    while (1)
    {
      if (v113)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = __OFADD__(v5++, 1);
        if (v22)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v23 = *(v108 + 16);
        if (v5 >= v23)
        {
          __break(1u);
          goto LABEL_100;
        }

        v22 = __OFADD__(v5++, 1);
        if (v22)
        {
LABEL_86:
          __break(1u);
LABEL_87:

LABEL_187:

          goto LABEL_188;
        }
      }

      v115 = v21;
      if (v111)
      {
        goto LABEL_39;
      }

      v15 = *(v21 + 104);
      if (v15 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (!v4)
        {
          goto LABEL_39;
        }

LABEL_17:
        if (v4 >= 1)
        {
          v7 = 0;
          v2 = v15 & 0xC000000000000001;
          while (1)
          {
            if (v2)
            {
              v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v6 = *(v15 + 8 * v7 + 32);
            }

            v8 = *(v6 + 16);
            v30 = v8 <= a2;
            if (*(v6 + 144) >= 2u)
            {
              if (*(v6 + 136))
              {
                if (v8 <= a2)
                {
                  goto LABEL_21;
                }

                v30 = 0;
              }

              else if (v8 > a2)
              {
                goto LABEL_21;
              }
            }

            sub_100C9E32C(v30, 2u);
            v24 = *(v6 + 136);
            v31 = *(v6 + 144);
            if (v31 == 1)
            {
              if (v24 && v8 <= a2)
              {
LABEL_37:
                sub_100C9E408(*(v6 + 136), *(v6 + 144));
                sub_100C9E408(v24, v31);
                [(objc_class *)v24 stopAnimation:1];
                goto LABEL_20;
              }
            }

            else if (!*(v6 + 144) && v24 && v8 > a2)
            {
              goto LABEL_37;
            }

            sub_100009F78(0, &qword_1011BD500);
            v24 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}]).super.isa;
LABEL_20:
            v25 = swift_allocObject();
            *(v25 + 16) = v6;
            *(v25 + 24) = v8 > a2;
            memcpy((v25 + 32), a1, 0x2B0uLL);
            v124[4] = sub_100CA2DC0;
            v124[5] = v25;
            v124[0] = _NSConcreteStackBlock;
            v124[1] = 1107296256;
            v124[2] = sub_10002BC98;
            v124[3] = &unk_1010F6450;
            v26 = _Block_copy(v124);

            sub_1002AD8C8(a1, &aBlock);

            [(objc_class *)v24 addAnimations:v26];
            _Block_release(v26);
            v27 = swift_allocObject();
            *(v27 + 16) = v6;
            *(v27 + 24) = v8 > a2;
            v122 = sub_100CA2DD0;
            v123 = v27;
            aBlock = _NSConcreteStackBlock;
            v119 = 1107296256;
            v120 = sub_100338AB8;
            v121 = &unk_1010F64A0;
            v28 = _Block_copy(&aBlock);

            [(objc_class *)v24 addCompletion:v28];
            _Block_release(v28);

            v29 = *(v6 + 136);
            *(v6 + 136) = v24;
            LOBYTE(v26) = *(v6 + 144);
            *(v6 + 144) = v8 > a2;
            v3 = v24;
            sub_100C9E32C(v29, v26);
            [v3 startAnimation];

LABEL_21:
            ++v7;

            if (v4 == v7)
            {
              goto LABEL_39;
            }
          }
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v23 = v15 & 0xFFFFFFFFFFFFFF8;
      v4 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_17;
      }

LABEL_39:
      if (!v109)
      {
        v3 = v115;
        sub_100CA4888(a1, a2);

        goto LABEL_7;
      }

      v32 = *(v115 + 208);
      if (v32)
      {
        v33 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
        if (v33)
        {
          v4 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
          v2 = *(v115 + 48);
          if (*(v2 + 16))
          {
            if (*(v2 + 32) > a2)
            {
              goto LABEL_44;
            }
          }

          else if (a2 < 0.0)
          {
LABEL_44:
            v2 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
            LOBYTE(v6) = v115;
            v3 = v32;
            sub_100C9E348(v33, v4);
            v34 = v2;
            [v34 setBackgroundColor:v33];

            goto LABEL_7;
          }

          v35 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
          v6 = v32;
          sub_100C9E348(v33, v4);
          v36 = [v35 backgroundColor];
          if (v36)
          {
            v7 = v36;
            sub_100009F78(0, &unk_1011BD3E0);
            v37 = v4;
            v3 = static NSObject.== infix(_:_:)();

            if (v3)
            {

              goto LABEL_7;
            }
          }

          v38 = *(v2 + 16);
          if (v38)
          {
            v16 = *(v2 + 32);
            v17 = *(v2 + 32 + 56 * v38 - 48);
          }

          else
          {
            v16 = 0.0;
            v17 = 0.0;
          }

          v2 = v115;
          v3 = objc_opt_self();
          v8 = v17 - v16;
          v18 = swift_allocObject();
          v18[2] = v6;
          v18[3] = v33;
          v18[4] = v4;
          v122 = sub_100CA2E08;
          v123 = v18;
          aBlock = _NSConcreteStackBlock;
          v119 = 1107296256;
          v120 = sub_10002BC98;
          v121 = &unk_1010F6540;
          v19 = _Block_copy(&aBlock);
          v6 = v6;
          v4 = v4;
          v20 = v33;

          [v3 animateWithDuration:v19 animations:v8];

          _Block_release(v19);
        }
      }

LABEL_7:
      v15 = v110;
      if (v5 == v110)
      {

        v3 = v107;
        break;
      }
    }
  }

LABEL_53:
  if ((*(v3 + 120) & 1) == 0 && (*(v3 + 57) & 1) == 0)
  {
    v39 = *(v3 + 112);
    if (v39)
    {
      v40 = *(v39 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
      if (v40)
      {
        v41 = *(a1 + 200);
        v7 = v3;
        v15 = v40;
        [v41 lineHeight];
        v8 = vabdd_f64(v42 * *(a1 + 256) + *(a1 + 464) + *(a1 + 464), CGRectGetHeight(*(v3 + 80))) * 0.5;
        v11 = *(a1 + 504);
        if (*(v3 + 72) > a2)
        {
          if (*(v3 + 64) > a2)
          {
            *(v3 + 128) = 0;

            if (*(v3 + 58))
            {
              v43 = *(v3 + 80);
              v44 = *(v3 + 88);
              v45 = *(v3 + 96);
              v46 = *(v3 + 104);
              v47 = v15;
              v125.origin.x = v43;
              v125.origin.y = v44;
              v125.size.width = v45;
              v125.size.height = v46;
              v48 = v8 * 0.5 + CGRectGetWidth(v125);
              [v47 frame];
              [v47 setFrame:v48];
            }

            else
            {
              v47 = v15;
            }

            [v47 frame];
            [v47 setFrame:{v64, v65, v8, v66, v107}];
            goto LABEL_85;
          }

          v5 = sub_100CA1500(a2);
          a1 = v51;
          v52 = sub_100CA16F8(a2);
          v4 = v52;
          v3 = v53;
          if (v5 && v52)
          {
            v54 = *(v7 + 128);
            if (v54 && v52 == v54)
            {

              return;
            }

            LOBYTE(v6) = *(v7 + 58);
            v2 = *(v7 + 16);
            v23 = v2 >> 62;
            if (v6)
            {
              if (!v23)
              {
                if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_91:
                  if ((v2 & 0xC000000000000001) != 0)
                  {

                    v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();

                    v67 = *(v74 + 104);

                    swift_unknownObjectRelease();
                    if ((v67 & 0x8000000000000000) == 0 && (v67 & 0x4000000000000000) == 0)
                    {
LABEL_95:
                      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
LABEL_96:
                        if ((v67 & 0xC000000000000001) != 0)
                        {
                          goto LABEL_194;
                        }

                        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          v68 = *(v67 + 32);
                          goto LABEL_115;
                        }

                        __break(1u);
                        goto LABEL_196;
                      }

LABEL_144:

                      goto LABEL_145;
                    }

LABEL_137:
                    if (_CocoaArrayWrapper.endIndex.getter())
                    {
                      goto LABEL_96;
                    }

                    goto LABEL_144;
                  }

                  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v67 = *(*(v2 + 32) + 104);

                    if ((v67 & 0x8000000000000000) == 0 && (v67 & 0x4000000000000000) == 0)
                    {
                      goto LABEL_95;
                    }

                    goto LABEL_137;
                  }

                  goto LABEL_140;
                }

LABEL_134:

                goto LABEL_145;
              }

LABEL_131:
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_91;
              }

              goto LABEL_134;
            }

LABEL_101:
            if (v23)
            {
              v69 = _CocoaArrayWrapper.endIndex.getter();
              if (!v69)
              {
                goto LABEL_134;
              }
            }

            else
            {
              v69 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v69)
              {
                goto LABEL_134;
              }
            }

            v70 = v69 - 1;
            if (__OFSUB__(v69, 1))
            {
              __break(1u);
LABEL_140:
              __break(1u);
              goto LABEL_141;
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
LABEL_141:

              v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();

              v71 = *(v75 + 104);

              swift_unknownObjectRelease();
              if (v71 < 0 || (v71 & 0x4000000000000000) != 0)
              {
                goto LABEL_143;
              }

              goto LABEL_109;
            }

            if ((v70 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_175:
              __break(1u);
            }

            else if (v70 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v71 = *(*(v2 + 8 * v70 + 32) + 104);

              if (v71 < 0 || (v71 & 0x4000000000000000) != 0)
              {
LABEL_143:
                v72 = _CocoaArrayWrapper.endIndex.getter();
                if (!v72)
                {
                  goto LABEL_144;
                }

                goto LABEL_110;
              }

LABEL_109:
              v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v72)
              {
                goto LABEL_144;
              }

LABEL_110:
              v22 = __OFSUB__(v72, 1);
              v73 = v72 - 1;
              if (!v22)
              {
                if ((v71 & 0xC000000000000001) != 0)
                {
                  goto LABEL_194;
                }

                if ((v73 & 0x8000000000000000) == 0)
                {
                  if (v73 < *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v68 = *(v71 + 8 * v73 + 32);
                    while (1)
                    {
LABEL_115:

                      if (v68 == v4)
                      {
                        v10 = 1.0;
                      }

                      else
                      {
LABEL_145:
                        v76 = *(v4 + 64);
                        if (!v76 || (v10 = 0.5, v76 >= 3))
                        {
                          if (!v3 || (, v77 = String.count.getter(), , v10 = 0.25, v77 >= 3))
                          {
                            v10 = 0.12;
                          }
                        }
                      }

                      if (v6)
                      {
                        v78 = *(v4 + 152) - v11 * v10 - v8;
                        [v15 frame];
                        v80 = v79;
                        v81 = v7;
                        v82 = CGRectGetWidth(*(v7 + 80)) - v78;
                        goto LABEL_183;
                      }

                      v9 = *(v4 + 16);
                      a2 = *(v4 + 24);
                      v70 = *(v4 + 32);
                      v2 = *(v4 + 40);
                      v84 = *(v4 + 48);
                      v83 = *(v4 + 56);
                      v85 = *(v4 + 64);
                      v6 = *(v5 + 104);
                      if (v6 >> 62)
                      {
                        v115 = *(v4 + 56);
                        v117 = *(v4 + 48);
                        v86 = _CocoaArrayWrapper.endIndex.getter();
                        v84 = v117;
                        v83 = v115;
                        if (!v86)
                        {
LABEL_172:

                          if (!v2)
                          {
                            goto LABEL_190;
                          }

LABEL_179:

                          goto LABEL_180;
                        }
                      }

                      else
                      {
                        v86 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (!v86)
                        {
                          goto LABEL_172;
                        }
                      }

                      v113 = v85;
                      v87 = v86 - 1;
                      if (__OFSUB__(v86, 1))
                      {
                        goto LABEL_175;
                      }

                      v115 = v83;
                      v117 = v84;
                      if ((v6 & 0xC000000000000001) != 0)
                      {
                        goto LABEL_177;
                      }

                      if ((v87 & 0x8000000000000000) != 0)
                      {
                        __break(1u);
                      }

                      else if (v87 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        v88 = *(v6 + 8 * v87 + 32);
                        v90 = *(v88 + 16);
                        v89 = *(v88 + 24);
                        v92 = *(v88 + 32);
                        v91 = *(v88 + 40);
                        v116 = *(v88 + 48);
                        v114 = *(v88 + 56);
                        v112 = *(v88 + 64);

                        if (!v2)
                        {
                          goto LABEL_178;
                        }

                        goto LABEL_159;
                      }

                      __break(1u);
LABEL_194:
                      v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      swift_unknownObjectRelease();
                    }
                  }

                  goto LABEL_198;
                }

LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
                return;
              }

LABEL_196:
              __break(1u);
              goto LABEL_197;
            }

            __break(1u);
LABEL_177:

            v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();

            v95 = v94;
            v90 = *(v94 + 16);
            v89 = *(v94 + 24);
            v92 = *(v94 + 32);
            v91 = v95[5];
            v116 = v95[6];
            v114 = v95[7];
            v112 = v95[8];

            swift_unknownObjectRelease();
            if (v2)
            {
LABEL_159:
              if (!v91 || *&v9 != v90 || a2 != v89)
              {
                goto LABEL_179;
              }

              if (v70 == v92 && v91 == v2)
              {
              }

              else
              {
                v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v93 & 1) == 0)
                {
                  goto LABEL_180;
                }
              }

              if (v117 == v116 && v115 == v114)
              {

                if (v113 == v112 && a1)
                {
LABEL_191:
                  MaxX = *(a1 + 176);
LABEL_182:
                  [v15 frame];
                  v78 = v97;
                  v80 = v98;
                  v82 = v8 + v11 * v10 + MaxX;
                  v81 = v7;
LABEL_183:
                  [v15 frame];
                  v100 = v99;

                  v101 = *(v81 + 112);
                  if (v101)
                  {
                    v102 = *(v4 + 24) - *(v4 + 16);
                    v103 = objc_opt_self();
                    v104 = swift_allocObject();
                    *(v104 + 16) = v101;
                    *(v104 + 24) = v78;
                    *(v104 + 32) = v80;
                    *(v104 + 40) = v82;
                    *(v104 + 48) = v100;
                    v122 = sub_100CA2DDC;
                    v123 = v104;
                    aBlock = _NSConcreteStackBlock;
                    v119 = 1107296256;
                    v120 = sub_10002BC98;
                    v121 = &unk_1010F64F0;
                    v105 = _Block_copy(&aBlock);
                    v106 = v101;

                    [v103 animateWithDuration:196609 delay:v105 options:0 animations:v102 completion:0.0];
                    _Block_release(v105);
                  }

                  else
                  {
                  }

                  *(v7 + 128) = v4;
                  goto LABEL_187;
                }
              }

              else
              {
LABEL_180:
              }
            }

            else
            {
LABEL_178:
              if (v91)
              {
                goto LABEL_179;
              }

LABEL_190:

              if (a1)
              {
                goto LABEL_191;
              }
            }

            MaxX = CGRectGetMaxX(*(v4 + 152));
            goto LABEL_182;
          }

          goto LABEL_87;
        }

        if (*(v3 + 58))
        {
          v47 = v15;
          [v47 frame];
          [v47 setFrame:{-(v11 + v8), v49, v11 + v8 + CGRectGetWidth(*(v3 + 80)), v50, v107}];
LABEL_85:

          goto LABEL_188;
        }

        v55 = *(v3 + 16);
        if (v55 >> 62)
        {
          v56 = _CocoaArrayWrapper.endIndex.getter();
          if (!v56)
          {
            goto LABEL_188;
          }
        }

        else
        {
          v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v56)
          {
LABEL_188:
            [v15 setNeedsDisplay];

            return;
          }
        }

        v2 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        else if ((v55 & 0xC000000000000001) == 0)
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_124;
          }

          if (v2 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_127;
          }

          v2 = *(v55 + 8 * v2 + 32);

LABEL_75:
          a1 = *(v2 + 104);
          if (!(a1 >> 62))
          {
            v57 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v57)
            {
              goto LABEL_187;
            }

LABEL_77:
            v3 = v57 - 1;
            if (!__OFSUB__(v57, 1))
            {
              if ((a1 & 0xC000000000000001) == 0)
              {
                if ((v3 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v3 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v58 = *(a1 + 8 * v3 + 32);

LABEL_82:
                  v59 = v58[19];
                  v60 = v58[20];
                  v61 = v58[21];
                  v62 = v58[22];
                  v63 = v15;
                  v126.origin.x = v59;
                  v126.origin.y = v60;
                  v126.size.width = v61;
                  v126.size.height = v62;
                  CGRectGetMaxX(v126);
                  [v63 frame];
                  [v63 setFrame:?];

                  goto LABEL_188;
                }

                __break(1u);
                goto LABEL_131;
              }

LABEL_128:

              v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();

              goto LABEL_82;
            }

LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

LABEL_124:
          v57 = _CocoaArrayWrapper.endIndex.getter();
          if (!v57)
          {
            goto LABEL_187;
          }

          goto LABEL_77;
        }

        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        goto LABEL_75;
      }
    }
  }
}

uint64_t sub_100CA1500(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
LABEL_28:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return 0;
  }

LABEL_3:

  for (i = 4; ; ++i)
  {
    v6 = i - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }
    }

    v8 = *(v7 + 48);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v8 + 32);
      v11 = *(v8 + 32 + 56 * v9 - 48);

      if (v10 > v11)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {

      v10 = 0.0;
      v11 = 0.0;
    }

    if (v10 <= a1 && v11 > a1)
    {
      break;
    }

    v13 = i - 3;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_26;
    }

    if (v13 == v4)
    {

      return 0;
    }
  }

  result = swift_beginAccess();
  v15 = *(v1 + 16);
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_24;
  }

  if (v6 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 8 * i);

LABEL_24:
    result = swift_endAccess();
    if (!__OFADD__(v6, 1))
    {
      v17 = _s4WordCMa();

      Array.subscript.getter(v17, v18);

      return v16;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100CA16F8(double a1)
{
  swift_beginAccess();

  v3 = sub_100CA2094(v2);

  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = v3 & 0xC000000000000001;
    v6 = 4;
    while (1)
    {
      v7 = v6 - 4;
      if (v5)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }
      }

      v9 = *(v8 + 16);
      v10 = *(v8 + 24);

      if (v9 > v10)
      {
        goto LABEL_23;
      }

      if (v9 <= a1 && v10 > a1)
      {
        break;
      }

      v12 = v6 - 3;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_24;
      }

      ++v6;
      if (v12 == i)
      {
        goto LABEL_16;
      }
    }

    if (v5)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (!__OFADD__(v7, 1))
      {
LABEL_19:
        v15 = v14;
        v16 = _s8SyllableCMa();
        Array.subscript.getter(v16, &v17);

        return v15;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_16:

  return 0;
}

id sub_100CA1888(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = *(v3 + 112);
  if (v8)
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 88);
    v11 = *(v3 + 96);
    v12 = *(v3 + 104);
    v13 = v8;
    [v13 setFrame:{v9, v10, v11, v12}];
    v14 = sub_100C9FAB4();
    if (!v14)
    {
      v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, *(v3 + 96), *(v3 + 104)}];
    }

    v66 = v14;
    [v14 setFrame:{0.0, 0.0, *(v3 + 96), *(v3 + 104)}];
  }

  else
  {
    v15 = *(v3 + 80);
    v16 = *(v3 + 88);
    v17 = *(v3 + 96);
    v18 = *(v3 + 104);
    v19 = *(v3 + 58);
    v20 = *(v4 + 57);
    v21 = _s4LineC8LineViewCMa();
    v22 = v5;
    v23 = objc_allocWithZone(v21);
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer] = 0;
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView] = 0;
    v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind] = a2 & 1;
    memcpy(&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs], v22, 0x2B0uLL);
    v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_animationKind] = v20;
    v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_direction] = v19;
    sub_1002AD8C8(v22, aBlock);
    v71.receiver = v23;
    v71.super_class = v21;
    v24 = objc_msgSendSuper2(&v71, "initWithFrame:", v15, v16, v17, v18);
    v25 = v24;
    if ((v20 & 1) == 0)
    {
      v26 = v24;
      v70 = a1;
      v27 = [a1 CGColor];
      v28 = [objc_allocWithZone(CALayer) init];
      [v28 setBackgroundColor:v27];
      if (qword_1011BB888 != -1)
      {
        swift_once();
      }

      v29 = static LyricsOptionsManager.shared;
      if (!os_variant_has_internal_content() || !sub_100C6E398(9, *(v29 + 40)))
      {
        v30 = [v26 layer];
        [v30 addSublayer:v28];

        v27 = v30;
      }

      v31 = *&v26[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer];
      *&v26[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer] = v28;

      v32 = sub_100CA23D4(a2 & 1, a3, v19);
      v33 = *&v26[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
      *&v26[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView] = v32;

      a1 = v70;
    }

    v34 = *(v4 + 96);
    v35 = *(v4 + 104);
    v36 = objc_allocWithZone(UIView);
    v13 = v25;
    v66 = [v36 initWithFrame:{0.0, 0.0, v34, v35}];
    v37 = *(v4 + 112);
    *(v4 + 112) = v13;

    v5 = a3;
  }

  v64 = *(v4 + 57);
  if (v64 == 1)
  {
    v38 = 61;
    if (a2)
    {
      v38 = 62;
    }

    v39 = v5[v38];
    v40 = v39;
    v41 = a1;
  }

  else
  {
    a1 = 0;
    v39 = 0;
  }

  swift_beginAccess();
  v42 = *(v4 + 16);
  if (v42 >> 62)
  {
LABEL_34:
    v43 = _CocoaArrayWrapper.endIndex.getter();
    v44 = v66;
    if (v43)
    {
      goto LABEL_21;
    }

LABEL_35:
    v42 = 0;
    if ((v64 & 1) == 0)
    {
LABEL_36:
      if (qword_1011BB888 != -1)
      {
        swift_once();
      }

      v54 = static LyricsOptionsManager.shared;
      if (!os_variant_has_internal_content() || !sub_100C6E398(9, *(v54 + 40)))
      {
        [v13 setMaskView:{v44, v63}];
        goto LABEL_46;
      }
    }

    goto LABEL_40;
  }

  v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = v66;
  if (!v43)
  {
    goto LABEL_35;
  }

LABEL_21:
  if (v43 < 1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v63 = v13;

  v68 = 0;
  v13 = 0;
  v69 = v43;
  do
  {
    if ((v42 & 0xC000000000000001) != 0)
    {
      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v48 = *(v42 + 8 * v13 + 32);
    }

    v49 = swift_allocObject();
    v49[2] = v48;
    memcpy(v49 + 3, v5, 0x2B0uLL);
    v49[89] = a1;
    v49[90] = v39;
    v49[91] = v44;
    if (*(v48 + 208))
    {
      sub_1002AD8C8(v5, aBlock);

      v45 = v44;
      sub_100C9E348(a1, v39);
      sub_100CA53E0(v5, a1, v39);
      v47 = v46;
      [v45 addSubview:v46];
    }

    else
    {
      v67 = objc_opt_self();
      v50 = swift_allocObject();
      *(v50 + 16) = sub_100CA2D54;
      *(v50 + 24) = v49;
      sub_1002AD8C8(v5, aBlock);

      v51 = v44;
      v52 = a1;
      sub_100C9E348(a1, v39);

      sub_100020438(v68);
      v5 = swift_allocObject();
      v68 = sub_100029B6C;
      v5[2] = sub_100029B6C;
      v5[3] = v50;
      aBlock[4] = sub_100029B94;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100029B9C;
      aBlock[3] = &unk_1010F6400;
      a1 = _Block_copy(aBlock);

      [v67 performWithoutAnimation:a1];

      _Block_release(a1);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        goto LABEL_34;
      }

      a1 = v52;
      v5 = a3;
      v44 = v66;
    }

    v13 = v13 + 1;
  }

  while (v69 != v13);

  v13 = v63;
  v42 = v68;
  if ((v64 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_40:
  [v13 addSubview:{v44, v63}];
  if (qword_1011BB888 != -1)
  {
LABEL_49:
    swift_once();
  }

  v55 = static LyricsOptionsManager.shared;
  if ((os_variant_has_internal_content() & 1) != 0 && sub_100C6E398(9, *(v55 + 40)))
  {
    v56 = objc_opt_self();
    v57 = [v56 grayColor];
    [v13 setBackgroundColor:v57];

    v58 = [v56 blackColor];
    UIView.Border.init(thickness:color:)();
    UIView.border.setter(v60, v59 & 1, v61);
LABEL_46:

    sub_10004D23C(a1, v39);
    goto LABEL_47;
  }

  sub_10004D23C(a1, v39);

LABEL_47:
  sub_100020438(v42);
  return v13;
}

void *sub_100CA2094(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v25 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v27 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + 104);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_43;
          }

          v31 = v3;
          v16 = v11 + 8 * v12 + 32;
          v26 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_100CA2E14();
            for (i = 0; i != v14; ++i)
            {
              sub_10010FC20(&qword_1011BC8A8);
              v18 = sub_100AA53A4(v30, i, v6);
              v20 = *v19;

              (v18)(v30, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            _s8SyllableCMa();
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v31;
          if (v8 >= 1)
          {
            v21 = *(v26 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v26 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

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
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_100CA23D4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  [*(a2 + 200) lineHeight];
  v9 = v8 * *(a2 + 256) + *(a2 + 464) + *(a2 + 464);
  [v4 frame];
  v10 = vabdd_f64(v9, CGRectGetHeight(v28)) * 0.5;
  if (a3)
  {
    [v4 frame];
    v11 = v10 * 0.5 + CGRectGetWidth(v29);
  }

  else
  {
    v11 = -v10;
  }

  [v4 frame];
  v12 = v10 + v10 + CGRectGetHeight(v30);
  v13 = 488;
  if (a1)
  {
    v13 = 496;
  }

  v14 = *(a2 + v13);
  v15 = *(a2 + 504);
  v16 = type metadata accessor for LineProgressGradientView();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView] = 0;
  v18 = &v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView();
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = v14;
  *&v17[v19] = [v20 init];
  v22 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  *&v17[v22] = [objc_allocWithZone(UIView) init];
  *&v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = v21;
  *&v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth] = v15;
  v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction] = a3 & 1;
  v27.receiver = v17;
  v27.super_class = v16;
  v23 = v21;
  v24 = objc_msgSendSuper2(&v27, "initWithFrame:", v11, -v10, v10, v12);
  [v24 setClipsToBounds:{1, v27.receiver, v27.super_class}];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView]];
  sub_100CE180C();
  sub_100CE1B40();

  if (qword_1011BB888 != -1)
  {
    swift_once();
  }

  v25 = static LyricsOptionsManager.shared;
  if (!os_variant_has_internal_content() || !sub_100C6E398(9, *(v25 + 40)))
  {
    [v4 addSubview:v24];
  }

  return v24;
}

void sub_100CA2718()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [*&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 200] lineHeight];
  [v0 frame];
  CGRectGetHeight(v15);
  v1 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer];
  if (v1)
  {
    v2 = v1;
    [v0 frame];
    v3 = -CGRectGetWidth(v16);
    [v0 frame];
    v4 = -CGRectGetHeight(v17);
    [v0 frame];
    v5 = CGRectGetWidth(v18) * 3.0;
    [v0 frame];
    [v2 setFrame:{v3, v4, v5, CGRectGetHeight(v19) * 3.0}];
  }

  v6 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v6)
  {
    v7 = v6;
    [v0 frame];
    v8 = &v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
    v9 = *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
    v10 = *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 8];
    v11 = v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 16];
    *v8 = v12;
    *(v8 + 1) = v13;
    v8[16] = 0;
    sub_100CE1624(v9, v10, v11);
  }
}

void sub_100CA28C4()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "tintColorDidChange");
  v1 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v1)
  {
    if (v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind])
    {
      v2 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 496];
    }

    else
    {
      v2 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 488];
    }

    v3 = *v2;
    v4 = *&v1[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color];
    *&v1[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = *v2;
    sub_100009F78(0, &unk_1011BD3E0);
    v5 = v3;
    v6 = v1;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      sub_100CE1B40();
    }
  }
}

void sub_100CA29F8(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v3)
  {
    if (v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind])
    {
      v4 = &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 496];
    }

    else
    {
      v4 = &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 488];
    }

    v5 = *v4;
    v6 = *&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color];
    *&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = *v4;
    sub_100009F78(0, &unk_1011BD3E0);
    v7 = v5;
    v8 = v3;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      sub_100CE1B40();
    }
  }
}

uint64_t sub_100CA2BF0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100CA2C9C()
{
  result = qword_1011BC840;
  if (!qword_1011BC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BC840);
  }

  return result;
}

unint64_t sub_100CA2CF4()
{
  result = qword_1011BC878;
  if (!qword_1011BC878)
  {
    _s4LineCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BC878);
  }

  return result;
}

void sub_100CA2D54()
{
  v1 = *(v0 + 728);
  sub_100CA53E0(v0 + 24, *(v0 + 712), *(v0 + 720));
  v3 = v2;
  [v1 addSubview:v2];
}

id sub_100CA2DDC()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
  if (result)
  {
    return [result setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  }

  return result;
}

unint64_t sub_100CA2E14()
{
  result = qword_1011BC8B0;
  if (!qword_1011BC8B0)
  {
    sub_1001109D0(&qword_1011BC8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BC8B0);
  }

  return result;
}

void *sub_100CA2ED0(void *result, char a2, uint64_t a3)
{
  v3 = result[23];
  if (v3)
  {
    if (a2)
    {
      v4 = xmmword_100EBEF30;
      v5 = xmmword_100EBEF40;
      v6 = 0uLL;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v7, 0.0, -*(a3 + 624));
      v5 = *&v7.a;
      v4 = *&v7.c;
      v6 = *&v7.tx;
    }

    *&v7.a = v5;
    *&v7.c = v4;
    *&v7.tx = v6;
    return [v3 setTransform:&v7];
  }

  return result;
}

void sub_100CA2F50(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    v3 = *(a2 + 136);
    *(a2 + 136) = (a3 & 1) == 0;
    v4 = *(a2 + 144);
    *(a2 + 144) = 2;
    sub_100C9E32C(v3, v4);
  }
}

id sub_100CA2F7C(uint64_t a1)
{
  result = *(a1 + 184);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

void sub_100CA2FC4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v2 = *(a2 + 136);
    *(a2 + 136) = 0;
    v3 = *(a2 + 144);
    *(a2 + 144) = 2;
    sub_100C9E32C(v2, v3);
  }
}

char *sub_100CA309C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 192) - *(v0 + 152);
  MaxX = CGRectGetMaxX(*(v0 + 200));
  Height = CGRectGetHeight(*(v0 + 152));
  v5 = *(v0 + 184);
  if (v5)
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = v5;
    [v10 setFrame:{v6, v7, v8, v9}];
    [*&v10[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView8Syllable21SyllableContainerView_syllableView] setFrame:{v2, v1, MaxX, Height}];
  }

  else
  {
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    v13 = *(v0 + 96);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    objc_allocWithZone(_s8SyllableC12SyllableViewCMa());
    v16 = v12;
    v17 = v0;
    v18 = CTRunRef.PartialRunView.init(run:range:textPosition:)(v16, v13, v11, v14, v15);
    [v18 setFrame:{v2, v1, MaxX, Height}];
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = *(v0 + 168);
    v22 = *(v0 + 176);
    v23 = _s8SyllableC21SyllableContainerViewCMa();
    v24 = objc_allocWithZone(v23);
    *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView8Syllable21SyllableContainerView_syllableView] = v18;
    v28.receiver = v24;
    v28.super_class = v23;
    v25 = v18;
    v10 = objc_msgSendSuper2(&v28, "initWithFrame:", v19, v20, v21, v22);
    [v10 addSubview:{v25, v28.receiver, v28.super_class}];

    v26 = *(v17 + 184);
    *(v17 + 184) = v10;
  }

  return v10;
}

id sub_100CA32E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100CA331C()
{

  sub_100C9E32C(*(v0 + 136), *(v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_100CA33F8(void *a1, char a2, const void *a3)
{
  v6 = *(v3 + 96);
  v7 = &unk_100EBC000;
  if (v6)
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v3;
    v10 = swift_allocObject();
    v39 = sub_100CA3FC4;
    *(v10 + 16) = sub_100CA3FC4;
    *(v10 + 24) = v9;
    v49 = sub_10018A020;
    v50 = v10;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100029B9C;
    v48 = &unk_1010F66D0;
    v11 = _Block_copy(&aBlock);
    v12 = v6;

    [v8 performWithoutAnimation:v11];
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
      return result;
    }

    v14 = v12;
    v7 = &unk_100EBC000;
  }

  else
  {
    v15 = [objc_allocWithZone(_s13TextContainerC17TextContainerViewCMa()) initWithFrame:{*(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88)}];
    v16 = *(v3 + 96);
    *(v3 + 96) = v15;
    v14 = v15;

    v39 = 0;
  }

  v17 = *(v3 + 56);
  v44 = *(v17 + 16);
  if (v44)
  {
    v18 = a2 & 1;

    v42 = 0;
    v19 = 0;
    v20 = v7[220];
    v21 = a3;
    v43 = a2 & 1;
    while (v19 < *(v17 + 16))
    {
      v24 = *(v17 + 8 * v19 + 32);
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = a1;
      *(v25 + 32) = v18;
      memcpy((v25 + 40), v21, 0x2B0uLL);
      *(v25 + 728) = v14;
      if (*(v24 + 112))
      {
        swift_retain_n();
        sub_1002AD8C8(v21, &aBlock);
        v22 = a1;
        v23 = v14;
        v7 = sub_100CA1888(v22, v18, v21);
        [v23 addSubview:v7];
      }

      else
      {
        v41 = objc_opt_self();
        v26 = swift_allocObject();
        *(v26 + 16) = sub_100CA3F5C;
        *(v26 + 24) = v25;
        swift_retain_n();
        sub_1002AD8C8(v21, &aBlock);
        v27 = a1;
        v28 = v14;
        v29 = v14;

        sub_100020438(v42);
        v7 = swift_allocObject();
        v42 = sub_100029B6C;
        v7[2] = sub_100029B6C;
        v7[3] = v26;
        v49 = sub_100029B94;
        v50 = v7;
        aBlock = _NSConcreteStackBlock;
        v46 = v20;
        v47 = sub_100029B9C;
        v48 = &unk_1010F6658;
        v30 = _Block_copy(&aBlock);
        v14 = v50;

        [v41 performWithoutAnimation:v30];

        _Block_release(v30);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_21;
        }

        v14 = v28;
        v21 = a3;
      }

      ++v19;
      v18 = v43;
      if (v44 == v19)
      {

        v7 = v42;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v7 = 0;
LABEL_15:
    if (qword_1011BB888 == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  v32 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content())
  {
    if (sub_100C6E398(9, *(v32 + 40)))
    {
      v33 = objc_opt_self();
      v34 = [v33 blackColor];
      [v14 setBackgroundColor:v34];

      v35 = [v33 yellowColor];
      UIView.Border.init(thickness:color:)();
      UIView.border.setter(v37, v36 & 1, v38);
    }
  }

  sub_100020438(v39);
  sub_100020438(v7);
  return v14;
}

void sub_100CA3998()
{
  v1 = *(v0 + 56);
  v38 = *(v1 + 16);
  if (v38)
  {
    v39 = v1 + 32;

    v40 = v1;

    v2 = 0;
    while (1)
    {
      if (v2 >= *(v40 + 16))
      {
        goto LABEL_59;
      }

      v41 = v2;
      v3 = *(v39 + 8 * v2);
      swift_beginAccess();
      v4 = v3;
      v5 = *(v3 + 16);
      if (!(v5 >> 62))
      {
        v0 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v0)
        {
          break;
        }

        goto LABEL_46;
      }

      v29 = *(v3 + 16);
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v5 = v29;
      v0 = v30;
      v4 = v3;
      if (v0)
      {
        break;
      }

LABEL_46:
      v28 = v4;

LABEL_47:
      v31 = *(v28 + 112);
      v32 = v28;
      if (v31)
      {
        [v31 removeFromSuperview];
        v32 = v28;
        v33 = *(v28 + 112);
      }

      else
      {
        v33 = 0;
      }

      *(v32 + 112) = 0;

      v2 = v41 + 1;
      if (v41 + 1 == v38)
      {

        v0 = v36;
        goto LABEL_52;
      }
    }

    if (v0 >= 1)
    {
      v43 = v5 & 0xC000000000000001;
      v37 = v4;

      v6 = 0;
      v42 = v0;
      while (1)
      {
        if (v43)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        v44 = v9;
        v45 = v6;
        v10 = *(v9 + 104);
        v46 = v10;
        if (!(v10 >> 62))
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            break;
          }

          goto LABEL_39;
        }

        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (v11)
        {
          break;
        }

LABEL_39:
        v0 = v44;
        v24 = *(v44 + 208);
        if (v24)
        {
          [v24 removeFromSuperview];
          v25 = *(v44 + 208);
        }

        else
        {
          v25 = 0;
        }

        *(v44 + 208) = 0;

        if (!*(v44 + 208))
        {
          v26 = *(v44 + 128);
          *(v44 + 128) = 0;
          v27 = *(v44 + 136);
          *(v44 + 136) = 2;
          sub_100C9E32C(v26, v27);
        }

        v6 = v45 + 1;
        v7 = *(v44 + 128);
        *(v44 + 128) = 0;
        v8 = *(v44 + 136);
        *(v44 + 136) = 2;
        sub_100C9E32C(v7, v8);

        if (v45 + 1 == v42)
        {

          v28 = v37;
          goto LABEL_47;
        }
      }

      v12 = 0;
      while (1)
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v18 = __OFADD__(v12++, 1);
          if (v18)
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v12 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_59:
            __break(1u);
            break;
          }

          v17 = *(v46 + 32 + 8 * v12);

          v18 = __OFADD__(v12++, 1);
          if (v18)
          {
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }
        }

        v0 = *(v17 + 88);
        if (!(v0 >> 62))
        {
          v19 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
            goto LABEL_26;
          }

          goto LABEL_15;
        }

        v19 = _CocoaArrayWrapper.endIndex.getter();
        if (v19)
        {
LABEL_26:
          if (v19 >= 1)
          {
            v20 = 0;
            while (1)
            {
              if ((v0 & 0xC000000000000001) != 0)
              {
                v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v23 = *(v22 + 96);
                if (!v23)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                v22 = *(v0 + 8 * v20 + 32);

                v23 = *(v22 + 96);
                if (!v23)
                {
LABEL_34:
                  v21 = 0;
                  goto LABEL_29;
                }
              }

              [v23 removeFromSuperview];
              v21 = *(v22 + 96);
LABEL_29:
              ++v20;
              *(v22 + 96) = 0;

              if (v19 == v20)
              {
                goto LABEL_15;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_15:
        v13 = *(v17 + 184);
        if (v13)
        {
          [v13 removeFromSuperview];
          v14 = *(v17 + 184);
        }

        else
        {
          v14 = 0;
        }

        *(v17 + 184) = 0;

        v15 = *(v17 + 136);
        *(v17 + 136) = 0;
        v16 = *(v17 + 144);
        *(v17 + 144) = 2;
        sub_100C9E32C(v15, v16);

        if (v12 == v11)
        {
          goto LABEL_39;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_52:
    v34 = *(v0 + 96);
    if (v34)
    {
      [v34 removeFromSuperview];
      v35 = *(v0 + 96);
    }

    else
    {
LABEL_56:
      v35 = 0;
    }

    *(v0 + 96) = 0;
  }
}

uint64_t sub_100CA3EA8()
{

  return swift_deallocClassInstance();
}

void sub_100CA3F5C()
{
  v1 = *(v0 + 728);
  v2 = sub_100CA1888(*(v0 + 24), *(v0 + 32), v0 + 40);
  [v1 addSubview:v2];
}

void sub_100CA3FE4()
{
  v1 = v0;
  v2 = *(v0 + 208);
  if (v2)
  {
    v3 = [v2 layer];
    [v3 removeAllAnimations];
  }

  if (*(v1 + 232))
  {

    Task.cancel()();
  }

  *(v1 + 232) = 0;

  v4 = *(v1 + 208);
  if (v4)
  {
    v5 = v4;
    sub_100CA63F8();
  }

  v6 = sub_100CA58EC(*(v1 + 104));
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    v28 = v7;
    v29 = v7 & 0xC000000000000001;
    v27 = v7 & 0xFFFFFFFFFFFFFF8;
    v25 = v1;
    v26 = v7 + 32;
    while (1)
    {
      if (v29)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          break;
        }

        goto LABEL_17;
      }

      if (v9 >= *(v27 + 16))
      {
        goto LABEL_33;
      }

      v10 = *(v26 + 8 * v9);

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        break;
      }

LABEL_17:
      v12 = *(v10 + 96);
      if (v12)
      {
        v30 = *(v10 + 80);
        v31 = *(v10 + 64);
        v1 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
        swift_beginAccess();
        v7 = *&v12[v1];
        if (v7 >> 62)
        {
          v13 = _CocoaArrayWrapper.endIndex.getter();
          if (!v13)
          {
LABEL_28:
            v18 = v12;
            goto LABEL_29;
          }
        }

        else
        {
          v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v13)
          {
            goto LABEL_28;
          }
        }

        if (v13 < 1)
        {
          goto LABEL_32;
        }

        v1 = v7 & 0xC000000000000001;
        v14 = v12;

        for (j = 0; j != v13; ++j)
        {
          if (v1)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v16 = *(v7 + 8 * j + 32);
          }

          v17 = v16;
          [v16 stopAnimation:0];
        }

LABEL_29:
        sub_100C9ECA0();
        v19 = CGPoint.center.unsafeMutableAddressor();
        swift_beginAccess();
        UIView.setAnchorPoint(_:preserveFrame:)(1, *v19, v19[1]);
        sub_100009F78(0, &qword_1011BC570);
        sub_100009F78(0, &qword_1011BD330);
        v20 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
        v21 = swift_allocObject();
        *(v21 + 16) = v12;
        *(v21 + 40) = v30;
        *(v21 + 24) = v31;
        v22 = v12;
        static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v20, 0, sub_100CA7600, v21, 0, 0, 0.0);

        [v22 sizeToFit];

        v7 = v28;
        if (v9 == i)
        {
LABEL_30:

          v1 = v25;
          goto LABEL_36;
        }
      }

      else
      {

        if (v9 == i)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_36:
  v23 = *(v1 + 128);
  *(v1 + 128) = 0;
  v24 = *(v1 + 136);
  *(v1 + 136) = 2;
  sub_100C9E32C(v23, v24);
}

void sub_100CA43A0()
{
  v1 = *(v0 + 104);
  v23 = v1;
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = __OFADD__(v3++, 1);
          if (v9)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v3 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v8 = *(v23 + 32 + 8 * v3);

          v9 = __OFADD__(v3++, 1);
          if (v9)
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        v10 = *(v8 + 88);
        if (!(v10 >> 62))
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            break;
          }

          goto LABEL_4;
        }

        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (v11)
        {
          break;
        }

LABEL_4:
        v4 = *(v8 + 184);
        if (v4)
        {
          [v4 removeFromSuperview];
          v5 = *(v8 + 184);
        }

        else
        {
          v5 = 0;
        }

        *(v8 + 184) = 0;

        v6 = *(v8 + 136);
        *(v8 + 136) = 0;
        v7 = *(v8 + 144);
        *(v8 + 144) = 2;
        sub_100C9E32C(v6, v7);

        if (v3 == v2)
        {
          goto LABEL_31;
        }
      }

      if (v11 >= 1)
      {
        break;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (!v2)
      {
        goto LABEL_31;
      }
    }

    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = *(v14 + 96);
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v14 = *(v10 + 8 * v12 + 32);

        v15 = *(v14 + 96);
        if (!v15)
        {
LABEL_23:
          v13 = 0;
          goto LABEL_18;
        }
      }

      [v15 removeFromSuperview];
      v13 = *(v14 + 96);
LABEL_18:
      ++v12;
      *(v14 + 96) = 0;

      if (v11 == v12)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_31:
  v16 = *(v22 + 208);
  if (v16)
  {
    [v16 removeFromSuperview];
    v17 = *(v22 + 208);
  }

  else
  {
    v17 = 0;
  }

  *(v22 + 208) = 0;

  if (!*(v22 + 208))
  {
    v18 = *(v22 + 128);
    *(v22 + 128) = 0;
    v19 = *(v22 + 136);
    *(v22 + 136) = 2;
    sub_100C9E32C(v18, v19);
  }

  v20 = *(v22 + 128);
  *(v22 + 128) = 0;
  v21 = *(v22 + 136);
  *(v22 + 136) = 2;

  sub_100C9E32C(v20, v21);
}

void sub_100CA4604(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 176);
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;
  *(v4 + 192) = a3;
  *(v4 + 200) = a4;
  *(v4 + 216) = a1 - v5 + *(v4 + 216);
  v6 = *(v4 + 104);
  v17 = v6;
  if (v6 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while ((v17 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_21;
      }

LABEL_11:
      v11 = *(v4 + 216);
      *(v9 + 192) = v11;
      *(v9 + 152) = CGRectOffset(*(v9 + 200), v11, 0.0);
      v12 = *(v9 + 88);
      if (v12 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      if (v13 < 1)
      {
        goto LABEL_22;
      }

      v14 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v15 = *(v12 + 8 * v14 + 32);
        }

        ++v14;
        v16 = *(v9 + 192);
        *(v15 + 104) = v16;
        *(v15 + 64) = CGRectOffset(*(v15 + 112), v16, 0.0);
      }

      while (v13 != v14);
LABEL_4:

      if (v8 == i)
      {
        return;
      }
    }

    if (v8 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v9 = *(v17 + 32 + 8 * v8);

    v10 = __OFADD__(v8++, 1);
    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }
}

unint64_t sub_100CA47DC()
{
  v1 = *(v0 + 104);
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      if (__OFSUB__(result--, 1))
      {
        __break(1u);
      }

      else if ((v1 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return result;
        }

        __break(1u);
        return result;
      }

      specialized _ArrayBuffer._getElementSlowPath(_:)();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  return result;
}

void sub_100CA4888(uint64_t a1, double a2)
{
  v3 = v2;
  sub_10010FC20(&qword_1011BD510);
  __chkstk_darwin();
  *&v7 = &v78 - v6;
  v8 = *(v2 + 6);
  v9 = *(*&v8 + 16);
  if (!v9)
  {
    if (a2 >= 0.0)
    {
      goto LABEL_46;
    }

    goto LABEL_5;
  }

  if (*(*&v8 + 32) > a2)
  {
LABEL_5:
    if (v2[136] < 2u || *(v2 + 16))
    {
      v10 = *(v2 + 26);
      if (v10)
      {
        v11 = [v10 layer];
        [v11 removeAllAnimations];
      }

      if (*(v2 + 29))
      {

        Task.cancel()();
      }

      *(v2 + 29) = 0;

      v12 = *(v2 + 26);
      if (v12)
      {
        v13 = v12;
        sub_100CA63F8();
      }

      v84 = v8;
      v14 = sub_100CA58EC(*(v2 + 13));
      v15 = v14;
      v85 = 0;
      if (v14 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v81 = v7;
        v82 = a1;
        v83 = v3;
        a1 = 0;
        v89.super.isa = (v15 & 0xC000000000000001);
        v87 = v15 & 0xFFFFFFFFFFFFFF8;
        v86 = v15 + 32;
        v7 = COERCE_DOUBLE(&selRef_setContacts_);
        v88 = v15;
        while (1)
        {
          if (v89.super.isa)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v18 = __OFADD__(a1++, 1);
            if (v18)
            {
              break;
            }

            goto LABEL_23;
          }

          if (a1 >= *(v87 + 16))
          {
            goto LABEL_39;
          }

          v17 = *(v86 + 8 * a1);

          v18 = __OFADD__(a1++, 1);
          if (v18)
          {
            break;
          }

LABEL_23:
          v19 = *(v17 + 96);
          if (v19)
          {
            v20 = *(v17 + 64);
            v90 = *(v17 + 80);
            v91 = v20;
            v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
            swift_beginAccess();
            v21 = *&v19[v15];
            if (v21 >> 62)
            {
              v22 = _CocoaArrayWrapper.endIndex.getter();
              if (!v22)
              {
LABEL_34:
                v27 = v19;
                goto LABEL_35;
              }
            }

            else
            {
              v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v22)
              {
                goto LABEL_34;
              }
            }

            if (v22 < 1)
            {
              goto LABEL_38;
            }

            v23 = v19;

            for (j = 0; j != v22; ++j)
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v25 = *(v21 + 8 * j + 32);
              }

              v26 = v25;
              [v25 stopAnimation:0];
            }

LABEL_35:
            sub_100C9ECA0();
            v28 = CGPoint.center.unsafeMutableAddressor();
            swift_beginAccess();
            UIView.setAnchorPoint(_:preserveFrame:)(1, *v28, v28[1]);
            sub_100009F78(0, &qword_1011BC570);
            sub_100009F78(0, &qword_1011BD330);
            v3 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
            v29 = swift_allocObject();
            *(v29 + 16) = v19;
            *(v29 + 40) = v90;
            *(v29 + 24) = v91;
            v30 = v19;
            static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v3, 0, sub_100CA6CAC, v29, 0, 0, 0.0);

            [v30 sizeToFit];

            v15 = v88;
            if (a1 == i)
            {
LABEL_36:

              v3 = v83;
              a1 = v82;
              v7 = v81;
              goto LABEL_42;
            }
          }

          else
          {

            if (a1 == i)
            {
              goto LABEL_36;
            }
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }

LABEL_42:
      v31 = *(v3 + 16);
      *(v3 + 16) = 0;
      v32 = v3[136];
      v3[136] = 2;
      sub_100C9E32C(v31, v32);
      v8 = v84;
      v9 = *(*&v84 + 16);
    }

    if (v9)
    {
      goto LABEL_44;
    }

LABEL_46:
    if (a2 < 0.0)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*(*&v8 + 32) > a2)
  {
    return;
  }

LABEL_47:
  if (v3[136] >= 2u && !*(v3 + 16) && (v3[64] & 1) == 0)
  {
    v33 = *(v3 + 7);
    v34 = sub_100CA58EC(*(v3 + 13));
    v35 = v34;
    v36 = *(*&v8 + 16);
    if (v36)
    {
      v37 = *(*&v8 + 32 + 56 * v36 - 48) - *(*&v8 + 32);
    }

    else
    {
      v37 = 0.0;
    }

    v38 = v34 >> 62;
    if (v34 >> 62)
    {
      goto LABEL_86;
    }

    for (k = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); k >= 1; k = _CocoaArrayWrapper.endIndex.getter())
    {
      if (v37 <= 0.0)
      {
        break;
      }

      v40 = *(v3 + 16);
      *(v3 + 16) = 0;
      v41 = v3[136];
      v3[136] = 0;
      sub_100C9E32C(v40, v41);
      v42 = *(v3 + 26);
      if (v42)
      {
        v43 = v42;
        sub_100CA6610(a1, v33, v37);
      }

      v44 = type metadata accessor for TaskPriority();
      (*(*(v44 - 8) + 56))(COERCE_DOUBLE(*&v7), 1, 1, v44);
      v45 = swift_allocObject();
      swift_weakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      *(v46 + 24) = 0;
      *(v46 + 32) = v45;
      *(v46 + 40) = v37;
      *(v3 + 29) = sub_100CC3838(0, 0, *&v7, &unk_100F0FC50, v46);

      v47 = v37 / k * 0.4;
      if (v47 > 0.4)
      {
        v47 = 0.4;
      }

      *&v87 = v47;
      v33 = *(a1 + 248) + v33 * (*(a1 + 256) - *(a1 + 248));
      if (v37 <= 3.0)
      {
        v48 = v37;
      }

      else
      {
        v48 = 3.0;
      }

      sub_100009F78(0, &qword_1011BD330);
      v88 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, v48);
      v49 = *(v3 + 24);
      v50 = *(v3 + 25);
      CGSize.scaled(_:)();
      v52 = v51;
      v54 = v53;
      if (v38)
      {
        v38 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v38)
      {
LABEL_81:

        break;
      }

      v55 = 0;
      v79 = v37 / vcvtd_n_f64_u64(k, 1uLL);
      *&v91 = v35 & 0xC000000000000001;
      *&v90 = v35 & 0xFFFFFFFFFFFFFF8;
      v84 = v50 - v54;
      v81 = (v49 - v52) * 0.5;
      v80 = &v94;
      v83 = v3;
      v82 = a1;
      v86 = v35;
      v85 = v38;
      while (v91)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        *&v7 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_84;
        }

LABEL_73:
        v57 = *(v56 + 96);
        if (!v57)
        {
          goto LABEL_68;
        }

        v58 = *(v3 + 22);
        v59 = *(v3 + 23);
        v60 = *(v56 + 64) - v58;
        v61 = *(v56 + 72) - v59;
        v62 = *(a1 + 624);
        v63 = v58 + (v60 + v81 + v33 * v60) * 0.5;
        v64 = v59 + (v61 + v84 + v33 * v61) * 0.25 - v62;
        v37 = *&v87 * *&v7;
        sub_100009F78(0, &qword_1011BD500);
        v65 = v57;
        v89.super.isa = v88;
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v89).super.isa;
        v67 = swift_allocObject();
        *(v67 + 16) = v65;
        *(v67 + 24) = v63;
        *(v67 + 32) = v64;
        *(v67 + 40) = v33;
        v96 = sub_100CA6C94;
        v97 = v67;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v94 = sub_10002BC98;
        v95 = &unk_1010F67F0;
        v68 = _Block_copy(&aBlock);
        v69 = v65;

        [(objc_class *)isa addAnimations:v68];
        _Block_release(v68);
        v70 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v96 = sub_100CA6CA4;
        v97 = v70;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v94 = sub_100338AB8;
        v95 = &unk_1010F6840;
        v71 = _Block_copy(&aBlock);

        [(objc_class *)isa addCompletion:v71];
        _Block_release(v71);
        [(objc_class *)isa startAnimationAfterDelay:v37];
        v72 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
        swift_beginAccess();
        v73 = isa;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v69 + v72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v69 + v72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        v74 = *(v56 + 96);
        v3 = v83;
        a1 = v82;
        v35 = v86;
        v38 = v85;
        if (v74)
        {
          v75 = v60 + v83[22];
          v76 = v61 - v62 + v83[23];
          v37 = v79 + v37;
          v77 = v74;
          sub_100C9F224(v89.super.isa, v75, v76, v37);
        }

        else
        {
LABEL_68:
        }

        ++v55;
        if (*&v7 == v38)
        {
          goto LABEL_81;
        }
      }

      if (v55 >= *(v90 + 16))
      {
        goto LABEL_85;
      }

      v56 = *(v35 + 8 * v55 + 32);

      *&v7 = v55 + 1;
      if (!__OFADD__(v55, 1))
      {
        goto LABEL_73;
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      ;
    }
  }
}

void sub_100CA53E0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v55.origin.x = *(v4 + 176);
  v8 = *(v4 + 184);
  v9 = -v55.origin.x;
  v55.size.width = *(v4 + 192);
  v55.size.height = *(v4 + 200);
  v55.origin.y = v8;
  MaxX = CGRectGetMaxX(v55);
  Height = CGRectGetHeight(*(v4 + 176));
  v12 = *(v4 + 208);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_wordView];
    v14 = v12;
    v15 = v13;
    [v15 setFrame:{v9, v8, MaxX, Height}];
    [v14 setFrame:{*(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200)}];
  }

  else
  {
    v16 = [objc_allocWithZone(_s4WordC8WordViewCMa()) initWithFrame:{v9, v8, MaxX, Height}];
    v17 = *(a1 + 456);
    UIView.Shadow.init(color:opacity:radius:offset:)(v17, v54, 0.0, *(a1 + 464), 0.0, 0.0);
    v15 = v16;
    v18 = v17;
    v19 = [v15 layer];
    v20 = [v15 traitCollection];
    [v20 displayScale];
    v22 = v21;

    [v19 setRasterizationScale:v22];
    v23 = [v15 layer];
    [v23 setShouldRasterize:1];

    v24 = v54[0];
    UIView.shadow.setter(v54);

    v25 = *(v4 + 176);
    v26 = *(v4 + 184);
    v27 = *(v4 + 192);
    v28 = *(v4 + 200);
    v29 = objc_allocWithZone(_s4WordC17WordContainerViewCMa());
    sub_100C9E348(a2, a3);
    v30 = sub_100CA617C(v15, a2, a3, v25, v26, v27, v28);
    sub_10004862C(v54);
    v31 = *(v4 + 208);
    *(v4 + 208) = v30;
    v14 = v30;

    if (!*(v4 + 208))
    {
      v32 = *(v4 + 128);
      *(v4 + 128) = 0;
      v33 = *(v4 + 136);
      *(v4 + 136) = 2;
      sub_100C9E32C(v32, v33);
    }
  }

  if (qword_1011BB888 != -1)
  {
    swift_once();
  }

  v34 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && sub_100C6E398(9, *(v34 + 40)))
  {
    v35 = objc_opt_self();
    v36 = [v35 blueColor];
    v37 = [v36 colorWithAlphaComponent:0.7];

    [v14 setBackgroundColor:v37];
    v38 = [v35 blackColor];
    UIView.Border.init(thickness:color:)();
    UIView.border.setter(v40, v39 & 1, v41);
  }

  v42 = *(v4 + 104);
  if (*(v4 + 64) == 1)
  {
    if (v42 >> 62)
    {
      v43 = _CocoaArrayWrapper.endIndex.getter();
      if (v43)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
LABEL_13:
        if (v43 >= 1)
        {
          v44 = 0;
          do
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
            }

            ++v44;
            v45 = sub_100CA309C();
            [v15 addSubview:v45];
          }

          while (v43 != v44);
          goto LABEL_28;
        }

        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }
    }

LABEL_28:

    goto LABEL_31;
  }

  v46 = sub_100CA58EC(*(v4 + 104));
  v47 = v46;
  if (v46 >> 62)
  {
    v48 = _CocoaArrayWrapper.endIndex.getter();
    if (!v48)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v48)
    {
      goto LABEL_30;
    }
  }

  if (v48 < 1)
  {
    goto LABEL_35;
  }

  v49 = 0;
  do
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    ++v49;
    v50 = sub_100C9E870();
    [v15 addSubview:v50];
  }

  while (v48 != v49);
LABEL_30:

LABEL_31:
  v51 = *(v4 + 208);
  *(v4 + 208) = v14;
  v14;

  if (!*(v4 + 208))
  {
    v52 = *(v4 + 128);
    *(v4 + 128) = 0;
    v53 = *(v4 + 136);
    *(v4 + 136) = 2;
    sub_100C9E32C(v52, v53);
  }
}

void *sub_100CA58EC(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v25 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v27 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + 88);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_43;
          }

          v31 = v3;
          v16 = v11 + 8 * v12 + 32;
          v26 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_100CA6B6C();
            for (i = 0; i != v14; ++i)
            {
              sub_10010FC20(&qword_1011BCD60);
              v18 = sub_100AA53A4(v30, i, v6);
              v20 = *v19;

              (v18)(v30, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            _s5GlyphCMa();
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v31;
          if (v8 >= 1)
          {
            v21 = *(v26 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v26 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

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
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100CA5C2C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a1;
  *(v5 + 88) = a5;
  return _swift_task_switch(sub_100CA5C50, 0, 0);
}

uint64_t sub_100CA5C50()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 208);
    v0[13] = v2;
    if (v2)
    {
      v3 = v2;

      type metadata accessor for MainActor();
      v0[14] = static MainActor.shared.getter();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v0[15] = v5;
      v0[16] = v4;

      return _swift_task_switch(sub_100CA5E14, v5, v4);
    }
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *(v6 + 128);
  v8 = *(v6 + 136);
  sub_100C9E408(v7, v8);

  if (v8 < 2)
  {
    sub_100C9E32C(v7, v8);
    goto LABEL_11;
  }

  if (v7)
  {
LABEL_11:
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = *(v9 + 128);
      *(v9 + 128) = 1;
      v11 = *(v9 + 136);
      *(v9 + 136) = 2;
      sub_100C9E32C(v10, v11);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100CA5E14()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_100CA5EC8;
  v2 = *(v0 + 96);

  return sub_100CA6CB0(v2);
}

uint64_t sub_100CA5EC8()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_100CA5FE8, v3, v2);
}

uint64_t sub_100CA5FE8()
{
  v1 = *(v0 + 104);

  return _swift_task_switch(sub_100CA6054, 0, 0);
}

uint64_t sub_100CA6054()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 128);
    v3 = *(Strong + 136);
    sub_100C9E408(v2, v3);

    if (v3 >= 2)
    {
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_100C9E32C(v2, v3);
    }
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + 128);
    *(v4 + 128) = 1;
    v6 = *(v4 + 136);
    *(v4 + 136) = 2;
    sub_100C9E32C(v5, v6);
  }

LABEL_7:
  v7 = *(v0 + 8);

  return v7();
}

char *sub_100CA617C(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView;
  *&v7[v15] = [objc_allocWithZone(UIView) init];
  *&v7[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_wordView] = a1;
  v16 = &v7[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = a1;
  sub_100C9E348(a2, a3);
  v24.receiver = v7;
  v24.super_class = _s4WordC17WordContainerViewCMa();
  v18 = objc_msgSendSuper2(&v24, "initWithFrame:", a4, a5, a6, a7);
  if (qword_1011BB888 != -1)
  {
    swift_once();
  }

  v19 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && sub_100C6E398(9, *(v19 + 40)) || !a2)
  {
    [v18 addSubview:v17];
    sub_10004D23C(a2, a3);
  }

  else
  {
    [v18 setMaskView:v17];
    v20 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView;
    v21 = *&v18[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
    [v18 bounds];
    [v21 setFrame:?];

    [*&v18[v20] setBackgroundColor:a2];
    v22 = *&v18[v20];
    [v18 addSubview:v22];
  }

  return v18;
}

void sub_100CA63F8()
{
  v1 = v0;
  sub_100009F78(0, &qword_1011BD330);
  v2 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() animationWithKeyPath:v3];

  v5 = v4;
  [v2 settlingDuration];
  [v5 setDuration:?];

  v6 = v2;
  CASpringAnimation.springParameters.setter(v6);
  v7 = v5;
  v8 = [v1 layer];
  [v8 shadowOpacity];

  isa = Float._bridgeToObjectiveC()().super.super.isa;
  [v7 setFromValue:isa];

  v10 = Int._bridgeToObjectiveC()().super.super.isa;
  [v7 setToValue:v10];

  v11 = [v1 layer];
  v12 = [v7 keyPath];
  [v11 addAnimation:v7 forKey:v12];

  v13 = [v1 layer];
  [v13 setShadowOpacity:0.0];
}

void sub_100CA6610(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = *(a1 + 472) + (*(a1 + 480) - *(a1 + 472)) * a2;
  if (a3 <= 3.0)
  {
    v6 = a3;
  }

  else
  {
    v6 = 3.0;
  }

  sub_100009F78(0, &qword_1011BD330);
  v7 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, v6);
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() animationWithKeyPath:v8];

  v10 = v9;
  [v7 settlingDuration];
  [v10 setDuration:?];

  v11 = v7;
  CASpringAnimation.springParameters.setter(v11);
  v12 = v10;
  v13 = [v4 layer];
  [v13 shadowOpacity];

  isa = Float._bridgeToObjectiveC()().super.super.isa;
  [v12 setFromValue:isa];

  v15 = Float._bridgeToObjectiveC()().super.super.isa;
  [v12 setToValue:v15];

  v16 = [v4 layer];
  v17 = [v12 keyPath];
  [v16 addAnimation:v12 forKey:v17];

  v19 = [v4 layer];
  *&v18 = v5;
  [v19 setShadowOpacity:v18];
}

id sub_100CA6878()
{
  v2.receiver = v0;
  v2.super_class = _s4WordC17WordContainerViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100CA69F4()
{

  sub_100C9E32C(*(v0 + 128), *(v0 + 136));

  return v0;
}

uint64_t sub_100CA6A58()
{
  sub_100CA69F4();

  return swift_deallocClassInstance();
}

unint64_t sub_100CA6B0C()
{
  result = qword_1011BCD00;
  if (!qword_1011BCD00)
  {
    _s4WordCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BCD00);
  }

  return result;
}

unint64_t sub_100CA6B6C()
{
  result = qword_1011BCD68;
  if (!qword_1011BCD68)
  {
    sub_1001109D0(&qword_1011BCD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BCD68);
  }

  return result;
}

uint64_t sub_100CA6BD0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100CA5C2C(v7, a1, v4, v5, v6);
}

uint64_t sub_100CA6CB0(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  type metadata accessor for MainActor();
  *(v2 + 32) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_100CA6D4C, v4, v3);
}

uint64_t sub_100CA6D4C()
{
  if (v0[2] <= 0.0)
  {
    v4 = *(v0 + 3);
    v5 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
    *(v0 + 9) = v5;
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() animationWithKeyPath:v6];
    *(v0 + 10) = v7;

    v8 = v7;
    [v5 settlingDuration];
    [v8 setDuration:?];

    CASpringAnimation.springParameters.setter(v5);
    v9 = v8;
    v10 = [v4 layer];
    [v10 shadowOpacity];

    isa = Float._bridgeToObjectiveC()().super.super.isa;
    [v9 setFromValue:isa];

    v12 = Int._bridgeToObjectiveC()().super.super.isa;
    [v9 setToValue:v12];

    *(v0 + 11) = [v4 layer];
    v13 = [v9 keyPath];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    *(v0 + 12) = v17;
    v18 = swift_task_alloc();
    *(v0 + 13) = v18;
    *v18 = v0;
    v18[1] = sub_100CA73B8;

    return CALayer.addAsyncAnimation(_:forKey:)(v9, v15, v17);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 7) = v1;
    *v1 = v0;
    v1[1] = sub_100CA7024;
    v2 = v0[2];

    return static Task<>.sleep(for:)(v2);
  }
}

uint64_t sub_100CA7024()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100CA7580;
  }

  else
  {
    v5 = sub_100CA7160;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100CA7160()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
  v0[9] = v2;
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() animationWithKeyPath:v3];
  v0[10] = v4;

  v5 = v4;
  [v2 settlingDuration];
  [v5 setDuration:?];

  CASpringAnimation.springParameters.setter(v2);
  v6 = v5;
  v7 = [v1 layer];
  [v7 shadowOpacity];

  isa = Float._bridgeToObjectiveC()().super.super.isa;
  [v6 setFromValue:isa];

  v9 = Int._bridgeToObjectiveC()().super.super.isa;
  [v6 setToValue:v9];

  v0[11] = [v1 layer];
  v10 = [v6 keyPath];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[12] = v14;
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_100CA73B8;

  return CALayer.addAsyncAnimation(_:forKey:)(v6, v12, v14);
}