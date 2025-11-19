uint64_t specialized DisplayList.forEachIdentity(_:)(uint64_t a1, uint64_t a2)
{
  return specialized DisplayList.forEachIdentity(_:)(a1, a2, specialized DisplayList.Item.forEachIdentity(_:));
}

{
  return specialized DisplayList.forEachIdentity(_:)(a1, a2, specialized DisplayList.Item.forEachIdentity(_:));
}

uint64_t specialized DisplayList.forEachIdentity(_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t))
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v7 = 0;
    v8 = (v3 + 32);
    v9 = v4 - 1;
    while (v7 < *(v3 + 16))
    {
      v10 = v8[3];
      v13[2] = v8[2];
      v14[0] = v10;
      *(v14 + 12) = *(v8 + 60);
      v11 = v8[1];
      v13[0] = *v8;
      v13[1] = v11;
      result = a3(v13, a2);
      if (result)
      {
        v8 += 5;
        if (v9 != v7++)
        {
          continue;
        }
      }

      return result & 1;
    }

    __break(1u);
  }

  else
  {
    LOBYTE(result) = 1;
    return result & 1;
  }

  return result;
}

uint64_t DisplayList.forEachIdentity(_:)(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (!v4)
  {
    return 1;
  }

  v6 = result;
  v7 = 0;
  v8 = (v3 + 32);
  while (v7 < *(v3 + 16))
  {
    v17[0] = *v8;
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    *(v18 + 12) = *(v8 + 60);
    v17[2] = v10;
    v18[0] = v11;
    v17[1] = v9;
    v12 = v8[3];
    v15[7] = v8[2];
    v16[0] = v12;
    *(v16 + 12) = *(v8 + 60);
    v13 = v8[1];
    v15[5] = *v8;
    v15[6] = v13;
    outlined init with copy of DisplayList.Item(v17, v15);
    v14 = DisplayList.Item.forEachIdentity(_:)(v6, a2);
    result = outlined destroy of DisplayList.Item(v17);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    ++v7;
    v8 += 5;
    if (v4 == v7)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized DisplayList.Item.forEachIdentity(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  if (!v7 || (v41 = 0, LODWORD(v37) = v7, closure #3 in idsAreDisjoint(_:_:)(&v37, &v41, a2), result = 0, (v41 & 1) == 0))
  {
    v9 = v6 >> 30;
    if (v6 >> 30 > 1)
    {
      if (v9 == 2)
      {
        v17 = *(v4 + 16);

        v36 = v17;
        if (v17)
        {
          v18 = 0;
          while (v18 < *(v4 + 16))
          {
            v19 = *(v4 + 32 + 40 * v18 + 24);
            v20 = *(v19 + 16);

            if (v20)
            {
              v21 = 0;
              v22 = 32;
              while (v21 < *(v19 + 16))
              {
                v23 = *(v19 + v22 + 48);
                v39 = *(v19 + v22 + 32);
                *v40 = v23;
                *&v40[12] = *(v19 + v22 + 60);
                v24 = *(v19 + v22 + 16);
                v37 = *(v19 + v22);
                v38 = v24;
                result = specialized DisplayList.Item.forEachIdentity(_:)(&v37, a2);
                if ((result & 1) == 0)
                {

                  outlined consume of DisplayList.Item.Value(v4, v3, v5, v6);
                  return 0;
                }

                ++v21;
                v22 += 80;
                if (v20 == v21)
                {
                  goto LABEL_19;
                }
              }

              __break(1u);
              goto LABEL_50;
            }

LABEL_19:
            ++v18;

            if (v18 == v36)
            {
              goto LABEL_42;
            }
          }

          goto LABEL_53;
        }

LABEL_42:
        outlined consume of DisplayList.Item.Value(v4, v3, v5, v6);
      }
    }

    else if (v9)
    {
      if (BYTE4(v3) == 7)
      {
        v25 = *(v4 + 16);
        v26 = *(v25 + 16);
        outlined copy of DisplayList.Effect(v4, v3, 7);

        if (v26)
        {
          v27 = 0;
          v28 = (v25 + 32);
          while (v27 < *(v25 + 16))
          {
            v29 = v28[3];
            v39 = v28[2];
            *v40 = v29;
            *&v40[12] = *(v28 + 60);
            v30 = v28[1];
            v37 = *v28;
            v38 = v30;
            result = specialized DisplayList.Item.forEachIdentity(_:)(&v37, a2);
            if ((result & 1) == 0)
            {

              outlined consume of DisplayList.Effect(v4, v3, 7);
              return 0;
            }

            ++v27;
            v28 += 5;
            if (v26 == v27)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_52;
        }
      }

      else
      {
        outlined copy of DisplayList.Effect(v4, v3, SBYTE4(v3));
      }

LABEL_36:
      v31 = *(v5 + 16);
      if (v31)
      {
        v32 = 0;
        v33 = 32;
        while (v32 < *(v5 + 16))
        {
          v34 = *(v5 + v33 + 48);
          v39 = *(v5 + v33 + 32);
          *v40 = v34;
          *&v40[12] = *(v5 + v33 + 60);
          v35 = *(v5 + v33 + 16);
          v37 = *(v5 + v33);
          v38 = v35;
          result = specialized DisplayList.Item.forEachIdentity(_:)(&v37, a2);
          if ((result & 1) == 0)
          {
            outlined consume of DisplayList.Effect(v4, v3, SBYTE4(v3));
LABEL_47:

            return 0;
          }

          ++v32;
          v33 += 80;
          if (v31 == v32)
          {
            goto LABEL_41;
          }
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_41:
      outlined consume of DisplayList.Effect(v4, v3, SBYTE4(v3));
    }

    else
    {
      if (v4 >> 60 != 6 && v4 >> 60 != 11)
      {
        return 1;
      }

      v11 = *((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *(v11 + 16);
      outlined copy of DisplayList.Item.Value(v4, v3, v5, v6);

      if (v12)
      {
        v13 = 0;
        v14 = 32;
        while (v13 < *(v11 + 16))
        {
          v15 = *(v11 + v14 + 48);
          v39 = *(v11 + v14 + 32);
          *v40 = v15;
          *&v40[12] = *(v11 + v14 + 60);
          v16 = *(v11 + v14 + 16);
          v37 = *(v11 + v14);
          v38 = v16;
          result = specialized DisplayList.Item.forEachIdentity(_:)(&v37, a2);
          if ((result & 1) == 0)
          {
            outlined consume of DisplayList.Item.Value(v4, v3, v5, v6);
            goto LABEL_47;
          }

          ++v13;
          v14 += 80;
          if (v12 == v13)
          {
            goto LABEL_15;
          }
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

LABEL_15:
      outlined consume of DisplayList.Item.Value(v4, v3, v5, v6);
    }

    return 1;
  }

  return result;
}

uint64_t specialized DisplayList.Item.forEachIdentity(_:)(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  if (*(a1 + 72))
  {
    LODWORD(v37) = *(a1 + 72);
    closure #1 in idsAreDisjoint(_:_:)(&v37, &v41, a2);
  }

  v7 = v6 >> 30;
  if (v6 >> 30 > 1)
  {
    if (v7 == 2)
    {
      v16 = *(v4 + 16);

      v36 = v16;
      if (v16)
      {
        v17 = 0;
        while (v17 < *(v4 + 16))
        {
          v18 = v3;
          v19 = *(v4 + 32 + 40 * v17 + 24);
          v20 = *(v19 + 16);

          if (v20)
          {
            v21 = 0;
            v22 = 32;
            while (v21 < *(v19 + 16))
            {
              v23 = *(v19 + v22 + 48);
              v39 = *(v19 + v22 + 32);
              *v40 = v23;
              *&v40[12] = *(v19 + v22 + 60);
              v24 = *(v19 + v22 + 16);
              v37 = *(v19 + v22);
              v38 = v24;
              result = specialized DisplayList.Item.forEachIdentity(_:)(&v37, a2);
              if ((result & 1) == 0)
              {

                outlined consume of DisplayList.Item.Value(v4, v18, v5, v6);
                return 0;
              }

              ++v21;
              v22 += 80;
              if (v20 == v21)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
            goto LABEL_50;
          }

LABEL_19:
          ++v17;

          v3 = v18;
          if (v17 == v36)
          {
            goto LABEL_42;
          }
        }

        goto LABEL_53;
      }

LABEL_42:
      outlined consume of DisplayList.Item.Value(v4, v3, v5, v6);
    }
  }

  else if (v7)
  {
    if (BYTE4(v3) == 7)
    {
      v25 = *(v4 + 16);
      v26 = *(v25 + 16);
      outlined copy of DisplayList.Effect(v4, v3, 7);

      if (v26)
      {
        v27 = 0;
        v28 = (v25 + 32);
        while (v27 < *(v25 + 16))
        {
          v29 = v28[3];
          v39 = v28[2];
          *v40 = v29;
          *&v40[12] = *(v28 + 60);
          v30 = v28[1];
          v37 = *v28;
          v38 = v30;
          result = specialized DisplayList.Item.forEachIdentity(_:)(&v37, a2);
          if ((result & 1) == 0)
          {

            outlined consume of DisplayList.Effect(v4, v3, 7);
            return 0;
          }

          ++v27;
          v28 += 5;
          if (v26 == v27)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      outlined copy of DisplayList.Effect(v4, v3, SBYTE4(v3));
    }

LABEL_36:
    v31 = *(v5 + 16);
    if (v31)
    {
      v32 = 0;
      v33 = 32;
      while (v32 < *(v5 + 16))
      {
        v34 = *(v5 + v33 + 48);
        v39 = *(v5 + v33 + 32);
        *v40 = v34;
        *&v40[12] = *(v5 + v33 + 60);
        v35 = *(v5 + v33 + 16);
        v37 = *(v5 + v33);
        v38 = v35;
        result = specialized DisplayList.Item.forEachIdentity(_:)(&v37, a2);
        if ((result & 1) == 0)
        {
          outlined consume of DisplayList.Effect(v4, v3, SBYTE4(v3));
LABEL_47:

          return 0;
        }

        ++v32;
        v33 += 80;
        if (v31 == v32)
        {
          goto LABEL_41;
        }
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

LABEL_41:
    outlined consume of DisplayList.Effect(v4, v3, SBYTE4(v3));
  }

  else
  {
    if (v4 >> 60 != 6 && v4 >> 60 != 11)
    {
      return 1;
    }

    v9 = *((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *(v9 + 16);
    outlined copy of DisplayList.Item.Value(v4, v3, v5, v6);

    if (v10)
    {
      v12 = 0;
      v13 = 32;
      while (v12 < *(v9 + 16))
      {
        v14 = *(v9 + v13 + 48);
        v39 = *(v9 + v13 + 32);
        *v40 = v14;
        *&v40[12] = *(v9 + v13 + 60);
        v15 = *(v9 + v13 + 16);
        v37 = *(v9 + v13);
        v38 = v15;
        result = specialized DisplayList.Item.forEachIdentity(_:)(&v37, a2);
        if ((result & 1) == 0)
        {
          outlined consume of DisplayList.Item.Value(v4, v3, v5, v6);
          goto LABEL_47;
        }

        ++v12;
        v13 += 80;
        if (v10 == v12)
        {
          goto LABEL_15;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return result;
    }

LABEL_15:
    outlined consume of DisplayList.Item.Value(v4, v3, v5, v6);
  }

  return 1;
}

uint64_t DisplayList.Item.forEachIdentity(_:)(void (*a1)(__int128 *, __int128 *), uint64_t a2)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v9 = *(v2 + 72);
  if (!v9 || (LOBYTE(v66) = 0, LODWORD(v70) = v9, a1(&v70, &v66), result = 0, (v66 & 1) == 0))
  {
    v11 = v8 >> 30;
    if (v8 >> 30 > 1)
    {
      if (v11 == 2)
      {
        v60 = v8;
        v23 = *(v5 + 16);

        v56 = v23;
        if (v23)
        {
          v24 = 0;
          v57 = v6;
          v58 = v5 + 32;
          v63 = v5;
          while (v24 < *(v5 + 16))
          {
            v25 = *(v58 + 40 * v24 + 24);
            v26 = *(v25 + 16);

            if (v26)
            {
              v27 = 0;
              v28 = 32;
              while (1)
              {
                if (v27 >= *(v25 + 16))
                {
                  __break(1u);
                  goto LABEL_51;
                }

                v70 = *(v25 + v28);
                v29 = *(v25 + v28 + 16);
                v30 = *(v25 + v28 + 32);
                v31 = *(v25 + v28 + 48);
                *(v73 + 12) = *(v25 + v28 + 60);
                v72 = v30;
                v73[0] = v31;
                v71 = v29;
                v32 = *(v25 + v28 + 48);
                v68 = *(v25 + v28 + 32);
                v69[0] = v32;
                *(v69 + 12) = *(v25 + v28 + 60);
                v33 = *(v25 + v28 + 16);
                v66 = *(v25 + v28);
                v67 = v33;
                outlined init with copy of DisplayList.Item(&v70, v65);
                v34 = DisplayList.Item.forEachIdentity(_:)(a1, a2);
                result = outlined destroy of DisplayList.Item(&v70);
                if ((v34 & 1) == 0)
                {
                  break;
                }

                ++v27;
                v28 += 80;
                if (v26 == v27)
                {
                  goto LABEL_19;
                }
              }

              outlined consume of DisplayList.Item.Value(v63, v57, v7, v60);
              return 0;
            }

LABEL_19:
            ++v24;

            v6 = v57;
            v5 = v63;
            if (v24 == v56)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_54;
        }

LABEL_43:
        outlined consume of DisplayList.Item.Value(v5, v6, v7, v60);
      }

      return 1;
    }

    if (v11)
    {
      v61 = HIDWORD(v6);
      v64 = v5;
      if (BYTE4(v6) == 7)
      {
        v35 = *(v5 + 16);
        v36 = *(v35 + 16);
        v37 = v6;
        outlined copy of DisplayList.Effect(v5, v6, 7);

        if (v36)
        {
          v38 = 0;
          v39 = (v35 + 32);
          while (v38 < *(v35 + 16))
          {
            v70 = *v39;
            v40 = v39[1];
            v41 = v39[2];
            v42 = v39[3];
            *(v73 + 12) = *(v39 + 60);
            v72 = v41;
            v73[0] = v42;
            v71 = v40;
            v43 = v39[3];
            v68 = v39[2];
            v69[0] = v43;
            *(v69 + 12) = *(v39 + 60);
            v44 = v39[1];
            v66 = *v39;
            v67 = v44;
            outlined init with copy of DisplayList.Item(&v70, v65);
            v45 = DisplayList.Item.forEachIdentity(_:)(a1, a2);
            result = outlined destroy of DisplayList.Item(&v70);
            if ((v45 & 1) == 0)
            {

              outlined consume of DisplayList.Effect(v64, v37, 7);
              return 0;
            }

            ++v38;
            v39 += 5;
            if (v36 == v38)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_53;
        }
      }

      else
      {
        v37 = v6;
        outlined copy of DisplayList.Effect(v5, v6, SBYTE4(v6));
      }

LABEL_36:
      v46 = *(v7 + 16);
      v47 = v37;
      if (v46)
      {
        v48 = 0;
        v49 = 32;
        while (v48 < *(v7 + 16))
        {
          v70 = *(v7 + v49);
          v50 = *(v7 + v49 + 16);
          v51 = *(v7 + v49 + 32);
          v52 = *(v7 + v49 + 48);
          *(v73 + 12) = *(v7 + v49 + 60);
          v72 = v51;
          v73[0] = v52;
          v71 = v50;
          v53 = *(v7 + v49 + 48);
          v68 = *(v7 + v49 + 32);
          v69[0] = v53;
          *(v69 + 12) = *(v7 + v49 + 60);
          v54 = *(v7 + v49 + 16);
          v66 = *(v7 + v49);
          v67 = v54;
          outlined init with copy of DisplayList.Item(&v70, v65);
          v55 = DisplayList.Item.forEachIdentity(_:)(a1, a2);
          result = outlined destroy of DisplayList.Item(&v70);
          if ((v55 & 1) == 0)
          {
            outlined consume of DisplayList.Effect(v64, v47, v61);

            return 0;
          }

          ++v48;
          v49 += 80;
          if (v46 == v48)
          {
            goto LABEL_41;
          }
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_41:
      outlined consume of DisplayList.Effect(v64, v47, v61);
    }

    else
    {
      if (v5 >> 60 != 11 && v5 >> 60 != 6)
      {
        return 1;
      }

      v13 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *(v13 + 16);
      v59 = v8;
      v62 = v5;
      outlined copy of DisplayList.Item.Value(v5, v6, v7, v8);

      if (v14)
      {
        v15 = 0;
        v16 = 32;
        while (v15 < *(v13 + 16))
        {
          v70 = *(v13 + v16);
          v17 = *(v13 + v16 + 16);
          v18 = *(v13 + v16 + 32);
          v19 = *(v13 + v16 + 48);
          *(v73 + 12) = *(v13 + v16 + 60);
          v72 = v18;
          v73[0] = v19;
          v71 = v17;
          v20 = *(v13 + v16 + 48);
          v68 = *(v13 + v16 + 32);
          v69[0] = v20;
          *(v69 + 12) = *(v13 + v16 + 60);
          v21 = *(v13 + v16 + 16);
          v66 = *(v13 + v16);
          v67 = v21;
          outlined init with copy of DisplayList.Item(&v70, v65);
          v22 = DisplayList.Item.forEachIdentity(_:)(a1, a2);
          result = outlined destroy of DisplayList.Item(&v70);
          if ((v22 & 1) == 0)
          {
            outlined consume of DisplayList.Item.Value(v62, v6, v7, v59);

            return 0;
          }

          ++v15;
          v16 += 80;
          if (v14 == v15)
          {
            goto LABEL_15;
          }
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        return result;
      }

LABEL_15:
      outlined consume of DisplayList.Item.Value(v62, v6, v7, v59);
    }

    return 1;
  }

  return result;
}

uint64_t *DisplayList.forEachRBDisplayList(_:)(uint64_t *result, uint64_t a2)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v5 = result;
    v6 = (*v2 + 32);
    do
    {
      v15[0] = *v6;
      v7 = v6[1];
      v8 = v6[2];
      v9 = v6[3];
      *(v16 + 12) = *(v6 + 60);
      v15[2] = v8;
      v16[0] = v9;
      v15[1] = v7;
      v10 = v6[3];
      v13[7] = v6[2];
      v14[0] = v10;
      *(v14 + 12) = *(v6 + 60);
      v12 = *v6;
      v11 = v6[1];
      v6 += 5;
      v13[5] = v12;
      v13[6] = v11;
      outlined init with copy of DisplayList.Item(v15, v13);
      DisplayList.Item.forEachRBDisplayList(_:)(v5, a2);
      result = outlined destroy of DisplayList.Item(v15);
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t DisplayList.Item.forEachRBDisplayList(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  result = v2[5];
  v6 = v2[6];
  v8 = v2[7];
  v7 = v2[8];
  v9 = v7 >> 30;
  v48 = result;
  if (v7 >> 30 <= 1)
  {
    if (!v9)
    {
      if (result >> 60 == 12)
      {
        v10 = v2[5];
        v11 = v2[8];
        outlined copy of DisplayList.Item.Value(result, v6, v8, v7);
        v12 = swift_unknownObjectRetain();
        a1(v12);
        outlined consume of DisplayList.Item.Value(v10, v6, v8, v11);

        return swift_unknownObjectRelease();
      }

      return result;
    }

    v25 = HIDWORD(v6);
    v26 = HIDWORD(v6);
    if (BYTE4(v6) == 7)
    {
      v27 = *(result + 16);
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = (v27 + 32);
        v30 = v2[6];
        outlined copy of DisplayList.Effect(result, v30, 7);

        do
        {
          v54 = *v29;
          v31 = v29[1];
          v32 = v29[2];
          v33 = v29[3];
          *(v57 + 12) = *(v29 + 60);
          v56 = v32;
          v57[0] = v33;
          v55 = v31;
          v34 = v29[3];
          v52 = v29[2];
          v53[0] = v34;
          *(v53 + 12) = *(v29 + 60);
          v36 = *v29;
          v35 = v29[1];
          v29 += 5;
          v50 = v36;
          v51 = v35;
          outlined init with copy of DisplayList.Item(&v54, v49);
          DisplayList.Item.forEachRBDisplayList(_:)(a1, a2);
          outlined destroy of DisplayList.Item(&v54);
          --v28;
        }

        while (v28);
        v37 = *(v8 + 16);
        if (!v37)
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }

      LOBYTE(v26) = 7;
    }

    v30 = v2[6];
    outlined copy of DisplayList.Effect(result, v6, v26);

    v37 = *(v8 + 16);
    if (!v37)
    {
LABEL_29:
      outlined consume of DisplayList.Effect(v48, v30, v25);
    }

LABEL_26:
    v38 = v37 - 1;
    for (i = 32; ; i += 80)
    {
      v54 = *(v8 + i);
      v40 = *(v8 + i + 16);
      v41 = *(v8 + i + 32);
      v42 = *(v8 + i + 48);
      *(v57 + 12) = *(v8 + i + 60);
      v56 = v41;
      v57[0] = v42;
      v55 = v40;
      v43 = *(v8 + i + 48);
      v52 = *(v8 + i + 32);
      v53[0] = v43;
      *(v53 + 12) = *(v8 + i + 60);
      v44 = *(v8 + i + 16);
      v50 = *(v8 + i);
      v51 = v44;
      outlined init with copy of DisplayList.Item(&v54, v49);
      DisplayList.Item.forEachRBDisplayList(_:)(a1, a2);
      outlined destroy of DisplayList.Item(&v54);
      if (!v38)
      {
        break;
      }

      --v38;
    }

    goto LABEL_29;
  }

  v47 = v2[7];
  if (v9 == 2)
  {
    v13 = *(result + 16);
    if (v13)
    {
      v45 = v2[8];
      v46 = v2[6];
      v14 = result + 32;

      result = v48;
      v15 = 0;
      while (v15 < *(result + 16))
      {
        v16 = *(v14 + 40 * v15 + 24);
        v17 = *(v16 + 16);
        if (v17)
        {

          v18 = v17 - 1;
          for (j = 32; ; j += 80)
          {
            v54 = *(v16 + j);
            v20 = *(v16 + j + 16);
            v21 = *(v16 + j + 32);
            v22 = *(v16 + j + 48);
            *(v57 + 12) = *(v16 + j + 60);
            v56 = v21;
            v57[0] = v22;
            v55 = v20;
            v23 = *(v16 + j + 48);
            v52 = *(v16 + j + 32);
            v53[0] = v23;
            *(v53 + 12) = *(v16 + j + 60);
            v24 = *(v16 + j + 16);
            v50 = *(v16 + j);
            v51 = v24;
            outlined init with copy of DisplayList.Item(&v54, v49);
            DisplayList.Item.forEachRBDisplayList(_:)(a1, a2);
            outlined destroy of DisplayList.Item(&v54);
            if (!v18)
            {
              break;
            }

            --v18;
          }

          result = v48;
        }

        if (++v15 == v13)
        {
          return outlined consume of DisplayList.Item.Value(result, v46, v47, v45);
        }
      }

      __break(1u);
    }
  }

  return result;
}

void DisplayList.Item.frame.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t DisplayList.Item.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of DisplayList.Item.Value(v2, v3, v4, v5);
}

__n128 DisplayList.Item.value.setter(uint64_t a1)
{
  outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
  result = *a1;
  *(v1 + 7) = *(a1 + 16);
  *(v1 + 5) = result;
  return result;
}

__n128 DisplayList.Item.init(_:frame:identity:version:)@<Q0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v8 = *a2;
  v9 = *a3;
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a7;
  *(a4 + 24) = a8;
  result = *a1;
  v11 = *(a1 + 16);
  *(a4 + 40) = *a1;
  *(a4 + 56) = v11;
  *(a4 + 72) = v8;
  *(a4 + 32) = v9;
  return result;
}

unint64_t DisplayList.Content.value.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return outlined copy of DisplayList.Content.Value(v2);
}

unint64_t DisplayList.Content.value.setter(unint64_t *a1)
{
  v2 = *a1;
  result = outlined consume of DisplayList.Content.Value(*v1);
  *v1 = v2;
  return result;
}

void *DisplayList.Content.init(_:seed:)@<X0>(void *result@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  return result;
}

float DisplayList.ChameleonColor.fallback.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 DisplayList.ChameleonColor.fallback.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

uint64_t DisplayList.ChameleonColor.filters.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

__n128 DisplayList.ChameleonColor.init(_:allowedDynamicRange:filters:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = *a2;
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u32[0] = a1[1].n128_u32[0];
  a4[1].n128_u8[4] = v4;
  a4[1].n128_u64[1] = a3;
  return result;
}

uint64_t DisplayList.BackdropGroup.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t DisplayList.BackdropGroup.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

SwiftUI::DisplayList::BackdropGroup __swiftcall DisplayList.BackdropGroup.init(isEnabled:name:)(Swift::Bool isEnabled, Swift::String_optional name)
{
  *v2 = isEnabled;
  *(v2 + 8) = name;
  result.name = name;
  result.isEnabled = isEnabled;
  return result;
}

uint64_t DisplayList.ArchiveIDs.uuid.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DisplayList.ArchiveIDs.stableIDs.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for DisplayList.ArchiveIDs() + 20));
}

uint64_t DisplayList.ArchiveIDs.stableIDs.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for DisplayList.ArchiveIDs() + 20);

  *(v1 + v3) = v2;
  return result;
}

__n128 DisplayList.InterpolatorAnimation.value.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u32[0];
  v3 = v1[1].n128_u8[4];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u32[0] = v2;
  a1[1].n128_u8[4] = v3;
  return result;
}

__n128 DisplayList.InterpolatorAnimation.value.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  v3 = a1[1].n128_u8[4];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = v2;
  v1[1].n128_u8[4] = v3;
  return result;
}

uint64_t DisplayList.InterpolatorAnimation.animation.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

SwiftUI::DisplayList::Version __swiftcall DisplayList.Version.init(decodedValue:)(SwiftUI::DisplayList::Version decodedValue)
{
  value = static DisplayList.Version.lastValue;
  if (static DisplayList.Version.lastValue <= decodedValue.value)
  {
    value = decodedValue.value;
  }

  static DisplayList.Version.lastValue = value;
  v1->value = decodedValue.value;
  return decodedValue;
}

Swift::Void __swiftcall DisplayList.Version.combine(with:)(SwiftUI::DisplayList::Version with)
{
  v2 = *with.value;
  if (*with.value <= *v1)
  {
    v2 = *v1;
  }

  *v1 = v2;
}

Swift::Int DisplayList.Version.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

unint64_t *DisplayList.Seed.init(_:)@<X0>(unint64_t *result@<X0>, _WORD *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    LODWORD(v2) = (2 * ((33 * (v2 >> 16)) ^ v2)) | 1;
  }

  *a2 = v2;
  return result;
}

Swift::Void __swiftcall DisplayList.Seed.invalidate()()
{
  if (*v0)
  {
    *v0 = ~*v0 | 1;
  }
}

Swift::Int DisplayList.Seed.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DisplayList.Seed()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisplayList.Seed()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

uint64_t static DisplayList.Key.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = word_1ED53ABE8;
  v3 = dword_1ED53ABEC;
  *a1 = static DisplayList.Key.defaultValue;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
}

uint64_t static DisplayList.Key.reduce(value:nextValue:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  v4 = v7;
  v5 = v8;
  DisplayList.append(contentsOf:)(&v3);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance DisplayList.Index.RestoreOptions@<X0>(_BYTE *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

void DisplayList.Index.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

_DWORD *DisplayList.Index.enter(identity:)@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  if (*result)
  {
    v3 = *v2;
    v4 = *(v2 + 16);
    v5 = 1;
    *v2 = *result;
    *(v2 + 1) = 0;
  }

  else
  {
    v5 = 0;
    v6 = *(v2 + 1) + 1;
    *(v2 + 1) = v6;
    v3 = *v2;
    v4 = *(v2 + 16);
    DWORD1(v3) = v6;
    *(&v3 + 1) = *(v2 + 1);
  }

  *(v2 + 16) = v5;
  *a2 = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t *DisplayList.Index.skip(list:)(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = v1[5];
    v12 = v1[4];
    v13[0] = v3;
    *(v13 + 12) = *(v1 + 92);
    v4 = v1[3];
    v10 = v1[2];
    v11 = v4;
    result = DisplayList.Index.skip(item:)(&v10);
    v5 = v2 - 1;
    if (v5)
    {
      v6 = v1 + 7;
      do
      {
        v7 = v6[3];
        v12 = v6[2];
        v13[0] = v7;
        *(v13 + 12) = *(v6 + 60);
        v9 = *v6;
        v8 = v6[1];
        v6 += 5;
        v10 = v9;
        v11 = v8;
        result = DisplayList.Index.skip(item:)(&v10);
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

__n128 DisplayList.Index.id.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t DisplayList.Index.ID.string.getter()
{
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v2);

  return v4;
}

void DisplayList.Index.ID.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int DisplayList.Index.ID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DisplayList.Index.ID()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DisplayList.Index.ID()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisplayList.Index.ID()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t *DisplayList.opaqueContentPath()@<X0>(int8x16_t *a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 16) == 1)
  {
    v4 = v3[3];
    v5 = v3[5];
    v16[2] = v3[4];
    v17[0] = v5;
    *(v17 + 12) = *(v3 + 92);
    v16[0] = v3[2];
    v16[1] = v4;
    v14 = v3[4];
    *v15 = v3[5];
    *&v15[12] = *(v3 + 92);
    v12 = v3[2];
    v13 = v3[3];
    outlined init with copy of DisplayList.Item(v16, v18);
    DisplayList.Item.opaqueContentPath()(v20);
    v10 = v20[0];
    v11 = v20[1];
    v6 = v21 | (v22 << 16);
    v18[2] = v14;
    v19[0] = *v15;
    *(v19 + 12) = *&v15[12];
    v18[0] = v12;
    v18[1] = v13;
    result = outlined destroy of DisplayList.Item(v18);
    v8 = v10;
    v9 = v11;
  }

  else
  {
    v8 = 0uLL;
    v6 = 512;
    v9 = 0uLL;
  }

  *a1 = v8;
  a1[1] = v9;
  a1[2].i16[0] = v6;
  a1[2].i8[2] = BYTE2(v6);
  return result;
}

CGAffineTransform *DisplayList.Transform.affineTransform.getter@<X0>(uint64_t a1@<X8>)
{
  c = 0.0;
  v3 = *(v1 + 2);
  v4 = 0uLL;
  v5 = 1;
  ty = 0.0;
  v7 = 0uLL;
  if (*(v1 + 72) > 1u)
  {
    if (*(v1 + 72) == 2)
    {
      v8 = *(v1 + 1);
      v9 = a1;
      angle = *v1;
      CGAffineTransformMakeTranslation(&v13, v8, *(v1 + 2));
      CGAffineTransformRotate(&v12, &v13, angle);
      v13 = v12;
      result = CGAffineTransformTranslate(&v12, &v13, -v8, -v3);
      a1 = v9;
      v5 = 0;
      v4 = *&v12.a;
      c = v12.c;
      v7 = *&v12.d;
      ty = v12.ty;
    }
  }

  else if (!*(v1 + 72))
  {
    v5 = 0;
    ty = *(v1 + 5);
    v7 = *(v1 + 24);
    c = *(v1 + 2);
    v4 = *v1;
  }

  *a1 = v4;
  *(a1 + 16) = c;
  *(a1 + 24) = v7;
  *(a1 + 40) = ty;
  *(a1 + 48) = v5;
  return result;
}

void DisplayList.Transform.projectionTransform.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 8);
  if (*(v1 + 72) > 1u)
  {
    if (*(v1 + 72) != 2)
    {
      v8 = a1;
      _Rotation3DEffect.Data.transform.getter(v9);
      a1 = v8;
      v7 = 0;
      v2 = v9[0];
      v3 = v9[1];
      v4 = v9[2];
      v5 = v9[3];
      v6 = v10;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!*(v1 + 72))
  {
LABEL_5:
    v6 = 0;
    v7 = 1;
    v2 = 0uLL;
    v3 = 0uLL;
    v4 = 0uLL;
    v5 = 0uLL;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  *a1 = v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
}

void MayNotInsertCALayersEffect.effectValue(size:)(uint64_t a1@<X8>)
{
  *a1 = 512;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance MayNotInsertCALayersEffect(uint64_t a1@<X8>)
{
  *a1 = 512;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item(0, a6, a7, lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved);
    swift_arrayInitWithCopy();
  }

  return v15;
}

{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 17;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 4);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[2 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 16 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (AGSubgraphRef, Int)(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectCache<Locale.Key, String>.Item>, type metadata accessor for ObjectCache<Locale.Key, String>.Item, type metadata accessor for ObjectCache<Locale.Key, String>.Item);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry>, type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry);
}

uint64_t specialized static DisplayList.ChameleonColor.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) != 0 && ((v2 = a1[1].u8[4], v4 = a1[1].i64[1], v5 = a2[1].u8[4], v7 = a2[1].i64[1], a1[1].f32[0] == a2[1].f32[0]) ? (v8 = v2 == v5) : (v8 = 0), v8))
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14GraphicsFilterO_Tt1g5(v4, v7);
  }

  else
  {
    return 0;
  }
}

void outlined consume of VariableBlurStyle.Mask(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14)
{
  if (!(a14 >> 30))
  {
    outlined consume of GraphicsImage.Contents?(a1, a2);
  }
}

uint64_t specialized DisplayList.Item.forEachIdentity(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  if (*(a1 + 72))
  {
    LODWORD(v48) = *(a1 + 72);
    swift_retain_n();
    closure #1 in _DisplayList_StableIdentityMap.addIDs(from:root:)(&v48);
  }

  else
  {
    swift_retain_n();
  }

  v9 = v8 >> 30;
  if (v8 >> 30 <= 1)
  {
    if (v9)
    {
      v47 = v5;
      if (BYTE4(v6) == 7)
      {
        v28 = *(v5 + 16);
        v29 = *(v28 + 16);
        outlined copy of DisplayList.Effect(v5, v6, 7);

        if (v29)
        {
          v30 = 0;
          v31 = (v28 + 32);
          while (v30 < *(v28 + 16))
          {
            v32 = v31[3];
            v50 = v31[2];
            *v51 = v32;
            *&v51[12] = *(v31 + 60);
            v33 = v31[1];
            v48 = *v31;
            v49 = v33;

            v34 = specialized DisplayList.Item.forEachIdentity(_:)(&v48, a2, a3);

            if ((v34 & 1) == 0)
            {

              outlined consume of DisplayList.Effect(v47, v6, 7);
              goto LABEL_50;
            }

            ++v30;
            v31 += 5;
            if (v29 == v30)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_56;
        }
      }

      else
      {
        outlined copy of DisplayList.Effect(v5, v6, SBYTE4(v6));
      }

LABEL_37:
      v35 = *(v7 + 16);
      if (!v35)
      {
LABEL_42:
        outlined consume of DisplayList.Effect(v47, v6, SBYTE4(v6));

        goto LABEL_45;
      }

      v36 = 0;
      v37 = 32;
      while (v36 < *(v7 + 16))
      {
        v38 = *(v7 + v37 + 48);
        v50 = *(v7 + v37 + 32);
        *v51 = v38;
        *&v51[12] = *(v7 + v37 + 60);
        v39 = *(v7 + v37 + 16);
        v48 = *(v7 + v37);
        v49 = v39;

        v40 = specialized DisplayList.Item.forEachIdentity(_:)(&v48, a2, a3);

        if ((v40 & 1) == 0)
        {
          outlined consume of DisplayList.Effect(v47, v6, SBYTE4(v6));

LABEL_48:

          goto LABEL_51;
        }

        ++v36;
        v37 += 80;
        if (v35 == v36)
        {
          goto LABEL_42;
        }
      }

LABEL_54:
      __break(1u);
    }

    else
    {
      if (v5 >> 60 != 6 && v5 >> 60 != 11)
      {
        goto LABEL_44;
      }

      v11 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *(v11 + 16);
      v45 = v5;
      outlined copy of DisplayList.Item.Value(v5, v6, v7, v8);

      if (!v12)
      {
LABEL_16:
        outlined consume of DisplayList.Item.Value(v45, v6, v7, v8);

        goto LABEL_45;
      }

      v14 = 0;
      v15 = 32;
      while (v14 < *(v11 + 16))
      {
        v16 = *(v11 + v15 + 48);
        v50 = *(v11 + v15 + 32);
        *v51 = v16;
        *&v51[12] = *(v11 + v15 + 60);
        v17 = *(v11 + v15 + 16);
        v48 = *(v11 + v15);
        v49 = v17;

        v18 = specialized DisplayList.Item.forEachIdentity(_:)(&v48, a2, a3);

        if ((v18 & 1) == 0)
        {
          outlined consume of DisplayList.Item.Value(v45, v6, v7, v8);

          goto LABEL_48;
        }

        ++v14;
        v15 += 80;
        if (v12 == v14)
        {
          goto LABEL_16;
        }
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  if (v9 == 2)
  {
    v19 = *(v5 + 16);

    v42 = v19;
    if (v19)
    {
      v20 = 0;
      v43 = v6;
      v44 = v5 + 32;
      v46 = v5;
      while (v20 < *(v5 + 16))
      {
        v21 = *(v44 + 40 * v20 + 24);
        v22 = *(v21 + 16);

        if (v22)
        {
          v23 = 0;
          v24 = 32;
          while (1)
          {
            if (v23 >= *(v21 + 16))
            {
              __break(1u);
              goto LABEL_54;
            }

            v25 = *(v21 + v24 + 48);
            v50 = *(v21 + v24 + 32);
            *v51 = v25;
            *&v51[12] = *(v21 + v24 + 60);
            v26 = *(v21 + v24 + 16);
            v48 = *(v21 + v24);
            v49 = v26;

            v27 = specialized DisplayList.Item.forEachIdentity(_:)(&v48, a2, a3);

            if ((v27 & 1) == 0)
            {
              break;
            }

            ++v23;
            v24 += 80;
            if (v22 == v23)
            {
              goto LABEL_20;
            }
          }

          outlined consume of DisplayList.Item.Value(v46, v43, v7, v8);
LABEL_50:

LABEL_51:
          v41 = 0;
          goto LABEL_52;
        }

LABEL_20:
        ++v20;

        v6 = v43;
        v5 = v46;
        if (v20 == v42)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_57;
    }

LABEL_43:
    outlined consume of DisplayList.Item.Value(v5, v6, v7, v8);
  }

LABEL_44:

LABEL_45:
  v41 = 1;
LABEL_52:

  return v41;
}

unint64_t lazy protocol witness table accessor for type DisplayList.Features and conformance DisplayList.Features()
{
  result = lazy protocol witness table cache variable for type DisplayList.Features and conformance DisplayList.Features;
  if (!lazy protocol witness table cache variable for type DisplayList.Features and conformance DisplayList.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Features and conformance DisplayList.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.Features and conformance DisplayList.Features;
  if (!lazy protocol witness table cache variable for type DisplayList.Features and conformance DisplayList.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Features and conformance DisplayList.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.Features and conformance DisplayList.Features;
  if (!lazy protocol witness table cache variable for type DisplayList.Features and conformance DisplayList.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Features and conformance DisplayList.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.Features and conformance DisplayList.Features;
  if (!lazy protocol witness table cache variable for type DisplayList.Features and conformance DisplayList.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Features and conformance DisplayList.Features);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.Version and conformance DisplayList.Version()
{
  result = lazy protocol witness table cache variable for type DisplayList.Version and conformance DisplayList.Version;
  if (!lazy protocol witness table cache variable for type DisplayList.Version and conformance DisplayList.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Version and conformance DisplayList.Version);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.Seed and conformance DisplayList.Seed()
{
  result = lazy protocol witness table cache variable for type DisplayList.Seed and conformance DisplayList.Seed;
  if (!lazy protocol witness table cache variable for type DisplayList.Seed and conformance DisplayList.Seed)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Seed and conformance DisplayList.Seed);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.Properties and conformance DisplayList.Properties()
{
  result = lazy protocol witness table cache variable for type DisplayList.Properties and conformance DisplayList.Properties;
  if (!lazy protocol witness table cache variable for type DisplayList.Properties and conformance DisplayList.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Properties and conformance DisplayList.Properties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.Properties and conformance DisplayList.Properties;
  if (!lazy protocol witness table cache variable for type DisplayList.Properties and conformance DisplayList.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Properties and conformance DisplayList.Properties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.Properties and conformance DisplayList.Properties;
  if (!lazy protocol witness table cache variable for type DisplayList.Properties and conformance DisplayList.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Properties and conformance DisplayList.Properties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.Properties and conformance DisplayList.Properties;
  if (!lazy protocol witness table cache variable for type DisplayList.Properties and conformance DisplayList.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Properties and conformance DisplayList.Properties);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.Options and conformance DisplayList.Options()
{
  result = lazy protocol witness table cache variable for type DisplayList.Options and conformance DisplayList.Options;
  if (!lazy protocol witness table cache variable for type DisplayList.Options and conformance DisplayList.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Options and conformance DisplayList.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.Options and conformance DisplayList.Options;
  if (!lazy protocol witness table cache variable for type DisplayList.Options and conformance DisplayList.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Options and conformance DisplayList.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.Options and conformance DisplayList.Options;
  if (!lazy protocol witness table cache variable for type DisplayList.Options and conformance DisplayList.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Options and conformance DisplayList.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.Options and conformance DisplayList.Options;
  if (!lazy protocol witness table cache variable for type DisplayList.Options and conformance DisplayList.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Options and conformance DisplayList.Options);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.Index.ID and conformance DisplayList.Index.ID()
{
  result = lazy protocol witness table cache variable for type DisplayList.Index.ID and conformance DisplayList.Index.ID;
  if (!lazy protocol witness table cache variable for type DisplayList.Index.ID and conformance DisplayList.Index.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Index.ID and conformance DisplayList.Index.ID);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MayNotInsertCALayersEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MayNotInsertCALayersEffect and conformance MayNotInsertCALayersEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MayNotInsertCALayersEffect and conformance MayNotInsertCALayersEffect()
{
  result = lazy protocol witness table cache variable for type MayNotInsertCALayersEffect and conformance MayNotInsertCALayersEffect;
  if (!lazy protocol witness table cache variable for type MayNotInsertCALayersEffect and conformance MayNotInsertCALayersEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MayNotInsertCALayersEffect and conformance MayNotInsertCALayersEffect);
  }

  return result;
}

uint64_t assignWithTake for DisplayList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t assignWithCopy for DisplayList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  outlined copy of DisplayList.Item.Value(v4, v5, v6, v7);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  outlined consume of DisplayList.Item.Value(v8, v9, v10, v11);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

__n128 __swift_memcpy76_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for DisplayList.Item(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 64);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v10;
  *(a1 + 64) = v5;
  outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.Item(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 37) & 0x7FFFFFF | (BYTE2(*(a1 + 64)) << 27);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.Item(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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
      v3 = -a2;
      *(result + 40) = 0;
      *(result + 48) = v3 << 37;
      *(result + 56) = 0;
      *(result + 64) = (v3 >> 11) & 0x1F0000;
      return result;
    }

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeWithCopy for DisplayList.Item.Value(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of DisplayList.Item.Value(*a2, v4, v5, v6);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t *assignWithCopy for DisplayList.Item.Value(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of DisplayList.Item.Value(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  outlined consume of DisplayList.Item.Value(v7, v8, v9, v10);
  return a1;
}

uint64_t *assignWithTake for DisplayList.Item.Value(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v7;
  outlined consume of DisplayList.Item.Value(v3, v5, v4, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.Item.Value(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 8) >> 37) & 0x7FFFFFF | (BYTE2(*(a1 + 24)) << 27);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.Item.Value(uint64_t result, int a2, int a3)
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
      v3 = -a2;
      *result = 0;
      *(result + 8) = v3 << 37;
      *(result + 16) = 0;
      *(result + 24) = (v3 >> 11) & 0x1F0000;
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

uint64_t getEnumTag for DisplayList.Item.Value(_DWORD *a1)
{
  v1 = a1[6] >> 30;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t destructiveInjectEnumTag for DisplayList.Item.Value(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) &= 0x1FFFFFFFFFuLL;
    *(result + 26) = a2 << 14;
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 3221225472;
  }

  return result;
}

uint64_t assignWithCopy for DisplayList.Content(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  outlined copy of DisplayList.Content.Value(*a2);
  v5 = *a1;
  *a1 = v4;
  outlined consume of DisplayList.Content.Value(v5);
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for DisplayList.Content(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  outlined consume of DisplayList.Content.Value(v4);
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.Content(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 10))
  {
    return (*a1 + 2);
  }

  if (*a1 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.Content(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = 0xF000000000000000;
    }
  }

  return result;
}

unint64_t *assignWithCopy for DisplayList.Content.Value(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of DisplayList.Content.Value(*a2);
  v4 = *a1;
  *a1 = v3;
  outlined consume of DisplayList.Content.Value(v4);
  return a1;
}

unint64_t *assignWithTake for DisplayList.Content.Value(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  outlined consume of DisplayList.Content.Value(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.Content.Value(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.Content.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0xF000000000000000;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DisplayList.Effect(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  outlined copy of DisplayList.Effect(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return a1;
}

uint64_t assignWithCopy for DisplayList.Effect(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  outlined copy of DisplayList.Effect(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 12);
  *(a1 + 12) = v5;
  outlined consume of DisplayList.Effect(v6, v7, v8);
  return a1;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t assignWithTake for DisplayList.Effect(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 12);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 12);
  *(a1 + 12) = v5;
  outlined consume of DisplayList.Effect(v6, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.Effect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEC && *(a1 + 13))
  {
    return (*a1 + 236);
  }

  v3 = *(a1 + 12);
  if (v3 <= 0x14)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.Effect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEB)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 236;
    if (a3 >= 0xEC)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEC)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for DisplayList.Effect(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x14)
  {
    *result = a2 - 20;
    *(result + 8) = 0;
    LOBYTE(a2) = 20;
  }

  *(result + 12) = a2;
  return result;
}

uint64_t initializeWithCopy for DisplayList.ChameleonColor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for DisplayList.ChameleonColor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for DisplayList.ChameleonColor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for DisplayList.BackdropGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for DisplayList.BackdropGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.Transform(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 73))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 72);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.Transform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DisplayList.ArchiveIDs(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t assignWithCopy for DisplayList.ArchiveIDs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t initializeWithTake for DisplayList.ArchiveIDs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for DisplayList.ArchiveIDs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t initializeWithCopy for DisplayList.InterpolatorAnimation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for DisplayList.InterpolatorAnimation(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = v3;
  *(a1 + 24) = *(a2 + 3);

  return a1;
}

uint64_t assignWithTake for DisplayList.InterpolatorAnimation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.InterpolatorAnimation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for DisplayList.InterpolatorAnimation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisplayList.Features(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for DisplayList.Features(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisplayList.Options(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for DisplayList.Options(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.Index.RestoreOptions and conformance DisplayList.Index.RestoreOptions()
{
  result = lazy protocol witness table cache variable for type DisplayList.Index.RestoreOptions and conformance DisplayList.Index.RestoreOptions;
  if (!lazy protocol witness table cache variable for type DisplayList.Index.RestoreOptions and conformance DisplayList.Index.RestoreOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Index.RestoreOptions and conformance DisplayList.Index.RestoreOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.Index.RestoreOptions and conformance DisplayList.Index.RestoreOptions;
  if (!lazy protocol witness table cache variable for type DisplayList.Index.RestoreOptions and conformance DisplayList.Index.RestoreOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Index.RestoreOptions and conformance DisplayList.Index.RestoreOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.Index.RestoreOptions and conformance DisplayList.Index.RestoreOptions;
  if (!lazy protocol witness table cache variable for type DisplayList.Index.RestoreOptions and conformance DisplayList.Index.RestoreOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Index.RestoreOptions and conformance DisplayList.Index.RestoreOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.Index.RestoreOptions and conformance DisplayList.Index.RestoreOptions;
  if (!lazy protocol witness table cache variable for type DisplayList.Index.RestoreOptions and conformance DisplayList.Index.RestoreOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Index.RestoreOptions and conformance DisplayList.Index.RestoreOptions);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<CGFloat>.Entry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<CGFloat>.Entry>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for CombinedAnimationState<CGFloat>.Entry, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for CombinedAnimationState.Entry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<CGFloat>.Entry>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<AnimatorState<CGFloat>.Fork>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<CGFloat>.Fork>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for AnimatorState<CGFloat>.Fork, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for AnimatorState.Fork);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<CGFloat>.Fork>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<Double>.Entry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<Double>.Entry>)
  {
    type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CombinedAnimationState<Double>.Entry, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for CombinedAnimationState.Entry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<Double>.Entry>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<AnimatorState<Double>.Fork>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<Double>.Fork>)
  {
    type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for AnimatorState<Double>.Fork, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimatorState.Fork);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<Double>.Fork>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<_AnyAnimatableData>.Entry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<_AnyAnimatableData>.Entry>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for CombinedAnimationState<_AnyAnimatableData>.Entry, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<_AnyAnimatableData>.Entry>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<AnimatorState<_AnyAnimatableData>.Fork>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<_AnyAnimatableData>.Fork>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimatorState.Fork);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<_AnyAnimatableData>.Fork>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Entry)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Entry);
    }
  }
}

void type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>()
{
  if (!lazy cache variable for type metadata for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v0 = type metadata accessor for AnimatableValues();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(AGSubgraphRef, Int)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(AGSubgraphRef, Int)>)
  {
    type metadata accessor for (AGSubgraphRef, Int)(255, &lazy cache variable for type metadata for (AGSubgraphRef, Int), type metadata accessor for AGSubgraphRef);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AGSubgraphRef, Int)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<WeakAttribute<()>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<WeakAttribute<()>>)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(255, &lazy cache variable for type metadata for WeakAttribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D370]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakAttribute<()>>);
    }
  }
}

void type metadata accessor for (SizingPreferences, Transaction?)()
{
  if (!lazy cache variable for type metadata for (SizingPreferences, Transaction?))
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(255, &lazy cache variable for type metadata for Transaction?, &type metadata for Transaction, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SizingPreferences, Transaction?));
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(Float, Float)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(Float, Float)>)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (Float, Float));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Float, Float)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(proposal: _ProposedSize, value: TextSizeVariant)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(proposal: _ProposedSize, value: TextSizeVariant)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (proposal: _ProposedSize, value: TextSizeVariant));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(proposal: _ProposedSize, value: TextSizeVariant)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<Edge.Corner.Style.AnimatableData>.Entry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<Edge.Corner.Style.AnimatableData>.Entry>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for CombinedAnimationState<Edge.Corner.Style.AnimatableData>.Entry, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<Edge.Corner.Style.AnimatableData>.Entry>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData()
{
  result = lazy protocol witness table cache variable for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData;
  if (!lazy protocol witness table cache variable for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData;
  if (!lazy protocol witness table cache variable for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData;
  if (!lazy protocol witness table cache variable for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<AnimatorState<Edge.Corner.Style.AnimatableData>.Fork>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<Edge.Corner.Style.AnimatableData>.Fork>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimatorState.Fork);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<Edge.Corner.Style.AnimatableData>.Fork>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, Float>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, Float>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, Float>>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    }
  }
}

void type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, Float>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<Float, AnimatablePair<Float, Float>>)
  {
    type metadata accessor for AnimatablePair<Float, Float>(255, &lazy cache variable for type metadata for AnimatablePair<Float, Float>, MEMORY[0x1E69E6448], &protocol witness table for Float, type metadata accessor for AnimatablePair);
    lazy protocol witness table accessor for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>();
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<Float, AnimatablePair<Float, Float>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>()
{
  result = lazy protocol witness table cache variable for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>;
  if (!lazy protocol witness table cache variable for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>)
  {
    type metadata accessor for AnimatablePair<Float, Float>(255, &lazy cache variable for type metadata for AnimatablePair<Float, Float>, MEMORY[0x1E69E6448], &protocol witness table for Float, type metadata accessor for AnimatablePair);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>);
  }

  return result;
}

void type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Entry)
  {
    type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>)
  {
    type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for AnimatableArray<Float>, MEMORY[0x1E69E6448], &protocol witness table for Float, type metadata accessor for AnimatableArray);
    type metadata accessor for AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>();
    lazy protocol witness table accessor for type AnimatableArray<Float> and conformance AnimatableArray<A>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    }
  }
}

void type metadata accessor for AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>)
  {
    type metadata accessor for AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatableArray<A>, type metadata accessor for AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable();
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>);
    }
  }
}

void type metadata accessor for AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>()
{
  if (!lazy cache variable for type metadata for AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v0 = type metadata accessor for AnimatableArray();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable()
{
  result = lazy protocol witness table cache variable for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable;
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable;
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable;
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableArray<Float> and conformance AnimatableArray<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableArray<Float> and conformance AnimatableArray<A>;
  if (!lazy protocol witness table cache variable for type AnimatableArray<Float> and conformance AnimatableArray<A>)
  {
    type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for AnimatableArray<Float>, MEMORY[0x1E69E6448], &protocol witness table for Float, type metadata accessor for AnimatableArray);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableArray<Float> and conformance AnimatableArray<A>);
  }

  return result;
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork)
  {
    type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Entry)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Entry);
    }
  }
}

void type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>()
{
  if (!lazy cache variable for type metadata for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v0 = type metadata accessor for AnimatableValues();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Entry)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Entry);
    }
  }
}

void type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>()
{
  if (!lazy cache variable for type metadata for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v0 = type metadata accessor for AnimatableValues();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Entry)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>();
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>.Entry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>.Entry>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>.Entry, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>.Entry>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData()
{
  result = lazy protocol witness table cache variable for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData;
  if (!lazy protocol witness table cache variable for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData;
  if (!lazy protocol witness table cache variable for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData;
  if (!lazy protocol witness table cache variable for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimatorState.Fork);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<ConcentricRectangle.AnimatableData>.Entry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<ConcentricRectangle.AnimatableData>.Entry>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for CombinedAnimationState<ConcentricRectangle.AnimatableData>.Entry, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<ConcentricRectangle.AnimatableData>.Entry>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData()
{
  result = lazy protocol witness table cache variable for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData;
  if (!lazy protocol witness table cache variable for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData;
  if (!lazy protocol witness table cache variable for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData;
  if (!lazy protocol witness table cache variable for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<AnimatorState<ConcentricRectangle.AnimatableData>.Fork>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<ConcentricRectangle.AnimatableData>.Fork>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimatorState.Fork);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<ConcentricRectangle.AnimatableData>.Fork>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Entry)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Entry)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Entry);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>.Entry)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>.Entry);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<CGFloat, CGFloat>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, CGFloat>>.Fork)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, CGFloat>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Entry)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>();
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ClosedRange<CGFloat>>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for ClosedRange<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E5F90]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ClosedRange<CGFloat>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<[_LazyLayout_Subview]>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<[_LazyLayout_Subview]>)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(255, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<[_LazyLayout_Subview]>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<Color.ResolvedHDR._Animatable>.Entry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<Color.ResolvedHDR._Animatable>.Entry>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for CombinedAnimationState<Color.ResolvedHDR._Animatable>.Entry, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for CombinedAnimationState.Entry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<Color.ResolvedHDR._Animatable>.Entry>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<AnimatorState<Color.ResolvedHDR._Animatable>.Fork>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<Color.ResolvedHDR._Animatable>.Fork>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimatorState.Fork);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<Color.ResolvedHDR._Animatable>.Fork>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Entry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Entry>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Entry, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Entry>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimatorState.Fork);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Entry)
  {
    type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Entry);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork)
  {
    type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>.Entry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>.Entry>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>.Entry, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>.Entry>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimatorState.Fork);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Entry)
  {
    type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork)
  {
    type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Entry)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Entry)
  {
    type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>);
    }
  }
}

void type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>();
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>);
    }
  }
}

void type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>();
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>);
    }
  }
}

void type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork)
  {
    type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>(255);
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(a4, a5);
    v8 = type metadata accessor for AnimatablePair();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>(255);
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<ResolvedGradientVector>.Entry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<ResolvedGradientVector>.Entry>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for CombinedAnimationState<ResolvedGradientVector>.Entry, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for CombinedAnimationState.Entry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<ResolvedGradientVector>.Entry>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector()
{
  result = lazy protocol witness table cache variable for type ResolvedGradientVector and conformance ResolvedGradientVector;
  if (!lazy protocol witness table cache variable for type ResolvedGradientVector and conformance ResolvedGradientVector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGradientVector and conformance ResolvedGradientVector);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedGradientVector and conformance ResolvedGradientVector;
  if (!lazy protocol witness table cache variable for type ResolvedGradientVector and conformance ResolvedGradientVector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGradientVector and conformance ResolvedGradientVector);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedGradientVector and conformance ResolvedGradientVector;
  if (!lazy protocol witness table cache variable for type ResolvedGradientVector and conformance ResolvedGradientVector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGradientVector and conformance ResolvedGradientVector);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<AnimatorState<ResolvedGradientVector>.Fork>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<ResolvedGradientVector>.Fork>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for AnimatorState<ResolvedGradientVector>.Fork, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimatorState.Fork);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<ResolvedGradientVector>.Fork>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Entry)
  {
    type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork)
  {
    type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Entry)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Entry)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>();
    type metadata accessor for AnimatablePair<Float, Float>(255, &lazy cache variable for type metadata for AnimatablePair<Double, Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimatablePair);
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>);
    lazy protocol witness table accessor for type AnimatablePair<Double, Double> and conformance AnimatablePair<A, B>();
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    }
  }
}

void type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector();
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatablePair<Double, Double> and conformance AnimatablePair<A, B>()
{
  result = lazy protocol witness table cache variable for type AnimatablePair<Double, Double> and conformance AnimatablePair<A, B>;
  if (!lazy protocol witness table cache variable for type AnimatablePair<Double, Double> and conformance AnimatablePair<A, B>)
  {
    type metadata accessor for AnimatablePair<Float, Float>(255, &lazy cache variable for type metadata for AnimatablePair<Double, Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimatablePair);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatablePair<Double, Double> and conformance AnimatablePair<A, B>);
  }

  return result;
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Entry)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>();
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>);
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Entry)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector();
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork);
    }
  }
}

uint64_t type metadata accessor for CustomAttributeWriter.Type(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for CustomAttributeWriter(255, a3);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>()
{
  if (!lazy cache variable for type metadata for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>)
  {
    v0 = type metadata accessor for CodableAccessibilityVersionStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(name: String, value: String)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(name: String, value: String)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (name: String, value: String));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(name: String, value: String)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<SIMD2<Float>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SIMD2<Float>>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for SIMD2<Float>, lazy protocol witness table accessor for type Float and conformance Float, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SIMD2<Float>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(offset: UInt64, size: UInt64)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: UInt64, size: UInt64)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (offset: UInt64, size: UInt64));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: UInt64, size: UInt64)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Range<String.Index>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<String.Index>>)
  {
    type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<String.Index>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(String, String)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(String, String)>)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (String, String));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, String)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(ScrapeableContent, Int)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(ScrapeableContent, Int)>)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (ScrapeableContent, Int));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ScrapeableContent, Int)>);
    }
  }
}

void type metadata accessor for (views: _ViewList_ID_Views, endOffset: Int)()
{
  if (!lazy cache variable for type metadata for (views: _ViewList_ID_Views, endOffset: Int))
  {
    type metadata accessor for _ViewList_ID_Views();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (views: _ViewList_ID_Views, endOffset: Int));
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(ContentShapeKinds, ConvertiblePath)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(ContentShapeKinds, ConvertiblePath)>)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (ContentShapeKinds, ConvertiblePath));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ContentShapeKinds, ConvertiblePath)>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Entry)
  {
    type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>> and conformance KeyedAnimatableArray<A, B>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Entry);
    }
  }
}

void type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>()
{
  if (!lazy cache variable for type metadata for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>)
  {
    type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>();
    lazy protocol witness table accessor for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v0 = type metadata accessor for KeyedAnimatableArray();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
    }
  }
}

void type metadata accessor for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Fork)
  {
    type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>> and conformance KeyedAnimatableArray<A, B>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Fork);
    }
  }
}

void type metadata accessor for ObjectCache<Locale.Key, String>.Item()
{
  if (!lazy cache variable for type metadata for ObjectCache<Locale.Key, String>.Item)
  {
    type metadata accessor for Locale.Key();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type Locale.Key and conformance Locale.Key, type metadata accessor for Locale.Key);
    v0 = type metadata accessor for ObjectCache.Item();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObjectCache<Locale.Key, String>.Item);
    }
  }
}

void type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry()
{
  if (!lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry)
  {
    type metadata accessor for ResolvedTextHelper(255);
    v0 = type metadata accessor for SizeFittingTextCache.CacheEntry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry);
    }
  }
}

unint64_t type metadata accessor for Swift.AnyObject.Type()
{
  result = lazy cache variable for type metadata for Swift.AnyObject.Type;
  if (!lazy cache variable for type metadata for Swift.AnyObject.Type)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Swift.AnyObject.Type);
  }

  return result;
}

void type metadata accessor for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>()
{
  if (!lazy cache variable for type metadata for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>.Item, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewList.Item);
    v0 = type metadata accessor for Unmanaged();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView()
{
  result = lazy protocol witness table cache variable for type DebugReplaceableView and conformance DebugReplaceableView;
  if (!lazy protocol witness table cache variable for type DebugReplaceableView and conformance DebugReplaceableView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DebugReplaceableView and conformance DebugReplaceableView);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(ContentShapeKinds, AnyShape)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(ContentShapeKinds, AnyShape)>)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (ContentShapeKinds, AnyShape));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ContentShapeKinds, AnyShape)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ObjectCache<Font.FontCache.Key, CTFontRef>.Item>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectCache<Font.FontCache.Key, CTFontRef>.Item>)
  {
    type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item(255, &lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>.Item, type metadata accessor for CTFontRef, lazy protocol witness table accessor for type Font.FontCache.Key and conformance Font.FontCache.Key);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectCache<Font.FontCache.Key, CTFontRef>.Item>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ObjectCache<Color.Resolved, CGColorRef>.Item>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectCache<Color.Resolved, CGColorRef>.Item>)
  {
    type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item(255, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, CGColorRef>.Item, type metadata accessor for CGColorRef, lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectCache<Color.Resolved, CGColorRef>.Item>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ObjectCache<Color.ResolvedHDR, CGColorRef>.Item>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectCache<Color.ResolvedHDR, CGColorRef>.Item>)
  {
    type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item(255, &lazy cache variable for type metadata for ObjectCache<Color.ResolvedHDR, CGColorRef>.Item, type metadata accessor for CGColorRef, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectCache<Color.ResolvedHDR, CGColorRef>.Item>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<KeyedAnimatableArray<Int, _AnyAnimatableData>.Element>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<KeyedAnimatableArray<Int, _AnyAnimatableData>.Element>)
  {
    type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>(255, &lazy cache variable for type metadata for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element, type metadata accessor for KeyedAnimatableArray.Element);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyedAnimatableArray<Int, _AnyAnimatableData>.Element>);
    }
  }
}

void type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData();
    v9[0] = MEMORY[0x1E69E6530];
    v9[1] = &type metadata for _AnyAnimatableData;
    v9[2] = MEMORY[0x1E69E6548];
    v9[3] = v6;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Entry)
  {
    type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Entry);
    }
  }
}

void type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>)
  {
    type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>(255, &lazy cache variable for type metadata for KeyedAnimatableArray<Int, _AnyAnimatableData>, type metadata accessor for KeyedAnimatableArray);
    lazy protocol witness table accessor for type KeyedAnimatableArray<Int, _AnyAnimatableData> and conformance KeyedAnimatableArray<A, B>();
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type KeyedAnimatableArray<Int, _AnyAnimatableData> and conformance KeyedAnimatableArray<A, B>()
{
  result = lazy protocol witness table cache variable for type KeyedAnimatableArray<Int, _AnyAnimatableData> and conformance KeyedAnimatableArray<A, B>;
  if (!lazy protocol witness table cache variable for type KeyedAnimatableArray<Int, _AnyAnimatableData> and conformance KeyedAnimatableArray<A, B>)
  {
    type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>(255, &lazy cache variable for type metadata for KeyedAnimatableArray<Int, _AnyAnimatableData>, type metadata accessor for KeyedAnimatableArray);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyedAnimatableArray<Int, _AnyAnimatableData> and conformance KeyedAnimatableArray<A, B>);
  }

  return result;
}

void type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork)
  {
    type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>);
    v0 = type metadata accessor for AnimatorState.Fork();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
    }
  }
}

void type metadata accessor for (Int, TypeConformance<StyleContextDescriptor>)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for Range<Int>(255, a3, a4, a5, type metadata accessor for TypeConformance);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<ShaderVectorData>.Entry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<ShaderVectorData>.Entry>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for CombinedAnimationState<ShaderVectorData>.Entry, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for CombinedAnimationState.Entry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<ShaderVectorData>.Entry>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData()
{
  result = lazy protocol witness table cache variable for type ShaderVectorData and conformance ShaderVectorData;
  if (!lazy protocol witness table cache variable for type ShaderVectorData and conformance ShaderVectorData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderVectorData and conformance ShaderVectorData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShaderVectorData and conformance ShaderVectorData;
  if (!lazy protocol witness table cache variable for type ShaderVectorData and conformance ShaderVectorData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderVectorData and conformance ShaderVectorData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShaderVectorData and conformance ShaderVectorData;
  if (!lazy protocol witness table cache variable for type ShaderVectorData and conformance ShaderVectorData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderVectorData and conformance ShaderVectorData);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<AnimatorState<ShaderVectorData>.Fork>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<ShaderVectorData>.Fork>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for AnimatorState<ShaderVectorData>.Fork, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for AnimatorState.Fork);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<ShaderVectorData>.Fork>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<WeakAttribute<_DisplayList_StableIdentityScope>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<WeakAttribute<_DisplayList_StableIdentityScope>>)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(255, &lazy cache variable for type metadata for WeakAttribute<_DisplayList_StableIdentityScope>, &type metadata for _DisplayList_StableIdentityScope, MEMORY[0x1E698D370]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakAttribute<_DisplayList_StableIdentityScope>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ObjectCache<Color.Resolved, NSObject>.Item>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectCache<Color.Resolved, NSObject>.Item>)
  {
    type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item(255, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>.Item, type metadata accessor for NSObject, lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectCache<Color.Resolved, NSObject>.Item>);
    }
  }
}

void type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = type metadata accessor for ObjectCache.Item();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CustomAttributeWriter.Type>(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for CustomAttributeWriter.Type(255, a3, a4);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<SeedValue<GlassEffectContainerTintConfiguration.Element>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SeedValue<GlassEffectContainerTintConfiguration.Element>>)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(255, &lazy cache variable for type metadata for SeedValue<GlassEffectContainerTintConfiguration.Element>, &type metadata for GlassEffectContainerTintConfiguration.Element, type metadata accessor for SeedValue);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SeedValue<GlassEffectContainerTintConfiguration.Element>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CollectionChanges<Int, Int>.Element>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CollectionChanges<Int, Int>.Element>)
  {
    type metadata accessor for AnimatablePair<Float, Float>(255, &lazy cache variable for type metadata for CollectionChanges<Int, Int>.Element, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], type metadata accessor for CollectionChanges.Element);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CollectionChanges<Int, Int>.Element>);
    }
  }
}

void type metadata accessor for AnimatablePair<Float, Float>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void *))
{
  if (!*a2)
  {
    v10[6] = v5;
    v10[7] = v6;
    v10[0] = a3;
    v10[1] = a3;
    v10[2] = a4;
    v10[3] = a4;
    v8 = a5(0, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry()
{
  if (!lazy cache variable for type metadata for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry)
  {
    v0 = type metadata accessor for SizeFittingTextCache.CacheEntry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry);
    }
  }
}

uint64_t EnvironmentValues.isEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA07EnabledF033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA07EnabledK033_09CE35833F3876FE3A3A46977D61FC64LLVG_Ttg5(v4, *v2);
  }
}

void (*EnvironmentValues.isEnabled.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA07EnabledI033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = *(v8 + 72);
    }

    else
    {
      v7 = 1;
    }
  }

  *(v4 + 40) = v7 & 1;
  return EnvironmentValues.isEnabled.modify;
}

void EnvironmentValues.isEnabled.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA07EnabledF033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA07EnabledK033_09CE35833F3876FE3A3A46977D61FC64LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void static EmptyContent._makeView(view:inputs:)(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = *MEMORY[0x1E698D3F8];
  *(a1 + 8) = 0;
  *(a1 + 12) = v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MouseEvent.Button()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*v0);
  return Hasher._finalize()();
}

double MouseEvent.timestamp.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double MouseEvent.timestamp.setter(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t MouseEvent.binding.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

void *MouseEvent.init(timestamp:binding:button:phase:location:globalLocation:modifiers:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  *a6 = *result;
  *(a6 + 8) = v10;
  *(a6 + 16) = v11;
  *(a6 + 24) = v12;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = a9;
  *(a6 + 56) = a10;
  *(a6 + 64) = a5;
  return result;
}

uint64_t protocol witness for EventType.binding.setter in conformance MouseEvent(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

BOOL specialized static MouseEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11 = *(a2 + 8);
  v10 = *(a2 + 16);
  if (v2)
  {
    if (v11)
    {
      result = 0;
      if (v2 != v11 || v3 != v10)
      {
        return result;
      }

      goto LABEL_11;
    }

LABEL_9:

    return 0;
  }

  if (v11)
  {
    goto LABEL_9;
  }

  result = 0;
  if (v3 != v10)
  {
    return result;
  }

LABEL_11:
  if (v4 == *(a2 + 24) && v6 == *(a2 + 32) && v5 == *(a2 + 40) && v8 == *(a2 + 48) && v7 == *(a2 + 56))
  {
    return v9 == *(a2 + 64);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MouseEvent.Button and conformance MouseEvent.Button()
{
  result = lazy protocol witness table cache variable for type MouseEvent.Button and conformance MouseEvent.Button;
  if (!lazy protocol witness table cache variable for type MouseEvent.Button and conformance MouseEvent.Button)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MouseEvent.Button and conformance MouseEvent.Button);
  }

  return result;
}

uint64_t initializeWithCopy for MouseEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for MouseEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
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

uint64_t assignWithTake for MouseEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for MouseEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for MouseEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EventModifiers and conformance EventModifiers()
{
  result = lazy protocol witness table cache variable for type EventModifiers and conformance EventModifiers;
  if (!lazy protocol witness table cache variable for type EventModifiers and conformance EventModifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventModifiers and conformance EventModifiers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventModifiers and conformance EventModifiers;
  if (!lazy protocol witness table cache variable for type EventModifiers and conformance EventModifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventModifiers and conformance EventModifiers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventModifiers and conformance EventModifiers;
  if (!lazy protocol witness table cache variable for type EventModifiers and conformance EventModifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventModifiers and conformance EventModifiers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventModifiers and conformance EventModifiers;
  if (!lazy protocol witness table cache variable for type EventModifiers and conformance EventModifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventModifiers and conformance EventModifiers);
  }

  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance EventModifiers@<X0>(uint64_t *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

double protocol witness for EventType.init(_:) in conformance MouseEvent@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for EventType();
  if (swift_dynamicCast())
  {
    v2 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v2;
    *(a1 + 64) = v11;
    v3 = v8;
    *a1 = v7;
    *(a1 + 16) = v3;
  }

  else
  {
    v7 = xmmword_18DD85550;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    v6 = 0;
    v5[0] = xmmword_18DD85550;
    memset(&v5[1], 0, 48);
    outlined destroy of HitTestableEvent?(v5, &lazy cache variable for type metadata for MouseEvent?);
    *&v3 = 0;
    *a1 = xmmword_18DD85550;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
  }

  return *&v3;
}

uint64_t EventType.init(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  type metadata accessor for EventType();
  v8 = swift_dynamicCast();
  v9 = *(*(a1 - 8) + 56);
  if (v8)
  {
    v10 = *(a1 - 8);
    v9(v7, 0, 1, a1);
    (*(v10 + 32))(a2, v7, a1);
    v11 = 0;
  }

  else
  {
    v11 = 1;
    v9(v7, 1, 1, a1);
    (*(v5 + 8))(v7, v4);
  }

  return (v9)(a2, v11, 1, a1);
}

unint64_t type metadata accessor for EventType()
{
  result = lazy cache variable for type metadata for EventType;
  if (!lazy cache variable for type metadata for EventType)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for EventType);
  }

  return result;
}

Swift::Int EventPhase.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

BOOL EventType.isFocusEvent.getter(uint64_t a1, uint64_t a2)
{
  v7[3] = a1;
  v7[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  HitTestableEvent.init(_:)(v7, v8);
  v5 = v9;
  if (v9 != 1)
  {
    outlined destroy of HitTestableEvent?(v8, &lazy cache variable for type metadata for HitTestableEvent?);
  }

  return v5 == 1;
}

double Event.timestamp.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double Event.timestamp.setter(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t Event.binding.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

void Event.customHitTestOptions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t Event.customHitTestOptions.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Event.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(void *__return_ptr, void, void)@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  a3[1](&v10, a2, a3);
  *a4 = v10;
  a3[2](&v10, a2, a3);
  *(a4 + 8) = v10;
  a3[3](&v10, a2, a3);
  *(a4 + 16) = v10;
  a3[6](&v10, a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  v9 = v11;
  *(a4 + 24) = v10;
  *(a4 + 32) = v9;
  return result;
}

uint64_t Event.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 8))(&v18, v4, v5);
  v6 = v18;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(&v18, v7, v8);
  v9 = v18;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 24))(&v18, v10, v11);
  v12 = v18;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 48))(&v18, v13, v14);
  v15 = v18;
  v16 = v19;
  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type EventPhase and conformance EventPhase()
{
  result = lazy protocol witness table cache variable for type EventPhase and conformance EventPhase;
  if (!lazy protocol witness table cache variable for type EventPhase and conformance EventPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventPhase and conformance EventPhase);
  }

  return result;
}

double protocol witness for EventType.timestamp.getter in conformance Event@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

uint64_t protocol witness for EventType.binding.setter in conformance Event(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

void protocol witness for EventType.customHitTestOptions.getter in conformance Event(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t initializeWithCopy for Event(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for Event(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v4;
  return a1;
}

uint64_t assignWithTake for Event(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for Event(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t protocol witness for EventType.init(_:) in conformance PhysicalButtonEvent@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for EventType();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v6;
    v4 = v8;
    v5 = v9;
    *(a1 + 8) = v7;
  }

  else
  {
    v4 = 1;
    result = outlined consume of PhysicalButtonEvent?(0, 0, 1);
    v3 = 0;
    v5 = 0;
    *(a1 + 8) = 0;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t outlined consume of PhysicalButtonEvent?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t EventID.init(type:serial:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t EventID.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x193AC11A0](*v0);
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int EventID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EventID()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EventID()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  MEMORY[0x193AC11A0](*v0);
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void EventID.init<A, B>(_:subtype:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  *a2 = TupleTypeMetadata2;
  a2[1] = a1;
}

uint64_t EventID.description.getter()
{
  v2 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](35, 0xE100000000000000);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  return v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EventID()
{
  v2 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](35, 0xE100000000000000);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  return v2;
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for (AGSubgraphRef, Int)();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for (ContentShapeKinds, ConvertiblePath)();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for (name: String, value: String)();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &lazy cache variable for type metadata for ScrollStateRequest);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &lazy cache variable for type metadata for ScrollableCollection);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = specialized Sequence._copySequenceContents(initializing:)(v43, &v3[16 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v16 = *(v3 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
      while (1)
      {
LABEL_19:
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_45;
        }

        if (v20 >= ((v14 + 64) >> 6))
        {
          break;
        }

        v19 = *(v13 + 8 * v20);
        ++v15;
        if (v19)
        {
          goto LABEL_22;
        }
      }

LABEL_13:
      result = outlined consume of Set<EventID>.Iterator._Variant();
      *v1 = v3;
      return result;
    }

    *(v3 + 2) = v18;
  }

  if (result != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  result = v43[0];
  v13 = v43[1];
  v14 = v43[2];
  v15 = v44;
  v19 = v45;
  if (!v45)
  {
    goto LABEL_19;
  }

  v20 = v44;
LABEL_22:
  v21 = (v19 - 1) & v19;
  v22 = (*(result + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v19)))));
  v23 = *v22;
  if (!*v22)
  {
    goto LABEL_13;
  }

  v24 = v22[1];
  v25 = (v14 + 64) >> 6;
  v26 = v20;
  while (1)
  {
    v27 = *(v3 + 3);
    v28 = v27 >> 1;
    if ((v27 >> 1) >= v6 + 1)
    {
      if (v6 < v28)
      {
        break;
      }

      goto LABEL_24;
    }

    v41 = v23;
    v42 = result;
    v39 = v14;
    v40 = v13;
    v35 = v26;
    v36 = v3;
    v37 = v21;
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v6 + 1, 1, v36);
    v13 = v40;
    v23 = v41;
    v21 = v37;
    v26 = v35;
    v14 = v39;
    v3 = v38;
    result = v42;
    v28 = *(v3 + 3) >> 1;
    if (v6 < v28)
    {
      break;
    }

LABEL_24:
    *(v3 + 2) = v6;
    if (!v23)
    {
      goto LABEL_13;
    }
  }

  while (1)
  {
    v32 = &v3[16 * v6 + 32];
    *v32 = v23;
    *(v32 + 1) = v24;
    ++v6;
    if (!v21)
    {
      break;
    }

LABEL_28:
    v29 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v30 = (*(result + 48) + ((v26 << 10) | (16 * v29)));
    v23 = *v30;
    v24 = v30[1];
    if (*v30)
    {
      v31 = v6 < v28;
    }

    else
    {
      v31 = 0;
    }

    if (!v31)
    {
      goto LABEL_24;
    }
  }

  v33 = v26;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v25)
    {
      *(v3 + 2) = v6;
      goto LABEL_13;
    }

    v21 = *(v13 + 8 * v34);
    ++v33;
    if (v21)
    {
      v26 = v34;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &lazy cache variable for type metadata for AnyTrackedValue);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), unint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  type metadata accessor for AnyTrackedValue(0, a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = __CocoaSet.count.getter();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v41[0] = result;
  v41[1] = a2;
  v41[2] = a3;
  v8 = *v3;
  v9 = *(*v3 + 2);
  v10 = v9 + a3;
  if (__OFADD__(v9, a3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v13 = *(v8 + 3) >> 1, v13 < v10))
  {
    if (v9 <= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v9;
    }

    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v8);
    v13 = *(v8 + 3) >> 1;
  }

  v15 = *(v8 + 2);
  v16 = v13 - v15;
  v17 = v41;
  result = specialized Sequence._copySequenceContents(initializing:)(v36, &v8[16 * v15 + 32], v13 - v15);
  if (result < a3)
  {
    goto LABEL_15;
  }

  if (result >= 1)
  {
    v19 = *(v8 + 2);
    v20 = __OFADD__(v19, result);
    v21 = v19 + result;
    if (v20)
    {
      __break(1u);
LABEL_24:
      v4 += v5;
      v18 += v5;
      v25 = v32;
      goto LABEL_25;
    }

    *(v8 + 2) = v21;
  }

  if (result != v16)
  {
    goto LABEL_13;
  }

LABEL_16:
  v22 = v40;
  v35 = v39;
  if (v40 == v39)
  {
    goto LABEL_42;
  }

  if (v40 < 0xFFFFFFFF80000000)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v40 <= 0x7FFFFFFF)
  {
    if (v40 < 0 || v40 >= v39)
    {
      goto LABEL_48;
    }

    v23 = *(v8 + 2);
    v24 = v37;
    v17 = v38;
    v4 = ++v40;

    if (v17)
    {
      v25 = -v35;
      v6 = v22 | (v24 << 32);
      v18 = v23;
      v32 = -v35;
      while (1)
      {
        v26 = *(v8 + 3);
        v33 = v18;
        v34 = v26 >> 1;
        if ((v26 >> 1) < v18 + 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v18 + 1, 1, v8);
          v18 = v33;
          v8 = result;
          v34 = *(result + 24) >> 1;
        }

        v27 = v4 <= 0x80000000 ? 0x80000000 : v4;
        if (v18 < v34)
        {
          break;
        }

LABEL_25:
        *(v8 + 2) = v18;
        if (!v17)
        {
          goto LABEL_42;
        }
      }

      v5 = 0;
      v28 = v25 + v4;
      v29 = v4 - v27;
      v30 = &v8[16 * v18 + 40];
      while (1)
      {
        *(v30 - 1) = v6;
        *v30 = v17;
        v31 = v18 + v5 + 1;
        if (!(v28 + v5))
        {
          *(v8 + 2) = v31;
          goto LABEL_42;
        }

        if (v4 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (!(v29 + v5))
        {
          goto LABEL_44;
        }

        if (v4 < 0 || v4 + v5 >= v35)
        {
          goto LABEL_45;
        }

        v17 = v38;
        v6 = (v4 + v5) | (v37 << 32);
        v40 = v4 + v5 + 1;

        ++v5;
        v18 = v33;
        if (v17)
        {
          v30 += 16;
          if (v31 < v34)
          {
            continue;
          }
        }

        goto LABEL_24;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_42:

LABEL_13:

    *v7 = v8;
    return result;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 16 * v15 + 32), (a2 + 16 * a3), 16 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

Swift::Bool __swiftcall ContentOffsetAdjustmentReason.shouldAdjust(isScrolling:isTransitioning:)(Swift::Bool isScrolling, Swift::Bool isTransitioning)
{
  v3 = *v2;
  v4 = v3 - 3 < 2 || !isScrolling;
  if (v3 >= 2)
  {
    return v4;
  }

  else
  {
    return !isTransitioning;
  }
}

SwiftUI::ContentOffsetAdjustmentReason_optional __swiftcall ContentOffsetAdjustmentReason.init(rawValue:)(Swift::UInt32 rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContentOffsetAdjustmentReason()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContentOffsetAdjustmentReason()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0 + 1);
  return Hasher._finalize()();
}

uint64_t ScrollableContainer.allowsContentOffsetAdjustments.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v6);
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = (*(v3 + 24))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    outlined destroy of Scrollable?(v6);
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t specialized ScrollableContainer.setContentTarget(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, v18);
    v5 = v19;
    v6 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v7 = (*(v6 + 16))(a1, a2, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v18);
    if (v7)
    {
      return 1;
    }
  }

  type metadata accessor for Scrollable?(0, &lazy cache variable for type metadata for [Scrollable], MEMORY[0x1E69E62F8]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v9 = *result;
    v10 = *(*result + 16);
    v11 = *result + 32;

    result = v11;
    v12 = -v10;
    v13 = -1;
    while (1)
    {
      if (v12 + v13 == -1)
      {

        return 0;
      }

      if (++v13 >= *(v9 + 16))
      {
        break;
      }

      v14 = result + 40;
      outlined init with copy of AnyTrackedValue(result, v18);
      v15 = v19;
      v16 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v17 = (*(v16 + 16))(a1, a2, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = v14;
      if (v17)
      {

        return 1;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ScrollableContainer.setContentTarget(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(&v20, a3, a4);
  if (v21)
  {
    outlined init with take of AnyTrackedValue(&v20, v22);
    v8 = v23;
    v9 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v10 = (*(v9 + 16))(a1, a2, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v22);
    if (v10)
    {
      return 1;
    }
  }

  else
  {
    outlined destroy of Scrollable?(&v20);
  }

  result = (*(a4 + 16))(a3, a4);
  if (result)
  {
    v12 = result;
    v13 = *(result + 16);
    result += 32;
    v14 = -v13;
    v15 = -1;
    while (1)
    {
      if (v14 + v15 == -1)
      {

        return 0;
      }

      if (++v15 >= *(v12 + 16))
      {
        break;
      }

      v16 = result + 40;
      outlined init with copy of AnyTrackedValue(result, v22);
      v17 = v23;
      v18 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v19 = (*(v18 + 16))(a1, a2, v17, v18);
      __swift_destroy_boxed_opaque_existential_1(v22);
      result = v16;
      if (v19)
      {

        return 1;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized ScrollableContainer.adjustContentOffset(by:reason:)(char a1, double a2, double a3)
{
  AGGraphClearUpdate();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, v15);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  AGGraphSetUpdate();
  outlined init with copy of PreferenceValues.Entry?(v15, v12, &lazy cache variable for type metadata for Scrollable?, MEMORY[0x1E69E6720], type metadata accessor for Scrollable?);
  v7 = v13;
  if (v13)
  {
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v11 = a1;
    v9 = (*(v8 + 32))(&v11, v7, v8, a2, a3);
    outlined destroy of Scrollable?(v15);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    outlined destroy of Scrollable?(v15);
    outlined destroy of Scrollable?(v12);
    v9 = 0;
  }

  return v9 & 1;
}

Swift::Bool __swiftcall ScrollableContainer.adjustContentOffset(by:reason:)(CGSize by, SwiftUI::ContentOffsetAdjustmentReason reason)
{
  v4 = v3;
  v5 = v2;
  height = by.height;
  width = by.width;
  v8 = *reason;
  AGGraphClearUpdate();
  (*(v4 + 24))(v16, v5, v4);
  AGGraphSetUpdate();
  outlined init with copy of PreferenceValues.Entry?(v16, v13, &lazy cache variable for type metadata for Scrollable?, MEMORY[0x1E69E6720], type metadata accessor for Scrollable?);
  v9 = v14;
  if (v14)
  {
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = v8;
    LOBYTE(v9) = (*(v10 + 32))(&v12, v9, v10, width, height);
    outlined destroy of Scrollable?(v16);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    outlined destroy of Scrollable?(v16);
    outlined destroy of Scrollable?(v13);
  }

  return v9 & 1;
}

uint64_t ScrollableContainer.mapFirstChild<A, B>(ofType:body:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v9 = v8;
  v55 = a7;
  v56 = a3;
  v57 = a2;
  v54 = a1;
  v50 = a8;
  v53 = type metadata accessor for Optional();
  v49 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v14 = &v48 - v13;
  v58 = a6;
  v51 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Optional();
  v17 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v19 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a5 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v22, v9, a4, v25);
  v29 = swift_dynamicCast();
  v30 = *(v23 + 56);
  if (v29)
  {
    v30(v19, 0, 1, a5);
    (*(v23 + 32))(v27, v19, a5);
    v31 = v50;
    v57(v27);
    (*(v23 + 8))(v27, a5);
    return (*(v51 + 56))(v31, 0, 1, v58);
  }

  else
  {
    v30(v19, 1, 1, a5);
    (*(v17 + 8))(v19, v52);
    result = (*(v55 + 16))(a4);
    v33 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v33 = result;
    }

    v55 = v33;
    v52 = *(v33 + 16);
    if (v52)
    {
      v34 = 0;
      v35 = v55 + 32;
      v36 = (v51 + 48);
      v37 = (v49 + 8);
      while (v34 < *(v55 + 16))
      {
        outlined init with copy of AnyTrackedValue(v35, v59);
        v38 = v60;
        v39 = v61;
        __swift_project_boxed_opaque_existential_1(v59, v60);
        v40 = a5;
        v41 = a5;
        v42 = v58;
        (*(v39 + 40))(v54, v57, v56, v41, v58, v38, v39);
        __swift_destroy_boxed_opaque_existential_1(v59);
        if ((*v36)(v14, 1, v42) != 1)
        {

          v43 = v51;
          v44 = *(v51 + 32);
          v45 = v48;
          v46 = v58;
          v44(v48, v14, v58);
          v47 = v50;
          v44(v50, v45, v46);
          return (*(v43 + 56))(v47, 0, 1, v46);
        }

        ++v34;
        result = (*v37)(v14, v53);
        v35 += 40;
        a5 = v40;
        if (v52 == v34)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:

      return (*(v51 + 56))(v50, 1, 1, v58);
    }
  }

  return result;
}

void static ScrollableCollection.accessibilityRole.getter(_BYTE *a1@<X8>)
{
  static ScrollableCollection.accessibilityRole.getter(a1);
}

{
  *a1 = 2;
}

uint64_t ScrollableCollection.visibleSubviews.getter(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  v3[2] = &v4;
  (*(a2 + 24))(partial apply for closure #1 in ScrollableCollection.visibleSubviews.getter, v3, a1, a2);
  return v4;
}

__n128 closure #1 in ScrollableCollection.visibleSubviews.getter(__n128 *a1, uint64_t a2, char **a3)
{
  v4 = a1[5];
  v24 = a1[4];
  v25 = v4;
  v5 = a1[7];
  v26 = a1[6];
  v27 = v5;
  v6 = a1[1];
  v20 = *a1;
  v21 = v6;
  v7 = a1[3];
  v22 = a1[2];
  v23 = v7;
  v8 = *a3;
  outlined init with copy of ScrollableCollectionSubview(&v20, &v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *a3 = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    *a3 = v8;
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[128 * v11];
  v13 = v20;
  v14 = v21;
  v15 = v23;
  *(v12 + 4) = v22;
  *(v12 + 5) = v15;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  result = v24;
  v17 = v25;
  v18 = v27;
  *(v12 + 8) = v26;
  *(v12 + 9) = v18;
  *(v12 + 6) = result;
  *(v12 + 7) = v17;
  return result;
}

uint64_t ScrollableCollectionSubview.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

double ScrollableCollectionSubview.id.setter(uint64_t a1)
{
  v3 = *(a1 + 8);

  result = *a1;
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

void ScrollableCollectionSubview.frame.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

void ScrollableCollectionSubview.frameInContent.setter(double a1, double a2, double a3, double a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

uint64_t ScrollableCollectionSubview.transform.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  v3 = *(v1 + 112);
  *(a1 + 16) = *(v1 + 96);
  *(a1 + 32) = v3;
}

__n128 ScrollableCollectionSubview.transform.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_i64[1];

  v1[5].n128_u64[0] = v3;
  v1[5].n128_u64[1] = v4;
  result = a1[1];
  v6 = a1[2];
  v1[6] = result;
  v1[7] = v6;
  return result;
}

__n128 ScrollableCollectionSubview.init(id:frame:frameInContent:transform:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, double a11@<D7>)
{
  v11 = a1[1];
  *a3 = *a1;
  *(a3 + 8) = v11;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = a8;
  *(a3 + 56) = a9;
  *(a3 + 64) = a10;
  *(a3 + 72) = a11;
  v12 = *(a2 + 16);
  *(a3 + 80) = *a2;
  *(a3 + 96) = v12;
  result = *(a2 + 32);
  *(a3 + 112) = result;
  return result;
}

uint64_t Scrollable.scrollToPosition(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of ScrollPosition.Storage(a1, &v19);
  v5 = v19;
  if (v22 > 2u)
  {
    if (v22 == 3)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v5;
      v7 = (*(a3 + 16))(partial apply for closure #3 in Scrollable.scrollToPosition(_:), v13, a2, a3);
    }

    else
    {
      if (v22 != 4)
      {
        v12 = 1;
        return v12 & 1;
      }

      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      v7 = (*(a3 + 16))(partial apply for closure #4 in Scrollable.scrollToPosition(_:), v8, a2, a3);
    }

    goto LABEL_11;
  }

  if (v22)
  {
    if (v22 == 1)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      v7 = (*(a3 + 16))(partial apply for closure #1 in Scrollable.scrollToPosition(_:), v6, a2, a3);
    }

    else
    {
      v14 = *(&v19 + 1);
      v15 = swift_allocObject();
      *(v15 + 16) = v5;
      *(v15 + 24) = v14;
      v7 = (*(a3 + 16))(partial apply for closure #2 in Scrollable.scrollToPosition(_:), v15, a2, a3);
    }

LABEL_11:
    v12 = v7;

    return v12 & 1;
  }

  v17[1] = v20;
  v18[0] = *v21;
  v17[0] = v19;
  *(v18 + 9) = *&v21[9];
  v9 = *(&v20 + 1);
  v10 = *v21;
  v11 = __swift_project_boxed_opaque_existential_1(v17, *(&v20 + 1));
  v12 = (*(a3 + 8))(v11, v9, v10, a2, a3);
  outlined destroy of ScrollPosition.ViewID(v17);
  return v12 & 1;
}

void closure #1 in Scrollable.scrollToPosition(_:)(SwiftUI::Edge edge@<W2>, uint64_t a2@<X0>, unsigned __int8 *a3@<X1>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *a3;
  v10 = ScrollGeometry.targetRect(edge:)(edge);
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (v6 == 1)
  {
    v10.origin.x = v5 - CGRectGetMaxX(v10);
  }

  *a4 = v10.origin.x;
  *(a4 + 8) = y;
  *(a4 + 16) = width;
  *(a4 + 24) = height;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
}

__C::CGRect __swiftcall ScrollGeometry.targetRect(edge:)(SwiftUI::Edge edge)
{
  v2 = v1[8];
  v3 = v1[9];
  if (edge <= SwiftUI_Edge_leading)
  {
    if (edge)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (edge > SwiftUI_Edge_leading)
    {
      v6 = v1[3] + v1[6] - v3;
      v5 = 0.0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (edge == SwiftUI_Edge_bottom)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (edge < SwiftUI_Edge_bottom)
  {
LABEL_10:
    v6 = -v1[4];
    v5 = -v1[5];
    goto LABEL_12;
  }

  if (edge == SwiftUI_Edge_bottom)
  {
    v4 = v1[6];
  }

  else
  {
    v4 = v1[7];
  }

  v5 = v1[2] + v4 - v2;
  v6 = 0.0;
LABEL_12:
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

void closure #2 in Scrollable.scrollToPosition(_:)(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  if (*a2 == 1)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    a4 = v9 - CGRectGetMaxX(*&a4);
  }

  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
}

void closure #3 in Scrollable.scrollToPosition(_:)(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  if (*a2 == 1)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 32);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    a4 = v8 - CGRectGetMaxX(*&a4);
  }

  *a3 = a4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
}

__n128 partial apply for closure #4 in Scrollable.scrollToPosition(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *(v2 + 16);
  a2->n128_u64[0] = a1[2].n128_u64[1];
  a2->n128_u64[1] = v3;
  result = a1[4];
  a2[1] = result;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  a2[3].n128_u16[0] = 0;
  return result;
}

uint64_t key path setter for _GraphInputs.scrollable : _GraphInputs(int *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(a2, v3);
}

uint64_t _GraphInputs.scrollable.setter(int a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v1, a1);
}

uint64_t (*_GraphInputs.scrollable.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v5);
  *(v4 + 32) = 0;
  return _GraphInputs.scrollable.modify;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.ScrollableKey@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static _GraphInputs.ScrollableKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.scrollable.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v5);
  *(v4 + 32) = 0;
  return _ViewInputs.scrollable.modify;
}

void _GraphInputs.scrollable.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 10);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v1[2], v2);

  free(v1);
}

uint64_t _ViewInputs.weakScrollable.getter()
{
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(*v0) == *MEMORY[0x1E698D3F8])
  {
    return 0;
  }

  return AGCreateWeakAttribute();
}

uint64_t UnaryScrollablePreferenceProvider.value.getter()
{
  type metadata accessor for Scrollable?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDA6EB0;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
  Value = AGGraphGetValue();
  outlined init with copy of AnyTrackedValue(Value, v0 + 32);
  return v0;
}

uint64_t protocol witness for Rule.value.getter in conformance UnaryScrollablePreferenceProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Scrollable?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18DDA6EB0;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
  Value = AGGraphGetValue();
  result = outlined init with copy of AnyTrackedValue(Value, v2 + 32);
  *a1 = v2;
  return result;
}

unint64_t ContentOffsetAdjustmentReason.description.getter()
{
  v1 = *v0;
  v2 = 0x74616C736E617274;
  v3 = 0x6E656D6E67696C61;
  v4 = 0x7465736572;
  if (v1 != 3)
  {
    v4 = 0x736F507465736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContentOffsetAdjustmentReason()
{
  v1 = *v0;
  v2 = 0x74616C736E617274;
  v3 = 0x6E656D6E67696C61;
  v4 = 0x7465736572;
  if (v1 != 3)
  {
    v4 = 0x736F507465736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t protocol witness for Scrollable.allowsContentOffsetAdjustments.getter in conformance DynamicLayoutScrollable()
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, v5);
    v1 = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

unint64_t lazy protocol witness table accessor for type ContentOffsetAdjustmentReason and conformance ContentOffsetAdjustmentReason()
{
  result = lazy protocol witness table cache variable for type ContentOffsetAdjustmentReason and conformance ContentOffsetAdjustmentReason;
  if (!lazy protocol witness table cache variable for type ContentOffsetAdjustmentReason and conformance ContentOffsetAdjustmentReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentOffsetAdjustmentReason and conformance ContentOffsetAdjustmentReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider()
{
  result = lazy protocol witness table cache variable for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider;
  if (!lazy protocol witness table cache variable for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider);
  }

  return result;
}

uint64_t initializeWithCopy for ScrollableCollectionSubview(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;
  v6 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v6;

  return a1;
}

uint64_t assignWithCopy for ScrollableCollectionSubview(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t assignWithTake for ScrollableCollectionSubview(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;

  *(a1 + 80) = *(a2 + 80);

  v6 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollableCollectionSubview(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for ScrollableCollectionSubview(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for (name: String, value: String)()
{
  if (!lazy cache variable for type metadata for (name: String, value: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (name: String, value: String));
    }
  }
}

void type metadata accessor for (ContentShapeKinds, ConvertiblePath)()
{
  if (!lazy cache variable for type metadata for (ContentShapeKinds, ConvertiblePath))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ContentShapeKinds, ConvertiblePath));
    }
  }
}

void (*EnvironmentValues.nearestScrollableAxes.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = v1[1];
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021NearestScrollableAxesjI033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021NearestScrollableAxesgF033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7;
  return EnvironmentValues.nearestScrollableAxes.modify;
}

uint64_t key path getter for EnvironmentValues.nearestScrollableAxes : EnvironmentValues@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    v7 = a2(v5);
  }

  else
  {
    result = a3(*a1);
    v7 = result;
  }

  *a4 = v7;
  return result;
}

uint64_t key path setter for EnvironmentValues.nearestScrollableAxes : EnvironmentValues(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *), void (*a6)(uint64_t, void))
{
  v9 = *a2;
  v10 = *a1;
  swift_retain_n();
  a5(a2, v10, &v12);

  if (a2[1])
  {
    a6(v9, *a2);
  }
}

uint64_t one-time initialization function for allScrollableAxes()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.allScrollableAxes = result;
  return result;
}

uint64_t _GraphInputs.nearestScrollableAxes.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v2 = *a2;
  swift_beginAccess();
  v3 = specialized CachedEnvironment.attribute<A>(id:_:)(v2);
  swift_endAccess();
  return v3;
}

uint64_t specialized implicit closure #1 in _GraphInputs.nearestScrollableAxes.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, _BYTE *a4@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    swift_retain_n();
    v7 = a2(v5);
  }

  else
  {

    v7 = a3(v10);
  }

  *a4 = v7;
  return result;
}

float64x2_t ScrollGeometry.contentOffset.setter(float64x2_t a1, float64_t a2)
{
  v3 = *v2;
  v2->f64[0] = a1.f64[0];
  v2->f64[1] = a2;
  a1.f64[1] = a2;
  result = vaddq_f64(vsubq_f64(a1, v3), v2[5]);
  v2[5] = result;
  return result;
}

__n128 (*ScrollGeometry.contentOffset.modify(void *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v3[2] = v1;
  v4 = *v1;
  v3[3] = *v1;
  v5 = v1[1];
  v3[4] = v5;
  *v3 = v4;
  v3[1] = v5;
  return ScrollGeometry.contentOffset.modify;
}

__n128 ScrollGeometry.contentOffset.modify(void **a1)
{
  v1 = *a1;
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v4 = *v1;
  *v2 = *v1;
  *(v2 + 80) = vaddq_f64(vsubq_f64(v4, v3), *(v2 + 80));
  free(v1);
  return result;
}

void ScrollGeometry.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

float64x2_t ScrollGeometry.containerSize.setter(float64x2_t a1, float64_t a2)
{
  v3 = v2[4];
  v2[4].f64[0] = a1.f64[0];
  v2[4].f64[1] = a2;
  a1.f64[1] = a2;
  result = vaddq_f64(vsubq_f64(a1, v3), v2[6]);
  v2[6] = result;
  return result;
}

__n128 (*ScrollGeometry.containerSize.modify(void *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v3[2] = v1;
  v4 = *(v1 + 64);
  v3[3] = v4;
  v5 = *(v1 + 72);
  v3[4] = v5;
  *v3 = v4;
  v3[1] = v5;
  return ScrollGeometry.containerSize.modify;
}

__n128 ScrollGeometry.containerSize.modify(void **a1)
{
  v1 = *a1;
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v4 = *v1;
  *(v2 + 64) = *v1;
  *(v2 + 96) = vaddq_f64(vsubq_f64(v4, v3), *(v2 + 96));
  free(v1);
  return result;
}

void ScrollGeometry.visibleRect.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

void ScrollGeometry.init(contentOffset:contentSize:contentInsets:containerSize:visibleRect:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  *(a1 + 80) = a11;
  *(a1 + 96) = a12;
  *(a1 + 104) = a13;
}

void ScrollGeometry.init(contentOffset:contentSize:contentInsets:containerSize:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, uint64_t a10, uint64_t a11)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  *(a1 + 72) = a11;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = a10;
  *(a1 + 104) = a11;
}

double static ScrollGeometry.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void static ScrollGeometry.rootViewTransform(contentOffset:containerSize:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = vdupq_n_s64(0x7FF0000000000000uLL);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = a4;
  *(a1 + 104) = a5;
}

void static ScrollGeometry.size(_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
}

Swift::Void __swiftcall ScrollGeometry.applyLayoutDirection(_:contentSize:)(SwiftUI::LayoutDirection _, CGSize_optional contentSize)
{
  if (*_ == 1)
  {
    if (v2)
    {
      v4 = *(v3 + 16);
    }

    else
    {
      v4 = *&contentSize.is_nil;
    }

    v5 = *(v3 + 64);
    v6 = *(v3 + 72);
    v7 = *v3;
    v11 = *v3;
    v8 = *(v3 + 8);
    v9 = v4 - CGRectGetMaxX(*(&v5 - 2));
    *v3 = v9;
    *(v3 + 8) = v11.f64[1];
    v10.f64[1] = v11.f64[1];
    v10.f64[0] = v9;
    *(v3 + 80) = vaddq_f64(vsubq_f64(v10, v11), *(v3 + 80));
  }
}

Swift::Void __swiftcall ScrollGeometry.outsetForAX(limit:)(CGSize limit)
{
  v2 = v1[4];
  if (v2.f64[0] >= limit.width)
  {
    v9 = v1[4].f64[0];
  }

  else
  {
    v3 = *v1;
    v4 = vsubq_f64(*v1, v2).f64[0];
    if (v4 < 0.0)
    {
      v4 = 0.0;
    }

    if (v4 >= v3.f64[0])
    {
      v4 = v1->f64[0];
    }

    v5.f64[1] = v1->f64[1];
    v5.f64[0] = v4;
    v6 = v1[6];
    v7 = vaddq_f64(v1[5], vsubq_f64(v5, v3));
    v1->f64[0] = v4;
    v8 = v2.f64[0] + v3.f64[0] - v4;
    v9 = limit.width - v3.f64[0];
    if (v2.f64[0] + v8 < v9)
    {
      v9 = v2.f64[0] + v8;
    }

    if (v8 > v9)
    {
      v9 = v8;
    }

    v1[4].f64[0] = v9;
    v10.f64[1] = v2.f64[1];
    v10.f64[0] = v8;
    v11 = vsubq_f64(v10, v2);
    v12 = vaddq_f64(v6, v11);
    v11.f64[0] = v9 - v8;
    v1[5] = v7;
    v1[6] = vaddq_f64(v12, v11);
  }

  if (v2.f64[1] < limit.height)
  {
    v13 = *v1;
    v14 = v1->f64[1];
    v15 = v14 - v2.f64[1];
    if (v14 - v2.f64[1] < 0.0)
    {
      v15 = 0.0;
    }

    if (v15 >= v14)
    {
      v15 = v1->f64[1];
    }

    v1->f64[1] = v15;
    v16.f64[0] = v13.f64[0];
    v16.f64[1] = v15;
    v1[5] = vaddq_f64(vsubq_f64(v16, v13), v1[5]);
    v17 = v2.f64[1] + v14 - v15;
    v18 = v9 - v9 + v1[6].f64[0];
    v19 = v17 - v2.f64[1] + v1[6].f64[1];
    v20 = limit.height - v14;
    if (v2.f64[1] + v17 < v20)
    {
      v20 = v2.f64[1] + v17;
    }

    if (v17 > v20)
    {
      v20 = v2.f64[1] + v14 - v15;
    }

    v1[4].f64[0] = v9;
    v1[4].f64[1] = v20;
    v1[6].f64[0] = v9 - v9 + v18;
    v1[6].f64[1] = v19 + v20 - v17;
  }
}

uint64_t ScrollGeometry.debugDescription.getter()
{
  _StringGuts.grow(_:)(102);
  MEMORY[0x193ABEDD0](0xD00000000000001FLL, 0x800000018DD743E0);
  type metadata accessor for CGPoint(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0x6E65746E6F63202CLL, 0xEE0020657A695374);
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD74400);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD74420);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0x6C6269736976202CLL, 0xEE00207463655265);
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](62, 0xE100000000000000);
  return 0;
}

uint64_t ScrollGeometry.EdgeInsetDescription.debugDescription.getter()
{
  _StringGuts.grow(_:)(48);

  v0 = Double.description.getter();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](0x6E696461656C202CLL, 0xEB00000000203A67);
  v1 = Double.description.getter();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](0x6D6F74746F62202CLL, 0xEA0000000000203ALL);
  v2 = Double.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](0x696C69617274202CLL, 0xEC000000203A676ELL);
  v3 = Double.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](62, 0xE100000000000000);
  return 0x203A706F743CLL;
}

void _ScrollLayout.visibleRect.setter(double a1, double a2, double a3, double a4)
{
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = a3;
  v4[11] = a4;
}

double _ScrollLayout.init(contentOffset:size:visibleRect:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  *(a1 + 64) = a6;
  *(a1 + 72) = a7;
  *(a1 + 80) = a8;
  *(a1 + 88) = a9;
  return result;
}

uint64_t getEnumTagSinglePayload for ScrollGeometry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrollGeometry(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 112) = v3;
  return result;
}

Swift::Int Image.ResizingMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void Image.ResizingInfo.capInsets.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

char *Image.ResizingInfo.init(capInsets:mode:)@<X0>(char *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v6 = *result;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = v6;
  return result;
}

double static Image.ResizingInfo.resizable.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for resizable != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = byte_1EAB12468;
  result = *&static Image.ResizingInfo.resizable;
  v3 = unk_1EAB12458;
  *a1 = static Image.ResizingInfo.resizable;
  *(a1 + 16) = v3;
  *(a1 + 32) = v1;
  return result;
}

uint64_t Image.ResizableProvider.base.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void Image.ResizableProvider.capInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

__n128 Image.ResizableProvider.resolve(in:)@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  (*(**v1 + 80))();
  v4 = *(v1 + 8);
  *(a1 + 88) = *(v1 + 24);
  *(a1 + 72) = v4;
  *(a1 + 104) = v3;
  Image.Resolved.image.didset();
  return result;
}

void Image.ResizingInfo.encode(to:)()
{
  v2 = *v0;
  v1 = *(v0 + 16);
  v3 = *v0;
  v4 = v1;
  if (*(v0 + 32) != 1)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
    v2 = v3;
    v1 = v4;
  }

  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v2), vceqzq_f64(v1))))))
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v3.f64[0], v3.f64[1], v4.f64[0], v4.f64[1]);
  }
}

uint64_t Image.ResizingMode.init(protobufValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2 * (result != 1);
  if (!result)
  {
    v2 = 1;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance Image.ResizingMode@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2 * (result != 1);
  if (!result)
  {
    v2 = 1;
  }

  *a2 = v2;
  return result;
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  *&v8[8 * v10 + 32] = v7;
  v4[3] = v8;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v4[1] = v7 + 1;
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    a1 = v4[1];
    v8 = v4[3];
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_7;
    }
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
  v8 = result;
LABEL_7:
  v13 = *(v8 + 2);
  v12 = *(v8 + 3);
  if (v13 >= v12 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 2) = v13 + 1;
  *&v8[8 * v13 + 32] = a1;
  v4[3] = v8;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = HIDWORD(a3);
    v4[1] = a1 + 1;
    StrongHash.encode(to:)(v4);
    ProtobufEncoder.endLengthDelimited()();
    if (v14)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v14);
    }

    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(float a1, float a2, float a3, float a4)
{
  v9 = v4[1];
  v10 = v4[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = v9;
  v4[3] = v10;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v4[1] = v9 + 1;
  if (a1 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v14 = v4[1];
    isUniquelyReferenced_nonNull_native = v14 + 4;
    if (!__OFADD__(v14, 4))
    {
      if (v4[2] < isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_33;
      }

      v4[1] = isUniquelyReferenced_nonNull_native;
      v15 = (*v4 + v14);
      goto LABEL_12;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a2 != 0.0)
  {
    goto LABEL_13;
  }

  while (1)
  {
    while (1)
    {
      a2 = 1.0;
      if (a3 == 1.0)
      {
        if (a4 == 1.0)
        {
          return ProtobufEncoder.endLengthDelimited()();
        }

        goto LABEL_24;
      }

      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v18 = v4[1];
      isUniquelyReferenced_nonNull_native = v18 + 4;
      if (!__OFADD__(v18, 4))
      {
        break;
      }

      while (1)
      {
        __break(1u);
LABEL_33:
        v15 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
LABEL_12:
        *v15 = a1;
        if (a2 == 0.0)
        {
          break;
        }

LABEL_13:
        ProtobufEncoder.encodeVarint(_:)(0x15uLL);
        v16 = v4[1];
        isUniquelyReferenced_nonNull_native = v16 + 4;
        if (!__OFADD__(v16, 4))
        {
          if (v4[2] < isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_35;
          }

          v4[1] = isUniquelyReferenced_nonNull_native;
          v17 = (*v4 + v16);
          goto LABEL_16;
        }

LABEL_31:
        __break(1u);
      }
    }

    if (v4[2] < isUniquelyReferenced_nonNull_native)
    {
      v19 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v4[1] = isUniquelyReferenced_nonNull_native;
      v19 = (*v4 + v18);
    }

    *v19 = a3;
    if (a4 == 1.0)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }

LABEL_24:
    ProtobufEncoder.encodeVarint(_:)(0x25uLL);
    v20 = v4[1];
    isUniquelyReferenced_nonNull_native = v20 + 4;
    if (!__OFADD__(v20, 4))
    {
      break;
    }

    __break(1u);
LABEL_35:
    v17 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
LABEL_16:
    *v17 = a2;
  }

  if (v4[2] < isUniquelyReferenced_nonNull_native)
  {
    v21 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v4[1] = isUniquelyReferenced_nonNull_native;
    v21 = (*v4 + v20);
  }

  *v21 = a4;
  return ProtobufEncoder.endLengthDelimited()();
}

{
  v9 = v4[1];
  v10 = v4[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = v9;
  v4[3] = v10;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  v4[1] = v9 + 1;
  if (a1 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v14 = v4[1];
    isUniquelyReferenced_nonNull_native = v14 + 4;
    if (!__OFADD__(v14, 4))
    {
      if (v4[2] < isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_32;
      }

      v4[1] = isUniquelyReferenced_nonNull_native;
      v15 = (*v4 + v14);
      goto LABEL_13;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a2 != 0.0)
  {
    goto LABEL_14;
  }

  while (a3 != 0.0)
  {
LABEL_18:
    ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
    v18 = v4[1];
    isUniquelyReferenced_nonNull_native = v18 + 4;
    if (!__OFADD__(v18, 4))
    {
      if (v4[2] < isUniquelyReferenced_nonNull_native)
      {
        v19 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v4[1] = isUniquelyReferenced_nonNull_native;
        v19 = (*v4 + v18);
      }

      *v19 = a3;
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_32:
      v15 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
LABEL_13:
      *v15 = a1;
      if (a2 == 0.0)
      {
        break;
      }

LABEL_14:
      ProtobufEncoder.encodeVarint(_:)(0x15uLL);
      v16 = v4[1];
      isUniquelyReferenced_nonNull_native = v16 + 4;
      if (!__OFADD__(v16, 4))
      {
        if (v4[2] >= isUniquelyReferenced_nonNull_native)
        {
          v4[1] = isUniquelyReferenced_nonNull_native;
          v17 = (*v4 + v16);
          goto LABEL_17;
        }

        goto LABEL_34;
      }

LABEL_30:
      __break(1u);
    }
  }

  while (a4 != 1.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x25uLL);
    v20 = v4[1];
    isUniquelyReferenced_nonNull_native = v20 + 4;
    if (!__OFADD__(v20, 4))
    {
      if (v4[2] < isUniquelyReferenced_nonNull_native)
      {
        v21 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v4[1] = isUniquelyReferenced_nonNull_native;
        v21 = (*v4 + v20);
      }

      *v21 = a4;
      return ProtobufEncoder.endLengthDelimited()();
    }

    __break(1u);
LABEL_34:
    v17 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
LABEL_17:
    *v17 = a2;
    if (a3 != 0.0)
    {
      goto LABEL_18;
    }
  }

  return ProtobufEncoder.endLengthDelimited()();
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(_OWORD *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = v1[1];
  v4 = v1[3];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  *&v4[8 * v6 + 32] = v3;
  v1[3] = v4;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  v1[1] = v3 + 1;
  v7 = a1[3];
  v10[2] = a1[2];
  v10[3] = v7;
  v10[4] = a1[4];
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  closure #1 in _ColorMatrix.encode(to:)(v10, v1);
  return ProtobufEncoder.endLengthDelimited()();
}

{
  v10 = *MEMORY[0x1E69E9840];
  v3 = v1[1];
  v4 = v1[3];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  *&v4[8 * v6 + 32] = v3;
  v1[3] = v4;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  v1[1] = v3 + 1;
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  closure #1 in CGAffineTransform.encode(to:)(v9, v1);
  return ProtobufEncoder.endLengthDelimited()();
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(double a1, double a2, double a3, double a4)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v9 = v4[1];
  v10 = v4[3];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  *&v10[8 * v12 + 32] = v9;
  v4[3] = v10;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  v4[1] = v9 + 1;
  *v14 = a1;
  *&v14[1] = a2;
  *&v14[2] = a3;
  *&v14[3] = a4;
  closure #1 in EdgeInsets.encode(to:)(v14, v4);
  return ProtobufEncoder.endLengthDelimited()();
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(Swift::UInt a1, Swift::UInt a2)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = v5;
  *(v2 + 24) = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 8) = v5 + 1;
    if (a1)
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(a1);
    }

    if (a2)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(a2);
    }

    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(unint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + 8 * v7 + 32) = v3;
  *(v1 + 24) = v4;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = HIDWORD(a1);
    *(v1 + 8) = v3 + 1;
    if (a1)
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(a1);
    }

    if (v8)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v8);
    }

    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

void specialized ProtobufEncoder.encodeMessage<A>(_:)(uint64_t a1, char *a2, int a3)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  *&v9[8 * v11 + 32] = v8;
  *(v3 + 24) = v9;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_17:
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 2) + 1, 1, a2);
    goto LABEL_8;
  }

  *(v3 + 8) = v8 + 1;
  if ((a3 & 0x10000) != 0)
  {
    specialized ProtobufEncoder.messageField<A>(_:_:)(3);
    if (v4)
    {
      return;
    }

    goto LABEL_14;
  }

  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v9 = *(v3 + 8);
  a2 = *(v3 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v13 = *(a2 + 2);
  v12 = *(a2 + 3);
  if (v13 >= v12 >> 1)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, a2);
  }

  *(a2 + 2) = v13 + 1;
  *&a2[8 * v13 + 32] = v9;
  *(v3 + 24) = a2;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    return;
  }

  *(v3 + 8) = v9 + 1;
  CodableResolvedStyledText.encode(to:)(v3, a1);
  if (!v4)
  {
    ProtobufEncoder.endLengthDelimited()();
LABEL_14:
    ProtobufEncoder.endLengthDelimited()();
  }
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v6 = v2[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = v5;
  v2[3] = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v2[1] = v5 + 1;
  if (!a1)
  {
    goto LABEL_11;
  }

  ProtobufEncoder.encodeVarint(_:)(9uLL);
  v10 = v2[1];
  isUniquelyReferenced_nonNull_native = v10 + 8;
  if (__OFADD__(v10, 8))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2[2] < isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_20;
  }

  v2[1] = isUniquelyReferenced_nonNull_native;
  for (i = (*v2 + v10); ; i = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native))
  {
    *i = a1;
LABEL_11:
    if (!a2)
    {
      break;
    }

    ProtobufEncoder.encodeVarint(_:)(0x11uLL);
    v12 = v2[1];
    isUniquelyReferenced_nonNull_native = v12 + 8;
    if (!__OFADD__(v12, 8))
    {
      if (v2[2] < isUniquelyReferenced_nonNull_native)
      {
        v13 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v2[1] = isUniquelyReferenced_nonNull_native;
        v13 = (*v2 + v12);
      }

      *v13 = a2;
      return ProtobufEncoder.endLengthDelimited()();
    }

LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return ProtobufEncoder.endLengthDelimited()();
}