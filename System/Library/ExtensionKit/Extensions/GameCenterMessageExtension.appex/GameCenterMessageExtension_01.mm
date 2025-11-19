void sub_100016938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6)
{
  sub_100002D08(&qword_10005CF00, &unk_100046F40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100045AE0;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  v13 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
  swift_beginAccess();
  v14 = *&a5[v13];
  if (v14 && v14[2])
  {
    v16 = v14[4];
    v15 = v14[5];
    swift_bridgeObjectRetain_n();

    v17 = sub_100017AF8(1, 2, 1, v12);
    *(v17 + 2) = 2;
    *(v17 + 6) = v16;
    *(v17 + 7) = v15;
  }

  else
  {

    v16 = 0;
    v15 = 0xE000000000000000;
  }

  v18 = objc_opt_self();
  isa = sub_100041C10().super.isa;

  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a5;
  v20[4] = v16;
  v20[5] = v15;
  v20[6] = a1;
  v20[7] = a2;
  aBlock[4] = sub_10001C0B4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100016238;
  aBlock[3] = &unk_100056500;
  v21 = _Block_copy(aBlock);
  v22 = a6;
  v23 = a5;

  [v18 loadPlayersForIdentifiers:isa withCompletionHandler:v21];
  _Block_release(v21);
}

void sub_100016B34(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = sub_1000411B0();
  }

  else
  {
    v10 = 0;
  }

  [a3 setError:{v10, a8, a7}];

  if (!a1)
  {
    goto LABEL_32;
  }

  if (a1 >> 62)
  {
    v11 = sub_100041F50();
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_32:
    v36 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player;
    v37 = *(a4 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player);
    v38 = v37;
    if (!v37)
    {
      v38 = [objc_opt_self() unknownPlayer];
    }

    v39 = v37;
    v40 = sub_1000137CC(v38);
    v41 = *(a4 + v36);
    if (!v41)
    {
      goto LABEL_43;
    }

    v42 = v41;
    v43 = [v42 internal];
    v44 = [v43 playerID];

    v45 = sub_100041B20();
    v47 = v46;

    if (v45 == 0x496E776F6E6B6E55 && v47 == 0xE900000000000044)
    {
    }

    else
    {
      v49 = sub_100041FC0();

      if ((v49 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    *(a4 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType) = 0;
LABEL_43:
    v52(v40);
    return;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_32;
  }

LABEL_7:
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = (a4 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID);
    v53 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer;
    v14 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = sub_100041EC0();
      }

      else
      {
        v24 = *(a1 + 8 * v12 + 32);
      }

      v25 = v24;
      v26 = [v24 internal];
      v27 = [v26 playerID];

      v28 = sub_100041B20();
      v30 = v29;

      v31 = v13[1];
      if (v31)
      {
        v32 = *v13 == v28 && v31 == v30;
        if (v32 || (sub_100041FC0() & 1) != 0)
        {

          v15 = *(a4 + v14);
          *(a4 + v14) = v25;
          v16 = v25;

          v17 = *(a4 + v14);
          if (v17)
          {
            v18 = [v17 internal];
            v19 = [v18 playerID];

            v20 = sub_100041B20();
            v22 = v21;
          }

          else
          {

            v20 = 0;
            v22 = 0;
          }

          v23 = v13[1];
          *v13 = v20;
          v13[1] = v22;

          goto LABEL_12;
        }
      }

      if (v28 == a5 && v30 == a6)
      {
        break;
      }

      v34 = sub_100041FC0();

      if (v34)
      {
        goto LABEL_29;
      }

LABEL_12:
      if (v11 == ++v12)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v35 = *(a4 + v53);
    *(a4 + v53) = v25;

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_100016ECC(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_100019C9C, v5);
}

uint64_t sub_100016F60(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result)
  {
    v5 = [objc_opt_self() unknownPlayer];
    sub_1000137CC(v5);
    v6 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType;
    *(a2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType) = 2;
    swift_errorRetain();
    sub_100002D08(&qword_10005CF30, &unk_1000463B0);
    sub_10000EA78(0, &qword_10005CF38, NSError_ptr);
    if (swift_dynamicCast())
    {
      v7 = sub_10001953C(v8);

      if (v7)
      {
        *(a2 + v6) = 4;
      }
    }

    return a3();
  }

  return result;
}

void sub_100017064(uint64_t a1, void (*a2)(void *, id))
{
  v4 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player;
  v5 = *(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player);
  if (v5)
  {
    v6 = v5;
    if ([v6 isFriend])
    {
      v7 = [v6 friendBiDirectional];
      sub_10000EA78(0, &unk_10005CA40, NSNumber_ptr);
      isa = sub_100041DA0(1).super.super.isa;
      v9 = [v7 isEqualToNumber:isa];

      if (v9)
      {
        *(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState) = 2;
      }
    }

    else
    {
    }
  }

  v10 = *(a1 + v4);
  v11 = *(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerGroup);
  v12 = v10;
  v13 = [v11 error];
  a2(v10, v13);
}

void sub_1000171B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10000EA78(0, &qword_10005D028, GKDispatchGroup_ptr);
  v6 = sub_100041D00();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v6;
  v18 = sub_10001C850;
  v19 = v7;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100016ECC;
  v17 = &unk_100056708;
  v8 = _Block_copy(&v14);
  v9 = v3;
  v10 = v6;

  [v10 perform:v8];
  _Block_release(v8);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;
  v18 = sub_10001C898;
  v19 = v11;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100012BD4;
  v17 = &unk_100056758;
  v12 = _Block_copy(&v14);
  v13 = v10;

  [v13 notifyOnMainQueueWithBlock:v12];
  _Block_release(v12);
}

uint64_t sub_1000173B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  v7[2] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v8 = a4;

  sub_1000123C8(sub_10001C904, v7);
}

uint64_t sub_100017450(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  if (a2)
  {
    v6 = sub_1000411B0();
  }

  else
  {
    v6 = 0;
  }

  [a3 setError:v6];

  return a4();
}

void sub_1000174E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier + 8);

  v2 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID + 8);

  v3 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8);

  v4 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL + 8);

  v5 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname + 8);

  v6 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs);

  v7 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerGroup);
}

id sub_1000175AC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000176EC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100017780(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayerModel.FriendCodeState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlayerModel.FriendCodeState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100017994()
{
  result = qword_10005CEE0;
  if (!qword_10005CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CEE0);
  }

  return result;
}

unint64_t sub_1000179EC()
{
  result = qword_10005CEE8;
  if (!qword_10005CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CEE8);
  }

  return result;
}

unint64_t sub_100017A44()
{
  result = qword_10005CEF0;
  if (!qword_10005CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CEF0);
  }

  return result;
}

uint64_t sub_100017A98(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

char *sub_100017AF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D08(&qword_10005CF00, &unk_100046F40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100017C04(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unsigned __int8 *sub_100017C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100041BF0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100018204();
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
      result = sub_100041EE0();
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

uint64_t sub_100018204()
{
  v0 = sub_100041C00();
  v4 = sub_100018284(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100018284(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100041B60();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_100041E20();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100040010(v9, 0);
  v12 = sub_1000183DC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_100041B60();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_100041EE0();
LABEL_4:

  return sub_100041B60();
}

unint64_t sub_1000183DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1000185FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100041BC0();
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
          result = sub_100041EE0();
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

    result = sub_1000185FC(v12, a6, a7);
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

    result = sub_100041BA0();
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

uint64_t sub_1000185FC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100041BD0();
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
    v5 = sub_100041BB0();
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

void sub_100018678(unsigned __int8 *a1, void *a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState;
  if (a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] >= 2u)
  {

LABEL_13:
    sub_100041F40();
    __break(1u);
    return;
  }

  v11 = objc_opt_self();
  v12 = a2;
  v38 = [v11 local];
  if (![v38 isAuthenticated])
  {

    goto LABEL_13;
  }

  if (a1[v10])
  {
    sub_10002F1BC(0, v12);

    v13 = v38;
  }

  else
  {
    sub_1000413E0();
    v14 = a1;
    v15 = sub_100041400();
    v16 = sub_100041CC0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v36 = v16;
      v18 = v17;
      v19 = swift_slowAlloc();
      v34 = v19;
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v18 = 138412546;
      *(v18 + 4) = v14;
      *v19 = v14;
      *(v18 + 12) = 2080;
      v20 = v14;
      v21 = [v20 description];
      v35 = v5;
      v22 = v21;
      v23 = sub_100041B20();
      v25 = v24;

      v26 = sub_10003FBD0(v23, v25, aBlock);

      *(v18 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v15, v36, "%@ CREATE friend request for playerModel: %s", v18, 0x16u);
      sub_10000E9F0(v34, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v37);

      (*(v35 + 8))(v8, v4);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v27 = *&v14[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier];
    v28 = *&v14[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier + 8];
    v29 = sub_100041AF0();
    v30 = swift_allocObject();
    v30[2] = v14;
    v30[3] = sub_10001C964;
    v30[4] = v9;
    aBlock[4] = sub_10001CB88;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000147B8;
    aBlock[3] = &unk_100056870;
    v31 = _Block_copy(aBlock);
    v32 = v14;

    [v38 createFriendRequestWithIdentifier:v29 handler:v31];

    _Block_release(v31);
  }
}

void sub_100018B4C(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v6 = sub_100041410();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState;
  if (a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] >= 2u)
  {

LABEL_13:
    sub_100041F40();
    __break(1u);
    return;
  }

  v13 = objc_opt_self();
  v14 = a2;

  v42 = [v13 local];
  if (![v42 isAuthenticated])
  {

    goto LABEL_13;
  }

  if (a1[v12])
  {
    sub_10003EE78(0, v14, a3);

    v15 = v42;
  }

  else
  {
    sub_1000413E0();
    v16 = a1;
    v17 = sub_100041400();
    v18 = sub_100041CC0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v40 = v18;
      v20 = v19;
      v21 = swift_slowAlloc();
      v39 = v21;
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v20 = 138412546;
      *(v20 + 4) = v16;
      *v21 = v16;
      *(v20 + 12) = 2080;
      v22 = v16;
      v23 = [v22 description];
      v24 = sub_100041B20();
      v38 = v17;
      v25 = v7;
      v26 = v24;
      v28 = v27;

      v29 = sub_10003FBD0(v26, v28, aBlock);

      *(v20 + 14) = v29;
      v30 = v38;
      _os_log_impl(&_mh_execute_header, v38, v40, "%@ CREATE friend request for playerModel: %s", v20, 0x16u);
      sub_10000E9F0(v39, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v41);

      (*(v25 + 8))(v10, v6);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    v31 = *&v16[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier];
    v32 = *&v16[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier + 8];
    v33 = sub_100041AF0();
    v34 = swift_allocObject();
    v34[2] = v16;
    v34[3] = sub_100019B68;
    v34[4] = v11;
    aBlock[4] = sub_100019B70;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000147B8;
    aBlock[3] = &unk_1000562A8;
    v35 = _Block_copy(aBlock);
    v36 = v16;

    [v42 createFriendRequestWithIdentifier:v33 handler:v35];

    _Block_release(v35);
  }
}

void sub_10001903C(unsigned __int8 *a1, void *a2, void *a3, void *a4)
{
  v8 = sub_100041410();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v14 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState;
  if (a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] >= 2u)
  {

LABEL_13:
    sub_100041F40();
    __break(1u);
    return;
  }

  v15 = objc_opt_self();
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v44 = [v15 local];
  if (![v44 isAuthenticated])
  {

    goto LABEL_13;
  }

  if (a1[v14])
  {
    sub_100008230(0, v16, v17, v18);

    v19 = v44;
  }

  else
  {
    sub_1000413E0();
    v20 = a1;
    v21 = sub_100041400();
    v22 = sub_100041CC0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v41 = v22;
      v24 = v23;
      v25 = swift_slowAlloc();
      v40 = v25;
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v24 = 138412546;
      *(v24 + 4) = v20;
      *v25 = v20;
      *(v24 + 12) = 2080;
      v26 = v20;
      v43 = v9;
      v27 = v26;
      v28 = [v26 description];
      v29 = sub_100041B20();
      v31 = v30;

      v32 = sub_10003FBD0(v29, v31, aBlock);

      *(v24 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v21, v41, "%@ CREATE friend request for playerModel: %s", v24, 0x16u);
      sub_10000E9F0(v40, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v42);

      (*(v43 + 8))(v12, v8);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    v33 = *&v20[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier];
    v34 = *&v20[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier + 8];
    v35 = sub_100041AF0();
    v36 = swift_allocObject();
    v36[2] = v20;
    v36[3] = sub_10001C958;
    v36[4] = v13;
    aBlock[4] = sub_10001CB88;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000147B8;
    aBlock[3] = &unk_1000567F8;
    v37 = _Block_copy(aBlock);
    v38 = v20;

    [v44 createFriendRequestWithIdentifier:v35 handler:v37];

    _Block_release(v37);
  }
}

uint64_t sub_10001953C(void *a1)
{
  if ([a1 gkIsNotConnectedToInternetError])
  {
    v2 = 1;
  }

  else if ([a1 code] == 3)
  {
    v3 = [a1 domain];
    v4 = sub_100041B20();
    v6 = v5;

    if (v4 == sub_100041B20() && v6 == v7)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_100041FC0();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_100019620(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100041410();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v14 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState;
  if (a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] >= 2u)
  {

LABEL_13:
    sub_100041F40();
    __break(1u);
    return;
  }

  v15 = objc_opt_self();
  v16 = a2;

  v44 = [v15 local];
  if (![v44 isAuthenticated])
  {

    goto LABEL_13;
  }

  if (a1[v14])
  {

    v17 = v44;
  }

  else
  {
    sub_1000413E0();
    v18 = a1;
    v19 = sub_100041400();
    v20 = sub_100041CC0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v42 = v20;
      v22 = v21;
      v23 = swift_slowAlloc();
      v41 = v23;
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v22 = 138412546;
      *(v22 + 4) = v18;
      *v23 = v18;
      *(v22 + 12) = 2080;
      v24 = v18;
      v25 = [v24 description];
      v26 = sub_100041B20();
      v40 = v19;
      v27 = v9;
      v28 = v26;
      v30 = v29;

      v31 = sub_10003FBD0(v28, v30, aBlock);

      *(v22 + 14) = v31;
      v32 = v40;
      _os_log_impl(&_mh_execute_header, v40, v42, "%@ CREATE friend request for playerModel: %s", v22, 0x16u);
      sub_10000E9F0(v41, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v43);

      (*(v27 + 8))(v12, v8);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    v33 = *&v18[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier];
    v34 = *&v18[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier + 8];
    v35 = sub_100041AF0();
    v36 = swift_allocObject();
    v36[2] = v18;
    v36[3] = sub_10001C0C8;
    v36[4] = v13;
    aBlock[4] = sub_10001CB88;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000147B8;
    aBlock[3] = &unk_100056578;
    v37 = _Block_copy(aBlock);
    v38 = v18;

    [v44 createFriendRequestWithIdentifier:v35 handler:v37];

    _Block_release(v37);
  }
}

unint64_t sub_100019B08(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_100019B18(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_100019B28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100019B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019C04()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100019C64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100019CBC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1000412B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier];
  sub_1000412A0();
  v11 = sub_100041290();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  *v10 = v11;
  v10[1] = v13;
  v14 = &v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player;
  *&v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player] = 0;
  v16 = &v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount];
  *v19 = 0;
  v19[8] = 1;
  *&v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs] = 0;
  *&v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer] = 0;
  v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState] = 2;
  v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] = 0;
  v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 0;
  v20 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerGroup;
  v21 = objc_allocWithZone(GKDispatchGroup);
  v22 = sub_100041AF0();
  v23 = [v21 initWithName:v22];

  *&v2[v20] = v23;
  v24 = *&v2[v15];
  *&v2[v15] = a1;
  v25 = a1;

  v26 = [v25 internal];
  v27 = [v26 playerID];

  v28 = sub_100041B20();
  v30 = v29;

  v31 = v14[1];
  *v14 = v28;
  v14[1] = v30;

  v33.receiver = v2;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, "init");
}

_BYTE *sub_100019F48(uint64_t a1)
{
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v150 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v144 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v144 - v11;
  __chkstk_darwin(v10);
  v14 = &v144 - v13;
  if (!sub_100041110())
  {
    goto LABEL_65;
  }

  v15 = sub_1000110F0(28278, 0xE200000000000000);
  if (!v16)
  {
    v15 = 48;
    v16 = 0xE100000000000000;
  }

  v17 = sub_1000141C8(v15, v16);
  v148 = v2;
  v149 = a1;
  if ((v18 & 1) != 0 || !v17)
  {
    v19 = sub_1000110F0(6580592, 0xE300000000000000);
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v23 = objc_allocWithZone(type metadata accessor for PlayerModel());
      v24 = sub_100013F98(v21, v22);
      v25 = sub_1000110F0(25446, 0xE200000000000000);
      if (v26)
      {
        v27 = &v24[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];
        v28 = *&v24[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8];
        *v27 = v25;
        v27[1] = v26;
      }

      v29 = sub_1000110F0(7565682, 0xE300000000000000);
      if (v30)
      {
        v31 = sub_1000141C8(v29, v30);
        if ((v32 & 1) == 0 && v31 <= 4)
        {
          LODWORD(v147) = 0;
          v24[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] = v31;
          goto LABEL_43;
        }
      }
    }

    else
    {
      sub_1000413D0();

      v34 = sub_100041400();
      v35 = sub_100041CE0();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v153 = v147;
        *v36 = 136315138;
        sub_100041100();
        v37 = sub_100041C30();
        v39 = sub_10003FBD0(v37, v38, &v153);

        *(v36 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v34, v35, "Couldn't find playerID in queryItems: %s", v36, 0xCu);
        sub_10000E8A8(v147);

        v2 = v148;
      }

      (*(v3 + 8))(v14, v2);
      v40 = [objc_opt_self() unknownPlayer];
      v41 = objc_allocWithZone(type metadata accessor for PlayerModel());
      v42 = sub_100019CBC(v40);

      v42[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 3;
      v24 = v42;
    }

    LODWORD(v147) = 0;
    goto LABEL_43;
  }

  if (v17 == 1)
  {
    v33 = 1;
  }

  else
  {
    if (v17 != 2)
    {
      v146 = v3;
      v82 = [objc_opt_self() unknownPlayer];
      v83 = objc_allocWithZone(type metadata accessor for PlayerModel());
      v84 = sub_100019CBC(v82);

      v24 = v84;
      sub_1000413E0();
      v85 = sub_100041400();
      v86 = sub_100041CC0();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v145 = v88;
        v147 = swift_slowAlloc();
        v153 = v147;
        *v87 = 138412546;
        *(v87 + 4) = v24;
        *v88 = v24;
        *(v87 + 12) = 2080;
        LOBYTE(v152) = 3;
        v89 = v24;
        sub_100002D08(&qword_10005CFC8, &qword_1000463D8);
        v90 = sub_100041E10();
        v92 = sub_10003FBD0(v90, v91, &v153);

        *(v87 + 14) = v92;
        _os_log_impl(&_mh_execute_header, v85, v86, "%@ Couldn't handle this verion of friend request: %s", v87, 0x16u);
        sub_10000E9F0(v145, &unk_10005CA00, &unk_100045CF0);

        sub_10000E8A8(v147);

        v2 = v148;
      }

      v3 = v146;
      (*(v146 + 8))(v12, v2);
      v24[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 1;
      LODWORD(v147) = 3;
      goto LABEL_43;
    }

    v33 = 2;
  }

  sub_1000110F0(25722, 0xE200000000000000);
  if (!v43)
  {
    v143 = 0;
    for (i = 197; ; i = 198)
    {
LABEL_67:
      sub_100041F40();
      __break(1u);
LABEL_68:
      v143 = 0;
    }
  }

  LODWORD(v147) = v33;
  v44 = sub_100041210();
  if (v45 >> 60 == 15)
  {
    goto LABEL_68;
  }

  v46 = v44;
  v47 = v45;
  v48 = __chkstk_darwin(v44);
  *(&v144 - 32) = 0;
  *(&v144 - 3) = v48;
  i = v49;
  sub_100002D08(&qword_10005CFD0, &qword_1000463E0);
  sub_100041230();
  v50 = v154;
  if (v154 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_64;
  }

  v51 = v153;

  sub_100002D08(&qword_10005CFD8, &qword_1000463E8);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100046110;
  v53 = sub_10000EA78(0, &qword_10005CFE0, NSString_ptr);
  *(v52 + 56) = sub_100002D08(&qword_10005CFE8, &qword_1000463F0);
  *(v52 + 32) = v53;
  v54 = sub_10000EA78(0, &qword_10005CFF0, NSDictionary_ptr);
  *(v52 + 88) = sub_100002D08(&qword_10005CFF8, &qword_1000463F8);
  *(v52 + 64) = v54;
  v55 = objc_allocWithZone(NSSet);
  isa = sub_100041C10().super.isa;

  v57 = [v55 initWithArray:isa];

  v153 = 0;
  sub_100041CB0();
  if (!v153)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    v143 = 0;
    i = 164;
    goto LABEL_67;
  }

  v58 = objc_opt_self();
  v59 = sub_100041CA0().super.isa;

  v145 = v51;
  v60 = sub_100041240().super.isa;
  v153 = 0;
  v61 = [v58 _strictlyUnarchivedObjectOfClasses:v59 fromData:v60 error:&v153];

  if (!v61)
  {
    v93 = v153;
    sub_1000411C0();

    swift_willThrow();

    v64 = v46;
    goto LABEL_41;
  }

  v62 = v153;
  sub_100041E50();
  swift_unknownObjectRelease();
  v63 = sub_100002D08(&qword_10005D000, &qword_100046400);
  v64 = v46;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:
    v94 = [objc_opt_self() local];
    v95 = objc_allocWithZone(type metadata accessor for PlayerModel());
    v96 = sub_100019CBC(v94);

    sub_10001C254(v145, v50);
    sub_10001C254(v64, v47);
    v24 = v96;
LABEL_42:
    v2 = v148;
    goto LABEL_43;
  }

  v146 = v3;
  v65 = v152;
  if (!v152[2])
  {

LABEL_40:
    v3 = v146;
    goto LABEL_41;
  }

  v66 = sub_10002FF90(25446, 0xE200000000000000);
  if ((v67 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_40;
  }

  v144 = v63;
  v68 = (v65[7] + 16 * v66);
  v69 = *v68;
  v70 = v68[1];

  v71 = objc_allocWithZone(type metadata accessor for PlayerModel());
  v72 = sub_100013D68(v69, v70);
  v24 = v72;
  if (v65[2])
  {

    v73 = v24;
    v74 = sub_10002FF90(7565682, 0xE300000000000000);
    if (v75)
    {
      v76 = (v65[7] + 16 * v74);
      v77 = *v76;
      v78 = v76[1];

      v79 = v78;
      v64 = v46;
      v80 = sub_1000141C8(v77, v79);
      if ((v81 & 1) == 0 && v80 <= 4)
      {
        v73[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] = v80;
      }
    }

    else
    {
    }

    if (v65[2])
    {

      v129 = sub_10002FF90(28272, 0xE200000000000000);
      if (v130)
      {
        v131 = (v65[7] + 16 * v129);
        v133 = *v131;
        v132 = v131[1];

        v134 = &v73[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname];
        v135 = *&v73[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname + 8];
        *v134 = v133;
        v134[1] = v132;
        v64 = v46;
      }
    }
  }

  else
  {
    v128 = v72;
  }

  v153 = v65;
  sub_100002D08(&qword_10005D008, &qword_100046408);
  if (swift_dynamicCast())
  {
    v136 = v152;
    v3 = v146;
    if (v152[2] && (v137 = sub_10002FF90(1684631666, 0xE400000000000000), (v138 & 1) != 0))
    {
      sub_100012320(v136[7] + 32 * v137, &v153);

      sub_100002D08(&qword_10005CF00, &unk_100046F40);
      v139 = swift_allocObject();
      *(v139 + 16) = xmmword_100045AE0;
      sub_100012320(&v153, &v152);
      swift_dynamicCast();
      sub_10001C254(v145, v50);
      sub_10001C254(v64, v47);
      sub_10000E8A8(&v153);
      v140 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
      swift_beginAccess();
      v141 = *&v24[v140];
      *&v24[v140] = v139;
    }

    else
    {
      sub_10001C254(v145, v50);
      sub_10001C254(v64, v47);
    }

    goto LABEL_42;
  }

  sub_10001C254(v145, v50);
  sub_10001C254(v64, v47);
  v2 = v148;
  v3 = v146;
LABEL_43:
  sub_1000413E0();

  v97 = v24;
  v98 = sub_100041400();
  v99 = sub_100041CC0();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = v2;
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v146 = v3;
    v103 = v102;
    v104 = swift_slowAlloc();
    v153 = v104;
    *v101 = 138412546;
    *(v101 + 4) = v97;
    *v103 = v97;
    *(v101 + 12) = 2080;
    sub_100041100();
    v105 = v97;
    v106 = sub_100041C30();
    v107 = v9;
    v108 = v100;
    v110 = v109;

    v111 = sub_10003FBD0(v106, v110, &v153);

    *(v101 + 14) = v111;
    _os_log_impl(&_mh_execute_header, v98, v99, "%@ queryItems: %s", v101, 0x16u);
    sub_10000E9F0(v103, &unk_10005CA00, &unk_100045CF0);
    v112 = v146;

    sub_10000E8A8(v104);

    v2 = v108;

    v113 = *(v112 + 8);
    v113(v107, v108);
  }

  else
  {

    v113 = *(v3 + 8);
    v113(v9, v2);
  }

  sub_1000413E0();
  v114 = v97;
  v115 = sub_100041400();
  v116 = sub_100041CC0();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v153 = v119;
    *v117 = 138412546;
    *(v117 + 4) = v114;
    *v118 = v114;
    *(v117 + 12) = 2080;
    v151 = v147;
    v147 = v114;
    sub_100002D08(&qword_10005CFC8, &qword_1000463D8);
    v120 = sub_100041E10();
    v122 = sub_10003FBD0(v120, v121, &v153);

    *(v117 + 14) = v122;
    _os_log_impl(&_mh_execute_header, v115, v116, "%@ Version in queryItems: %s", v117, 0x16u);
    sub_10000E9F0(v118, &unk_10005CA00, &unk_100045CF0);

    sub_10000E8A8(v119);

    v123 = sub_100041130();
    (*(*(v123 - 8) + 8))(v149, v123);
    v124 = v150;
    v125 = v148;
  }

  else
  {

    v126 = sub_100041130();
    (*(*(v126 - 8) + 8))(v149, v126);
    v124 = v150;
    v125 = v2;
  }

  v113(v124, v125);
  return v114;
}

_BYTE *sub_10001AFBC(void *a1)
{
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v75 = v2;
  v76 = v3;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v73 = &v64[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v71 = &v64[-v7];
  v8 = sub_100002D08(&qword_10005CFB8, &qword_1000463D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v64[-v10];
  v12 = sub_100041130();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v64[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v64[-v18];
  v72 = sub_100041200();
  v20 = *(v72 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v72);
  v24 = &v64[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v26 = &v64[-v25];
  v74 = a1;
  v27 = [a1 selectedMessage];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 URL];
    if (v29)
    {
      v30 = v29;
      sub_1000411E0();

      sub_100041120();
      v31 = v13;
      v32 = *(v13 + 48);
      v33 = v12;
      if (v32(v11, 1, v12) != 1)
      {
        v50 = v19;
        (*(v31 + 32))(v19, v11, v33);
        (*(v31 + 16))(v17, v19, v33);
        v37 = sub_100019F48(v17);
        v69 = v31;
        v51 = v71;
        sub_1000413E0();
        v70 = v33;
        v52 = v20;
        v53 = *(v20 + 16);
        v54 = v72;
        v53(v24, v26, v72);
        v55 = sub_100041400();
        v56 = sub_100041CC0();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v68 = v50;
          v58 = v57;
          v66 = swift_slowAlloc();
          v77 = v66;
          *v58 = 136315138;
          sub_10001C1DC();
          v65 = v56;
          v59 = sub_100041FB0();
          v61 = v60;
          v67 = *(v52 + 8);
          v67(v24, v54);
          v62 = sub_10003FBD0(v59, v61, &v77);

          *(v58 + 4) = v62;
          _os_log_impl(&_mh_execute_header, v55, v65, "PlayerModel.init url: %s", v58, 0xCu);
          sub_10000E8A8(v66);

          v38 = v75;
          (*(v76 + 8))(v71, v75);
          (*(v69 + 8))(v68, v70);
          v67(v26, v54);
        }

        else
        {

          v63 = *(v52 + 8);
          v63(v24, v54);
          v38 = v75;
          (*(v76 + 8))(v51, v75);
          (*(v69 + 8))(v50, v70);
          v63(v26, v54);
        }

        goto LABEL_7;
      }

      (*(v20 + 8))(v26, v72);

      sub_10000E9F0(v11, &qword_10005CFB8, &qword_1000463D0);
    }

    else
    {
    }
  }

  v34 = [objc_opt_self() local];
  v35 = objc_allocWithZone(type metadata accessor for PlayerModel());
  v36 = sub_100019CBC(v34);

  v37 = v36;
  v38 = v75;
LABEL_7:
  v39 = v73;
  sub_1000413E0();
  v40 = v37;
  v41 = sub_100041400();
  v42 = sub_100041CC0();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v77 = v44;
    *v43 = 136315138;
    v45 = sub_100013A74();
    v47 = v46;

    v48 = sub_10003FBD0(v45, v47, &v77);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, "PlayerModel.init playerModel: %s", v43, 0xCu);
    sub_10000E8A8(v44);
  }

  else
  {
  }

  (*(v76 + 8))(v39, v38);
  return v40;
}

uint64_t sub_10001B6B8(uint64_t a1)
{
  v2 = sub_100002D08(&qword_10005CFB8, &qword_1000463D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_100041130();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_100041120();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000E9F0(v5, &qword_10005CFB8, &qword_1000463D0);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_100041EB0(39);

    v17 = 0xD000000000000025;
    v18 = 0x80000001000447D0;
    sub_100041200();
    sub_10001C1DC();
    v19._countAndFlagsBits = sub_100041FB0();
    sub_100041B80(v19);

    result = sub_100041F40();
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    v14 = sub_100019F48(v11);
    v15 = sub_100041200();
    (*(*(v15 - 8) + 8))(a1, v15);
    (*(v7 + 8))(v13, v6);
    return v14;
  }

  return result;
}

void sub_10001B970(char *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_100041410();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v59 = a4;
  v18[4] = a4;
  v18[5] = a5;
  v19 = objc_opt_self();
  v20 = a2;
  v58 = a3;
  v60 = a5;

  v21 = [v19 local];
  if ([v21 isAuthenticated] && *&a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8])
  {
    v60 = *&a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];

    sub_1000413E0();
    v22 = a1;
    v23 = sub_100041400();
    v24 = sub_100041CC0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      LODWORD(v58) = v24;
      v26 = v25;
      v27 = swift_slowAlloc();
      v57 = v27;
      v59 = swift_slowAlloc();
      *&aBlock = v59;
      *v26 = 138412546;
      *(v26 + 4) = v22;
      *v27 = v22;
      *(v26 + 12) = 2080;
      v28 = v22;
      v56 = v10;
      v29 = v28;
      v30 = [v28 description];
      v31 = sub_100041B20();
      v61 = v11;
      v32 = v31;
      v55 = v23;
      v34 = v33;

      v35 = sub_10003FBD0(v32, v34, &aBlock);

      *(v26 + 14) = v35;
      v36 = v55;
      _os_log_impl(&_mh_execute_header, v55, v58, " %@ View friend code details for playerModel: %s", v26, 0x16u);
      sub_10000E9F0(v57, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v59);

      (*(v61 + 8))(v17, v56);
    }

    else
    {

      (*(v11 + 8))(v17, v10);
    }

    v39 = sub_100041AF0();

    v51 = swift_allocObject();
    v51[2] = v22;
    v51[3] = sub_10001BFD8;
    v51[4] = v18;
    v65 = sub_10001BFE4;
    v66 = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v63 = sub_1000145E4;
    v64 = &unk_100056460;
    v52 = _Block_copy(&aBlock);
    v53 = v22;

    [v21 getPlayerIDFromFriendCode:v39 handler:v52];

    _Block_release(v52);
  }

  else
  {
    v57 = v20;
    v61 = v11;
    sub_1000413E0();
    v37 = v21;
    v38 = a1;
    v39 = v37;
    v40 = sub_100041400();
    v41 = sub_100041CC0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v56 = v10;
      v45 = v44;
      v67 = v44;
      *v42 = 138412802;
      *(v42 + 4) = v38;
      *v43 = v38;
      *(v42 + 12) = 2080;
      aBlock = *&v38[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];
      v46 = v38;
      sub_100002D08(&qword_10005CF28, &qword_1000463A8);
      v47 = sub_100041E10();
      v49 = sub_10003FBD0(v47, v48, &v67);

      *(v42 + 14) = v49;
      *(v42 + 22) = 1024;
      v50 = [v39 isAuthenticated];

      *(v42 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v40, v41, "%@ Could not fetch playerID using friend code %s, local player authentication status: %{BOOL}d", v42, 0x1Cu);
      sub_10000E9F0(v43, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v45);

      (*(v61 + 8))(v15, v56);
    }

    else
    {

      (*(v61 + 8))(v15, v10);
    }

    sub_1000162DC(0, v57, v58, v59, v60);
  }
}

uint64_t sub_10001BF90()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001C010()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001C064()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001C0D4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001C11C(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[7];
  if (!a1)
  {
    *(v1[2] + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState) = 1;
  }

  sub_100014A88(v3, v4);
  return v6(a1);
}

uint64_t sub_10001C180()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001C1C8(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  return sub_100014888(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

unint64_t sub_10001C1DC()
{
  result = qword_10005CFC0;
  if (!qword_10005CFC0)
  {
    sub_100041200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CFC0);
  }

  return result;
}

uint64_t sub_10001C254(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001C268(a1, a2);
  }

  return a1;
}

uint64_t sub_10001C268(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_10001C2BC(char *a1, void *a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState;
  if (a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] == 1)
  {
    v11 = objc_opt_self();
    v12 = a2;
    v42 = [v11 local];
    if (a1[v10] == 1 && *&a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8])
    {
      v13 = *&a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];
      v14 = *&a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8];

      sub_1000413E0();
      v15 = a1;
      v16 = sub_100041400();
      v17 = sub_100041CC0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v39 = v17;
        v19 = v18;
        v20 = swift_slowAlloc();
        v37 = v20;
        v40 = swift_slowAlloc();
        aBlock[0] = v40;
        *v19 = 138412546;
        *(v19 + 4) = v15;
        *v20 = v15;
        *(v19 + 12) = 2080;
        v21 = v15;
        v22 = [v21 description];
        v41 = v13;
        v23 = v22;
        v24 = sub_100041B20();
        v38 = v5;
        v25 = v24;
        v36 = v16;
        v27 = v26;

        v28 = sub_10003FBD0(v25, v27, aBlock);

        *(v19 + 14) = v28;
        v29 = v36;
        _os_log_impl(&_mh_execute_header, v36, v39, "%@ CANCEL friend request for playerModel: %s", v19, 0x16u);
        sub_10000E9F0(v37, &unk_10005CA00, &unk_100045CF0);

        sub_10000E8A8(v40);

        (*(v38 + 8))(v8, v4);
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }

      v31 = sub_100041AF0();

      v32 = swift_allocObject();
      v32[2] = v15;
      v32[3] = sub_10001C798;
      v32[4] = v9;
      aBlock[4] = sub_10001C7A4;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000151F0;
      aBlock[3] = &unk_1000566B8;
      v33 = _Block_copy(aBlock);
      v34 = v15;

      [v42 cancelFriendRequestWithIdentifier:v31 handler:v33];

      _Block_release(v33);
    }

    else
    {
      sub_10002BB98(0, v12);

      v30 = v42;
    }
  }

  else
  {

    sub_100041F40();
    __break(1u);
  }
}

uint64_t sub_10001C760()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C7A4(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  if (!a1)
  {
    v5 = *(v2 + 16);
    *(v5 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState) = 0;
    v6 = (v5 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode);
    v7 = *(v5 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8);
    *v6 = 0;
    v6[1] = 0;

    a1 = 0;
  }

  return v3(a1);
}

uint64_t sub_10001C810()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C858()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10001C898()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [*(v0 + 32) error];
  v2();
}

uint64_t sub_10001C910()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for PlayerModel.URLPropertiesVersion(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlayerModel.URLPropertiesVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001CAC0()
{
  result = qword_10005D030;
  if (!qword_10005D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D030);
  }

  return result;
}

void sub_10001CBFC(void (*a1)(void), uint64_t a2)
{
  if (*(*&v2[qword_10005D760] + 16))
  {
    v5 = objc_opt_self();

    isa = sub_100041C10().super.isa;

    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = a1;
    v7[4] = a2;
    v22 = sub_10001D608;
    v23 = v7;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100016238;
    v21 = &unk_1000569C0;
    v8 = _Block_copy(&aBlock);
    v9 = v2;

    [v5 loadPlayersForIdentifiers:isa withCompletionHandler:v8];
    _Block_release(v8);
  }

  else
  {
    v10 = *&v2[qword_10005D758];
    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = swift_allocObject();
        v13[2] = v2;
        v13[3] = a1;
        v13[4] = a2;
        v22 = sub_10001D5E4;
        v23 = v13;
        aBlock = _NSConcreteStackBlock;
        v19 = 1107296256;
        v20 = sub_10001CFC4;
        v21 = &unk_100056970;
        v14 = _Block_copy(&aBlock);
        v15 = v2;

        v16 = v10;

        [v12 loadRecentPlayersWithCompletionHandler:v14];
        _Block_release(v14);
      }

      else
      {
        v17 = v10;
        a1(0);
      }
    }

    else
    {
      sub_100041F40();
      __break(1u);
    }
  }
}

uint64_t sub_10001CEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a1)
  {
    v6 = *(a3 + qword_10005D768);
    *(a3 + qword_10005D768) = a1;
  }

  return a4(a2);
}

uint64_t sub_10001CF24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a1)
  {
    v8 = *(a3 + qword_10005D768);
    *(a3 + qword_10005D768) = a1;

    if (a1 >> 62)
    {
      v9 = sub_100041F50();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a3 + qword_10005D770) = v9;
  }

  return a4(a2);
}

uint64_t sub_10001CFC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_10001D4C8();
    v4 = sub_100041C20();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_10001D058(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for FriendsModel();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10001D09C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FriendsModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _sSo8GKPlayerC26GameCenterMessageExtensionE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  v4 = sub_100002D08(&qword_10005CC90, qword_100045DE8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = sub_100041280();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v37 - v18;
  __chkstk_darwin(v17);
  v21 = &v37 - v20;
  v22 = &unk_10005A000;
  v23 = [a1 lastPlayedDate];
  v38 = v21;
  if (v23)
  {
    v24 = v23;
    sub_100041270();

    v25 = v16;
    v26 = v8;
    v27 = a2;
    v28 = *(v12 + 32);
    v28(v10, v19, v11);
    v37 = *(v12 + 56);
    v37(v10, 0, 1, v11);
    v28(v21, v10, v11);
    v22 = &unk_10005A000;
    a2 = v27;
    v8 = v26;
    v16 = v25;
  }

  else
  {
    v37 = *(v12 + 56);
    v37(v10, 1, 1, v11);
    sub_100041250();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_100010354(v10);
    }
  }

  v29 = [a2 v22[259]];
  if (v29)
  {
    v30 = v29;
    sub_100041270();

    v31 = *(v12 + 32);
    v31(v8, v19, v11);
    v37(v8, 0, 1, v11);
    v31(v16, v8, v11);
    v32 = v38;
  }

  else
  {
    v37(v8, 1, 1, v11);
    sub_100041250();
    v33 = (*(v12 + 48))(v8, 1, v11);
    v32 = v38;
    if (v33 != 1)
    {
      sub_100010354(v8);
    }
  }

  v34 = sub_100041260();
  v35 = *(v12 + 8);
  v35(v16, v11);
  v35(v32, v11);
  return v34 & 1;
}

uint64_t sub_10001D484(uint64_t a1)
{
  result = sub_10001D548(&qword_10005D040);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001D4C8()
{
  result = qword_10005CA38;
  if (!qword_10005CA38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CA38);
  }

  return result;
}

uint64_t sub_10001D548(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10001D4C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for FriendsModel()
{
  result = qword_10005D078;
  if (!qword_10005D078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001D5F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10001D620(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001D634(uint64_t a1, int a2)
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

uint64_t sub_10001D67C(uint64_t result, int a2, int a3)
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

uint64_t sub_10001D6E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v32 = sub_100002D08(&qword_10005D250, &qword_100046660);
  v36 = *(v32 - 8);
  v3 = v36[8];
  v4 = __chkstk_darwin(v32);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v35 = sub_1000419A0();
  v30 = *(v35 - 8);
  v8 = v30;
  v9 = *(v30 + 64);
  v10 = __chkstk_darwin(v35);
  v34 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v29 = &v28 - v12;
  sub_100041990();
  v14 = sub_100041690();
  v40 = 0;
  sub_10001DAF8(a1, &v47);
  v43 = v49;
  v44[0] = v50[0];
  *(v44 + 10) = *(v50 + 10);
  v41 = v47;
  v42 = v48;
  v45[2] = v49;
  v46[0] = v50[0];
  *(v46 + 10) = *(v50 + 10);
  v45[0] = v47;
  v45[1] = v48;
  sub_10001DED0(&v41, &v37);
  sub_10000E9F0(v45, &qword_10005D258, &qword_100046668);
  *&v39[7] = v41;
  *&v39[65] = *(v44 + 10);
  *&v39[55] = v44[0];
  *&v39[39] = v43;
  *&v39[23] = v42;
  *&v38[33] = *&v39[32];
  *&v38[49] = *&v39[48];
  *&v38[65] = *&v39[64];
  *&v38[1] = *v39;
  *&v37 = v14;
  *(&v37 + 1) = 0x4010000000000000;
  v38[0] = v40;
  v38[81] = BYTE9(v44[1]);
  *&v38[17] = *&v39[16];
  sub_100002D08(&qword_10005D260, &qword_100046670);
  sub_10001DF70(&qword_10005D268, &qword_10005D260, &qword_100046670);
  v28 = v7;
  sub_1000418A0();
  v50[1] = *&v38[48];
  v50[2] = *&v38[64];
  v51 = *&v38[80];
  v47 = v37;
  v48 = *v38;
  v49 = *&v38[16];
  v50[0] = *&v38[32];
  sub_10000E9F0(&v47, &qword_10005D260, &qword_100046670);
  v15 = *(v8 + 16);
  v16 = v34;
  v17 = v35;
  v15(v34, v13, v35);
  v18 = v36[2];
  v19 = v31;
  v20 = v7;
  v21 = v32;
  v18(v31, v20, v32);
  v22 = v33;
  v15(v33, v16, v17);
  v23 = sub_100002D08(&qword_10005D270, &unk_100046678);
  v18(&v22[*(v23 + 48)], v19, v21);
  v24 = v36[1];
  v24(v28, v21);
  v25 = *(v30 + 8);
  v26 = v35;
  v25(v29, v35);
  v24(v19, v21);
  return (v25)(v34, v26);
}

uint64_t sub_10001DAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = GKGameCenterUIFrameworkBundle();
  v35._countAndFlagsBits = 0xE000000000000000;
  v41._object = 0x8000000100044030;
  v41._countAndFlagsBits = 0xD00000000000001ALL;
  v43.value._countAndFlagsBits = 0;
  v43.value._object = 0;
  v5.super.isa = v4;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_100041180(v41, v43, v5, v45, v35);

  sub_100002D08(&qword_10005C9C0, &qword_100045CD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100045AE0;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  sub_100041B30();

  sub_1000024FC();
  v7 = sub_100041860();
  v9 = v8;
  v11 = v10;
  sub_100041800();
  v12 = sub_100041840();
  v38 = v13;
  v39 = v12;
  HIDWORD(v36._object) = v14;
  v40 = v15;

  sub_100002550(v7, v9, v11 & 1);

  v16 = GKGameCenterUIFrameworkBundle();
  v36._countAndFlagsBits = 0xE000000000000000;
  v42._countAndFlagsBits = 0xD00000000000001CLL;
  v42._object = 0x8000000100044050;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v17.super.isa = v16;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_100041180(v42, v44, v17, v46, v36);

  v18 = sub_100041860();
  v20 = v19;
  v22 = v21;
  sub_100041800();
  sub_1000417B0();

  v23 = sub_100041840();
  v25 = v24;
  LOBYTE(v4) = v26;

  sub_100002550(v18, v20, v22 & 1);

  sub_100041900();
  v27 = sub_100041830();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_100002550(v23, v25, v4 & 1);

  *a2 = v39;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v40;
  *(a2 + 32) = 256;
  *(a2 + 40) = v27;
  *(a2 + 48) = v29;
  *(a2 + 56) = v31 & 1;
  *(a2 + 64) = v33;
  *(a2 + 72) = 256;
  sub_100011D44(v39, v38, v37 & 1);

  sub_100011D44(v27, v29, v31 & 1);

  sub_100002550(v27, v29, v31 & 1);

  sub_100002550(v39, v38, v37 & 1);
}

uint64_t sub_10001DE64@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *a1 = sub_100041690();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v6 = sub_100002D08(&qword_10005D248, &qword_100046658);
  return sub_10001D6E8(v3, (a1 + *(v6 + 44)));
}

uint64_t sub_10001DED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005D258, &qword_100046668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DF70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000025E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10001DFC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10001DFE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10001E030(uint64_t result, int a2, int a3)
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

uint64_t sub_10001E094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001E0DC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_10001E134()
{
  sub_10001E38C();
  if (v0 <= 0x3F)
  {
    sub_10001E3E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10001E1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D08(qword_10005D288, qword_100046BB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001E2B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D08(qword_10005D288, qword_100046BB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_10001E38C()
{
  if (!qword_10005D310)
  {
    sub_100041680();
    v0 = sub_1000414E0();
    if (!v1)
    {
      atomic_store(v0, &qword_10005D310);
    }
  }
}

unint64_t sub_10001E3E4()
{
  result = qword_10005D318;
  if (!qword_10005D318)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10005D318);
  }

  return result;
}

uint64_t sub_10001E478(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_100041A00();
}

uint64_t sub_10001E648@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100041610();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002D08(&qword_10005D358, &qword_100047220);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100021B9C(v2, &v17 - v11, &qword_10005D358, &qword_100047220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100041680();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100041CF0();
    v16 = sub_100041730();
    sub_1000413F0();

    sub_100041600();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

BOOL sub_10001E848(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100041680();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E648(v8);
  v9 = sub_100041670();
  (*(v5 + 8))(v8, v4);
  return (v9 & 1) == 0 && *(*(v2 + *(a1 + 36) + 32) + 16) != 0;
}

uint64_t sub_10001E948@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v23 = sub_1000025E8(&qword_10005D320, &qword_1000467E0);
  v24 = sub_1000025E8(&qword_10005D328, &qword_1000467E8);
  v5 = sub_1000025E8(&qword_10005D330, &qword_1000467F0);
  v6 = *(a1 + 16);
  v25 = v5;
  v26 = v6;
  swift_getTupleTypeMetadata();
  sub_1000419F0();
  swift_getWitnessTable();
  v7 = sub_100041980();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v19[-v13];
  v15 = *(a1 + 24);
  v20 = v6;
  v21 = v15;
  v22 = v2;
  sub_100041690();
  sub_100041970();
  swift_getWitnessTable();
  v16 = v8[2];
  v16(v14, v12, v7);
  v17 = v8[1];
  v17(v12, v7);
  v16(a2, v14, v7);
  return (v17)(v14, v7);
}

uint64_t sub_10001EB88@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v130 = a3;
  v121 = a4;
  v123 = *(a2 - 1);
  v6 = *(v123 + 64);
  v7 = __chkstk_darwin(a1);
  v122 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v120 = &v96 - v9;
  v102 = sub_100002D08(&qword_10005D338, &qword_1000467F8);
  v101 = *(v102 - 8);
  v10 = *(v101 + 64);
  __chkstk_darwin(v102);
  v99 = &v96 - v11;
  v115 = sub_100002D08(&qword_10005D340, &qword_100046800);
  v12 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v103 = &v96 - v13;
  v110 = sub_100002D08(&qword_10005D348, &qword_100046808);
  v14 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v111 = (&v96 - v15);
  v108 = sub_100041310();
  v107 = *(v108 - 8);
  v16 = *(v107 + 64);
  __chkstk_darwin(v108);
  v106 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100002D08(&qword_10005D330, &qword_1000467F0);
  v18 = *(*(v116 - 8) + 64);
  v19 = __chkstk_darwin(v116);
  v119 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v117 = &v96 - v21;
  v112 = sub_100002D08(&qword_10005D328, &qword_1000467E8);
  v22 = *(*(v112 - 8) + 64);
  v23 = __chkstk_darwin(v112);
  v127 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v128 = &v96 - v25;
  v26 = type metadata accessor for FriendInviteInfoCardView();
  v27 = *(v26 - 8);
  v109 = *(v27 + 64);
  __chkstk_darwin(v26);
  v29 = &v96 - v28;
  v125 = sub_100002D08(&qword_10005D350, &unk_100046810);
  v30 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v124 = &v96 - v31;
  v114 = sub_100002D08(&qword_10005D320, &qword_1000467E0);
  v113 = *(v114 - 8);
  v32 = *(v113 + 64);
  v33 = __chkstk_darwin(v114);
  v126 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v129 = &v96 - v35;
  v36 = *(v26 + 36);
  v105 = a1;
  v100 = a1 + v36;
  v98 = *(a1 + v36);
  v37 = [v98 internal];
  v118 = *(v27 + 16);
  v118(v29, a1, v26);
  v38 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v39 = swift_allocObject();
  v40 = v130;
  *(v39 + 16) = a2;
  *(v39 + 24) = v40;
  v104 = *(v27 + 32);
  v104(v39 + v38, v29, v26);
  v41 = v124;
  sub_100041330();
  sub_1000419D0();
  sub_100041500();
  v42 = &v41[*(v125 + 36)];
  v43 = v141;
  *v42 = v140;
  *(v42 + 1) = v43;
  *(v42 + 2) = v142;
  v44 = v105;
  v118(v29, v105, v26);
  v45 = v44;
  v46 = swift_allocObject();
  v118 = a2;
  v47 = v130;
  *(v46 + 16) = a2;
  *(v46 + 24) = v47;
  v48 = v26;
  v104(v46 + v38, v29, v26);
  v109 = sub_100020F6C();
  v49 = v124;
  sub_1000418A0();

  sub_10000E9F0(v49, &qword_10005D350, &unk_100046810);
  sub_10001F98C(v48, v128);
  v50 = v107;
  v51 = v106;
  v52 = v108;
  (*(v107 + 104))(v106, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v108);
  LOBYTE(v49) = sub_100041300();
  (*(v50 + 8))(v51, v52);
  if (v49)
  {
    v53 = *(v100 + 9) == 1;
    v97 = v48;
    if (v53)
    {
      v54 = v98;
      v55 = [v98 displayNameWithOptions:0];
      if (!v55)
      {
        v55 = [v54 displayName];
      }

      v56 = v55;
      sub_100041B20();

      sub_1000413B0();
      v57 = sub_100041360();
      v59 = v58;

      v136 = v57;
      v137 = v59;
      sub_1000024FC();
      v68 = sub_100041860();
      v69 = v60;
      LOBYTE(v59) = v61;
      v70 = v62;
      KeyPath = swift_getKeyPath();
      LOBYTE(v136) = v59 & 1;
      v76 = v59 & 1;
      v63 = sub_100041720();
      v73 = sub_1000417E0();
      v72 = swift_getKeyPath();
      v75 = v63 << 32;
      v74 = 1;
    }

    else
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      KeyPath = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
    }

    v77 = v111;
    *v111 = v68;
    v77[1] = v69;
    v77[2] = v76;
    v77[3] = v70;
    v77[4] = KeyPath;
    v77[5] = v75 | (v74 << 16) | v74;
    v77[6] = v72;
    v77[7] = v73;
    swift_storeEnumTagMultiPayload();
    sub_100002D08(&qword_10005D370, &qword_100046820);
    sub_100021050();
    sub_100021388();
    v67 = v117;
    v78 = sub_1000416D0();
    v48 = v97;
  }

  else
  {
    if (sub_10001E848(v48))
    {
      v64 = v99;
      sub_10001FAD0(v48, v99);
      v65 = v103;
      sub_10002159C(v64, v103);
      v66 = 0;
      v67 = v117;
    }

    else
    {
      v66 = 1;
      v67 = v117;
      v65 = v103;
    }

    (*(v101 + 56))(v65, v66, 1, v102);
    sub_100021B9C(v65, v111, &qword_10005D340, &qword_100046800);
    swift_storeEnumTagMultiPayload();
    sub_100002D08(&qword_10005D370, &qword_100046820);
    sub_100021050();
    sub_100021388();
    sub_1000416D0();
    v78 = sub_10000E9F0(v65, &qword_10005D340, &qword_100046800);
  }

  v79 = v45 + *(v48 + 40);
  v80 = *(v79 + 8);
  v81 = v122;
  (*v79)(v78);
  v82 = v123;
  v83 = *(v123 + 16);
  v84 = v120;
  v85 = v118;
  v83(v120, v81, v118);
  v124 = *(v82 + 8);
  (v124)(v81, v85);
  v86 = v113;
  v87 = v126;
  v88 = v114;
  (*(v113 + 16))(v126, v129, v114);
  v136 = v87;
  v89 = v127;
  sub_100021438(v128, v127);
  v137 = v89;
  v90 = v67;
  v91 = v67;
  v92 = v119;
  sub_100021B9C(v90, v119, &qword_10005D330, &qword_1000467F0);
  v138 = v92;
  v83(v81, v84, v85);
  v139 = v81;
  v135[0] = v88;
  v135[1] = v112;
  v135[2] = v116;
  v135[3] = v85;
  OpaqueTypeConformance2 = v125;
  v132 = v109;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v132 = sub_100003214(&qword_10005D400, &qword_10005D328, &qword_1000467E8);
  v133 = sub_1000214A8();
  v134 = v130;
  sub_10001E478(&v136, 4uLL, v135);
  v93 = v124;
  (v124)(v84, v85);
  sub_10000E9F0(v91, &qword_10005D330, &qword_1000467F0);
  sub_100021534(v128);
  v94 = *(v86 + 8);
  v94(v129, v88);
  v93(v81, v85);
  sub_10000E9F0(v92, &qword_10005D330, &qword_1000467F0);
  sub_100021534(v127);
  return (v94)(v126, v88);
}

uint64_t sub_10001F8D8(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for FriendInviteInfoCardView() + 36);
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  v4 = [*v1 internal];
  v5 = [v4 playerID];

  v6 = sub_100041B20();
  v8 = v7;

  v3(v6, v8);
}

uint64_t sub_10001F98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100041310();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v6);
  v11 = sub_100041300();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v12 = 0x4000000000000000;
  }

  else
  {
    v12 = 0xC000000000000000;
  }

  *a2 = sub_100041690();
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  v13 = sub_100002D08(&qword_10005D448, &qword_1000468F0);
  return sub_10001FB34(v3, *(a1 + 16), *(a1 + 24), (a2 + *(v13 + 44)));
}

uint64_t sub_10001FAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_100041620();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v5 = a2 + *(sub_100002D08(&qword_10005D410, &qword_1000468C0) + 44);
  return sub_100020944(v2, *(a1 + 16), *(a1 + 24));
}

uint64_t sub_10001FB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v63 = a4;
  v57 = type metadata accessor for FriendInviteInfoCardView();
  v7 = *(v57 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v57);
  v10 = &v56 - v9;
  v11 = sub_100041310();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002D08(&qword_10005D450, &qword_1000468F8);
  v61 = *(v16 - 8);
  v62 = v16;
  v17 = *(v61 + 64);
  v18 = __chkstk_darwin(v16);
  v64 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v65 = &v56 - v20;
  v56 = sub_100041630();
  v78 = 0;
  v59 = a3;
  v60 = a1;
  v58 = a2;
  sub_100020128(a1, &v69);
  v81 = v71;
  v82 = v72;
  v79 = v69;
  v80 = v70;
  v84[2] = v71;
  v84[3] = v72;
  v84[4] = v73;
  v84[1] = v70;
  v83 = v73;
  v84[0] = v69;
  sub_100021B9C(&v79, &v66, &qword_10005D458, &qword_100046900);
  sub_10000E9F0(v84, &qword_10005D458, &qword_100046900);
  *&v77[23] = v80;
  *&v77[39] = v81;
  *&v77[55] = v82;
  *&v77[71] = v83;
  *&v77[7] = v79;
  v21 = v78;
  (*(v12 + 104))(v15, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v11);
  LOBYTE(a1) = sub_100041300();
  (*(v12 + 8))(v15, v11);
  if (a1)
  {
    v22 = sub_100041810();
  }

  else
  {
    v22 = sub_1000417A0();
  }

  v23 = v22;
  KeyPath = swift_getKeyPath();
  *(&v67[2] + 1) = *&v77[32];
  *(&v67[3] + 1) = *&v77[48];
  *(&v67[4] + 1) = *&v77[64];
  *(v67 + 1) = *v77;
  *&v66 = v56;
  *(&v66 + 1) = 0x4000000000000000;
  LOBYTE(v67[0]) = v21;
  *(&v67[1] + 1) = *&v77[16];
  *&v67[5] = *&v77[79];
  *(&v67[5] + 1) = KeyPath;
  v68 = v23;
  v25 = v60;
  v26 = v57;
  (*(v7 + 16))(v10, v60, v57);
  v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v28 = swift_allocObject();
  v29 = v59;
  *(v28 + 16) = v58;
  *(v28 + 24) = v29;
  (*(v7 + 32))(v28 + v27, v10, v26);
  sub_100002D08(&qword_10005D460, &qword_100046908);
  sub_1000219C4();
  sub_1000418A0();

  v73 = v67[3];
  v74 = v67[4];
  v75 = v67[5];
  v76 = v68;
  v69 = v66;
  v70 = v67[0];
  v71 = v67[1];
  v72 = v67[2];
  sub_10000E9F0(&v69, &qword_10005D460, &qword_100046908);
  v30 = v25 + *(v26 + 36);
  v31 = *(v30 + 24);
  if (v31)
  {
    *&v66 = *(v30 + 16);
    *(&v66 + 1) = v31;
    sub_1000024FC();

    v32 = sub_100041860();
    v34 = v33;
    v36 = v35;
    sub_1000417A0();
    v37 = sub_100041840();
    v59 = v38;
    v60 = v37;
    v40 = v39;
    v58 = v41;

    sub_100002550(v32, v34, v36 & 1);

    v57 = swift_getKeyPath();
    LOBYTE(v66) = v40 & 1;
    v42 = v40 & 1;
    v43 = 65537;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v42 = 0;
    v57 = 0;
    v58 = 0;
    v43 = 0;
  }

  v45 = v61;
  v44 = v62;
  v46 = *(v61 + 16);
  v47 = v64;
  v46(v64, v65, v62);
  v48 = v63;
  v46(v63, v47, v44);
  v49 = &v48[*(sub_100002D08(&qword_10005D480, qword_100046918) + 48)];
  v51 = v59;
  v50 = v60;
  *v49 = v60;
  *(v49 + 1) = v51;
  v52 = v57;
  v53 = v58;
  *(v49 + 2) = v42;
  *(v49 + 3) = v53;
  *(v49 + 4) = v52;
  v49[42] = BYTE2(v43);
  *(v49 + 20) = v43;
  sub_100021AA8(v50, v51, v42, v53);
  v54 = *(v45 + 8);
  v54(v65, v44);
  sub_100021AF8(v50, v51, v42, v53);
  return (v54)(v64, v44);
}

uint64_t sub_100020128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000411A0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100041150();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = a1 + *(type metadata accessor for FriendInviteInfoCardView() + 36);
  v9 = *v8;
  v10 = [*v8 displayNameWithOptions:0];
  if (!v10)
  {
    v10 = [v9 displayName];
  }

  v11 = v10;
  sub_100041B20();

  sub_100041190();
  sub_100041160();
  sub_1000417A0();
  v12 = sub_1000417B0();

  *&v30 = v12;
  sub_100021B48();
  sub_100041170();
  v13 = sub_100041850();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v21 = v17 & 1;
  v40 = v17 & 1;
  if (*(v8 + 8) == 1)
  {
    v22 = sub_100041930();
    LODWORD(v25) = sub_100041710();
    v23 = sub_100041790();
    v24 = swift_getKeyPath();
    v25 = v25;
  }

  else
  {
    v22 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
  }

  *&v28 = v13;
  *(&v28 + 1) = v15;
  v29[0] = v21;
  *&v29[1] = *v39;
  *&v29[4] = *&v39[3];
  *&v29[8] = v19;
  *&v29[16] = KeyPath;
  *&v29[24] = 1;
  v29[26] = 1;
  v30 = v28;
  *v31 = *v29;
  *&v31[11] = *&v29[11];
  sub_100021B9C(&v28, v32, &qword_10005D3A8, &qword_100046838);
  sub_100021C04(v22);
  sub_100021C54(v22);
  v26 = *v31;
  *a2 = v30;
  *(a2 + 16) = v26;
  *(a2 + 32) = *&v31[16];
  *(a2 + 48) = v22;
  *(a2 + 56) = v25;
  *(a2 + 64) = v24;
  *(a2 + 72) = v23;
  sub_100021C54(v22);
  v32[0] = v13;
  v32[1] = v15;
  v33 = v21;
  *v34 = *v39;
  *&v34[3] = *&v39[3];
  v35 = v19;
  v36 = KeyPath;
  v37 = 1;
  v38 = 1;
  return sub_10000E9F0(v32, &qword_10005D3A8, &qword_100046838);
}

uint64_t sub_100020474(uint64_t a1)
{
  result = type metadata accessor for FriendInviteInfoCardView();
  v3 = a1 + *(result + 36);
  if (*(v3 + 8) == 1)
  {
    v5 = *(v3 + 72);
    v4 = *(v3 + 80);
    v6 = [*v3 internal];
    v7 = [v6 playerID];

    v8 = sub_100041B20();
    v10 = v9;

    v5(v8, v10);
  }

  return result;
}

uint64_t sub_100020548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v56 = a3;
  v6 = sub_100002D08(&qword_10005D440, &qword_1000468E8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - v8;
  v10 = sub_100041820();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v58 = sub_100041FB0();
  v59 = v15;
  v51 = sub_1000024FC();
  v16 = sub_100041860();
  v48 = v18;
  v49 = v17;
  v20 = v19;
  (*(v11 + 104))(v14, enum case for Font.TextStyle.headline(_:), v10);
  v21 = enum case for Font.Design.rounded(_:);
  v22 = sub_1000417C0();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v9, v21, v22);
  (*(v23 + 56))(v9, 0, 1, v22);
  sub_1000417D0();
  sub_10000E9F0(v9, &qword_10005D440, &qword_1000468E8);
  (*(v11 + 8))(v14, v10);
  v24 = v49;
  v25 = sub_100041840();
  v52 = v26;
  v53 = v25;
  v50 = v27;
  v54 = v28;

  sub_100002550(v16, v24, v20 & 1);

  v58 = v55;
  v59 = v56;

  v29 = sub_100041860();
  v31 = v30;
  LOBYTE(v24) = v32;
  sub_1000417F0();
  v33 = sub_100041840();
  v35 = v34;
  LOBYTE(v14) = v36;

  sub_100002550(v29, v31, v24 & 1);

  LODWORD(v58) = sub_100041720();
  v37 = sub_100041830();
  v39 = v38;
  LOBYTE(v24) = v40;
  v42 = v41;
  sub_100002550(v33, v35, v14 & 1);

  v43 = v50 & 1;
  v57 = v50 & 1;
  LOBYTE(v58) = v50 & 1;
  LOBYTE(v24) = v24 & 1;
  v60 = v24;
  v45 = v52;
  v44 = v53;
  *a4 = v53;
  *(a4 + 8) = v45;
  *(a4 + 16) = v43;
  *(a4 + 24) = v54;
  *(a4 + 32) = v37;
  *(a4 + 40) = v39;
  *(a4 + 48) = v24;
  *(a4 + 56) = v42;
  v46 = v44;
  sub_100011D44(v44, v45, v43);

  sub_100011D44(v37, v39, v24);

  sub_100002550(v37, v39, v24);

  sub_100002550(v46, v45, v57);
}

uint64_t sub_100020944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FriendInviteInfoCardView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  v12 = *(*(a1 + *(v9 + 36) + 32) + 16);
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v7 + 32))(v14 + v13, v11, v6);
  sub_100002D08(&qword_10005D418, &qword_1000468C8);
  sub_100003214(&qword_10005D420, &qword_10005D418, &qword_1000468C8);
  return sub_1000419B0();
}

uint64_t sub_100020AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000419A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002D08(&qword_10005D428, &qword_1000468D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  result = type metadata accessor for FriendInviteInfoCardView();
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v35 = v10;
  v19 = *(a2 + *(result + 36) + 32);
  if (*(v19 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v36 = v6;
  v20 = (v19 + 24 * a1);
  v21 = v20[4];
  v22 = v20[5];
  v23 = v20[6];

  v37 = sub_100041690();
  LOBYTE(v38[0]) = 1;
  sub_100020548(v21, v22, v23, &v40);
  *&v43[7] = v40;
  *&v43[23] = *v41;
  *&v43[39] = *&v41[16];
  *&v43[55] = *&v41[32];

  v24 = v38[0];
  if (*(v19 + 16) - 1 <= a1)
  {
    (*(v7 + 56))(v17, 1, 1, v36);
  }

  else
  {
    v25 = v35;
    sub_100041990();
    v26 = v25;
    v27 = v36;
    (*(v7 + 32))(v17, v26, v36);
    (*(v7 + 56))(v17, 0, 1, v27);
  }

  sub_100021B9C(v17, v15, &qword_10005D428, &qword_1000468D0);
  v28 = v37;
  v38[0] = v37;
  v38[1] = 0;
  v39[0] = v24;
  *&v39[1] = *v43;
  *&v39[17] = *&v43[16];
  *&v39[33] = *&v43[32];
  *&v39[49] = *&v43[48];
  *&v39[64] = *&v43[63];
  v29 = *v39;
  *a3 = v37;
  *(a3 + 16) = v29;
  v30 = *&v39[16];
  v31 = *&v39[32];
  v32 = *&v39[48];
  *(a3 + 80) = *&v39[64];
  *(a3 + 48) = v31;
  *(a3 + 64) = v32;
  *(a3 + 32) = v30;
  v33 = sub_100002D08(&qword_10005D430, &qword_1000468D8);
  sub_100021B9C(v15, a3 + *(v33 + 48), &qword_10005D428, &qword_1000468D0);
  sub_100021B9C(v38, &v40, &qword_10005D438, &qword_1000468E0);
  sub_10000E9F0(v17, &qword_10005D428, &qword_1000468D0);
  sub_10000E9F0(v15, &qword_10005D428, &qword_1000468D0);
  v40 = v28;
  v41[0] = v24;
  *&v41[17] = *&v43[16];
  *&v41[33] = *&v43[32];
  *v42 = *&v43[48];
  *&v42[15] = *&v43[63];
  *&v41[1] = *v43;
  return sub_10000E9F0(&v40, &qword_10005D438, &qword_1000468E0);
}

uint64_t sub_100020EE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for FriendInviteInfoCardView();
  v4 = v0 + *(v3 + 36) + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  v5 = *(v4 + 48);
  return (*(v4 + 40))();
}

unint64_t sub_100020F6C()
{
  result = qword_10005D360;
  if (!qword_10005D360)
  {
    sub_1000025E8(&qword_10005D350, &unk_100046810);
    sub_100020FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D360);
  }

  return result;
}

unint64_t sub_100020FF8()
{
  result = qword_10005D368;
  if (!qword_10005D368)
  {
    sub_100041340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D368);
  }

  return result;
}

unint64_t sub_100021050()
{
  result = qword_10005D378;
  if (!qword_10005D378)
  {
    sub_1000025E8(&qword_10005D370, &qword_100046820);
    sub_1000210D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D378);
  }

  return result;
}

unint64_t sub_1000210D4()
{
  result = qword_10005D380;
  if (!qword_10005D380)
  {
    sub_1000025E8(&qword_10005D388, &qword_100046828);
    sub_10002118C();
    sub_100003214(&qword_10005D3E0, &qword_10005D3E8, &qword_100046CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D380);
  }

  return result;
}

unint64_t sub_10002118C()
{
  result = qword_10005D390;
  if (!qword_10005D390)
  {
    sub_1000025E8(&qword_10005D398, &qword_100046830);
    sub_100021244();
    sub_100003214(&qword_10005D3D0, &qword_10005D3D8, &unk_100046850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D390);
  }

  return result;
}

unint64_t sub_100021244()
{
  result = qword_10005D3A0;
  if (!qword_10005D3A0)
  {
    sub_1000025E8(&qword_10005D3A8, &qword_100046838);
    sub_1000212D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D3A0);
  }

  return result;
}

unint64_t sub_1000212D0()
{
  result = qword_10005D3B0;
  if (!qword_10005D3B0)
  {
    sub_1000025E8(&qword_10005D3B8, &qword_100046840);
    sub_100003214(&qword_10005D3C0, &qword_10005D3C8, &qword_100046848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D3B0);
  }

  return result;
}

unint64_t sub_100021388()
{
  result = qword_10005D3F0;
  if (!qword_10005D3F0)
  {
    sub_1000025E8(&qword_10005D340, &qword_100046800);
    sub_100003214(&qword_10005D3F8, &qword_10005D338, &qword_1000467F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D3F0);
  }

  return result;
}

uint64_t sub_100021438(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005D328, &qword_1000467E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000214A8()
{
  result = qword_10005D408;
  if (!qword_10005D408)
  {
    sub_1000025E8(&qword_10005D330, &qword_1000467F0);
    sub_100021050();
    sub_100021388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D408);
  }

  return result;
}

uint64_t sub_100021534(uint64_t a1)
{
  v2 = sub_100002D08(&qword_10005D328, &qword_1000467E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002159C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005D338, &qword_1000467F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002160C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000415A0();
  *a1 = result;
  return result;
}

uint64_t sub_100021660@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000415C0();
  *a1 = result;
  return result;
}

uint64_t sub_10002168C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000415C0();
  *a1 = result;
  return result;
}

uint64_t sub_1000216B8(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000415D0();
}

uint64_t sub_1000216E4(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000415D0();
}

uint64_t sub_100021710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for FriendInviteInfoCardView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100020AF8(a1, v8, a2);
}

uint64_t sub_1000217AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for FriendInviteInfoCardView();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = (v0 + v5);
  sub_100002D08(&qword_10005D358, &qword_100047220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_100041680();
    (*(*(v8 - 8) + 8))(v0 + v5, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = v7 + *(v3 + 36);

  v11 = *(v10 + 3);

  v12 = *(v10 + 4);

  v13 = *(v10 + 6);

  v14 = *(v10 + 8);

  v15 = *(v10 + 10);

  v16 = *(v7 + *(v3 + 40) + 8);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_10002192C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for FriendInviteInfoCardView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

unint64_t sub_1000219C4()
{
  result = qword_10005D468;
  if (!qword_10005D468)
  {
    sub_1000025E8(&qword_10005D460, &qword_100046908);
    sub_100003214(&qword_10005D470, &qword_10005D478, &qword_100046910);
    sub_100003214(&qword_10005D3E0, &qword_10005D3E8, &qword_100046CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D468);
  }

  return result;
}

uint64_t sub_100021AA8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100011D44(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100021AF8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100002550(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100021B48()
{
  result = qword_10005D488;
  if (!qword_10005D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D488);
  }

  return result;
}

uint64_t sub_100021B9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002D08(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100021C04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100021C54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100021CD0(uint64_t *a1)
{
  v1 = *a1;
  sub_1000025E8(&qword_10005D320, &qword_1000467E0);
  sub_1000025E8(&qword_10005D328, &qword_1000467E8);
  sub_1000025E8(&qword_10005D330, &qword_1000467F0);
  swift_getTupleTypeMetadata();
  sub_1000419F0();
  swift_getWitnessTable();
  sub_100041980();
  return swift_getWitnessTable();
}

id sub_100021F10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoadingStatusView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100021FAC()
{
  *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_maxRowsPerSection] = 2;
  *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_sectionInfo] = &_swiftEmptyDictionarySingleton;
  v1 = &v0[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_contentSize];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_itemAttributes] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_headerAttributes] = &_swiftEmptyDictionarySingleton;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for WideFlowLayout();
  v2 = objc_msgSendSuper2(&v4, "init");
  [v2 setScrollDirection:1];
  [v2 setHeaderReferenceSize:{0.0, 36.0}];
  [v2 setEstimatedItemSize:{42.0, 42.0}];
  [v2 setSectionInset:{0.0, 16.0, 0.0, 16.0}];

  return v2;
}

id sub_1000220D4(void *a1)
{
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_maxRowsPerSection] = 2;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_sectionInfo] = &_swiftEmptyDictionarySingleton;
  v3 = &v1[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_contentSize];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_itemAttributes] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_headerAttributes] = &_swiftEmptyDictionarySingleton;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for WideFlowLayout();
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setScrollDirection:1];
    [v6 setHeaderReferenceSize:{0.0, 36.0}];
    [v6 setEstimatedItemSize:{42.0, 42.0}];
    [v6 setSectionInset:{0.0, 16.0, 0.0, 16.0}];
  }

  return v5;
}

void sub_100022234()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 numberOfSections];
    v5 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_sectionInfo;
    swift_beginAccess();
    v6 = *&v0[v5];
    *&v0[v5] = &_swiftEmptyDictionarySingleton;

    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4)
      {
        v61 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_maxRowsPerSection;
        type metadata accessor for SectionInfo();
        v7 = 0;
        v8 = 0;
        while (1)
        {
          v11 = swift_allocObject();
          *(v11 + 16) = 0u;
          *(v11 + 32) = 0u;
          *(v11 + 48) = 0u;
          *(v11 + 64) = 0u;
          *(v11 + 80) = 0u;
          *(v11 + 96) = 0u;
          *(v11 + 112) = 0;
          v12 = [v3 numberOfItemsInSection:v8];
          *(v11 + 16) = v12;
          v13 = *&v1[v61];
          *(v11 + 32) = v13;
          if (!v13)
          {
            goto LABEL_44;
          }

          if (v12 == 0x8000000000000000 && v13 == -1)
          {
            goto LABEL_47;
          }

          v15 = v12 / v13;
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_45;
          }

          v18 = v3;
          *(v11 + 24) = v17;
          [v1 headerReferenceSize];
          *(v11 + 40) = v19;
          *(v11 + 48) = v20;
          [v1 estimatedItemSize];
          *(v11 + 56) = v21;
          *(v11 + 64) = v22;
          [v1 minimumInteritemSpacing];
          v24 = v23;
          [v1 minimumLineSpacing];
          *(v11 + 104) = v24;
          *(v11 + 112) = v25;
          if (*(v11 + 24) > v7)
          {
            v7 = *(v11 + 24);
          }

          swift_beginAccess();

          v26 = *&v1[v5];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = *&v1[v5];
          *&v1[v5] = 0x8000000000000000;
          v29 = sub_100030008(v8);
          v31 = v28[2];
          v32 = (v30 & 1) == 0;
          v16 = __OFADD__(v31, v32);
          v33 = v31 + v32;
          if (v16)
          {
            goto LABEL_46;
          }

          v34 = v30;
          if (v28[3] < v33)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_20;
          }

          v38 = v29;
          sub_100023E3C();
          v29 = v38;
          if (v34)
          {
LABEL_5:
            v9 = v28[7];
            v10 = *(v9 + 8 * v29);
            *(v9 + 8 * v29) = v11;

            goto LABEL_6;
          }

LABEL_21:
          v28[(v29 >> 6) + 8] |= 1 << v29;
          *(v28[6] + 8 * v29) = v8;
          *(v28[7] + 8 * v29) = v11;
          v36 = v28[2];
          v16 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v16)
          {
            goto LABEL_48;
          }

          v28[2] = v37;
LABEL_6:
          ++v8;
          *&v1[v5] = v28;
          swift_endAccess();

          v3 = v18;
          if (v4 == v8)
          {
            goto LABEL_26;
          }
        }

        sub_10002359C(v33, isUniquelyReferenced_nonNull_native);
        v29 = sub_100030008(v8);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_52;
        }

LABEL_20:
        if (v34)
        {
          goto LABEL_5;
        }

        goto LABEL_21;
      }

      v7 = 0;
LABEL_26:
      [v1 sectionInset];
      v40 = v39;
      [v1 sectionInset];
      v42 = v41;
      v43 = 0;
      v44 = 0.0;
      while (1)
      {
        if (v4 == v43)
        {

          v60 = &v1[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_contentSize];
          *v60 = v44;
          v60[1] = v42 + -50.0;
          return;
        }

        if (v43 >= v4)
        {
          break;
        }

        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_41;
        }

        v46 = *&v1[v5];
        if (!*(v46 + 16))
        {
          goto LABEL_42;
        }

        v47 = sub_100030008(v43);
        if ((v48 & 1) == 0)
        {
          goto LABEL_43;
        }

        v49 = *(*(v46 + 56) + 8 * v47);
        v50 = *(v49 + 16);
        ++v43;
        if (v50 >= 1)
        {
          *(v49 + 72) = v40;
          *(v49 + 80) = v42;
          if (!v7)
          {
            goto LABEL_50;
          }

          v51 = v50 / v7;
          v16 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v16)
          {
            goto LABEL_51;
          }

          *(v49 + 24) = v7;
          *(v49 + 32) = v52;
          v53 = v52;

          [v1 headerReferenceSize];
          v55 = v54;
          [v1 estimatedItemSize];
          v57 = v55 + (v56 + *(v49 + 112)) * v53;
          [v1 estimatedItemSize];
          v59 = (v58 + *(v49 + 104)) * v7 - *(v49 + 104);
          *(v49 + 88) = v59;
          *(v49 + 96) = v57;

          if (v59 > v44)
          {
            v44 = v59;
          }

          v42 = v42 + v57;
          v43 = v45;
        }
      }

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
LABEL_48:
      __break(1u);
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    sub_100041FE0();
    __break(1u);
  }
}

void sub_100022690()
{
  v1 = v0;
  v2 = sub_1000412F0();
  v89 = *(v2 - 8);
  v3 = *(v89 + 64);
  v4 = __chkstk_darwin(v2);
  v99 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v94 = &v82 - v7;
  __chkstk_darwin(v6);
  v9 = &v82 - v8;
  v10 = type metadata accessor for WideFlowLayout();
  v103.receiver = v0;
  v103.super_class = v10;
  objc_msgSendSuper2(&v103, "prepareLayout");
  v11 = [v0 collectionView];
  if (!v11)
  {
    return;
  }

  v83 = v11;
  [v11 bounds];
  if (v12 <= 0.0)
  {
    goto LABEL_45;
  }

  v13 = v12;
  sub_100022234();
  v14 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_sectionInfo;
  swift_beginAccess();
  v87 = v14;
  v15 = *(*&v0[v14] + 16);
  v101 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_itemAttributes;
  v88 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_headerAttributes;
  swift_beginAccess();
  v86 = v15;
  if (!v15)
  {
LABEL_45:

    return;
  }

  v97 = 0;
  v16 = (v89 + 8);
  v93 = (v89 + 32);
  v84 = UICollectionElementKindSectionHeader;
  v96 = (v89 + 16);
  v85 = (v89 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v90 = v9;
  v91 = (v89 + 8);
  while (1)
  {
    v17 = *&v1[v87];
    if (!*(v17 + 16))
    {
      goto LABEL_50;
    }

    v18 = sub_100030008(v97);
    if ((v19 & 1) == 0)
    {
      break;
    }

    v20 = *(*(v17 + 56) + 8 * v18);
    if (*(v20 + 16) < 1)
    {
      goto LABEL_7;
    }

    v21 = *(*(v17 + 56) + 8 * v18);

    sub_1000412E0();
    v22 = *&v1[v88];
    if (*(v22 + 16))
    {
      v23 = *&v1[v88];

      v24 = sub_10003004C(v9);
      if (v25)
      {
        v26 = *(*(v22 + 56) + 8 * v24);

LABEL_16:
        v29 = v26;
        v30 = v29;
        v31 = *(v20 + 40);
        if (v31 == 0.0)
        {
          v31 = v13;
        }

        [v29 setFrame:{*(v20 + 72), *(v20 + 80), v31, *(v20 + 48)}];
        v32 = v88;
        swift_beginAccess();
        v33 = v30;
        v34 = *&v1[v32];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = *&v1[v32];
        *&v1[v32] = 0x8000000000000000;
        sub_100023BB8(v33, v9, isUniquelyReferenced_nonNull_native);
        *&v1[v32] = v102;
        swift_endAccess();

        v36 = *(v20 + 16);
        if (v36 < 0)
        {
          goto LABEL_52;
        }

        goto LABEL_21;
      }
    }

    v27 = v84;
    isa = sub_1000412C0().super.isa;
    v26 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v27 withIndexPath:isa];

    if (v26)
    {
      goto LABEL_16;
    }

    v30 = 0;
    v36 = *(v20 + 16);
    if (v36 < 0)
    {
      goto LABEL_52;
    }

LABEL_21:
    if (v36)
    {
      swift_beginAccess();
      v37 = 0;
      v92 = v20;
      v95 = v36;
      while (1)
      {
        v43 = v94;
        sub_1000412E0();
        v44 = *v16;
        (*v16)(v9, v2);
        (*v93)(v9, v43, v2);
        v45 = *&v1[v101];
        v46 = *(v45 + 16);
        v100 = v44;
        if (v46)
        {

          v47 = sub_10003004C(v9);
          if (v48)
          {
            v49 = *(*(v45 + 56) + 8 * v47);

            goto LABEL_31;
          }
        }

        v50 = sub_1000412C0().super.isa;
        v49 = [objc_opt_self() layoutAttributesForCellWithIndexPath:v50];

        if (!v49)
        {
          v30 = 0;
          v42 = v95;
          v40 = v100;
          goto LABEL_25;
        }

LABEL_31:
        v51 = v49;
        v52 = *(v20 + 24);
        if (!v52)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v53 = v51;
        v54 = (*(v20 + 56) + *(v20 + 104)) * (v37 % v52);
        v55 = *(v20 + 72);
        v56 = *(v20 + 48) + (*(v20 + 64) + *(v20 + 112)) * (v37 / v52);
        v57 = *(v20 + 80);
        sub_100041320();
        v58 = *(v20 + 56);
        v59 = *(v20 + 64);
        [v53 setFrame:?];
        v60 = *v96;
        v61 = v99;
        (*v96)(v99, v9, v2);
        v62 = v1;
        v63 = v101;
        swift_beginAccess();
        v98 = v53;
        v64 = v53;
        v65 = *&v62[v63];
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v102 = *&v62[v63];
        v67 = v102;
        *&v62[v63] = 0x8000000000000000;
        v69 = sub_10003004C(v61);
        v70 = v67[2];
        v71 = (v68 & 1) == 0;
        v72 = v70 + v71;
        if (__OFADD__(v70, v71))
        {
          goto LABEL_48;
        }

        v73 = v68;
        if (v67[3] >= v72)
        {
          if (v66)
          {
            v76 = v102;
            if ((v68 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            sub_100023FE4();
            v76 = v102;
            if ((v73 & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          sub_10002380C(v72, v66);
          v74 = sub_10003004C(v99);
          if ((v73 & 1) != (v75 & 1))
          {
            goto LABEL_53;
          }

          v69 = v74;
          v76 = v102;
          if ((v73 & 1) == 0)
          {
LABEL_39:
            v76[(v69 >> 6) + 8] |= 1 << v69;
            v77 = v99;
            v60(v76[6] + *(v89 + 72) * v69, v99, v2);
            *(v76[7] + 8 * v69) = v64;
            v78 = v77;
            v16 = v91;
            v40 = v100;
            v100(v78, v2);
            v79 = v76[2];
            v80 = __OFADD__(v79, 1);
            v81 = v79 + 1;
            if (v80)
            {
              goto LABEL_49;
            }

            v76[2] = v81;
            goto LABEL_24;
          }
        }

        v38 = v76[7];
        v39 = *(v38 + 8 * v69);
        *(v38 + 8 * v69) = v64;

        v40 = v100;
        v16 = v91;
        v100(v99, v2);
LABEL_24:
        v1 = v62;
        v41 = *&v62[v101];
        *&v62[v101] = v76;

        swift_endAccess();

        v9 = v90;
        v20 = v92;
        v30 = v98;
        v42 = v95;
LABEL_25:
        if (v42 == ++v37)
        {

          v40(v9, v2);
          goto LABEL_6;
        }
      }
    }

    (*v16)(v9, v2);
LABEL_6:

LABEL_7:
    if (++v97 == v86)
    {
      goto LABEL_45;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  sub_100041FE0();
  __break(1u);
}

void sub_100022EB4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_itemAttributes;
  swift_beginAccess();
  v11 = *&v5[v10];
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v17);
    ++v16;
    if (v14)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = *(*(v11 + 56) + ((v17 << 9) | (8 * v18)));
        [v19 frame];
        v44.origin.x = v20;
        v44.origin.y = v21;
        v44.size.width = v22;
        v44.size.height = v23;
        v42.origin.x = a1;
        v42.origin.y = a2;
        v42.size.width = a3;
        v42.size.height = a4;
        if (CGRectIntersectsRect(v42, v44))
        {
          sub_100041EF0();
          v24 = _swiftEmptyArrayStorage[2];
          sub_100041F10();
          sub_100041F20();
          sub_100041F00();
          v16 = v17;
          if (!v14)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v16 = v17;
          if (!v14)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v17 = v16;
      }
    }
  }

  v25 = [v5 collectionView];
  if (!v25)
  {
    goto LABEL_29;
  }

  v26 = v25;
  [v25 contentOffset];
  v28 = v27;

  [v5 sectionInset];
  v30 = v28 + v29;
  v31 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_headerAttributes;
  swift_beginAccess();
  v32 = *&v5[v31];
  v33 = 1 << *(v32 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v32 + 64);
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  if (v35)
  {
    goto LABEL_19;
  }

LABEL_20:
  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v38 >= v36)
    {

      sub_100024258(_swiftEmptyArrayStorage);
      return;
    }

    v35 = *(v32 + 64 + 8 * v38);
    ++v37;
    if (v35)
    {
      while (1)
      {
        v39 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v40 = *(*(v32 + 56) + ((v38 << 9) | (8 * v39)));
        [v40 frame];
        [v40 setFrame:v30];
        [v40 frame];
        v45.origin.x = a1;
        v45.origin.y = a2;
        v45.size.width = a3;
        v45.size.height = a4;
        if (CGRectIntersectsRect(v43, v45))
        {
          sub_100041EF0();
          v41 = _swiftEmptyArrayStorage[2];
          sub_100041F10();
          sub_100041F20();
          sub_100041F00();
          v37 = v38;
          if (!v35)
          {
            goto LABEL_20;
          }
        }

        else
        {

          v37 = v38;
          if (!v35)
          {
            goto LABEL_20;
          }
        }

LABEL_19:
        v38 = v37;
      }
    }
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void *sub_1000232C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_100041B20() == a1 && v6 == a2)
  {
  }

  else
  {
    v8 = sub_100041FC0();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_headerAttributes;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (!*(v10 + 16))
  {
    return 0;
  }

  v11 = sub_10003004C(a3);
  if (v12)
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    v14 = v13;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_1000234E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WideFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002359C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002D08(&qword_10005D6B8, &qword_1000469D8);
  result = sub_100041F70();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_100041FF0();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
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

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10002380C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000412F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100002D08(&qword_10005D6D8, &qword_1000469E8);
  v44 = a2;
  result = sub_100041F70();
  v13 = result;
  if (*(v10 + 16))
  {
    v48 = v6;
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v10;
    v43 = v7;
    v46 = (v7 + 32);
    v20 = result + 64;
    v21 = v45;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 48);
      v47 = *(v43 + 72);
      v28 = v27 + v47 * v26;
      if (v44)
      {
        (*v46)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      else
      {
        (*v41)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      v30 = *(v13 + 40);
      sub_100024654();
      result = sub_100041AA0();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v21 = v45;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v21 = v45;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v46)(*(v13 + 48) + v47 * v22, v21, v48);
      *(*(v13 + 56) + 8 * v22) = v29;
      ++*(v13 + 16);
      v10 = v42;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

void sub_100023BB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000412F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10003004C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100023FE4();
      goto LABEL_7;
    }

    sub_10002380C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_10003004C(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_100023D84(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_100041FE0();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_100023D84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000412F0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_100023E3C()
{
  v1 = v0;
  sub_100002D08(&qword_10005D6B8, &qword_1000469D8);
  v2 = *v0;
  v3 = sub_100041F60();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

unint64_t sub_100023F98()
{
  result = qword_10005D6C0;
  if (!qword_10005D6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005D6C0);
  }

  return result;
}

char *sub_100023FE4()
{
  v1 = v0;
  v32 = sub_1000412F0();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002D08(&qword_10005D6D8, &qword_1000469E8);
  v4 = *v0;
  v5 = sub_100041F60();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100024258(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_100041F50();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_100041F50();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100024348(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100024470(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100024348(uint64_t a1)
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
    sub_100041F50();
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
  result = sub_100041ED0();
  *v1 = result;
  return result;
}

void (*sub_1000243E8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100041EC0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100024468;
  }

  __break(1u);
  return result;
}

uint64_t sub_100024470(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100041F50();
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
      result = sub_100041F50();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000245F0();
          for (i = 0; i != v6; ++i)
          {
            sub_100002D08(&qword_10005D6C8, &qword_1000469E0);
            v9 = sub_1000243E8(v13, i, a3);
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
        sub_100023F98();
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

unint64_t sub_1000245F0()
{
  result = qword_10005D6D0;
  if (!qword_10005D6D0)
  {
    sub_1000025E8(&qword_10005D6C8, &qword_1000469E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D6D0);
  }

  return result;
}

unint64_t sub_100024654()
{
  result = qword_10005DBC0;
  if (!qword_10005DBC0)
  {
    sub_1000412F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DBC0);
  }

  return result;
}

uint64_t sub_1000246AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000246F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100024760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1000411A0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100041150();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = [a1 displayNameWithOptions:{0, v21}];
  if (!v13)
  {
    v13 = [a1 displayName];
  }

  v14 = v13;
  sub_100041B20();

  sub_100041190();
  sub_100041160();
  sub_100041800();
  v15 = sub_1000417B0();

  v22 = v15;
  sub_100021B48();
  sub_100041170();
  v16 = GKGameCenterUIFrameworkBundle();
  v20._countAndFlagsBits = 0xE000000000000000;
  v23._object = 0x8000000100043FE0;
  v23._countAndFlagsBits = 0xD000000000000020;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v17.super.isa = v16;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_100041180(v23, v24, v17, v25, v20);

  sub_100041190();
  sub_100041160();
  v22 = sub_100041800();
  sub_100041170();
  sub_100041140();
  v18 = *(v6 + 8);
  v18(v10, v5);
  return (v18)(v12, v5);
}

uint64_t sub_100024A08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v55 = a4;
  v7 = sub_100002D08(&qword_10005D6E8, &qword_100046AB8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v48 - v9;
  v11 = sub_100002D08(&qword_10005D6F0, &qword_100046AC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = sub_100002D08(&qword_10005D6F8, &qword_100046AC8);
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  v17 = __chkstk_darwin(v15);
  v52 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v56 = &v48 - v19;
  v20 = sub_1000419A0();
  v50 = *(v20 - 8);
  v21 = v50;
  v51 = v20;
  v22 = *(v50 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v48 - v26;
  v49 = &v48 - v26;
  sub_100041990();
  *v10 = sub_100041630();
  *(v10 + 1) = 0x4024000000000000;
  v10[16] = 0;
  v28 = sub_100002D08(&qword_10005D700, &qword_100046AD0);
  sub_100024EA4(a1, a2, a3, &v10[*(v28 + 44)]);
  sub_1000419E0();
  sub_100041550();
  sub_100025688(v10, v14);
  v29 = &v14[*(v11 + 36)];
  v30 = v62;
  *(v29 + 4) = v61;
  *(v29 + 5) = v30;
  *(v29 + 6) = v63;
  v31 = v58;
  *v29 = v57;
  *(v29 + 1) = v31;
  v32 = v60;
  *(v29 + 2) = v59;
  *(v29 + 3) = v32;
  v33 = swift_allocObject();
  v33[2] = a1;
  v33[3] = a2;
  v33[4] = a3;
  sub_100025744();
  v34 = a1;

  v35 = v56;
  sub_1000418A0();

  sub_10000E9F0(v14, &qword_10005D6F0, &qword_100046AC0);
  v36 = *(v21 + 16);
  v48 = v25;
  v37 = v51;
  v36(v25, v27, v51);
  v38 = v52;
  v39 = v53;
  v40 = *(v53 + 16);
  v41 = v35;
  v42 = v54;
  v40(v52, v41, v54);
  v43 = v55;
  v36(v55, v25, v37);
  v44 = &v43[*(sub_100002D08(&qword_10005D718, &qword_100046AD8) + 48)];
  v40(v44, v38, v42);
  v45 = *(v39 + 8);
  v45(v56, v42);
  v46 = *(v50 + 8);
  v46(v49, v37);
  v45(v38, v42);
  return (v46)(v48, v37);
}

uint64_t sub_100024EA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v6 = sub_100002D08(&qword_10005D720, &unk_100046AE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = sub_100002D08(&qword_10005D350, &unk_100046810);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v27 - v19;
  v21 = [a1 internal];
  sub_100041330();
  sub_1000419D0();
  sub_100041500();
  v22 = &v20[*(v14 + 44)];
  v23 = v30;
  *v22 = v29;
  *(v22 + 1) = v23;
  *(v22 + 2) = v31;
  *v12 = sub_1000416A0();
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  v24 = sub_100002D08(&qword_10005D728, &qword_100046AF0);
  sub_100025130(a1, &v12[*(v24 + 44)]);
  sub_100021B9C(v20, v18, &qword_10005D350, &unk_100046810);
  sub_100021B9C(v12, v10, &qword_10005D720, &unk_100046AE0);
  sub_100021B9C(v18, a4, &qword_10005D350, &unk_100046810);
  v25 = sub_100002D08(&qword_10005D730, &qword_100046AF8);
  sub_100021B9C(v10, a4 + *(v25 + 48), &qword_10005D720, &unk_100046AE0);
  sub_10000E9F0(v12, &qword_10005D720, &unk_100046AE0);
  sub_10000E9F0(v20, &qword_10005D350, &unk_100046810);
  sub_10000E9F0(v10, &qword_10005D720, &unk_100046AE0);
  return sub_10000E9F0(v18, &qword_10005D350, &unk_100046810);
}

uint64_t sub_100025130@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100041660();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  __chkstk_darwin(v4);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D08(&qword_10005D738, &unk_100046B00);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = &v49 - v11;
  v12 = sub_100041150();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_100024760(a1, &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100041850();
  v49 = v16;
  v50 = v15;
  v51 = v17;
  v52 = v18;
  v19 = GKGameCenterUIFrameworkBundle();
  v48._countAndFlagsBits = 0xE000000000000000;
  v63._object = 0x8000000100044010;
  v63._countAndFlagsBits = 0xD00000000000001DLL;
  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0;
  v20.super.isa = v19;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  v21 = sub_100041180(v63, v64, v20, v65, v48);
  v23 = v22;

  v58 = v21;
  v59 = v23;
  sub_1000024FC();
  v24 = sub_100041860();
  v26 = v25;
  LOBYTE(v23) = v27;
  sub_100041800();
  sub_1000417B0();

  v28 = sub_100041840();
  v30 = v29;
  v32 = v31;

  sub_100002550(v24, v26, v23 & 1);

  v58 = sub_100041900();
  v33 = sub_100041830();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_100002550(v28, v30, v32 & 1);

  v58 = v33;
  v59 = v35;
  v40 = v37 & 1;
  v60 = v37 & 1;
  v61 = v39;
  v62 = 256;
  v41 = v54;
  sub_100041650();
  sub_100002D08(&unk_10005C590, &unk_100045930);
  sub_100002564();
  v42 = v53;
  sub_1000418D0();
  (*(v56 + 8))(v41, v57);
  sub_100002550(v33, v35, v40);

  v43 = v55;
  sub_100021B9C(v42, v55, &qword_10005D738, &unk_100046B00);
  v45 = v49;
  v44 = v50;
  *a2 = v50;
  *(a2 + 8) = v45;
  LOBYTE(v24) = v51 & 1;
  *(a2 + 16) = v51 & 1;
  *(a2 + 24) = v52;
  *(a2 + 32) = 256;
  v46 = sub_100002D08(&qword_10005D740, &qword_100046B10);
  sub_100021B9C(v43, a2 + *(v46 + 48), &qword_10005D738, &unk_100046B00);
  sub_100011D44(v44, v45, v24);

  sub_10000E9F0(v42, &qword_10005D738, &unk_100046B00);
  sub_10000E9F0(v43, &qword_10005D738, &unk_100046B00);
  sub_100002550(v44, v45, v24);
}

uint64_t sub_10002557C(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = [a1 internal];
  v4 = [v3 playerID];

  v5 = sub_100041B20();
  v7 = v6;

  a2(v5, v7);
}

uint64_t sub_10002561C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = sub_100041690();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v6 = sub_100002D08(&qword_10005D6E0, &qword_100046AB0);
  return sub_100024A08(v3, v4, v5, (a1 + *(v6 + 44)));
}

uint64_t sub_100025688(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005D6E8, &qword_100046AB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000256F8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100025744()
{
  result = qword_10005D708;
  if (!qword_10005D708)
  {
    sub_1000025E8(&qword_10005D6F0, &qword_100046AC0);
    sub_100003214(&qword_10005D710, &qword_10005D6E8, &qword_100046AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D708);
  }

  return result;
}

id sub_1000258A8()
{
  v1 = *v0;
  v2 = swift_isaMask;
  *(v0 + qword_10005D758) = 0;
  *(v0 + qword_10005D760) = _swiftEmptyArrayStorage;
  v3 = qword_10005D768;
  v4 = *((v2 & v1) + 0xC8);
  *(v0 + v3) = sub_100041C40();
  *(v0 + qword_10005D770) = 0;
  *(v0 + qword_10005D778) = 100;
  v5 = *((v2 & v1) + 0xD0);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PlayerItemsModel();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_1000259AC()
{
  v1 = *(v0 + qword_10005D760);

  v2 = *(v0 + qword_10005D768);
}

id sub_1000259FC()
{
  v1 = *((swift_isaMask & *v0) + 0xC8);
  v2 = *((swift_isaMask & *v0) + 0xD0);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PlayerItemsModel();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100025A6C(uint64_t a1)
{
  v2 = *(a1 + qword_10005D760);

  v3 = *(a1 + qword_10005D768);
}

uint64_t sub_100025AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D08(qword_10005D288, qword_100046BB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100025BD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D08(qword_10005D288, qword_100046BB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FriendInviteButtonStackView()
{
  result = qword_10005D858;
  if (!qword_10005D858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100025CE0()
{
  sub_10001E38C();
  if (v0 <= 0x3F)
  {
    sub_10001E3E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100025D90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100041610();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002D08(&qword_10005D358, &qword_100047220);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100027960(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100041680();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100041CF0();
    v16 = sub_100041730();
    sub_1000413F0();

    sub_100041600();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100025F78@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v24[0] = sub_100002D08(&qword_10005D898, &qword_100046C50);
  v1 = *(*(v24[0] - 8) + 64);
  __chkstk_darwin(v24[0]);
  v3 = v24 - v2;
  v4 = sub_100002D08(&qword_10005D8A0, &qword_100046C58);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v24 - v6;
  v8 = sub_100002D08(&qword_10005D8A8, &qword_100046C60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v24 - v10;
  v12 = sub_100041680();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100025D90(v16);
  v17 = sub_100041670();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    *v11 = sub_100041690();
    *(v11 + 1) = 0x4024000000000000;
    v11[16] = 0;
    v18 = sub_100002D08(&qword_10005D8C8, &qword_100046C70);
    sub_100026C20(sub_100026388, sub_1000267D4, &v11[*(v18 + 44)]);
    v19 = &qword_10005D8A8;
    v20 = &qword_100046C60;
    sub_100021B9C(v11, v7, &qword_10005D8A8, &qword_100046C60);
    swift_storeEnumTagMultiPayload();
    sub_100003214(&qword_10005D8B8, &qword_10005D8A8, &qword_100046C60);
    sub_100003214(&qword_10005D8C0, &qword_10005D898, &qword_100046C50);
    sub_1000416D0();
    v21 = v11;
  }

  else
  {
    *v3 = sub_100041630();
    *(v3 + 1) = 0x4024000000000000;
    v3[16] = 0;
    v22 = sub_100002D08(&qword_10005D8B0, &qword_100046C68);
    sub_100026C20(sub_1000267D4, sub_100026388, &v3[*(v22 + 44)]);
    v19 = &qword_10005D898;
    v20 = &qword_100046C50;
    sub_100021B9C(v3, v7, &qword_10005D898, &qword_100046C50);
    swift_storeEnumTagMultiPayload();
    sub_100003214(&qword_10005D8B8, &qword_10005D8A8, &qword_100046C60);
    sub_100003214(&qword_10005D8C0, &qword_10005D898, &qword_100046C50);
    sub_1000416D0();
    v21 = v3;
  }

  return sub_10000E9F0(v21, v19, v20);
}

uint64_t sub_100026388@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_1000416F0();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  __chkstk_darwin(v3);
  v54 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100041540();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100002D08(&qword_10005D8E0, &qword_100046C88);
  v10 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v12 = &v50 - v11;
  v13 = sub_100002D08(&qword_10005D8E8, &qword_100046C90);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v53 = sub_100002D08(&qword_10005D8F0, &qword_100046C98);
  v18 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v20 = &v50 - v19;
  v21 = type metadata accessor for FriendInviteButtonStackView();
  v22 = (v1 + *(v21 + 20));
  v24 = *v22;
  v23 = v22[1];

  sub_100002D08(&qword_10005D8F8, &qword_100046CA0);
  sub_10002740C();
  sub_100041960();
  LODWORD(v21) = *(v2 + *(v21 + 28));
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  v27 = &v17[*(v14 + 44)];
  *v27 = KeyPath;
  v27[1] = sub_100027ABC;
  v27[2] = v26;
  v28 = *(v7 + 28);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = sub_100041640();
  v31 = &v51[v28];
  v32 = v51;
  (*(*(v30 - 8) + 104))(v31, v29, v30);
  __asm { FMOV            V0.2D, #9.0 }

  *v32 = _Q0;
  if (v21 == 1)
  {
    v38 = [objc_opt_self() systemGray2Color];
    v39 = sub_1000418E0();
  }

  else
  {
    v39 = sub_100041900();
  }

  v40 = v39;
  sub_100027688(v32, v12);
  v41 = v52;
  *&v12[*(v52 + 52)] = v40;
  *&v12[*(v41 + 56)] = 256;
  v42 = sub_1000419D0();
  v44 = v43;
  v45 = &v20[*(v53 + 36)];
  sub_1000276EC(v12, v45, &qword_10005D8E0, &qword_100046C88);
  v46 = (v45 + *(sub_100002D08(&qword_10005D938, &qword_100046D00) + 36));
  *v46 = v42;
  v46[1] = v44;
  sub_1000276EC(v17, v20, &qword_10005D8E8, &qword_100046C90);
  v47 = v54;
  sub_1000416E0();
  sub_100027754();
  sub_100011DBC();
  v48 = v57;
  sub_100041890();
  (*(v56 + 8))(v47, v48);
  return sub_1000278F0(v20);
}

uint64_t sub_1000267D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_1000416F0();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  __chkstk_darwin(v3);
  v54 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100041540();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100002D08(&qword_10005D8E0, &qword_100046C88);
  v10 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v12 = &v50 - v11;
  v13 = sub_100002D08(&qword_10005D8E8, &qword_100046C90);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v53 = sub_100002D08(&qword_10005D8F0, &qword_100046C98);
  v18 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v20 = &v50 - v19;
  v21 = type metadata accessor for FriendInviteButtonStackView();
  v22 = (v1 + *(v21 + 24));
  v24 = *v22;
  v23 = v22[1];

  sub_100002D08(&qword_10005D8F8, &qword_100046CA0);
  sub_10002740C();
  sub_100041960();
  LODWORD(v21) = *(v2 + *(v21 + 28));
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  v27 = &v17[*(v14 + 44)];
  *v27 = KeyPath;
  v27[1] = sub_100027670;
  v27[2] = v26;
  v28 = *(v7 + 28);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = sub_100041640();
  v31 = &v51[v28];
  v32 = v51;
  (*(*(v30 - 8) + 104))(v31, v29, v30);
  __asm { FMOV            V0.2D, #9.0 }

  *v32 = _Q0;
  if (v21 == 1)
  {
    v38 = [objc_opt_self() systemGray2Color];
    v39 = sub_1000418E0();
  }

  else
  {
    v39 = sub_100041910();
  }

  v40 = v39;
  sub_100027688(v32, v12);
  v41 = v52;
  *&v12[*(v52 + 52)] = v40;
  *&v12[*(v41 + 56)] = 256;
  v42 = sub_1000419D0();
  v44 = v43;
  v45 = &v20[*(v53 + 36)];
  sub_1000276EC(v12, v45, &qword_10005D8E0, &qword_100046C88);
  v46 = (v45 + *(sub_100002D08(&qword_10005D938, &qword_100046D00) + 36));
  *v46 = v42;
  v46[1] = v44;
  sub_1000276EC(v17, v20, &qword_10005D8E8, &qword_100046C90);
  v47 = v54;
  sub_1000416E0();
  sub_100027754();
  sub_100011DBC();
  v48 = v57;
  sub_100041890();
  (*(v56 + 8))(v47, v48);
  return sub_1000278F0(v20);
}

uint64_t sub_100026C20@<X0>(uint64_t (*a1)(uint64_t)@<X1>, void (*a2)(uint64_t)@<X2>, char *a3@<X8>)
{
  v6 = sub_100002D08(&qword_10005D8D0, &qword_100046C78);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v26 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v26 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v26 - v19;
  v21 = a1(v18);
  a2(v21);
  v22 = v7[2];
  v22(v14, v20, v6);
  v22(v11, v17, v6);
  v22(a3, v14, v6);
  v23 = sub_100002D08(&qword_10005D8D8, &qword_100046C80);
  v22(&a3[*(v23 + 48)], v11, v6);
  v24 = v7[1];
  v24(v17, v6);
  v24(v20, v6);
  v24(v11, v6);
  return (v24)(v14, v6);
}

double sub_100026E40@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100041310();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = GKGameCenterUIFrameworkBundle();
  v36._countAndFlagsBits = 0xE000000000000000;
  v51._countAndFlagsBits = 0x45524F4E4749;
  v51._object = 0xE600000000000000;
  v52.value._countAndFlagsBits = 0;
  v52.value._object = 0;
  v8.super.isa = v7;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v9 = sub_100041180(v51, v52, v8, v53, v36);
  v11 = v10;

  *&v42 = v9;
  *(&v42 + 1) = v11;
  sub_1000024FC();
  v41 = sub_100041860();
  v40 = v12;
  LOBYTE(v9) = v13;
  v39 = v14;
  v38 = sub_100041780();
  v15 = enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:);
  v16 = v3[13];
  v16(v6, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v2);
  sub_100041300();
  v17 = v3[1];
  v17(v6, v2);
  sub_1000414B0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v9 & 1;
  v50 = v26;
  v49 = 0;
  sub_100041790();
  v37 = sub_1000417B0();

  KeyPath = swift_getKeyPath();
  v16(v6, v15, v2);
  LOBYTE(v15) = sub_100041300();
  v17(v6, v2);
  if (v15)
  {
    v28 = sub_100041900();
  }

  else
  {
    v28 = sub_1000418F0();
  }

  v29 = v28;
  sub_1000419D0();
  sub_100041550();
  v30 = v40;
  *a1 = v41;
  *(a1 + 8) = v30;
  *(a1 + 16) = v26;
  *(a1 + 24) = v39;
  *(a1 + 32) = v38;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  *(a1 + 56) = v23;
  *(a1 + 64) = v25;
  *(a1 + 72) = 0;
  v31 = v37;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v31;
  *(a1 + 96) = v29;
  v32 = v44;
  *(a1 + 152) = v45;
  v33 = v47;
  *(a1 + 168) = v46;
  *(a1 + 184) = v33;
  *(a1 + 200) = v48;
  result = *&v42;
  v35 = v43;
  *(a1 + 104) = v42;
  *(a1 + 120) = v35;
  *(a1 + 136) = v32;
  return result;
}

double sub_100027160@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100041310();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = GKGameCenterUIFrameworkBundle();
  v36._countAndFlagsBits = 0xE000000000000000;
  v47._countAndFlagsBits = 0x545045434341;
  v47._object = 0xE600000000000000;
  v48.value._countAndFlagsBits = 0;
  v48.value._object = 0;
  v8.super.isa = v7;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v9 = sub_100041180(v47, v48, v8, v49, v36);
  v11 = v10;

  *&v38 = v9;
  *(&v38 + 1) = v11;
  sub_1000024FC();
  v12 = sub_100041860();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_100041780();
  (*(v3 + 104))(v6, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v2);
  sub_100041300();
  (*(v3 + 8))(v6, v2);
  sub_1000414B0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v16 & 1;
  v46 = v16 & 1;
  v45 = 0;
  sub_100041790();
  v29 = sub_1000417B0();

  KeyPath = swift_getKeyPath();
  v31 = sub_100041910();
  sub_1000419D0();
  sub_100041550();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v28;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v21;
  *(a1 + 48) = v23;
  *(a1 + 56) = v25;
  *(a1 + 64) = v27;
  *(a1 + 72) = 0;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v29;
  *(a1 + 96) = v31;
  v32 = v40;
  *(a1 + 152) = v41;
  v33 = v43;
  *(a1 + 168) = v42;
  *(a1 + 184) = v33;
  *(a1 + 200) = v44;
  result = *&v38;
  v35 = v39;
  *(a1 + 104) = v38;
  *(a1 + 120) = v35;
  *(a1 + 136) = v32;
  return result;
}

unint64_t sub_10002740C()
{
  result = qword_10005D900;
  if (!qword_10005D900)
  {
    sub_1000025E8(&qword_10005D8F8, &qword_100046CA0);
    sub_100027498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D900);
  }

  return result;
}

unint64_t sub_100027498()
{
  result = qword_10005D908;
  if (!qword_10005D908)
  {
    sub_1000025E8(&qword_10005D910, &qword_100046CA8);
    sub_100027550();
    sub_100003214(&qword_10005D928, &qword_10005D930, &qword_100046CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D908);
  }

  return result;
}

unint64_t sub_100027550()
{
  result = qword_10005D918;
  if (!qword_10005D918)
  {
    sub_1000025E8(&qword_10005D920, &unk_100046CB0);
    sub_100003190();
    sub_100003214(&qword_10005D3E0, &qword_10005D3E8, &qword_100046CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D918);
  }

  return result;
}

uint64_t sub_100027608@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000415E0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100027688(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041540();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000276EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002D08(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100027754()
{
  result = qword_10005D940;
  if (!qword_10005D940)
  {
    sub_1000025E8(&qword_10005D8F0, &qword_100046C98);
    sub_10002780C();
    sub_100003214(&qword_10005D970, &qword_10005D938, &qword_100046D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D940);
  }

  return result;
}

unint64_t sub_10002780C()
{
  result = qword_10005D948;
  if (!qword_10005D948)
  {
    sub_1000025E8(&qword_10005D8E8, &qword_100046C90);
    sub_100003214(&qword_10005D950, &qword_10005D958, &qword_100046D08);
    sub_100003214(&qword_10005D960, &qword_10005D968, &qword_100046D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D948);
  }

  return result;
}

uint64_t sub_1000278F0(uint64_t a1)
{
  v2 = sub_100002D08(&qword_10005D8F0, &qword_100046C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027960(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005D358, &qword_100047220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000279D4()
{
  result = qword_10005D978;
  if (!qword_10005D978)
  {
    sub_1000025E8(&qword_10005D980, qword_100046D50);
    sub_100003214(&qword_10005D8B8, &qword_10005D8A8, &qword_100046C60);
    sub_100003214(&qword_10005D8C0, &qword_10005D898, &qword_100046C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D978);
  }

  return result;
}

uint64_t sub_100027AC0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100041A10();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100041A30();
  v9 = *(v20 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v2[OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadQueue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_100028C70;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012BD4;
  aBlock[3] = &unk_100056EE0;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v17 = v2;

  sub_100041A20();
  v22 = _swiftEmptyArrayStorage;
  sub_100028C94(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D08(&qword_10005CA20, qword_100045D00);
  sub_100028CDC(&qword_10005CA28, &qword_10005CA20, qword_100045D00);
  sub_100041E60();
  sub_100041D60();
  _Block_release(v15);

  (*(v21 + 8))(v8, v5);
  (*(v9 + 8))(v12, v20);
}

void sub_100027D9C()
{
  sub_100041EB0(62);
  swift_getObjectType();
  sub_100002D08(&qword_10005D9D0, &qword_100046E38);
  v0._countAndFlagsBits = sub_100041B40();
  sub_100041B80(v0);

  v1._object = 0x8000000100044DE0;
  v1._countAndFlagsBits = 0xD00000000000003CLL;
  sub_100041B80(v1);
  sub_100041F40();
  __break(1u);
}

void sub_100027E68(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (a1[OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadingState] - 1 >= 2)
  {
    a1[OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadingState] = 1;
    v9 = *&a1[OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadGroup];
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = a3;
    v17 = sub_100028D94;
    v18 = v11;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_100016ECC;
    v16 = &unk_100056F80;
    v7 = _Block_copy(&v13);
    v8 = v9;
    v12 = a1;

    [v8 perform:v7];
  }

  else
  {
    v5 = *&a1[OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadGroup];
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v17 = sub_100028D68;
    v18 = v6;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_100012BD4;
    v16 = &unk_100056F30;
    v7 = _Block_copy(&v13);

    v8 = v5;

    [v8 notifyOnMainQueueWithBlock:v7];
  }

  _Block_release(v7);
}

uint64_t sub_100028048(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v10[6] = a2;
  v11 = *((swift_isaMask & *a3) + 0xB8);
  v12 = a3;

  v11(sub_100028DE8, v10);
}

uint64_t sub_10002812C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v11 = sub_100041A10();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100041A30();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v26);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&a2[OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadQueue];
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a1;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = v25;
  v20[7] = a6;
  aBlock[4] = sub_100028E48;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012BD4;
  aBlock[3] = &unk_100056FF8;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  v23 = a2;
  swift_errorRetain();

  sub_100041A20();
  v28 = _swiftEmptyArrayStorage;
  sub_100028C94(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D08(&qword_10005CA20, qword_100045D00);
  sub_100028CDC(&qword_10005CA28, &qword_10005CA20, qword_100045D00);
  sub_100041E60();
  sub_100041D60();
  _Block_release(v21);

  (*(v27 + 8))(v14, v11);
  (*(v15 + 8))(v18, v26);
}

uint64_t sub_100028430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v26 = a6;
  v27 = a5;
  v10 = sub_100041A10();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100041A30();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v24);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  *(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadingState) = v18;
  sub_100028C20();
  v19 = sub_100041D50();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a2;
  aBlock[4] = sub_100028E98;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012BD4;
  aBlock[3] = &unk_100057048;
  v21 = _Block_copy(aBlock);

  swift_errorRetain();

  sub_100041A20();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100028C94(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D08(&qword_10005CA20, qword_100045D00);
  sub_100028CDC(&qword_10005CA28, &qword_10005CA20, qword_100045D00);
  sub_100041E60();
  sub_100041D60();
  _Block_release(v21);

  (*(v25 + 8))(v13, v10);
  v22 = (*(v14 + 8))(v17, v24);
  return v27(v22);
}

id sub_100028744()
{
  v1 = sub_100041D40();
  v20 = *(v1 - 8);
  v21 = v1;
  v2 = *(v20 + 64);
  __chkstk_darwin(v1);
  v19 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100041D10();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_100041A30();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadingState) = 0;
  v17 = OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadQueue;
  v16[1] = sub_100028C20();
  v24 = 0x7565755164616F6CLL;
  v25 = 0xEB000000003C2065;
  v16[0] = sub_100002D08(&qword_10005D9D8, &qword_100046E40);
  v23 = v16[0];
  sub_100002D08(&qword_10005D9E0, &qword_100046E48);
  v26._countAndFlagsBits = sub_100041B40();
  sub_100041B80(v26);

  v27._countAndFlagsBits = 62;
  v27._object = 0xE100000000000000;
  sub_100041B80(v27);
  sub_100041A20();
  v24 = _swiftEmptyArrayStorage;
  sub_100028C94(&qword_10005D9E8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002D08(&qword_10005D9F0, qword_100046E50);
  sub_100028CDC(&qword_10005D9F8, &qword_10005D9F0, qword_100046E50);
  sub_100041E60();
  (*(v20 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  v8 = sub_100041D70();
  v9 = v18;
  *&v18[v17] = v8;
  v10 = OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadGroup;
  v24 = 0x756F724764616F6CLL;
  v25 = 0xEB000000003C2070;
  v23 = v16[0];
  v28._countAndFlagsBits = sub_100041B40();
  sub_100041B80(v28);

  v29._countAndFlagsBits = 62;
  v29._object = 0xE100000000000000;
  sub_100041B80(v29);
  v11 = objc_allocWithZone(GKDispatchGroup);
  v12 = sub_100041AF0();

  v13 = [v11 initWithName:v12];

  *&v9[v10] = v13;
  v14 = type metadata accessor for LoadableModel();
  v22.receiver = v9;
  v22.super_class = v14;
  return objc_msgSendSuper2(&v22, "init");
}

id sub_100028B14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoadableModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100028BCC()
{
  result = qword_10005D9C8;
  if (!qword_10005D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D9C8);
  }

  return result;
}

unint64_t sub_100028C20()
{
  result = qword_10005CA10;
  if (!qword_10005CA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CA10);
  }

  return result;
}

uint64_t sub_100028C7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100028C94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100028CDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000025E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100028D30()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100028D68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_100028DA0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100028DF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100028E58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100028EEC()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();
  v6 = v0;
  v7 = sub_100041400();
  v8 = sub_100041CC0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%@ user interface is ready for display", v9, 0xCu);
    sub_10000E9F0(v10, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v2 + 8))(v5, v1);
  return [v6 setReadyForDisplay];
}

uint64_t sub_100029094()
{
  v1 = v0;
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 activeConversation];
  if (v7)
  {
    v8 = v7;
    v9 = *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
    if (v9)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = v1;
      *(v10 + 24) = v8;
      v11 = v9;
      v12 = v1;
      v13 = v8;
      sub_100027AC0(sub_10003373C, v10);
    }
  }

  sub_1000413D0();
  v15 = v1;
  v16 = sub_100041400();
  v17 = sub_100041CE0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "%@ Expected a conversation and a playerModel", v18, 0xCu);
    sub_10000E9F0(v19, &unk_10005CA00, &unk_100045CF0);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1000292E4()
{
  v1 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v22 - v3;
  v5 = [objc_opt_self() local];
  v6 = [v5 internal];
  v7 = [v6 playerID];

  v8 = sub_100041B20();
  v10 = v9;

  qword_10005FF58 = v8;
  qword_10005FF60 = v10;

  v11 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
    swift_beginAccess();
    v13 = *(v11 + v12);
  }

  else
  {
    v14 = 0;
  }

  qword_10005FF68 = v14;

  v15 = [objc_opt_self() defaultWorkspace];
  if (v15)
  {
    v16 = v15;
    sub_1000411F0();
    v17 = sub_100041200();
    v18 = *(v17 - 8);
    v20 = 0;
    if ((*(v18 + 48))(v4, 1, v17) != 1)
    {
      sub_1000411D0(v19);
      v20 = v21;
      (*(v18 + 8))(v4, v17);
    }

    [v16 openURL:v20];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100029528(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  a4(0);
  sub_100002D08(a5, a6);
  v9 = sub_100041B40();
  v11 = v10;
  v12 = sub_100041AF0();
  v13 = [objc_opt_self() storyboardWithName:v12 bundle:a3];

  v14 = sub_100041AF0();
  v15 = [v13 instantiateViewControllerWithIdentifier:v14];

  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;

    return v17;
  }

  else
  {

    v19._countAndFlagsBits = v9;
    v19._object = v11;
    sub_100041B80(v19);
    result = sub_100041F40();
    __break(1u);
  }

  return result;
}

void sub_100029704()
{
  v1 = type metadata accessor for FriendInviteCardView();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = &v0[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight];
  if (v0[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight + 8])
  {
    v6 = [objc_opt_self() local];
    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v25.origin.x = v10;
      v25.origin.y = v12;
      v25.size.width = v14;
      v25.size.height = v16;
      CGRectGetWidth(v25);
      sub_100040584(v6, 0, 0);
      *v4 = swift_getKeyPath();
      sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
      swift_storeEnumTagMultiPayload();
      v17 = (v4 + *(v1 + 20));
      type metadata accessor for FriendInviteCardViewModel();
      sub_100033620(&qword_10005DAD8, type metadata accessor for FriendInviteCardViewModel);
      *v17 = sub_100041510();
      v17[1] = v18;
      v19 = objc_allocWithZone(sub_100002D08(&qword_10005DAE0, &qword_100046EE0));
      v20 = sub_1000416C0();
      sub_1000416B0();
      v22 = v21;

      *v5 = v22;
      v5[8] = 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v23 = *v5;
  }
}

uint64_t sub_10002991C()
{
  v0 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  sub_1000333D8(v0, qword_10005DA00);
  v1 = sub_100033330(v0, qword_10005DA00);
  v2 = sub_100041200();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

id sub_1000299BC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_inviteCardResizingObserver] = 0;
  v7 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState];
  *v8 = [objc_opt_self() local];
  *(v8 + 1) = 0;
  v8[16] = 0;
  if (a2)
  {
    v9 = sub_100041AF0();
  }

  else
  {
    v9 = 0;
  }

  v14.receiver = v3;
  v14.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v9, a3);

  v11 = objc_opt_self();
  v12 = v10;
  [v11 setForCurrentProcess];

  return v12;
}

id sub_100029B48(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel] = 0;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_inviteCardResizingObserver] = 0;
  v4 = &v1[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState];
  *v5 = [objc_opt_self() local];
  *(v5 + 1) = 0;
  v5[16] = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = v6;
    [v7 setForCurrentProcess];
  }

  return v6;
}

void sub_100029C64(void *a1)
{
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "willBecomeActiveWithConversation:", a1);
  if (!_UISolariumEnabled())
  {
    goto LABEL_4;
  }

  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

LABEL_4:
    v6 = [objc_opt_self() defaultCenter];
    [v6 addObserver:v1 selector:"updateCard:" name:GKPlayerAuthenticationDidChangeNotificationName object:0];

    v7 = objc_opt_self();
    v8 = sub_100041AF0();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = a1;
    v13[4] = sub_1000337D4;
    v13[5] = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100012BD4;
    v13[3] = &unk_100057490;
    v10 = _Block_copy(v13);
    v11 = v1;
    v12 = a1;

    [v7 named:v8 execute:v10];
    _Block_release(v10);

    return;
  }

  __break(1u);
}

uint64_t sub_100029E5C(void *a1, void *a2)
{
  type metadata accessor for LocalPlayerAuthenticator();
  inited = swift_initStaticObject();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = inited;
  v5[4] = a2;
  v6 = a1;
  v7 = a2;
  sub_100011F64(sub_100033824);
}

void sub_100029EFC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  v9 = sub_100041410();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  if (!a2)
  {
    if (*(a4 + 16) == 2)
    {
      sub_1000413E0();
      v29 = a3;
      v30 = sub_100041400();
      v31 = sub_100041CC0();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v29;
        *v33 = v29;
        v34 = v29;
        _os_log_impl(&_mh_execute_header, v30, v31, "%@ willBecomeActive - authentication succeed.", v32, 0xCu);
        sub_10000E9F0(v33, &unk_10005CA00, &unk_100045CF0);
      }

      (*(v10 + 8))(v14, v9);
      v35 = sub_10001AFBC(a5);
      v36 = *&v29[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
      *&v29[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel] = v35;
    }

    else
    {
      if (byte_10005C528 != 3)
      {
        goto LABEL_12;
      }

      v37 = sub_10001AFBC(a5);
      v36 = *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
      *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel] = v37;
    }

    goto LABEL_12;
  }

  sub_1000413D0();
  v17 = a3;
  swift_errorRetain();
  v18 = sub_100041400();
  v19 = sub_100041CE0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v39 = a5;
    v40 = a2;
    v24 = v23;
    v41 = v23;
    *v20 = 138412546;
    *(v20 + 4) = v17;
    *v22 = v17;
    *(v20 + 12) = 2080;
    v25 = v17;
    swift_errorRetain();
    sub_100002D08(&unk_10005CF10, &qword_100047670);
    v26 = sub_100041B40();
    v28 = sub_10003FBD0(v26, v27, &v41);

    *(v20 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "%@ willBecomeActive - authentication failed with error: %s", v20, 0x16u);
    sub_10000E9F0(v22, &unk_10005CA00, &unk_100045CF0);

    sub_10000E8A8(v24);
    a5 = v39;

    (*(v10 + 8))(v16, v38);
  }

  else
  {

    (*(v10 + 8))(v16, v9);
  }

LABEL_12:
  sub_10002A2E4(a5, [a3 presentationStyle]);
}

void sub_10002A2E4(void *a1, uint64_t a2)
{
  v3 = v2;
  v62 = a1;
  v5 = sub_100041310();
  v63 = *(v5 - 8);
  v6 = *(v63 + 64);
  __chkstk_darwin(v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100041410();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v60 - v16;
  __chkstk_darwin(v15);
  v19 = &v60 - v18;
  if (sub_10002C790())
  {
    sub_10002B2C8();
  }

  if (byte_10005C528 == 2)
  {
    if (a2)
    {
      sub_1000413E0();
      v20 = v2;
      v21 = sub_100041400();
      v22 = sub_100041CC0();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v61 = v9;
        v25 = v24;
        *v23 = 138412290;
        *(v23 + 4) = v20;
        *v24 = v20;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v21, v22, "%@ local player was authenticated instantiating FriendRequestCardViewController.", v23, 0xCu);
        sub_10000E9F0(v25, &unk_10005CA00, &unk_100045CF0);
        v9 = v61;
      }

      (*(v10 + 8))(v14, v9);
      v27 = v63;
      (*(v63 + 104))(v8, enum case for GKFeatureFlags.FriendInviteCardRewrite(_:), v5);
      v28 = sub_100041300();
      (*(v27 + 8))(v8, v5);
      if (v28)
      {
        v29 = sub_10002C8BC(v62);
      }

      else
      {
        v29 = sub_10003194C();
      }
    }

    else
    {
      v37 = v9;
      sub_1000413E0();
      v38 = v2;
      v39 = sub_100041400();
      v40 = sub_100041CC0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        *(v41 + 4) = v38;
        *v42 = v38;
        v43 = v38;
        _os_log_impl(&_mh_execute_header, v39, v40, "%@ local player was authenticated presentation style was compact so instantiating MessageActionsViewController.", v41, 0xCu);
        sub_10000E9F0(v42, &unk_10005CA00, &unk_100045CF0);
      }

      (*(v10 + 8))(v17, v37);
      v44 = sub_100029528(0x65746E496E69614DLL, 0xED00006563616672, 0, type metadata accessor for MessageActionsViewController, &qword_10005DB00, &qword_100046F50);
      v45 = (v44 + OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_delegate);
      v46 = *(v44 + OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_delegate);
      *v45 = v38;
      v45[1] = &off_100057070;
      v47 = v38;
      swift_unknownObjectRelease();
      v29 = v44;
    }
  }

  else
  {
    v30 = v9;
    sub_1000413E0();
    v31 = v2;
    v32 = sub_100041400();
    v33 = sub_100041CC0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "%@ local player was not authenticated instantiating actions VC.", v34, 0xCu);
      sub_10000E9F0(v35, &unk_10005CA00, &unk_100045CF0);
    }

    (*(v10 + 8))(v19, v30);
    v29 = sub_100029528(0x65746E496E69614DLL, 0xED00006563616672, 0, type metadata accessor for ActionViewController, &unk_10005DBB0, &qword_100046FB0);
  }

  v48 = v29;
  [v3 addChildViewController:v48];
  v49 = [v48 view];

  if (!v49)
  {
    __break(1u);
    goto LABEL_24;
  }

  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (!_UISolariumEnabled())
  {
LABEL_20:
    v53 = [v3 view];
    if (v53)
    {
      v54 = v53;
      v55 = [v48 view];
      if (v55)
      {
        v56 = v55;
        [v54 addSubview:v55];

        v57 = objc_opt_self();
        v58 = [v48 view];
        v59 = [v3 view];
        [v57 _gkInstallEdgeConstraintsForView:v58 containedWithinParentView:v59];

        [v48 didMoveToParentViewController:v3];
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

  v50 = [v48 view];
  if (v50)
  {
    v51 = v50;
    v52 = [objc_opt_self() clearColor];
    [v51 setBackgroundColor:v52];

    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
}

void sub_10002AA90(void *a1, void *a2)
{
  v4 = [a1 CGContext];
  v5 = [a1 format];
  CGContextSetAlpha(v4, 0.6);
  CGContextSetBlendMode(v4, kCGBlendModeNormal);
  if ([a2 presentationStyle] == 2)
  {
    v6 = [a2 view];
    if (!v6)
    {
LABEL_9:
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = [v6 layer];

    [v8 renderInContext:v4];
  }

  v9 = [objc_opt_self() currentTraitCollection];
  [v9 userInterfaceStyle];

  v10 = [objc_opt_self() _dimmingViewColor];
  if (!v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v10;
  v11 = [v10 CGColor];
  CGContextSetFillColorWithColor(v4, v11);

  CGContextSetAlpha(v4, 1.0);
  [v5 bounds];
  [a1 fillRect:0 blendMode:?];
}

void sub_10002AC64(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_10002AD1C(void *a1)
{
  type metadata accessor for LocalPlayerAuthenticator();
  inited = swift_initStaticObject();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = inited;
  v4 = a1;
  sub_100011F64(sub_10003378C);
}

void sub_10002ADAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_100041410();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = &unk_10005A000;
  if (a2)
  {
    sub_1000413D0();
    v16 = a3;
    swift_errorRetain();
    v17 = sub_100041400();
    v18 = sub_100041CE0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40 = v7;
      v41 = a2;
      v22 = v21;
      v42 = v21;
      *v19 = 138412546;
      *(v19 + 4) = v16;
      *v20 = v16;
      *(v19 + 12) = 2080;
      v23 = v16;
      swift_errorRetain();
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v24 = sub_100041B40();
      v26 = sub_10003FBD0(v24, v25, &v42);

      *(v19 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "%@ updating the card authentication failed with error: %s", v19, 0x16u);
      sub_10000E9F0(v20, &unk_10005CA00, &unk_100045CF0);
      v15 = &unk_10005A000;

      sub_10000E8A8(v22);

      (*(v8 + 8))(v14, v40);
    }

    else
    {

      (*(v8 + 8))(v14, v7);
    }
  }

  else if (*(a4 + 16) == 2)
  {
    sub_1000413E0();
    v27 = a3;
    v28 = sub_100041400();
    v29 = sub_100041CC0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v7;
      v32 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v32 = v27;
      v33 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "%@ updating the card authentication succeed.", v30, 0xCu);
      sub_10000E9F0(v32, &unk_10005CA00, &unk_100045CF0);
      v7 = v31;
    }

    (*(v8 + 8))(v12, v7);
    v34 = [v27 activeConversation];
    if (!v34)
    {
      __break(1u);
      return;
    }

    v35 = sub_10001AFBC(v34);
    v36 = *&v27[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
    *&v27[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel] = v35;
  }

  v37 = [a3 v15[197]];
  if (v37)
  {
    v38 = v37;
    sub_10002A2E4(v37, [a3 presentationStyle]);
  }
}

id sub_10002B2C8()
{
  v1 = [v0 childViewControllers];
  sub_10000EA78(0, &qword_10005DAF8, UIViewController_ptr);
  v2 = sub_100041C20();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
  }

LABEL_14:
  v3 = sub_100041F50();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_100041EC0();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v5 willMoveToParentViewController:0];
    result = [v6 view];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result removeFromSuperview];

    [v6 removeFromParentViewController];
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_10002B4A8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100041410();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "didTransitionToPresentationStyle:", a1);
  v10 = [v2 activeConversation];
  if (v10)
  {
    v11 = v10;
    sub_10002A2E4(v10, a1);
  }

  else
  {
    sub_1000413D0();
    v12 = v2;
    v13 = sub_100041400();
    v14 = sub_100041CE0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "%@ didTransition: Expected an active conversation", v15, 0xCu);
      sub_10000E9F0(v16, &unk_10005CA00, &unk_100045CF0);
    }

    (*(v6 + 8))(v9, v5);
  }
}

double sub_10002B810(double a1)
{
  v2 = v1;
  v30 = sub_100041410();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v30);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FriendInviteCardView();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 300.0)
  {
    a1 = 300.0;
  }

  v13 = *&v2[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState];
  v14 = *&v2[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState + 8];
  v15 = v2[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState + 16];
  sub_10003347C(v13, v14, v2[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState + 16]);
  sub_100040584(v13, v14, v15);
  *v12 = swift_getKeyPath();
  sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
  swift_storeEnumTagMultiPayload();
  v16 = (v12 + *(v9 + 28));
  type metadata accessor for FriendInviteCardViewModel();
  sub_100033620(&qword_10005DAD8, type metadata accessor for FriendInviteCardViewModel);
  *v16 = sub_100041510();
  v16[1] = v17;
  v18 = objc_allocWithZone(sub_100002D08(&qword_10005DAE0, &qword_100046EE0));
  v19 = sub_1000416C0();
  sub_1000416B0();
  v21 = v20;
  sub_1000334F0(v13, v14, v15);

  sub_1000413E0();
  v22 = v2;
  v23 = sub_100041400();
  v24 = sub_100041CC0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412546;
    *(v25 + 4) = v22;
    *v26 = v22;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v21;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "%@ Provide an inviteCardHeight size for our MSMessages Live Bubble View, %f", v25, 0x16u);
    sub_10000E9F0(v26, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v4 + 8))(v7, v30);
  return a1;
}

uint64_t sub_10002BB98(uint64_t a1, void *a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  if (a1)
  {
    sub_1000413D0();
    v12 = a2;
    swift_errorRetain();
    v13 = sub_100041400();
    v14 = sub_100041CE0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = a1;
      v31 = v17;
      *v15 = 138412546;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2080;
      v18 = v12;
      swift_errorRetain();
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v19 = sub_100041B40();
      v21 = sub_10003FBD0(v19, v20, &v31);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "%@ didCancelSending - cancelFriendRequest error: %s", v15, 0x16u);
      sub_10000E9F0(v16, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v17);
    }

    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    v23 = [objc_allocWithZone(GKReporter) init];
    [v23 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestCancelled];

    sub_1000413E0();
    v24 = a2;
    v25 = sub_100041400();
    v26 = sub_100041CC0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "%@ didCancelSending - cancelFriendRequest succeed", v27, 0xCu);
      sub_10000E9F0(v28, &unk_10005CA00, &unk_100045CF0);
    }

    return (*(v5 + 8))(v11, v4);
  }
}

uint64_t sub_10002BF7C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100041410();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_1000413D0();
    swift_errorRetain();

    v12 = sub_100041400();
    v13 = sub_100041CE0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v18 = a2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v15 = 136315650;
      *(v15 + 4) = sub_10003FBD0(0xD000000000000020, 0x8000000100045080, &v19);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_10003FBD0(v18, a3, &v19);
      *(v15 + 22) = 2112;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s - Error adding %s to the deny list. Error: %@", v15, 0x20u);
      sub_10000E9F0(v16, &unk_10005CA00, &unk_100045CF0);

      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_10002C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100041C70();
  v5[7] = sub_100041C60();
  v7 = sub_100041C50();

  return _swift_task_switch(sub_10002C4B0, v7, v6);
}

uint64_t sub_10002C4B0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  *(v0 + 64) = _Block_copy(v3);
  if (v2)
  {
    v4 = *(v0 + 32);
    sub_100041B20();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 72) = v5;
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 16);
  v9 = v7;
  v10 = v6;
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_10002C5AC;
  v12 = *(v0 + 48);
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);

  return sub_100032B10(v14, v13);
}

uint64_t sub_10002C5AC(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 72);
  v9 = *(*v3 + 48);
  v10 = *(*v3 + 24);
  v11 = *(*v3 + 16);
  v12 = *v3;

  if (a3)
  {

    v13 = sub_100041AF0();
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v6 + 64);
  (v14)[2](v14, a1 & 1, v13);

  _Block_release(v14);

  v15 = *(v12 + 8);

  return v15();
}

uint64_t sub_10002C790()
{
  v1 = [v0 childViewControllers];
  sub_10000EA78(0, &qword_10005DAF8, UIViewController_ptr);
  v2 = sub_100041C20();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = sub_100041F50();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = sub_100041EC0();
LABEL_6:
    v5 = v4;

    v6 = [v5 presentedViewController];

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
LABEL_12:
        v8 = v7 == 0;

        return v8;
      }
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C8BC(void *a1)
{
  v96 = a1;
  v2 = sub_100002D08(&qword_10005DB08, &qword_100046F58);
  v3 = *(v2 - 8);
  v111 = v2;
  v112 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v109 = v90 - v5;
  v6 = sub_100002D08(&qword_10005DB10, &qword_100046F60);
  v7 = *(v6 - 8);
  v113 = v6;
  v114 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v110 = v90 - v9;
  v10 = sub_100002D08(&qword_10005DB18, &qword_100046F68);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v107 = v90 - v12;
  v13 = sub_100002D08(&qword_10005DB20, &qword_100046F70);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v103 = v90 - v15;
  v101 = sub_100041E00();
  v122 = *(v101 - 8);
  v16 = *(v122 + 64);
  __chkstk_darwin(v101);
  v100 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002D08(&qword_10005DB28, &qword_100046F78);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v119 = v90 - v20;
  v97 = sub_100041D80();
  v99 = *(v97 - 8);
  v21 = v99[8];
  __chkstk_darwin(v97);
  v95 = v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100002D08(&qword_10005DB30, &qword_100046F80);
  v105 = *(v104 - 8);
  v23 = *(v105 + 64);
  __chkstk_darwin(v104);
  v120 = v90 - v24;
  v106 = sub_100002D08(&qword_10005DB38, &qword_100046F88);
  v108 = *(v106 - 8);
  v25 = *(v108 + 64);
  __chkstk_darwin(v106);
  v121 = v90 - v26;
  v94 = sub_100002D08(&qword_10005DB40, &qword_100046F90);
  v27 = *(v94 - 1);
  v28 = *(v27 + 64);
  __chkstk_darwin(v94);
  v30 = v90 - v29;
  v31 = sub_100002D08(&unk_10005DB48, &qword_100046F98);
  v98 = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = v90 - v34;
  v36 = *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  v38 = swift_allocObject();
  v118 = v38;
  *(v38 + 16) = sub_100033564;
  *(v38 + 24) = v37;
  v117 = swift_allocObject();
  *(v117 + 16) = v1;
  v116 = swift_allocObject();
  *(v116 + 16) = v1;
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v115 = swift_allocObject();
  *(v115 + 16) = v1;
  v40 = type metadata accessor for FriendInviteCardViewModel();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v44 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel__state;
  v123 = 0;
  v124 = 0;
  v125 = 9;
  v92 = v36;

  v102 = v1;
  sub_100041430();
  (*(v32 + 32))(v43 + v44, v35, v31);
  v45 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel__isProcessingAction;
  LOBYTE(v123) = 0;
  sub_100041430();
  (*(v27 + 32))(v43 + v45, v30, v94);
  v46 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_playerModel;
  *(v43 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_isViewRecordSent) = 0;
  *(v43 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_refreshObserver) = 0;
  *(v43 + v46) = v36;
  v47 = v96;
  *(v43 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation) = v96;
  v48 = (v43 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentProfile);
  v50 = v117;
  v49 = v118;
  *v48 = sub_100033568;
  v48[1] = v49;
  v51 = (v43 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentFriendsList);
  *v51 = sub_100033590;
  v51[1] = v50;
  v52 = (v43 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onAcceptInvite);
  v53 = v116;
  *v52 = sub_1000335B4;
  v52[1] = v53;
  v54 = (v43 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
  *v54 = sub_100033610;
  v54[1] = v39;
  v93 = v39;
  v55 = (v43 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onMessageUrlCreated);
  *v55 = sub_1000338D4;
  v55[1] = 0;
  v56 = (v43 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
  v57 = v115;
  *v56 = sub_100033618;
  v56[1] = v57;
  v94 = v92;
  v58 = v47;

  sub_10003D788();
  v59 = [objc_opt_self() defaultCenter];
  v60 = sub_100041AF0();
  v61 = v95;
  sub_100041D90();

  v90[0] = sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
  v62 = sub_100041D50();
  v123 = v62;
  v92 = sub_100041D30();
  v63 = *(v92 - 1);
  v91 = *(v63 + 56);
  v96 = (v63 + 56);
  v64 = v119;
  v91(v119, 1, 1, v92);
  sub_100033620(&qword_10005DB58, &type metadata accessor for NSNotificationCenter.Publisher);
  v90[1] = sub_100033668(&qword_10005DB60, &qword_10005CA10, OS_dispatch_queue_ptr);
  v65 = v97;
  sub_100041490();
  sub_10000E9F0(v64, &qword_10005DB28, &qword_100046F78);
  (v99[1])(v61, v65);

  v66 = v100;
  sub_100041DF0();
  v67 = v103;
  v68 = v101;
  (*(v122 + 56))(v103, 1, 1, v101);
  v69 = [objc_opt_self() mainRunLoop];
  v123 = v69;
  v70 = sub_100041DE0();
  v71 = v107;
  (*(*(v70 - 8) + 56))(v107, 1, 1, v70);
  sub_10000EA78(0, &qword_10005DB68, NSRunLoop_ptr);
  v99 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100003214(&qword_10005DB70, &qword_10005DB30, &qword_100046F80);
  sub_100033668(&qword_10005DB78, &qword_10005DB68, NSRunLoop_ptr);
  v72 = v120;
  v73 = v67;
  v74 = v104;
  sub_100041480();
  sub_10000E9F0(v71, &qword_10005DB18, &qword_100046F68);
  sub_10000E9F0(v73, &qword_10005DB20, &qword_100046F70);
  (*(v122 + 8))(v66, v68);
  (*(v105 + 8))(v72, v74);

  swift_allocObject();
  swift_weakInit();
  sub_100003214(&qword_10005DB80, &qword_10005DB38, &qword_100046F88);
  v75 = v106;
  v76 = v121;
  v77 = sub_1000414A0();

  (*(v108 + 8))(v76, v75);
  v78 = *(v43 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_refreshObserver);
  *(v43 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_refreshObserver) = v77;

  swift_beginAccess();
  v79 = v109;
  sub_100041440();
  swift_endAccess();
  v80 = sub_100041D50();
  v123 = v80;
  v81 = v119;
  v91(v119, 1, 1, v92);
  sub_100003214(&qword_10005DB88, &qword_10005DB08, &qword_100046F58);
  v82 = v110;
  v83 = v111;
  sub_100041490();
  sub_10000E9F0(v81, &qword_10005DB28, &qword_100046F78);

  (*(v112 + 8))(v79, v83);
  swift_allocObject();
  v84 = v102;
  swift_unknownObjectWeakInit();
  sub_100003214(&qword_10005DB90, &qword_10005DB10, &qword_100046F60);
  v85 = v113;
  v86 = sub_1000414A0();

  (*(v114 + 8))(v82, v85);
  v87 = *&v84[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_inviteCardResizingObserver];
  *&v84[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_inviteCardResizingObserver] = v86;

  v123 = sub_1000336F4;
  v124 = v43;
  v88 = objc_allocWithZone(sub_100002D08(&unk_10005DB98, &qword_100046FA0));
  return sub_1000416C0();
}