id sub_9CB158(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();
  [v7 *a3];

  return [v7 setItemType:a4];
}

uint64_t JSIdentifierSet.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50[0] = a1;
  v50[1] = a2;
  sub_F46A0(a3, v51);
  if (v51[3])
  {
    sub_F46A0(v51, v49);

    if (!swift_dynamicCast())
    {
LABEL_122:
      __swift_destroy_boxed_opaque_existential_0(v49);
      return sub_12E1C(v50, &unk_E27200);
    }

    v6 = v48;
    if (a1 == 0xD000000000000014 && 0x8000000000B7EC10 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      v7 = HIBYTE(v48) & 0xF;
      v8 = v47 & 0xFFFFFFFFFFFFLL;
      if ((v48 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(v48) & 0xF;
      }

      else
      {
        v9 = v47 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        if ((v48 & 0x1000000000000000) != 0)
        {
          v12 = sub_44F40C(v47, v48, 10);
          v34 = v42;
LABEL_75:

          if ((v34 & 1) != 0 || !v12)
          {
            goto LABEL_79;
          }

          v22 = v3 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
          swift_beginAccess();
          *v22 = v12;
          goto LABEL_78;
        }

        if ((v48 & 0x2000000000000000) != 0)
        {
          v46[0] = v47;
          v46[1] = v48 & 0xFFFFFFFFFFFFFFLL;
          if (v47 == 43)
          {
            if (v7)
            {
              if (--v7)
              {
                v12 = 0;
                v26 = v46 + 1;
                while (1)
                {
                  v27 = *v26 - 48;
                  if (v27 > 9)
                  {
                    break;
                  }

                  v28 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    break;
                  }

                  v12 = v28 + v27;
                  if (__OFADD__(v28, v27))
                  {
                    break;
                  }

                  ++v26;
                  if (!--v7)
                  {
                    goto LABEL_74;
                  }
                }
              }

              goto LABEL_73;
            }

            goto LABEL_120;
          }

          if (v47 != 45)
          {
            if (v7)
            {
              v12 = 0;
              v31 = v46;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  break;
                }

                v33 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  break;
                }

                v12 = v33 + v32;
                if (__OFADD__(v33, v32))
                {
                  break;
                }

                ++v31;
                if (!--v7)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_73;
          }

          if (v7)
          {
            if (--v7)
            {
              v12 = 0;
              v16 = v46 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                v18 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  break;
                }

                v12 = v18 - v17;
                if (__OFSUB__(v18, v17))
                {
                  break;
                }

                ++v16;
                if (!--v7)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_73;
          }
        }

        else
        {
          if ((v47 & 0x1000000000000000) != 0)
          {
            v10 = ((v48 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v10 = sub_ABAE60();
          }

          v11 = *v10;
          if (v11 == 43)
          {
            if (v8 >= 1)
            {
              v7 = v8 - 1;
              if (v8 != 1)
              {
                v12 = 0;
                if (v10)
                {
                  v23 = v10 + 1;
                  while (1)
                  {
                    v24 = *v23 - 48;
                    if (v24 > 9)
                    {
                      goto LABEL_73;
                    }

                    v25 = 10 * v12;
                    if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                    {
                      goto LABEL_73;
                    }

                    v12 = v25 + v24;
                    if (__OFADD__(v25, v24))
                    {
                      goto LABEL_73;
                    }

                    ++v23;
                    if (!--v7)
                    {
                      goto LABEL_74;
                    }
                  }
                }

                goto LABEL_65;
              }

              goto LABEL_73;
            }

            goto LABEL_119;
          }

          if (v11 != 45)
          {
            if (v8)
            {
              v12 = 0;
              if (v10)
              {
                while (1)
                {
                  v29 = *v10 - 48;
                  if (v29 > 9)
                  {
                    goto LABEL_73;
                  }

                  v30 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    goto LABEL_73;
                  }

                  v12 = v30 + v29;
                  if (__OFADD__(v30, v29))
                  {
                    goto LABEL_73;
                  }

                  ++v10;
                  if (!--v8)
                  {
                    goto LABEL_65;
                  }
                }
              }

              goto LABEL_65;
            }

LABEL_73:
            v12 = 0;
            LOBYTE(v7) = 1;
            goto LABEL_74;
          }

          if (v8 >= 1)
          {
            v7 = v8 - 1;
            if (v8 != 1)
            {
              v12 = 0;
              if (v10)
              {
                v13 = v10 + 1;
                while (1)
                {
                  v14 = *v13 - 48;
                  if (v14 > 9)
                  {
                    goto LABEL_73;
                  }

                  v15 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    goto LABEL_73;
                  }

                  v12 = v15 - v14;
                  if (__OFSUB__(v15, v14))
                  {
                    goto LABEL_73;
                  }

                  ++v13;
                  if (!--v7)
                  {
                    goto LABEL_74;
                  }
                }
              }

LABEL_65:
              LOBYTE(v7) = 0;
LABEL_74:
              v34 = v7;
              goto LABEL_75;
            }

            goto LABEL_73;
          }

          __break(1u);
        }

        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:

        goto LABEL_122;
      }

LABEL_88:

      goto LABEL_79;
    }

    if (a1 == 0x6F6C4365726F7473 && a2 == 0xEC00000044496475 || (sub_ABB3C0() & 1) != 0)
    {
      v19 = sub_9C3A5C(v47, v48);
      if (v20)
      {
        goto LABEL_79;
      }

      v21 = v19;
      if (!v19)
      {
        goto LABEL_79;
      }

      v22 = v3 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID;
      swift_beginAccess();
      *v22 = v21;
LABEL_78:
      *(v22 + 8) = 0;
LABEL_79:
      __swift_destroy_boxed_opaque_existential_0(v49);
      sub_12E1C(v51, &unk_DE8E40);
    }

    if (a1 == 0xD000000000000011 && 0x8000000000B7EC30 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      v36 = HIBYTE(v48) & 0xF;
      if ((v48 & 0x2000000000000000) == 0)
      {
        v36 = v47 & 0xFFFFFFFFFFFFLL;
      }

      if (!v36)
      {
        goto LABEL_88;
      }

      v37 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID;
    }

    else if (a1 == 0xD000000000000017 && 0x8000000000B7EC50 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      v39 = HIBYTE(v48) & 0xF;
      if ((v48 & 0x2000000000000000) == 0)
      {
        v39 = v47 & 0xFFFFFFFFFFFFLL;
      }

      if (!v39)
      {
        goto LABEL_88;
      }

      v37 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID;
    }

    else if (a1 == 0x61644165726F7473 && a2 == 0xEB0000000044496DLL || (sub_ABB3C0() & 1) != 0)
    {
      v40 = HIBYTE(v48) & 0xF;
      if ((v48 & 0x2000000000000000) == 0)
      {
        v40 = v47 & 0xFFFFFFFFFFFFLL;
      }

      if (!v40)
      {
        goto LABEL_88;
      }

      v37 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID;
    }

    else
    {
      if ((a1 != 0x72506C6169636F73 || a2 != 0xEF4449656C69666FLL) && (sub_ABB3C0() & 1) == 0)
      {
        if (a1 == 0x4B746E65746E6F63 && a2 == 0xEB00000000646E69 || (sub_ABB3C0() & 1) != 0)
        {
          v43 = _s11MusicJSCore15JSIdentifierSetC11ContentKindO8rawValueAESgSS_tcfC_0(v47, v48);
          if (v43 != 15)
          {
            v44 = v43;
            v45 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
            swift_beginAccess();
            *(v3 + v45) = v44;
          }

          goto LABEL_79;
        }

        goto LABEL_121;
      }

      v41 = HIBYTE(v48) & 0xF;
      if ((v48 & 0x2000000000000000) == 0)
      {
        v41 = v47 & 0xFFFFFFFFFFFFLL;
      }

      if (!v41)
      {
        goto LABEL_88;
      }

      v37 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_socialProfileID;
    }

    v38 = (v3 + v37);
    swift_beginAccess();
    *v38 = v47;
    v38[1] = v6;
    goto LABEL_88;
  }

  return sub_12E1C(v50, &unk_E27200);
}

id JSIdentifierSet.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_socialProfileID];
  *v9 = 0;
  v9[1] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind] = 15;
  return JSObject.init(type:)(a1);
}

id JSIdentifierSet.init(type:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_socialProfileID);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind) = 15;
  return JSObject.init(type:)(a1);
}

uint64_t sub_9CB9D4()
{
}

id JSIdentifierSet.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSIdentifierSet();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unsigned __int8 *sub_9CBB18(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_AB9580();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_44F998();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_ABAE60();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
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

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t _s11MusicJSCore15JSIdentifierSetC11ContentKindO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4E958;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

uint64_t block_copy_helper_258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_9CC394()
{
  result = qword_E25120;
  if (!qword_E25120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25120);
  }

  return result;
}

unint64_t sub_9CC3EC()
{
  result = qword_E25128;
  if (!qword_E25128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25128);
  }

  return result;
}

unint64_t sub_9CC444()
{
  result = qword_E25130;
  if (!qword_E25130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25130);
  }

  return result;
}

unint64_t sub_9CC49C()
{
  result = qword_E25138;
  if (!qword_E25138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25138);
  }

  return result;
}

unint64_t sub_9CC4F4()
{
  result = qword_E25140;
  if (!qword_E25140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25140);
  }

  return result;
}

uint64_t keypath_getTm_0@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

uint64_t keypath_get_198Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t sub_9CC730@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_9CC788(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_9CC7FC()
{

  return swift_deallocObject();
}

uint64_t sub_9CC898()
{

  return swift_deallocObject();
}

void sub_9CC944(void *a1, SEL *a2)
{
  v4 = sub_AB9260();
  [a1 *a2];
}

uint64_t JSViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB9300();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = a1;
  v24[1] = a2;
  sub_F46A0(a3, v25);
  if (v25[3])
  {
    sub_F46A0(v25, v23);

    if (swift_dynamicCast())
    {
      v12 = v22[4];
      v11 = v22[5];
      if (a1 == 0xD000000000000017 && 0x8000000000B4A6E0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName;
LABEL_7:
        v14 = (v3 + v13);
        swift_beginAccess();
        *v14 = v12;
        v14[1] = v11;

LABEL_8:
        __swift_destroy_boxed_opaque_existential_0(v23);
        sub_12E1C(v25, &unk_DE8E40);
      }

      if (a1 == 0xD00000000000001CLL && 0x8000000000B7ED10 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        sub_AB92F0();
        v16 = sub_AB92B0();
        v18 = v17;

        (*(v8 + 8))(v10, v7);
        v19 = (v3 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData);
        swift_beginAccess();
        v20 = *v19;
        v21 = v19[1];
        *v19 = v16;
        v19[1] = v18;
        sub_466A4(v20, v21);
        goto LABEL_8;
      }

      if (a1 == 0x6169726F74696465 && a2 == 0xEB0000000044496CLL || (sub_ABB3C0() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID;
        goto LABEL_7;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
  }

  return sub_12E1C(v24, &unk_E27200);
}

id JSViewModel.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v3 = 0;
  v3[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t JSViewModel.playActivityFeatureName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSViewModel.playActivityRecommendationData.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData;
  swift_beginAccess();
  v2 = *v1;
  sub_9007C(*v1, *(v1 + 8));
  return v2;
}

uint64_t JSViewModel.editorialID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_9CD118(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_9CD184@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_9007C(v4, v5);
}

uint64_t sub_9CD1DC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_9007C(v2, v3);
  return sub_466A4(v5, v6);
}

uint64_t sub_9CD258(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

id JSViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v5 = 0;
  *(v5 + 1) = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_9CD330()
{

  sub_466A4(*(v0 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData), *(v0 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData + 8));
}

id JSViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9CD4F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_9CD558@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

void *JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(void *a1, uint64_t a2, char a3, void (*a4)(char *), uint64_t a5)
{
  objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v10 = a1;
  v11 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v10);
  if (v11)
  {
    v12 = v11;
    v13 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v12, a2, a3 & 1, a4, a5);
    v14 = v13;

    if (v13)
    {
    }
  }

  else
  {

    return 0;
  }

  return v13;
}

uint64_t JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(void *a1, uint64_t a2, char a3, void (*a4)(char *), uint64_t a5)
{
  v6 = v5;
  v12 = [a1 itemKind];
  if (!v12)
  {

    return 0;
  }

  v13 = v12;
  v14 = sub_AB92A0();
  v16 = v15;

  if (sub_AB92A0() == v14 && v17 == v16)
  {
    v20 = 2;
LABEL_20:

    goto LABEL_21;
  }

  v19 = sub_ABB3C0();

  if (v19)
  {
    v20 = 2;
LABEL_21:

    v45[0] = _swiftEmptyArrayStorage;
    memset(&v45[1], 0, 24);
    v45[4] = 1;
    v46 = 0;
    objc_allocWithZone(type metadata accessor for JSContainerDetail());
    v26 = a1;
    v27 = JSContainerDetail.init(type:kind:containerStoreItemMetadata:mediaAPIDictionary:)(v45, v20, a1, a2);
    v28 = objc_allocWithZone(v6);
    v21 = JSContainerDetailComponentController.init(containerDetail:isUsingMediaAPI:headerConfigurationHandler:)(v27, a3 & 1, a4, a5);

    return v21;
  }

  if (sub_AB92A0() == v14 && v22 == v16)
  {
    goto LABEL_19;
  }

  v24 = sub_ABB3C0();

  if (v24)
  {
LABEL_16:
    v20 = 3;
    goto LABEL_21;
  }

  if (sub_AB92A0() == v14 && v25 == v16)
  {
    goto LABEL_19;
  }

  v30 = sub_ABB3C0();

  if (v30)
  {
    goto LABEL_16;
  }

  if (sub_AB92A0() == v14 && v31 == v16)
  {
    goto LABEL_19;
  }

  v32 = sub_ABB3C0();

  if (v32)
  {
    goto LABEL_16;
  }

  if (sub_AB92A0() == v14 && v33 == v16)
  {
LABEL_19:
    v20 = 3;
    goto LABEL_20;
  }

  v34 = sub_ABB3C0();

  if (v34)
  {
    goto LABEL_16;
  }

  if (sub_AB92A0() == v14 && v35 == v16)
  {
    v20 = 0;
    goto LABEL_20;
  }

  v44 = sub_ABB3C0();

  if (v44)
  {
    v20 = 0;
    goto LABEL_21;
  }

  if (qword_E24028 != -1)
  {
    swift_once();
  }

  v36 = sub_AB4BC0();
  __swift_project_value_buffer(v36, qword_E758A8);

  v37 = sub_AB4BA0();
  v38 = sub_AB9F30();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v39 = 136446466;
    v40 = sub_9CDB08();
    v42 = sub_425E68(v40, v41, v45);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2082;
    v43 = sub_425E68(v14, v16, v45);

    *(v39 + 14) = v43;
    _os_log_impl(&dword_0, v37, v38, "%{public}s initialized with unsupported itemKind: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

uint64_t JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(char a1, void *a2, uint64_t a3, char a4, void (*a5)(char *), uint64_t a6)
{
  v7 = v6;
  v19[0] = _swiftEmptyArrayStorage;
  memset(&v19[1], 0, 24);
  v19[4] = 1;
  v20 = 0;
  objc_allocWithZone(type metadata accessor for JSContainerDetail());
  v14 = a2;
  v15 = JSContainerDetail.init(type:kind:containerStoreItemMetadata:mediaAPIDictionary:)(v19, a1, a2, a3);
  v16 = objc_allocWithZone(v7);
  v17 = JSContainerDetailComponentController.init(containerDetail:isUsingMediaAPI:headerConfigurationHandler:)(v15, a4, a5, a6);

  return v17;
}

uint64_t JSContainerDetailComponentController.init(containerDetail:isUsingMediaAPI:headerConfigurationHandler:)(void *a1, char a2, void (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = 0x65646F4D77656976;
  *(inited + 40) = 0xE90000000000006CLL;
  *(inited + 48) = a1;
  v11 = a1;
  v12 = sub_99F2D8(inited);
  swift_setDeallocating();
  sub_9CDF00(inited + 32);
  v13 = v11[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind];
  v14 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
  swift_beginAccess();
  v15 = *&v11[v14];
  if (v15 && (v16 = [v15 name]) != 0)
  {
    v17 = v16;
    v18 = sub_AB92A0();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = v13 & 0xFE;
  v22 = "playlistDetailController";
  if (a2)
  {
    v22 = "albumDetailController";
  }

  v23 = 0xD00000000000001DLL;
  if ((a2 & 1) == 0)
  {
    v23 = 0xD000000000000015;
  }

  v24 = v21 == 2;
  if (v21 == 2)
  {
    v25 = v22;
  }

  else
  {
    v25 = "e11JSViewModel";
  }

  if (v24)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0xD000000000000018;
  }

  v27 = v25 | 0x8000000000000000;
  *(v5 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_AF4EC0;
  *(v28 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25290);
  *(v28 + 32) = v12;
  v31[0] = v28;
  v31[1] = 0;
  v31[2] = 0;
  v31[3] = v26;
  v31[4] = v27;
  v32 = 0;
  v29 = sub_A8E668(v31, v5, v18, v20, a3, a4);

  return v29;
}

uint64_t sub_9CDF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for JSContainerDetailComponentController()
{
  result = qword_E252C0;
  if (!qword_E252C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *JSMetricsController.shared.unsafeMutableAddressor()
{
  if (qword_E23F80 != -1)
  {
    swift_once();
  }

  return &static JSMetricsController.shared;
}

uint64_t Metrics.Event.init(action:source:targetModel:location:actionDetails:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Metrics.Event(0);
  v13 = v12[6];
  v14 = v12[7];
  v15 = v12[8];
  result = sub_9D079C(a1, a6);
  *(a6 + v12[5]) = a2;
  *(a6 + v13) = a3;
  *(a6 + v14) = a4;
  *(a6 + v15) = a5;
  return result;
}

uint64_t Metrics.Event.Action.stringValue.getter()
{
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9D0820(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x62694C6F54646461;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v8 = sub_AB31C0();
      (*(*(v8 - 8) + 8))(v2, v8);
      return 0xD000000000000014;
    case 2:
      v6 = 0x4C6275726373;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7279000000000000;
    case 3:
      sub_9D0884(v2);
      return 0xD000000000000011;
    case 4:
      sub_9D0884(v2);
      return 0x79726F7473;
    case 5:
      sub_9D0884(v2);
      return 0x614C64726F636572;
    case 6:
    case 36:
      return 0xD00000000000001BLL;
    case 7:
      return result;
    case 8:
      return 0x616C506F54646461;
    case 9:
      return 0x6146747369747261;
    case 10:
      return 0xD000000000000011;
    case 11:
    case 12:
      return 0x79616C506F747561;
    case 13:
      return 0x616C506E69676562;
    case 14:
      return 0x64456C65636E6163;
    case 15:
      return 0x726F62616C6C6F63;
    case 16:
      return 0x7453657461657263;
    case 17:
      return 0xD00000000000001CLL;
    case 18:
      return 0xD00000000000001ELL;
    case 19:
      return 0xD000000000000022;
    case 20:
    case 38:
      return 0xD000000000000012;
    case 21:
      return 0x64616F6C6E776F64;
    case 22:
      return 1953064037;
    case 23:
      return 0x657469726F766166;
    case 24:
      return 0x69726F7661666E75;
    case 25:
      return 1702125928;
    case 26:
      v9 = 1701079400;
      goto LABEL_55;
    case 27:
      v7 = 1701079400;
      goto LABEL_60;
    case 28:
      return 0x6C6C4179616C70;
    case 29:
      return 0x6574614C79616C70;
    case 30:
      return 0x7478654E79616C70;
    case 31:
      return 0xD000000000000010;
    case 32:
      v5 = 2036427888;
      goto LABEL_43;
    case 33:
      return 0x77656976657270;
    case 34:
      return 0x7463616572;
    case 35:
      return 0x6F4465766F6D6572;
    case 37:
      return 0xD000000000000011;
    case 39:
      return 0x6F4374726F706572;
    case 40:
      return 0x7469644565766173;
    case 41:
      return 0x6572616873;
    case 42:
      return 0x616C506572616873;
    case 43:
      v6 = 0x4C6572616873;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7279000000000000;
    case 44:
      return 0x74736948776F6873;
    case 45:
      v9 = 2003789939;
LABEL_55:
      result = v9 | 0x6972794C00000000;
      break;
    case 46:
      v7 = 2003789939;
LABEL_60:
      result = v7 | 0x654E705500000000;
      break;
    case 47:
      result = 0x41656C6666756873;
      break;
    case 48:
      result = 0xD000000000000015;
      break;
    case 49:
      result = 1735289203;
      break;
    case 50:
      v5 = 1735289203;
LABEL_43:
      result = v5 | 0x6361725400000000;
      break;
    case 51:
      result = 0x6F466C6169636F73;
      break;
    case 52:
      result = 0x6E776F44706F7473;
      break;
    case 53:
      result = 0x75626C4177656976;
      break;
    case 54:
      result = 0x6974724177656976;
      break;
    case 55:
      result = 0x6465724377656976;
      break;
    case 56:
      result = 0x65746F4E77656976;
      break;
    case 57:
      result = 0xD000000000000017;
      break;
    case 58:
      result = 0xD000000000000016;
      break;
    default:
      result = 1801675106;
      break;
  }

  return result;
}

uint64_t Metrics.Event.Action.actionType.getter()
{
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9D0820(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 0x1E)
  {
    result = 1;
    if (((1 << EnumCaseMultiPayload) & 0x1E0000) != 0)
    {
      return 3;
    }

    if (((1 << EnumCaseMultiPayload) & 0x60002000) != 0)
    {
      return result;
    }

    if (EnumCaseMultiPayload == 5)
    {
      sub_9D0884(v2);
      return 2;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = sub_AB31C0();
    (*(*(v5 - 8) + 8))(v2, v5);
    return 2;
  }

  else
  {
    sub_9D0884(v2);
    return 0;
  }
}

uint64_t Metrics.Event.Action.targetIdentifier.getter()
{
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v2 = v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9D0820(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if ((EnumCaseMultiPayload - 17) < 4)
    {
      return 0x65736F6C63;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v8[1] = *v2;
        return sub_ABB330();
      }

      goto LABEL_14;
    }

    v5 = *v2;
    v6 = [v5 identifiers];
    v7 = MPIdentifierSet.bestStoreIdentifier.getter();

    return v7;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
      {
        return *v2;
      }

LABEL_14:
      sub_9D0884(v2);
      return 0;
    }

    if (*v2)
    {
      return 0;
    }

    else
    {
      return 0x686372616553;
    }
  }
}

unint64_t Metrics.Event.Source.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E6F74747562;
  v2 = 0x6B63617274;
  v3 = 0x7475426B63617274;
  if (a1 != 3)
  {
    v3 = 0xD000000000000015;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000010;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_9CEC50()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9CED44()
{
  sub_AB93F0();
}

Swift::Int sub_9CEE24()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9CEF14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore7MetricsV5EventV6SourceO8rawValueAGSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_9CEF44@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F74747562;
  v5 = 0xE500000000000000;
  v6 = 0x6B63617274;
  v7 = 0xEB000000006E6F74;
  v8 = 0x7475426B63617274;
  result = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x8000000000B6B900;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000000B6B920;
  }

  if (*v1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
  return result;
}

BOOL Metrics.Event.Destination.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4F080;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  return v4 != 0;
}

Swift::Int sub_9CF03C()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_9CF0A0()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_9CF0EC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4F0B8;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t Metrics.Event.source.setter(char a1)
{
  result = type metadata accessor for Metrics.Event(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

void *Metrics.Event.targetModel.getter()
{
  v1 = *(v0 + *(type metadata accessor for Metrics.Event(0) + 24));
  v2 = v1;
  return v1;
}

void Metrics.Event.targetModel.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Metrics.Event(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t Metrics.Event.location.getter()
{
  type metadata accessor for Metrics.Event(0);
}

uint64_t Metrics.Event.location.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Metrics.Event(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Metrics.Event.actionDetails.getter()
{
  type metadata accessor for Metrics.Event(0);
}

uint64_t Metrics.Event.actionDetails.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Metrics.Event(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

unint64_t Metrics.Event.metricsDictionary.getter()
{
  v1 = v0;
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = (&v29 - v8);
  v10 = *(v0 + *(type metadata accessor for Metrics.Event(0) + 24));
  if (v10)
  {
    v11 = v10;
    v12 = sub_97E70(_swiftEmptyArrayStorage);
    v13 = MPModelObject.metricsDictionary.getter();
    if (v13)
    {
      v14 = v13;
      *&v31 = 0x746567726174;
      *(&v31 + 1) = 0xE600000000000000;
      sub_ABAD10();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
      *&v31 = v14;
      sub_9ACFC(&v31, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v12;
      sub_913C0(v30, v33, isUniquelyReferenced_nonNull_native);

      sub_8085C(v33);
      v12 = v29;
    }

    else
    {
    }
  }

  else
  {
    v12 = 0;
  }

  sub_9D0820(v1, v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_9D0884(v9);
LABEL_10:
    v18 = Metrics.Event.Action.targetIdentifier.getter();
    if (!v19)
    {
      goto LABEL_17;
    }

    v20 = v18;
    v21 = v19;
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v12)
  {
    v16 = *v9;
    *&v31 = 0xD000000000000014;
    *(&v31 + 1) = 0x8000000000B7EE80;
    sub_ABAD10();
    v32 = &type metadata for Int;
    *&v31 = v16;
    sub_9ACFC(&v31, v30);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v12;
    sub_913C0(v30, v33, v17);
    sub_8085C(v33);
    v12 = v29;
    goto LABEL_10;
  }

  v22 = Metrics.Event.Action.targetIdentifier.getter();
  if (v23)
  {
    v20 = v22;
    v21 = v23;
LABEL_15:
    v12 = sub_97E70(_swiftEmptyArrayStorage);
LABEL_16:
    *&v31 = 0x6449746567726174;
    *(&v31 + 1) = 0xE800000000000000;
    sub_ABAD10();
    v32 = &type metadata for String;
    *&v31 = v20;
    *(&v31 + 1) = v21;
    sub_9ACFC(&v31, v30);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v12;
    sub_913C0(v30, v33, v24);
    sub_8085C(v33);
    v12 = v29;
    goto LABEL_17;
  }

  v12 = 0;
LABEL_17:
  sub_9D0820(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v7, v2);
    if (!v12)
    {
      v12 = sub_97E70(_swiftEmptyArrayStorage);
    }

    *&v31 = 0x72556E6F69746361;
    *(&v31 + 1) = 0xE90000000000006CLL;
    sub_ABAD10();
    v25 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
    v32 = &type metadata for String;
    *&v31 = v25;
    *(&v31 + 1) = v26;
    sub_9ACFC(&v31, v30);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v12;
    sub_913C0(v30, v33, v27);
    sub_8085C(v33);
    (*(v3 + 8))(v5, v2);
    return v29;
  }

  else
  {
    sub_9D0884(v7);
  }

  return v12;
}

_OWORD *Metrics.NativeEvent.init(targetId:targetType:actionType:actionDetails:contentDictionary:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = sub_9ACFC(a1, a6);
  *(a6 + 32) = a2;
  *(a6 + 33) = a3;
  *(a6 + 34) = a4;
  *(a6 + 40) = a5;
  return result;
}

unint64_t sub_9CF918()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8600;
  *(inited + 32) = 0x6449746567726174;
  *(inited + 40) = 0xE800000000000000;
  sub_808B0(v1, inited + 48);
  *(inited + 80) = 0x7954746567726174;
  *(inited + 88) = 0xEA00000000006570;
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      v3 = 0x8000000000B69980;
      v4 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xE900000000000070;
      v4 = 0x6954656C62627562;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6E6F74747562;
  }

  *(inited + 96) = v4;
  *(inited + 104) = v3;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x79546E6F69746361;
  *(inited + 136) = 0xEA00000000006570;
  v5 = *(v1 + 33);
  if (v5 <= 1)
  {
    if (*(v1 + 33))
    {
      v6 = 0xE400000000000000;
      v7 = 2036427888;
    }

    else
    {
      v6 = 0xE600000000000000;
      v7 = 0x7463656C6573;
    }
  }

  else if (v5 == 2)
  {
    v6 = 0xE800000000000000;
    v7 = 0x657461676976616ELL;
  }

  else if (v5 == 3)
  {
    v6 = 0xE700000000000000;
    v7 = 0x7373696D736964;
  }

  else
  {
    v6 = 0xEB00000000657461;
    v7 = 0x726F62616C6C6F63;
  }

  *(inited + 144) = v7;
  *(inited + 152) = v6;
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 176), "actionDetails");
  *(inited + 190) = -4864;
  v8 = *(v1 + 34);
  v9 = 0x8000000000B7CA00;
  if ((v8 & 1) == 0)
  {
    v9 = 0xEC00000079726172;
  }

  v10 = 0x62694C6F54646461;
  if (v8)
  {
    v10 = 0xD000000000000011;
  }

  v11 = v8 == 2;
  if (v8 == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  if (v11)
  {
    v9 = 0xE000000000000000;
  }

  *(inited + 192) = v12;
  *(inited + 200) = v9;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000000B7F080;
  v13 = *(v1 + 40);
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = sub_97E70(_swiftEmptyArrayStorage);
  }

  *(inited + 240) = v14;

  v15 = sub_97420(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
  swift_arrayDestroy();
  return v15;
}

uint64_t Metrics.TargetType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E6F74747562;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6954656C62627562;
}

uint64_t Metrics.ActionType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7463656C6573;
  v2 = 0x657461676976616ELL;
  v3 = 0x7373696D736964;
  if (a1 != 3)
  {
    v3 = 0x726F62616C6C6F63;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 2036427888;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t Metrics.ActionDetails.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x62694C6F54646461;
  }
}

uint64_t sub_9CFD24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x8000000000B69980;
  if (v2 == 1)
  {
    v5 = 0x8000000000B69980;
  }

  else
  {
    v3 = 0x6954656C62627562;
    v5 = 0xE900000000000070;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E6F74747562;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x6954656C62627562;
    v4 = 0xE900000000000070;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F74747562;
  }

  if (*a2)
  {
    v10 = v4;
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
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

Swift::Int sub_9CFE24()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9CFECC()
{
  sub_AB93F0();
}

Swift::Int sub_9CFF60()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9D0004@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore7MetricsV10TargetTypeO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_9D0034(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x8000000000B69980;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x6954656C62627562;
    v4 = 0xE900000000000070;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F74747562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_9D00A8()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9D0188()
{
  sub_AB93F0();
}

Swift::Int sub_9D0254()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9D0330@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore7MetricsV10ActionTypeO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_9D0360(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x7463656C6573;
  v5 = 0xE800000000000000;
  v6 = 0x657461676976616ELL;
  v7 = 0xE700000000000000;
  v8 = 0x7373696D736964;
  if (v2 != 3)
  {
    v8 = 0x726F62616C6C6F63;
    v7 = 0xEB00000000657461;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 2036427888;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

MusicJSCore::Metrics::ActionDetails_optional __swiftcall Metrics.ActionDetails.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_D4F1F0;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_Metrics_ActionDetails_trackAddToLibrary;
  }

  else
  {
    v4.value = MusicJSCore_Metrics_ActionDetails_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_9D0450(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x62694C6F54646461;
  }

  if (v2)
  {
    v4 = 0xEC00000079726172;
  }

  else
  {
    v4 = 0x8000000000B7CA00;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x62694C6F54646461;
  }

  if (*a2)
  {
    v6 = 0x8000000000B7CA00;
  }

  else
  {
    v6 = 0xEC00000079726172;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_9D0504()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9D0594()
{
  sub_AB93F0();
}

Swift::Int sub_9D0610()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9D069C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4F1F0;
  v8._object = v3;
  v5 = sub_ABB140(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_9D06FC(unint64_t *a1@<X8>)
{
  v2 = 0x8000000000B7CA00;
  v3 = 0x62694C6F54646461;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEC00000079726172;
  }

  *a1 = v3;
  a1[1] = v2;
}

char *sub_9D0748()
{
  v0 = objc_allocWithZone(type metadata accessor for JSMetricsController());
  result = sub_9D093C();
  static JSMetricsController.shared = result;
  return result;
}

uint64_t sub_9D079C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metrics.Event.Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9D0820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metrics.Event.Action(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9D0884(uint64_t a1)
{
  v2 = type metadata accessor for Metrics.Event.Action(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static JSMetricsController.shared.getter()
{
  if (qword_E23F80 != -1)
  {
    swift_once();
  }

  v1 = static JSMetricsController.shared;

  return v1;
}

char *sub_9D093C()
{
  *(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_playStartNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_playEndNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_isHostingSharePlayTogetherSession) = 0;
  v1 = [objc_allocWithZone(CARSessionStatus) init];
  *(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carSessionStatus) = v1;
  [v1 waitForSessionInitialization];
  v14[0] = _swiftEmptyArrayStorage;
  v14[1] = 1;
  memset(&v14[2], 0, 24);
  v15 = 0;
  v2 = JSObject.init(type:)(v14);
  v3 = MPCPlayActivityUtilitiesPlayStartNotification;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v5 = v2;
  *&v5[OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_playStartNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v3, 0, 1, 1, sub_9D38DC, v4);

  v6 = MPCPlayActivityUtilitiesPlayEndNotification;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v5[OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_playEndNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v6, 0, 1, 1, sub_9D38E4, v7);

  v8 = *&v5[OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carSessionStatus];
  [v8 addSessionObserver:v5];

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v9 = static JSBridge.shared;
  sub_13C80(0, &qword_DE8ED0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0xD000000000000011;
  *(v10 + 24) = 0x8000000000B7F0C0;
  *(v10 + 32) = v5;
  *(v10 + 40) = v9;
  *(v10 + 48) = 1;
  v11 = v5;
  v12 = v9;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3204, v10);

  return v11;
}

void sub_9D0C20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carSessionStatus);

    v3 = [v2 currentSession];
    if (v3)
    {

      if (qword_E23F80 != -1)
      {
        swift_once();
      }

      if ((*(static JSMetricsController.shared + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) & 1) == 0)
      {
        *(static JSMetricsController.shared + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) = 1;
      }
    }
  }
}

void sub_9D0CFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_9D0D58();
  }
}

void sub_9D0D58()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_AB92A0();
  v3 = sub_AB92A0();
  v4 = sub_AB92A0();
  v6 = v5;
  isa = sub_AB92A0();
  v8 = sub_AB2BC0();
  if (!v8)
  {

    return;
  }

  v9 = v8;
  sub_ABAD10();
  if (!*(v9 + 16) || (v10 = sub_2EC004(v38), (v11 & 1) == 0))
  {

LABEL_13:

    sub_8085C(v38);
    return;
  }

  sub_808B0(*(v9 + 56) + 32 * v10, v39);
  sub_8085C(v38);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v12 = v2;
  sub_ABAD10();
  if (!*(v9 + 16) || (v13 = sub_2EC004(v38), (v14 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_808B0(*(v9 + 56) + 32 * v13, v39);
  sub_8085C(v38);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v15 = v3;
  sub_ABAD10();
  if (!*(v9 + 16) || (v16 = sub_2EC004(v38), (v17 & 1) == 0))
  {
    sub_8085C(v38);
    goto LABEL_21;
  }

  sub_808B0(*(v9 + 56) + 32 * v16, v39);
  sub_8085C(v38);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v18 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_22;
  }

  v18 = v4;
  v19 = v6;
LABEL_22:
  sub_ABAD10();
  if (*(v9 + 16) && (v20 = sub_2EC004(v38), (v21 & 1) != 0))
  {
    sub_808B0(*(v9 + 56) + 32 * v20, v39);
    sub_8085C(v38);

    v22 = sub_13C80(0, &qword_DF1300);
    if (swift_dynamicCast())
    {
      goto LABEL_28;
    }
  }

  else
  {

    sub_8085C(v38);
  }

  v22 = sub_13C80(0, &qword_DF1300);
  isa = sub_ABA770(0).super.super.isa;
LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6D69547472617473;
  *(inited + 16) = xmmword_AF85D0;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v12;
  *(inited + 72) = &type metadata for Double;
  *(inited + 80) = 0x656D6954646E65;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v15;
  *(inited + 120) = &type metadata for Double;
  *(inited + 128) = 0x6553646572616873;
  *(inited + 136) = 0xEF64496E6F697373;
  *(inited + 144) = v18;
  *(inited + 152) = v19;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD00000000000001DLL;
  *(inited + 184) = 0x8000000000B7F0E0;
  sub_13C80(0, &qword_DF1300);
  *(inited + 216) = v22;
  *(inited + 192) = isa;
  v24 = isa;
  v25 = sub_97420(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
  swift_arrayDestroy();
  if (*(v1 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) == 1)
  {
    v26 = sub_3E8814(v25);

    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v27 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_AF85F0;
    *(v28 + 56) = ObjectType;
    *(v28 + 32) = v1;
    *(v28 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
    *(v28 + 64) = v26;
    sub_13C80(0, &qword_DE8ED0);
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = _swiftEmptyArrayStorage;
    *(v29 + 32) = 0xD00000000000001FLL;
    *(v29 + 40) = 0x8000000000B7EF20;
    *(v29 + 48) = v1;
    *(v29 + 56) = v27;
    *(v29 + 64) = 0;
    v30 = v1;
    v31 = v27;
LABEL_36:
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v29);

    return;
  }

  if (*(v1 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_isHostingSharePlayTogetherSession) == 1)
  {
    v32 = sub_3E8814(v25);

    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v33 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_AF85F0;
    *(v34 + 56) = ObjectType;
    *(v34 + 32) = v1;
    *(v34 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
    *(v34 + 64) = v32;
    sub_13C80(0, &qword_DE8ED0);
    v29 = swift_allocObject();
    *(v29 + 16) = v34;
    *(v29 + 24) = _swiftEmptyArrayStorage;
    *(v29 + 32) = 0xD000000000000024;
    *(v29 + 40) = 0x8000000000B7EF40;
    *(v29 + 48) = v1;
    *(v29 + 56) = v33;
    *(v29 + 64) = 0;
    v35 = v1;
    v36 = v33;
    goto LABEL_36;
  }
}

Swift::Void __swiftcall JSMetricsController.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin();
  v7 = &v39 - v6;
  if (countAndFlagsBits == 0x764564726F636572 && object == 0xEB00000000746E65 || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_808B0(arguments._rawValue + 32, v41);
      if (swift_dynamicCast())
      {
        v9 = v39;
        v8 = v40;
        Array.subscript.getter(&type metadata for Any + 8, v41);
        if (v42)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
          if (swift_dynamicCast())
          {
            v10 = v39;
            Array.subscript.getter(&type metadata for Any + 8, v41);
            if (v42)
            {
              if (swift_dynamicCast())
              {
                v11 = v39;
                Array.subscript.getter(&type metadata for Any + 8, v41);
                if (v42)
                {
                  if (swift_dynamicCast())
                  {
                    v12 = v39;
                    v13 = v40;
                    v14 = *MetricsReportingController.shared.unsafeMutableAddressor();
                    v15 = swift_allocObject();
                    v15[2] = v12;
                    v15[3] = v13;
                    v15[4] = v2;
                    v16 = *(&stru_B8.size + (swift_isaMask & *v14));
                    v17 = v14;
                    v18 = v2;
                    v16(v9, v8, v10, 2, 0, 0, v11, sub_9D2F3C, v15);

LABEL_13:

                    return;
                  }

                  goto LABEL_34;
                }

                goto LABEL_32;
              }

LABEL_34:

              goto LABEL_35;
            }

            goto LABEL_32;
          }

          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }
  }

  else if (countAndFlagsBits == 0xD000000000000015 && 0x8000000000B7EEA0 == object || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_808B0(arguments._rawValue + 32, v41);
      if (swift_dynamicCast())
      {
        v20 = v39;
        v19 = v40;
        Array.subscript.getter(&type metadata for Any + 8, v41);
        if (v42)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
          if (swift_dynamicCast())
          {
            v21 = v39;
            Array.subscript.getter(&type metadata for Any + 8, v41);
            if (v42)
            {
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_34;
              }

              v22 = v39;
              Array.subscript.getter(&type metadata for Any + 8, v41);
              if (v42)
              {
                if (swift_dynamicCast())
                {
                  v23 = v39;
                  v24 = v40;
                  v25 = *MetricsReportingController.shared.unsafeMutableAddressor();
                  v26 = swift_allocObject();
                  v26[2] = v23;
                  v26[3] = v24;
                  v26[4] = v2;
                  v27 = *(&stru_B8.offset + (swift_isaMask & *v25));
                  v28 = v2;
                  v29 = v25;
                  v27(v20, v19, v21, v22, sub_9D2EBC, v26);

                  goto LABEL_13;
                }

                goto LABEL_34;
              }
            }

LABEL_32:

            goto LABEL_33;
          }

LABEL_35:

          return;
        }

LABEL_33:

        sub_12E1C(v41, &unk_DE8E40);
      }
    }
  }

  else if (countAndFlagsBits == 0xD000000000000015 && 0x8000000000B7EEC0 == object || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2) == 1)
    {
      sub_808B0(arguments._rawValue + 32, v41);
      if (swift_dynamicCast())
      {
        v30 = v39;
        v31 = v40;
        sub_AB9950();
        v32 = sub_AB9990();
        (*(*(v32 - 8) + 56))(v7, 0, 1, v32);
        v33 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v34 = swift_allocObject();
        v34[2] = 0;
        v34[3] = 0;
        v34[4] = v33;
        v34[5] = v30;
        v34[6] = v31;
        sub_9D2218(0, 0, v7, &unk_B3D2B0, v34);

        sub_12E1C(v7, &qword_DE9D30);
      }
    }
  }

  else if (countAndFlagsBits == 0xD00000000000001DLL && 0x8000000000B7EEE0 == object || (sub_ABB3C0()) && *(arguments._rawValue + 2) == 1)
  {
    sub_808B0(arguments._rawValue + 32, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
    if (swift_dynamicCast())
    {
      v35 = v39;
      v36 = MetricsReportingController.shared.unsafeMutableAddressor();
      v37 = *(&stru_B8.reloff + (swift_isaMask & **v36));
      v38 = *v36;
      v37(v35);
    }
  }
}

uint64_t sub_9D1C1C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void))
{
  result = swift_getObjectType();
  v11 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v11 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = result;
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v13 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_AF85F0;
    *(v14 + 32) = a4;
    *(v14 + 88) = &type metadata for String;
    *(v14 + 56) = v12;
    *(v14 + 64) = a2;
    *(v14 + 72) = a3;
    sub_13C80(0, &qword_DE8ED0);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = _swiftEmptyArrayStorage;
    *(v15 + 32) = 0xD000000000000017;
    *(v15 + 40) = 0x8000000000B7F0A0;
    *(v15 + 48) = a4;
    *(v15 + 56) = v13;
    *(v15 + 64) = 0;
    v16 = a4;

    v17 = v13;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a6, v15);
  }

  return result;
}

uint64_t sub_9D1DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_9D1DE8, 0, 0);
}

uint64_t sub_9D1DE8()
{
  v1 = MetricsReportingController.shared.unsafeMutableAddressor();
  v2 = *v1;
  *(v0 + 64) = *v1;
  v3 = *(&stru_B8.flags + (swift_isaMask & *v2));
  v2;
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_9D1F24;

  return v6();
}

uint64_t sub_9D1F24()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_9D2038, 0, 0);
}

uint64_t sub_9D2038()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[6];
    v3 = v0[7];
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      if (qword_E23F48 != -1)
      {
        swift_once();
        v4 = v0[6];
        v3 = v0[7];
      }

      v6 = static JSBridge.shared;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_AF85F0;
      v8 = type metadata accessor for JSMetricsController();
      *(v7 + 32) = v2;
      *(v7 + 88) = &type metadata for String;
      *(v7 + 56) = v8;
      *(v7 + 64) = v4;
      *(v7 + 72) = v3;
      sub_13C80(0, &qword_DE8ED0);
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = _swiftEmptyArrayStorage;
      *(v9 + 32) = 0xD000000000000017;
      *(v9 + 40) = 0x8000000000B7F0A0;
      *(v9 + 48) = v2;
      *(v9 + 56) = v6;
      *(v9 + 64) = 0;
      v10 = v2;

      v11 = v6;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v9);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_9D2218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_E11D4(a3, v24 - v9);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_DE9D30);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_AB93A0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

Swift::Void __swiftcall JSMetricsController.recordNativeEvent(_:)(Swift::OpaquePointer a1)
{
  ObjectType = swift_getObjectType();
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v4 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF85F0;
  *(v5 + 56) = ObjectType;
  *(v5 + 32) = v1;
  *(v5 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
  *(v5 + 64) = a1;
  sub_13C80(0, &qword_DE8ED0);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  *(v6 + 32) = 0xD000000000000011;
  *(v6 + 40) = 0x8000000000B7EF00;
  *(v6 + 48) = v1;
  *(v6 + 56) = v4;
  *(v6 + 64) = 0;
  v7 = v1;

  v8 = v4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BE1A0, v6);
}

uint64_t JSMetricsController.recordNativeEvent(_:)()
{
  ObjectType = swift_getObjectType();
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v2 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_AF85F0;
  *(v3 + 56) = ObjectType;
  *(v3 + 32) = v0;
  v4 = v0;
  v5 = sub_9CF918();
  *(v3 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  *(v3 + 64) = v5;
  sub_13C80(0, &qword_DE8ED0);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  *(v6 + 32) = 0xD000000000000011;
  *(v6 + 40) = 0x8000000000B7EF00;
  *(v6 + 48) = v4;
  *(v6 + 56) = v2;
  *(v6 + 64) = 0;
  v7 = v4;
  v8 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v6);
}

Swift::Void __swiftcall JSMetricsController.recordCarPlayMetricsNativeEvent(_:)(Swift::OpaquePointer a1)
{
  ObjectType = swift_getObjectType();
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v4 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF85F0;
  *(v5 + 56) = ObjectType;
  *(v5 + 32) = v1;
  *(v5 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
  *(v5 + 64) = a1;
  sub_13C80(0, &qword_DE8ED0);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  *(v6 + 32) = 0xD00000000000001FLL;
  *(v6 + 40) = 0x8000000000B7EF20;
  *(v6 + 48) = v1;
  *(v6 + 56) = v4;
  *(v6 + 64) = 0;
  v7 = v1;

  v8 = v4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v6);
}

Swift::Void __swiftcall JSMetricsController.recordCarBluetoothMetricsNativeEvent(_:)(Swift::OpaquePointer a1)
{
  ObjectType = swift_getObjectType();
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v4 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF85F0;
  *(v5 + 56) = ObjectType;
  *(v5 + 32) = v1;
  *(v5 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
  *(v5 + 64) = a1;
  sub_13C80(0, &qword_DE8ED0);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  *(v6 + 32) = 0xD000000000000024;
  *(v6 + 40) = 0x8000000000B7EF40;
  *(v6 + 48) = v1;
  *(v6 + 56) = v4;
  *(v6 + 64) = 0;
  v7 = v1;

  v8 = v4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v6);
}

void JSMetricsController.sessionDidConnect(_:)()
{
  if ((*(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) = 1;
  }
}

uint64_t sub_9D2B5C()
{
}

uint64_t _s11MusicJSCore7MetricsV5EventV6SourceO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4EFE8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_9D2C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metrics.Event.Action(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s11MusicJSCore7MetricsV10TargetTypeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4F0F0;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t _s11MusicJSCore7MetricsV10ActionTypeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4F158;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_9D2D74()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_9D2DAC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_9D2DF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17BD0;

  return sub_9D1DC4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_7Tm()
{

  return swift_deallocObject();
}

unint64_t sub_9D2F7C()
{
  result = qword_E252E0;
  if (!qword_E252E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E252E0);
  }

  return result;
}

unint64_t sub_9D2FD4()
{
  result = qword_E252E8;
  if (!qword_E252E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E252E8);
  }

  return result;
}

unint64_t sub_9D302C()
{
  result = qword_E252F0;
  if (!qword_E252F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E252F0);
  }

  return result;
}

unint64_t sub_9D3084()
{
  result = qword_E252F8;
  if (!qword_E252F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E252F8);
  }

  return result;
}

unint64_t sub_9D30DC()
{
  result = qword_E25300;
  if (!qword_E25300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25300);
  }

  return result;
}

uint64_t sub_9D3154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Metrics.Event.Action(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_9D3230(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Metrics.Event.Action(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_9D32E8()
{
  type metadata accessor for Metrics.Event.Action(319);
  if (v0 <= 0x3F)
  {
    sub_9D33D4();
    if (v1 <= 0x3F)
    {
      sub_AFE18(319, &unk_E25380, &qword_DEF678);
      if (v2 <= 0x3F)
      {
        sub_AFE18(319, &unk_E25390, &unk_DED830);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_9D33D4()
{
  if (!qword_E25370)
  {
    sub_13C80(255, &qword_DEDE20);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E25370);
    }
  }
}

void sub_9D343C()
{
  sub_9D359C(319, &qword_E25450, sub_9D354C);
  if (v0 <= 0x3F)
  {
    sub_9D359C(319, &qword_E25460, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      sub_9D35E8();
      if (v2 <= 0x3F)
      {
        sub_9D3618();
        if (v3 <= 0x3F)
        {
          sub_9D3648();
          if (v4 <= 0x3F)
          {
            sub_9D3678();
            if (v5 <= 0x3F)
            {
              sub_9D36D0();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_9D354C()
{
  if (!qword_E25458)
  {
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E25458);
    }
  }
}

void sub_9D359C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_9D35E8()
{
  result = qword_E25468;
  if (!qword_E25468)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_E25468);
  }

  return result;
}

void *sub_9D3618()
{
  result = qword_E25470;
  if (!qword_E25470)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_E25470);
  }

  return result;
}

void *sub_9D3648()
{
  result = qword_E25478;
  if (!qword_E25478)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_E25478);
  }

  return result;
}

void sub_9D3678()
{
  if (!qword_E25480)
  {
    v0 = sub_13C80(0, &unk_DF1280);
    if (!v1)
    {
      atomic_store(v0, &qword_E25480);
    }
  }
}

void *sub_9D36D0()
{
  result = qword_E25490;
  if (!qword_E25490)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_E25490);
  }

  return result;
}

unint64_t sub_9D3798()
{
  result = qword_E25560;
  if (!qword_E25560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25560);
  }

  return result;
}

uint64_t sub_9D37EC()
{

  return swift_deallocObject();
}

uint64_t sub_9D3824(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_E046C(a1, v4);
}

uint64_t sub_9D38EC()
{

  return swift_deallocObject();
}

void sub_9D3984(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *JSMenuItem.submenu.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t JSMenuItem.description.getter()
{
  v1 = v0;
  v9._countAndFlagsBits = 60;
  v9._object = 0xE100000000000000;
  sub_AB94A0(v9);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_AB92A0();
  v6 = v5;

  v10._countAndFlagsBits = v4;
  v10._object = v6;
  sub_AB94A0(v10);

  v11._countAndFlagsBits = 8250;
  v11._object = 0xE200000000000000;
  sub_AB94A0(v11);
  sub_ABAF70();
  v12._countAndFlagsBits = 8251;
  v12._object = 0xE200000000000000;
  sub_AB94A0(v12);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
  v13._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v13);

  v7 = OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu;
  swift_beginAccess();
  if (*(v1 + v7))
  {
    v14._countAndFlagsBits = 0x757320736168203BLL;
    v14._object = 0xED0000756E656D62;
    sub_AB94A0(v14);
  }

  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  sub_AB94A0(v15);
  return 0;
}

uint64_t JSMenuItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a1;
  v14[1] = a2;
  sub_F46A0(a3, v15);
  if (v15[3])
  {
    sub_F46A0(v15, v13);

    if (swift_dynamicCast())
    {
      v6 = v12;
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = (v3 + OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_title);
        swift_beginAccess();
        *v7 = v11;
LABEL_20:
        v7[1] = v6;

        goto LABEL_21;
      }
    }

    type metadata accessor for JSMenu();
    if (swift_dynamicCast())
    {
      if (a1 == 0x756E656D627573 && a2 == 0xE700000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu;
        swift_beginAccess();
        v9 = *(v3 + v8);
        *(v3 + v8) = v11;

LABEL_21:
        __swift_destroy_boxed_opaque_existential_0(v13);
        sub_12E1C(v15, &unk_DE8E40);
      }
    }

    if (swift_dynamicCast())
    {
      v6 = v12;
      if (a1 == 0x54756E656D627573 && a2 == 0xEC000000656C7469 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = (v3 + OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenuTitle);
        swift_beginAccess();
        *v7 = v11;
        goto LABEL_20;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
  }

  return sub_12E1C(v14, &unk_E27200);
}

id JSMenuItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_title];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu] = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenuTitle];
  *v5 = 0;
  *(v5 + 1) = 0;
  return JSObject.init(type:)(a1);
}

id JSMenuItem.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_title);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu) = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenuTitle);
  *v3 = 0;
  v3[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_9D3F64()
{
}

id JSMenuItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMenuItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_9D40C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

char *JSCreditsSection.__allocating_init(items:title:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(type metadata accessor for JSCreditsSection());
  v7 = &v6[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title];
  *v7 = 0;
  v7[1] = 0;
  *&v6[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items] = _swiftEmptyArrayStorage;
  v6[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_isUpdatingFromJS] = 0;
  v8 = &v6[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *&v6[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v9 = &v6[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v9 = 0;
  v9[1] = 0;
  v10 = [objc_allocWithZone(NSUUID) init];
  v11 = [v10 UUIDString];

  v12 = sub_AB92A0();
  v14 = v13;

  v15 = &v6[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
  *v15 = v12;
  v15[1] = v14;
  v6[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 1;
  v21.receiver = v6;
  v21.super_class = type metadata accessor for JSObject();
  v16 = objc_msgSendSuper2(&v21, "init");
  v17 = OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items;
  swift_beginAccess();
  *&v16[v17] = a1;
  v18 = v16;

  v19 = &v18[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title];
  swift_beginAccess();
  *v19 = a2;
  *(v19 + 1) = a3;

  return v18;
}

uint64_t sub_9D4320(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t JSCreditsSection.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_9D43E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t JSCreditsSection.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_isUpdatingFromJS;
  v8 = *(v3 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_isUpdatingFromJS);
  *(v3 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_isUpdatingFromJS) = 1;
  v15[0] = a1;
  v15[1] = a2;
  sub_F46A0(a3, v16);
  if (!v16[3])
  {

    goto LABEL_17;
  }

  sub_F46A0(v16, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E255C0);
  if (!swift_dynamicCast())
  {
LABEL_9:
    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v10 = (v3 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title);
        swift_beginAccess();
        *v10 = v12;
        v10[1] = v13;
        goto LABEL_14;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v14);
LABEL_17:
    JSViewModel.updateProperty(_:value:)(a1, a2, a3);
    result = sub_12E1C(v15, &unk_E27200);
    goto LABEL_18;
  }

  if ((a1 != 0x736D657469 || a2 != 0xE500000000000000) && (sub_ABB3C0() & 1) == 0)
  {

    goto LABEL_9;
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items;
  swift_beginAccess();
  *(v3 + v9) = v12;
LABEL_14:

  __swift_destroy_boxed_opaque_existential_0(v14);
  sub_12E1C(v16, &unk_DE8E40);

LABEL_18:
  *(v3 + v7) = v8;
  return result;
}

id JSCreditsSection.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title];
  *v4 = 0;
  v4[1] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_isUpdatingFromJS] = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v6 = 0;
  v6[1] = 0;
  return JSObject.init(type:)(a1);
}

id JSCreditsSection.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_isUpdatingFromJS) = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v4 = 0;
  v4[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_9D480C()
{
}

id JSCreditsSection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSCreditsSection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9D4884@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_9D48E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t (*JSSocialLightIdentityCreator.title.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t (*JSSocialLightIdentityCreator.$title.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__title;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t (*JSSocialLightIdentityCreator.subtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t (*JSSocialLightIdentityCreator.$subtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__subtitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

void (*JSSocialLightIdentityCreator.inputFieldTitle.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BCE8C;
}

uint64_t (*JSSocialLightIdentityCreator.$inputFieldTitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__inputFieldTitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD154;
}

uint64_t sub_9D5190()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_9D51FC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_9D52A0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t sub_9D5358()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

uint64_t (*JSSocialLightIdentityCreator.inputFieldSubtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t sub_9D547C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_9D54F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSocialLightIdentityCreator.$inputFieldSubtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__inputFieldSubtitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t JSSocialLightIdentityCreator.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v10[1] = a2;
  sub_F46A0(a3, v11);
  if (v11[3])
  {
    sub_F46A0(v11, v9);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0 || a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0 || a1 == 0x6569467475706E69 && a2 == 0xEF656C746954646CLL || (sub_ABB3C0() & 1) != 0 || a1 == 0xD000000000000012 && 0x8000000000B7F170 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v3;
        sub_AB5520();
        __swift_destroy_boxed_opaque_existential_0(v9);
        sub_12E1C(v11, &unk_DE8E40);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v10, &unk_E27200);
}

id JSSocialLightIdentityCreator.init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__title;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_AB54D0();
  v8 = *(v4 + 32);
  v8(v1 + v7, v6, v3);
  v9 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__subtitle;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_AB54D0();
  v8(v1 + v9, v6, v3);
  v10 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__inputFieldTitle;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_AB54D0();
  v8(v1 + v10, v6, v3);
  v11 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__inputFieldSubtitle;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_AB54D0();
  v8(v1 + v11, v6, v3);
  v12 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v13 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v13 = 0;
  v13[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_9D5C64()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__title;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v5(v0 + OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__subtitle, v2);
  v5(v0 + OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__inputFieldTitle, v2);
  v3 = v0 + OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__inputFieldSubtitle;

  return (v5)(v3, v2);
}

uint64_t sub_9D5E54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_ABADC0();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for JSSocialLightIdentityCreator()
{
  result = qword_E25638;
  if (!qword_E25638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9D5ED4()
{
  sub_9BD15C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id JSMusicVideoItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMusicVideoItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSMusicVideoItem()
{
  result = qword_E25670;
  if (!qword_E25670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JSScreen.init(rootElementSizing:isRequiredForInitialSetup:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 120);
  sub_13C80(0, &qword_DE8ED0);
  *v10 = sub_ABA150();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = sub_AB7CF0();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    ObjectType = swift_getObjectType();
    v14 = (*(a2 + 64))(ObjectType, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
    inited = swift_initStackObject();
    v40 = xmmword_AF85F0;
    *(inited + 16) = xmmword_AF85F0;
    *(inited + 32) = 0x6F69736E656D6964;
    *(inited + 40) = 0xEA0000000000736ELL;
    [v14 bounds];
    v17 = v16;
    v19 = v18;
    [objc_msgSend(v14 "fixedCoordinateSpace")];
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    v24 = UIScreen.Dimensions.JSSerialized.getter(v17, v19, v21, v23);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25680);
    *(inited + 48) = v24;
    *(inited + 72) = v25;
    *(inited + 80) = 0x656C616373;
    *(inited + 88) = 0xE500000000000000;
    [v14 scale];
    v27 = [objc_allocWithZone(NSNumber) initWithDouble:v26];
    *(inited + 120) = sub_13C80(0, &qword_DF1300);
    *(inited + 96) = v27;
    v28 = sub_97420(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
    swift_arrayDestroy();
    v29 = type metadata accessor for JSWindow();
    v30 = objc_allocWithZone(v29);
    v31 = swift_unknownObjectRetain();
    v32 = sub_AA7E68(v31, a2, a3 & 1);
    swift_unknownObjectRelease();
    *(v4 + OBJC_IVAR____TtC11MusicJSCore8JSScreen_mainWindow) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v33 = swift_allocObject();
    *(v33 + 16) = v40;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
    *(v33 + 32) = v28;
    *(v33 + 88) = v29;
    *(v33 + 56) = v34;
    *(v33 + 64) = v32;
    v41[0] = v33;
    v41[1] = a3 & 1;
    memset(&v41[2], 0, 24);
    v42 = 0;
    v35 = v32;
    v36 = JSObject.init(type:)(v41);
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = *(a2 + 16);
    v39 = v36;

    v38(sub_9D674C, v37, ObjectType, a2);

    swift_unknownObjectRelease();

    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_9D64F8(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v10 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF85F0;
    *(v11 + 56) = type metadata accessor for JSScreen();
    *(v11 + 32) = v9;
    v12 = v9;
    v13 = UIScreen.Dimensions.JSSerialized.getter(a1, a2, a3, a4);
    *(v11 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25680);
    *(v11 + 64) = v13;
    sub_13C80(0, &qword_DE8ED0);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = _swiftEmptyArrayStorage;
    *(v14 + 32) = 0xD000000000000014;
    *(v14 + 40) = 0x8000000000B7F290;
    *(v14 + 48) = v12;
    *(v14 + 56) = v10;
    *(v14 + 64) = 0;
    v15 = v12;
    v16 = v10;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v14);
  }

  return result;
}

uint64_t sub_9D6714()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_9D6778()
{

  return swift_deallocObject();
}

uint64_t sub_9D680C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEE90);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_9ACA0(*(a1 + 48) + 40 * v13, v35);
    v14 = *(*(a1 + 56) + 8 * v13);
    v37 = v14;
    v23 = v35[0];
    v25 = v35[1];
    v27 = v36;
    *&v34[0] = v14;
    type metadata accessor for JSSocialProfile();
    v15 = v14;
    swift_dynamicCast();
    v30 = v23;
    v31 = v25;
    v32 = v27;
    sub_9ACFC(&v29, v33);
    v24 = v30;
    v26 = v31;
    v28 = v32;
    sub_9ACFC(v33, v34);
    result = sub_ABACF0(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~v7[v17 >> 6]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = v7[v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~v7[v17 >> 6])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v26;
    *(v11 + 32) = v28;
    result = sub_9ACFC(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_9D6ACC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEE90);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_9ACFC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_9ACFC(v29, v30);
    result = sub_ABACF0(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_9ACFC(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_9D6D8C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEFE0);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_9ACFC(&v22, v24);
        sub_9ACFC(v24, v25);
        sub_9ACFC(v25, &v23);
        result = sub_2EBF88(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_9ACFC(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_9ACFC(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_9D6FE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2BC0);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);
        sub_13C80(0, &qword_DF1300);

        v18 = v17;
        swift_dynamicCast();
        result = sub_2EBF88(v16, v15);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          *(v2[7] + 8 * v10) = v24;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * result) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

char *JSCapabilitiesController.init()()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_areNotificationsEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isUnifiedMessagesEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_allowsConnectContentNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_allowsRadioContentNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_allowsSubscriptionContentNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_hasUserRequestedSubscriptionHiddenObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabledDidChangeNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_notificationSettingsDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_mliSessionIDDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_mliDidCompleteTransferDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_mliReviewDidChangeObserver) = 0;
  v2 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v3 = objc_opt_self();

  v108 = [v3 sharedManager];
  v4 = [objc_opt_self() sharedCloudController];
  v107 = v4;
  if (v4)
  {
    LOBYTE(v4) = [v4 isCloudLibraryEnabled];
  }

  v105 = v4;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabled) = v4;
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = UnifiedMessages.MLI.sessionIDKey.unsafeMutableAddressor();
  v8 = *(v7 + 1);
  *&v119[0] = *v7;
  *(&v119[0] + 1) = v8;
  sub_36A48();

  NSUserDefaults.subscript.getter(v119, &v121);

  if (v122)
  {
    sub_9ACFC(&v121, &v115);
  }

  else
  {
    v116 = &type metadata for String;
    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
  }

  v9 = [v5 standardUserDefaults];
  UnifiedMessages.MLI.didCompleteTransferKey.unsafeMutableAddressor();

  v10 = sub_AB9260();

  v11 = [v9 BOOLForKey:v10];

  v12 = [v5 standardUserDefaults];
  v13 = UnifiedMessages.MLI.mliReviewKey.unsafeMutableAddressor();
  v14 = *(v13 + 1);
  *&v119[0] = *v13;
  *(&v119[0] + 1) = v14;

  NSUserDefaults.subscript.getter(v119, &v121);

  if (v122)
  {
    sub_9ACFC(&v121, &v113);
  }

  else
  {
    v114 = &type metadata for String;
    *&v113 = 0;
    *(&v113 + 1) = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
  v15 = swift_allocObject();
  *(v15 + 32) = 0xD000000000000022;
  *(v15 + 16) = xmmword_B122D0;
  *(v15 + 40) = 0x8000000000B7F2E0;
  v106 = NSUserDefaults.mobileiPod.unsafeMutableAddressor();
  v16 = *v106;
  if (*v106)
  {
    v17 = v16;
    v18 = NSUserDefaults.hasUserRequestedSubscriptionHidden.getter();

    LOBYTE(v16) = v18 & 1;
  }

  *(v15 + 48) = v16;
  *(v15 + 72) = &type metadata for Bool;
  strcpy((v15 + 80), "canShowSocial");
  *(v15 + 94) = -4864;
  ApplicationCapabilities.Controller.capabilities.getter(v117);
  v19 = v118;

  sub_70C54(v117);
  v20 = sub_472A84(3, v19);

  *(v15 + 96) = v20 & 1;
  *(v15 + 120) = &type metadata for Bool;
  strcpy((v15 + 128), "canShowRadio");
  *(v15 + 141) = 0;
  *(v15 + 142) = -5120;
  ApplicationCapabilities.Controller.capabilities.getter(v119);
  v21 = v120;

  sub_70C54(v119);
  v22 = sub_472A84(4, v21);

  *(v15 + 144) = v22 & 1;
  *(v15 + 168) = &type metadata for Bool;
  *(v15 + 176) = 0xD00000000000001ALL;
  *(v15 + 184) = 0x8000000000B7F310;
  ApplicationCapabilities.Controller.capabilities.getter(&v121);
  v23 = v123;

  sub_70C54(&v121);
  v24 = sub_472A84(2, v23);

  *(v15 + 192) = v24 & 1;
  *(v15 + 216) = &type metadata for Bool;
  *(v15 + 224) = 0xD000000000000015;
  *(v15 + 232) = 0x8000000000B6CB70;
  *(v15 + 240) = v105;
  *(v15 + 264) = &type metadata for Bool;
  *(v15 + 272) = 0xD000000000000021;
  *(v15 + 280) = 0x8000000000B7F330;
  v25 = [v108 cachedAccountNotificationsShowInLibrarySwitch];
  v26 = [v25 isToggled];

  *(v15 + 288) = v26;
  *(v15 + 312) = &type metadata for Bool;
  *(v15 + 320) = 0xD00000000000001CLL;
  *(v15 + 328) = 0x8000000000B7F360;
  *(v15 + 336) = 1;
  *(v15 + 360) = &type metadata for Bool;
  strcpy((v15 + 368), "mliSessionID");
  *(v15 + 381) = 0;
  *(v15 + 382) = -5120;
  sub_808B0(&v115, v15 + 384);
  *(v15 + 416) = 0xD000000000000016;
  *(v15 + 424) = 0x8000000000B72610;
  *(v15 + 432) = v11;
  *(v15 + 456) = &type metadata for Bool;
  *(v15 + 464) = 0x6569766552696C6DLL;
  *(v15 + 472) = 0xE900000000000077;
  sub_808B0(&v113, v15 + 480);
  *(v15 + 512) = 0xD000000000000018;
  *(v15 + 520) = 0x8000000000B7F380;
  *(v15 + 552) = &type metadata for Bool;
  *(v15 + 528) = 0;
  v27 = sub_97420(v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_AF4EC0;
  *(v28 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  *(v28 + 32) = v27;
  v124[0] = v28;
  v124[1] = 1;
  memset(&v124[2], 0, 24);
  v125 = 0;
  v29 = JSObject.init(type:)(v124);
  v30 = qword_E23F48;
  v31 = v29;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = static JSBridge.shared;
  sub_13C80(0, &qword_DE8ED0);
  v33 = swift_allocObject();
  *(v33 + 16) = 0xD000000000000016;
  *(v33 + 24) = 0x8000000000B7F3A0;
  *(v33 + 32) = v31;
  *(v33 + 40) = v32;
  *(v33 + 48) = 1;
  v34 = v31;
  v35 = v32;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3204, v33);

  v36 = [objc_opt_self() currentNotificationCenter];
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  v111 = sub_9D9C98;
  v112 = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1546C;
  v110 = &block_descriptor_259;
  v38 = _Block_copy(aBlock);

  [v36 getNotificationSettingsWithCompletionHandler:v38];
  _Block_release(v38);

  v39 = ICUserNotificationSettingsDidChangeNotification;
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v34[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_notificationSettingsDidChangeObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v39, 0, 1, 0, sub_9D9D20, v40);

  v41 = *ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange.unsafeMutableAddressor();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v2;
  swift_allocObject();
  swift_retain_n();
  *&v34[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_allowsConnectContentNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v41, v2, 1, 1, sub_9D9D28, v43);

  v44 = *ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange.unsafeMutableAddressor();
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v2;
  swift_allocObject();
  swift_retain_n();
  *&v34[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_allowsRadioContentNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v44, v2, 1, 1, sub_9D9D34, v46);

  v47 = *ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange.unsafeMutableAddressor();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v2;
  swift_allocObject();
  swift_retain_n();
  *&v34[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_allowsSubscriptionContentNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v47, v2, 1, 1, sub_9D9D3C, v49);

  v50 = *v106;
  if (*v106)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    v52 = v50;
    v53 = NSUserDefaults.MobileiPod.suiteName.unsafeMutableAddressor();
    v54 = *v53;
    v55 = v53[1];
    sub_9D9DA4();

    v57 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(v54, v55, v56, &type metadata for NSUserDefaults.MobileiPod);
    v59 = v58;
    v61 = v60;
    v63 = v62;
    *(inited + 56) = &type metadata for UserDefaultsKeyValueTrigger;
    *(inited + 64) = &protocol witness table for UserDefaultsKeyValueTrigger;
    v64 = swift_allocObject();
    *(inited + 32) = v64;
    v64[2] = v57;
    v64[3] = v59;
    v64[4] = v61;
    v64[5] = v63;
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v66 = swift_allocObject();
    *(v66 + 16) = v65;
    *(v66 + 24) = v52;
    type metadata accessor for Whitetail.Binding();
    swift_allocObject();

    v67 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 0, sub_9D9E38, v66);

    *&v34[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_hasUserRequestedSubscriptionHiddenObserver] = v67;
  }

  v68 = MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification;
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v34[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabledDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v68, 0, 1, 1, sub_9D9D44, v69);

  type metadata accessor for Whitetail.Binding();
  UIScreen.Dimensions.size.getter(v70);
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v110 = &type metadata for UserDefaultsKeyValueTrigger;
  v111 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v79 = swift_allocObject();
  aBlock[0] = v79;
  v79[2] = v72;
  v79[3] = v74;
  v79[4] = v76;
  v79[5] = v78;
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();

  *&v34[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_mliSessionIDDidChangeObserver] = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(aBlock, 0, sub_9D9D8C, v80);

  UIScreen.Dimensions.size.getter(v81);
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v110 = &type metadata for UserDefaultsKeyValueTrigger;
  v111 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v90 = swift_allocObject();
  aBlock[0] = v90;
  v90[2] = v83;
  v90[3] = v85;
  v90[4] = v87;
  v90[5] = v89;
  v91 = swift_allocObject();
  swift_unknownObjectWeakInit();

  *&v34[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_mliDidCompleteTransferDidChangeObserver] = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(aBlock, 0, sub_9D9D94, v91);

  UIScreen.Dimensions.size.getter(v92);
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v110 = &type metadata for UserDefaultsKeyValueTrigger;
  v111 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v101 = swift_allocObject();
  aBlock[0] = v101;
  v101[2] = v94;
  v101[3] = v96;
  v101[4] = v98;
  v101[5] = v100;
  v102 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v103 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(aBlock, 0, sub_9D9D9C, v102);

  __swift_destroy_boxed_opaque_existential_0(&v113);
  __swift_destroy_boxed_opaque_existential_0(&v115);

  *&v34[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_mliReviewDidChangeObserver] = v103;

  return v34;
}

uint64_t JSCapabilitiesController.areNotificationsEnabled.setter(char a1)
{
  v3 = a1 & 1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_areNotificationsEnabled;
  result = swift_beginAccess();
  v7 = v1[v5];
  v1[v5] = a1;
  if (v7 != v3)
  {
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v8 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_AF85F0;
    *(v9 + 56) = ObjectType;
    *(v9 + 32) = v1;
    v10 = v1[v5];
    *(v9 + 88) = &type metadata for Bool;
    *(v9 + 64) = v10;
    sub_13C80(0, &qword_DE8ED0);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = _swiftEmptyArrayStorage;
    *(v11 + 32) = 0xD00000000000001DLL;
    *(v11 + 40) = 0x8000000000B7F3C0;
    *(v11 + 48) = v1;
    *(v11 + 56) = v8;
    *(v11 + 64) = 0;
    v12 = v1;
    v13 = v8;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BE1A0, v11);
  }

  return result;
}

void sub_9D8280()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = sub_AB2BC0();
  if (!v2)
  {

    v7 = 0u;
    v8 = 0u;
    goto LABEL_12;
  }

  v3 = v2;
  sub_AB92A0();
  sub_ABAD10();
  if (!*(v3 + 16) || (v4 = sub_2EC004(v6), (v5 & 1) == 0))
  {

    sub_8085C(v6);
    v7 = 0u;
    v8 = 0u;
    goto LABEL_10;
  }

  sub_808B0(*(v3 + 56) + 32 * v4, &v7);
  sub_8085C(v6);

  if (!*(&v8 + 1))
  {
LABEL_10:

LABEL_12:
    sub_12E1C(&v7, &unk_DE8E40);
    return;
  }

  if (swift_dynamicCast())
  {
    JSCapabilitiesController.areNotificationsEnabled.setter(v6[0]);
  }
}

uint64_t sub_9D83C8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v2 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF85F0;
    *(v3 + 56) = type metadata accessor for JSCapabilitiesController();
    *(v3 + 32) = v1;
    v4 = v1;
    ApplicationCapabilities.Controller.capabilities.getter(v10);
    v5 = v11;

    sub_70C54(v10);
    v6 = sub_472A84(3, v5);

    *(v3 + 88) = &type metadata for Bool;
    *(v3 + 64) = v6 & 1;
    sub_13C80(0, &qword_DE8ED0);
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = _swiftEmptyArrayStorage;
    *(v7 + 32) = 0xD000000000000013;
    *(v7 + 40) = 0x8000000000B7F720;
    *(v7 + 48) = v4;
    *(v7 + 56) = v2;
    *(v7 + 64) = 0;
    v8 = v4;
    v9 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v7);
  }

  return result;
}

uint64_t sub_9D8588()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v2 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF85F0;
    *(v3 + 56) = type metadata accessor for JSCapabilitiesController();
    *(v3 + 32) = v1;
    v4 = v1;
    ApplicationCapabilities.Controller.capabilities.getter(v10);
    v5 = v11;

    sub_70C54(v10);
    v6 = sub_472A84(4, v5);

    *(v3 + 88) = &type metadata for Bool;
    *(v3 + 64) = v6 & 1;
    sub_13C80(0, &qword_DE8ED0);
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = _swiftEmptyArrayStorage;
    *(v7 + 32) = 0xD000000000000012;
    *(v7 + 40) = 0x8000000000B7F700;
    *(v7 + 48) = v4;
    *(v7 + 56) = v2;
    *(v7 + 64) = 0;
    v8 = v4;
    v9 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v7);
  }

  return result;
}

uint64_t sub_9D8748()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v2 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF85F0;
    *(v3 + 56) = type metadata accessor for JSCapabilitiesController();
    *(v3 + 32) = v1;
    v4 = v1;
    ApplicationCapabilities.Controller.capabilities.getter(v10);
    v5 = v11;

    sub_70C54(v10);
    v6 = sub_472A84(2, v5);

    *(v3 + 88) = &type metadata for Bool;
    *(v3 + 64) = v6 & 1;
    sub_13C80(0, &qword_DE8ED0);
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = _swiftEmptyArrayStorage;
    *(v7 + 32) = 0xD000000000000020;
    *(v7 + 40) = 0x8000000000B7F6D0;
    *(v7 + 48) = v4;
    *(v7 + 56) = v2;
    *(v7 + 64) = 0;
    v8 = v4;
    v9 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v7);
  }

  return result;
}

uint64_t sub_9D8908()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v2 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF85F0;
    *(v3 + 56) = type metadata accessor for JSCapabilitiesController();
    *(v3 + 32) = v1;
    v4 = v1;
    v5 = NSUserDefaults.hasUserRequestedSubscriptionHidden.getter();
    *(v3 + 88) = &type metadata for Bool;
    *(v3 + 64) = v5 & 1;
    sub_13C80(0, &qword_DE8ED0);
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = _swiftEmptyArrayStorage;
    *(v6 + 32) = 0xD000000000000028;
    *(v6 + 40) = 0x8000000000B7F640;
    *(v6 + 48) = v4;
    *(v6 + 56) = v2;
    *(v6 + 64) = 0;
    v7 = v4;
    v8 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v6);
  }

  return result;
}

void sub_9D8A98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_9D8AEC();
  }
}

void sub_9D8AEC()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() sharedCloudController];
  v11 = v2;
  if (v2)
  {
    v3 = [v2 isCloudLibraryEnabled];
    v4 = &v0[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabled];
    if (v3 != v0[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabled])
    {
      v5 = v3;
LABEL_6:
      *v4 = v5;
      if (qword_E23F48 != -1)
      {
        swift_once();
      }

      v6 = static JSBridge.shared;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_AF85F0;
      *(v7 + 56) = ObjectType;
      *(v7 + 32) = v0;
      *(v7 + 88) = &type metadata for Bool;
      *(v7 + 64) = v5;
      sub_13C80(0, &qword_DE8ED0);
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = _swiftEmptyArrayStorage;
      *(v8 + 32) = 0xD000000000000019;
      *(v8 + 40) = 0x8000000000B7F6B0;
      *(v8 + 48) = v0;
      *(v8 + 56) = v6;
      *(v8 + 64) = 0;
      v9 = v0;
      v10 = v6;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v8);

      return;
    }
  }

  else
  {
    v4 = &v0[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabled];
    if (v0[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabled])
    {
      v5 = 0;
      goto LABEL_6;
    }
  }
}

uint64_t sub_9D8CF8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() standardUserDefaults];
    UnifiedMessages.MLI.sessionIDKey.unsafeMutableAddressor();

    v3 = sub_AB9260();

    v4 = [v2 stringForKey:v3];

    if (v4)
    {
      v5 = sub_AB92A0();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v8 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_AF85F0;
    v10 = type metadata accessor for JSCapabilitiesController();
    *(v9 + 32) = v1;
    *(v9 + 88) = &type metadata for String;
    *(v9 + 56) = v10;
    *(v9 + 64) = v5;
    *(v9 + 72) = v7;
    sub_13C80(0, &qword_DE8ED0);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = _swiftEmptyArrayStorage;
    *(v11 + 32) = 0xD000000000000012;
    *(v11 + 40) = 0x8000000000B7F690;
    *(v11 + 48) = v1;
    *(v11 + 56) = v8;
    *(v11 + 64) = 0;
    v12 = v1;
    v13 = v8;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v11);
  }

  return result;
}

uint64_t sub_9D8F10()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() standardUserDefaults];
    UnifiedMessages.MLI.didCompleteTransferKey.unsafeMutableAddressor();

    v3 = sub_AB9260();

    v4 = [v2 BOOLForKey:v3];

    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v5 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_AF85F0;
    *(v6 + 56) = type metadata accessor for JSCapabilitiesController();
    *(v6 + 32) = v1;
    *(v6 + 88) = &type metadata for Bool;
    *(v6 + 64) = v4;
    sub_13C80(0, &qword_DE8ED0);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = _swiftEmptyArrayStorage;
    *(v7 + 32) = 0xD00000000000001CLL;
    *(v7 + 40) = 0x8000000000B7F670;
    *(v7 + 48) = v1;
    *(v7 + 56) = v5;
    *(v7 + 64) = 0;
    v8 = v1;
    v9 = v5;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v7);
  }

  return result;
}

uint64_t sub_9D90FC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() standardUserDefaults];
    UnifiedMessages.MLI.mliReviewKey.unsafeMutableAddressor();

    v3 = sub_AB9260();

    v4 = [v2 stringForKey:v3];

    if (v4)
    {
      v5 = sub_AB92A0();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v8 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_AF85F0;
    v10 = type metadata accessor for JSCapabilitiesController();
    *(v9 + 32) = v1;
    *(v9 + 88) = &type metadata for String;
    *(v9 + 56) = v10;
    *(v9 + 64) = v5;
    *(v9 + 72) = v7;
    sub_13C80(0, &qword_DE8ED0);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = _swiftEmptyArrayStorage;
    *(v11 + 32) = 0x4C4D657461647075;
    *(v11 + 40) = 0xEF77656976655249;
    *(v11 + 48) = v1;
    *(v11 + 56) = v8;
    *(v11 + 64) = 0;
    v12 = v1;
    v13 = v8;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v11);
  }

  return result;
}

uint64_t JSCapabilitiesController.areNotificationsEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_areNotificationsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*JSCapabilitiesController.areNotificationsEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_areNotificationsEnabled;
  *(v4 + 32) = ObjectType;
  *(v4 + 40) = v6;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v6);
  return sub_9D9400;
}

void sub_9D9400(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    JSCapabilitiesController.areNotificationsEnabled.setter(v3);
  }

  else
  {
    v4 = v2[5];
    v5 = v2[3];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      if (qword_E23F48 != -1)
      {
        swift_once();
      }

      v8 = v2[4];
      v7 = v2[5];
      v9 = v2[3];
      v10 = static JSBridge.shared;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_AF85F0;
      *(v11 + 56) = v8;
      *(v11 + 32) = v9;
      v12 = v9[v7];
      *(v11 + 88) = &type metadata for Bool;
      *(v11 + 64) = v12;
      sub_13C80(0, &qword_DE8ED0);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = _swiftEmptyArrayStorage;
      *(v13 + 32) = 0xD00000000000001DLL;
      *(v13 + 40) = 0x8000000000B7F3C0;
      *(v13 + 48) = v9;
      *(v13 + 56) = v10;
      *(v13 + 64) = 0;
      v14 = v9;
      v15 = v10;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v13);
    }
  }

  free(v2);
}

uint64_t JSCapabilitiesController.isUnifiedMessagesEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isUnifiedMessagesEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

NSString sub_9D95E4()
{
  result = sub_AB9260();
  static JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification = result;
  return result;
}

uint64_t *JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification.unsafeMutableAddressor()
{
  if (qword_E23F88 != -1)
  {
    swift_once();
  }

  return &static JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification;
}

id static JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification.getter()
{
  if (qword_E23F88 != -1)
  {
    swift_once();
  }

  v1 = static JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification;

  return v1;
}

uint64_t JSCapabilitiesController.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a1;
  v19[1] = a2;
  sub_F46A0(a3, v20);
  if (v20[3])
  {
    sub_F46A0(v20, v18);

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000022 && 0x8000000000B7F2E0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = *NSUserDefaults.mobileiPod.unsafeMutableAddressor();
        if (v6)
        {
          v7 = v6;
          NSUserDefaults.hasUserRequestedSubscriptionHidden.setter(v17);
        }

        goto LABEL_15;
      }

      if (a1 == 0xD000000000000021 && 0x8000000000B7F330 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v8 = [objc_opt_self() sharedManager];
        [v8 setCachedAccountNotificationsShowInLibraryEnabled:v17];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF3FA0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_AF4EC0;
        *(inited + 32) = 0xD00000000000002ALL;
        v10 = inited + 32;
        *(inited + 40) = 0x8000000000B7F2B0;
        *(inited + 48) = v17;
        v11 = sub_98594(inited);
        swift_setDeallocating();
        sub_12E1C(v10, &qword_DF3FA8);
        v12 = [objc_opt_self() defaultCenter];
        if (qword_E23F88 != -1)
        {
          swift_once();
        }

        v13 = static JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification;
        sub_3E9030(v11);

        isa = sub_AB8FD0().super.isa;

        [v12 postNotificationName:v13 object:v3 userInfo:isa];

        goto LABEL_15;
      }

      if (a1 == 0xD000000000000018 && 0x8000000000B7F380 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v16 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isUnifiedMessagesEnabled;
        swift_beginAccess();
        *(v3 + v16) = v17;
LABEL_15:
        __swift_destroy_boxed_opaque_existential_0(v18);
        sub_12E1C(v20, &unk_DE8E40);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
  }

  return sub_12E1C(v19, &unk_E27200);
}

uint64_t sub_9D9A88()
{
}

uint64_t sub_9D9C18()
{

  return swift_deallocObject();
}

uint64_t sub_9D9C60()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_259(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_9D9CE8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_9D9D4C()
{

  return swift_deallocObject();
}

unint64_t sub_9D9DA4()
{
  result = qword_E25718;
  if (!qword_E25718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25718);
  }

  return result;
}

uint64_t sub_9D9DF8()
{

  return swift_deallocObject();
}

uint64_t JSSongDetailComponentController.init(song:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v5 = sub_AB85F0();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v6;
  v8 = sub_99F2EC(inited);
  swift_setDeallocating();
  sub_9DA0A0(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF4EC0;
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25758);
  *(v9 + 32) = v8;
  v13[0] = v9;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = 0xD000000000000014;
  v13[4] = 0x8000000000B7F740;
  v14 = 0;
  v10 = sub_A874E4(v13, v2);
  v11 = sub_AB86C0();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

uint64_t sub_9DA0A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for JSSongDetailComponentController()
{
  result = qword_E25788;
  if (!qword_E25788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for JSAlertComponentController()
{
  result = qword_E257C0;
  if (!qword_E257C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *JSHTTPRequestCoordinator.shared.unsafeMutableAddressor()
{
  if (qword_E23F90 != -1)
  {
    swift_once();
  }

  return &static JSHTTPRequestCoordinator.shared;
}

uint64_t JSHTTPRequestCoordinator.scheduleAuthenticationAndRetry(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_9DBA74(v4, v1, v2, v3);
}

uint64_t sub_9DA2FC(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() sharedPrivacyInfo];
  v5 = [v4 privacyAcknowledgementRequiredForMusic];

  if (!v5)
  {
    return (*&stru_68.sectname[swift_isaMask & *a1])();
  }

  swift_beginAccess();
  v6 = *(v2 + 32);
  if (*(v6 + 16) && (v7 = sub_9A4E18(), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v22 = v9;
    swift_endAccess();
    v21 = a1;
    __chkstk_darwin();
    v19[2] = &v21;
    swift_bridgeObjectRetain_n();
    v10 = sub_9E6DE8(sub_9DBD58, v19, v9);

    if (v10)
    {
    }

    v16 = a1;
    sub_AB9730();
    if (*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v22 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v17 = v22;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    sub_9A3430(v17, isUniquelyReferenced_nonNull_native);
    v15 = v20;
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_AF82B0;
    *(v12 + 32) = a1;
    swift_beginAccess();
    v13 = a1;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    sub_9A3430(v12, v14);
    v15 = v22;
  }

  *(v2 + 32) = v15;
  return swift_endAccess();
}

Swift::Int sub_9DA594()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_9DA674()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_9DA78C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9DA888()
{
  sub_AB93F0();
}

Swift::Int sub_9DA9E4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_9DAADC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_9DABF0()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_9DAD2C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_9DAE4C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_9DAFBC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9DB0AC()
{
  sub_AB93F0();
}

uint64_t sub_9DB17C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_9DBDAC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_9DB1AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5522759;
  v5 = 0xE500000000000000;
  v6 = 0x4843544150;
  v7 = 0xE300000000000000;
  v8 = 5526864;
  if (v2 != 4)
  {
    v8 = 0x4554454C4544;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1145128264;
  if (v2 != 1)
  {
    v9 = 1414745936;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

Swift::Int sub_9DB268()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(qword_B3DD28[v1]);
  return sub_ABB610();
}

Swift::Int sub_9DB2F0()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(qword_B3DD28[v1]);
  return sub_ABB610();
}

uint64_t sub_9DB33C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore29SpecialHTTPResponseStatusCodeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

id JSDeferrableRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSDeferrableRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_9DB444()
{
  v1 = v0;
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = sub_99E624(_swiftEmptyArrayStorage);
  v0[5] = 0;
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for PrivacyAcknowledgementObserver();
  swift_allocObject();
  v1[5] = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_9DBE30, v2);

  return v1;
}

uint64_t sub_9DB4F8(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a1 & 1) == 0)
    {
      sub_9DB558();
    }
  }

  return result;
}

uint64_t sub_9DB558()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (*(v1 + 16) && (v2 = sub_9A4E18(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v4 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  sub_9A0978(0);
  result = swift_endAccess();
  if (!(v4 >> 62))
  {
    v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_7;
    }
  }

  result = sub_ABB060();
  v6 = result;
  if (!result)
  {
  }

LABEL_7:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_9BAB44(i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      v9 = v8;
      (*&stru_68.sectname[swift_isaMask & *v8])();
    }
  }

  __break(1u);
  return result;
}

void *sub_9DB6C0()
{
  type metadata accessor for JSHTTPRequestCoordinator();
  v0 = swift_allocObject();
  result = sub_9DB444();
  static JSHTTPRequestCoordinator.shared = v0;
  return result;
}

uint64_t static JSHTTPRequestCoordinator.shared.getter()
{
  if (qword_E23F90 != -1)
  {
    swift_once();
  }
}

void (*JSHTTPRequestCoordinator.authenticationDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_31232C;
}

Swift::Int sub_9DB7EC()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_9DB860()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_9DB8B4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4F240;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t JSHTTPRequestCoordinator.deinit()
{
  sub_176DC(v0 + 16);

  return v0;
}

uint64_t JSHTTPRequestCoordinator.__deallocating_deinit()
{
  sub_176DC(v0 + 16);

  return swift_deallocClassInstance();
}

BOOL sub_9DB9A0()
{
  v5[0] = sub_AB9370();
  v5[1] = v0;
  v4[2] = v5;
  if ((sub_1B39BC(sub_109BB0, v4, &off_D4F278) & 1) != 0 || (v6._countAndFlagsBits = 0x2D79786F7270, v6._object = 0xE600000000000000, sub_AB9530(v6)))
  {

    return 0;
  }

  else
  {
    v7._countAndFlagsBits = 761488755;
    v7._object = 0xE400000000000000;
    v2 = sub_AB9530(v7);

    return !v2;
  }
}

uint64_t sub_9DBA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v11, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t _s11MusicJSCore29SpecialHTTPResponseStatusCodeO8rawValueACSgSi_tcfC_0(uint64_t result)
{
  if (result > 402)
  {
    if (result > 900)
    {
      if (result == 901)
      {
        return 6;
      }

      if (result == 950)
      {
        return 7;
      }
    }

    else
    {
      if (result == 403)
      {
        return 4;
      }

      if (result == 900)
      {
        return 5;
      }
    }
  }

  else if (result > 399)
  {
    if (result == 400)
    {
      return 2;
    }

    if (result == 401)
    {
      return 3;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result == 200)
    {
      return 1;
    }
  }

  return 8;
}

unint64_t sub_9DBC00()
{
  result = qword_E257D0;
  if (!qword_E257D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E257D0);
  }

  return result;
}

unint64_t sub_9DBCAC()
{
  result = qword_E258B0;
  if (!qword_E258B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E258B0);
  }

  return result;
}

unint64_t sub_9DBD04()
{
  result = qword_E258B8;
  if (!qword_E258B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E258B8);
  }

  return result;
}

uint64_t sub_9DBDAC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4EB18;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_9DBDF8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t JSSubscriptionStatusResponse.EligibilityStatus.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x656C626967696C65;
  }

  return 0x6967696C45746F6ELL;
}

uint64_t sub_9DBE9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x656C626967696C65;
  if (v2 != 1)
  {
    v4 = 0x6967696C45746F6ELL;
    v3 = 0xEB00000000656C62;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656C626967696C65;
  if (*a2 != 1)
  {
    v8 = 0x6967696C45746F6ELL;
    v7 = 0xEB00000000656C62;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

Swift::Int sub_9DBFB0()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9DC05C()
{
  sub_AB93F0();
}

Swift::Int sub_9DC0F4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9DC19C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore28JSSubscriptionStatusResponseC011EligibilityD0O8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_9DC1CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x656C626967696C65;
  if (v2 != 1)
  {
    v5 = 0x6967696C45746F6ELL;
    v4 = 0xEB00000000656C62;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t JSSubscriptionStatusResponse.AccountStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6373627553746F6ELL;
  v2 = 0x6269726373627573;
  v3 = 0x6564696C67;
  if (a1 != 3)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_9DC2F0()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9DC3E4()
{
  sub_AB93F0();
}

Swift::Int sub_9DC4C4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9DC5B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore28JSSubscriptionStatusResponseC07AccountD0O8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_9DC5E4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006465626972;
  v4 = 0x6373627553746F6ELL;
  v5 = 0xEA00000000006465;
  v6 = 0x6269726373627573;
  v7 = 0xE500000000000000;
  v8 = 0x6564696C67;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x8000000000B6C1F0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t JSSubscriptionStatusResponse.CarrierBundlingStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x64656B6E696C6E75;
  v2 = 0x656C626967696C65;
  v3 = 0x6967696C45746F6ELL;
  if (a1 != 3)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000017;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_9DC74C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9DC83C()
{
  sub_AB93F0();
}

Swift::Int sub_9DC918()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9DCA04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore28JSSubscriptionStatusResponseC015CarrierBundlingD0O8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_9DCA34(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x64656B6E696C6E75;
  v5 = 0xE800000000000000;
  v6 = 0x656C626967696C65;
  v7 = 0xEB00000000656C62;
  v8 = 0x6967696C45746F6ELL;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000017;
    v3 = 0x8000000000B7CAE0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t JSSubscriptionStatusResponse.Capability.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000012;
  if (a1 != 2)
  {
    v1 = 0xD000000000000014;
  }

  v2 = 0xD00000000000001DLL;
  if (!a1)
  {
    v2 = 0xD000000000000013;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

Swift::Int sub_9DCB84()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9DCC50()
{
  sub_AB93F0();
}

Swift::Int sub_9DCD08()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9DCDD0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore28JSSubscriptionStatusResponseC10CapabilityO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_9DCE00(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "voiceActivatedCatalogPlayback";
  v4 = 0xD000000000000012;
  v5 = "anyCatalogPlayback";
  if (v2 != 3)
  {
    v5 = "cloudLibraryEligible";
  }

  if (v2 != 2)
  {
    v4 = 0xD000000000000014;
    v3 = v5;
  }

  v6 = 0xD00000000000001DLL;
  if (*v1)
  {
    v7 = "fullCatalogPlayback";
  }

  else
  {
    v6 = 0xD000000000000013;
    v7 = "needsManualVerification";
  }

  if (*v1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v6 = v4;
    v8 = v3;
  }

  *a1 = v6;
  a1[1] = v8 | 0x8000000000000000;
}

uint64_t JSSubscriptionStatusResponse.init(subscriptionStatus:isFinal:type:)(void *a1, char a2, uint64_t a3)
{
  v104 = *a3;
  v105 = *(a3 + 16);
  v103 = *(a3 + 32);
  v106 = *(a3 + 40);
  v5 = sub_97420(_swiftEmptyArrayStorage);
  sub_13C80(0, &qword_DF0600);
  v6 = static ICUserIdentityStore.activeAccountDSID.getter();
  v110 = a1;
  if (v6)
  {
    v7 = v6;
    v8 = [v6 stringValue];
    v9 = sub_AB92A0();
    v11 = v10;

    *(&v114 + 1) = &type metadata for String;
    *&v113 = v9;
    *(&v113 + 1) = v11;
    sub_9ACFC(&v113, v111);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v5;
    sub_9330C(v111, 0xD000000000000011, 0x8000000000B7FA70, isUniquelyReferenced_nonNull_native);

    v5 = v112;
  }

  v13 = [a1 sessionIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = sub_AB92A0();
    v17 = v16;

    *(&v114 + 1) = &type metadata for String;
    *&v113 = v15;
    *(&v113 + 1) = v17;
    sub_9ACFC(&v113, v111);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v5;
    sub_9330C(v111, 0xD000000000000011, 0x8000000000B7FA50, v18);
    v5 = v112;
  }

  v19 = [a1 statusType];
  v20 = [a1 reasonType];
  if (v19 == &dword_0 + 3)
  {
    v21 = 0;
    v23 = 0x6564696C67;
    v24 = 0xE500000000000000;
    v22 = 3;
  }

  else if (v19 == &dword_0 + 2)
  {
    if (v20 == &dword_4)
    {
      v22 = 0;
      v21 = 0;
      v24 = 0x8000000000B6C1F0;
      v23 = 0xD000000000000013;
    }

    else
    {
      v21 = 0;
      v22 = 1;
      v23 = 0x6373627553746F6ELL;
      v24 = 0xED00006465626972;
    }
  }

  else if (v19 == &dword_0 + 1)
  {
    v21 = 1;
    v22 = 2;
    v23 = 0x6269726373627573;
    v24 = 0xEA00000000006465;
  }

  else
  {
    v21 = 0;
    v23 = 0x6E776F6E6B6E75;
    v24 = 0xE700000000000000;
    v22 = 4;
  }

  v25 = 0x656C626967696C65;
  *(&v114 + 1) = &type metadata for String;
  *&v113 = v23;
  *(&v113 + 1) = v24;
  sub_9ACFC(&v113, v111);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v5;
  sub_9330C(v111, 0x53746E756F636361, 0xED00007375746174, v26);
  v27 = v112;
  *(&v114 + 1) = &type metadata for Bool;
  LOBYTE(v113) = v21;
  sub_9ACFC(&v113, v111);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v27;
  sub_9330C(v111, 0x7263736275537369, 0xEC00000064656269, v28);
  v29 = v112;
  v30 = [a1 carrierBundlingStatusType];
  if (v30 <= 1)
  {
    if (!v30)
    {
      v31 = 0x6E776F6E6B6E75;
      v33 = 0xE700000000000000;
      v32 = 4;
      goto LABEL_25;
    }

    if (v30 == (&dword_0 + 1))
    {
      v33 = 0xE800000000000000;
      v32 = 2;
      v31 = 0x656C626967696C65;
      goto LABEL_25;
    }

LABEL_86:
    *&v113 = 0;
    *(&v113 + 1) = 0xE000000000000000;
    v101 = v30;
    sub_ABAD90(66);
    v117._countAndFlagsBits = 0xD000000000000040;
    v117._object = 0x8000000000B7F900;
    sub_AB94A0(v117);
    *&v111[0] = v101;
    type metadata accessor for ICMusicSubscriptionCarrierBundlingStatusType(0);
    sub_ABAF70();
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

  if (v30 == &dword_4)
  {
    v33 = 0x8000000000B7CAE0;
    v32 = 1;
    v31 = 0xD000000000000017;
    goto LABEL_25;
  }

  if (v30 != (&dword_0 + 3))
  {
    if (v30 == (&dword_0 + 2))
    {
      v32 = 0;
      v31 = 0x64656B6E696C6E75;
      v33 = 0xE800000000000000;
      goto LABEL_25;
    }

    goto LABEL_86;
  }

  v31 = 0x6967696C45746F6ELL;
  v32 = 3;
  v33 = 0xEB00000000656C62;
LABEL_25:
  *(&v114 + 1) = &type metadata for String;
  *&v113 = v31;
  *(&v113 + 1) = v33;
  sub_9ACFC(&v113, v111);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v29;
  sub_9330C(v111, 0xD000000000000015, 0x8000000000B7F950, v34);
  v35 = v112;
  v108 = a3;
  if (v22 == 2)
  {
    goto LABEL_30;
  }

  v36 = sub_ABB3C0();

  if (v36)
  {
    goto LABEL_31;
  }

  if (v32 == 2)
  {
LABEL_30:

    goto LABEL_31;
  }

  v37 = sub_ABB3C0();

  if ((v37 & 1) == 0)
  {
    if (!v32)
    {
      goto LABEL_30;
    }

    v85 = sub_ABB3C0();

    if (v85)
    {
      goto LABEL_31;
    }

    if (v22 <= 1 && v22)
    {
    }

    else
    {
      v86 = sub_ABB3C0();

      if ((v86 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    v38 = 0xEB00000000656C62;
    if (v32 == 3)
    {
    }

    else
    {
      v87 = sub_ABB3C0();

      if ((v87 & 1) == 0)
      {
LABEL_77:
        v25 = 0x6E776F6E6B6E75;
        v38 = 0xE700000000000000;
        goto LABEL_32;
      }
    }

    v25 = 0x6967696C45746F6ELL;
    goto LABEL_32;
  }

LABEL_31:
  v38 = 0xE800000000000000;
LABEL_32:
  *(&v114 + 1) = &type metadata for String;
  *&v113 = v25;
  *(&v113 + 1) = v38;
  sub_9ACFC(&v113, v111);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v35;
  sub_9330C(v111, 0xD000000000000011, 0x8000000000B7F970, v39);
  v109 = v112;
  v40 = [a1 capabilities];
  v41 = 0;
  v42 = _swiftEmptyArrayStorage;
  do
  {
    v44 = *(&off_D4F668 + v41 + 32);
    if (v44 <= 1)
    {
      if (*(&off_D4F668 + v41 + 32))
      {
        if ((v40 & 2) == 0)
        {
          goto LABEL_34;
        }

        v45 = 0xD00000000000001DLL;
        v46 = "fullCatalogPlayback";
      }

      else
      {
        if ((v40 & 1) == 0)
        {
          goto LABEL_34;
        }

        v45 = 0xD000000000000013;
        v46 = "needsManualVerification";
      }
    }

    else if (v44 == 2)
    {
      if ((v40 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      v45 = 0xD000000000000012;
      v46 = "voiceActivatedCatalogPlayback";
    }

    else if (v44 == 3)
    {
      if ((v40 & 0x100) == 0)
      {
        goto LABEL_34;
      }

      v45 = 0xD000000000000014;
      v46 = "anyCatalogPlayback";
    }

    else
    {
      if ((v40 & 0x10000) == 0)
      {
        goto LABEL_34;
      }

      v45 = 0xD000000000000014;
      v46 = "cloudLibraryEligible";
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_6B0F0(0, *(v42 + 2) + 1, 1, v42);
    }

    v48 = *(v42 + 2);
    v47 = *(v42 + 3);
    if (v48 >= v47 >> 1)
    {
      v42 = sub_6B0F0((v47 > 1), v48 + 1, 1, v42);
    }

    *(v42 + 2) = v48 + 1;
    v43 = &v42[16 * v48];
    *(v43 + 4) = v45;
    *(v43 + 5) = v46 | 0x8000000000000000;
LABEL_34:
    ++v41;
  }

  while (v41 != 5);
  *(&v114 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  *&v113 = v42;
  sub_9ACFC(&v113, v111);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v109;
  sub_9330C(v111, 0x696C696261706163, 0xEC00000073656974, v49);
  v50 = v112;
  v51 = v110;
  v52 = [v110 isDiscoveryModeEligible];
  *(&v114 + 1) = &type metadata for Bool;
  LOBYTE(v113) = v52;
  sub_9ACFC(&v113, v111);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v50;
  sub_9330C(v111, 0xD000000000000017, 0x8000000000B7F990, v53);
  v54 = v112;
  v55 = [v110 isHeadOfHousehold];
  *(&v114 + 1) = &type metadata for Bool;
  LOBYTE(v113) = v55;
  sub_9ACFC(&v113, v111);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v54;
  sub_9330C(v111, 0xD000000000000011, 0x8000000000B7F9B0, v56);
  v57 = v112;
  v58 = [v110 reasonType] == &dword_0 + 2;
  *(&v114 + 1) = &type metadata for Bool;
  LOBYTE(v113) = v58;
  sub_9ACFC(&v113, v111);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v57;
  sub_9330C(v111, 0xD000000000000014, 0x8000000000B7F9D0, v59);
  v60 = v112;
  v61 = [v110 hasFamily];
  *(&v114 + 1) = &type metadata for Bool;
  LOBYTE(v113) = v61;
  sub_9ACFC(&v113, v111);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v60;
  sub_9330C(v111, 0x6C696D6146736168, 0xE900000000000079, v62);
  v63 = v112;
  v64 = [v110 hasFamilyGreaterThanOneMember];
  *(&v114 + 1) = &type metadata for Bool;
  LOBYTE(v113) = v64;
  sub_9ACFC(&v113, v111);
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v63;
  sub_9330C(v111, 0xD000000000000010, 0x8000000000B7F9F0, v65);
  v66 = v112;
  v67 = [v110 isMinorAccountHolder];
  *(&v114 + 1) = &type metadata for Bool;
  LOBYTE(v113) = v67;
  sub_9ACFC(&v113, v111);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v66;
  sub_9330C(v111, 0x726F6E694D7369, 0xE700000000000000, v68);
  v69 = v112;
  v70 = [v110 termsStatusList];
  if (v70)
  {
    v71 = v70;
    sub_13C80(0, &qword_E24E48);
    v72 = sub_AB9760();

    if (v72 >> 62)
    {
      goto LABEL_80;
    }

    for (i = *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v74 = 0;
      while (1)
      {
        if ((v72 & 0xC000000000000001) != 0)
        {
          v75 = sub_9BB0A4(v74, v72);
        }

        else
        {
          if (v74 >= *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_79;
          }

          v75 = *(v72 + 8 * v74 + 32);
        }

        v76 = v75;
        v77 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          break;
        }

        if ([v75 type] == &dword_0 + 1)
        {

          v79 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v76, "acceptedVersion")}];
          v80 = sub_13C80(0, &qword_DF1300);
          *(&v114 + 1) = v80;
          *&v113 = v79;
          sub_9ACFC(&v113, v111);
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v112 = v69;
          sub_9330C(v111, 0xD000000000000019, 0x8000000000B7FA10, v81);
          v82 = v112;
          v83 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v76, "currentVersion")}];
          *(&v114 + 1) = v80;
          *&v113 = v83;
          sub_9ACFC(&v113, v111);
          v84 = swift_isUniquelyReferenced_nonNull_native();
          v112 = v82;
          sub_9330C(v111, 0xD000000000000017, 0x8000000000B7FA30, v84);

          v69 = v112;
          goto LABEL_82;
        }

        ++v74;
        if (v77 == i)
        {
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      ;
    }

LABEL_81:

LABEL_82:
    v78 = v108;
    v51 = v110;
  }

  else
  {
    v78 = v108;
  }

  v88 = [v51 responseDictionary];
  v89 = sub_AB8FF0();

  *(&v114 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
  *&v113 = v89;
  sub_9ACFC(&v113, v111);
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v69;
  sub_9330C(v111, 0x6F70736552776172, 0xEF6174614465736ELL, v90);
  v91 = v112;
  *(&v114 + 1) = &type metadata for Bool;
  LOBYTE(v113) = a2 & 1;
  sub_9ACFC(&v113, v111);
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v91;
  sub_9330C(v111, 0x6C616E69467369, 0xE700000000000000, v92);
  v93 = v112;
  *(v107 + OBJC_IVAR____TtC11MusicJSCore28JSSubscriptionStatusResponse_attributes) = v112;
  v94 = v106;
  v96 = v104;
  v95 = v105;
  v97 = v103;
  if (*(v78 + 40) == 255)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_AF4EC0;
    *(v98 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
    *(v98 + 32) = v93;

    v94 = 0;
    v95 = 0uLL;
    v96 = v98;
    v97 = 1;
  }

  v113 = v96;
  v114 = v95;
  v115 = v97;
  v116 = v94;

  sub_9DE22C(v78, v111);
  v99 = JSObject.init(type:)(&v113);

  sub_9DE29C(v78);

  return v99;
}

uint64_t JSSubscriptionStatusResponse.isMinor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore28JSSubscriptionStatusResponse_attributes);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_2EBF88(0x726F6E694D7369, 0xE700000000000000);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_808B0(*(v1 + 56) + 32 * v2, v6);
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

uint64_t _s11MusicJSCore28JSSubscriptionStatusResponseC011EligibilityD0O8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4F3E8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t _s11MusicJSCore28JSSubscriptionStatusResponseC07AccountD0O8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4F450;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t _s11MusicJSCore28JSSubscriptionStatusResponseC015CarrierBundlingD0O8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4F4E8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t _s11MusicJSCore28JSSubscriptionStatusResponseC10CapabilityO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4F580;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_9DE22C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E258C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9DE29C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E258C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_9DE308()
{
  result = qword_E258D0;
  if (!qword_E258D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E258D0);
  }

  return result;
}

unint64_t sub_9DE360()
{
  result = qword_E258D8;
  if (!qword_E258D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E258D8);
  }

  return result;
}

unint64_t sub_9DE3B8()
{
  result = qword_E258E0;
  if (!qword_E258E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E258E0);
  }

  return result;
}

unint64_t sub_9DE410()
{
  result = qword_E258E8;
  if (!qword_E258E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E258E8);
  }

  return result;
}

unint64_t sub_9DE468()
{
  result = qword_E258F0;
  if (!qword_E258F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E258F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E258F0);
  }

  return result;
}

void (*JSSearchLandingUpsell.marketingID.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BCE8C;
}

uint64_t JSSearchLandingUpsell.$marketingID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$marketingID.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__marketingID;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD154;
}

uint64_t (*JSSearchLandingUpsell.headline.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSSearchLandingUpsell.$headline.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$headline.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__headline;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t (*JSSearchLandingUpsell.subtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSSearchLandingUpsell.$subtitle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$subtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__subtitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t (*JSSearchLandingUpsell.primaryButtonTitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSSearchLandingUpsell.$primaryButtonTitle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$primaryButtonTitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__primaryButtonTitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t (*JSSearchLandingUpsell.accessoryButtonTitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSSearchLandingUpsell.$accessoryButtonTitle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$accessoryButtonTitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__accessoryButtonTitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t (*JSSearchLandingUpsell.tallArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSSearchLandingUpsell.$tallArtwork.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25968);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$tallArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25968);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__tallArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t (*JSSearchLandingUpsell.wideArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSSearchLandingUpsell.$wideArtwork.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25968);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$wideArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25968);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__wideArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t (*JSSearchLandingUpsell.tallVideoArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSSearchLandingUpsell.$tallVideoArtwork.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9E8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25988);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$tallVideoArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9E8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__tallVideoArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25988);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t sub_9E04A4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_AB5520();
}

uint64_t (*JSSearchLandingUpsell.wideVideoArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSSearchLandingUpsell.$wideVideoArtwork.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9E8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25988);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$wideVideoArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9E8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__wideVideoArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25988);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t JSSearchLandingUpsell.shouldDisplayCloseButton.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_9E092C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_9E09B0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

uint64_t JSSearchLandingUpsell.shouldDisplayCloseButton.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

uint64_t (*JSSearchLandingUpsell.shouldDisplayCloseButton.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSSearchLandingUpsell.$shouldDisplayCloseButton.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$shouldDisplayCloseButton.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__shouldDisplayCloseButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t JSSearchLandingUpsell.didSelectCloseButton(snapshotImpressions:pageDetailsProvider:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v7 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF85F0;
  *(v8 + 56) = ObjectType;
  *(v8 + 32) = v3;
  if (a1)
  {
    objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
    v9 = a2;
    v10 = v3;

    v12 = sub_9ED890(v11, 0, a2);

    *(v8 + 88) = sub_13C80(0, &qword_DFA720);
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(v8 + 88) = sub_13C80(0, &qword_DFA720);
    v13 = v3;
  }

  v12 = [objc_allocWithZone(NSNull) init];
LABEL_8:
  *(v8 + 64) = v12;
  sub_13C80(0, &qword_DE8ED0);
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = _swiftEmptyArrayStorage;
  *(v14 + 32) = 0xD00000000000001BLL;
  *(v14 + 40) = 0x8000000000B7FB10;
  *(v14 + 48) = v3;
  *(v14 + 56) = v7;
  *(v14 + 64) = 0;
  v15 = v3;
  v16 = v7;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v14);
}

uint64_t sub_9E0FF8()
{

  return swift_deallocObject();
}

uint64_t JSSearchLandingUpsell.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a1;
  v11[1] = a2;
  sub_F46A0(a3, v12);
  if (!v12[3])
  {

LABEL_8:
    JSViewModel.updateProperty(_:value:)(a1, a2, a3);
    return sub_12E1C(v11, &unk_E27200);
  }

  sub_F46A0(v12, v10);

  if (swift_dynamicCast())
  {
    if (a1 == 0x6E6974656B72616DLL && a2 == 0xEB00000000644967 || (sub_ABB3C0() & 1) != 0 || a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0 || a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0 || a1 == 0xD000000000000012 && 0x8000000000B57F70 == a2 || (sub_ABB3C0() & 1) != 0 || a1 == 0xD000000000000014 && 0x8000000000B534C0 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      goto LABEL_50;
    }
  }

  type metadata accessor for JSArtwork();
  if (swift_dynamicCast())
  {
    if (a1 == 0x777472416C6C6174 && a2 == 0xEB000000006B726FLL || (sub_ABB3C0() & 1) != 0 || a1 == 0x7774724165646977 && a2 == 0xEB000000006B726FLL || (sub_ABB3C0() & 1) != 0)
    {
      goto LABEL_50;
    }
  }

  type metadata accessor for JSVideoArtwork();
  if (swift_dynamicCast())
  {
    if (a1 == 0xD000000000000010 && 0x8000000000B7FB50 == a2 || (sub_ABB3C0() & 1) != 0 || a1 == 0xD000000000000010 && 0x8000000000B7FB70 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      goto LABEL_50;
    }
  }

  if (!swift_dynamicCast() || (a1 != 0xD000000000000018 || 0x8000000000B7FB30 != a2) && (sub_ABB3C0() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
    goto LABEL_8;
  }

LABEL_50:
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v3;
  sub_AB5520();
  __swift_destroy_boxed_opaque_existential_0(v10);
  sub_12E1C(v12, &unk_DE8E40);
}

id JSSearchLandingUpsell.init(type:)(uint64_t a1)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25988);
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v33 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960);
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__marketingID;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_AB54D0();
  v14 = *(v10 + 32);
  v14(v1 + v13, v12, v9);
  v15 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__headline;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_AB54D0();
  v14(v1 + v15, v12, v9);
  v16 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__subtitle;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_AB54D0();
  v14(v1 + v16, v12, v9);
  v17 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__primaryButtonTitle;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_AB54D0();
  v14(v1 + v17, v12, v9);
  v18 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__accessoryButtonTitle;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_AB54D0();
  v14(v1 + v18, v12, v9);
  v19 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__tallArtwork;
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25950);
  sub_AB54D0();
  v20 = *(v6 + 32);
  v21 = v33;
  v20(v1 + v19, v8, v33);
  v22 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__wideArtwork;
  v41 = 0;
  sub_AB54D0();
  v20(v1 + v22, v8, v21);
  v23 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__tallVideoArtwork;
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25978);
  v24 = v34;
  sub_AB54D0();
  v25 = v36;
  v26 = *(v35 + 32);
  v26(v1 + v23, v24, v36);
  v27 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__wideVideoArtwork;
  v41 = 0;
  sub_AB54D0();
  v26(v1 + v27, v24, v25);
  v28 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__shouldDisplayCloseButton;
  LOBYTE(v41) = 0;
  v29 = v37;
  sub_AB54D0();
  (*(v38 + 32))(v1 + v28, v29, v39);
  v30 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v31 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v31 = 0;
  v31[1] = 0;
  return JSObject.init(type:)(v40);
}

uint64_t sub_9E1AEC()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__marketingID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__headline, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__subtitle, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__primaryButtonTitle, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__accessoryButtonTitle, v2);
  v4 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__tallArtwork;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__wideArtwork, v5);
  v7 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__tallVideoArtwork;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25988);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__wideVideoArtwork, v8);
  v10 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__shouldDisplayCloseButton;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  v12 = *(*(v11 - 8) + 8);

  return v12(v0 + v10, v11);
}

uint64_t type metadata accessor for JSSearchLandingUpsell()
{
  result = qword_E259C8;
  if (!qword_E259C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9E1F7C()
{
  sub_299798(319, &qword_DFE858);
  if (v0 <= 0x3F)
  {
    sub_3641C(319, &qword_E259D8, &qword_E25950);
    if (v1 <= 0x3F)
    {
      sub_3641C(319, &qword_E259E0, &qword_E25978);
      if (v2 <= 0x3F)
      {
        sub_299798(319, &qword_DFC638);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

id JSDevice.init(rootElementSizing:)(void *a1, id a2)
{
  v3 = v2;
  v6 = sub_AB7CC0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSDevice_mainScreen) = 0;
  v10 = sub_13C80(0, &qword_DE8ED0);
  *v9 = sub_ABA150();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = sub_AB7CF0();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    v49 = a2;
    a2 = [objc_opt_self() currentDeviceInfo];
    v12 = objc_allocWithZone(ICStoreRequestContext);
    v58 = UIScreen.Dimensions.size.getter;
    v59 = 0;
    aBlock = _NSConcreteStackBlock;
    v55 = 1107296256;
    v56 = sub_41A314;
    v57 = &block_descriptor_260;
    v13 = _Block_copy(&aBlock);
    v11 = [v12 initWithBlock:v13];
    _Block_release(v13);

    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      v50 = v11;
      v51 = v3;
      v52 = v10;
      v53 = a1;
      v14 = [a2 productVersion];
      v15 = sub_AB92A0();
      v17 = v16;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
      inited = swift_initStackObject();
      *(inited + 32) = 0xD000000000000011;
      *(inited + 16) = xmmword_B00DA0;
      *(inited + 40) = 0x8000000000B7FC90;
      v19 = [objc_allocWithZone(NSNumber) initWithBool:*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor()];
      v20 = sub_13C80(0, &qword_DF1300);
      *(inited + 48) = v19;
      *(inited + 72) = v20;
      *(inited + 80) = 1684632935;
      *(inited + 88) = 0xE400000000000000;
      v21 = [a2 deviceGUID];
      if (v21)
      {
        v22 = v21;
        v23 = sub_AB92A0();
        v25 = v24;

        v26 = (inited + 96);
        *(inited + 120) = &type metadata for String;
        if (v25)
        {
          *v26 = v23;
          goto LABEL_8;
        }
      }

      else
      {
        v26 = (inited + 96);
        *(inited + 120) = &type metadata for String;
      }

      *v26 = 0;
      v25 = 0xE000000000000000;
LABEL_8:
      *(inited + 104) = v25;
      *(inited + 128) = 0x6C65646F6DLL;
      *(inited + 136) = 0xE500000000000000;
      v27 = [a2 deviceClassName];
      v28 = sub_AB92A0();
      v30 = v29;

      *(inited + 144) = v28;
      *(inited + 152) = v30;
      *(inited + 168) = &type metadata for String;
      strcpy((inited + 176), "systemVersion");
      *(inited + 190) = -4864;
      *(inited + 192) = v15;
      *(inited + 200) = v17;
      *(inited + 216) = &type metadata for String;
      strcpy((inited + 224), "buildVersion");
      *(inited + 237) = 0;
      *(inited + 238) = -5120;
      v31 = [a2 buildVersion];
      if (v31)
      {
        v32 = v31;
        v33 = sub_AB92A0();
        v35 = v34;

        v36 = (inited + 240);
        *(inited + 264) = &type metadata for String;
        a1 = v50;
        if (v35)
        {
          *v36 = v33;
          goto LABEL_13;
        }
      }

      else
      {
        v36 = (inited + 240);
        *(inited + 264) = &type metadata for String;
        a1 = v50;
      }

      *v36 = 0;
      v35 = 0xE000000000000000;
LABEL_13:
      *(inited + 248) = v35;
      *(inited + 272) = 0x6E65674172657375;
      *(inited + 280) = 0xE900000000000074;
      v37 = [a1 userAgent];
      v6 = sub_AB92A0();
      v39 = v38;

      *(inited + 312) = &type metadata for String;
      *(inited + 288) = v6;
      *(inited + 296) = v39;
      v40 = sub_97420(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_AF4EC0;
      *(v41 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
      *(v41 + 32) = v40;
      LOBYTE(v6) = 1;
      aBlock = v41;
      v55 = 1;
      v57 = 0;
      v58 = 0;
      v56 = 0;
      LOBYTE(v59) = 0;
      v42 = JSObject.init(type:)(&aBlock);
      v43 = qword_E23F48;
      v11 = v42;
      if (v43 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_19:
  swift_once();
LABEL_14:
  v44 = static JSBridge.shared;
  v45 = swift_allocObject();
  *(v45 + 16) = 0x656369766544;
  *(v45 + 24) = 0xE600000000000000;
  *(v45 + 32) = v11;
  *(v45 + 40) = v44;
  *(v45 + 48) = v6;
  v46 = v11;
  v47 = v44;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3204, v45);

  if (v53)
  {
    JSDevice.configureWithRootElementSizing(_:isRequiredForInitialSetup:)(v53, v49, 1);
    swift_unknownObjectRelease();
  }

  return v46;
}

uint64_t JSDevice.configureWithRootElementSizing(_:isRequiredForInitialSetup:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  result = swift_getObjectType();
  v8 = OBJC_IVAR____TtC11MusicJSCore8JSDevice_mainScreen;
  if (!*&v4[OBJC_IVAR____TtC11MusicJSCore8JSDevice_mainScreen])
  {
    v9 = result;
    v10 = type metadata accessor for JSScreen();
    objc_allocWithZone(v10);
    v11 = swift_unknownObjectRetain();
    v12 = JSScreen.init(rootElementSizing:isRequiredForInitialSetup:)(v11, a2, a3 & 1);
    v13 = *&v4[v8];
    *&v4[v8] = v12;
    v14 = v12;

    if (a3)
    {
      if (qword_E23F48 != -1)
      {
        swift_once();
      }

      v15 = static JSBridge.shared;
      v29[3] = v10;
      v29[0] = v14;
      sub_13C80(0, &qword_DE8ED0);
      sub_F46A0(v29, v28);
      v16 = swift_allocObject();
      *(v16 + 16) = 1;
      v17 = v28[1];
      *(v16 + 24) = v28[0];
      *(v16 + 40) = v17;
      *(v16 + 56) = 0x657263536E69616DLL;
      *(v16 + 64) = 0xEA00000000006E65;
      *(v16 + 72) = v4;
      *(v16 + 80) = v15;
      *(v16 + 88) = 1;
      v18 = v14;
      v19 = v4;
      v20 = v15;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF020, v16);

      return sub_9BC10(v29);
    }

    else
    {
      if (qword_E23F48 != -1)
      {
        swift_once();
      }

      v21 = static JSBridge.shared;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_AF85F0;
      *(v22 + 32) = v4;
      *(v22 + 88) = v10;
      *(v22 + 56) = v9;
      *(v22 + 64) = v14;
      sub_13C80(0, &qword_DE8ED0);
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = _swiftEmptyArrayStorage;
      *(v23 + 32) = 0xD000000000000010;
      *(v23 + 40) = 0x8000000000B7FCB0;
      *(v23 + 48) = v4;
      *(v23 + 56) = v21;
      *(v23 + 64) = 0;
      v24 = v4;
      v25 = v14;
      v26 = v24;
      v27 = v21;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v23);
    }
  }

  return result;
}

uint64_t block_copy_helper_260(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_9E2AF4()
{

  return swift_deallocObject();
}

uint64_t sub_9E2B3C()
{

  return swift_deallocObject();
}

uint64_t sub_9E2B94()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_9E2C20(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v16[0] != v2 && (*(v1 + OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle_isUpdatingFromJS) & 1) == 0)
  {
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v4 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v17 = &type metadata for Bool;
    sub_60044();
    sub_F46A0(v16, v15);
    v5 = swift_allocObject();
    *(v5 + 16) = 1;
    v6 = v15[1];
    *(v5 + 24) = v15[0];
    *(v5 + 40) = v6;
    *(v5 + 56) = 0x656C67676F547369;
    *(v5 + 64) = 0xE900000000000064;
    *(v5 + 72) = v1;
    *(v5 + 80) = v4;
    *(v5 + 88) = 0;
    v7 = v1;
    v8 = v4;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF020, v5);

    sub_12E1C(v16, &unk_DE8E40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_AF85F0;
    *(v9 + 56) = type metadata accessor for JSSettingsItemToggle();
    *(v9 + 32) = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v7;
    sub_AB5510();

    v11 = v16[0];
    *(v9 + 88) = &type metadata for Bool;
    *(v9 + 64) = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = _swiftEmptyArrayStorage;
    *(v12 + 32) = 0xD000000000000018;
    *(v12 + 40) = 0x8000000000B7FD60;
    *(v12 + 48) = v10;
    *(v12 + 56) = v8;
    *(v12 + 64) = 0;
    v13 = v10;
    v14 = v8;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v12);
  }

  return result;
}