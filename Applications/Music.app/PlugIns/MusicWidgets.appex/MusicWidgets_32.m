uint64_t Logger.classicalBridge.unsafeMutableAddressor()
{
  if (qword_1006E5580 != -1)
  {
    swift_once();
  }

  v0 = sub_10056DF88();

  return sub_10000C49C(v0, static Logger.classicalBridge);
}

id sub_100345420()
{
  v1 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = [objc_allocWithZone(SKStoreProductViewController) init];
  [v4 setDelegate:v0];
  if (qword_1006E5550 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v4, qword_1006EE1A0, v0, 1);
  v5 = sub_100572F48();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_100572F08();
  v6 = v4;
  v7 = v0;
  v8 = sub_100572EF8();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;
  v9[5] = v7;
  sub_1002B0DA0(0, 0, v3, &unk_100595E10, v9);

  swift_unknownObjectWeakAssign();
  return v6;
}

uint64_t sub_1003455E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v5[28] = a1;
  sub_100572F08();
  v5[31] = sub_100572EF8();
  v7 = sub_100572E78();
  v5[32] = v7;
  v5[33] = v6;

  return _swift_task_switch(sub_10034567C, v7, v6);
}

uint64_t sub_10034567C()
{
  v1 = v0[29];
  v2 = v0[30];
  sub_100009DCC(&unk_1006EE290);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B510;
  *(inited + 32) = sub_1005728D8();
  *(inited + 40) = v4;
  v5 = *(v2 + OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_app + 16);
  *(inited + 72) = &type metadata for Int64;
  *(inited + 48) = v5;
  sub_1000F3754(inited);
  swift_setDeallocating();
  sub_10001036C(inited + 32, &qword_1006E6B38);
  isa = sub_100572688().super.isa;
  v0[34] = isa;

  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_100345874;
  v7 = swift_continuation_init();
  v0[27] = sub_100009DCC(&qword_1006EB0D0);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_1002A834C;
  v0[23] = &unk_10069C700;
  v0[24] = v7;
  [v1 loadProductWithParameters:isa completionBlock:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100345874()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_100345A1C;
  }

  else
  {
    v5 = sub_1003459A4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003459A4()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);

  *v2 = *(v0 + 288);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100345A1C()
{
  v1 = *(v0 + 272);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

id sub_100345AC4()
{
  v2.receiver = v0;
  v2.super_class = _s23StoreProductCoordinatorCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_100345B70()
{
  result = sub_100572898();
  qword_1006EE1A8 = result;
  return result;
}

NSString sub_100345BA8()
{
  result = sub_100572898();
  qword_1006EE1B0 = result;
  return result;
}

NSString sub_100345BE0()
{
  result = sub_100572898();
  qword_1006EE1B8 = result;
  return result;
}

NSString sub_100345C18()
{
  result = sub_100572898();
  qword_1006EE1C0 = result;
  return result;
}

NSString sub_100345C4C()
{
  result = sub_100572898();
  qword_1006EE1C8 = result;
  return result;
}

uint64_t sub_100345C7C()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, static Logger.classicalBridge);
  sub_10000C49C(v0, static Logger.classicalBridge);
  return sub_10056DF78();
}

uint64_t static Logger.classicalBridge.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006E5580 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  v3 = sub_10000C49C(v2, static Logger.classicalBridge);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100345DA4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100009DCC(&unk_1006EE2B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_100345E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100572B78();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1003463A4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
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
      result = sub_100573F98();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
                  goto LABEL_127;
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

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1003463A4()
{
  v0 = sub_100572B88();
  v4 = sub_100346424(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100346424(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_100573C48();
    if (!v9 || (v10 = v9, v11 = sub_100345DA4(v9, 0), v12 = sub_10034657C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1005729E8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1005729E8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_100573F98();
LABEL_4:

  return sub_1005729E8();
}

unint64_t sub_10034657C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1002D8838(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100572AE8();
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
          result = sub_100573F98();
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

    result = sub_1002D8838(v12, a6, a7);
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

    result = sub_100572AC8();
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

uint64_t sub_10034679C(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = sub_10056C8A8();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  sub_100572F08();
  v2[29] = sub_100572EF8();
  v5 = sub_100572E78();
  v2[30] = v5;
  v2[31] = v6;

  return _swift_task_switch(sub_1003468CC, v5, v6);
}

id sub_1003468CC()
{
  v86 = v0;
  if (qword_1006E4E08 != -1)
  {
    swift_once();
  }

  sub_100009DCC(&qword_1006E8490);
  UnfairLock.locked<A>(_:)(sub_1001A9E38);
  v1 = v0[22];
  v0[32] = v1;
  if (!v1)
  {

    sub_1001410C4();
    swift_allocError();
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 2;
    swift_willThrow();
LABEL_13:

    v22 = v0[1];
LABEL_14:

    return v22();
  }

  sub_100009DCC(&qword_1006E6248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100580F90;
  v3 = ICURLBagKeyMusicCommon;
  *(inited + 32) = ICURLBagKeyMusicCommon;
  v4 = qword_1006E5568;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_1006EE1B8;
  *(inited + 40) = qword_1006EE1B8;
  v7 = qword_1006E5570;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_1006EE1C0;
  *(inited + 48) = qword_1006EE1C0;
  v10 = v9;
  v11 = sub_100343120(inited);
  v83 = v13;
  v84 = v1;
  v82 = v11;
  swift_setDeallocating();
  type metadata accessor for ICURLBagKey(0);
  swift_arrayDestroy();
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_100580F90;
  *(v14 + 32) = v5;
  *(v14 + 40) = v8;
  v15 = qword_1006E5578;
  v16 = v5;
  v17 = v8;
  if (v15 != -1)
  {
    swift_once();
  }

  v18 = qword_1006EE1C8;
  *(v14 + 48) = qword_1006EE1C8;
  v19 = v18;
  v20 = sub_100343120(v14);
  v0[33] = v21;
  v24 = v20;
  v25 = v21;
  swift_setDeallocating();
  swift_arrayDestroy();
  v26 = HIBYTE(v25) & 0xF;
  v27 = v24 & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v28 = v24 & 0xFFFFFFFFFFFFLL;
  }

  v29 = v82;
  if (!v28)
  {
LABEL_79:

    sub_1001410C4();
    swift_allocError();
    *v50 = v24;
    *(v50 + 8) = v25;
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0;
    swift_willThrow();

    goto LABEL_13;
  }

  if ((v25 & 0x1000000000000000) != 0)
  {

    v32 = sub_100345E18(v24, v25, 10);
    v52 = v51;

    v29 = v82;
    if (v52)
    {
      goto LABEL_79;
    }

    goto LABEL_81;
  }

  if ((v25 & 0x2000000000000000) != 0)
  {
    v85[0] = v24;
    v85[1] = v25 & 0xFFFFFFFFFFFFFFLL;
    if (v24 == 43)
    {
      if (v26)
      {
        if (--v26)
        {
          v32 = 0;
          v42 = v85 + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              break;
            }

            v32 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v26)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

LABEL_107:
      __break(1u);
    }

    if (v24 != 45)
    {
      if (v26)
      {
        v32 = 0;
        v47 = v85;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v49 + v48;
          if (__OFADD__(v49, v48))
          {
            break;
          }

          ++v47;
          if (!--v26)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    if (v26)
    {
      if (--v26)
      {
        v32 = 0;
        v36 = v85 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v38 - v37;
          if (__OFSUB__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v26)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_105;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    v30 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v30 = sub_100573F98();
    v29 = v82;
  }

  v31 = *v30;
  if (v31 == 43)
  {
    if (v27 >= 1)
    {
      v26 = v27 - 1;
      if (v27 != 1)
      {
        v32 = 0;
        if (v30)
        {
          v39 = v30 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              goto LABEL_77;
            }

            v41 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_77;
            }

            v32 = v41 + v40;
            if (__OFADD__(v41, v40))
            {
              goto LABEL_77;
            }

            ++v39;
            if (!--v26)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_69;
      }

      goto LABEL_77;
    }

    goto LABEL_106;
  }

  if (v31 == 45)
  {
    if (v27 >= 1)
    {
      v26 = v27 - 1;
      if (v27 != 1)
      {
        v32 = 0;
        if (v30)
        {
          v33 = v30 + 1;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              goto LABEL_77;
            }

            v35 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_77;
            }

            v32 = v35 - v34;
            if (__OFSUB__(v35, v34))
            {
              goto LABEL_77;
            }

            ++v33;
            if (!--v26)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_69:
        LOBYTE(v26) = 0;
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v27)
  {
    v32 = 0;
    if (v30)
    {
      while (1)
      {
        v45 = *v30 - 48;
        if (v45 > 9)
        {
          goto LABEL_77;
        }

        v46 = 10 * v32;
        if ((v32 * 10) >> 64 != (10 * v32) >> 63)
        {
          goto LABEL_77;
        }

        v32 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          goto LABEL_77;
        }

        ++v30;
        if (!--v27)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_77:
  v32 = 0;
  LOBYTE(v26) = 1;
LABEL_78:
  if (v26)
  {
    goto LABEL_79;
  }

LABEL_81:
  if (static ApplicationRecordUtilities.isApplicationInstalled(identifier:)(v29, v83))
  {

    v53 = swift_task_alloc();
    v0[34] = v53;
    *v53 = v0;
    v53[1] = sub_10034741C;
    v54 = v0[23];

    return sub_1003434E8(v54);
  }

  else
  {
    v55 = v0[24];
    if (v55)
    {
      v56 = v0[28];
      v57 = v0[25];
      v58 = v0[26];
      (*(v58 + 16))(v56, v0[23], v57);
      v59 = (*(v58 + 80) + 16) & ~*(v58 + 80);
      v60 = swift_allocObject();
      (*(v58 + 32))(v60 + v59, v56, v57);
      v61 = objc_allocWithZone(_s23StoreProductCoordinatorCMa());

      v62 = v55;
      v63 = sub_100344C00(v82, v83, v32, &unk_100595E30, v60);
      v64 = sub_100345420();
      result = [v64 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v65 = result;

      v66 = [objc_opt_self() systemBlueColor];
      [v65 setTintColor:v66];

      v67 = v62;
      v68 = [v67 presentedViewController];
      v69 = v67;
      if (v68)
      {
        v70 = v67;
        do
        {
          v69 = v68;

          v68 = [v69 presentedViewController];
          v70 = v69;
        }

        while (v68);
      }

      objc_opt_self();
      v71 = swift_dynamicCastObjCClass();
      if (v71)
      {
        v72 = v71;
        v73 = swift_allocObject();
        *(v73 + 16) = v67;
        *(v73 + 24) = v64;
        v0[20] = sub_100347D84;
        v0[21] = v73;
        v0[16] = _NSConcreteStackBlock;
        v0[17] = 1107296256;
        v0[18] = sub_10007885C;
        v0[19] = &unk_10069C778;
        v74 = _Block_copy(v0 + 16);
        v75 = v67;
        v76 = v64;

        [v72 dismissViewControllerAnimated:1 completion:v74];

        _Block_release(v74);
      }

      else
      {
        v78 = v67;
        v79 = [v78 presentedViewController];
        v80 = v78;
        if (v79)
        {
          v81 = v78;
          while (1)
          {
            v80 = v79;
            if (([v79 canPresentViewControllers] & 1) == 0)
            {
              break;
            }

            v79 = [v80 presentedViewController];
            v81 = v80;
            if (!v79)
            {
              goto LABEL_101;
            }
          }

          v80 = v81;
        }

LABEL_101:
        [v80 presentViewController:v64 animated:1 completion:0];

        v69 = v80;
      }

      v22 = v0[1];
      goto LABEL_14;
    }

    v77 = swift_task_alloc();
    v0[36] = v77;
    *v77 = v0;
    v77[1] = sub_100347624;

    return sub_1003438BC(v24, v25);
  }
}

uint64_t sub_10034741C()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_100347774;
  }

  else
  {
    v5 = sub_100347584;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100347584()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100347624()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_100347814;
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_100347EE8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100347774()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100347814()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1003478C8()
{
  result = qword_1006EE1D8;
  if (!qword_1006EE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE1D8);
  }

  return result;
}

uint64_t sub_100347960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1003479A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003479F8(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_100347A14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_100347A5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100347AA4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_100347AD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100347B18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000116F0;

  return sub_1003455E0(a1, v4, v5, v7, v6);
}

uint64_t sub_100347BF0()
{
  v1 = sub_10056C8A8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100347C78()
{
  v2 = *(sub_10056C8A8() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000CB98;

  return sub_1003434E8(v0 + v3);
}

uint64_t sub_100347D44()
{

  return swift_deallocObject();
}

uint64_t sub_100347D8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100347DA4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100347DE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100347E24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CB98;

  return sub_100344F44(a1, v4, v5, v6);
}

uint64_t sub_100347EE8()
{

  return sub_100347584();
}

uint64_t *AccessibilityString.dolbyAtmosLabel.unsafeMutableAddressor()
{
  if (qword_1006E55A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.dolbyAtmosLabel;
}

uint64_t *AccessibilityString.dolbyAudioLabel.unsafeMutableAddressor()
{
  if (qword_1006E55A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.dolbyAudioLabel;
}

uint64_t *AccessibilityString.losslessLabel.unsafeMutableAddressor()
{
  if (qword_1006E55B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.losslessLabel;
}

uint64_t *AccessibilityString.hiResLosslessLabel.unsafeMutableAddressor()
{
  if (qword_1006E55B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.hiResLosslessLabel;
}

uint64_t static String.socialDisconnectMessage(networkName:)(uint64_t a1, void *a2)
{
  v4 = sub_10056CC38();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100572888();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v16[-v10];
  v12 = sub_100572868();
  __chkstk_darwin(v12 - 8);
  sub_100572858();
  v17._object = 0x80000001005B6F10;
  v17._countAndFlagsBits = 0xD000000000000017;
  sub_100572848(v17);
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  sub_100572838(v18);
  v19._object = 0x80000001005B6F30;
  v19._countAndFlagsBits = 0x1000000000000060;
  sub_100572848(v19);
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  sub_100572838(v20);
  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  sub_100572848(v21);
  sub_100572878();
  (*(v6 + 16))(v9, v11, v5);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v13 = qword_1006FC3B8;
  sub_10056CBC8();
  v14 = sub_100572948();
  (*(v6 + 8))(v11, v5);
  return v14;
}

uint64_t MPModelTVShow.localizedEpisodeCount.getter()
{
  v1 = sub_10056CC38();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = sub_100572868();
  __chkstk_darwin(v9 - 8);
  sub_100572858();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_100572848(v14);
  v13[1] = [v0 episodesCount];
  sub_100572828();
  v15._countAndFlagsBits = 0x65646F7369704520;
  v15._object = 0xEB00000000297328;
  sub_100572848(v15);
  sub_100572878();
  (*(v3 + 16))(v6, v8, v2);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v10 = qword_1006FC3B8;
  sub_10056CBC8();
  v11 = sub_100572948();
  (*(v3 + 8))(v8, v2);
  return v11;
}

void *AccessibilityString.albumArtworkLabel.unsafeMutableAddressor()
{
  if (qword_1006E5588 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.albumArtworkLabel;
}

uint64_t sub_100348660()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v19[-v7];
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  sub_100572818();
  v11 = *(v2 + 16);
  v11(v8, v10, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v12 = qword_1006FC3B8;
  v11(v5, v8, v1);
  v13 = v12;
  sub_10056CBC8();
  v14 = sub_100572948();
  v16 = v15;
  v17 = *(v2 + 8);
  v17(v8, v1);
  result = (v17)(v10, v1);
  static AccessibilityString.playlistArtworkLabel = v14;
  unk_1006FDD30 = v16;
  return result;
}

uint64_t *AccessibilityString.playlistArtworkLabel.unsafeMutableAddressor()
{
  if (qword_1006E5590 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playlistArtworkLabel;
}

void *AccessibilityString.qrCodeButtonLabel.unsafeMutableAddressor()
{
  if (qword_1006E5598 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.qrCodeButtonLabel;
}

uint64_t sub_100348B00()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v19[-v7];
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  sub_100572818();
  v11 = *(v2 + 16);
  v11(v8, v10, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v12 = qword_1006FC3B8;
  v11(v5, v8, v1);
  v13 = v12;
  sub_10056CBC8();
  v14 = sub_100572948();
  v16 = v15;
  v17 = *(v2 + 8);
  v17(v8, v1);
  result = (v17)(v10, v1);
  static AccessibilityString.favoriteBadgeLabel = v14;
  unk_1006FDD90 = v16;
  return result;
}

uint64_t *AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor()
{
  if (qword_1006E55C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.favoriteBadgeLabel;
}

void *AccessibilityString.popularBadgeLabel.unsafeMutableAddressor()
{
  if (qword_1006E55C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.popularBadgeLabel;
}

void *AccessibilityString.immersiveBadgeLabel.unsafeMutableAddressor()
{
  if (qword_1006E55D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.immersiveBadgeLabel;
}

void *AccessibilityString.nowPlayingWafeformLabel.unsafeMutableAddressor()
{
  if (qword_1006E55D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.nowPlayingWafeformLabel;
}

void *AccessibilityString.pausedWafeformLabel.unsafeMutableAddressor()
{
  if (qword_1006E55E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.pausedWafeformLabel;
}

void *AccessibilityString.favoriteButtonLabel.unsafeMutableAddressor()
{
  if (qword_1006E55E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.favoriteButtonLabel;
}

void *AccessibilityString.undoFavoriteButtonLabel.unsafeMutableAddressor()
{
  if (qword_1006E55F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.undoFavoriteButtonLabel;
}

void *AccessibilityString.playbackPlayButtonLabel.unsafeMutableAddressor()
{
  if (qword_1006E55F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playbackPlayButtonLabel;
}

uint64_t sub_10034922C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v25[0] = a5;
  v6 = sub_10056CC38();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100572888();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v25 - v13;
  __chkstk_darwin(v12);
  v16 = v25 - v15;
  sub_100572818();
  v17 = *(v8 + 16);
  v17(v14, v16, v7);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v18 = qword_1006FC3B8;
  v17(v11, v14, v7);
  v19 = v18;
  sub_10056CBC8();
  v20 = sub_100572948();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v14, v7);
  result = (v23)(v16, v7);
  *a4 = v20;
  *v25[0] = v22;
  return result;
}

void *AccessibilityString.playbackShuffleButtonLabel.unsafeMutableAddressor()
{
  if (qword_1006E5600 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playbackShuffleButtonLabel;
}

uint64_t sub_1003494E4(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

id NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.getter()
{
  v1 = sub_100572898();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

void NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.setter()
{
  isa = sub_100572E68().super.super.isa;
  v2 = sub_100572898();
  [v0 setValue:isa forKey:v2];
}

uint64_t NSUserDefaults.applicationScriptURL.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = 0xD000000000000014;
  v6 = 0x80000001005B6FE0;
  sub_1000C5FB8();
  NSUserDefaults.subscript.getter(&v5, &v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v2 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v2 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v2)
      {
        sub_10056C868();
      }
    }
  }

  else
  {
    sub_1001D36AC(&v7);
  }

  v4 = sub_10056C8A8();
  return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
}

uint64_t NSUserDefaults.showAllTVShows.getter()
{
  strcpy(v1, "showAllTVShows");
  v1[15] = -18;
  sub_1000C5FB8();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v1[0];
    }
  }

  else
  {
    sub_1001D36AC(&v2);
    return 0;
  }

  return result;
}

void (*NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  v3 = sub_100572898();
  v4 = [v1 BOOLForKey:v3];

  *(a1 + 8) = v4;
  return sub_100349854;
}

void sub_100349854(void **a1)
{
  v1 = *a1;
  isa = sub_100572E68().super.super.isa;
  v2 = sub_100572898();
  [v1 setValue:isa forKey:v2];
}

id NSUserDefaults.hasSeenDolbyDownloadConflictAlert.getter()
{
  v1 = sub_100572898();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

void NSUserDefaults.hasSeenDolbyDownloadConflictAlert.setter()
{
  isa = sub_100572E68().super.super.isa;
  v2 = sub_100572898();
  [v0 setValue:isa forKey:v2];
}

void (*NSUserDefaults.hasSeenDolbyDownloadConflictAlert.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  v3 = sub_100572898();
  v4 = [v1 BOOLForKey:v3];

  *(a1 + 8) = v4;
  return sub_100349A38;
}

void sub_100349A38(void **a1)
{
  v1 = *a1;
  isa = sub_100572E68().super.super.isa;
  v2 = sub_100572898();
  [v1 setValue:isa forKey:v2];
}

char *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor()
{
  if (qword_1006E5608 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.isInternalInstall;
}

uint64_t *DeviceCapabilities.deviceFamily.unsafeMutableAddressor()
{
  if (qword_1006E5610 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceFamily;
}

uint64_t *DeviceCapabilities.deviceModel.unsafeMutableAddressor()
{
  if (qword_1006E5620 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceModel;
}

char *DeviceCapabilities.deviceType.unsafeMutableAddressor()
{
  if (qword_1006E5618 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceType;
}

id sub_100349C30(uint64_t (*a1)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = a1();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100349C7C()
{
  result = os_variant_has_internal_content();
  static DeviceCapabilities.isInternalInstall = result;
  return result;
}

uint64_t sub_100349D14()
{
  result = sub_100349D34();
  static DeviceCapabilities.deviceType = result;
  return result;
}

uint64_t sub_100349D34()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber > 2)
    {
      if (deviceClassNumber != 11)
      {
        if (deviceClassNumber == 3)
        {
          return 2;
        }

        return 0;
      }

      return 4;
    }

    else
    {
      if (deviceClassNumber != 1)
      {
        if (deviceClassNumber == 2)
        {
          return 3;
        }

        return 0;
      }

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DeviceCapabilities.deviceType.getter()
{
  if (qword_1006E5618 != -1)
  {
    swift_once();
  }

  return static DeviceCapabilities.deviceType;
}

void sub_100349E34(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v7 = MobileGestalt_get_current_device();
  if (v7)
  {
    v8 = v7;
    v9 = a2();

    if (v9)
    {
      v10 = sub_1005728D8();
      v12 = v11;

      *a3 = v10;
      *a4 = v12;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100349EE8()
{
  v0 = 0;
  result = MGGetProductType();
  if (result > 2158787295)
  {
    if (result <= 2311900305)
    {
      if (result != 2158787296 && result != 2270970153)
      {
        goto LABEL_17;
      }
    }

    else if (result != 2311900306 && result != 3645319985 && result != 3242623367)
    {
      goto LABEL_17;
    }
  }

  else if (result <= 820711326)
  {
    if (result != 228444038 && result != 502329937)
    {
      goto LABEL_17;
    }
  }

  else if (result != 820711327 && result != 1429914406 && result != 1721691077)
  {
LABEL_17:
    v0 = 1;
  }

  static DeviceCapabilities.supportsHighFrameRateLyricsBackground = v0;
  return result;
}

char *DeviceCapabilities.supportsHighFrameRateLyricsBackground.unsafeMutableAddressor()
{
  if (qword_1006E5628 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.supportsHighFrameRateLyricsBackground;
}

uint64_t sub_10034A068()
{
  result = MGGetProductType();
  static DeviceCapabilities.supportsMotionBlur = result != 1325975682;
  return result;
}

char *DeviceCapabilities.supportsMotionBlur.unsafeMutableAddressor()
{
  if (qword_1006E5630 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.supportsMotionBlur;
}

void sub_10034A10C()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    hasExtendedColorDisplay = MobileGestalt_get_hasExtendedColorDisplay();

    static DeviceCapabilities.hasExtendedColorDisplay = hasExtendedColorDisplay;
  }

  else
  {
    __break(1u);
  }
}

char *DeviceCapabilities.hasExtendedColorDisplay.unsafeMutableAddressor()
{
  if (qword_1006E5638 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.hasExtendedColorDisplay;
}

uint64_t sub_10034A1C8(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

id static DeviceCapabilitiesObjC.hasWAPICapability.getter()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    return wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9MusicCore18DeviceCapabilitiesO9diskUsageSDyAC04DiskF8CategoryOs5Int64VGvgZ_0()
{
  if (!MGCopyAnswer())
  {
    goto LABEL_46;
  }

  sub_100009DCC(&qword_1006EE2F8);
  swift_dynamicCast();
  v40 = sub_1000F4458(_swiftEmptyArrayStorage);
  v0 = 1 << *(v47 + 32);
  v1 = -1;
  if (v0 < 64)
  {
    v1 = ~(-1 << v0);
  }

  v2 = v1 & *(v47 + 64);
  v3 = (v0 + 63) >> 6;
  v4 = kMGQDiskUsageTotalSystemCapacity;
  v5 = kMGQDiskUsageTotalSystemAvailable;
  v44 = kMGQDiskUsageTotalDataCapacity;
  v43 = kMGQDiskUsageTotalDataAvailable;
  v42 = kMGQDiskUsageTotalDiskCapacity;

  v6 = 0;
  v45 = v4;
  v46 = v5;
  if (v2)
  {
    while (1)
    {
LABEL_12:
      v8 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v9 = (v6 << 9) | (8 * v8);
      v10 = *(*(v47 + 48) + v9);
      v41 = *(*(v47 + 56) + v9);
      if (v4)
      {
        type metadata accessor for CFString(0);
        sub_10034A87C();
        v11 = v10;
        v12 = v4;
        v13 = sub_10056CFD8();

        v5 = v46;
        if (v13)
        {
          v26 = 0;
          goto LABEL_29;
        }

        if (!v46)
        {
          goto LABEL_18;
        }

LABEL_17:
        type metadata accessor for CFString(0);
        sub_10034A87C();
        v15 = v10;
        v16 = v5;
        v17 = sub_10056CFD8();

        if ((v17 & 1) == 0)
        {
          goto LABEL_18;
        }

        v26 = 1;
LABEL_29:

LABEL_30:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = sub_1000EB980(v26);
        v30 = v40[2];
        v31 = (v29 & 1) == 0;
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          goto LABEL_44;
        }

        v34 = v29;
        if (v40[3] >= v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = v28;
            sub_1000F0CC4();
            v28 = v38;
          }
        }

        else
        {
          sub_1000ED054(v33, isUniquelyReferenced_nonNull_native);
          v28 = sub_1000EB980(v26);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_47;
          }
        }

        if (v34)
        {
          *(v40[7] + 8 * v28) = v41;
        }

        else
        {
          v40[(v28 >> 6) + 8] |= 1 << v28;
          *(v40[6] + v28) = v26;
          *(v40[7] + 8 * v28) = v41;

          v36 = v40[2];
          v32 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v32)
          {
            goto LABEL_45;
          }

          v40[2] = v37;
        }

        v4 = v45;
        v5 = v46;
        if (!v2)
        {
          break;
        }
      }

      else
      {
        v14 = v10;
        if (v5)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v44)
        {
          type metadata accessor for CFString(0);
          sub_10034A87C();
          v18 = v10;
          v19 = v44;
          v20 = sub_10056CFD8();

          if (v20)
          {
            v26 = 2;
            goto LABEL_29;
          }
        }

        if (v43)
        {
          type metadata accessor for CFString(0);
          sub_10034A87C();
          v21 = v10;
          v22 = v43;
          v23 = sub_10056CFD8();

          if (v23)
          {
            v26 = 3;
            goto LABEL_29;
          }
        }

        if (v42)
        {
          type metadata accessor for CFString(0);
          sub_10034A87C();
          v24 = v42;
          v25 = sub_10056CFD8();

          v5 = v46;
          if (v25)
          {
            v26 = 4;
            goto LABEL_30;
          }
        }

        else
        {

          v5 = v46;
        }

        v4 = v45;
        if (!v2)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v3)
    {

      return v40;
    }

    v2 = *(v47 + 64 + 8 * v7);
    ++v6;
    if (v2)
    {
      v6 = v7;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_100574578();
  __break(1u);
  return result;
}

unint64_t sub_10034A774()
{
  result = qword_1006EE2C0;
  if (!qword_1006EE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE2C0);
  }

  return result;
}

unint64_t sub_10034A7CC()
{
  result = qword_1006EE2C8;
  if (!qword_1006EE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE2C8);
  }

  return result;
}

unint64_t sub_10034A87C()
{
  result = qword_1006EE300;
  if (!qword_1006EE300)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE300);
  }

  return result;
}

id sub_10034A8DC()
{
  result = [objc_allocWithZone(type metadata accessor for EnvironmentMonitor()) init];
  static EnvironmentMonitor.shared = result;
  return result;
}

uint64_t *EnvironmentMonitor.shared.unsafeMutableAddressor()
{
  if (qword_1006E5640 != -1)
  {
    swift_once();
  }

  return &static EnvironmentMonitor.shared;
}

id static EnvironmentMonitor.shared.getter()
{
  if (qword_1006E5640 != -1)
  {
    swift_once();
  }

  v1 = static EnvironmentMonitor.shared;

  return v1;
}

uint64_t EnvironmentMonitor.isNetworkConstrained.getter()
{
  swift_getKeyPath();
  sub_10034AB08();
  sub_10056CEF8();

  return *(v0 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained);
}

uint64_t sub_10034AA34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10034AB08();
  sub_10056CEF8();

  *a2 = *(v3 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained);
  return result;
}

unint64_t sub_10034AB08()
{
  result = qword_1006EE318;
  if (!qword_1006EE318)
  {
    type metadata accessor for EnvironmentMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE318);
  }

  return result;
}

uint64_t type metadata accessor for EnvironmentMonitor()
{
  result = qword_1006EE368;
  if (!qword_1006EE368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10034ABAC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10034AB08();
    sub_10056CEE8();
  }

  return result;
}

uint64_t EnvironmentMonitor.thermalLevel.getter()
{
  swift_getKeyPath();
  sub_10034AB08();
  sub_10056CEF8();

  return *(v0 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel);
}

uint64_t sub_10034AD0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10034AB08();
  sub_10056CEF8();

  *a2 = *(v3 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel);
  return result;
}

uint64_t sub_10034ADE0(uint64_t result)
{
  if (qword_1005961D0[*(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel)] == qword_1005961D0[result])
  {
    *(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel) = result;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10034AB08();
    sub_10056CEE8();
  }

  return result;
}

Swift::Int sub_10034AF3C()
{
  v1 = *v0;
  sub_100574678();
  sub_100574688(qword_1005961D0[v1]);
  return sub_1005746C8();
}

Swift::Int sub_10034AFC4()
{
  v1 = *v0;
  sub_100574678();
  sub_100574688(qword_1005961D0[v1]);
  return sub_1005746C8();
}

uint64_t sub_10034B010@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore18EnvironmentMonitorC12ThermalLevelO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

id sub_10034B0E4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v0[OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained] = 0;
  v0[OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel] = 0;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, "init");
  v6 = sub_100572F48();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v8 = v5;
  sub_1000D6938(0, 0, v4, &unk_1005961B0, v7);

  sub_1000DBD34(v4);
  return v8;
}

uint64_t sub_10034B258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_100009DCC(&qword_1006E6420);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10034B2F4, 0, 0);
}

uint64_t sub_10034B2F4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [objc_opt_self() sharedMonitor];
  v4 = sub_100572F48();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v2;
  v7 = v3;
  v8 = v2;
  sub_1000D6938(0, 0, v1, &unk_1005961B8, v6);

  sub_1000DBD34(v1);
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v8;
  v10 = v7;
  v11 = v8;
  sub_1000D6938(0, 0, v1, &unk_1005961C0, v9);

  sub_1000DBD34(v1);
  [v10 registerObserver:v11];

  v12 = v0[1];

  return v12();
}

id EnvironmentMonitor.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() sharedMonitor];
  [v2 unregisterObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10034B6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_10034B6DC, 0, 0);
}

uint64_t sub_10034B6DC()
{
  *(v0 + 48) = [*(v0 + 24) isNetworkConstrained];
  sub_100572F08();
  *(v0 + 40) = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_10034B784, v2, v1);
}

uint64_t sub_10034B784()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_10034AB08();
  sub_10056CEF8();

  if (v1 != *(v2 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained))
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    sub_10056CEE8();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10034B8FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_100572F48();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = v3;
  v11 = a1;
  v12 = v3;
  sub_1000D6938(0, 0, v8, a3, v10);

  return sub_1000DBD34(v8);
}

uint64_t sub_10034BA2C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_100572F48();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a1;
  v13 = a3;
  v14 = a1;
  v15 = v13;
  v16 = v14;
  sub_1000D6938(0, 0, v10, a5, v12);

  return sub_1000DBD34(v10);
}

uint64_t sub_10034BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_10034BB88, 0, 0);
}

uint64_t sub_10034BB88()
{
  v1 = [*(v0 + 24) currentThermalLevel];
  if (HIDWORD(v1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 48) = sub_10034BDA8(v1);
    sub_100572F08();
    *(v0 + 40) = sub_100572EF8();
    v4 = sub_100572E78();
    v6 = v5;
    v1 = sub_10034BC40;
    v2 = v4;
    v3 = v6;
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10034BC40()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_10034AB08();
  sub_10056CEF8();

  if (qword_1005961D0[v1] != qword_1005961D0[*(v2 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel)])
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    sub_10056CEE8();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10034BDA8(uint64_t result)
{
  if (result > 29)
  {
    switch(result)
    {
      case 0x1E:
        return 3;
      case 0x28:
        return 4;
      case 0x32:
        return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        return result;
      case 0xA:
        return 1;
      case 0x14:
        return 2;
    }
  }

  return 6;
}

uint64_t _s9MusicCore18EnvironmentMonitorC12ThermalLevelO8rawValueAESgSi_tcfC_0(uint64_t result)
{
  if (result > 19)
  {
    if (result > 39)
    {
      if (result == 40)
      {
        return 4;
      }

      if (result == 50)
      {
        return 5;
      }
    }

    else
    {
      if (result == 20)
      {
        return 2;
      }

      if (result == 30)
      {
        return 3;
      }
    }

    return 7;
  }

  if (result == -1)
  {
    return 6;
  }

  if (result)
  {
    if (result == 10)
    {
      return 1;
    }

    return 7;
  }

  return result;
}

uint64_t sub_10034BE8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000116F0;

  return sub_10034B6BC(a1, v4, v5, v7, v6);
}

uint64_t sub_10034BF4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000116F0;

  return sub_10034BB68(a1, v4, v5, v7, v6);
}

unint64_t sub_10034C010()
{
  result = qword_1006EE338;
  if (!qword_1006EE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE338);
  }

  return result;
}

uint64_t sub_10034C06C()
{
  result = sub_10056CF38();
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

uint64_t sub_10034C120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CB98;

  return sub_10034BB68(a1, v4, v5, v7, v6);
}

uint64_t sub_10034C1E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10034C220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_10034B258(a1, v4, v5, v6);
}

uint64_t sub_10034C2D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t *ExplicitRestrictionsController.shared.unsafeMutableAddressor()
{
  if (qword_1006E5648 != -1)
  {
    swift_once();
  }

  return &static ExplicitRestrictionsController.shared;
}

BOOL ExplicitRestrictionsController.explicitContentIsAllowed.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v3 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (!v2)
  {
    return 0;
  }

  v0 = [v2 status];

  return (v0 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

uint64_t ExplicitRestrictionsController.accountVerificationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100009DCC(&qword_1006E5D10);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v5 = v12;
  if (v12)
  {
    v6 = [v12 verificationURL];

    if (v6)
    {
      sub_10056C838();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v10 = sub_10056C8A8();
    (*(*(v10 - 8) + 56))(v4, v7, 1, v10);
    return sub_1000C6E84(v4, a1);
  }

  else
  {
    v8 = sub_10056C8A8();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_10034C67C()
{
  type metadata accessor for ExplicitRestrictionsController();
  swift_allocObject();
  result = sub_10034C718();
  static ExplicitRestrictionsController.shared = result;
  return result;
}

uint64_t static ExplicitRestrictionsController.shared.getter()
{
  if (qword_1006E5648 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10034C718()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006EE3A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = sub_100009DCC(&qword_1006EA0D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  LOBYTE(v23) = 0;
  sub_10056E438();
  (*(v7 + 32))(v1 + v10, v9, v6);
  v11 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v23 = 0;
  sub_100009DCC(&qword_1006EE3A0);
  sub_10056E438();
  (*(v3 + 32))(v1 + v11, v5, v2);
  v12 = (v1 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  if (qword_1006E5650 != -1)
  {
    swift_once();
  }

  v13 = *algn_1006FDE68;
  *v12 = static ExplicitRestrictionsController.symbols;
  v12[1] = v13;
  v14 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_bindings;
  *(v1 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_bindings) = _swiftEmptyArrayStorage;

  sub_10034CB84();
  sub_10034CC88();
  sub_10034CDD0();
  type metadata accessor for Whitetail.Binding();
  v15 = MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = v15;

  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v17, 1, sub_10034E048, v16);
  swift_beginAccess();

  sub_100572CE8();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  swift_endAccess();
  v18 = ICAgeVerificationStateDidChangeNotification;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v18;

  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v20, 1, sub_10034E050, v19);
  swift_beginAccess();

  sub_100572CE8();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  swift_endAccess();

  return v1;
}

void sub_10034CB84()
{
  v0 = [objc_opt_self() sharedRestrictionsMonitor];
  [v0 allowsExplicitContent];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10056E488();
  sub_10034D2E0(v1);
}

uint64_t sub_10034CC88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v7 && (v1 = [v7 treatment], v7, v1 == 1))
  {
    if (qword_1006E5650 != -1)
    {
      swift_once();
    }

    v2 = &qword_1006FDE70;
  }

  else
  {
    if (qword_1006E5650 != -1)
    {
      swift_once();
    }

    v2 = &static ExplicitRestrictionsController.symbols;
  }

  v4 = *v2;
  v3 = v2[1];
  v5 = (v0 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  swift_beginAccess();
  *v5 = v4;
  v5[1] = v3;
}

void sub_10034CDD0()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 ageVerificationState];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v4 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v3;

  v5 = v3;
  sub_10056E488();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v10)
  {
    if (v4)
    {
      sub_10034DFC4();
      v6 = v4;
      v7 = sub_100573A58();

      if (v7)
      {

        v5 = v6;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  v8 = [objc_opt_self() defaultCenter];
  if (qword_1006E5658 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_1006EE380 object:v1];

  v5 = v4;
LABEL_11:
}

uint64_t sub_10034CFF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10034CB84();
  }

  return result;
}

uint64_t sub_10034D048()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10034CDD0();
    sub_10034CC88();
  }

  return result;
}

uint64_t ExplicitRestrictionsController.profileAllowsExplicitContent.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

uint64_t ExplicitRestrictionsController.ageVerification.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

uint64_t sub_10034D18C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a1 = v3;
  return result;
}

void sub_10034D210()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10056E488();
  sub_10034D2E0(v0);
}

void sub_10034D2E0(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v4 != v2)
  {
    v3 = [objc_opt_self() defaultCenter];
    if (qword_1006E5658 != -1)
    {
      swift_once();
    }

    [v3 postNotificationName:qword_1006EE388 object:v1];
  }
}

uint64_t sub_10034D3F0(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EAC40);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006EA0D8);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_10034D574@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a1 = v3;
  return result;
}

void sub_10034D5F8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10034DDF0(v1);
}

void sub_10034D648(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10034DDF0(v1);
}

uint64_t sub_10034D6B4(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EE488);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006EE3A8);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t *ExplicitRestrictionsController.symbols.unsafeMutableAddressor()
{
  if (qword_1006E5650 != -1)
  {
    swift_once();
  }

  return &static ExplicitRestrictionsController.symbols;
}

uint64_t ExplicitRestrictionsController.symbol.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_10034D8E0()
{
  static ExplicitRestrictionsController.symbols = 3028656112;
  *algn_1006FDE68 = 0xA400000000000000;
  qword_1006FDE70 = 11768802;
  unk_1006FDE78 = 0xA300000000000000;
}

uint64_t static ExplicitRestrictionsController.symbols.getter()
{
  if (qword_1006E5650 != -1)
  {
    swift_once();
  }

  v0 = static ExplicitRestrictionsController.symbols;

  return v0;
}

uint64_t ExplicitRestrictionsController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = sub_100009DCC(&qword_1006EA0D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = sub_100009DCC(&qword_1006EE3A8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ExplicitRestrictionsController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = sub_100009DCC(&qword_1006EA0D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = sub_100009DCC(&qword_1006EE3A8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

NSString sub_10034DB84()
{
  qword_1006EE380 = sub_100572898();
  result = sub_100572898();
  qword_1006EE388 = result;
  return result;
}

uint64_t type metadata accessor for ExplicitRestrictionsController()
{
  result = qword_1006EE3E0;
  if (!qword_1006EE3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034DCA8()
{
  sub_10026C1BC();
  if (v0 <= 0x3F)
  {
    sub_10034DD8C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10034DD8C()
{
  if (!qword_1006EE3F0)
  {
    sub_100010324(&qword_1006EE3A0);
    v0 = sub_10056E4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006EE3F0);
    }
  }
}

void sub_10034DDF0(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;

  sub_10056E488();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v5 = a1;
  if (a1)
  {
    if (v9)
    {
      sub_10034DFC4();
      v6 = v9;
      v7 = sub_100573A58();

      if (v7)
      {
LABEL_11:

        return;
      }
    }

    else
    {
    }

LABEL_8:
    v8 = [objc_opt_self() defaultCenter];
    if (qword_1006E5658 != -1)
    {
      swift_once();
    }

    [v8 postNotificationName:qword_1006EE380 object:v2];

    v6 = v9;
    goto LABEL_11;
  }

  if (v9)
  {
    goto LABEL_8;
  }
}

unint64_t sub_10034DFC4()
{
  result = qword_1006EE490;
  if (!qword_1006EE490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006EE490);
  }

  return result;
}

uint64_t sub_10034E010()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t LaunchURL.GenericHandler.perform(withURL:)(uint64_t a1, int *a2)
{
  v2[2] = sub_100572F08();
  v2[3] = sub_100572EF8();
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10034E174;

  return v7(a1);
}

uint64_t sub_10034E174(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_100572E78();
    v7 = v6;
    v8 = sub_10034E360;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_100572E78();
    v7 = v9;
    v8 = sub_10034E2F8;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_10034E2F8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_10034E360()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10034E3C8(uint64_t a1)
{
  v4 = *v1;
  v2[2] = sub_100572F08();
  v2[3] = sub_100572EF8();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10034E4E0;

  return v7(a1);
}

uint64_t sub_10034E4E0(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_100572E78();
    v7 = v6;
    v8 = sub_1003500D0;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_100572E78();
    v7 = v9;
    v8 = sub_1003500CC;
  }

  return _swift_task_switch(v8, v5, v7);
}

void *static LaunchURL.ArrayBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1 + 32;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    sub_10034E77C(v2, &v10);
    v7[0] = v10;
    v7[1] = v11;
    v8 = v12;
    if (*(&v11 + 1))
    {
      sub_10002EA74(v7, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1000D06A4(0, v3[2] + 1, 1, v3);
      }

      v5 = v3[2];
      v4 = v3[3];
      if (v5 >= v4 >> 1)
      {
        v3 = sub_1000D06A4((v4 > 1), v5 + 1, 1, v3);
      }

      v3[2] = v5 + 1;
      sub_10002EA74(v9, &v3[5 * v5 + 4]);
    }

    else
    {
      sub_10034E7EC(v7);
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_10034E77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EE498);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034E7EC(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EE498);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *static LaunchURL.ArrayBuilder.buildOptional(_:)(uint64_t a1)
{
  sub_10034E77C(a1, &v3);
  if (v4)
  {
    sub_10002EA74(&v3, v5);
    sub_100009DCC(&qword_1006E61A0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_10057B510;
    sub_10002EA74(v5, v1 + 32);
  }

  else
  {
    sub_10034E7EC(&v3);
    return _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t sub_10034E8EC(uint64_t a1)
{
  sub_100009DCC(&qword_1006E61A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10057B510;
  sub_10002EA8C(a1, v2 + 32);
  return v2;
}

uint64_t LaunchURL.Resolver.init(perform:handlerBuilder:)@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for LaunchURL.Resolver();
  v6 = sub_10056DF78();
  *a3 = a1 & 1;
  result = a2(v6);
  *(a3 + 8) = result;
  return result;
}

uint64_t LaunchURL.Resolver.perform(withURL:)(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_10056C8A8();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_10034EAC0, 0, 0);
}

void sub_10034EAC0()
{
  v62 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  *(v0 + 392) = *(type metadata accessor for LaunchURL.Resolver() + 24);
  v5 = *(v3 + 16);
  *(v0 + 320) = v5;
  *(v0 + 328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_10056DF68();
  v7 = sub_100573408();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 312);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61 = v59;
    *v12 = 136446210;
    sub_10034FD68();
    v13 = sub_100574408();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_1000C9784(v13, v15, &v61);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Evaluating URL=%{public}s", v12, 0xCu);
    sub_100010474(v59);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  *(v0 + 336) = v16;
  v18 = *(*(v0 + 264) + 8);
  *(v0 + 344) = v18;
  v19 = *(v18 + 16);
  *(v0 + 352) = v19;
  if (v19)
  {
    *(v0 + 360) = 0;
    *(v0 + 368) = _swiftEmptyArrayStorage;
    if (*(v18 + 16))
    {
      v20 = *(v0 + 320);
      v21 = *(v0 + 304);
      v22 = *(v0 + 272);
      v23 = *(v0 + 256);
      sub_10002EA8C(v18 + 32, v0 + 16);
      v20(v21, v23, v22);
      sub_10002EA8C(v0 + 16, v0 + 56);
      v24 = sub_10056DF68();
      v25 = sub_100573408();
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 336);
      v28 = *(v0 + 304);
      v29 = *(v0 + 272);
      if (v26)
      {
        v30 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v30 = 136446466;
        sub_10034FD68();
        v31 = sub_100574408();
        v33 = v32;
        v27(v28, v29);
        v34 = sub_1000C9784(v31, v33, &v61);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        sub_10002EA8C(v0 + 56, v0 + 216);
        sub_100009DCC(&qword_1006E61A8);
        v35 = sub_100572978();
        v37 = v36;
        sub_100010474(v0 + 56);
        v38 = sub_1000C9784(v35, v37, &v61);

        *(v30 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v24, v25, "Resolving URL=%{public}s with handler=%{public}s", v30, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100010474(v0 + 56);
        v27(v28, v29);
      }

      v53 = *(v0 + 40);
      v54 = *(v0 + 48);
      sub_10000C8CC((v0 + 16), v53);
      v60 = (*(v54 + 8) + **(v54 + 8));
      v55 = swift_task_alloc();
      *(v0 + 376) = v55;
      *v55 = v0;
      v55[1] = sub_10034F1B4;
      v56 = *(v0 + 256);

      v60(v56, v53, v54);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

    v39 = sub_10056DF68();
    v40 = sub_100573408();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 336);
    v43 = *(v0 + 288);
    v44 = *(v0 + 272);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v45 = 136446466;
      sub_10034FD68();
      v46 = sub_100574408();
      v48 = v47;
      v42(v43, v44);
      v49 = sub_1000C9784(v46, v48, &v61);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      sub_100009DCC(&qword_1006E61A8);
      v50 = sub_100572D38();
      v52 = sub_1000C9784(v50, v51, &v61);

      *(v45 + 14) = v52;

      _os_log_impl(&_mh_execute_header, v39, v40, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v42(v43, v44);
    }

    v57 = _swiftEmptyArrayStorage[2];

    v58 = *(v0 + 8);

    v58(v57 != 0);
  }
}

uint64_t sub_10034F1B4(char a1)
{
  v3 = *v2;
  *(v3 + 396) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {

    v4 = sub_10034FAE8;
  }

  else
  {
    v4 = sub_10034F2D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10034F2D4()
{
  v71 = v0;
  v1 = *(v0 + 368);
  if (*(v0 + 396))
  {
    sub_10002EA8C(v0 + 16, v0 + 176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 368);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = sub_1000D06A4(0, v1[2] + 1, 1, *(v0 + 368));
    }

    v4 = v1[2];
    v3 = v1[3];
    if (v4 >= v3 >> 1)
    {
      v1 = sub_1000D06A4((v3 > 1), v4 + 1, 1, v1);
    }

    v1[2] = v4 + 1;
    sub_10002EA74((v0 + 176), &v1[5 * v4 + 4]);
  }

  (*(v0 + 320))(*(v0 + 296), *(v0 + 256), *(v0 + 272));
  sub_10002EA8C(v0 + 16, v0 + 96);
  v5 = sub_10056DF68();
  v6 = sub_100573408();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 336);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v11 = 136446466;
    sub_10034FD68();
    v12 = v1;
    v13 = sub_100574408();
    v15 = v14;
    v8(v9, v10);
    v16 = v13;
    v1 = v12;
    v17 = sub_1000C9784(v16, v15, &v70);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    sub_10002EA8C(v0 + 96, v0 + 136);
    sub_100009DCC(&qword_1006E61A8);
    v18 = sub_100572978();
    v20 = v19;
    sub_100010474(v0 + 96);
    v21 = sub_1000C9784(v18, v20, &v70);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resolved URL=%{public}s with handler=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100010474(v0 + 96);
    v8(v9, v10);
  }

  if (*(v0 + 396) == 1 && (**(v0 + 264) & 1) == 0)
  {
    sub_100010474(v0 + 16);
  }

  else
  {
    v22 = *(v0 + 352);
    v23 = *(v0 + 360) + 1;
    result = sub_100010474(v0 + 16);
    if (v23 != v22)
    {
      v25 = *(v0 + 360) + 1;
      *(v0 + 360) = v25;
      *(v0 + 368) = v1;
      v26 = *(v0 + 344);
      if (v25 >= *(v26 + 16))
      {
        __break(1u);
      }

      else
      {
        v27 = *(v0 + 320);
        v28 = *(v0 + 304);
        v29 = *(v0 + 272);
        v30 = *(v0 + 256);
        sub_10002EA8C(v26 + 40 * v25 + 32, v0 + 16);
        v27(v28, v30, v29);
        sub_10002EA8C(v0 + 16, v0 + 56);
        v31 = sub_10056DF68();
        v32 = sub_100573408();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 336);
        v35 = *(v0 + 304);
        v36 = *(v0 + 272);
        if (v33)
        {
          v37 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v37 = 136446466;
          sub_10034FD68();
          v38 = sub_100574408();
          v40 = v39;
          v34(v35, v36);
          v41 = sub_1000C9784(v38, v40, &v70);

          *(v37 + 4) = v41;
          *(v37 + 12) = 2082;
          sub_10002EA8C(v0 + 56, v0 + 216);
          sub_100009DCC(&qword_1006E61A8);
          v42 = sub_100572978();
          v44 = v43;
          sub_100010474(v0 + 56);
          v45 = sub_1000C9784(v42, v44, &v70);

          *(v37 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v31, v32, "Resolving URL=%{public}s with handler=%{public}s", v37, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_100010474(v0 + 56);
          v34(v35, v36);
        }

        v64 = *(v0 + 40);
        v65 = *(v0 + 48);
        sub_10000C8CC((v0 + 16), v64);
        v69 = (*(v65 + 8) + **(v65 + 8));
        v66 = swift_task_alloc();
        *(v0 + 376) = v66;
        *v66 = v0;
        v66[1] = sub_10034F1B4;
        v67 = *(v0 + 256);

        return v69(v67, v64, v65);
      }

      return result;
    }
  }

  (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

  v46 = sub_10056DF68();
  v47 = sub_100573408();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 336);
  v50 = *(v0 + 288);
  v51 = *(v0 + 272);
  if (v48)
  {
    v68 = v47;
    v52 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v52 = 136446466;
    sub_10034FD68();
    v53 = v1;
    v54 = sub_100574408();
    v56 = v55;
    v49(v50, v51);
    v57 = v54;
    v1 = v53;
    v58 = sub_1000C9784(v57, v56, &v70);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2082;
    sub_100009DCC(&qword_1006E61A8);
    v59 = sub_100572D38();
    v61 = sub_1000C9784(v59, v60, &v70);

    *(v52 + 14) = v61;

    _os_log_impl(&_mh_execute_header, v46, v68, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v49(v50, v51);
  }

  v62 = v1[2];

  v63 = *(v0 + 8);

  return v63(v62 != 0);
}

uint64_t sub_10034FAE8()
{
  sub_100010474(v0 + 16);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10034FB80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10034FC14;

  return LaunchURL.Resolver.perform(withURL:)(a1);
}

uint64_t sub_10034FC14(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t type metadata accessor for LaunchURL.Resolver()
{
  result = qword_1006EE500;
  if (!qword_1006EE500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10034FD68()
{
  result = qword_1006E8B68;
  if (!qword_1006E8B68)
  {
    sub_10056C8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8B68);
  }

  return result;
}

unint64_t sub_10034FDC4()
{
  result = qword_1006EE4A0;
  if (!qword_1006EE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE4A0);
  }

  return result;
}

uint64_t sub_10034FE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10056DF88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10034FF1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10056DF88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10034FFC0()
{
  sub_100350054();
  if (v0 <= 0x3F)
  {
    sub_10056DF88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100350054()
{
  if (!qword_1006EE510)
  {
    sub_100010324(&qword_1006E61A8);
    v0 = sub_100572E38();
    if (!v1)
    {
      atomic_store(v0, &qword_1006EE510);
    }
  }
}

uint64_t static LifecyclePatrol.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  static LifecyclePatrol.isEnabled = a1;
  return result;
}

uint64_t LifecyclePatrol.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t LifecyclePatrol.didInit(_:)()
{
  v1 = v0;
  result = swift_beginAccess();
  if (static LifecyclePatrol.isEnabled == 1)
  {
    sub_100155E5C();
    v3 = sub_1005735E8();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;

    OS_dispatch_queue.asyncAfter(_:block:)(sub_100350610, v5);
  }

  return result;
}

uint64_t sub_10035031C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100350354()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (qword_1006E5660 != -1)
      {
        swift_once();
      }

      v1 = sub_10056DF88();
      sub_10000C49C(v1, qword_1006EE550);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v2 = sub_10056DF68();
      v3 = sub_100573438();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v4 = 136446722;
        swift_getObjectType();
        sub_100009DCC(&qword_1006EE630);
        v5 = sub_100572978();
        v7 = sub_1000C9784(v5, v6, &v14);

        *(v4 + 4) = v7;
        *(v4 + 12) = 2082;
        v8 = sub_100572978();
        v10 = sub_1000C9784(v8, v9, &v14);

        *(v4 + 14) = v10;
        *(v4 + 22) = 2082;
        v11 = sub_100572978();
        v13 = sub_1000C9784(v11, v12, &v14);

        *(v4 + 24) = v13;
        _os_log_impl(&_mh_execute_header, v2, v3, "A new instance of %{public}s<%{public}s> while one already exists <%{public}s>", v4, 0x20u);
        swift_arrayDestroy();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectWeakAssign();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003505D0()
{

  return swift_deallocObject();
}

uint64_t LifecyclePatrol.willDeinit(_:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = swift_unknownObjectRelease();
    if (v3 == a1)
    {

      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t LifecyclePatrol.__deallocating_deinit()
{
  sub_10023FEF8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100350700()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006EE550);
  sub_10000C49C(v0, qword_1006EE550);
  return sub_10056DF78();
}

unint64_t sub_100350780(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009DCC(&qword_1006E6AE8);
    v2 = sub_1005741C8();
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
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1000F40D4(*(a1 + 48) + 40 * v12, v27);
        sub_100081F38(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1000F40D4(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100081F38(v25 + 8, v20);
        sub_100353940(v24);
        v21 = v18;
        sub_1000F51DC(v20, v22);
        v13 = v21;
        sub_1000F51DC(v22, v23);
        sub_1000F51DC(v23, &v21);
        result = sub_1000EB89C(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100010474(v10);
          result = sub_1000F51DC(&v21, v10);
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
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1000F51DC(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_100353940(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_100350A3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009DCC(&qword_1006EE6E8);
    v2 = sub_1005741C8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1000F40D4(*(a1 + 48) + 40 * v12, v24);
        sub_100081F38(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_1000F40D4(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_100353940(v21);

          goto LABEL_23;
        }

        sub_100081F38(v22 + 8, v20);
        sub_100353940(v21);
        sub_100009DCC(&qword_1006E64F8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1000EB89C(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;

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
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_100350CF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009DCC(&qword_1006E6B28);
    v2 = sub_1005741C8();
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
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_100081F38(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        sub_1000F51DC(v22, v21);

        sub_100009DCC(&unk_1006EB150);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1000EB89C(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_100350F5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 11);
  sub_100351598(&v5[4], &v8);
  os_unfair_lock_unlock(v5 + 11);
  v6 = v8;
  if (v8)
  {
    v7 = sub_100351848(v8, a1, a2);
    __chkstk_darwin(v7);
    os_unfair_lock_lock(v5 + 11);
    sub_1003539A8(&v5[4]);
    os_unfair_lock_unlock(v5 + 11);
  }
}

uint64_t sub_10035107C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void *sub_1003510B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10056DF88();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v44 - v16;
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v20 = objc_opt_self();

  v21 = [v20 sharedBagProvider];
  LODWORD(a2) = [v21 useAMSBag];

  if (!a2)
  {
    if (qword_1006E4E50 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.musicBag;
    sub_10056DF98();
    v35 = sub_10056DF68();
    v36 = sub_100573448();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "UserDefaults enabled as source for cached musicTabs.", v37, 2u);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_22;
  }

  if (qword_1006E4EA8 != -1)
  {
    swift_once();
  }

  v22 = static ICClientInfo.music;
  v23 = [static ICClientInfo.music bagProfile];
  if (!v23)
  {
LABEL_17:
    if (qword_1006E4E50 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.musicBag;
    sub_10056DF98();
    v39 = sub_10056DF68();
    v40 = sub_100573438();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "    AMSBag was intended to be enabled as source for cached musicTabs, but bag profile and/or version were unexpectedly nil.\n    Defaulting to .userDefaults configuration.", v41, 2u);
    }

    (*(v11 + 8))(v17, v10);
LABEL_22:
    v31 = 0;
    v33 = 0;
    goto LABEL_23;
  }

  v24 = v23;
  v25 = [v22 bagProfileVersion];
  if (!v25)
  {

    goto LABEL_17;
  }

  v26 = v25;
  if (qword_1006E4E50 != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.musicBag;
  sub_10056DF98();
  v28 = sub_10056DF68();
  v29 = sub_100573448();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "AMSBag enabled as source for cached musicTabs.", v30, 2u);
  }

  (*(v11 + 8))(v19, v10);
  v31 = [objc_opt_self() bagForProfile:v24 profileVersion:v26];

  v32 = v31;
  v33 = 1;
LABEL_23:
  sub_100009DCC(&qword_1006EE708);
  v42 = swift_allocObject();
  *(v42 + 44) = 0;

  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v31;
  *(v42 + 40) = v33;
  sub_1003539CC(v31);
  v5[2] = v42;
  return v5;
}

id sub_100351598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10056DF88();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) != 0 && !*(a1 + 16))
    {
      *(a1 + 16) = 1;
      *(a1 + 24) = 1;
      *a2 = v11;
      *(a2 + 8) = v12;
      *(a2 + 16) = 1;
      *(a2 + 24) = 1;

      return v11;
    }

    v24 = result;
    v13 = qword_1006E4E50;
    v23 = v11;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.musicBag;
    sub_10056DF98();
    v15 = sub_10056DF68();
    v16 = sub_100573438();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v22[1] = v3;
      v18 = v17;
      v22[0] = swift_slowAlloc();
      v25 = v22[0];
      *v18 = 136315394;
      v19 = sub_100574758();
      v21 = sub_1000C9784(v19, v20, &v25);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1000C9784(0xD000000000000021, 0x80000001005B7310, &v25);
      _os_log_impl(&_mh_execute_header, v15, v16, "    An unexpected attempt to configure an %s instance twice using %s will be ignored.", v18, 0x16u);
      swift_arrayDestroy();
    }

    result = (*(v7 + 8))(v10, v24);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return result;
}

id sub_100351848(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v91 = sub_10056DF88();
  v90 = *(v91 - 8);
  v8 = __chkstk_darwin(v91);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v73 - v11;
  v93 = [objc_opt_self() uninitializedToken];
  v12 = *(v3 + 24);
  v13 = *(v4 + 32);
  sub_100009DCC(&unk_1006E8FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B510;
  *(inited + 32) = v12;
  *(inited + 40) = v13;

  sub_1000D1104(inited);
  swift_setDeallocating();
  sub_10026AFDC(inited + 32);
  isa = sub_1005730E8().super.isa;

  v16 = swift_allocObject();
  v17 = a1;
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v12;
  v18[4] = v13;
  v18[5] = a2;
  v18[6] = a3;
  aBlock[4] = sub_100353A8C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003538BC;
  aBlock[3] = &unk_10069CE50;
  v19 = _Block_copy(aBlock);

  v20 = [a1 cachedValuesForKeys:isa observationToken:&v93 updateHandler:v19];
  _Block_release(v19);

  v21 = sub_1005726A8();
  if (*(v21 + 16) && (v22 = sub_1000EB89C(v12, v13), (v23 & 1) != 0))
  {
    sub_100081F38(*(v21 + 56) + 32 * v22, aBlock);

    sub_100009DCC(&qword_1006E84E0);
    if (swift_dynamicCast())
    {
      v24 = *&v95[0];
      v25 = qword_1006E4E50;

      if (v25 != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v26 = static OS_os_log.musicBag;
        v27 = v89;
        sub_10056DF98();

        v28 = sub_10056DF68();
        v29 = sub_100573448();

        if (!os_log_type_enabled(v28, v29))
        {

          (*(v90 + 8))(v27, v91);
          return v17;
        }

        v76 = v29;
        v77 = v28;
        v30 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v96 = v74;
        v75 = v30;
        *v30 = 136315138;
        sub_100009DCC(&qword_1006EE6F8);
        v31 = sub_100574198();
        v32 = v31;
        v33 = 0;
        v34 = *(v24 + 64);
        v78 = v24 + 64;
        v35 = 1 << *(v24 + 32);
        v36 = v35 < 64 ? ~(-1 << v35) : -1;
        v37 = v36 & v34;
        v38 = (v35 + 63) >> 6;
        v88 = "v16@?0@NSDictionary8";
        v83 = v31 + 64;
        v81 = v17;
        v82 = v24;
        v80 = v31;
        v79 = v38;
        if ((v36 & v34) == 0)
        {
          break;
        }

        while (1)
        {
          v39 = __clz(__rbit64(v37));
          v37 &= v37 - 1;
LABEL_16:
          v42 = v39 | (v33 << 6);
          v43 = *(v24 + 56);
          v44 = (*(v24 + 48) + 16 * v42);
          v45 = v44[1];
          v86 = *v44;
          v87 = v42;
          v46 = *(v43 + 8 * v42);
          v24 = *(v46 + 16);
          if (v24)
          {
            v85 = v37;
            v92 = _swiftEmptyArrayStorage;
            v84 = v45;

            sub_1000CC614(0, v24, 0);
            v10 = v92;
            v47 = 32;
            do
            {
              v48 = *(v46 + v47);
              *&v94[0] = 25705;
              *(&v94[0] + 1) = 0xE200000000000000;

              sub_100573E78();
              if (*(v48 + 16) && (v49 = sub_1000EB93C(aBlock), (v50 & 1) != 0))
              {
                sub_100081F38(*(v48 + 56) + 32 * v49, v94);
                sub_1000F4130(aBlock);
                sub_1000F51DC(v94, v95);
                sub_100081F38(v95, aBlock);
                if (swift_dynamicCast())
                {
                  v52 = *(&v94[0] + 1);
                  v51 = *&v94[0];
                }

                else
                {
                  *&v94[0] = 0;
                  *(&v94[0] + 1) = 0xE000000000000000;
                  sub_100573ED8(23);
                  v98._object = (v88 | 0x8000000000000000);
                  v98._countAndFlagsBits = 0xD000000000000014;
                  sub_100572A98(v98);
                  sub_100574098();
                  v99._countAndFlagsBits = 62;
                  v99._object = 0xE100000000000000;
                  sub_100572A98(v99);

                  v52 = *(&v94[0] + 1);
                  v51 = *&v94[0];
                }

                sub_100010474(v95);
              }

              else
              {
                sub_1000F4130(aBlock);

                v51 = 0x204449206261743CLL;
                v52 = 0xEF3E746E65736261;
              }

              v92 = v10;
              v54 = *(v10 + 2);
              v53 = *(v10 + 3);
              if (v54 >= v53 >> 1)
              {
                sub_1000CC614((v53 > 1), v54 + 1, 1);
                v10 = v92;
              }

              *(v10 + 2) = v54 + 1;
              v55 = &v10[16 * v54];
              *(v55 + 4) = v51;
              *(v55 + 5) = v52;
              v47 += 8;
              --v24;
            }

            while (v24);

            v17 = v81;
            v32 = v80;
            v38 = v79;
            v37 = v85;
            v56 = v84;
          }

          else
          {

            v10 = _swiftEmptyArrayStorage;
          }

          v57 = v87;
          *(v83 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
          v58 = (v32[6] + 16 * v57);
          *v58 = v86;
          v58[1] = v56;
          *(v32[7] + 8 * v57) = v10;
          v59 = v32[2];
          v60 = __OFADD__(v59, 1);
          v61 = v59 + 1;
          if (v60)
          {
            break;
          }

          v32[2] = v61;
          v24 = v82;
          if (!v37)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_44:
        swift_once();
      }

LABEL_11:
      v40 = v33;
      while (1)
      {
        v33 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v33 >= v38)
        {

          sub_100009DCC(&unk_1006E84C0);
          v67 = sub_1005726B8();
          v69 = v68;

          v70 = sub_1000C9784(v67, v69, &v96);

          v71 = v75;
          *(v75 + 1) = v70;
          v72 = v77;
          _os_log_impl(&_mh_execute_header, v77, v76, "AMSBag provided initial state of musicTabs: %s", v71, 0xCu);
          sub_100010474(v74);

          (*(v90 + 8))(v89, v91);
          return v17;
        }

        v41 = *(v78 + 8 * v33);
        ++v40;
        if (v41)
        {
          v39 = __clz(__rbit64(v41));
          v37 = (v41 - 1) & v41;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_42;
    }
  }

  else
  {
  }

  if (qword_1006E4E50 != -1)
  {
LABEL_42:
    swift_once();
  }

  v62 = static OS_os_log.musicBag;
  sub_10056DF98();
  v63 = sub_10056DF68();
  v64 = sub_100573448();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "AMSBag didn't provide initial state of musicTabs. No cached value was found.", v65, 2u);
  }

  (*(v90 + 8))(v10, v91);
  return v17;
}

id sub_100352294(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1003539CC(*a1);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5 & 1;

  return a2;
}

void *sub_100352308@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  if (!*result)
  {
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = (*(a2 + 40))(result);

    goto LABEL_9;
  }

  v7 = result[1];

  if (v7)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = sub_100572898();
  v9 = [a3 dictionaryForBagKey:v8];

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = sub_1005726A8();

  v7 = sub_100350A3C(v10);

  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a4 = v7;
  return result;
}

uint64_t sub_100352428()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 11);
  sub_10035250C(&v1[4], v6);
  os_unfair_lock_unlock(v1 + 11);
  v2 = v6[0];
  v3 = v6[2];
  v4 = v7;

  if (v2)
  {
    if ((v4 & 1) == 0)
    {
      [v2 removeObserverWithToken:v3];
    }
  }

  return v0;
}

id sub_10035250C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10056DF88();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) == 0)
    {
      *a2 = v11;
      *(a2 + 8) = v12;
      *(a2 + 24) = 0;

      return v11;
    }

    v28 = result;
    v13 = v12;
    v14 = qword_1006E4E50;
    v15 = v11;

    if (v14 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.musicBag;
    sub_10056DF98();
    v17 = sub_10056DF68();
    v18 = sub_100573438();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27[1] = v13;
      v20 = v19;
      v21 = swift_slowAlloc();
      v27[2] = v3;
      v22 = v21;
      v29 = v21;
      *v20 = 136315138;
      v23 = sub_100574758();
      v25 = sub_1000C9784(v23, v24, &v29);
      v27[0] = v15;
      v26 = v25;

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "    %s wasn't configured with an AMSBag update handler prior to deallocation. This may have caused musicTabs updates to be missed after initialization.", v20, 0xCu);
      sub_100010474(v22);
    }

    else
    {
    }

    result = (*(v7 + 8))(v10, v28);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_100352788()
{
  sub_100352428();

  return swift_deallocClassInstance();
}

uint64_t sub_1003527E0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1003527F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10035280C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_10035285C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1003528B8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

uint64_t sub_1003528EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v9 = sub_100570B88();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100570BC8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(a1 + 16);
    v28 = v14;
    v29 = v10;
    if (v19 && (result = sub_1000EB89C(a3, a4), (v20 & 1) != 0))
    {
      sub_100081F38(*(a1 + 56) + 32 * result, aBlock);
      sub_100009DCC(&qword_1006E84E0);
      result = swift_dynamicCast();
      if (result)
      {
        v21 = v32;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v18 + 16);
    __chkstk_darwin(result);
    *(&v27 - 2) = v21;
    os_unfair_lock_lock(v22 + 11);
    sub_100353AB4(&v22[4], aBlock);
    os_unfair_lock_unlock(v22 + 11);
    if (LOBYTE(aBlock[0]) == 1)
    {
      sub_100155E5C();
      v23 = sub_1005735E8();
      v24 = swift_allocObject();
      v25 = v31;
      v24[2] = v30;
      v24[3] = v25;
      v24[4] = v21;
      aBlock[4] = sub_100353B10;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10007885C;
      aBlock[3] = &unk_10069CEA0;
      v26 = _Block_copy(aBlock);

      sub_100570BA8();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1001ABB90();
      sub_100009DCC(&unk_1006E9B30);
      sub_10019CC54();
      sub_100573DA8();
      sub_100573608();
      _Block_release(v26);

      (*(v29 + 8))(v12, v9);
      return (*(v28 + 8))(v16, v13);
    }

    else
    {
    }
  }

  return result;
}

void sub_100352CA4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v113 = a3;
  v5 = sub_10056DF88();
  v111 = *(v5 - 8);
  v112 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v94 - v9;
  v11 = *a1;
  v12 = &static OS_os_log.musicBag;
  if (!*a1)
  {
    if (qword_1006E4E50 != -1)
    {
      swift_once();
    }

    v51 = static OS_os_log.musicBag;
    sub_10056DF98();
    v52 = sub_10056DF68();
    v53 = sub_100573438();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v117[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_1000C9784(0xD000000000000047, 0x80000001005B72C0, v117);
      _os_log_impl(&_mh_execute_header, v52, v53, "Unexpected update handler call in %s with .userDefaults configuration. This is likely programmer error.", v54, 0xCu);
      sub_100010474(v55);
    }

    (*(v111 + 8))(v8, v112);
    v56 = 0;
    goto LABEL_70;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 24) & 1;
  *(a1 + 8) = a2;
  *(a1 + 24) = v14;
  v15 = qword_1006E4E50;
  swift_bridgeObjectRetain_n();
  v107 = v11;
  if (v15 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v16 = *v12;
    sub_10056DF98();

    v17 = sub_10056DF68();
    v18 = sub_100573448();

    if (!os_log_type_enabled(v17, v18))
    {

      goto LABEL_69;
    }

    v98 = v18;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v120 = v20;
    v102 = v19;
    *v19 = 136315394;
    v109 = a2;
    v108 = v10;
    v99 = v17;
    v97 = v20;
    if (!v13)
    {
      break;
    }

    sub_100009DCC(&qword_1006EE6F8);
    v21 = sub_100574198();
    v22 = v21;
    v23 = 0;
    v24 = *(v13 + 64);
    v96 = v13 + 64;
    v25 = 1 << *(v13 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v12 = v26 & v24;
    v95 = (v25 + 63) >> 6;
    v114 = "v16@?0@NSDictionary8";
    v103 = v21 + 64;
    v101 = v13;
    i = v21;
    if ((v26 & v24) != 0)
    {
      do
      {
        v27 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_15:
        v30 = v27 | (v23 << 6);
        v31 = *(v13 + 56);
        v32 = (*(v13 + 48) + 16 * v30);
        v33 = v32[1];
        v110 = *v32;
        v34 = *(v31 + 8 * v30);
        v35 = *(v34 + 16);
        if (v35)
        {
          v105 = v30;
          v106 = v12;
          v119 = _swiftEmptyArrayStorage;
          v104 = v33;

          sub_1000CC614(0, v35, 0);
          v10 = v119;
          v36 = 32;
          v37 = v34;
          v115 = v34;
          do
          {
            v38 = *(v37 + v36);
            *&v116[0] = 25705;
            *(&v116[0] + 1) = 0xE200000000000000;

            sub_100573E78();
            if (*(v38 + 16) && (v39 = sub_1000EB93C(v117), v37 = v115, (v40 & 1) != 0))
            {
              sub_100081F38(*(v38 + 56) + 32 * v39, v116);
              sub_1000F4130(v117);
              sub_1000F51DC(v116, &v118);
              sub_100081F38(&v118, v117);
              if (swift_dynamicCast())
              {
                v41 = *(&v116[0] + 1);
                v42 = *&v116[0];
              }

              else
              {
                *&v116[0] = 0;
                *(&v116[0] + 1) = 0xE000000000000000;
                sub_100573ED8(23);
                v121._object = (v114 | 0x8000000000000000);
                v121._countAndFlagsBits = 0xD000000000000014;
                sub_100572A98(v121);
                sub_100574098();
                v122._countAndFlagsBits = 62;
                v122._object = 0xE100000000000000;
                sub_100572A98(v122);
                v37 = v115;

                v41 = *(&v116[0] + 1);
                v42 = *&v116[0];
              }

              sub_100010474(&v118);
            }

            else
            {
              sub_1000F4130(v117);

              v42 = 0x204449206261743CLL;
              v41 = 0xEF3E746E65736261;
            }

            v119 = v10;
            v44 = *(v10 + 16);
            v43 = *(v10 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_1000CC614((v43 > 1), v44 + 1, 1);
              v37 = v115;
              v10 = v119;
            }

            *(v10 + 16) = v44 + 1;
            v45 = v10 + 16 * v44;
            *(v45 + 32) = v42;
            *(v45 + 40) = v41;
            v36 += 8;
            --v35;
          }

          while (v35);

          a2 = v109;
          v13 = v101;
          v22 = i;
          v12 = v106;
          v30 = v105;
          v46 = v104;
        }

        else
        {

          v10 = _swiftEmptyArrayStorage;
        }

        *(v103 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v47 = (v22[6] + 16 * v30);
        *v47 = v110;
        v47[1] = v46;
        *(v22[7] + 8 * v30) = v10;
        v48 = v22[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_73;
        }

        v22[2] = v50;
        v10 = v108;
      }

      while (v12);
    }

    v28 = v23;
    while (1)
    {
      v23 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v23 >= v95)
      {
        goto LABEL_39;
      }

      v29 = *(v96 + 8 * v23);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v12 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v22 = 0;
LABEL_39:
  v117[0] = v22;
  v96 = sub_100009DCC(&qword_1006EE700);
  v57 = sub_100572978();
  v59 = v58;

  v12 = sub_1000C9784(v57, v59, &v120);

  v60 = v102;
  *(v102 + 1) = v12;
  *(v60 + 6) = 2080;
  if (a2)
  {
    sub_100009DCC(&qword_1006EE6F8);
    v61 = sub_100574198();
    v62 = v61;
    v63 = *(a2 + 64);
    v95 = a2 + 64;
    v64 = 1 << *(a2 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & v63;
    v67 = (v64 + 63) >> 6;
    v114 = "v16@?0@NSDictionary8";
    v103 = v61 + 64;

    v10 = 0;
    v101 = v62;
    for (i = v67; v66; v62[2] = v88)
    {
      v68 = __clz(__rbit64(v66));
      v66 &= v66 - 1;
LABEL_49:
      v71 = v68 | (v10 << 6);
      v72 = *(a2 + 56);
      v73 = (*(a2 + 48) + 16 * v71);
      v74 = v73[1];
      v110 = *v73;
      v13 = *(v72 + 8 * v71);
      v75 = *(v13 + 16);
      if (v75)
      {
        v105 = v71;
        v106 = v66;
        v119 = _swiftEmptyArrayStorage;
        v104 = v74;

        sub_1000CC614(0, v75, 0);
        v12 = v119;
        v76 = 32;
        v77 = v13;
        v115 = v13;
        do
        {
          v78 = *(v77 + v76);
          *&v116[0] = 25705;
          *(&v116[0] + 1) = 0xE200000000000000;

          sub_100573E78();
          if (*(v78 + 16) && (v79 = sub_1000EB93C(v117), v77 = v115, (v80 & 1) != 0))
          {
            sub_100081F38(*(v78 + 56) + 32 * v79, v116);
            sub_1000F4130(v117);
            sub_1000F51DC(v116, &v118);
            sub_100081F38(&v118, v117);
            if (swift_dynamicCast())
            {
              v13 = *(&v116[0] + 1);
              v81 = *&v116[0];
            }

            else
            {
              *&v116[0] = 0;
              *(&v116[0] + 1) = 0xE000000000000000;
              sub_100573ED8(23);
              v123._object = (v114 | 0x8000000000000000);
              v123._countAndFlagsBits = 0xD000000000000014;
              sub_100572A98(v123);
              sub_100574098();
              v124._countAndFlagsBits = 62;
              v124._object = 0xE100000000000000;
              sub_100572A98(v124);
              v77 = v115;

              v13 = *(&v116[0] + 1);
              v81 = *&v116[0];
            }

            sub_100010474(&v118);
          }

          else
          {
            sub_1000F4130(v117);

            v81 = 0x204449206261743CLL;
            v13 = 0xEF3E746E65736261;
          }

          v119 = v12;
          v83 = *(v12 + 16);
          v82 = *(v12 + 24);
          if (v83 >= v82 >> 1)
          {
            sub_1000CC614((v82 > 1), v83 + 1, 1);
            v77 = v115;
            v12 = v119;
          }

          *(v12 + 16) = v83 + 1;
          v84 = v12 + 16 * v83;
          *(v84 + 32) = v81;
          *(v84 + 40) = v13;
          v76 += 8;
          --v75;
        }

        while (v75);

        a2 = v109;
        v62 = v101;
        v67 = i;
        v66 = v106;
        v71 = v105;
        v85 = v104;
      }

      else
      {

        v12 = _swiftEmptyArrayStorage;
      }

      *(v103 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
      v86 = (v62[6] + 16 * v71);
      *v86 = v110;
      v86[1] = v85;
      *(v62[7] + 8 * v71) = v12;
      v87 = v62[2];
      v49 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v49)
      {
        goto LABEL_74;
      }
    }

    v69 = v10;
    while (1)
    {
      v10 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_72;
      }

      if (v10 >= v67)
      {

        v10 = v108;
        goto LABEL_68;
      }

      v70 = *(v95 + 8 * v10);
      ++v69;
      if (v70)
      {
        v68 = __clz(__rbit64(v70));
        v66 = (v70 - 1) & v70;
        goto LABEL_49;
      }
    }
  }

  v62 = 0;
LABEL_68:
  v117[0] = v62;
  v89 = sub_100572978();
  v91 = sub_1000C9784(v89, v90, &v120);

  v92 = v102;
  *(v102 + 14) = v91;
  v93 = v99;
  _os_log_impl(&_mh_execute_header, v99, v98, "    AMSBag provided updated musicTabs dictionary.\n    Previous: %s\n    Updated: %s", v92, 0x16u);
  swift_arrayDestroy();

LABEL_69:
  (*(v111 + 8))(v10, v112);

  v56 = 1;
LABEL_70:
  *v113 = v56;
}

uint64_t sub_1003538BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1005726A8();

  v1(v2);
}

uint64_t sub_100353940(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EE6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1003539CC(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100353A0C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100353A44()
{

  return swift_deallocObject();
}

uint64_t sub_100353A9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100353AD0()
{

  return swift_deallocObject();
}

uint64_t sub_100353B40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100353B88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, int a2, int a3)
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

uint64_t sub_100353C2C(uint64_t a1)
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

uint64_t sub_100353C48(uint64_t result, int a2)
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

uint64_t OptimisticValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for OptimisticValue() + 28);
  v7 = type metadata accessor for OptimisticValue.Transaction();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, a1, a2);
}

uint64_t sub_100353D70(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v29 - v9;
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = *(v4 + 16);
  (v13)(&v29 - v11, v1, v3);
  v14 = v1 + *(a1 + 28);
  v15 = type metadata accessor for OptimisticValue.Transaction();
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    (*(v4 + 24))(v14 + *(v15 + 28), v12, v3);
  }

  if (qword_1006E5668 != -1)
  {
    swift_once();
  }

  v16 = sub_10056DF88();
  sub_10000C49C(v16, qword_1006EE710);
  (v13)(v10, v12, v3);
  v17 = sub_10056DF68();
  v18 = sub_100573448();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v13;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136446210;
    (v29)(v7, v10, v3);
    v22 = sub_100572978();
    v24 = v23;
    v29 = v12;
    v25 = *(v4 + 8);
    v25(v10, v3);
    v26 = sub_1000C9784(v22, v24, &v30);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "Underlying value updated to %{public}s", v20, 0xCu);
    sub_100010474(v21);

    return (v25)(v29, v3);
  }

  else
  {

    v28 = *(v4 + 8);
    v28(v10, v3);
    return (v28)(v12, v3);
  }
}

uint64_t OptimisticValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for OptimisticValue.Transaction();
  v7 = sub_100573C28();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = *(v5 - 8);
  __chkstk_darwin(v9);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v2 + *(a1 + 28), v7);
  v15 = *(v6 - 8);
  if ((*(v15 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return (*(v12 + 16))(a2, v2, v5);
  }

  else
  {
    (*(v12 + 16))(v14, &v11[*(v6 + 32)], v5);
    (*(v15 + 8))(v11, v6);
    return (*(v12 + 32))(a2, v14, v5);
  }
}

uint64_t OptimisticValue.value.setter(uint64_t a1, uint64_t a2)
{
  sub_100355ADC(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*OptimisticValue.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v5[4] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[6] = v10;
  OptimisticValue.value.getter(a2, v10);
  return sub_100354470;
}

void sub_100354470(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v8);
    (*(v5 + 24))(v7, v3, v8);
    sub_100353D70(v9);
    v10 = *(v6 + 8);
    v10(v3, v8);
    v10(v4, v8);
  }

  else
  {
    (*(v5 + 24))((*a1)[1], v4, v8);
    sub_100353D70(v9);
    (*(v6 + 8))(v4, v8);
  }

  free(v4);
  free(v3);

  free(v2);
}

void OptimisticValue.beginTransaction(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v35 = a1;
  v7 = *(a2 + 16);
  v8 = type metadata accessor for OptimisticValue.Transaction();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v36 = &v34 - v13;
  v14 = *(v7 - 8);
  v15 = __chkstk_darwin(v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  v20 = *(v14 + 16);
  v20(&v34 - v18, v4, v7);
  v20(v17, v35, v7);
  sub_1003549A8(v19, v17, v7, a3);
  v21 = *(a2 + 28);
  v22 = sub_100573C28();
  (*(*(v22 - 8) + 8))(v4 + v21, v22);
  v23 = *(v9 + 16);
  v23(v4 + v21, a3, v8);
  (*(v9 + 56))(v4 + v21, 0, 1, v8);
  if (qword_1006E5668 != -1)
  {
    swift_once();
  }

  v24 = sub_10056DF88();
  sub_10000C49C(v24, qword_1006EE710);
  v25 = v36;
  v23(v36, a3, v8);
  v26 = sub_10056DF68();
  v27 = sub_100573448();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136446210;
    v23(v34, v25, v8);
    v30 = sub_100572978();
    v32 = v31;
    (*(v9 + 8))(v25, v8);
    v33 = sub_1000C9784(v30, v32, &v37);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "New transaction: %{public}s", v28, 0xCu);
    sub_100010474(v29);
  }

  else
  {

    (*(v9 + 8))(v25, v8);
  }
}

uint64_t sub_1003549A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v8 = type metadata accessor for OptimisticValue.Transaction();
  v11 = *(*(a3 - 8) + 32);
  v11(a4 + *(v8 + 28), a1, a3);
  v9 = a4 + *(v8 + 32);

  return (v11)(v9, a2, a3);
}

uint64_t OptimisticValue.cancelTransaction(_:)(char *a1, uint64_t a2)
{
  v70 = *(a2 + 16);
  v4 = type metadata accessor for OptimisticValue.Transaction();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = &v60 - v8;
  v9 = sub_100573C28();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v60 - v12;
  v77 = *(v9 - 8);
  v14 = v77;
  v15 = __chkstk_darwin(v11);
  v76 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - v18;
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = v5[2];
  v69 = a1;
  v62 = v22;
  v63 = v5 + 2;
  v22(&v60 - v20, a1, v4);
  v65 = v5[7];
  v66 = v5 + 7;
  v65(v21, 0, 1, v4);
  v71 = a2;
  v23 = *(a2 + 28);
  v68 = v14;
  v24 = *(v14 + 16);
  v64 = v23;
  v25 = v9;
  v24(v19, v78 + v23, v9);
  v74 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v24(v13, v21, v25);
  v75 = v26;
  v24(&v13[v26], v19, v25);
  v27 = v5;
  v28 = v5[6];
  v79 = v13;
  if (v28(v13, 1, v4) == 1)
  {
    v61 = v27;
    v29 = *(v77 + 8);
    v29(v19, v25);
    v29(v21, v25);
    v30 = v79;
    v31 = v28(&v79[v75], 1, v4) == 1;
    v32 = v30;
    if (!v31)
    {
      return (*(v73 + 8))(v32, v74);
    }

    v33 = v4;
    v29(v30, v25);
LABEL_9:
    v79 = v29;
    v44 = v25;
    if (qword_1006E5668 != -1)
    {
      swift_once();
    }

    v45 = sub_10056DF88();
    sub_10000C49C(v45, qword_1006EE710);
    v46 = v67;
    v47 = v69;
    v48 = v62;
    v62(v67, v69, v33);
    v49 = sub_10056DF68();
    v50 = sub_100573448();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v80 = v52;
      *v51 = 136446210;
      v48(v72, v46, v33);
      v53 = v33;
      v54 = sub_100572978();
      v56 = v55;
      (v61[1])(v46, v53);
      v57 = sub_1000C9784(v54, v56, &v80);

      *(v51 + 4) = v57;
      v33 = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "Cancelled transaction: %{public}s", v51, 0xCu);
      sub_100010474(v52);
    }

    else
    {

      (v61[1])(v46, v33);
    }

    v58 = v78;
    (*(*(v70 - 8) + 24))(v78, &v47[*(v33 + 28)]);
    sub_100353D70(v71);
    v59 = v64;
    (v79)(v58 + v64, v44);
    return v65(v58 + v59, 1, 1, v33);
  }

  v34 = v79;
  v24(v76, v79, v25);
  v35 = &v34[v75];
  v36 = v75;
  v33 = v4;
  if (v28(v35, 1, v4) == 1)
  {
    v37 = *(v77 + 8);
    v37(v19, v25);
    v37(v21, v25);
    (v27[1])(v76, v4);
    v32 = v79;
    return (*(v73 + 8))(v32, v74);
  }

  v61 = v27;
  v39 = v79;
  v40 = v72;
  (v27[4])(v72, &v79[v36], v33);
  v41 = v76;
  LODWORD(v75) = _s9MusicCore15OptimisticValueV11TransactionV2eeoiySbAEyx_G_AGtFZ_0();
  v42 = v27[1];
  v42(v40, v33);
  v43 = *(v77 + 8);
  v43(v19, v25);
  v43(v21, v25);
  v42(v41, v33);
  v29 = v43;
  result = (v43)(v39, v25);
  if (v75)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t OptimisticValue.completeTransaction(_:)(char *a1, uint64_t a2)
{
  v70 = *(a2 + 16);
  v4 = type metadata accessor for OptimisticValue.Transaction();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = &v60 - v8;
  v9 = sub_100573C28();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v60 - v12;
  v77 = *(v9 - 8);
  v14 = v77;
  v15 = __chkstk_darwin(v11);
  v76 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - v18;
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = v5[2];
  v69 = a1;
  v62 = v22;
  v63 = v5 + 2;
  v22(&v60 - v20, a1, v4);
  v65 = v5[7];
  v66 = v5 + 7;
  v65(v21, 0, 1, v4);
  v71 = a2;
  v23 = *(a2 + 28);
  v68 = v14;
  v24 = *(v14 + 16);
  v64 = v23;
  v25 = v9;
  v24(v19, v78 + v23, v9);
  v74 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v24(v13, v21, v25);
  v75 = v26;
  v24(&v13[v26], v19, v25);
  v27 = v5;
  v28 = v5[6];
  v79 = v13;
  if (v28(v13, 1, v4) == 1)
  {
    v61 = v27;
    v29 = *(v77 + 8);
    v29(v19, v25);
    v29(v21, v25);
    v30 = v79;
    v31 = v28(&v79[v75], 1, v4) == 1;
    v32 = v30;
    if (!v31)
    {
      return (*(v73 + 8))(v32, v74);
    }

    v33 = v4;
    v29(v30, v25);
LABEL_9:
    v79 = v29;
    v44 = v25;
    if (qword_1006E5668 != -1)
    {
      swift_once();
    }

    v45 = sub_10056DF88();
    sub_10000C49C(v45, qword_1006EE710);
    v46 = v67;
    v47 = v69;
    v48 = v62;
    v62(v67, v69, v33);
    v49 = sub_10056DF68();
    v50 = sub_100573448();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v80 = v52;
      *v51 = 136446210;
      v48(v72, v46, v33);
      v53 = v33;
      v54 = sub_100572978();
      v56 = v55;
      (v61[1])(v46, v53);
      v57 = sub_1000C9784(v54, v56, &v80);

      *(v51 + 4) = v57;
      v33 = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "Completed transaction: %{public}s", v51, 0xCu);
      sub_100010474(v52);
    }

    else
    {

      (v61[1])(v46, v33);
    }

    v58 = v78;
    (*(*(v70 - 8) + 24))(v78, &v47[*(v33 + 32)]);
    sub_100353D70(v71);
    v59 = v64;
    (v79)(v58 + v64, v44);
    return v65(v58 + v59, 1, 1, v33);
  }

  v34 = v79;
  v24(v76, v79, v25);
  v35 = &v34[v75];
  v36 = v75;
  v33 = v4;
  if (v28(v35, 1, v4) == 1)
  {
    v37 = *(v77 + 8);
    v37(v19, v25);
    v37(v21, v25);
    (v27[1])(v76, v4);
    v32 = v79;
    return (*(v73 + 8))(v32, v74);
  }

  v61 = v27;
  v39 = v79;
  v40 = v72;
  (v27[4])(v72, &v79[v36], v33);
  v41 = v76;
  LODWORD(v75) = _s9MusicCore15OptimisticValueV11TransactionV2eeoiySbAEyx_G_AGtFZ_0();
  v42 = v27[1];
  v42(v40, v33);
  v43 = *(v77 + 8);
  v43(v19, v25);
  v43(v21, v25);
  v42(v41, v33);
  v29 = v43;
  result = (v43)(v39, v25);
  if (v75)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t static OptimisticValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OptimisticValue();
  OptimisticValue.value.getter(v10, v9);
  OptimisticValue.value.getter(v10, v7);
  v11 = sub_1005727E8();
  v12 = *(v4 + 8);
  v12(v7, a3);
  v12(v9, a3);
  return v11 & 1;
}

uint64_t sub_100355A58()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006EE710);
  sub_10000C49C(v0, qword_1006EE710);
  return sub_10056DF78();
}

uint64_t sub_100355ADC(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 24))(v2, a1);

  return sub_100353D70(a2);
}

uint64_t sub_100355B44()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for OptimisticValue.Transaction();
    result = sub_100573C28();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100355BDC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_10056CAE8() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v7 <= v10)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v8 + 64);
  if (v11)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 80);
  v18 = *(v6 + 80) | *(v9 + 80);
  v19 = v14 + v18;
  v20 = v15 + v17;
  v21 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v22 = v16 + ((v14 + v17 + (v20 & ~v17)) & ~v17) + (v19 & ~v18);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_16;
  }

  v25 = ((v21 + ~(-1 << v23)) >> v23) + 1;
  v21 = HIWORD(v25);
  if (v21)
  {
    v24 = *(a1 + v22);
    if (!v24)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 >= 2)
  {
LABEL_16:
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

LABEL_23:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v28 = *a1;
        }
      }

      else if (v27 == 1)
      {
        v28 = *a1;
      }

      else
      {
        v28 = *a1;
      }
    }

    else
    {
      v28 = 0;
    }

    return v13 + (v28 | v26) + 1;
  }

LABEL_36:
  if (!v13)
  {
    return 0;
  }

LABEL_37:
  if (v7 >= v12)
  {
    v33 = *(v6 + 48);

    return v33(a1, v7, v5);
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    v29 = (a1 + v19) & ~v18;
    if (v10 >= v7)
    {
      v34 = (*(v9 + 48))(v29);
      v31 = v34 != 0;
      result = (v34 - 1);
      if (result != 0 && v31)
      {
        return result;
      }

      return 0;
    }

    v30 = (*(v6 + 48))((v20 + v29) & ~v17, v7, v5, v21);
    v31 = v30 != 0;
    result = (v30 - 1);
    if (result == 0 || !v31)
    {
      return 0;
    }
  }

  return result;
}

void sub_100355EA0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_10056CAE8();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v8 + 64);
  if (v9 <= v15)
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v9;
  }

  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v11 + 80);
  v21 = *(v11 + 80) | *(v13 + 80);
  v22 = *(v13 + 64) + v20;
  v23 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  if (v17)
  {
    v24 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v24 + ((v16 + v21) & ~v21);
  if (a3 <= v19)
  {
    goto LABEL_27;
  }

  if (v25 > 3)
  {
    v12 = 1;
    if (v19 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v28 = ~v19 + a2;
    if (v25 >= 4)
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v12 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v12)
      {
        a1[v25] = v29;
      }

      return;
    }

    v29 = (v28 >> (8 * v25)) + 1;
    if (v25)
    {
      v34 = v28 & ~(-1 << (8 * v25));
      bzero(a1, v25);
      if (v25 != 3)
      {
        if (v25 == 2)
        {
          *a1 = v34;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v28;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v12 == 2)
        {
          *&a1[v25] = v29;
        }

        else
        {
          *&a1[v25] = v29;
        }

        return;
      }

      *a1 = v34;
      a1[2] = BYTE2(v34);
    }

    if (v12 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v26 = ((a3 - v19 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
  if (!HIWORD(v26))
  {
    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v12 = v27;
    }

    else
    {
      v12 = 0;
    }

LABEL_27:
    if (v19 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v12 = 4;
  if (v19 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v25] = 0;
  }

  else if (v12)
  {
    a1[v25] = 0;
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
  if (v9 >= v18)
  {
    v35 = *(v11 + 56);
    v36 = a1;
    v37 = a2;
    goto LABEL_53;
  }

  v30 = (&a1[v16 + v21] & ~v21);
  if (v18 < a2)
  {
    if (v24 <= 3)
    {
      v31 = ~(-1 << (8 * v24));
    }

    else
    {
      v31 = -1;
    }

    if (v24)
    {
      v32 = v31 & (~v18 + a2);
      if (v24 <= 3)
      {
        v33 = v24;
      }

      else
      {
        v33 = 4;
      }

      bzero(v30, v24);
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
LABEL_46:
          *v30 = v32;
          return;
        }

LABEL_80:
        *v30 = v32;
        return;
      }

LABEL_81:
      if (v33 == 3)
      {
        *v30 = v32;
        v30[2] = BYTE2(v32);
      }

      else
      {
        *v30 = v32;
      }

      return;
    }

    return;
  }

  if (a2 < v17)
  {
    if (v15 >= v9)
    {
      v39 = *(v14 + 56);

      v39(v30, (a2 + 1));
      return;
    }

    v35 = *(v11 + 56);
    v36 = (&v30[v22] & ~v20);
    v37 = (a2 + 1);
LABEL_53:

    v35(v36, v37, v9, v7);
    return;
  }

  if (v23 <= 3)
  {
    v38 = ~(-1 << (8 * v23));
  }

  else
  {
    v38 = -1;
  }

  if (v23)
  {
    v32 = v38 & (a2 - v17);
    if (v23 <= 3)
    {
      v33 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
    }

    else
    {
      v33 = 4;
    }

    bzero(v30, v23);
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
        goto LABEL_46;
      }

      goto LABEL_80;
    }

    goto LABEL_81;
  }
}

uint64_t sub_1003562C8()
{
  result = sub_10056CAE8();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100356350(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_10056CAE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_10035659C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_10056CAE8() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((*(v10 + 64) + v13 + ((v12 + v13) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
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
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

unint64_t PlayActivityFeatureIdentifier.rawValue.getter(char a1)
{
  result = 0x65645F6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x736D75626C61;
      break;
    case 2:
      result = 0x5F7972617262696CLL;
      break;
    case 3:
      result = 0x74616C69706D6F63;
      break;
    case 4:
      result = 0x7265736F706D6F63;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x726F665F6564616DLL;
      break;
    case 7:
      result = 0x736569766F6DLL;
      break;
    case 8:
      result = 0x69765F636973756DLL;
      break;
    case 9:
      result = 1936615792;
      break;
    case 10:
      result = 0x7473696C79616C70;
      break;
    case 11:
    case 12:
      result = 0x7473696C79616C70;
      break;
    case 13:
      result = 0x796C746E65636572;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x73676E6F73;
      break;
    case 16:
      result = 0x73776F6873;
      break;
    case 17:
      result = 0x7365646F73697065;
      break;
    case 18:
      result = 0x79616C705F776F6ELL;
      break;
    case 19:
      result = 0x616C705F696E696DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100356B08(char *a1, char *a2)
{
  v2 = *a2;
  v3 = PlayActivityFeatureIdentifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PlayActivityFeatureIdentifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100574498();
  }

  return v8 & 1;
}

Swift::Int sub_100356B90()
{
  v1 = *v0;
  sub_100574678();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_100356BF4()
{
  PlayActivityFeatureIdentifier.rawValue.getter(*v0);
  sub_1005729F8();
}

Swift::Int sub_100356C48()
{
  v1 = *v0;
  sub_100574678();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_100356CA8@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_100356CD8@<X0>(unint64_t *a1@<X8>)
{
  result = PlayActivityFeatureIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1005744E8();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100356D5C()
{
  result = qword_1006EE828;
  if (!qword_1006EE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE828);
  }

  return result;
}

uint64_t PlaylistSortingController.trackListSortDidChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v2 = *v1;
  sub_1000E672C(*v1);
  return v2;
}

uint64_t PlaylistSortingController.trackListSortDidChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000F3E14(v6);
}

uint64_t sub_100356EE0(__int16 a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v5 = v4[1];
  result = sub_100134284(a1, *v4);
  if ((result & 1) == 0 || ((((a1 & 0x100) == 0) ^ v5) & 1) == 0)
  {
    v7 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *v4;
      if (v4[1])
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v8(v10 | v9);
      sub_1000F3E14(v8);
    }

    v11 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate;
    *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 1;
    v12 = [objc_opt_self() standardUserDefaults];
    v13 = *v4;
    v14 = v4[1];
    v19[3] = &type metadata for Actions.SortPlaylist.TrackListSort;
    v19[4] = sub_10026093C();
    v19[5] = sub_100260990();
    LOBYTE(v19[0]) = v13;
    BYTE1(v19[0]) = v14;
    sub_100572158();
    if (!v15)
    {
      sub_1005721A8();
    }

    sub_1000C5FB8();
    v16 = sub_100573CE8();
    v18 = v17;

    v20._countAndFlagsBits = v16;
    v20._object = v18;
    sub_100572A98(v20);

    NSUserDefaults.encodeValue(_:forKey:)(v19);

    result = sub_100010474(v19);
    *(v2 + v11) = 0;
  }

  return result;
}

uint64_t PlaylistSortingController.currentTrackListSort.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | *v1;
}

uint64_t PlaylistSortingController.currentTrackListSort.setter(__int16 a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_100356EE0(v6 | v4);
}

void (*PlaylistSortingController.currentTrackListSort.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 40) = *v6;
  *(v4 + 41) = v7;
  return sub_100357274;
}

void sub_100357274(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 41);
  v4 = *v2;
  v5 = v2[1];
  *v2 = *(*a1 + 40);
  v2[1] = v3;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_100356EE0(v6 | v4);

  free(v1);
}

uint64_t PlaylistSortingController.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009DCC(&qword_1006E8BE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1005722D8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  *v11 = 0;
  v11[1] = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort) = 256;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = 0;
  sub_10000CC8C(a1, v6, &qword_1006E8BE0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10001036C(a1, &qword_1006E8BE0);
    sub_10001036C(v6, &qword_1006E8BE0);
LABEL_15:
    sub_1000F3E14(*(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_100571898();
  sub_100571888();
  sub_100571728();

  v12 = sub_100571828();

  if ((v12 & 1) == 0)
  {
    sub_10001036C(a1, &qword_1006E8BE0);
    (*(v8 + 8))(v10, v7);
    goto LABEL_15;
  }

  (*(v8 + 16))(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist, v10, v7);
  v39 = objc_opt_self();
  v13 = [v39 standardUserDefaults];
  v43 = 0x2D74726F53;
  v44 = 0xE500000000000000;
  v14 = sub_100572158();
  v40 = a1;
  if (!v15)
  {
    v14 = sub_1005721A8();
  }

  v49 = v14;
  v50 = v15;
  v47 = 46;
  v48 = 0xE100000000000000;
  v45 = 45;
  v46 = 0xE100000000000000;
  sub_1000C5FB8();
  v16 = sub_100573CE8();
  v18 = v17;

  v51._countAndFlagsBits = v16;
  v51._object = v18;
  sub_100572A98(v51);

  sub_10026093C();
  sub_100260990();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, &v45);

  if ((v45 & 0xFF00) == 0x200)
  {
    v19 = [v39 standardUserDefaults];
    v20 = sub_100572158();
    if (!v21)
    {
      v20 = sub_1005721A8();
    }

    v43 = v20;
    v44 = v21;
    v49 = 46;
    v50 = 0xE100000000000000;
    v47 = 45;
    v48 = 0xE100000000000000;
    LOBYTE(v22) = 1;
    v23 = sub_100573CE8();
    v25 = v24;

    v26 = NSUserDefaults.sortType(for:keyDomain:)(0xC2u, v23, v25);

    v27 = 0;
    if (v26 <= 6u)
    {
      switch(v26)
      {
        case 1u:
          v27 = 0;
          LOBYTE(v22) = 0;
          break;
        case 2u:
          v27 = 1;
          break;
        case 6u:
          v27 = 2;
          break;
      }

      goto LABEL_25;
    }

    switch(v26)
    {
      case 7u:
        v27 = 3;
        break;
      case 0xBu:
        goto LABEL_21;
      case 0xCu:
        LOBYTE(v22) = 0;
LABEL_21:
        v27 = 4;
        break;
    }
  }

  else
  {
    v27 = v45;
    v22 = BYTE1(v45) & 1;
  }

LABEL_25:
  v28 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  *v28 = v27;
  v28[1] = v22;
  v49 = 0x2D74726F53;
  v50 = 0xE500000000000000;
  v29 = sub_100572158();
  if (!v30)
  {
    v29 = sub_1005721A8();
  }

  v31 = v29;
  v32 = v30;
  v39 = sub_100357A80();
  v47 = v31;
  v48 = v32;
  v45 = 46;
  v46 = 0xE100000000000000;
  v41 = 45;
  v42 = 0xE100000000000000;
  v33 = sub_100573CE8();
  v35 = v34;

  v52._countAndFlagsBits = v33;
  v52._object = v35;
  sub_100572A98(v52);

  v36 = swift_allocObject();
  swift_weakInit();

  v37 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v49, 0, 0, sub_100357EF0, v36, &type metadata for String);

  sub_10001036C(v40, &qword_1006E8BE0);

  (*(v8 + 8))(v10, v7);

  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = v37;

  return v2;
}

unint64_t sub_100357A80()
{
  result = qword_1006EE858;
  if (!qword_1006EE858)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006EE858);
  }

  return result;
}

uint64_t sub_100357ACC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100357B04(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) & 1) == 0)
    {
      v6 = result;
      sub_10000CC8C(a1, v15, &qword_1006EA040);
      if (!v16)
      {

        return sub_10001036C(v15, &qword_1006EA040);
      }

      if (swift_dynamicCast())
      {
        v8 = v14[1];
        v7 = v14[2];
        sub_10056C298();
        swift_allocObject();
        sub_10056C288();
        sub_10026093C();
        sub_10056C278();

        v9 = v15[0];
        v10 = v15[1];
        v11 = sub_100572F48();
        (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
        sub_100572F08();

        v12 = sub_100572EF8();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = &protocol witness table for MainActor;
        *(v13 + 32) = v6;
        *(v13 + 40) = v9;
        *(v13 + 41) = v10;
        sub_1001B3FAC(0, 0, v4, &unk_1005969A0, v13);

        sub_10008246C(v8, v7);
      }
    }
  }

  return result;
}

uint64_t sub_100357EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  sub_100572F08();
  *(v5 + 48) = sub_100572EF8();
  v7 = sub_100572E78();

  return _swift_task_switch(sub_100357F94, v7, v6);
}

uint64_t sub_100357F94()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = HIBYTE(v1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_100356EE0(v6 | v4);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t PlaylistSortingController.actionBuilder.getter()
{
  v1 = sub_100009DCC(&qword_1006E7238);
  __chkstk_darwin(v1 - 8);
  v72 = v58 - v2;
  v71 = type metadata accessor for Actions.SortPlaylist.Context();
  v70 = *(v71 - 8);
  v3 = __chkstk_darwin(v71);
  v68 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v67 = v58 - v6;
  v69 = v7;
  __chkstk_darwin(v5);
  v63 = v58 - v8;
  v66 = sub_100009DCC(&qword_1006E6D10);
  v65 = *(v66 - 8);
  v9 = __chkstk_darwin(v66);
  v62 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v61 = v58 - v12;
  v13 = __chkstk_darwin(v11);
  v60 = v58 - v14;
  v64 = v15;
  __chkstk_darwin(v13);
  v17 = v58 - v16;
  v73 = v0;
  v58[1] = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v59 = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  swift_beginAccess();
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v77 = xmmword_10057B510;
  do
  {
    v76 = v19;
    v75 = v18;
    v20 = *(&off_100685C08 + v18 + 32);
    v21 = *v59;
    v22 = v59[1];
    v23 = v72;
    sub_100572148();
    v24 = v71;
    v25 = *(v71 + 24);
    v26 = sub_100572128();
    v27 = v63;
    (*(*(v26 - 8) + 56))(&v63[v25], 1, 1, v26);
    *v27 = v20;
    v27[1] = v21;
    v27[2] = v22;
    v28 = v73;

    sub_100135540(v23, &v27[v25]);
    v29 = &v27[*(v24 + 28)];
    *v29 = sub_100358D9C;
    v29[1] = v28;
    v30 = v67;
    sub_100135934(v27, v67);
    v31 = v20 + 14;
    v74 = v20 + 14;
    v32 = v68;
    sub_100135934(v27, v68);
    v33 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v34 = swift_allocObject();
    sub_100135C90(v32, v34 + v33);
    sub_100135C90(v30, v17);
    v35 = v66;
    v17[*(v66 + 36)] = v31;
    *&v17[v35[11]] = 0x4014000000000000;
    v36 = &v17[v35[10]];
    *v36 = variable initialization expression of _NSRange.NSRangeIterator.current;
    v36[1] = 0;
    v37 = &v17[v35[12]];
    *v37 = &unk_100587C10;
    *(v37 + 1) = v34;
    v38 = &v17[v35[13]];
    *v38 = &unk_100587C18;
    *(v38 + 1) = 0;
    sub_100358FC8(v27);
    sub_100009DCC(&qword_1006E6288);
    inited = swift_initStackObject();
    *(inited + 16) = v77;
    v40 = v60;
    sub_10000CC8C(v17, v60, &qword_1006E6D10);
    v41 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v42 = swift_allocObject();
    sub_100359024(v40, v42 + v41);
    v43 = v61;
    sub_10000CC8C(v17, v61, &qword_1006E6D10);
    v44 = swift_allocObject();
    sub_100359024(v43, v44 + v41);
    v45 = v62;
    sub_10000CC8C(v17, v62, &qword_1006E6D10);
    v46 = swift_allocObject();
    sub_100359024(v45, v46 + v41);
    *(inited + 32) = v74;
    *(inited + 40) = sub_100359094;
    *(inited + 48) = v42;
    *(inited + 56) = sub_100359110;
    *(inited + 64) = v44;
    *(inited + 72) = &unk_1005967F8;
    *(inited + 80) = v46;
    v19 = v76;
    sub_10001036C(v17, &qword_1006E6D10);
    sub_100009DCC(&qword_1006E6190);
    v47 = swift_initStackObject();
    *(v47 + 16) = v77;
    *(v47 + 32) = inited;
    v48 = v47 + 32;
    v49 = sub_1000DBFDC(v47);
    swift_setDeallocating();
    sub_10001036C(v48, &qword_1006E6198);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1000D0810(0, v19[2] + 1, 1, v19);
    }

    v51 = v19[2];
    v50 = v19[3];
    v52 = v75;
    if (v51 >= v50 >> 1)
    {
      v19 = sub_1000D0810((v50 > 1), v51 + 1, 1, v19);
    }

    v18 = v52 + 1;
    v19[2] = v51 + 1;
    v19[v51 + 4] = v49;
  }

  while (v18 != 5);
  v53 = sub_1000DBFDC(v19);

  v54 = swift_initStackObject();
  *(v54 + 16) = v77;
  *(v54 + 32) = v53;
  v55 = v54 + 32;
  v56 = sub_1000DBFDC(v54);
  swift_setDeallocating();
  sub_10001036C(v55, &qword_1006E6198);
  return v56;
}

uint64_t sub_1003587BC(__int16 a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_100356EE0(v6 | v4);
}

uint64_t static PlaylistSortingController.apply(for:to:)(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E8BE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1005722D8();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  swift_allocObject();
  result = PlaylistSortingController.init(_:)(v4);
  if (result)
  {
    PlaylistSortingController.apply(to:)();
  }

  return result;
}

uint64_t PlaylistSortingController.apply(to:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v2 = *v1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      swift_getKeyPath();
      sub_100009DCC(&qword_1006EE860);
      sub_100571208();

      swift_getKeyPath();
      sub_100571208();
    }

    else
    {
      if (v2 != 3)
      {
        swift_getKeyPath();
        sub_100009DCC(&qword_1006EE860);
        sub_100571208();
        goto LABEL_10;
      }

      swift_getKeyPath();
      sub_100009DCC(&qword_1006EE860);
      sub_100571208();
    }

    swift_getKeyPath();
    sub_100571208();
LABEL_10:

LABEL_12:
    swift_getKeyPath();
    goto LABEL_13;
  }

  if (*v1)
  {
    swift_getKeyPath();
    sub_100009DCC(&qword_1006EE860);
    sub_100571208();

    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_100009DCC(&qword_1006EE860);
LABEL_13:
  sub_100571208();
}

uint64_t PlaylistSortingController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = sub_1005722D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000F3E14(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

  return v0;
}

uint64_t PlaylistSortingController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = sub_1005722D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000F3E14(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

  return swift_deallocClassInstance();
}

uint64_t sub_100358D18()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006EE830);
  sub_10000C49C(v0, qword_1006EE830);
  return sub_10056DF78();
}

uint64_t sub_100358DA8()
{
  v1 = type metadata accessor for Actions.SortPlaylist.Context();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 24);
  v4 = sub_100572128();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100358EE4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Actions.SortPlaylist.Context() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000116F0;

  return sub_100135998(a1, a2, v2 + v7);
}

uint64_t sub_100358FC8(uint64_t a1)
{
  v2 = type metadata accessor for Actions.SortPlaylist.Context();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100359024(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E6D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100359094@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_100009DCC(&qword_1006E6D10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000F55E8(v4, a1);
}

uint64_t sub_100359110()
{
  v1 = *(sub_100009DCC(&qword_1006E6D10) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000F561C(v2);
}

uint64_t sub_100359180()
{
  v2 = *(sub_100009DCC(&qword_1006E6D10) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000CB98;

  return sub_1000F5B30(v0 + v3);
}

uint64_t sub_1003592D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000C8CC(a1, a1[3]);
  result = sub_10056D3F8();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100359338@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000C8CC(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_100359390@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000C8CC(a1, a1[3]);
  result = sub_10056D408();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for PlaylistSortingController()
{
  result = qword_1006EE890;
  if (!qword_1006EE890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10035942C()
{
  result = sub_1005722D8();
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

uint64_t sub_1003594E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100359524(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000CB98;

  return sub_100357EF8(a1, v4, v5, v6, v8 | v7);
}

double QRCode.init(data:errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_10035A04C(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

uint64_t QRCode.data.getter()
{
  v1 = *(v0 + 8);
  sub_1000F54C8(v1, *(v0 + 16));
  return v1;
}

void sub_1003596A4(void *a1, void *a2, CGImage *a3, uint64_t a4, CGContext *a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11)
{
  [a1 beginPage];
  v69 = a1;
  v19 = [a1 CGContext];
  if (qword_1006E5678 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v20 = *&qword_1006EE938;
    CGContextSetLineWidth(v19, *&qword_1006EE938);

    v21 = objc_opt_self();
    v22 = [v21 whiteColor];
    [v22 setStroke];

    v23 = [v21 whiteColor];
    [v23 setFill];

    v24 = v20 * a6;
    v72.origin.x = a7;
    v72.origin.y = a8;
    v72.size.width = a9;
    v72.size.height = a10;
    v25 = CGRectGetWidth(v72) - v20 * a6;
    v73.origin.x = a7;
    v73.origin.y = a8;
    v73.size.width = a9;
    a9 = v20;
    v73.size.height = a10;
    v26 = CGRectGetHeight(v73) - v20 * a6;
    sub_100009DCC(&qword_1006E9548);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100580F90;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v24;
    *(inited + 56) = v24;
    v65 = v25;
    *(inited + 64) = v25;
    *(inited + 72) = 0;
    *(inited + 80) = v24;
    *(inited + 88) = v24;
    *(inited + 96) = 0;
    v67 = v26;
    *(inited + 104) = v26;
    *(inited + 112) = v24;
    *(inited + 120) = v24;
    v28 = objc_opt_self();
    v29 = *(inited + 32);
    v30 = *(inited + 40);
    a10 = *(inited + 48);
    v31 = *(inited + 56);
    v74.origin.x = v29;
    v74.origin.y = v30;
    v74.size.width = a10;
    v74.size.height = v31;
    v66 = a9 * 0.5;
    v75 = CGRectInset(v74, a9 * 0.5, a9 * 0.5);
    v32 = [v28 _bezierPathWithPillRect:v75.origin.x cornerRadius:{v75.origin.y, v75.size.width, v75.size.height, 10.0}];
    if (v32)
    {
      v33 = v32;
      [v32 setLineWidth:a9];
      [v33 stroke];
      v64 = a9;
      v34 = a9 * a11;
      v76.origin.x = v29;
      v76.origin.y = v30;
      v76.size.width = a10;
      v76.size.height = v31;
      v35 = v34 * 0.5;
      v63 = CGRectGetMidX(v76) - v34 * 0.5;
      v77.origin.x = v29;
      v77.origin.y = v30;
      v77.size.width = a10;
      v77.size.height = v31;
      MidY = CGRectGetMidY(v77);
      v37 = v34;
      v38 = v34;
      a9 = v64;
      v39 = [v28 _bezierPathWithPillRect:v63 cornerRadius:{MidY - v35, v37, v38, 2.0}];
      [v39 fill];
    }

    v78.origin.y = 0.0;
    a8 = v66;
    v78.origin.x = v65;
    v78.size.width = v24;
    v78.size.height = v24;
    v79 = CGRectInset(v78, v66, v66);
    v40 = [v28 _bezierPathWithPillRect:v79.origin.x cornerRadius:{v79.origin.y, v79.size.width, v79.size.height, 10.0}];
    if (v40)
    {
      v41 = v40;
      [v40 setLineWidth:a9];
      [v41 stroke];
      v80.origin.y = 0.0;
      v80.origin.x = v65;
      v80.size.width = v24;
      v80.size.height = v24;
      a10 = CGRectGetMidX(v80) - a9 * a11 * 0.5;
      v81.origin.y = 0.0;
      v81.origin.x = v65;
      v81.size.width = v24;
      v81.size.height = v24;
      v42 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v81) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v42 fill];
    }

    else
    {
    }

    v82.origin.x = 0.0;
    v82.origin.y = v67;
    v82.size.width = v24;
    v82.size.height = v24;
    v83 = CGRectInset(v82, v66, v66);
    v43 = [v28 _bezierPathWithPillRect:v83.origin.x cornerRadius:{v83.origin.y, v83.size.width, v83.size.height, 10.0}];
    if (v43)
    {
      v44 = v43;
      [v43 setLineWidth:a9];
      [v44 stroke];
      v84.origin.x = 0.0;
      v84.origin.y = v67;
      v84.size.width = v24;
      v84.size.height = v24;
      a10 = CGRectGetMidX(v84) - a9 * a11 * 0.5;
      v85.origin.x = 0.0;
      v85.origin.y = v67;
      v85.size.width = v24;
      v85.size.height = v24;
      v45 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v85) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v45 fill];
    }

    [a2 extent];
    Height = CGRectGetHeight(v86);
    if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (Height <= -9.22337204e18)
    {
      goto LABEL_69;
    }

    if (Height >= 9.22337204e18)
    {
      goto LABEL_70;
    }

    v47 = Height;
    if (Height < 1)
    {
      goto LABEL_71;
    }

    v19 = a5;
    if (Height == 1)
    {
      return;
    }

    v48 = a6;
    a7 = a9 + -1.0;
    v49 = 1;
    *&a11 = Height;
    while (1)
    {
      if (v49 == v47)
      {
        goto LABEL_62;
      }

      [a2 extent];
      Width = CGRectGetWidth(v87);
      if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (Width <= -9.22337204e18)
      {
        goto LABEL_64;
      }

      if (Width >= 9.22337204e18)
      {
        goto LABEL_65;
      }

      v51 = Width;
      if (Width < 1)
      {
        goto LABEL_66;
      }

      if (Width != 1)
      {
        for (i = 1; v51 != i; ++i)
        {
          BytesPerRow = CGImageGetBytesPerRow(a3);
          v55 = BytesPerRow * v49;
          if ((BytesPerRow * v49) >> 64 != (BytesPerRow * v49) >> 63)
          {
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
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v56 = i * a4;
          if ((i * a4) >> 64 != (i * a4) >> 63)
          {
            goto LABEL_49;
          }

          v57 = __OFADD__(v55, v56);
          v58 = v55 + v56;
          if (v57)
          {
            goto LABEL_50;
          }

          if (!*(v19 + v58))
          {
            if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_51;
            }

            if (a6 <= -9.22337204e18)
            {
              goto LABEL_52;
            }

            if (a6 >= 9.22337204e18)
            {
              goto LABEL_53;
            }

            [a2 extent];
            v59 = CGRectGetWidth(v89);
            if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_54;
            }

            if (v59 <= -9.22337204e18)
            {
              goto LABEL_55;
            }

            if (v59 >= 9.22337204e18)
            {
              goto LABEL_56;
            }

            v60 = v59;
            if (v49 <= v48)
            {
              if (i <= v48)
              {
                continue;
              }

              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_60;
              }

              if (__OFSUB__(v61, 1))
              {
                goto LABEL_61;
              }

              if (i >= v61 - 1)
              {
                continue;
              }
            }

            else
            {
              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_57;
              }
            }

            v57 = __OFSUB__(v61, 1);
            v62 = v61 - 1;
            if (v57)
            {
              goto LABEL_58;
            }

            if (v49 < v62 || i > v48)
            {
              if (__OFSUB__(i, 1))
              {
                goto LABEL_59;
              }

              a10 = a9 * (i - 1);
              v53 = [v69 CGContext];
              v88.origin.x = a10;
              v88.origin.y = a9 * (v49 - 1);
              v88.size.width = a9 + -1.0;
              v88.size.height = a9 + -1.0;
              CGContextFillEllipseInRect(v53, v88);

              v19 = a5;
            }
          }
        }
      }

      ++v49;
      v47 = *&a11;
      if (v49 == *&a11)
      {
        return;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

double QRCode.with(errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  sub_1000F54C8(v6, v5);
  sub_10035A04C(v6, v5, a1, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

double QRCode.dotAdjustedWidth(with:scale:)()
{
  v1 = *v0;
  UIRoundToScale();
  return v2 * v1;
}

CGMutablePathRef QRCode.dotAlignedPath(with:in:imageBounds:)(char *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v20.origin.x = a6;
  v20.origin.y = a7;
  v20.size.width = a8;
  v20.size.height = a9;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMinX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);

  result = CGPathCreateMutable();
  v15 = *(a1 + 2);
  if (v15)
  {
    v16 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > *(a1 + 3) >> 1)
    {
      a1 = sub_1000D0968(isUniquelyReferenced_nonNull_native, v15, 1, a1);
    }

    sub_1001E9908(0, 1, 0);
    sub_1005734E8();
    v18 = *(a1 + 2);
    if (v18)
    {
      v19 = a1 + 40;
      do
      {
        sub_1005734F8();
        v19 += 16;
        --v18;
      }

      while (v18);
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10035A04C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = objc_opt_self();
  sub_1000F54C8(a1, a2);
  v9 = [v8 QRCodeGenerator];
  isa = sub_10056C908().super.isa;
  sub_10008246C(a1, a2);
  v11 = sub_100572898();
  [v9 setValue:isa forKey:v11];

  v12 = v9;
  v13 = sub_100572898();

  v14 = sub_100572898();
  [v12 setValue:v13 forKey:v14];

  v15 = [v12 outputImage];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v55 = a3;
  v17 = [objc_allocWithZone(CIContext) init];
  [v16 extent];
  v18 = [v17 createCGImage:v16 fromRect:?];

  if (!v18)
  {

LABEL_18:
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  v19 = CGImageGetDataProvider(v18);
  if (!v19)
  {

    goto LABEL_19;
  }

  v20 = v19;
  v21 = CGDataProviderCopyData(v19);

  if (!v21)
  {

    goto LABEL_20;
  }

  v53 = v21;
  BytePtr = CFDataGetBytePtr(v21);
  if (BytePtr)
  {
    v23 = BytePtr;
    v24 = CGImageGetBitsPerPixel(v18) / 8;
    v25 = Int.seconds.getter(7);
    v26 = Int.seconds.getter(3);
    [v16 extent];
    v27 = CGRectGetWidth(v57) + -2.0;
    if (qword_1006E5678 != -1)
    {
      swift_once();
    }

    v28 = *&qword_1006EE938;
    v29 = v27 * *&qword_1006EE938;
    [v16 extent];
    v30 = v28 * (CGRectGetHeight(v58) + -2.0);
    v54 = [objc_allocWithZone(UIGraphicsPDFRenderer) initWithBounds:{0.0, 0.0, v29, v30}];
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 40) = v29;
    *(v31 + 48) = v30;
    *(v31 + 56) = v26;
    *(v31 + 64) = v16;
    *(v31 + 72) = v18;
    *(v31 + 80) = v24;
    *(v31 + 88) = v23;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_10035A7A0;
    *(v32 + 24) = v31;
    aBlock[4] = sub_1001DA9E4;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D65E4;
    aBlock[3] = &unk_10069D2E8;
    v33 = _Block_copy(aBlock);

    v52 = v16;
    v51 = v18;

    v34 = [v54 PDFDataWithActions:v33];
    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
      goto LABEL_30;
    }

    v35 = sub_10056C918();
    v37 = v36;

    v38 = sub_10056C908().super.isa;
    v39 = CGDataProviderCreateWithCFData(v38);

    if (v39)
    {
      v40 = CGPDFDocumentCreateWithProvider(v39);
      if (v40)
      {
        v41 = v40;
        v42 = CGPDFDocumentGetPage(v40, 1uLL);
        if (v42)
        {
          v50 = v42;
          v43 = [objc_opt_self() _imageWithCGPDFPage:v42];
          if (v43)
          {
            v44 = v43;
            [v52 extent];
            Width = CGRectGetWidth(v59);

            sub_10008246C(v35, v37);
            v46 = Width + -2.0;
            if (COERCE__INT64(fabs(Width + -2.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v47 = v55;
              if (v46 > -9.22337204e18)
              {
                if (v46 < 9.22337204e18)
                {
                  v48 = v46;
                  sub_1000F54C8(a1, a2);
                  v49 = v44;
                  sub_10008246C(a1, a2);

LABEL_21:
                  *a4 = v48;
                  a4[1] = a1;
                  a4[2] = a2;
                  a4[3] = v44;
                  a4[4] = v47;
                  return;
                }

                goto LABEL_32;
              }

LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          sub_10008246C(v35, v37);
        }

        else
        {

          sub_10008246C(v35, v37);
        }
      }

      else
      {

        sub_10008246C(v35, v37);
      }
    }

    else
    {

      sub_10008246C(v35, v37);
    }

    v21 = sub_10035A7A0;
LABEL_20:
    sub_10008246C(a1, a2);
    sub_1000F3E14(v21);
    v48 = 0;
    a1 = 0;
    a2 = 0;
    v44 = 0;
    v47 = 0;
    goto LABEL_21;
  }

LABEL_33:
  __break(1u);
}