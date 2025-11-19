unsigned __int8 *sub_1E15B8398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1E1AF608C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1E15B8914();
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
      result = sub_1E1AF709C();
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
                    goto LABEL_127;
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
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
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
                  goto LABEL_127;
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
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
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
                  goto LABEL_127;
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
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
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
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
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
                goto LABEL_127;
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
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
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
                goto LABEL_127;
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
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
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
              goto LABEL_127;
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
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1E15B8914()
{
  v0 = sub_1E1AF609C();
  v4 = sub_1E15B8994(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1E15B8994(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1E1AF6DAC();
    if (!v9 || (v10 = v9, v11 = sub_1E19732E0(v9, 0), v12 = sub_1E15B8AEC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1E1AF5EFC();

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
      return sub_1E1AF5EFC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1E1AF709C();
LABEL_4:

  return sub_1E1AF5EFC();
}

unint64_t sub_1E15B8AEC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1E161E958(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1E1AF5FDC();
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
          result = sub_1E1AF709C();
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

    result = sub_1E161E958(v12, a6, a7);
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

    result = sub_1E1AF5FBC();
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

uint64_t sub_1E15B8D2C(uint64_t a1)
{
  v3 = sub_1E1AF320C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF324C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
  result = swift_beginAccess();
  if (*(v1 + v11) != a1)
  {
    v19 = v8;
    v20 = v7;
    v21 = v4;
    if (qword_1EE1D27C0 != -1)
    {
      swift_once();
    }

    v13 = sub_1E1AF591C();
    v18[1] = __swift_project_value_buffer(v13, qword_1EE215480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF382C();
    v14 = *(v1 + v11);
    v23 = MEMORY[0x1E69E6530];
    aBlock[0] = v14;
    sub_1E1AF38BC();
    sub_1E1308058(aBlock, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF549C();

    sub_1E13006E4(0, &qword_1EE1E3430);
    v15 = sub_1E1AF68EC();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = sub_1E15BB3CC;
    v25 = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    v23 = &block_descriptor_12;
    v17 = _Block_copy(aBlock);

    sub_1E1AF322C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v10, v6, v17);
    _Block_release(v17);

    (*(v21 + 8))(v6, v3);
    return (*(v19 + 8))(v10, v20);
  }

  return result;
}

uint64_t sub_1E15B917C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_1E1AF5BCC();
  }

  return result;
}

uint64_t sub_1E15B91EC()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E15B9230()
{
  v0 = sub_1E1AF320C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF324C();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF321C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F98], v7);
  v11 = sub_1E1AF693C();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1E15B9824;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_31;
  v13 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v6, v3, v13);
  _Block_release(v13);

  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v16);
}

uint64_t sub_1E15B9598()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() daemonProxy];
    [v2 addDataUpdateDelegate_];

    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1E15BA744(sub_1E15BB474, v3);

    v4 = [objc_opt_self() defaultCenter];
    sub_1E1AF59DC();
    v5 = v1;
    v6 = sub_1E1AF59BC();
    [v4 addObserver:v5 selector:sel_accountsDidChangeWithNotification_ name:v6 object:sub_1E1AF59CC()];
  }

  else
  {
    if (qword_1EE1D27C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE215480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }
}

id GameCenterFriendRequestCoordinator.__allocating_init(bag:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_onFriendRequestCountDidUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *&v3[v4] = sub_1E1AF5BEC();
  *&v3[OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount] = 0;
  *&v3[OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_bag] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id GameCenterFriendRequestCoordinator.init(bag:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_onFriendRequestCountDidUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *&v1[v3] = sub_1E1AF5BEC();
  *&v1[OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount] = 0;
  *&v1[OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_bag] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GameCenterFriendRequestCoordinator();
  return objc_msgSendSuper2(&v5, sel_init);
}

id GameCenterFriendRequestCoordinator.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for GameCenterFriendRequestCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E15B9AD8(void *a1)
{
  if (qword_1EE1D27C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE215480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  sub_1E1AF382C();
  v3 = [a1 name];
  v4 = sub_1E1AF5DFC();
  v6 = v5;

  v9[3] = MEMORY[0x1E69E6158];
  v9[0] = v4;
  v9[1] = v6;
  sub_1E1AF38BC();
  sub_1E1308058(v9, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  sub_1E1AF548C();

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E15BA744(sub_1E15BB3D4, v7);
}

uint64_t sub_1E15B9D24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v25[1] = a4;
  v26 = a1;
  v27 = a2;
  v6 = sub_1E1AF320C();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E1AF324C();
  v9 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF321C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430);
  (*(v13 + 104))(v15, *MEMORY[0x1E69E7F98], v12);
  v16 = sub_1E1AF693C();
  (*(v13 + 8))(v15, v12);
  v17 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v19 = swift_allocObject();
  v20 = v26;
  v21 = v27;
  v19[2] = v17;
  v19[3] = v20;
  v19[4] = v21;
  aBlock[4] = v28;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = v29;
  v22 = _Block_copy(aBlock);

  v23 = v21;
  sub_1E1AF322C();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v11, v8, v22);
  _Block_release(v22);

  (*(v31 + 8))(v8, v6);
  (*(v9 + 8))(v11, v30);
}

void sub_1E15BA140(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E15BA204(a2, a3);
  }
}

void sub_1E15BA204(uint64_t a1, void *a2)
{
  v24 = a2;
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  if (qword_1EE1D27C0 != -1)
  {
    swift_once();
  }

  v5 = sub_1E1AF591C();
  __swift_project_value_buffer(v5, qword_1EE215480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  sub_1E1AF382C();
  v30 = MEMORY[0x1E69E6530];
  v29[0] = v26;
  sub_1E1AF38BC();
  sub_1E1308058(v29, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  sub_1E1AF548C();

  v6 = v24;
  if (v24)
  {
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    v7 = v6;
    sub_1E1AF382C();
    swift_getErrorValue();
    v8 = v27;
    v9 = v28;
    v30 = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
    sub_1E1AF38DC();
    sub_1E1308058(v29, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    v11 = OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
    v12 = v25;
    swift_beginAccess();
    v13 = *(v12 + v11);
    *(v12 + v11) = 0;
    sub_1E15B8D2C(v13);
  }

  else
  {
    v14 = v26;
    sub_1E1AF59DC();
    sub_1E1AF59CC();
    MEMORY[0x1E68FE6D0]();

    v15 = sub_1E1AF594C();
    v16 = (*(*(v15 - 8) + 48))(v4, 1, v15);
    sub_1E1308058(v4, &qword_1ECEBBA70);
    if (v16 == 1 || (sub_1E13006E4(0, qword_1EE1D2550), (v17 = static GKLocalPlayer.currentAcknowledgedPlayer.getter()) == 0))
    {
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF54AC();

      v21 = OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
      v22 = v25;
      swift_beginAccess();
      v20 = *(v22 + v21);
      *(v22 + v21) = 0;
    }

    else
    {

      v18 = OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
      v19 = v25;
      swift_beginAccess();
      v20 = *(v19 + v18);
      *(v19 + v18) = v14;
    }

    sub_1E15B8D2C(v20);
  }
}

double sub_1E15BA710()
{
  result = vcvtd_n_f64_u64(sub_1E15BAC74(0x20000000000001uLL), 0x35uLL) + 0.0;
  qword_1ECEB6310 = *&result;
  return result;
}

void sub_1E15BA744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  if (qword_1EE1D2140 != -1)
  {
    swift_once();
  }

  sub_1E1AF535C();
  sub_1E1AF532C();
  (*(v5 + 8))(v7, v4);
  if (sub_1E15BAD00(aBlock[0]))
  {
    if (qword_1EE1D27C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE215480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    v9 = objc_opt_self();
    *&aBlock[4] = a1;
    *&aBlock[5] = a2;
    *&aBlock[0] = MEMORY[0x1E69E9820];
    *&aBlock[1] = 1107296256;
    *&aBlock[2] = sub_1E15BAB68;
    *&aBlock[3] = &block_descriptor_8;
    v10 = _Block_copy(aBlock);

    [v9 getActiveFriendRequestCount_];
    _Block_release(v10);
  }

  else
  {
    if (qword_1EE1D27C0 != -1)
    {
      swift_once();
    }

    v11 = sub_1E1AF591C();
    __swift_project_value_buffer(v11, qword_1EE215480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();
  }
}

void sub_1E15BAB68(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

id GameCenterFriendRequestCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1E15BAC74(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E6901660](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E6901660](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E15BAD00(double a1)
{
  if (a1 <= 0.0)
  {
    if (qword_1EE1D27C0 != -1)
    {
      swift_once();
    }

    v5 = sub_1E1AF591C();
    __swift_project_value_buffer(v5, qword_1EE215480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    return 0;
  }

  else if (a1 >= 1.0)
  {
    if (qword_1EE1D27C0 != -1)
    {
      swift_once();
    }

    v6 = sub_1E1AF591C();
    __swift_project_value_buffer(v6, qword_1EE215480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    return 1;
  }

  else
  {
    if (qword_1EE1D27C0 != -1)
    {
      swift_once();
    }

    v2 = sub_1E1AF591C();
    __swift_project_value_buffer(v2, qword_1EE215480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    if (qword_1ECEB0EB8 != -1)
    {
      swift_once();
    }

    v3 = *&qword_1ECEB6310;
    v7[3] = MEMORY[0x1E69E63B0];
    v7[0] = qword_1ECEB6310;
    sub_1E1AF38BC();
    sub_1E1308058(v7, &qword_1ECEB2DF0);
    sub_1E1AF548C();

    return v3 < a1;
  }
}

uint64_t sub_1E15BB10C(uint64_t result)
{
  if ((result & 0xFFFFFFFE) == 2)
  {
    v1 = result;
    if (qword_1EE1D27C0 != -1)
    {
      swift_once();
    }

    v2 = sub_1E1AF591C();
    __swift_project_value_buffer(v2, qword_1EE215480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    type metadata accessor for GKRefreshDataType(0);
    v6 = v3;
    v5[0] = v1;
    sub_1E1AF38DC();
    sub_1E1308058(v5, &qword_1ECEB2DF0);
    sub_1E1AF548C();

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1E15BA744(sub_1E15BB414, v4);
  }

  return result;
}

uint64_t objectdestroy_16Tm_0()
{

  return swift_deallocObject();
}

uint64_t static AdAttributionManager.checkIfParametersContainAttributionParameters(_:)(uint64_t a1)
{
  v2 = sub_1E1AF5DFC();
  if (!*(a1 + 16))
  {

LABEL_5:
    v14 = 0u;
    v15 = 0u;
    sub_1E1308058(&v14, &qword_1ECEB2DF0);
    v8 = sub_1E1AF098C();
    if (*(a1 + 16))
    {
      v10 = sub_1E13018F8(v8, v9);
      v12 = v11;

      if (v12)
      {
        sub_1E137A5C4(*(a1 + 56) + 32 * v10, &v14);
        v7 = 1;
LABEL_10:
        sub_1E1308058(&v14, &qword_1ECEB2DF0);
        return v7;
      }
    }

    else
    {
    }

    v7 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_10;
  }

  v4 = sub_1E13018F8(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1E137A5C4(*(a1 + 56) + 32 * v4, &v14);
  sub_1E1308058(&v14, &qword_1ECEB2DF0);
  return 1;
}

uint64_t AdAttributionManager.__allocating_init(itemParameters:currentItem:clientBundleID:timerDelay:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  result = swift_allocObject();
  *(result + 65) = 0;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 56) = a5;
  *(result + 64) = a6 & 1;
  return result;
}

uint64_t AdAttributionManager.init(itemParameters:currentItem:clientBundleID:timerDelay:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 65) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;

  *(v6 + 56) = a5;
  *(v6 + 64) = a6 & 1;
  return v6;
}

uint64_t AdAttributionManager.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v0;
}

uint64_t AdAttributionManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 16);
  }

  else
  {
    v2 = 0;
  }

  return swift_deallocClassInstance();
}

void sub_1E15BB7D4()
{
  if (*(v0 + 64))
  {
    v1 = 3.0;
  }

  else
  {
    v1 = v0[7];
  }

  v2 = *v0;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v11[4] = sub_1E15BF31C;
  v11[5] = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1367148;
  v11[3] = &block_descriptor_32;
  v5 = _Block_copy(v11);
  v6 = objc_opt_self();

  v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v1];
  _Block_release(v5);

  v8 = *(v0 + 2);
  *(v0 + 2) = v7;
  v9 = v7;

  if (v9)
  {
    v10 = [objc_opt_self() mainRunLoop];
    [v10 addTimer:v9 forMode:*MEMORY[0x1E695DA28]];
  }
}

id sub_1E15BB9A0(void *a1)
{
  if (qword_1EE1DC500 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE2159D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E15BD39C(0);
  }

  return [a1 invalidate];
}

void sub_1E15BBB48(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1E1AF591C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v28 = a2[2];
  v29 = v13;
  v30 = v14;
  v31 = v12;
  v15 = a2[5];
  v27 = a2[4];
  v17 = a2[6];
  v16 = a2[7];
  *&v32 = v10;
  *(&v32 + 1) = v11;
  if (sub_1E15BEE40(&v32))
  {
    if (qword_1EE1DC500 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_1EE2159D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    [*(v3 + 16) invalidate];
    sub_1E15BD39C(1);
    if (v17 >> 60 == 3 || v17 >> 60 == 8 && ((v18 = v28 | v29, v19 = v27 | v15 | v16, v17 == 0x8000000000000000) && !(v18 | v31 | v30 | v19) || v17 == 0x8000000000000000 && v31 == 4 && !(v18 | v30 | v19)))
    {
      *(v3 + 65) = 1;
    }
  }

  else
  {
    if (qword_1EE1DC500 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v6, qword_1EE2159D8);
    (*(v7 + 16))(v9, v20, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    sub_1E1AF382C();
    sub_1E1AF382C();
    *&v32 = v10;
    *(&v32 + 1) = v11;
    AdamId.numberValue.getter();
    v22 = v21;
    if (v21)
    {
      v21 = sub_1E1380D6C();
    }

    else
    {
      *(&v32 + 1) = 0;
      *&v33 = 0;
    }

    *&v32 = v22;
    *(&v33 + 1) = v21;
    sub_1E1AF383C();
    sub_1E1308058(&v32, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v23 = *(v3 + 32);
    if (v23 && (v24 = [v23 iTunesStoreIdentifier]) != 0)
    {
      v25 = v24;
      *(&v33 + 1) = sub_1E1380D6C();
      *&v32 = v25;
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    sub_1E1AF383C();
    sub_1E1308058(&v32, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1E15BC024(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1E1AF591C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24[-v12];
  v14 = *a1;
  v15 = a1[1];
  *&v25 = *a1;
  *(&v25 + 1) = v15;
  if (sub_1E15BEE40(&v25))
  {
    v16 = sub_1E1AEFCCC();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    sub_1E15BCD04(v10, v13);
    sub_1E1308058(v10, &unk_1ECEB4B60);
    return sub_1E1308058(v13, &unk_1ECEB4B60);
  }

  else
  {
    if (qword_1EE1DC500 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_1EE2159D8);
    (*(v5 + 16))(v7, v17, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    sub_1E1AF382C();
    sub_1E1AF382C();
    *&v25 = v14;
    *(&v25 + 1) = v15;
    AdamId.numberValue.getter();
    v19 = v18;
    if (v18)
    {
      v18 = sub_1E1380D6C();
    }

    else
    {
      *(&v25 + 1) = 0;
      *&v26 = 0;
    }

    *&v25 = v19;
    *(&v26 + 1) = v18;
    sub_1E1AF383C();
    sub_1E1308058(&v25, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v21 = *(v2 + 32);
    if (v21 && (v22 = [v21 iTunesStoreIdentifier]) != 0)
    {
      v23 = v22;
      *(&v26 + 1) = sub_1E1380D6C();
      *&v25 = v23;
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    sub_1E1AF383C();
    sub_1E1308058(&v25, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E15BC4A4@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - v15;
  v17 = *(v4 + 32);
  if (!v17 || (v18 = [v17 bundleIdentifier]) == 0)
  {
    if (qword_1EE1DC500 != -1)
    {
      swift_once();
    }

    v32 = sub_1E1AF591C();
    __swift_project_value_buffer(v32, qword_1EE2159D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    sub_1E15BF324();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }

  v19 = v18;
  v46 = v5;
  v42 = a4;
  v20 = sub_1E1AF5DFC();
  v22 = v21;

  v23 = v20 == a1 && v22 == a2;
  if (!v23 && (sub_1E1AF74AC() & 1) == 0)
  {
    v46 = v22;
    v42 = v20;
    if (qword_1EE1DC500 != -1)
    {
      swift_once();
    }

    v40 = sub_1E1AF591C();
    v41 = __swift_project_value_buffer(v40, qword_1EE2159D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    sub_1E1AF382C();
    sub_1E1AF382C();
    v34 = MEMORY[0x1E69E6158];
    v45 = MEMORY[0x1E69E6158];
    v43 = a1;
    v44 = a2;

    sub_1E1AF383C();
    sub_1E1308058(&v43, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v45 = v34;
    v43 = v42;
    v44 = v46;
    sub_1E1AF383C();
    sub_1E1308058(&v43, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    sub_1E15BF324();
    swift_allocError();
    *v35 = 1;
    return swift_willThrow();
  }

  v24 = sub_1E1AEFCCC();
  v25 = *(v24 - 8);
  v26 = a3;
  v27 = *(v25 + 16);
  v27(v12, v26, v24);
  (*(v25 + 56))(v12, 0, 1, v24);
  v28 = v46;
  sub_1E15BCD04(v12, v16);
  result = sub_1E1308058(v12, &unk_1ECEB4B60);
  if (v28)
  {
    return result;
  }

  if ((*(v25 + 48))(v16, 1, v24) == 1)
  {
    sub_1E1308058(v16, &unk_1ECEB4B60);
    if (qword_1EE1DC500 != -1)
    {
      swift_once();
    }

    v30 = sub_1E1AF591C();
    __swift_project_value_buffer(v30, qword_1EE2159D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    sub_1E15BF324();
    swift_allocError();
    *v31 = 4;
    return swift_willThrow();
  }

  v46 = v27;
  v36 = v42;
  (*(v25 + 32))(v42, v16, v24);
  if (qword_1EE1DC500 != -1)
  {
    swift_once();
  }

  v37 = sub_1E1AF591C();
  __swift_project_value_buffer(v37, qword_1EE2159D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v45 = v24;
  v38 = __swift_allocate_boxed_opaque_existential_0(&v43);
  v46(v38, v36, v24);
  sub_1E1AF383C();
  sub_1E1308058(&v43, &qword_1ECEB2DF0);
  sub_1E1AF548C();
}

uint64_t sub_1E15BCD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v3 = v2;
  v37 = a2;
  v4 = sub_1E1AF591C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1DC500 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EE2159D8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  v40 = v9;
  v10 = swift_allocObject();
  v36 = xmmword_1E1B02CC0;
  *(v10 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  v41 = v8;
  sub_1E1AF548C();

  [*(v3 + 16) invalidate];
  v11 = *(v3 + 32);
  v12 = &selRef_remoteDownloadIdentifiersDidChange_;
  if (!v11)
  {
    goto LABEL_14;
  }

  v13 = [v11 iTunesStoreIdentifier];
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = v13;
  v35 = [v13 unsignedLongLongValue];

  v15 = *(v3 + 24);
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = sub_1E1AF098C();
  if (!*(v15 + 16))
  {

    goto LABEL_13;
  }

  v33 = sub_1E13018F8(v16, v17);
  v34 = v18;

  if ((v34 & 1) == 0)
  {
LABEL_13:

    v12 = &selRef_remoteDownloadIdentifiersDidChange_;
    goto LABEL_14;
  }

  sub_1E137A5C4(*(v15 + 56) + 32 * v33, &v44);

  v12 = &selRef_remoteDownloadIdentifiersDidChange_;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!*(v3 + 48))
  {

LABEL_14:
    (*(v5 + 16))(v7, v41, v4);
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    sub_1E1AF382C();
    sub_1E1AF382C();
    v21 = *(v3 + 32);
    if (v21 && (v22 = [v21 v12[437]]) != 0)
    {
      v23 = v22;
      *(&v45 + 1) = sub_1E1380D6C();
      *&v44 = v23;
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    sub_1E1AF383C();
    sub_1E1308058(&v44, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v24 = *(v3 + 48);
    if (v24)
    {
      v25 = *(v3 + 40);
      v26 = MEMORY[0x1E69E6158];
    }

    else
    {
      v25 = 0;
      v26 = 0;
      *&v45 = 0;
    }

    *&v44 = v25;
    *(&v44 + 1) = v24;
    *(&v45 + 1) = v26;

    sub_1E1AF383C();
    sub_1E1308058(&v44, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    (*(v5 + 8))(v7, v4);
    sub_1E15BF324();
    swift_allocError();
    v20 = 2;
    goto LABEL_22;
  }

  if (*(v3 + 65))
  {

    *(swift_allocObject() + 16) = v36;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    sub_1E15BF324();
    swift_allocError();
    v20 = 3;
LABEL_22:
    *v19 = v20;
    return swift_willThrow();
  }

  v28 = v39;
  sub_1E1AF097C();
  if (v28)
  {

    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    swift_getErrorValue();
    v29 = v42;
    v30 = v43;
    *(&v45 + 1) = v43;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v44);
    (*(*(v30 - 8) + 16))(boxed_opaque_existential_0, v29, v30);
    sub_1E1AF383C();
    sub_1E1308058(&v44, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    return swift_willThrow();
  }
}

void sub_1E15BD39C(char a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {

    v4 = sub_1E1AF098C();
    if (*(v3 + 16))
    {
      v6 = sub_1E13018F8(v4, v5);
      v8 = v7;

      if (v8)
      {
        sub_1E137A5C4(*(v3 + 56) + 32 * v6, v11);

        if (swift_dynamicCast())
        {
          sub_1E15BD4A0(a1 & 1, v9, v10);

          return;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  sub_1E15BDB60(a1 & 1);
}

uint64_t sub_1E15BD4A0(int a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v33 = a1;
  v5 = sub_1E1AF591C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF096C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v32 - v15;
  v17 = v3[4];
  if (v17 && (v18 = [v17 iTunesStoreIdentifier]) != 0 && (v19 = v18, v32[4] = objc_msgSend(v18, sel_unsignedLongLongValue), v19, v3[6]))
  {
    v32[2] = v3[5];
    v32[3] = a3;
    v20 = qword_1EE1DC500;

    if (v20 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v5, qword_1EE2159D8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    v22 = *(*(sub_1E1AF38EC() - 8) + 72);
    v32[0] = v21;
    v32[1] = v22;
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    v23 = MEMORY[0x1E6959CE8];
    if ((v33 & 1) == 0)
    {
      v23 = MEMORY[0x1E6959CE0];
    }

    (*(v10 + 104))(v12, *v23, v9);
    (*(v10 + 32))(v16, v12, v9);
    sub_1E1AF095C();
    (*(v10 + 8))(v16, v9);
  }

  else
  {
    if (qword_1EE1DC500 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v5, qword_1EE2159D8);
    (*(v6 + 16))(v8, v24, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    sub_1E1AF382C();
    sub_1E1AF382C();
    v25 = v3[4];
    if (v25 && (v26 = [v25 iTunesStoreIdentifier]) != 0)
    {
      v27 = v26;
      *(&v36 + 1) = sub_1E1380D6C();
      *&v35 = v27;
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    sub_1E1AF383C();
    sub_1E1308058(&v35, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v28 = v3[6];
    if (v28)
    {
      v29 = v3[5];
      v30 = MEMORY[0x1E69E6158];
    }

    else
    {
      v29 = 0;
      v30 = 0;
      *&v36 = 0;
    }

    *&v35 = v29;
    *(&v35 + 1) = v28;
    *(&v36 + 1) = v30;

    sub_1E1AF383C();
    sub_1E1308058(&v35, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1E15BDB60(int a1)
{
  v2 = v1;
  LODWORD(v118) = a1;
  v3 = sub_1E1AF591C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v120 = v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v117 = v107 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v119 = v107 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v116 = v107 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v107 - v13;
  if (qword_1EE1DC500 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v3, qword_1EE2159D8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v17 = *(*(sub_1E1AF38EC() - 8) + 72);
  v124 = v16;
  v18 = swift_allocObject();
  v122 = xmmword_1E1B02CC0;
  *(v18 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  v123 = v15;
  sub_1E1AF548C();

  v19 = v2[3];
  if (!v19)
  {
    goto LABEL_30;
  }

  v115 = v2;
  v121 = v17;
  v20 = sub_1E1AF5DFC();
  v22 = v21;
  if (!*(v19 + 16) || (v23 = v20, v114 = v4, , v24 = sub_1E13018F8(v23, v22), v26 = v25, , (v26 & 1) == 0) || (sub_1E137A5C4(*(v19 + 56) + 32 * v24, &v127), v27 = swift_dynamicCast(), v28 = v114, (v27 & 1) == 0))
  {

LABEL_30:
    *(swift_allocObject() + 16) = v122;
    sub_1E1AF382C();
    sub_1E1AF548C();

    return;
  }

  v29 = v126;
  v30 = v115[4];
  if (!v30 || (v112 = v125, (v31 = [v30 iTunesStoreIdentifier]) == 0))
  {

    goto LABEL_37;
  }

  v113 = v29;
  *&v122 = v31;
  v32 = sub_1E1AF5DFC();
  if (!*(v19 + 16))
  {
    goto LABEL_35;
  }

  v34 = sub_1E13018F8(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_1E137A5C4(*(v19 + 56) + 32 * v34, &v127);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v37 = v125;
  v111 = v126;
  v38 = sub_1E1AF5DFC();
  if (!*(v19 + 16))
  {

LABEL_35:

LABEL_36:

    v28 = v114;
    goto LABEL_37;
  }

  v110 = v37;
  v40 = sub_1E13018F8(v38, v39);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_1E137A5C4(*(v19 + 56) + 32 * v40, &v127);
  v43 = sub_1E1380D6C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v44 = v125;
  v45 = sub_1E1AF5DFC();
  if (!*(v19 + 16))
  {

    goto LABEL_35;
  }

  v109 = v43;
  v47 = sub_1E13018F8(v45, v46);
  v49 = v48;

  if ((v49 & 1) == 0 || (sub_1E137A5C4(*(v19 + 56) + 32 * v47, &v127), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_35;
  }

  v50 = v115[6];
  if (v50)
  {
    v120 = v3;
    v107[1] = v125;
    v108 = v115[5];
    v51 = objc_allocWithZone(MEMORY[0x1E698B4E8]);

    v52 = v50;
    v53 = [v51 init];
    [v53 setAppAdamId_];
    v54 = sub_1E1AF5DBC();

    [v53 setAdNetworkId_];

    v55 = sub_1E1AF5DBC();

    [v53 setImpressionId_];

    v113 = v44;
    [v53 setTimestamp_];
    v56 = sub_1E1AF5DBC();

    [v53 setAttributionSignature_];

    v112 = v52;
    v57 = sub_1E1AF5DBC();
    [v53 setSourceAppBundleId_];

    v58 = MEMORY[0x1E698B450];
    if (v118)
    {
      v58 = MEMORY[0x1E698B448];
    }

    v59 = *v58;
    v118 = v53;
    [v53 setInteractionType_];
    v60 = sub_1E1AF5DFC();
    if (*(v19 + 16))
    {
      v62 = sub_1E13018F8(v60, v61);
      v64 = v63;

      if (v64)
      {
        sub_1E137A5C4(*(v19 + 56) + 32 * v62, &v127);
        if (swift_dynamicCast())
        {
          v65 = v125;
          v66 = v126;
          v67 = sub_1E1AF5DBC();
          [v118 setVersion_];

          *&v127 = v65;
          *(&v127 + 1) = v66;
          v125 = 3157556;
          v126 = 0xE300000000000000;
          v68 = sub_1E1AEFF8C();
          (*(*(v68 - 8) + 56))(v14, 1, 1, v68);
          sub_1E13B8AA4();
          v69 = MEMORY[0x1E69E6158];
          v70 = sub_1E1AF6E8C();
          sub_1E1308058(v14, &qword_1ECEB2FC8);

          if (v70 != -1)
          {
            v71 = sub_1E1AF5DFC();
            if (*(v19 + 16))
            {
              v73 = sub_1E13018F8(v71, v72);
              v75 = v74;

              if (v75)
              {
                sub_1E137A5C4(*(v19 + 56) + 32 * v73, &v127);
                if (swift_dynamicCast())
                {
                  v76 = v125;
                  v77 = &selRef_setSourceIdentifier_;
                  goto LABEL_53;
                }
              }
            }

            else
            {
            }

            (*(v114 + 16))(v116, v123, v120);
            *(swift_allocObject() + 16) = xmmword_1E1B09FF0;
            sub_1E1AF382C();
            sub_1E1AF382C();
            v105 = v115[4];
            if (v105 && (v106 = [v105 iTunesStoreIdentifier]) != 0)
            {
              *(&v128 + 1) = v109;
              *&v127 = v106;
            }

            else
            {
              v127 = 0u;
              v128 = 0u;
            }

            sub_1E1AF383C();
            sub_1E1308058(&v127, &qword_1ECEB2DF0);
            sub_1E1AF382C();
            *(&v128 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
            *&v127 = v19;
            sub_1E1AF383C();
            sub_1E1308058(&v127, &qword_1ECEB2DF0);
            sub_1E1AF382C();
            *(&v128 + 1) = v69;
            *&v127 = v108;
            *(&v127 + 1) = v112;
            sub_1E1AF383C();
            sub_1E1308058(&v127, &qword_1ECEB2DF0);
            v98 = v120;
            v99 = v116;
            sub_1E1AF54AC();

            goto LABEL_63;
          }
        }
      }
    }

    else
    {
    }

    v85 = sub_1E1AF5DFC();
    if (*(v19 + 16))
    {
      v87 = sub_1E13018F8(v85, v86);
      v89 = v88;

      if (v89)
      {
        sub_1E137A5C4(*(v19 + 56) + 32 * v87, &v127);
        if (swift_dynamicCast())
        {
          v76 = v125;
          v77 = &selRef_setCampaignId_;
LABEL_53:
          [v118 *v77];

          v90 = sub_1E1AF5DFC();
          if (*(v19 + 16))
          {
            v92 = sub_1E13018F8(v90, v91);
            v94 = v93;

            if (v94)
            {
              sub_1E137A5C4(*(v19 + 56) + 32 * v92, &v127);

              if (swift_dynamicCast())
              {
                v95 = v125;
                [v118 setSourceAppAdamId_];
              }

              goto LABEL_66;
            }
          }

          else
          {
          }

LABEL_66:
          (*(v114 + 16))(v117, v123, v120);
          *(swift_allocObject() + 16) = xmmword_1E1B04930;
          sub_1E1AF382C();
          sub_1E1AF382C();
          v100 = [v118 sourceAppAdamId];
          if (!v100)
          {
            v109 = 0;
            *(&v127 + 1) = 0;
            *&v128 = 0;
          }

          *&v127 = v100;
          *(&v128 + 1) = v109;
          sub_1E1AF383C();
          sub_1E1308058(&v127, &qword_1ECEB2DF0);
          sub_1E1AF382C();
          *(&v128 + 1) = MEMORY[0x1E69E6158];
          *&v127 = v108;
          *(&v127 + 1) = v112;
          sub_1E1AF383C();
          sub_1E1308058(&v127, &qword_1ECEB2DF0);
          v101 = v120;
          v102 = v117;
          sub_1E1AF548C();

          (*(v114 + 8))(v102, v101);
          v103 = [objc_opt_self() sharedInstance];
          v104 = v118;
          [v103 addInstallAttributionParamsWithConfig_];

          return;
        }
      }
    }

    else
    {
    }

    (*(v114 + 16))(v119, v123, v120);
    *(swift_allocObject() + 16) = xmmword_1E1B09FF0;
    sub_1E1AF382C();
    sub_1E1AF382C();
    v96 = v115[4];
    if (v96 && (v97 = [v96 iTunesStoreIdentifier]) != 0)
    {
      *(&v128 + 1) = v109;
      *&v127 = v97;
    }

    else
    {
      v127 = 0u;
      v128 = 0u;
    }

    sub_1E1AF383C();
    sub_1E1308058(&v127, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    *(&v128 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    *&v127 = v19;
    sub_1E1AF383C();
    sub_1E1308058(&v127, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    *(&v128 + 1) = MEMORY[0x1E69E6158];
    *&v127 = v108;
    *(&v127 + 1) = v112;
    sub_1E1AF383C();
    sub_1E1308058(&v127, &qword_1ECEB2DF0);
    v99 = v119;
    v98 = v120;
    sub_1E1AF54AC();

LABEL_63:
    (*(v114 + 8))(v99, v98);
    return;
  }

  v28 = v114;
LABEL_37:
  (*(v28 + 16))(v120, v123, v3);
  *(swift_allocObject() + 16) = xmmword_1E1B09FF0;
  sub_1E1AF382C();
  sub_1E1AF382C();
  v78 = v115[4];
  if (v78 && (v79 = [v78 iTunesStoreIdentifier]) != 0)
  {
    v80 = v79;
    *(&v128 + 1) = sub_1E1380D6C();
    *&v127 = v80;
  }

  else
  {
    v127 = 0u;
    v128 = 0u;
  }

  sub_1E1AF383C();
  sub_1E1308058(&v127, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  *(&v128 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
  *&v127 = v19;
  sub_1E1AF383C();
  sub_1E1308058(&v127, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v81 = v115[6];
  if (v81)
  {
    v82 = v115[5];
    v83 = MEMORY[0x1E69E6158];
  }

  else
  {
    v82 = 0;
    v83 = 0;
    *&v128 = 0;
  }

  *&v127 = v82;
  *(&v127 + 1) = v81;
  *(&v128 + 1) = v83;

  sub_1E1AF383C();
  sub_1E1308058(&v127, &qword_1ECEB2DF0);
  v84 = v120;
  sub_1E1AF54AC();

  (*(v28 + 8))(v84, v3);
}

BOOL sub_1E15BEE40(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1E1AF591C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  *&v26 = *a1;
  *(&v26 + 1) = v9;
  AdamId.numberValue.getter();
  if (v10 && (v11 = v10, v12 = [v10 unsignedLongLongValue], v11, (v13 = *(v2 + 32)) != 0) && (v14 = objc_msgSend(v13, sel_iTunesStoreIdentifier)) != 0)
  {
    v15 = v14;
    v16 = [v14 unsignedLongLongValue];

    return v12 == v16;
  }

  else
  {
    v25 = v2;
    if (qword_1EE1DC500 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v4, qword_1EE2159D8);
    (*(v5 + 16))(v7, v18, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    sub_1E1AF382C();
    sub_1E1AF382C();
    *&v26 = v8;
    *(&v26 + 1) = v9;
    AdamId.numberValue.getter();
    v20 = v19;
    if (v19)
    {
      v19 = sub_1E1380D6C();
    }

    else
    {
      *(&v26 + 1) = 0;
      *&v27 = 0;
    }

    *&v26 = v20;
    *(&v27 + 1) = v19;
    sub_1E1AF383C();
    sub_1E1308058(&v26, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v21 = *(v25 + 32);
    if (v21 && (v22 = [v21 iTunesStoreIdentifier]) != 0)
    {
      v23 = v22;
      *(&v27 + 1) = sub_1E1380D6C();
      *&v26 = v23;
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    sub_1E1AF383C();
    sub_1E1308058(&v26, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

uint64_t sub_1E15BF1C8()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE2159D8);
  __swift_project_value_buffer(v4, qword_1EE2159D8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

unint64_t sub_1E15BF324()
{
  result = qword_1ECEB63A8;
  if (!qword_1ECEB63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB63A8);
  }

  return result;
}

unint64_t sub_1E15BF4D0()
{
  result = qword_1ECEB63B0;
  if (!qword_1ECEB63B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB63B0);
  }

  return result;
}

double Unactionable<>.segue.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 *a14, char a15, uint64_t a16, uint64_t a17, char a18, char a19, char a20)
{
  sub_1E15BF7D4(a1, a9 + 584);
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1E1AF11AC();
  sub_1E134FD1C(a3, a9 + 40, &qword_1ECEB2AD0);
  sub_1E1300B24(a4, a9 + 80);
  sub_1E1300B24(a5, a9 + 120);
  sub_1E134FD1C(a6, a9 + 160, &qword_1ECEB2AD0);
  sub_1E134FD1C(a7, a9 + 200, &qword_1ECEB2AD0);
  __swift_project_boxed_opaque_existential_1Tm(a8, a8[3]);
  sub_1E1AF11AC();
  sub_1E1308058(a7, &qword_1ECEB2AD0);
  sub_1E1308058(a6, &qword_1ECEB2AD0);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  sub_1E1308058(a3, &qword_1ECEB2AD0);
  sub_1E15BF80C(a1);
  v27 = *(a10 + 16);
  *(a9 + 280) = *a10;
  *(a9 + 296) = v27;
  *(a9 + 312) = *(a10 + 32);
  v28 = *(a11 + 16);
  *(a9 + 320) = *a11;
  *(a9 + 336) = v28;
  *(a9 + 352) = *(a11 + 32);
  *(a9 + 392) = *(a12 + 32);
  v29 = *(a12 + 16);
  *(a9 + 360) = *a12;
  *(a9 + 376) = v29;
  *(a9 + 432) = *(a13 + 32);
  v30 = *(a13 + 16);
  *(a9 + 400) = *a13;
  *(a9 + 416) = v30;
  sub_1E1308EC0(a14, a9 + 440);
  *(a9 + 480) = a15;
  v31 = *(a16 + 16);
  *(a9 + 488) = *a16;
  *(a9 + 504) = v31;
  *(a9 + 520) = *(a16 + 32);
  *(a9 + 528) = a18;
  v32 = *(a17 + 16);
  *(a9 + 536) = *a17;
  *(a9 + 552) = v32;
  *(a9 + 568) = *(a17 + 32);
  *(a9 + 576) = a19;
  *(a9 + 577) = a20;
  __swift_destroy_boxed_opaque_existential_1(a8);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t SmallSearchLockupLayout.Metrics.init(artworkSize:artworkMargin:headingSpace:titleRegularSpace:titleMediumSpace:titleShortSpace:titleWithHeadingSpace:subtitleSpace:tertiaryTitleSpace:offerTextSpace:metadataTextSpace:bottomSpace:offerButtonSize:offerButtonMargin:userRatingRightMargin:editorsChoiceMargin:adButtonRightMargin:descriptionSpace:regularWidthColumnSpacing:descriptionTopMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, __int128 *a21, __int128 *a22, __int128 *a23)
{
  *a9 = a10;
  a9[1] = a11;
  sub_1E1308EC0(a1, (a9 + 2));
  sub_1E1308EC0(a2, (a9 + 7));
  sub_1E1308EC0(a3, (a9 + 12));
  sub_1E1308EC0(a4, (a9 + 17));
  sub_1E1308EC0(a5, (a9 + 22));
  sub_1E1308EC0(a6, (a9 + 27));
  sub_1E1308EC0(a14, (a9 + 42));
  sub_1E1308EC0(a15, (a9 + 47));
  sub_1E1308EC0(a7, (a9 + 32));
  sub_1E1308EC0(a8, (a9 + 37));
  sub_1E1308EC0(a16, (a9 + 52));
  a9[57] = a12;
  a9[58] = a13;
  sub_1E1308EC0(a17, (a9 + 59));
  sub_1E1308EC0(a18, (a9 + 64));
  sub_1E1308EC0(a19, (a9 + 69));
  sub_1E1308EC0(a20, (a9 + 74));
  sub_1E1308EC0(a21, (a9 + 79));
  sub_1E1308EC0(a22, (a9 + 84));

  return sub_1E1308EC0(a23, (a9 + 89));
}

uint64_t SmallSearchLockupLayout.Metrics.artworkMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_1E1308EC0(a1, v1 + 16);
}

uint64_t SmallSearchLockupLayout.Metrics.headingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 56);

  return sub_1E1308EC0(a1, v1 + 56);
}

uint64_t SmallSearchLockupLayout.Metrics.titleRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 96);

  return sub_1E1308EC0(a1, v1 + 96);
}

uint64_t SmallSearchLockupLayout.Metrics.titleMediumSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 136);

  return sub_1E1308EC0(a1, v1 + 136);
}

uint64_t SmallSearchLockupLayout.Metrics.titleShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 176);

  return sub_1E1308EC0(a1, v1 + 176);
}

uint64_t SmallSearchLockupLayout.Metrics.titleWithHeadingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 216);

  return sub_1E1308EC0(a1, v1 + 216);
}

uint64_t SmallSearchLockupLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 256);

  return sub_1E1308EC0(a1, v1 + 256);
}

uint64_t SmallSearchLockupLayout.Metrics.tertiaryTitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 296);

  return sub_1E1308EC0(a1, v1 + 296);
}

uint64_t SmallSearchLockupLayout.Metrics.offerTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 336);

  return sub_1E1308EC0(a1, v1 + 336);
}

uint64_t SmallSearchLockupLayout.Metrics.metadataTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 376);

  return sub_1E1308EC0(a1, v1 + 376);
}

uint64_t SmallSearchLockupLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 416);

  return sub_1E1308EC0(a1, v1 + 416);
}

uint64_t SmallSearchLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 472);

  return sub_1E1308EC0(a1, v1 + 472);
}

uint64_t SmallSearchLockupLayout.Metrics.userRatingRightMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 512);

  return sub_1E1308EC0(a1, v1 + 512);
}

uint64_t SmallSearchLockupLayout.Metrics.editorsChoiceMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 552);

  return sub_1E1308EC0(a1, v1 + 552);
}

uint64_t SmallSearchLockupLayout.Metrics.adButtonRightMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 592);

  return sub_1E1308EC0(a1, v1 + 592);
}

uint64_t SmallSearchLockupLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 632);

  return sub_1E1308EC0(a1, v1 + 632);
}

uint64_t SmallSearchLockupLayout.Metrics.regularWidthColumnSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 672);

  return sub_1E1308EC0(a1, v1 + 672);
}

uint64_t SmallSearchLockupLayout.Metrics.descriptionTopMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 712);

  return sub_1E1308EC0(a1, v1 + 712);
}

double sub_1E15C05CC(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 traitCollection];
  v12 = sub_1E1AF695C();

  v13 = a2;
  if ((v12 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm((v3 + 440), *(v3 + 464));
    v13 = a2;
    if (sub_1E1AF112C())
    {
      __swift_project_boxed_opaque_existential_1Tm((v3 + 1256), *(v3 + 1280));
      sub_1E13BC274();
      sub_1E1AF12DC();
      v15 = v14;
      (*(v7 + 8))(v10, v6);
      v13 = (a2 - v15) * 0.5;
    }
  }

  v16 = [a1 traitCollection];
  v17 = sub_1E1AF698C();

  if ((v17 & 1) == 0)
  {
    v18 = [a1 traitCollection];
    v19 = sub_1E1AF695C();

    if (v19)
    {
      __swift_project_boxed_opaque_existential_1Tm(v3, *(v3 + 24));
      sub_1E1AF11DC();
      v21 = v13 - v20;
      __swift_project_boxed_opaque_existential_1Tm((v3 + 600), *(v3 + 624));
      sub_1E13BC274();
      sub_1E1AF12DC();
      v23 = v22;
      v24 = *(v7 + 8);
      v24(v10, v6);
      v25 = v21 - v23 - *(v3 + 1040);
      __swift_project_boxed_opaque_existential_1Tm((v3 + 1056), *(v3 + 1080));
      sub_1E13BC274();
      sub_1E1AF12DC();
      v27 = v26;
      v24(v10, v6);
      return v25 - v27;
    }
  }

  return v13;
}

double SmallSearchLockupLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E15C05CC(a1, a2);
  v11 = &selRef_setAppleID_;
  v12 = [a1 traitCollection];
  v13 = sub_1E1AF698C();

  if (v13)
  {
    __swift_project_boxed_opaque_existential_1Tm((v3 + 600), *(v3 + 624));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v14 = *(v7 + 8);
    v14(v9, v6);
    __swift_project_boxed_opaque_existential_1Tm((v3 + 1000), *(v3 + 1024));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v14(v9, v6);
    __swift_project_boxed_opaque_existential_1Tm((v3 + 1056), *(v3 + 1080));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v14(v9, v6);
    v11 = &selRef_setAppleID_;
  }

  v15 = [a1 v11[114]];
  v16 = sub_1E1AF695C();

  if ((v16 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm((v3 + 440), *(v3 + 464));
    if (sub_1E1AF112C())
    {
      __swift_project_boxed_opaque_existential_1Tm((v3 + 1256), *(v3 + 1280));
      sub_1E13BC274();
      sub_1E1AF12DC();
      (*(v7 + 8))(v9, v6);
    }
  }

  __swift_project_boxed_opaque_existential_1Tm((v3 + 1296), *(v3 + 1320));
  sub_1E13BC274();
  sub_1E1AF12DC();
  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1Tm((v3 + 440), *(v3 + 464));
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm((v3 + 440), *(v3 + 464));
  if (sub_1E1AF112C())
  {
    v17 = [a1 v11[114]];
    sub_1E1AF695C();
  }

  if (*(v3 + 576) == 1)
  {
    sub_1E134FD1C(v3 + 536, &v19, &qword_1ECEB4E00);
    if (v20)
    {
      sub_1E1308EC0(&v19, v21);
      __swift_project_boxed_opaque_existential_1Tm(v21, v22);
      sub_1E1AF11CC();
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      sub_1E1308058(&v19, &qword_1ECEB4E00);
    }
  }

  if (*(v3 + 528) == 1)
  {
    sub_1E134FD1C(v3 + 488, &v19, &qword_1ECEB4E00);
    if (v20)
    {
      sub_1E1308EC0(&v19, v21);
      __swift_project_boxed_opaque_existential_1Tm(v21, v22);
      sub_1E1AF11CC();
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      sub_1E1308058(&v19, &qword_1ECEB4E00);
    }
  }

  return a2;
}

uint64_t sub_1E15C0E18@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v104 = a2;
  v13 = sub_1E1AF111C();
  v106 = *(v13 - 8);
  v107 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1E1AF191C();
  v95 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v93 = &v89 - v17;
  v18 = sub_1E1AF193C();
  v100 = *(v18 - 8);
  v101 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E1AF745C();
  v109 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v108 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a1 traitCollection];
  v25 = sub_1E1AF695C();

  v26 = [a1 traitCollection];
  v27 = sub_1E1AF695C();

  v28 = a5;
  if ((v27 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm((v7 + 440), *(v7 + 464));
    v28 = a5;
    if (sub_1E1AF112C())
    {
      __swift_project_boxed_opaque_existential_1Tm((v7 + 1256), *(v7 + 1280));
      v29 = v108;
      sub_1E13BC274();
      sub_1E1AF12DC();
      v31 = v30;
      (*(v109 + 8))(v29, v21);
      v28 = (a5 - v31) * 0.5;
    }
  }

  __swift_project_boxed_opaque_existential_1Tm((v7 + 440), *(v7 + 464));
  v142.origin.x = a3;
  v142.origin.y = a4;
  v142.size.width = a5;
  v142.size.height = a6;
  CGRectGetHeight(v142);
  sub_1E1AF11DC();
  v110 = v32;
  sub_1E134FD1C(v7 + 488, v129, &qword_1ECEB4E00);
  if (*(&v129[1] + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(v129, *(&v129[1] + 1));
    v143.origin.x = a3;
    v143.origin.y = a4;
    v143.size.width = a5;
    v143.size.height = a6;
    CGRectGetHeight(v143);
    sub_1E1AF11DC();
    v34 = v33;
    v36 = v35;
    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {
    sub_1E1308058(v129, &qword_1ECEB4E00);
    v34 = 0;
    v36 = 0;
  }

  sub_1E134FD1C(v7 + 536, v129, &qword_1ECEB4E00);
  if (*(&v129[1] + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(v129, *(&v129[1] + 1));
    v144.origin.x = a3;
    v144.origin.y = a4;
    v144.size.width = a5;
    v144.size.height = a6;
    CGRectGetHeight(v144);
    sub_1E1AF11DC();
    v111 = v37;
    v114 = v38;
    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {
    sub_1E1308058(v129, &qword_1ECEB4E00);
    v111 = 0.0;
    v114 = 0.0;
  }

  v99 = v20;
  v145.origin.x = a3;
  v145.origin.y = a4;
  v145.size.width = a5;
  v145.size.height = a6;
  CGRectGetHeight(v145);
  v113 = v28;
  sub_1E1AF6B1C();
  v91 = v40;
  v92 = v39;
  __swift_project_boxed_opaque_existential_1Tm((v7 + 440), *(v7 + 464));
  v41 = sub_1E1AF112C();
  v94 = v25;
  v112 = v36;
  if (v41 & v25)
  {
    __swift_project_boxed_opaque_existential_1Tm((v7 + 1296), *(v7 + 1320));
    v42 = v108;
    sub_1E13BC274();
    sub_1E1AF12DC();
    (*(v109 + 8))(v42, v21);
  }

  v90 = v21;
  v43 = *(v7 + 576);
  sub_1E15BF7D4(v7 + 584, v141);
  sub_1E134FD1C(v7 + 40, v140, &qword_1ECEB2AD0);
  sub_1E1300B24(v7 + 80, v139);
  sub_1E1300B24(v7 + 120, v138);
  sub_1E134FD1C(v7 + 160, v137, &qword_1ECEB2AD0);
  sub_1E134FD1C(v7 + 200, v136, &qword_1ECEB2AD0);
  sub_1E134FD1C(v7 + 280, v135, &qword_1ECEB4E00);
  sub_1E134FD1C(v7 + 320, v134, &qword_1ECEB2AD0);
  sub_1E134FD1C(v7 + 360, v132, &qword_1ECEB4E00);
  sub_1E134FD1C(v7 + 400, v130, &qword_1ECEB4E00);
  v44 = *(v7 + 480);
  v45 = *(v7 + 577) & v43;
  sub_1E15BF7D4(v141, v128);
  sub_1E134FD1C(v140, v126, &qword_1ECEB2AD0);
  sub_1E1300B24(v139, v125);
  sub_1E1300B24(v138, v124);
  sub_1E134FD1C(v137, v122, &qword_1ECEB2AD0);
  sub_1E134FD1C(v136, v120, &qword_1ECEB2AD0);
  sub_1E134FD1C(v135, v118, &qword_1ECEB4E00);
  sub_1E134FD1C(v134, v129, &qword_1ECEB2AD0);
  v46 = *(&v129[1] + 1);
  if (*(&v129[1] + 1))
  {
    v47 = v45;
    v48 = *&v129[2];
    v49 = __swift_project_boxed_opaque_existential_1Tm(v129, *(&v129[1] + 1));
    *(&v116 + 1) = v46;
    v50 = *(v48 + 8);
    v45 = v47;
    v117 = v50;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v115);
    (*(*(v46 - 8) + 16))(boxed_opaque_existential_0, v49, v46);
    sub_1E1308058(v134, &qword_1ECEB2AD0);
    sub_1E1308058(v135, &qword_1ECEB4E00);
    sub_1E1308058(v136, &qword_1ECEB2AD0);
    sub_1E1308058(v137, &qword_1ECEB2AD0);
    __swift_destroy_boxed_opaque_existential_1(v138);
    __swift_destroy_boxed_opaque_existential_1(v139);
    sub_1E1308058(v140, &qword_1ECEB2AD0);
    sub_1E15BF80C(v141);
    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {
    sub_1E1308058(v134, &qword_1ECEB2AD0);
    sub_1E1308058(v135, &qword_1ECEB4E00);
    sub_1E1308058(v136, &qword_1ECEB2AD0);
    sub_1E1308058(v137, &qword_1ECEB2AD0);
    __swift_destroy_boxed_opaque_existential_1(v138);
    __swift_destroy_boxed_opaque_existential_1(v139);
    sub_1E1308058(v140, &qword_1ECEB2AD0);
    sub_1E15BF80C(v141);
    sub_1E1308058(v129, &qword_1ECEB2AD0);
    v115 = 0u;
    v116 = 0u;
    v117 = 0;
  }

  memcpy(v129, v128, 0x2F0uLL);
  v129[47] = v126[0];
  v129[48] = v126[1];
  *&v129[49] = v127;
  sub_1E1308EC0(v125, &v129[49] + 8);
  sub_1E1308EC0(v124, &v129[52]);
  *(&v129[54] + 8) = v122[0];
  *(&v129[55] + 8) = v122[1];
  *(&v129[56] + 1) = v123;
  v129[57] = v120[0];
  v129[58] = v120[1];
  *&v129[59] = v121;
  *(&v129[59] + 8) = v118[0];
  *(&v129[60] + 8) = v118[1];
  *(&v129[61] + 1) = v119;
  v129[62] = v115;
  v129[63] = v116;
  *&v129[64] = v117;
  *(&v129[64] + 8) = v132[0];
  *(&v129[65] + 8) = v132[1];
  *(&v129[66] + 1) = v133;
  v129[67] = v130[0];
  v129[68] = v130[1];
  *&v129[69] = v131;
  BYTE8(v129[69]) = v44;
  BYTE9(v129[69]) = v45 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63B8);
  v52 = swift_allocObject();
  memcpy((v52 + 16), v129, 0x45AuLL);
  *(&v129[1] + 1) = &type metadata for SmallSearchLockupLayout.SmallSearchLockupContentLayout;
  *&v129[2] = sub_1E15C5DC4();
  *&v129[0] = v52;
  sub_1E1300B24(v7, v141);
  sub_1E1300B24(v7 + 600, v128);
  sub_1E1300B24(v7 + 240, v140);
  sub_1E1300B24(v7 + 1056, v139);
  v53 = *MEMORY[0x1E69ABA50];
  v54 = *(v95 + 104);
  v55 = v97;
  v54(v93, v53, v97);
  v54(v98, v53, v55);

  v56 = v99;
  sub_1E1AF192C();
  v57 = v96;
  sub_1E1AF190C();
  v105 = a4;
  v102 = a5;
  v103 = a3;
  if (v94)
  {
    v98 = v34;
    v58 = a6;
    sub_1E1AF10EC();
    v60 = v59;
    sub_1E1AF10EC();
    v62 = v61;
    sub_1E1AF109C();
    v64 = v62 + v63;
    sub_1E1AF10EC();
    sub_1E1AF10EC();
    sub_1E1AF109C();
    sub_1E1AF10EC();
    MinX = v65;
    v146.origin.x = v60;
    v146.origin.y = v64;
    v146.size.width = v111;
    v146.size.height = v114;
    MaxY = CGRectGetMaxY(v146);
    __swift_project_boxed_opaque_existential_1Tm((v7 + 1296), *(v7 + 1320));
    v68 = v108;
    sub_1E13BC274();
    sub_1E1AF12DC();
    v70 = v69;
    (*(v109 + 8))(v68, v90);
    v71 = MaxY + v70;
    v72 = v110;
  }

  else
  {
    v73 = [a1 traitCollection];
    v74 = sub_1E1AF697C();

    if (v74)
    {
      v147.origin.x = a3;
      v147.origin.y = a4;
      v147.size.width = a5;
      v58 = a6;
      v147.size.height = a6;
      MinX = CGRectGetMinX(v147);
    }

    else
    {
      v58 = a6;
      sub_1E1AF10EC();
      v76 = v75;
      sub_1E1AF109C();
      v78 = v76 + v77;
      __swift_project_boxed_opaque_existential_1Tm((v7 + 1256), *(v7 + 1280));
      v79 = v108;
      sub_1E13BC274();
      sub_1E1AF12DC();
      v81 = v80;
      (*(v109 + 8))(v79, v90);
      MinX = v78 + v81;
    }

    sub_1E1AF10EC();
    v83 = v82;
    sub_1E1AF109C();
    v85 = v83 + v84 * 0.5;
    v72 = v110;
    v71 = floor(v85 - v110 * 0.5);
    v98 = 0;
    v111 = 0.0;
    v112 = 0;
    v114 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1Tm((v7 + 440), *(v7 + 464));
  sub_1E1AF116C();
  sub_1E134FD1C(v7 + 536, v129, &qword_1ECEB4E00);
  if (*(&v129[1] + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(v129, *(&v129[1] + 1));
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {
    sub_1E1308058(v129, &qword_1ECEB4E00);
  }

  v86 = v58;
  sub_1E134FD1C(v7 + 488, v129, &qword_1ECEB4E00);
  v87 = v103;
  if (*(&v129[1] + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(v129, *(&v129[1] + 1));
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {
    sub_1E1308058(v129, &qword_1ECEB4E00);
  }

  v148.origin.x = MinX;
  v148.origin.y = v71;
  v148.size.width = v113;
  v148.size.height = v72;
  CGRectGetMaxY(v148);
  sub_1E1AF10EC();
  sub_1E1AF109C();
  v149.origin.x = v87;
  v149.origin.y = v105;
  v149.size.width = v102;
  v149.size.height = v86;
  CGRectGetWidth(v149);
  sub_1E1AF107C();

  (*(v106 + 8))(v57, v107);
  return (*(v100 + 8))(v56, v101);
}

uint64_t sub_1E15C1D14@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v188 = a6;
  v176 = a2;
  v12 = sub_1E1AF111C();
  v177 = *(v12 - 8);
  v178 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1E1AF19AC();
  v15 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  *&v185 = v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v169 - v18;
  v20 = sub_1E1AF1A0C();
  v174 = *(v20 - 8);
  v175 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v179 = v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1E1AF745C();
  v186 = *(v184 - 8);
  v22 = MEMORY[0x1EEE9AC00](v184);
  v183 = v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a1 traitCollection];
  v171 = [v24 horizontalSizeClass];

  v25 = [a1 traitCollection];
  v26 = sub_1E1AF695C();

  v27 = a5;
  if ((v26 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm((v7 + 440), *(v7 + 464));
    v27 = a5;
    if (sub_1E1AF112C())
    {
      __swift_project_boxed_opaque_existential_1Tm((v7 + 1256), *(v7 + 1280));
      v28 = v183;
      sub_1E13BC274();
      sub_1E1AF12DC();
      v30 = v29;
      (*(v186 + 8))(v28, v184);
      v27 = (a5 - v30) * 0.5;
    }
  }

  v189 = a1;
  v31 = sub_1E15C05CC(a1, a5);
  sub_1E15BF7D4(v7 + 584, &v216);
  sub_1E134FD1C(v7 + 40, v215, &qword_1ECEB2AD0);
  sub_1E1300B24(v7 + 80, v214);
  sub_1E1300B24(v7 + 120, v213);
  sub_1E134FD1C(v7 + 160, v212, &qword_1ECEB2AD0);
  sub_1E134FD1C(v7 + 200, v211, &qword_1ECEB2AD0);
  sub_1E134FD1C(v7 + 280, v210, &qword_1ECEB4E00);
  sub_1E134FD1C(v7 + 320, v209, &qword_1ECEB2AD0);
  sub_1E134FD1C(v7 + 360, v207, &qword_1ECEB4E00);
  sub_1E134FD1C(v7 + 400, v205, &qword_1ECEB4E00);
  if (*(v7 + 577))
  {
    v32 = *(v7 + 576);
  }

  else
  {
    v32 = 0;
  }

  v187 = v7;
  v33 = *(v7 + 480);
  sub_1E15BF7D4(&v216, v203);
  sub_1E134FD1C(v215, v201, &qword_1ECEB2AD0);
  sub_1E1300B24(v214, v200);
  sub_1E1300B24(v213, v199);
  sub_1E134FD1C(v212, v197, &qword_1ECEB2AD0);
  sub_1E134FD1C(v211, v195, &qword_1ECEB2AD0);
  sub_1E134FD1C(v210, v193, &qword_1ECEB4E00);
  sub_1E134FD1C(v209, v204, &qword_1ECEB2AD0);
  v34 = *(&v204[1] + 1);
  v181 = v14;
  if (*(&v204[1] + 1))
  {
    v35 = *&v204[2];
    v36 = __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
    *(&v191 + 1) = v34;
    v37 = *(v35 + 8);
    v14 = v181;
    v192 = v37;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v190);
    (*(*(v34 - 8) + 16))(boxed_opaque_existential_0, v36, v34);
    sub_1E1308058(v209, &qword_1ECEB2AD0);
    sub_1E1308058(v210, &qword_1ECEB4E00);
    sub_1E1308058(v211, &qword_1ECEB2AD0);
    sub_1E1308058(v212, &qword_1ECEB2AD0);
    __swift_destroy_boxed_opaque_existential_1(v213);
    __swift_destroy_boxed_opaque_existential_1(v214);
    sub_1E1308058(v215, &qword_1ECEB2AD0);
    sub_1E15BF80C(&v216);
    __swift_destroy_boxed_opaque_existential_1(v204);
  }

  else
  {
    sub_1E1308058(v209, &qword_1ECEB2AD0);
    sub_1E1308058(v210, &qword_1ECEB4E00);
    sub_1E1308058(v211, &qword_1ECEB2AD0);
    sub_1E1308058(v212, &qword_1ECEB2AD0);
    __swift_destroy_boxed_opaque_existential_1(v213);
    __swift_destroy_boxed_opaque_existential_1(v214);
    sub_1E1308058(v215, &qword_1ECEB2AD0);
    sub_1E15BF80C(&v216);
    sub_1E1308058(v204, &qword_1ECEB2AD0);
    v190 = 0u;
    v191 = 0u;
    v192 = 0;
  }

  memcpy(v204, v203, 0x2F0uLL);
  v204[47] = v201[0];
  v204[48] = v201[1];
  *&v204[49] = v202;
  sub_1E1308EC0(v200, &v204[49] + 8);
  sub_1E1308EC0(v199, &v204[52]);
  *(&v204[54] + 8) = v197[0];
  *(&v204[55] + 8) = v197[1];
  *(&v204[56] + 1) = v198;
  v204[57] = v195[0];
  v204[58] = v195[1];
  *&v204[59] = v196;
  *(&v204[59] + 8) = v193[0];
  *(&v204[60] + 8) = v193[1];
  *(&v204[61] + 1) = v194;
  *&v204[64] = v192;
  v204[63] = v191;
  v204[62] = v190;
  *(&v204[64] + 8) = v207[0];
  *(&v204[65] + 8) = v207[1];
  *(&v204[66] + 1) = v208;
  v204[67] = v205[0];
  v204[68] = v205[1];
  *&v204[69] = v206;
  BYTE8(v204[69]) = v33;
  BYTE9(v204[69]) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63B8);
  v39 = swift_allocObject();
  memcpy((v39 + 16), v204, 0x45AuLL);
  swift_beginAccess();
  sub_1E15BF7D4(v39 + 16, v204);
  v40 = v189;
  sub_1E15C5794(v204, v189, v31);
  v42 = v41;
  sub_1E15BF80C(v204);
  v43 = v187;
  if (v42 > *(v187 + 592))
  {
    v44 = v42;
  }

  else
  {
    v44 = *(v187 + 592);
  }

  v45 = v188;
  *&v169[1] = v27;
  v172 = v44;
  sub_1E1AF6B1C();
  *(&v204[1] + 1) = &type metadata for SmallSearchLockupLayout.SmallSearchLockupContentLayout;
  *&v204[2] = sub_1E15C5DC4();
  *&v204[0] = v39;
  sub_1E1300B24(v43, &v216);
  sub_1E1300B24(v43 + 600, v203);
  sub_1E1300B24(v43 + 240, v215);
  sub_1E1300B24(v43 + 1056, v214);
  v46 = *(v15 + 104);
  v47 = v173;
  v46(v19, *MEMORY[0x1E69ABA70], v173);
  v48 = v47;
  v49 = v43;
  v46(*&v185, *MEMORY[0x1E69ABA80], v48);
  v173 = v39;

  sub_1E1AF19EC();
  sub_1E1AF19CC();
  __swift_project_boxed_opaque_existential_1Tm((v43 + 1256), *(v43 + 1280));
  v50 = v183;
  sub_1E13BC274();
  sub_1E1AF12DC();
  v52 = v51;
  v53 = *(v186 + 8);
  v186 += 8;
  v170 = v53;
  v53(v50, v184);
  v218.origin.x = a3;
  v218.origin.y = a4;
  v185 = a5;
  v218.size.width = a5;
  v218.size.height = v45;
  if (CGRectGetWidth(v218) > 0.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63C0);
    v54 = swift_allocObject();
    sub_1E134FD1C(v43 + 160, v204, &qword_1ECEB2AD0);
    v55 = *(&v204[1] + 1);
    if (*(&v204[1] + 1))
    {
      v56 = *&v204[2];
      v57 = __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
      *(v54 + 56) = v55;
      *(v54 + 64) = *(v56 + 8);
      v58 = __swift_allocate_boxed_opaque_existential_0((v54 + 32));
      (*(*(v55 - 8) + 16))(v58, v57, v55);
      __swift_destroy_boxed_opaque_existential_1(v204);
    }

    else
    {
      sub_1E1308058(v204, &qword_1ECEB2AD0);
      *(v54 + 64) = 0;
      *(v54 + 32) = 0u;
      *(v54 + 48) = 0u;
    }

    sub_1E134FD1C(v49 + 200, v204, &qword_1ECEB2AD0);
    v59 = *(&v204[1] + 1);
    if (*(&v204[1] + 1))
    {
      v60 = *&v204[2];
      v61 = __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
      *(v54 + 96) = v59;
      *(v54 + 104) = *(v60 + 8);
      v62 = __swift_allocate_boxed_opaque_existential_0((v54 + 72));
      (*(*(v59 - 8) + 16))(v62, v61, v59);
      __swift_destroy_boxed_opaque_existential_1(v204);
    }

    else
    {
      sub_1E1308058(v204, &qword_1ECEB2AD0);
      *(v54 + 104) = 0;
      *(v54 + 88) = 0u;
      *(v54 + 72) = 0u;
    }

    sub_1E134FD1C(v49 + 360, v54 + 112, &qword_1ECEB4E00);
    sub_1E134FD1C(v49 + 280, v54 + 152, &qword_1ECEB4E00);
    sub_1E134FD1C(v49 + 320, v204, &qword_1ECEB2AD0);
    v63 = *(&v204[1] + 1);
    if (*(&v204[1] + 1))
    {
      v64 = *&v204[2];
      v65 = __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
      *(v54 + 216) = v63;
      *(v54 + 224) = *(v64 + 8);
      v66 = __swift_allocate_boxed_opaque_existential_0((v54 + 192));
      (*(*(v63 - 8) + 16))(v66, v65, v63);
      __swift_destroy_boxed_opaque_existential_1(v204);
    }

    else
    {
      sub_1E1308058(v204, &qword_1ECEB2AD0);
      *(v54 + 224) = 0;
      *(v54 + 192) = 0u;
      *(v54 + 208) = 0u;
    }

    v67 = [v40 traitCollection];
    v68 = sub_1E1AF697C();

    __swift_project_boxed_opaque_existential_1Tm((v49 + 240), *(v49 + 264));
    sub_1E1AF115C();
    if (v68)
    {
      CGRectGetMaxX(*&v69);
    }

    else
    {
      CGRectGetMinX(*&v69);
    }

    __swift_project_boxed_opaque_existential_1Tm((v49 + 1056), *(v49 + 1080));
    v73 = v183;
    sub_1E13BC274();
    sub_1E1AF12DC();
    v170(v73, v184);
    for (i = 32; i != 232; i += 40)
    {
      sub_1E134FD1C(v54 + i, &v216, &qword_1ECEB4E00);
      if (v217)
      {
        sub_1E1308EC0(&v216, v204);
        v75 = [v40 traitCollection];
        v76 = sub_1E1AF697C();

        __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
        __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
        sub_1E1AF115C();
        if (v76)
        {
          CGRectGetMinX(*&v77);
        }

        else
        {
          CGRectGetMaxX(*&v77);
        }

        sub_1E1AF118C();
        __swift_destroy_boxed_opaque_existential_1(v204);
        v40 = v189;
      }

      else
      {
        sub_1E1308058(&v216, &qword_1ECEB4E00);
      }
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v14 = v181;
    v49 = v187;
  }

  v182 = a3;
  v180 = a4;
  if (v171 == 1)
  {
    sub_1E1AF10EC();
    v82 = v81;
    sub_1E1AF10EC();
    v84 = v83;
    sub_1E1AF109C();
    v86 = v85;
    if (*(v49 + 528) == 1)
    {
      sub_1E134FD1C(v49 + 488, &v216, &qword_1ECEB4E00);
      if (v217)
      {
        sub_1E1308EC0(&v216, v204);
        __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
        sub_1E1AF11DC();
        __swift_destroy_boxed_opaque_existential_1(v204);
      }

      else
      {
        sub_1E1308058(&v216, &qword_1ECEB4E00);
      }
    }

    v156 = v84 + v86;
    sub_1E134FD1C(v49 + 488, v204, &qword_1ECEB4E00);
    if (*(&v204[1] + 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      __swift_destroy_boxed_opaque_existential_1(v204);
    }

    else
    {
      sub_1E1308058(v204, &qword_1ECEB4E00);
    }

    v157 = 0.0;
    if (*(v49 + 576) == 1)
    {
      sub_1E134FD1C(v49 + 536, &v216, &qword_1ECEB4E00);
      if (v217)
      {
        sub_1E1308EC0(&v216, v204);
        __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
        sub_1E1AF11DC();
        v157 = v158;
        v160 = v159;
        __swift_destroy_boxed_opaque_existential_1(v204);
LABEL_80:
        sub_1E134FD1C(v49 + 536, v204, &qword_1ECEB4E00);
        if (*(&v204[1] + 1))
        {
          __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
          sub_1E1AF6B1C();
          sub_1E1AF116C();
          __swift_destroy_boxed_opaque_existential_1(v204);
        }

        else
        {
          sub_1E1308058(v204, &qword_1ECEB4E00);
        }

        __swift_project_boxed_opaque_existential_1Tm((v49 + 440), *(v49 + 464));
        sub_1E1AF11DC();
        v138 = v161;
        v140 = v162;
        sub_1E1AF10EC();
        v152 = v163;
        v224.origin.x = v82;
        v224.origin.y = v156;
        v224.size.width = v157;
        v224.size.height = v160;
        MaxY = CGRectGetMaxY(v224);
        __swift_project_boxed_opaque_existential_1Tm((v49 + 1296), *(v49 + 1320));
        v165 = v183;
        sub_1E13BC274();
        sub_1E1AF12DC();
        v167 = v166;
        v170(v165, v184);
        v153 = MaxY + v167;
        goto LABEL_84;
      }

      sub_1E1308058(&v216, &qword_1ECEB4E00);
    }

    v160 = 0.0;
    goto LABEL_80;
  }

  v87 = [v40 traitCollection];
  v88 = sub_1E1AF697C();

  MaxX = 0.0;
  v90 = v185;
  if (v88)
  {
    v219.origin.x = a3;
    v219.origin.y = a4;
    v219.size.width = v185;
    v219.size.height = v188;
    MaxX = CGRectGetMaxX(v219);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63C0);
  v91 = swift_allocObject();
  v92 = *(v49 + 104);
  v93 = *(v49 + 112);
  v94 = __swift_project_boxed_opaque_existential_1Tm((v49 + 80), v92);
  *(v91 + 56) = v92;
  *(v91 + 64) = *(v93 + 8);
  v95 = __swift_allocate_boxed_opaque_existential_0((v91 + 32));
  (*(*(v92 - 8) + 16))(v95, v94, v92);
  v96 = *(v49 + 144);
  v97 = *(v49 + 152);
  v98 = __swift_project_boxed_opaque_existential_1Tm((v49 + 120), v96);
  *(v91 + 96) = v96;
  *(v91 + 104) = *(v97 + 8);
  v99 = __swift_allocate_boxed_opaque_existential_0((v91 + 72));
  (*(*(v96 - 8) + 16))(v99, v98, v96);
  sub_1E134FD1C(v49 + 160, v204, &qword_1ECEB2AD0);
  v100 = *(&v204[1] + 1);
  if (*(&v204[1] + 1))
  {
    v101 = *&v204[2];
    v102 = __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
    *(v91 + 136) = v100;
    *(v91 + 144) = *(v101 + 8);
    v103 = __swift_allocate_boxed_opaque_existential_0((v91 + 112));
    (*(*(v100 - 8) + 16))(v103, v102, v100);
    __swift_destroy_boxed_opaque_existential_1(v204);
  }

  else
  {
    sub_1E1308058(v204, &qword_1ECEB2AD0);
    *(v91 + 144) = 0;
    *(v91 + 112) = 0u;
    *(v91 + 128) = 0u;
  }

  sub_1E134FD1C(v49 + 200, v204, &qword_1ECEB2AD0);
  v104 = *(&v204[1] + 1);
  if (*(&v204[1] + 1))
  {
    v105 = *&v204[2];
    v106 = __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
    *(v91 + 176) = v104;
    *(v91 + 184) = *(v105 + 8);
    v107 = __swift_allocate_boxed_opaque_existential_0((v91 + 152));
    (*(*(v104 - 8) + 16))(v107, v106, v104);
    __swift_destroy_boxed_opaque_existential_1(v204);
  }

  else
  {
    sub_1E1308058(v204, &qword_1ECEB2AD0);
    *(v91 + 184) = 0;
    *(v91 + 168) = 0u;
    *(v91 + 152) = 0u;
  }

  sub_1E134FD1C(v49 + 360, v91 + 192, &qword_1ECEB4E00);
  sub_1E134FD1C(v49 + 280, v91 + 232, &qword_1ECEB4E00);
  sub_1E134FD1C(v49 + 320, v204, &qword_1ECEB2AD0);
  v108 = *(&v204[1] + 1);
  if (*(&v204[1] + 1))
  {
    v109 = *&v204[2];
    v110 = __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
    *(v91 + 296) = v108;
    *(v91 + 304) = *(v109 + 8);
    v111 = __swift_allocate_boxed_opaque_existential_0((v91 + 272));
    (*(*(v108 - 8) + 16))(v111, v110, v108);
    __swift_destroy_boxed_opaque_existential_1(v204);
  }

  else
  {
    sub_1E1308058(v204, &qword_1ECEB2AD0);
    *(v91 + 304) = 0;
    *(v91 + 272) = 0u;
    *(v91 + 288) = 0u;
  }

  for (j = 32; j != 312; j += 40)
  {
    sub_1E134FD1C(v91 + j, &v216, &qword_1ECEB4E00);
    if (v217)
    {
      sub_1E1308EC0(&v216, v204);
      __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
      if (sub_1E1AF112C())
      {
        __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
        if ((sub_1E1AF117C() & 1) == 0)
        {
          v114 = [v40 traitCollection];
          v115 = sub_1E1AF697C();

          __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
          sub_1E1AF115C();
          if (v115)
          {
            MinX = CGRectGetMinX(*&v116);
            if (MinX < MaxX)
            {
              MaxX = MinX;
            }
          }

          else
          {
            v113 = CGRectGetMaxX(*&v116);
            if (MaxX <= v113)
            {
              MaxX = v113;
            }
          }

          v49 = v187;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v204);
    }

    else
    {
      sub_1E1308058(&v216, &qword_1ECEB4E00);
    }
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v121 = [v40 traitCollection];
  v122 = sub_1E1AF697C();

  v123 = a3;
  v124 = a4;
  v125 = v90;
  v126 = v188;
  if (v122)
  {
    v127 = CGRectGetMinX(*&v123);
    __swift_project_boxed_opaque_existential_1Tm((v49 + 240), *(v49 + 264));
    sub_1E1AF115C();
    Width = CGRectGetWidth(v220);
    v129 = MaxX;
    MaxX = v127 + Width;
  }

  else
  {
    v130 = CGRectGetMaxX(*&v123);
    __swift_project_boxed_opaque_existential_1Tm((v49 + 240), *(v49 + 264));
    sub_1E1AF115C();
    v129 = v130 - CGRectGetWidth(v221);
  }

  v131 = v52 + MaxX;
  v132 = v129 - v52;
  sub_1E1AF10EC();
  v134 = v133;
  v135 = v132 - v131;
  __swift_project_boxed_opaque_existential_1Tm((v49 + 440), *(v49 + 464));
  v136 = v172;
  sub_1E1AF11DC();
  v138 = v137;
  v140 = v139;
  v222.origin.x = v131;
  v222.origin.y = v134;
  v222.size.width = v135;
  v222.size.height = v136;
  v141 = CGRectGetMidX(v222) - v138 * 0.5;
  v223.origin.x = v131;
  v223.origin.y = v134;
  v223.size.width = v135;
  v223.size.height = v136;
  v142 = CGRectGetMidY(v223) - v140 * 0.5;
  sub_1E1300B24(v49 + 240, v204);
  __swift_project_boxed_opaque_existential_1Tm(v204, *(&v204[1] + 1));
  v143 = [v40 traitCollection];
  v144 = sub_1E1AF697C();

  v145 = v182;
  v146 = v180;
  v147 = v185;
  v148 = v188;
  if (v144)
  {
    v149 = CGRectGetMinX(*&v145);
  }

  else
  {
    v150 = CGRectGetMaxX(*&v145);
    __swift_project_boxed_opaque_existential_1Tm((v49 + 240), *(v49 + 264));
    sub_1E1AF115C();
    v149 = v150 - v151;
  }

  v152 = floor(v141);
  v153 = floor(v142);
  v154 = sub_1E1AF114C();
  *v155 = v149;
  v154(&v216, 0);
  __swift_destroy_boxed_opaque_existential_1(v204);
  v14 = v181;
LABEL_84:
  __swift_project_boxed_opaque_existential_1Tm((v49 + 440), *(v49 + 464));
  sub_1E1AF116C();
  v225.origin.x = v152;
  v225.origin.y = v153;
  v225.size.width = v138;
  v225.size.height = v140;
  CGRectGetMaxY(v225);
  sub_1E1AF10EC();
  sub_1E1AF109C();
  v226.origin.x = v182;
  v226.origin.y = v180;
  v226.size.width = v185;
  v226.size.height = v188;
  CGRectGetWidth(v226);
  sub_1E1AF107C();

  (*(v177 + 8))(v14, v178);
  return (*(v174 + 8))(v179, v175);
}

uint64_t SmallSearchLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = [a1 traitCollection];
  v13 = sub_1E1AF698C();

  if (v13)
  {

    return sub_1E15C0E18(a1, a2, a3, a4, a5, a6);
  }

  else
  {

    return sub_1E15C1D14(a1, a2, a3, a4, a5, a6);
  }
}

unint64_t sub_1E15C37B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  sub_1E134FD1C(a2 + 768, &v79, &qword_1ECEB2AD0);
  if (!*(&v80 + 1))
  {
    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
  v5 = sub_1E1AF117C();
  __swift_destroy_boxed_opaque_existential_1(&v79);
  if (v5)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  sub_1E134FD1C(a2 + 768, &v79, &qword_1ECEB2AD0);
  if (!*(&v80 + 1))
  {
LABEL_5:
    sub_1E1308058(&v79, &qword_1ECEB2AD0);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
  v6 = sub_1E1AF112C();
  __swift_destroy_boxed_opaque_existential_1(&v79);
LABEL_7:
  sub_1E134FD1C(a2 + 928, &v79, &qword_1ECEB2AD0);
  if (!*(&v80 + 1))
  {
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
  v7 = sub_1E1AF117C();
  __swift_destroy_boxed_opaque_existential_1(&v79);
  if (v7)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  sub_1E134FD1C(a2 + 928, &v79, &qword_1ECEB2AD0);
  if (!*(&v80 + 1))
  {
LABEL_11:
    sub_1E1308058(&v79, &qword_1ECEB2AD0);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
  v8 = sub_1E1AF112C();
  __swift_destroy_boxed_opaque_existential_1(&v79);
LABEL_13:
  sub_1E1300B24(a2 + 848, &v79);
  __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
  v9 = sub_1E1AF117C();
  __swift_destroy_boxed_opaque_existential_1(&v79);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    sub_1E1300B24(a2 + 848, &v79);
    __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
    v10 = sub_1E1AF112C();
    __swift_destroy_boxed_opaque_existential_1(&v79);
  }

  sub_1E134FD1C(a2 + 888, &v79, &qword_1ECEB2AD0);
  v11 = DWORD2(v80);
  if (!*(&v80 + 1))
  {
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
  v12 = sub_1E1AF117C();
  __swift_destroy_boxed_opaque_existential_1(&v79);
  if (v12)
  {
    v11 = 0;
    goto LABEL_22;
  }

  sub_1E134FD1C(a2 + 888, &v79, &qword_1ECEB2AD0);
  v11 = DWORD2(v80);
  if (*(&v80 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
    v11 = sub_1E1AF112C();
    __swift_destroy_boxed_opaque_existential_1(&v79);
  }

  else
  {
LABEL_21:
    sub_1E1308058(&v79, &qword_1ECEB2AD0);
  }

LABEL_22:
  sub_1E134FD1C(a2 + 1088, &v79, &qword_1ECEB4E00);
  v13 = *(&v80 + 1);
  sub_1E1308058(&v79, &qword_1ECEB4E00);
  sub_1E134FD1C(a2 + 1048, &v79, &qword_1ECEB4E00);
  if (!*(&v80 + 1))
  {
LABEL_29:
    sub_1E1308058(&v79, &qword_1ECEB4E00);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
  v14 = sub_1E1AF117C();
  __swift_destroy_boxed_opaque_existential_1(&v79);
  if ((v14 & 1) == 0)
  {
    sub_1E134FD1C(a2 + 1048, &v79, &qword_1ECEB4E00);
    if (*(&v80 + 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
      v15 = sub_1E1AF112C();
      __swift_destroy_boxed_opaque_existential_1(&v79);
      if ((v6 | v8 | v11) & 1) != 0 || v13 || (v15)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    goto LABEL_29;
  }

LABEL_30:
  if (((v6 | v8 | v11) & 1) != 0 || v13)
  {
    goto LABEL_33;
  }

LABEL_32:
  if (*(a2 + 1128) != 1)
  {
    v31 = [a1 traitCollection];
    sub_1E1AF698C();

    sub_1E1300B24(a2 + 808, &v79);
    sub_1E1300B24(a2 + 848, v89);
    sub_1E1300B24(a2 + 272, v86);
    v32 = sub_1E1AF1CDC();
    v33 = MEMORY[0x1E69ABB90];
    a3[3] = v32;
    a3[4] = v33;
    __swift_allocate_boxed_opaque_existential_0(a3);
    return sub_1E1AF1CCC();
  }

LABEL_33:
  sub_1E134FD1C(a2 + 768, &v79, &qword_1ECEB2AD0);
  if (*(&v80 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
    sub_1E1AF146C();
    __swift_destroy_boxed_opaque_existential_1(&v79);
  }

  else
  {
    sub_1E1308058(&v79, &qword_1ECEB2AD0);
  }

  sub_1E134FD1C(a2 + 768, &v79, &qword_1ECEB2AD0);
  if (*(&v80 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
    sub_1E1AF144C();
    __swift_destroy_boxed_opaque_existential_1(&v79);
  }

  else
  {
    sub_1E1308058(&v79, &qword_1ECEB2AD0);
  }

  sub_1E1300B24(a2 + 808, &v79);
  __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
  sub_1E1AF146C();
  __swift_destroy_boxed_opaque_existential_1(&v79);
  sub_1E1300B24(a2 + 808, &v79);
  __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
  sub_1E1AF144C();
  __swift_destroy_boxed_opaque_existential_1(&v79);
  sub_1E1300B24(a2 + 848, &v79);
  __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
  sub_1E1AF146C();
  __swift_destroy_boxed_opaque_existential_1(&v79);
  sub_1E1300B24(a2 + 848, &v79);
  __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
  sub_1E1AF144C();
  __swift_destroy_boxed_opaque_existential_1(&v79);
  sub_1E134FD1C(a2 + 888, &v79, &qword_1ECEB2AD0);
  if (*(&v80 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
    sub_1E1AF146C();
    __swift_destroy_boxed_opaque_existential_1(&v79);
  }

  else
  {
    sub_1E1308058(&v79, &qword_1ECEB2AD0);
  }

  sub_1E134FD1C(a2 + 888, &v79, &qword_1ECEB2AD0);
  if (*(&v80 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
    sub_1E1AF144C();
    __swift_destroy_boxed_opaque_existential_1(&v79);
  }

  else
  {
    sub_1E1308058(&v79, &qword_1ECEB2AD0);
  }

  sub_1E134FD1C(a2 + 768, &v79, &qword_1ECEB2AD0);
  if (*(&v80 + 1))
  {
    sub_1E1308EC0(&v79, v89);
    if (v6)
    {
      v16 = v90;
      v17 = v91;
      v18 = __swift_project_boxed_opaque_existential_1Tm(v89, v90);
      v87 = v16;
      v88 = *(v17 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v86);
      (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v18, v16);
      sub_1E1300B24(a2 + 72, &v82);
      memset(&v84[8], 0, 40);
      sub_1E1300B24(v86, &v79);
      WORD4(v81) = 1;
      v85 = 8;
      __swift_destroy_boxed_opaque_existential_1(v86);
      v20 = sub_1E172D4E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1E172D4E0((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[136 * v22];
      *(v23 + 2) = v79;
      v24 = v80;
      v25 = v81;
      v26 = v83;
      *(v23 + 5) = v82;
      *(v23 + 6) = v26;
      *(v23 + 3) = v24;
      *(v23 + 4) = v25;
      v27 = *v84;
      v28 = *&v84[16];
      v29 = *&v84[32];
      *(v23 + 20) = v85;
      *(v23 + 8) = v28;
      *(v23 + 9) = v29;
      *(v23 + 7) = v27;
      __swift_destroy_boxed_opaque_existential_1(v89);
      v30 = 232;
      goto LABEL_55;
    }

    __swift_destroy_boxed_opaque_existential_1(v89);
    goto LABEL_54;
  }

  sub_1E1308058(&v79, &qword_1ECEB2AD0);
  if ((v6 & 1) == 0)
  {
LABEL_54:
    v20 = MEMORY[0x1E69E7CC0];
    v30 = 192;
    goto LABEL_55;
  }

  v20 = MEMORY[0x1E69E7CC0];
  v30 = 232;
LABEL_55:
  sub_1E1300B24(a2 + v30, v89);
  v35 = *(a2 + 832);
  v36 = *(a2 + 840);
  v37 = __swift_project_boxed_opaque_existential_1Tm((a2 + 808), v35);
  v87 = v35;
  v88 = *(v36 + 8);
  v38 = __swift_allocate_boxed_opaque_existential_0(v86);
  (*(*(v35 - 8) + 16))(v38, v37, v35);
  memset(&v84[8], 0, 40);
  sub_1E1300B24(v86, &v79);
  sub_1E1300B24(v89, &v82);
  WORD4(v81) = 1;
  v85 = 8;
  __swift_destroy_boxed_opaque_existential_1(v86);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1E172D4E0(0, *(v20 + 2) + 1, 1, v20);
  }

  v40 = *(v20 + 2);
  v39 = *(v20 + 3);
  if (v40 >= v39 >> 1)
  {
    v20 = sub_1E172D4E0((v39 > 1), v40 + 1, 1, v20);
  }

  *(v20 + 2) = v40 + 1;
  v41 = &v20[136 * v40];
  *(v41 + 2) = v79;
  v42 = v80;
  v43 = v81;
  v44 = v83;
  *(v41 + 5) = v82;
  *(v41 + 6) = v44;
  *(v41 + 3) = v42;
  *(v41 + 4) = v43;
  v45 = *v84;
  v46 = *&v84[16];
  v47 = *&v84[32];
  *(v41 + 20) = v85;
  *(v41 + 8) = v46;
  *(v41 + 9) = v47;
  *(v41 + 7) = v45;
  if (v10)
  {
    v48 = *(a2 + 872);
    v49 = *(a2 + 880);
    v50 = __swift_project_boxed_opaque_existential_1Tm((a2 + 848), v48);
    v87 = v48;
    v88 = *(v49 + 8);
    v51 = __swift_allocate_boxed_opaque_existential_0(v86);
    (*(*(v48 - 8) + 16))(v51, v50, v48);
    sub_1E1300B24(a2 + 272, &v76);
    sub_1E1300B24(v86, &v79);
    sub_1E1308EC0(&v76, &v82);
    memset(&v84[8], 0, 40);
    WORD4(v81) = 1;
    v85 = 1;
    __swift_destroy_boxed_opaque_existential_1(v86);
    v53 = *(v20 + 2);
    v52 = *(v20 + 3);
    if (v53 >= v52 >> 1)
    {
      v20 = sub_1E172D4E0((v52 > 1), v53 + 1, 1, v20);
    }

    *(v20 + 2) = v53 + 1;
    v54 = &v20[136 * v53];
    *(v54 + 2) = v79;
    v55 = v80;
    v56 = v81;
    v57 = v83;
    *(v54 + 5) = v82;
    *(v54 + 6) = v57;
    *(v54 + 3) = v55;
    *(v54 + 4) = v56;
    v58 = *v84;
    v59 = *&v84[16];
    v60 = *&v84[32];
    *(v54 + 20) = v85;
    *(v54 + 8) = v59;
    *(v54 + 9) = v60;
    *(v54 + 7) = v58;
  }

  sub_1E134FD1C(a2 + 888, &v79, &qword_1ECEB2AD0);
  if (*(&v80 + 1))
  {
    sub_1E1308EC0(&v79, v86);
    if (v11)
    {
      v61 = v87;
      v62 = v88;
      v63 = __swift_project_boxed_opaque_existential_1Tm(v86, v87);
      v77 = v61;
      v78 = *(v62 + 8);
      v64 = __swift_allocate_boxed_opaque_existential_0(&v76);
      (*(*(v61 - 8) + 16))(v64, v63, v61);
      sub_1E1300B24(a2 + 312, v75);
      sub_1E1300B24(&v76, &v79);
      sub_1E1308EC0(v75, &v82);
      memset(&v84[8], 0, 40);
      WORD4(v81) = 1;
      v85 = 1;
      __swift_destroy_boxed_opaque_existential_1(&v76);
      v66 = *(v20 + 2);
      v65 = *(v20 + 3);
      if (v66 >= v65 >> 1)
      {
        v20 = sub_1E172D4E0((v65 > 1), v66 + 1, 1, v20);
      }

      __swift_destroy_boxed_opaque_existential_1(v89);
      *(v20 + 2) = v66 + 1;
      v67 = &v20[136 * v66];
      *(v67 + 2) = v79;
      v68 = v80;
      v69 = v81;
      v70 = v83;
      *(v67 + 5) = v82;
      *(v67 + 6) = v70;
      *(v67 + 3) = v68;
      *(v67 + 4) = v69;
      v71 = *v84;
      v72 = *&v84[16];
      v73 = *&v84[32];
      *(v67 + 20) = v85;
      *(v67 + 8) = v72;
      *(v67 + 9) = v73;
      *(v67 + 7) = v71;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v89);
    }

    __swift_destroy_boxed_opaque_existential_1(v86);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v89);
    sub_1E1308058(&v79, &qword_1ECEB2AD0);
  }

  a3[3] = &type metadata for _VerticalFlowLayout;
  result = sub_1E14DEDDC();
  a3[4] = result;
  *a3 = 0;
  a3[1] = v20;
  return result;
}

uint64_t sub_1E15C4500@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v115 = a3;
  v117 = sub_1E1AF745C();
  v120 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  *&v116 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF1D6C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1E1AF111C();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E15C37B4(a1, a2, v129);
  __swift_project_boxed_opaque_existential_1Tm(v129, v129[3]);
  v121 = a4;
  v112 = a1;
  sub_1E1AF1B7C();
  swift_beginAccess();
  sub_1E1300B24(a2 + 848, &v127);
  __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
  v20 = sub_1E1AF117C();
  __swift_destroy_boxed_opaque_existential_1(&v127);
  if (v20)
  {
    LODWORD(v118) = 0;
  }

  else
  {
    sub_1E1300B24(a2 + 848, &v127);
    __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
    LODWORD(v118) = sub_1E1AF112C();
    __swift_destroy_boxed_opaque_existential_1(&v127);
  }

  sub_1E1AF10EC();
  v22 = v21;
  sub_1E1AF109C();
  v24 = v22 + v23;
  sub_1E1AF110C();
  sub_1E1AF1CFC();
  v26 = v25;
  (*(v15 + 8))(v17, v14);
  v27 = v24 - v26;
  sub_1E1300B24(a2 + 392, &v127);
  __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
  v28 = v116;
  sub_1E13BC274();
  v29 = v112;
  sub_1E1AF12DC();
  v31 = v30;
  v32 = *(*&v120 + 8);
  v33 = v117;
  v32(*&v28, v117);
  v119 = v27 + v31;
  __swift_destroy_boxed_opaque_existential_1(&v127);
  sub_1E1AF10EC();
  v35 = v34;
  v130.origin.x = v121;
  v130.origin.y = a5;
  v130.size.width = a6;
  v130.size.height = a7;
  Width = CGRectGetWidth(v130);
  sub_1E134FD1C(a2 + 1088, &v125, &qword_1ECEB4E00);
  v120 = a5;
  v109 = v32;
  if (v126)
  {
    v111 = Width;
    sub_1E1308EC0(&v125, &v127);
    sub_1E1300B24(a2 + 608, &v125);
    __swift_project_boxed_opaque_existential_1Tm(&v125, v126);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v110 = v37;
    v32(*&v28, v33);
    __swift_destroy_boxed_opaque_existential_1(&v125);
    __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
    sub_1E1AF11CC();
    v39 = v38;
    if ((*(a2 + 1129) & LOBYTE(v118) & 1) != 0 && (v40 = [v29 traitCollection], v41 = sub_1E1AF698C(), v40, (v41 & 1) == 0))
    {
      v118 = v35;
      v42 = [v29 traitCollection];
      v43 = sub_1E1AF697C();

      sub_1E1300B24(a2 + 848, &v125);
      __swift_project_boxed_opaque_existential_1Tm(&v125, v126);
      sub_1E1AF115C();
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      __swift_destroy_boxed_opaque_existential_1(&v125);
      __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
      v52 = v45;
      v53 = v47;
      v54 = v49;
      v55 = v51;
      if (v43)
      {
        CGRectGetMaxX(*&v52);
      }

      else
      {
        CGRectGetMinX(*&v52);
      }

      v131.origin.y = v47;
      v131.size.height = v51;
      v107 = v45;
      v131.origin.x = v45;
      v56 = v47;
      v131.size.width = v49;
      v57 = v49;
      height = v131.size.height;
      CGRectGetMidY(v131);
      sub_1E1AF116C();
      v108 = v57;
      v59 = v110 + v110 + v39 + v57;
      v132.origin.x = v121;
      v132.origin.y = v120;
      v132.size.width = a6;
      v132.size.height = a7;
      if (CGRectGetWidth(v132) < v59)
      {
        v133.origin.x = v121;
        v133.origin.y = v120;
        v133.size.width = a6;
        v133.size.height = a7;
        v108 = v108 - (v59 - CGRectGetWidth(v133));
      }

      __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
      sub_1E1AF115C();
      v28 = v116;
      v35 = v118;
      Width = v111;
      if (v43)
      {
        CGRectGetMinX(*&v60);
        v134.origin.x = v107;
        v134.origin.y = v56;
        v134.size.width = v108;
        v134.size.height = height;
        CGRectGetWidth(v134);
      }

      else
      {
        CGRectGetMaxX(*&v60);
      }

      sub_1E1300B24(a2 + 848, &v125);
      __swift_project_boxed_opaque_existential_1Tm(&v125, v126);
      sub_1E1AF116C();
      __swift_destroy_boxed_opaque_existential_1(&v125);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
      sub_1E1AF10EC();
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      v35 = v35 + v110 + v39;
      Width = v111 - (v110 + v39);
    }

    __swift_destroy_boxed_opaque_existential_1(&v127);
  }

  else
  {
    sub_1E1308058(&v125, &qword_1ECEB4E00);
  }

  sub_1E134FD1C(a2 + 928, &v125, &qword_1ECEB2AD0);
  v118 = v35;
  if (v126)
  {
    sub_1E1308EC0(&v125, &v127);
    __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
    if (sub_1E1AF112C())
    {
      __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
      if ((sub_1E1AF117C() & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
        sub_1E1AF11CC();
        __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
        v35 = v118;
        sub_1E1AF6B1C();
        sub_1E1AF116C();
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v127);
  }

  else
  {
    sub_1E1308058(&v125, &qword_1ECEB2AD0);
  }

  sub_1E134FD1C(a2 + 968, &v125, &qword_1ECEB4E00);
  if (!v126)
  {
    sub_1E1308058(&v125, &qword_1ECEB4E00);
LABEL_35:
    v87 = 0.0;
    goto LABEL_36;
  }

  sub_1E1308EC0(&v125, &v127);
  sub_1E134FD1C(a2 + 1008, &v122, &qword_1ECEB4E00);
  if (!v123)
  {
    sub_1E1308058(&v122, &qword_1ECEB4E00);
LABEL_34:
    __swift_destroy_boxed_opaque_existential_1(&v127);
    goto LABEL_35;
  }

  sub_1E1308EC0(&v122, &v125);
  if (*(a2 + 1128) != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v125);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
  sub_1E1AF11CC();
  v65 = v64;
  v107 = v64;
  v110 = v66;
  v108 = v67;
  __swift_project_boxed_opaque_existential_1Tm(&v125, v126);
  sub_1E1AF11CC();
  v69 = v68;
  v71 = v70;
  v116 = v72;
  v111 = Width;
  v73 = v35 + v65;
  sub_1E1300B24(a2 + 528, &v122);
  __swift_project_boxed_opaque_existential_1Tm(&v122, v123);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v75 = v74;
  v76 = v117;
  v77 = v109;
  v109(*&v28, v117);
  __swift_destroy_boxed_opaque_existential_1(&v122);
  v78 = v119 - (v71 - v116);
  __swift_project_boxed_opaque_existential_1Tm(&v125, v126);
  v105 = v73 + v75;
  v104 = v78;
  v106 = v69;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(&v125, v126);
  sub_1E1AF115C();
  v79 = CGRectGetWidth(v135);
  sub_1E1300B24(a2 + 528, &v122);
  __swift_project_boxed_opaque_existential_1Tm(&v122, v123);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v81 = v80;
  v77(*&v28, v76);
  __swift_destroy_boxed_opaque_existential_1(&v122);
  v116 = v111 - (v79 + v81);
  __swift_project_boxed_opaque_existential_1Tm(&v125, v126);
  sub_1E1AF115C();
  MidY = CGRectGetMidY(v136);
  v83 = v110;
  v84 = MidY + (v110 - v108) * -0.5;
  __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
  v85 = v118;
  v86 = v107;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v137.origin.x = v85;
  v137.origin.y = v84;
  v137.size.width = v86;
  v137.size.height = v83;
  v87 = CGRectGetMidY(v137);
  __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
  sub_1E1AF115C();
  v88 = CGRectGetWidth(v138);
  sub_1E1300B24(a2 + 528, &v122);
  __swift_project_boxed_opaque_existential_1Tm(&v122, v123);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v90 = v89;
  v77(*&v28, v76);
  v91 = v88 + v90;
  __swift_destroy_boxed_opaque_existential_1(&v122);
  v123 = &type metadata for Feature;
  v124 = sub_1E1309EB0();
  LOBYTE(v122) = 10;
  v92 = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(&v122);
  if (v92)
  {
    v139.origin.x = v105;
    v139.origin.y = v104;
    v139.size.width = v106;
    v139.size.height = v71;
    MaxX = CGRectGetMaxX(v139);
    sub_1E1300B24(a2 + 568, &v122);
    __swift_project_boxed_opaque_existential_1Tm(&v122, v123);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v95 = v94;
    v77(*&v28, v76);
    v118 = MaxX + v95;
    __swift_destroy_boxed_opaque_existential_1(&v122);
  }

  Width = v116 - v91;
  __swift_destroy_boxed_opaque_existential_1(&v125);
  __swift_destroy_boxed_opaque_existential_1(&v127);
LABEL_36:
  sub_1E134FD1C(a2 + 1048, &v125, &qword_1ECEB4E00);
  if (v126)
  {
    sub_1E1308EC0(&v125, &v127);
    __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
    sub_1E1AF11CC();
    v99 = v97;
    if (Width >= v96)
    {
      v100 = v96;
    }

    else
    {
      v100 = Width;
    }

    if (v87 > 0.0)
    {
      v140.origin.x = v118;
      v140.origin.y = v119 - (v97 - v98);
      v140.size.width = v100;
      v140.size.height = v99;
      CGRectGetHeight(v140);
    }

    __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
    v101 = v120;
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(&v127);
  }

  else
  {
    sub_1E1308058(&v125, &qword_1ECEB4E00);
    v101 = v120;
  }

  v102 = v121;
  v141.origin.x = v121;
  v141.origin.y = v101;
  v141.size.width = a6;
  v141.size.height = a7;
  CGRectGetWidth(v141);
  v142.origin.x = v102;
  v142.origin.y = v101;
  v142.size.width = a6;
  v142.size.height = a7;
  CGRectGetHeight(v142);
  sub_1E1AF107C();
  (*(v113 + 8))(v19, v114);
  return __swift_destroy_boxed_opaque_existential_1(v129);
}

double sub_1E15C55F8(void *a1, double a2)
{
  v5 = *v2;
  swift_beginAccess();
  sub_1E15BF7D4(v5 + 16, v8);
  v6 = sub_1E15C5794(v8, a1, a2);
  sub_1E15BF80C(v8);
  return v6;
}

uint64_t sub_1E15C5698@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = [a1 traitCollection];
  v13 = sub_1E1AF698C();

  if (v13)
  {

    return sub_1E15C0E18(a1, a2, a3, a4, a5, a6);
  }

  else
  {

    return sub_1E15C1D14(a1, a2, a3, a4, a5, a6);
  }
}

double sub_1E15C5794(void *a1, void *a2, double a3)
{
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 traitCollection];
  v12 = sub_1E1AF698C();

  v13 = (v7 + 8);
  if (v12)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1 + 12, a1[15]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v14 = *v13;
    (*v13)(v10, v6);
    __swift_project_boxed_opaque_existential_1Tm(a1 + 32, a1[35]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v14(v10, v6);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(a1 + 22, a1[25]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v15 = *v13;
    (*v13)(v10, v6);
    __swift_project_boxed_opaque_existential_1Tm(a1 + 32, a1[35]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v15(v10, v6);
    __swift_project_boxed_opaque_existential_1Tm(a1 + 47, a1[50]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v15(v10, v6);
  }

  return a3;
}

uint64_t sub_1E15C5A68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1336))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E15C5AB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1336) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 1336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E15C5C68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 752))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E15C5CB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 744) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 752) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 752) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E15C5DC4()
{
  result = qword_1EE1D97C8;
  if (!qword_1EE1D97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D97C8);
  }

  return result;
}

uint64_t sub_1E15C5E30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1114))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E15C5E78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1112) = 0;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1114) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 1114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E15C5FF0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1E1893F1C(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E15C6124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v28 = a4;
  v6 = a3(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v27 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = v27 - v15;
  v17 = 0;
  v29 = a1;
  v30 = a2;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v27[1] = v7 + 32;
  v27[2] = v7 + 16;
  v27[0] = v7 + 8;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v7 + 16))(v16, *(v29 + 48) + *(v7 + 72) * (v26 | (v25 << 6)), v6);
      (*(v7 + 32))(v10, v16, v6);
      v28(v13, v10);
      result = (*(v7 + 8))(v13, v6);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      return v30;
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
    if (v23)
    {
      v17 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E15C6350(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1E189496C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1E15C6454(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_1E1895698(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1E15C6544(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1E18943C0(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t UserNotificationsManager.SchedulingResult.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E15C66D0()
{
  result = sub_1E1AF5DBC();
  qword_1EE1EB300 = result;
  return result;
}

id static UserNotificationsManager.userNotificationsDidChangeNotification.getter()
{
  if (qword_1EE1EB2F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1EB300;

  return v1;
}

uint64_t sub_1E15C6764()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v4, v0);
  qword_1EE1EB2E0 = sub_1E1AF591C();
  unk_1EE1EB2E8 = MEMORY[0x1E69AB668];
  __swift_allocate_boxed_opaque_existential_0(qword_1EE1EB2C8);
  return sub_1E1AF590C();
}

void *UserNotificationsManager.__allocating_init(objectGraph:rootViewController:)(uint64_t a1, void *a2)
{
  swift_allocObject();
  v4 = sub_1E15D09EC(a1, a2);

  return v4;
}

void *UserNotificationsManager.init(objectGraph:rootViewController:)(uint64_t a1, void *a2)
{
  v3 = sub_1E15D09EC(a1, a2);

  return v3;
}

uint64_t UserNotificationsManager.getIsAuthorized()()
{
  v1 = *v0;
  v2 = sub_1E1AF320C();
  v14 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF324C();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB29F8);
  v8 = sub_1E1AF588C();
  v12 = v0[9];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v1;
  aBlock[4] = sub_1E15D10E0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_33;
  v10 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v7, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v2);
  (*(v5 + 8))(v7, v13);

  return v8;
}

void sub_1E15C6C90(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v3 = sub_1E1AF5DBC();
  v4 = [v2 initWithBundleIdentifier_];

  v6[4] = sub_1E15D1570;
  v6[5] = a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1E15D1698;
  v6[3] = &block_descriptor_159;
  v5 = _Block_copy(v6);

  [v4 getNotificationSettingsWithCompletionHandler_];
  _Block_release(v5);
}

uint64_t sub_1E15C6DA4(void *a1)
{
  if ([a1 authorizationStatus] != 2 && objc_msgSend(a1, sel_authorizationStatus) != 3)
  {
    [a1 authorizationStatus];
  }

  return sub_1E1AF586C();
}

uint64_t sub_1E15C6E60(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13[-v10];
  if (qword_1EE1E3178 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v9 + 8))(v11, v8);
  if (v13[15] == 1)
  {
    return sub_1E15C7200(a3 & 1, a1, a2);
  }

  else
  {
    return a4(a1, a2);
  }
}

uint64_t UserNotificationsManager.hasScheduledNotification(with:)(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBBDD0);
  sub_1E1AF690C();

  v2 = v7;

  sub_1E1AF690C();

  if (*(v7 + 16) <= *(v7 + 16) >> 3)
  {
    sub_1E15CECF0(v7);
  }

  else
  {
    v2 = sub_1E15CF4B4(v7, v7);
  }

  MEMORY[0x1EEE9AC00](v3);

  sub_1E1AF690C();

  v4 = sub_1E15C6350(v7, v2);
  v5 = sub_1E14AACA8(*(a1 + 16), *(a1 + 24), v4);

  return v5 & 1;
}

uint64_t sub_1E15C7200(int a1, uint64_t a2, uint64_t a3)
{
  v82 = a3;
  v79 = sub_1E1AF320C();
  v6 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63D8);
  v83 = sub_1E1AF588C();
  v8 = *(v3 + 88);
  v88 = sub_1E15D1620;
  v89 = 0;
  v90 = v8;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBBDD0);
  sub_1E1AF690C();

  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v81 = a2;
  v77 = sub_1E14AACA8(v11, v10, v91[0]);

  v84 = v3;
  v12 = *(v3 + 96);
  v85 = sub_1E15D1620;
  v86 = 0;
  v87 = v12;

  sub_1E1AF690C();

  v76 = sub_1E14AACA8(v11, v10, v91[0]);

  v80 = a1;
  v75 = v9;
  v74 = v11;
  if (a1)
  {
    v14 = *(v84 + 88);
    v15 = v84;
    MEMORY[0x1EEE9AC00](v13);
    *(&v62 - 4) = sub_1E15D1620;
    *(&v62 - 3) = 0;
    *(&v62 - 2) = v14;

    sub_1E1AF690C();
    v73 = 0;

    v16 = v91[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = v16;
    sub_1E15D0524(v11, v10, isUniquelyReferenced_nonNull_native);

    v64 = &v62;
    v65 = v91[0];
    v19 = *(v15 + 88);
    MEMORY[0x1EEE9AC00](v18);
    *(&v62 - 2) = v20;
    v63 = *(v19 + 16);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v72 = *(v6 + 72);
    v21 = v6;
    v69 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v22 = swift_allocObject();
    v70 = xmmword_1E1B02CC0;
    *(v22 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v91[0] = v22;
    v67 = sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    v68 = sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v23 = v78;
    v24 = v79;
    v25 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v25);
    *(&v62 - 4) = sub_1E15D169C;
    *(&v62 - 3) = (&v62 - 4);
    *(&v62 - 2) = v19;
    sub_1E1AF68FC();

    v26 = *(v21 + 8);
    v73 = v21 + 8;
    v65 = v26;
    v26(v23, v24);

    v28 = v84;
    v29 = *(v84 + 96);
    MEMORY[0x1EEE9AC00](v27);
    *(&v62 - 4) = sub_1E15D1620;
    *(&v62 - 3) = 0;
    *(&v62 - 2) = v29;

    sub_1E1AF690C();

    sub_1E154E6A8(v74, v10);

    v75 = &v62;
    v31 = v91[0];
    v32 = *(v28 + 96);
  }

  else
  {
    v35 = *(v84 + 96);
    v36 = v84;
    MEMORY[0x1EEE9AC00](v13);
    *(&v62 - 4) = sub_1E15D1620;
    *(&v62 - 3) = 0;
    *(&v62 - 2) = v35;

    sub_1E1AF690C();
    v73 = 0;

    v37 = v91[0];
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = v37;
    sub_1E15D0524(v11, v10, v38);

    v64 = &v62;
    v40 = v91[0];
    v41 = *(v36 + 96);
    MEMORY[0x1EEE9AC00](v39);
    *(&v62 - 2) = v40;
    v65 = *(v41 + 16);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v72 = *(v6 + 72);
    v42 = v6;
    v69 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v43 = swift_allocObject();
    v70 = xmmword_1E1B02CC0;
    *(v43 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v91[0] = v43;
    v44 = sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    v63 = v10;
    v67 = v44;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    v68 = sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v23 = v78;
    v24 = v79;
    v45 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v45);
    *(&v62 - 4) = sub_1E15D169C;
    *(&v62 - 3) = (&v62 - 4);
    *(&v62 - 2) = v41;
    sub_1E1AF68FC();

    v46 = *(v42 + 8);
    v73 = v42 + 8;
    v65 = v46;
    v46(v23, v24);

    v48 = v84;
    v49 = *(v84 + 88);
    MEMORY[0x1EEE9AC00](v47);
    *(&v62 - 4) = sub_1E15D1620;
    *(&v62 - 3) = 0;
    *(&v62 - 2) = v49;

    sub_1E1AF690C();

    sub_1E154E6A8(v74, v63);

    v75 = &v62;
    v31 = v91[0];
    v32 = *(v48 + 88);
  }

  MEMORY[0x1EEE9AC00](v30);
  *(&v62 - 2) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = v70;

  sub_1E1AF31FC();
  v91[5] = v33;
  v34 = sub_1E1AF6EEC();
  MEMORY[0x1EEE9AC00](v34);
  *(&v62 - 4) = sub_1E15D169C;
  *(&v62 - 3) = (&v62 - 4);
  *(&v62 - 2) = v32;
  sub_1E1AF68FC();

  v65(v23, v24);

  v79 = sub_1E15CA240();
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  v52 = v83;
  *(v51 + 16) = v50;
  *(v51 + 24) = v52;
  v53 = v80 & 1;
  *(v51 + 32) = v80 & 1;
  v54 = v81;
  *(v51 + 40) = v81;
  v55 = v77 & 1;
  *(v51 + 48) = v77 & 1;
  v56 = v76 & 1;
  *(v51 + 49) = v76 & 1;
  *(v51 + 56) = v82;
  v57 = swift_allocObject();
  swift_weakInit();
  v58 = swift_allocObject();
  *(v58 + 16) = v57;
  *(v58 + 24) = v53;
  *(v58 + 32) = v54;
  *(v58 + 40) = v55;
  *(v58 + 41) = v56;
  *(v58 + 48) = v52;
  v59 = sub_1E13006E4(0, &qword_1EE1E3430);
  swift_unknownObjectRetain();

  swift_retain_n();
  swift_retain_n();
  v60 = sub_1E1AF68EC();
  v91[3] = v59;
  v91[4] = MEMORY[0x1E69AB720];
  v91[0] = v60;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v91);

  return v52;
}

uint64_t sub_1E15C7F94(uint64_t a1, uint64_t a2)
{
  v20 = *v2;
  v5 = sub_1E1AF320C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF324C();
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63D8);
  v12 = sub_1E1AF588C();
  if (UserNotificationsManager.hasScheduledNotification(with:)(a1))
  {
    LOBYTE(aBlock[0]) = 1;
    sub_1E1AF586C();
  }

  else
  {
    v18[1] = v2[9];
    v13 = swift_allocObject();
    v19 = v9;
    v14 = v13;
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v12;
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = v20;
    aBlock[4] = sub_1E15D146C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_140_0;
    v20 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    sub_1E1AF322C();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    sub_1E1AF6EEC();
    v16 = v20;
    MEMORY[0x1E68FF640](0, v11, v8, v20);
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v21 + 8))(v11, v19);
  }

  return v12;
}

uint64_t sub_1E15C832C(uint64_t a1, uint64_t a2)
{
  v20 = *v2;
  v5 = sub_1E1AF320C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF324C();
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63D8);
  v12 = sub_1E1AF588C();
  if (UserNotificationsManager.hasScheduledNotification(with:)(a1))
  {
    v18[1] = v2[9];
    v13 = swift_allocObject();
    v19 = v9;
    v14 = v13;
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v12;
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = v20;
    aBlock[4] = sub_1E15D1224;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_58;
    v20 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    sub_1E1AF322C();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    sub_1E1AF6EEC();
    v16 = v20;
    MEMORY[0x1E68FF640](0, v11, v8, v20);
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v21 + 8))(v11, v19);
  }

  else
  {
    LOBYTE(aBlock[0]) = 1;
    sub_1E1AF586C();
  }

  return v12;
}

void sub_1E15C86C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E1AEFE6C();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v65 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v66 = v12;
    v67 = v15;
    v68 = v10;
    v69 = v9;
    v71 = a4;
    v72 = Strong;
    v73 = a5;
    v74 = a2;
    v20 = objc_allocWithZone(MEMORY[0x1E698CBC0]);
    v21 = sub_1E1AF5DBC();
    v22 = [v20 initWithTitle_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B05090;
    *(inited + 32) = 0x6369706F74;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0xD000000000000014;
    *(inited + 56) = 0x80000001E1B686B0;
    *(inited + 64) = 0x497463656A627573;
    *(inited + 72) = 0xE900000000000064;
    v25 = a3[2];
    v24 = a3[3];
    *(inited + 80) = v25;
    *(inited + 88) = v24;
    *(inited + 96) = 0xD000000000000010;
    *(inited + 104) = 0x80000001E1B686D0;
    *(inited + 112) = 0x6576457070416E69;
    *(inited + 120) = 0xEA0000000000746ELL;
    strcpy((inited + 128), "notificationId");
    *(inited + 143) = -18;
    swift_bridgeObjectRetain_n();
    v26 = [v22 identifier];
    v27 = sub_1E1AF5DFC();
    v29 = v28;

    *(inited + 144) = v27;
    *(inited + 152) = v29;
    v30 = sub_1E13017E4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
    swift_arrayDestroy();
    if (a3[7])
    {
      v31 = sub_1E1AF5DBC();
      [v22 setInformativeText_];
    }

    sub_1E1307FE8(a3 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_artworkUrl, v18);
    v32 = sub_1E1AEFCCC();
    v33 = *(v32 - 8);
    v34 = 0;
    if ((*(v33 + 48))(v18, 1, v32) != 1)
    {
      v34 = sub_1E1AEFBEC();
      (*(v33 + 8))(v18, v32);
    }

    [v22 setArtworkUrl_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63F0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1E1B02CC0;
    v36 = MEMORY[0x1E69E6158];
    *(v35 + 32) = 0xD00000000000002FLL;
    *(v35 + 40) = 0x80000001E1B68350;
    *(v35 + 88) = v36;
    *(v35 + 56) = v36;
    *(v35 + 64) = v25;
    *(v35 + 72) = v24;
    sub_1E13006E4(0, &qword_1ECEB63F8);
    v37 = sub_1E1AF67BC();
    [v22 setUserInfo_];

    [v22 setInterruptionLevel_];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v30;
    sub_1E1598D2C(0xD000000000000013, 0x80000001E1B686F0, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    sub_1E1301A28(aBlock);

    v39 = sub_1E1AF5C6C();

    [v22 setMetricsEvent_];

    v40 = [objc_allocWithZone(MEMORY[0x1E698CBC8]) init];
    v41 = sub_1E1AEFBEC();
    [v40 setDefaultURL_];

    v42 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v30;
    sub_1E1598D2C(0xD000000000000012, 0x80000001E1B68710, 0x707954746E657665, 0xE900000000000065, v42);
    sub_1E1301A28(aBlock);

    v43 = objc_allocWithZone(MEMORY[0x1E698CA08]);
    v44 = sub_1E1AF5C6C();

    v45 = [v43 initWithUnderlyingDictionary_];

    [v40 setMetricsEvent_];
    v70 = v40;
    [v22 setDefaultAction_];
    v46 = [objc_opt_self() standardUserDefaults];
    LOBYTE(v44) = sub_1E15C9120();

    if (v44)
    {
      v47 = v66;
      sub_1E1AEFE5C();
      v48 = v67;
      sub_1E1AEFDEC();
      v49 = *(v68 + 8);
      v50 = v69;
      v49(v47, v69);
      v51 = sub_1E1AEFDBC();
      v49(v48, v50);
    }

    else
    {
      v51 = sub_1E1AEFDBC();
    }

    [v22 setScheduledTime_];

    v54 = objc_opt_self();
    v55 = sub_1E1AF527C();
    v56 = sub_1E1AF5DBC();
    v57 = [v54 postNotification:v22 bag:v55 centerBundleId:v56];
    swift_unknownObjectRelease();

    v58 = swift_allocObject();
    swift_weakInit();
    v59 = swift_allocObject();
    v59[2] = v58;
    v59[3] = a3;
    v60 = v74;
    v59[4] = v71;
    v59[5] = v60;
    v69 = v22;
    v61 = v73;
    v59[6] = v73;
    v79 = sub_1E15D14F4;
    v80 = v59;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1E1302D64;
    v78 = &block_descriptor_147;
    v62 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v57 addSuccessBlock_];
    _Block_release(v62);
    v63 = swift_allocObject();
    *(v63 + 16) = v60;
    *(v63 + 24) = v61;
    v79 = sub_1E15D1524;
    v80 = v63;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1E164F7D4;
    v78 = &block_descriptor_153;
    v64 = _Block_copy(&aBlock);

    [v57 addErrorBlock_];

    _Block_release(v64);
  }

  else
  {
    sub_1E15D123C();
    v52 = swift_allocError();
    *v53 = 1;
    sub_1E1AF584C();
  }
}

uint64_t sub_1E15C9120()
{
  v1 = sub_1E1AF5DBC();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_1E1308058(v7, &qword_1ECEB2DF0);
    return 0;
  }

  return result;
}

uint64_t sub_1E15C9210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E1AF320C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v35 = a3;
    v36 = a4;
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    v14 = *(result + 80);
    MEMORY[0x1EEE9AC00](result);
    v31[-4] = sub_1E15D1620;
    v31[-3] = 0;
    v31[-2] = v14;
    v16 = v15;
    v32 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBBDD0);
    sub_1E1AF690C();
    v31[3] = 0;

    v17 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v17;

    v34 = v12;
    v33 = v13;
    sub_1E15D0524(v12, v13, isUniquelyReferenced_nonNull_native);

    v31[2] = v31;
    v20 = v37;
    v21 = *(v16 + 80);
    MEMORY[0x1EEE9AC00](v19);
    v31[-2] = v20;
    v31[1] = *(v21 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v37 = v22;
    sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v23 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v23);
    v31[-4] = sub_1E15D169C;
    v31[-3] = &v31[-4];
    v31[-2] = v21;
    sub_1E1AF68FC();

    (*(v8 + 8))(v10, v7);

    v24 = [objc_opt_self() defaultCenter];
    if (qword_1EE1EB2F8 != -1)
    {
      swift_once();
    }

    v25 = qword_1EE1EB300;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CD0;
    v37 = 0xD00000000000002FLL;
    v38 = 0x80000001E1B68350;
    v27 = v32;

    v28 = MEMORY[0x1E69E6158];
    sub_1E1AF6F6C();
    *(inited + 96) = v28;
    v29 = v33;
    *(inited + 72) = v34;
    *(inited + 80) = v29;
    v37 = 0xD000000000000032;
    v38 = 0x80000001E1B68380;
    sub_1E1AF6F6C();
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63E8);
    *(inited + 144) = v35;
    swift_unknownObjectRetain();
    sub_1E13609A4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCAA0);
    swift_arrayDestroy();
    v30 = sub_1E1AF5C6C();

    [v24 postNotificationName:v25 object:v27 userInfo:v30];

    LOBYTE(v37) = 0;
    sub_1E1AF586C();
  }

  return result;
}

uint64_t sub_1E15C97F8()
{
  if (qword_1EE1EB2C0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE1EB2C8, qword_1EE1EB2E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v3[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E1308058(v3, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  return sub_1E1AF584C();
}

void sub_1E15C99D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1E15C9B74(a3);
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a3;
    v11[4] = a4;
    v11[5] = a2;
    v11[6] = a5;
    v12 = sub_1E13006E4(0, &qword_1EE1E3430);
    swift_unknownObjectRetain();
    swift_retain_n();

    v13 = sub_1E1AF68EC();
    v16[3] = v12;
    v16[4] = MEMORY[0x1E69AB720];
    v16[0] = v13;
    sub_1E1AF57FC();

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_1E15D123C();
    v14 = swift_allocError();
    *v15 = 1;
    sub_1E1AF584C();
  }
}

uint64_t sub_1E15C9B74(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49D8);
  v4 = sub_1E1AF588C();
  v5 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v6 = sub_1E1AF5DBC();
  v7 = [v5 initWithBundleIdentifier_];

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v4;
  v8[4] = v3;
  v11[4] = sub_1E15D12A0;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E15CD630;
  v11[3] = &block_descriptor_70_1;
  v9 = _Block_copy(v11);

  [v7 getPendingNotificationRequestsWithCompletionHandler_];
  _Block_release(v9);

  return v4;
}

void sub_1E15C9D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v31 = a4;
  v28 = sub_1E1AF320C();
  v7 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v10 = sub_1E1AF5DBC();
  v11 = [v9 initWithBundleIdentifier_];

  v12 = sub_1E1AF620C();
  v32 = v11;
  [v11 removePendingNotificationRequestsWithIdentifiers_];

  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v15 = *(a2 + 80);
  v38[6] = sub_1E15D1620;
  v38[7] = 0;
  v38[8] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBBDD0);
  sub_1E1AF690C();
  v26[1] = 0;

  v29 = v13;
  v30 = v14;
  sub_1E154E6A8(v13, v14);

  v33 = a2;
  v16 = *(a2 + 80);
  v38[2] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v41 = v17;
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  v19 = v27;
  v18 = v28;
  sub_1E1AF6EEC();
  v35 = sub_1E15D169C;
  v36 = v38;
  v37 = v16;
  sub_1E1AF68FC();

  (*(v7 + 8))(v19, v18);

  v20 = [objc_opt_self() defaultCenter];
  if (qword_1EE1EB2F8 != -1)
  {
    swift_once();
  }

  v21 = qword_1EE1EB300;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CD0;
  v39 = 0xD00000000000002FLL;
  v40 = 0x80000001E1B68350;
  v23 = MEMORY[0x1E69E6158];
  sub_1E1AF6F6C();
  *(inited + 96) = v23;
  v24 = v30;
  *(inited + 72) = v29;
  *(inited + 80) = v24;
  v39 = 0xD000000000000032;
  v40 = 0x80000001E1B68380;

  sub_1E1AF6F6C();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63E8);
  *(inited + 144) = v31;
  swift_unknownObjectRetain();
  sub_1E13609A4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCAA0);
  swift_arrayDestroy();
  v25 = sub_1E1AF5C6C();

  [v20 postNotificationName:v21 object:v33 userInfo:v25];

  LOBYTE(v39) = 0;
  sub_1E1AF586C();
}

id sub_1E15CA240()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF320C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF324C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB29F8);
  v11 = sub_1E1AF588C();
  v12 = v0[5];
  if (v12)
  {
    v13 = [v12 ams_DSID];
    if (v13)
    {

      LOBYTE(aBlock[0]) = 1;
      sub_1E1AF586C();
      return v11;
    }
  }

  v25 = v8;
  v26 = v7;
  v14 = [v0[6] frontmostViewController];
  result = [v14 view];
  if (result)
  {
    v16 = result;
    v17 = [result window];

    if (v17)
    {

      sub_1E13006E4(0, &qword_1EE1E3430);
      v24 = sub_1E1AF68EC();
      v18 = swift_allocObject();
      v18[2] = v1;
      v18[3] = v14;
      v18[4] = v11;
      v18[5] = v2;
      aBlock[4] = sub_1E15D1458;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E1302D64;
      aBlock[3] = &block_descriptor_124;
      v19 = _Block_copy(aBlock);

      v23 = v14;

      sub_1E1AF322C();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
      sub_1E1AF6EEC();
      v20 = v24;
      MEMORY[0x1E68FF640](0, v10, v6, v19);
      _Block_release(v19);

      (*(v4 + 8))(v6, v3);
      (*(v25 + 8))(v10, v26);
    }

    else
    {
      if (qword_1EE1EB2C0 != -1)
      {
        swift_once();
      }

      __swift_project_boxed_opaque_existential_1Tm(qword_1EE1EB2C8, qword_1EE1EB2E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();

      sub_1E15D123C();
      v21 = swift_allocError();
      *v22 = 0;
      sub_1E1AF584C();
    }

    return v11;
  }

  __break(1u);
  return result;
}

void sub_1E15CA774(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v14 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (v14)
    {
      v17 = a6 & 1;
      if (a4)
      {
        sub_1E15CB5F4(a5, a8, 1);
        v18 = swift_allocObject();
        *(v18 + 16) = v16;
        *(v18 + 24) = 1;
      }

      else
      {
        sub_1E15CB5F4(a5, a8, 0);
        v18 = swift_allocObject();
        *(v18 + 16) = v16;
        *(v18 + 24) = 0;
      }

      *(v18 + 32) = a5;
      *(v18 + 40) = v17;
      *(v18 + 41) = a7 & 1;
      *(v18 + 48) = a3;
      v19 = sub_1E13006E4(0, &qword_1EE1E3430);
      swift_retain_n();

      v20 = sub_1E1AF68EC();
      v23[3] = v19;
      v23[4] = MEMORY[0x1E69AB720];
      v23[0] = v20;
      sub_1E1AF57FC();

      __swift_destroy_boxed_opaque_existential_1(v23);
    }

    else
    {
      sub_1E15CAA98(a4 & 1, a5, a6 & 1, a7 & 1);
      LOBYTE(v23[0]) = 2;
      sub_1E1AF586C();
    }
  }

  else
  {
    sub_1E15D123C();
    v21 = swift_allocError();
    *v22 = 1;
    sub_1E1AF584C();
  }
}

uint64_t sub_1E15CAA98(char a1, uint64_t a2, int a3, int a4)
{
  v5 = v4;
  LODWORD(v68) = a4;
  LODWORD(v66) = a3;
  v8 = sub_1E1AF320C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v62 - v12;
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v71 = v5;
  v72 = v9;
  v69 = v14;
  v70 = v15;
  if ((a1 & 1) == 0)
  {
    v30 = *(v5 + 96);
    MEMORY[0x1EEE9AC00](v10);
    *(&v62 - 4) = sub_1E15D1620;
    *(&v62 - 3) = 0;
    *(&v62 - 2) = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBBDD0);
    sub_1E1AF690C();
    v65 = 0;

    sub_1E154E6A8(v15, v14);

    v64 = &v62;
    v32 = v74;
    v33 = *(v5 + 96);
    MEMORY[0x1EEE9AC00](v31);
    *(&v62 - 2) = v32;
    v63 = *(v33 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v34 = *(v9 + 80);
    v67 = *(v9 + 72);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v73 = v35;
    sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v36 = v72;
    v37 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v37);
    *(&v62 - 4) = sub_1E15D169C;
    *(&v62 - 3) = (&v62 - 4);
    *(&v62 - 2) = v33;
    v28 = v65;
    sub_1E1AF68FC();

    v65 = *(v36 + 8);
    v65(v13, v8);

    v64 = v34;
    if ((v66 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = &v62 - v12;
  v17 = v8;
  v18 = v14;
  v19 = *(v5 + 88);
  MEMORY[0x1EEE9AC00](v10);
  *(&v62 - 4) = sub_1E15D1620;
  *(&v62 - 3) = 0;
  *(&v62 - 2) = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBBDD0);
  sub_1E1AF690C();
  v65 = 0;

  v20 = v18;
  v8 = v17;
  v13 = v16;
  sub_1E154E6A8(v15, v20);

  v63 = &v62;
  v22 = v74;
  v23 = *(v5 + 88);
  MEMORY[0x1EEE9AC00](v21);
  *(&v62 - 2) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v24 = *(v9 + 80);
  v67 = *(v9 + 72);
  v64 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v73 = v25;
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  v26 = v72;
  v27 = sub_1E1AF6EEC();
  MEMORY[0x1EEE9AC00](v27);
  *(&v62 - 4) = sub_1E15D169C;
  *(&v62 - 3) = (&v62 - 4);
  *(&v62 - 2) = v23;
  v28 = v65;
  sub_1E1AF68FC();

  v65 = *(v26 + 8);
  v65(v16, v8);

  if (v66)
  {
LABEL_5:
    v38 = v71;
    v39 = *(v71 + 88);
    MEMORY[0x1EEE9AC00](result);
    *(&v62 - 4) = sub_1E15D1620;
    *(&v62 - 3) = 0;
    *(&v62 - 2) = v39;
    v40 = v13;
    v41 = v8;
    v42 = v69;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBBDD0);
    sub_1E1AF690C();
    v66 = v28;

    v43 = v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v43;
    v45 = v42;
    v8 = v41;
    v13 = v40;
    sub_1E15D0524(v70, v45, isUniquelyReferenced_nonNull_native);

    v63 = &v62;
    v47 = v74;
    v48 = *(v38 + 88);
    MEMORY[0x1EEE9AC00](v46);
    *(&v62 - 2) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v74 = v49;
    sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v50 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v50);
    *(&v62 - 4) = sub_1E15D169C;
    *(&v62 - 3) = (&v62 - 4);
    *(&v62 - 2) = v48;
    v28 = v66;
    sub_1E1AF68FC();

    v65(v13, v8);
  }

LABEL_6:
  if (v68)
  {
    v51 = v71;
    v52 = *(v71 + 96);
    MEMORY[0x1EEE9AC00](result);
    *(&v62 - 4) = sub_1E15D1620;
    *(&v62 - 3) = 0;
    *(&v62 - 2) = v52;
    v66 = v8;
    v53 = v69;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBBDD0);
    sub_1E1AF690C();
    v68 = v28;

    v54 = v74;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v54;
    sub_1E15D0524(v70, v53, v55);

    v70 = &v62;
    v57 = v74;
    v58 = *(v51 + 96);
    MEMORY[0x1EEE9AC00](v56);
    *(&v62 - 2) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v74 = v59;
    sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v60 = v66;
    v61 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v61);
    *(&v62 - 4) = sub_1E15D169C;
    *(&v62 - 3) = (&v62 - 4);
    *(&v62 - 2) = v58;
    sub_1E1AF68FC();

    v65(v13, v60);
  }

  return result;
}

uint64_t sub_1E15CB5F4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63D8);
  v8 = sub_1E1AF588C();
  sub_1E15CB828(a3, a1);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v7;
  v11 = sub_1E13006E4(0, &qword_1EE1E3430);
  swift_unknownObjectRetain();
  swift_retain_n();

  v12 = sub_1E1AF68EC();
  v14[3] = v11;
  v14[4] = MEMORY[0x1E69AB720];
  v14[0] = v12;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v8;
}

uint64_t sub_1E15CB780(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E15CAA98(a3 & 1, a4, a5 & 1, a6 & 1);
    sub_1E1AF584C();
  }

  return result;
}

uint64_t sub_1E15CB828(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB29F8);
  v5 = sub_1E1AF588C();
  type metadata accessor for JSIntentDispatcher();
  v6 = *(v2 + 16);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v13[0] = 0xD000000000000020;
  v13[1] = 0x80000001E1B685C0;
  v13[2] = v8;
  v13[3] = v7;
  v14 = a1;

  sub_1E1369D40(v13, v6, "AppStoreKit/UserNotificationsManager.swift", 42, 2);
  sub_1E15D13B4(v13);
  v9 = sub_1E13006E4(0, &qword_1EE1E3430);
  swift_retain_n();
  v10 = sub_1E1AF68EC();
  v12[3] = v9;
  v12[4] = MEMORY[0x1E69AB720];
  v12[0] = v10;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v5;
}

void sub_1E15CB9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [objc_opt_self() defaultCenter];
    if (qword_1EE1EB2F8 != -1)
    {
      swift_once();
    }

    v10 = qword_1EE1EB300;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CD0;

    v12 = MEMORY[0x1E69E6158];
    sub_1E1AF6F6C();
    v14 = *(a4 + 16);
    v13 = *(a4 + 24);
    *(inited + 96) = v12;
    *(inited + 72) = v14;
    *(inited + 80) = v13;

    sub_1E1AF6F6C();
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63E8);
    *(inited + 144) = a5;
    swift_unknownObjectRetain();
    sub_1E13609A4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCAA0);
    swift_arrayDestroy();
    v15 = sub_1E1AF5C6C();

    [v9 postNotificationName:v10 object:v8 userInfo:{v15, 0xD000000000000032, 0x80000001E1B68380}];

    sub_1E1AF586C();
  }

  else
  {
    sub_1E15D123C();
    v16 = swift_allocError();
    *v17 = 1;
    sub_1E1AF584C();
  }
}

void sub_1E15CBC3C()
{
  v1 = v0;
  v37 = *v0;
  v2 = sub_1E1AF320C();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF324C();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1EB2C0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE1EB2C8, qword_1EE1EB2E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  v6 = swift_allocObject();
  v44 = xmmword_1E1B02CC0;
  *(v6 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  v7 = v0[5];
  if (v7)
  {
    *&v44 = v1[8];
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = v7;
    v9[4] = v37;
    aBlock[4] = sub_1E15D11EC;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_26_1;
    v10 = _Block_copy(aBlock);
    v11 = v7;

    v12 = v38;
    sub_1E1AF322C();
    v45 = MEMORY[0x1E69E7CC0];
    sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v13 = v41;
    v14 = v43;
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v12, v13, v10);
    _Block_release(v10);

    (*(v42 + 8))(v13, v14);
    (*(v39 + 8))(v12, v40);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(qword_1EE1EB2C8, qword_1EE1EB2E0);
    *(swift_allocObject() + 16) = v44;
    sub_1E1AF382C();
    sub_1E1AF548C();

    v35 = v34;
    v36 = v1;
    v16 = v1[10];
    MEMORY[0x1EEE9AC00](v15);
    v34[-2] = MEMORY[0x1E69E7CD0];
    v34[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v17 = v42;
    v18 = *(v42 + 80);
    v39 = *(v42 + 72);
    v40 = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = v44;

    sub_1E1AF31FC();
    aBlock[0] = v19;
    v38 = sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    v20 = sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v21 = v41;
    v34[1] = v20;
    v22 = v43;
    v23 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v23);
    v34[-4] = sub_1E15D169C;
    v34[-3] = &v34[-4];
    v34[-2] = v16;
    sub_1E1AF68FC();
    v34[0] = 0;
    v42 = *(v17 + 8);
    (v42)(v21, v22);

    v35 = v34;
    v25 = v36[11];
    MEMORY[0x1EEE9AC00](v24);
    v34[-2] = MEMORY[0x1E69E7CD0];
    v26 = swift_allocObject();
    *(v26 + 16) = v44;

    sub_1E1AF31FC();
    aBlock[0] = v26;
    v27 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v27);
    v34[-4] = sub_1E15D169C;
    v34[-3] = &v34[-4];
    v34[-2] = v25;
    v28 = v34[0];
    sub_1E1AF68FC();
    v34[0] = v28;
    (v42)(v21, v22);

    v35 = v34;
    v30 = v36[12];
    MEMORY[0x1EEE9AC00](v29);
    v34[-2] = MEMORY[0x1E69E7CD0];
    v31 = swift_allocObject();
    *(v31 + 16) = v44;

    sub_1E1AF31FC();
    aBlock[0] = v31;
    v32 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v32);
    v34[-4] = sub_1E15D169C;
    v34[-3] = &v34[-4];
    v34[-2] = v30;
    sub_1E1AF68FC();
    (v42)(v21, v22);

    v33 = [objc_opt_self() defaultCenter];
    if (qword_1EE1EB2F8 != -1)
    {
      swift_once();
    }

    [v33 postNotificationName:qword_1EE1EB300 object:v36];
  }
}

void sub_1E15CC5D0()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v3 = sub_1E1AF5DBC();
  v4 = [v2 initWithBundleIdentifier_];

  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v1;
  v7[4] = sub_1E15D1200;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1E15CD630;
  v7[3] = &block_descriptor_43;
  v6 = _Block_copy(v7);

  [v4 getPendingNotificationRequestsWithCompletionHandler_];
  _Block_release(v6);
}

void sub_1E15CC720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + 56);
    v8 = sub_1E1AF5DBC();
    v9 = sub_1E1AF5DBC();
    v10 = [v7 reminderEventsForAccount:a2 service:v8 eventType:v9 networkPolicy:2];

    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = a3;
    v18 = sub_1E15D11F8;
    v19 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_1E15D1698;
    v17 = &block_descriptor_32;
    v12 = _Block_copy(&aBlock);

    [v10 addSuccessBlock_];
    _Block_release(v12);
    v18 = sub_1E15D0824;
    v19 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_1E164F7D4;
    v17 = &block_descriptor_35_1;
    v13 = _Block_copy(&aBlock);

    [v10 addErrorBlock_];
    _Block_release(v13);
  }
}

uint64_t sub_1E15CC940(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E1AF320C();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E1AEFB5C();
  v25 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1E69E7CD0];
  sub_1E1AF6C6C();
  sub_1E1AEFB4C();
  if (v36)
  {
    v30 = xmmword_1E1B02CD0;
    while (1)
    {
      sub_1E1301CF0(&v35, v34);
      sub_1E137A5C4(v34, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v7 = v31;
      if (!*(v31 + 16))
      {
        break;
      }

      v8 = sub_1E13018F8(1701869940, 0xE400000000000000);
      if ((v9 & 1) == 0)
      {
        break;
      }

      sub_1E137A5C4(*(v7 + 56) + 32 * v8, &v33);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      if (v31 == 0x6E6576652D707061 && v32 == 0xEA00000000007374)
      {
      }

      else
      {
        v10 = sub_1E1AF74AC();

        if ((v10 & 1) == 0)
        {
          break;
        }
      }

      if (!*(v7 + 16))
      {
        break;
      }

      v11 = sub_1E13018F8(25705, 0xE200000000000000);
      if ((v12 & 1) == 0)
      {
        break;
      }

      sub_1E137A5C4(*(v7 + 56) + 32 * v11, &v33);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      sub_1E189496C(&v33, v31, v32);
LABEL_19:

      __swift_destroy_boxed_opaque_existential_1(v34);
      sub_1E1AEFB4C();
      if (!v36)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    if (qword_1EE1EB2C0 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE1EB2C8, qword_1EE1EB2E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = v30;
    sub_1E1AF382C();
    sub_1E137A5C4(v34, &v33);
    sub_1E1AF38DC();
    sub_1E1308058(&v33, &qword_1ECEB2DF0);
    sub_1E1AF54AC();
    goto LABEL_19;
  }

LABEL_20:
  v13 = (v25[1])(v6, v26);
  v25 = &v24;
  v26 = a2;
  v14 = *(a2 + 80);
  MEMORY[0x1EEE9AC00](v13);
  *&v30 = v15;
  *(&v24 - 2) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v16 = v28;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  *&v35 = v17;
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  v18 = v27;
  v19 = v29;
  v20 = sub_1E1AF6EEC();
  MEMORY[0x1EEE9AC00](v20);
  *(&v24 - 4) = sub_1E15D169C;
  *(&v24 - 3) = (&v24 - 4);
  *(&v24 - 2) = v14;
  sub_1E1AF68FC();
  (*(v16 + 8))(v18, v19);

  v21 = [objc_opt_self() defaultCenter];
  if (qword_1EE1EB2F8 != -1)
  {
    swift_once();
  }

  [v21 postNotificationName:qword_1EE1EB300 object:v26];

  if (qword_1EE1EB2C0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE1EB2C8, qword_1EE1EB2E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v22 = *(v30 + 16);

  v36 = MEMORY[0x1E69E6530];
  *&v35 = v22;
  sub_1E1AF38BC();
  sub_1E1308058(&v35, &qword_1ECEB2DF0);
  sub_1E1AF548C();
}

void sub_1E15CD170(unint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF320C();
  v5 = *(v4 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1E69E7CD0];
  if (a1 >> 62)
  {
    v27 = v6;
    v10 = sub_1E1AF71CC();
    v6 = v27;
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v6;
  v32 = a2;
  v29 = v9;
  v30 = v5;
  if (v10)
  {
    if (v10 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v10; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E68FFD80](i, a1, v7);
      }

      else
      {
        v12 = *(a1 + 8 * i + 32);
      }

      v13 = v12;
      v14 = [v12 content];
      v15 = [v14 userInfo];

      v16 = sub_1E1AF5C7C();
      v33 = 0xD00000000000002FLL;
      v34 = 0x80000001E1B68350;
      sub_1E1AF6F6C();
      if (*(v16 + 16) && (v17 = sub_1E135FCF4(&v35), (v18 & 1) != 0))
      {
        sub_1E137A5C4(*(v16 + 56) + 32 * v17, v36);
        sub_1E134B88C(&v35);

        if (swift_dynamicCast())
        {
          sub_1E189496C(&v35, v33, v34);
        }

        else
        {
        }
      }

      else
      {

        v6 = sub_1E134B88C(&v35);
      }
    }

    v19 = v37;
    a2 = v32;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CD0];
  }

  v28 = &v28;
  v20 = *(a2 + 80);
  MEMORY[0x1EEE9AC00](v6);
  *(&v28 - 2) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v21 = v30;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v35 = v22;
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  v23 = v29;
  v24 = v31;
  v25 = sub_1E1AF6EEC();
  MEMORY[0x1EEE9AC00](v25);
  *(&v28 - 4) = sub_1E15D169C;
  *(&v28 - 3) = (&v28 - 4);
  *(&v28 - 2) = v20;
  sub_1E1AF68FC();

  (*(v21 + 8))(v23, v24);

  v26 = [objc_opt_self() defaultCenter];
  if (qword_1EE1EB2F8 != -1)
  {
    swift_once();
  }

  [v26 postNotificationName:qword_1EE1EB300 object:v32];
}

uint64_t sub_1E15CD630(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1E13006E4(0, &qword_1ECEB63D0);
  v2 = sub_1E1AF621C();

  v1(v2);
}

unint64_t sub_1E15CD6B4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = result;
  if (result >> 62)
  {
    result = sub_1E1AF71CC();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_24:
    v25 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v26[0] = v25;
    sub_1E1AF586C();
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v25 = MEMORY[0x1E69E7CC0];
    v6 = &selRef_remoteDownloadIdentifiersDidChange_;
    v7 = &selRef_setAppleID_;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E68FFD80](v5, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = [v8 v6[457]];
      v11 = [v10 v7[126]];

      v12 = sub_1E1AF5C7C();
      sub_1E1AF6F6C();
      if (*(v12 + 16) && (v13 = sub_1E135FCF4(v26), (v14 & 1) != 0))
      {
        sub_1E137A5C4(*(v12 + 56) + 32 * v13, v27);
        sub_1E134B88C(v26);

        if (swift_dynamicCast())
        {
          if (*(a2 + 16) == 0xD00000000000002FLL && 0x80000001E1B68350 == *(a2 + 24))
          {

LABEL_17:
            v16 = [v9 identifier];
            v17 = sub_1E1AF5DFC();
            v19 = v18;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1E130C06C(0, *(v25 + 2) + 1, 1, v25);
            }

            v21 = *(v25 + 2);
            v20 = *(v25 + 3);
            if (v21 >= v20 >> 1)
            {
              v25 = sub_1E130C06C((v20 > 1), v21 + 1, 1, v25);
            }

            *(v25 + 2) = v21 + 1;
            v22 = &v25[16 * v21];
            *(v22 + 4) = v17;
            *(v22 + 5) = v19;
            v6 = &selRef_remoteDownloadIdentifiersDidChange_;
            v7 = &selRef_setAppleID_;
            goto LABEL_6;
          }

          v15 = sub_1E1AF74AC();

          if (v15)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {

        sub_1E134B88C(v26);
      }

LABEL_6:
      if (v4 == ++v5)
      {
        goto LABEL_25;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1E15CD9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithAccount:*(a1 + 40) presentingViewController:a2 options:0];
  v7 = [v6 performAuthentication];
  v15 = sub_1E15D1408;
  v16 = a3;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1E15D1698;
  v14 = &block_descriptor_127;
  v8 = _Block_copy(&v11);

  [v7 addSuccessBlock_];
  _Block_release(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v15 = sub_1E15D1464;
  v16 = v9;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1E164F7D4;
  v14 = &block_descriptor_133;
  v10 = _Block_copy(&v11);

  [v7 addErrorBlock_];
  _Block_release(v10);
}

uint64_t sub_1E15CDB74()
{
  if (qword_1EE1EB2C0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE1EB2C8, qword_1EE1EB2E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v3[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38BC();
  sub_1E1308058(v3, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  LOBYTE(v3[0]) = 0;
  return sub_1E1AF586C();
}

void sub_1E15CDD60()
{
  v1 = v0;
  v2 = sub_1E1AF320C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF324C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + 32;
  v10 = *(v0 + 32);
  v25 = *(v11 + 8);
  v12 = [v10 ams_activeiTunesAccount];
  v13 = *(v1 + 40);
  *(v1 + 40) = v12;

  v14 = *(v1 + 40);
  if (v14)
  {
    v15 = [v14 ams_DSID];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v25 ams_DSID];
  v17 = v16;
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_9;
    }

LABEL_13:

LABEL_14:
    sub_1E13006E4(0, &qword_1EE1E3430);
    v24 = sub_1E1AF68EC();
    aBlock[4] = sub_1E15D1624;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_51_0;
    v20 = _Block_copy(aBlock);

    sub_1E1AF322C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    v23 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    sub_1E1AF6EEC();
    v21 = v24;
    MEMORY[0x1E68FF640](0, v9, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v23);
    return;
  }

  if (!v16)
  {
    v17 = v15;
    goto LABEL_13;
  }

  sub_1E13006E4(0, &qword_1EE1E31F0);
  v18 = sub_1E1AF6D0C();

  if ((v18 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v19 = v25;
}

void sub_1E15CE168()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v4[-v2];
  if (qword_1EE1E3178 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  if (v4[15] == 1)
  {
    sub_1E15CBC3C();
  }

  else
  {
    sub_1E15CC5D0();
  }
}

uint64_t sub_1E15CE30C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF320C();
  v15 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF324C();
  v8 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430);
  v11 = sub_1E1AF68EC();
  aBlock[4] = a1;
  v17 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v10, v7, v12);
  _Block_release(v12);

  (*(v15 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v14);
}

void sub_1E15CE5C8(uint64_t a1)
{
  v18 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v23 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v22 = v16 - v2;
  v3 = sub_1E1AF320C();
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 88);
  v34 = MEMORY[0x1E69E7CD0];
  v17 = *(v8 + 16);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v20 = *(v4 + 72);
  v9 = swift_allocObject();
  v19 = xmmword_1E1B02CC0;
  *(v9 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v35 = v9;
  v16[3] = sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  v16[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v30 = sub_1E15D169C;
  v31 = &v33;
  v32 = v8;
  sub_1E1AF68FC();
  v17 = 0;
  v10 = v5 + 8;
  v11 = *(v5 + 8);
  v16[1] = v10;
  v11(v7, v3);

  v12 = *(v18 + 96);
  v29 = MEMORY[0x1E69E7CD0];
  v13 = swift_allocObject();
  *(v13 + 16) = v19;

  sub_1E1AF31FC();
  v35 = v13;
  sub_1E1AF6EEC();
  v25 = sub_1E15D11E8;
  v26 = &v28;
  v27 = v12;
  sub_1E1AF68FC();
  v11(v7, v3);

  if (qword_1EE1E3178 != -1)
  {
    swift_once();
  }

  v14 = v22;
  sub_1E1AF52FC();
  v15 = v24;
  sub_1E1AF532C();
  (*(v23 + 8))(v14, v15);
  if (v35 == 1)
  {
    sub_1E15CBC3C();
  }

  else
  {
    sub_1E15CC5D0();
  }
}

uint64_t sub_1E15CEAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1E15CE30C(a3, a4);
}

id *UserNotificationsManager.deinit()
{

  return v0;
}

uint64_t UserNotificationsManager.__deallocating_deinit()
{
  UserNotificationsManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E15CEBB8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1E154E570(v12, v13, &v14);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1E15CECF0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1E154E6A8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1E15CEE1C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_1E1308058(v11, &unk_1ECEB5670))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1E134E724(*(v2 + 48) + 40 * (v10 | (v9 << 6)), v12);
      sub_1E154E438(v12, v11);
      sub_1E134B88C(v12);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E15CEF44(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1E1AF762C();

    sub_1E1AF5F0C();
    v23 = sub_1E1AF767C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1E1AF74AC() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1E19B812C(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1E1AF762C();

            sub_1E1AF5F0C();
            v41 = sub_1E1AF767C();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1E1AF74AC() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1E15CFED0(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1E6901640](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_1E1337ECC();
    return v5;
  }

  result = MEMORY[0x1E6901640](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1E15CF4B4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1E1AF762C();

    sub_1E1AF5F0C();
    v23 = sub_1E1AF767C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1E1AF74AC() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1E19B8350(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1E1AF762C();

            sub_1E1AF5F0C();
            v41 = sub_1E1AF767C();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1E1AF74AC() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1E15D0108(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1E6901640](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_1E1337ECC();
    return v5;
  }

  result = MEMORY[0x1E6901640](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1E15CFA24(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_1E1AF762C();

    sub_1E1AF5F0C();
    v11 = sub_1E1AF767C();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_1E1AF74AC() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x1EEE9AC00](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_1E19B812C(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_1E1AF762C();

        sub_1E1AF5F0C();
        v33 = sub_1E1AF767C();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_1E1AF74AC() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x1E69E7CD0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_1E15D0340(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x1E6901640](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x1E6901640](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1E15CFED0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1E19B812C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1E1AF762C();

        sub_1E1AF5F0C();
        v19 = sub_1E1AF767C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1E1AF74AC() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1E15D0108(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1E19B8350(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1E1AF762C();

        sub_1E1AF5F0C();
        v19 = sub_1E1AF767C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1E1AF74AC() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1E15D0340(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_1E19B812C(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_1E1AF762C();

        sub_1E1AF5F0C();
        v16 = sub_1E1AF767C();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_1E1AF74AC() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1E15D0524(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  v8 = sub_1E1AF767C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a1 && v12[1] == a2;
      if (v13 || (sub_1E1AF74AC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        v14 = 1;
        v15 = 1;
        goto LABEL_12;
      }
    }

    v15 = 0;
    v14 = 0;
  }

  else
  {
    v15 = 1;
    v14 = 1;
  }

LABEL_12:
  v16 = *(v7 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = *(v7 + 24);
  if (v18 < v17 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E1897458();
    }

    else
    {
      if (v18 >= v17)
      {
        sub_1E189B96C();
        if ((v15 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      sub_1E189D820();
    }

    v19 = *v3;
    sub_1E1AF762C();
    sub_1E1AF5F0C();
    v20 = sub_1E1AF767C();
    v21 = -1 << *(v19 + 32);
    v10 = v20 & ~v21;
    if ((*(v19 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v22 = ~v21;
      while (1)
      {
        v23 = (*(v19 + 48) + 16 * v10);
        v24 = *v23 == a1 && v23[1] == a2;
        if (v24 || (sub_1E1AF74AC() & 1) != 0)
        {
          break;
        }

        v10 = (v10 + 1) & v22;
        if (((*(v19 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_31:
      if (v15)
      {
LABEL_32:
        v25 = *v3;
        *(*v3 + 8 * (v10 >> 6) + 56) |= 1 << v10;
        v26 = (*(v25 + 48) + 16 * v10);
        *v26 = a1;
        v26[1] = a2;
        v27 = *(v25 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (!v28)
        {
          result = 0;
          *(v25 + 16) = v29;
          return result;
        }

        goto LABEL_38;
      }
    }

LABEL_39:
    result = sub_1E1AF756C();
    __break(1u);
    return result;
  }

  if (v15)
  {
    goto LABEL_32;
  }

LABEL_35:
  v31 = (*(*v3 + 48) + 16 * v10);
  result = *v31;
  *v31 = a1;
  v31[1] = a2;
  return result;
}

uint64_t sub_1E15D0790@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a2 + 24);

  a1(&v8, &v7);

  *a3 = v8;
  return result;
}

uint64_t sub_1E15D0824()
{
  if (qword_1EE1EB2C0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE1EB2C8, qword_1EE1EB2E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v3[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E1308058(v3, &qword_1ECEB2DF0);
  sub_1E1AF54AC();
}

void *sub_1E15D09EC(uint64_t a1, void *a2)
{
  v35 = a1;
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v29 - v4;
  v5 = sub_1E1AF68DC();
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v2[5] = 0;
  v2[7] = [objc_allocWithZone(MEMORY[0x1E698CB18]) init];
  v30 = v2;
  v11 = sub_1E13006E4(0, &qword_1EE1E3430);
  v33 = "cationSettings8";
  v34 = v11;
  sub_1E1AF322C();
  v42 = MEMORY[0x1E69E7CC0];
  v32 = sub_1E130292C(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  v12 = *MEMORY[0x1E69E8090];
  v13 = *(v41 + 104);
  v41 += 104;
  v13(v8, v12, v40);
  v2[8] = sub_1E1AF692C();
  sub_1E1AF322C();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  v13(v8, v12, v40);
  v14 = v30;
  v14[9] = sub_1E1AF692C();
  v14[2] = v35;
  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();

  sub_1E1AF55EC();
  v14[3] = v42;
  sub_1E13006E4(0, &qword_1EE1E3480);
  sub_1E1AF55EC();
  v15 = v42;
  v14[4] = v42;
  v16 = v36;
  v14[6] = v36;
  v17 = v16;
  v18 = [v15 ams_activeiTunesAccount];
  v19 = v14[5];
  v14[5] = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6400);
  swift_allocObject();
  v20 = MEMORY[0x1E69E7CD0];
  v14[10] = sub_1E14C5D90(MEMORY[0x1E69E7CD0]);
  swift_allocObject();
  v14[11] = sub_1E14C5D90(v20);
  swift_allocObject();
  v14[12] = sub_1E14C5D90(v20);
  if (qword_1EE1E3178 != -1)
  {
    swift_once();
  }

  v21 = v37;
  sub_1E1AF52FC();
  v22 = v39;
  sub_1E1AF532C();
  v23 = *(v38 + 8);
  v23(v21, v22);
  if (v42 == 1)
  {
    sub_1E15CBC3C();
  }

  else
  {
    sub_1E15CC5D0();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  v23(v21, v22);
  if (v42 == 1)
  {
    v24 = [objc_opt_self() defaultCenter];
    [v24 addObserver:v14 selector:sel_storeAccountDidChange name:*MEMORY[0x1E69597D8] object:v14[4]];

    v25 = sub_1E1AF5DBC();
    v26 = [objc_opt_self() defaultCenter];
    [v26 addObserver:v14 selector:sel_cacheDidUpdate name:v25 object:0 suspensionBehavior:1];
  }

  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v14 selector:sel_appEnteredWhileAppeared name:*MEMORY[0x1E69DDAB0] object:0];

  return v14;
}

unint64_t sub_1E15D110C()
{
  result = qword_1ECEB63C8;
  if (!qword_1ECEB63C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB63C8);
  }

  return result;
}

unint64_t sub_1E15D123C()
{
  result = qword_1ECEB63E0;
  if (!qword_1ECEB63E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB63E0);
  }

  return result;
}

uint64_t objectdestroy_85Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_54Tm(void (*a1)(void), void (*a2)(void))
{

  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return swift_deallocObject();
}

uint64_t sub_1E15D152C(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

unint64_t sub_1E15D158C()
{
  result = qword_1ECEB6408;
  if (!qword_1ECEB6408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6408);
  }

  return result;
}

uint64_t sub_1E15D16AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for SwiftUIArtworkView(0);
  v42 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v43 = v4;
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6428);
  MEMORY[0x1EEE9AC00](v45);
  v47 = (&v38 - v5);
  v46 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6430);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6438);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for SystemArtworkView(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *v1;
  v17 = *(*v1 + 24);
  v50 = *(*v1 + 16);
  v51 = v17;
  if (Artwork.URLTemplate.isSystemImage.getter())
  {
    *v15 = v16;
    v18 = *(v13 + 20);
    *(v15 + v18) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6468);
    swift_storeEnumTagMultiPayload();
    sub_1E15D5508(v15, v12, type metadata accessor for SystemArtworkView);
    swift_storeEnumTagMultiPayload();
    sub_1E15D53D8(&qword_1ECEB6458, type metadata accessor for SystemArtworkView);
    sub_1E15D5420();

    sub_1E1AF259C();
    return sub_1E15D5570(v15, type metadata accessor for SystemArtworkView);
  }

  else
  {
    v38 = v10;
    v39 = v12;
    v40 = v13;
    v41 = v8;
    v21 = *(v1 + 8);
    v20 = *(v1 + 16);
    v22 = *(v1 + 24);
    if (v22 == 1 && (v23 = *(v16 + 24), v50 = *(v16 + 16), v51 = v23, !Artwork.URLTemplate.isBundleImage.getter()))
    {
      v34 = v44;
      sub_1E15D5508(v1, v44, type metadata accessor for SwiftUIArtworkView);
      v35 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v36 = swift_allocObject();
      sub_1E15D64B0(v34, v36 + v35, type metadata accessor for SwiftUIArtworkView);
      v37 = v47;
      *v47 = sub_1E15D5358;
      v37[1] = v36;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6440);
      sub_1E15D53D8(&qword_1ECEB6448, type metadata accessor for SwiftUIArtworkView.SizedContent);
      sub_1E1302CD4(&qword_1ECEB6450, &qword_1ECEB6440);
      v33 = v48;
      sub_1E1AF259C();
    }

    else
    {
      v24 = v3[6];
      v25 = v46;
      v26 = *(v46 + 24);
      v27 = sub_1E1AF2BAC();
      (*(*(v27 - 8) + 16))(&v7[v26], v2 + v24, v27);
      v28 = v2 + v3[7];
      v29 = *(v28 + 16);
      v30 = *(v2 + v3[8]);
      v31 = *(v2 + v3[9]);
      *v7 = v16;
      *(v7 + 1) = v21;
      *(v7 + 2) = v20;
      v7[24] = v22;
      v32 = &v7[v25[7]];
      *v32 = *v28;
      v32[16] = v29;
      v7[v25[8]] = v30;
      v7[v25[9]] = v31;
      sub_1E15D5508(v7, v47, type metadata accessor for SwiftUIArtworkView.SizedContent);
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6440);
      sub_1E15D53D8(&qword_1ECEB6448, type metadata accessor for SwiftUIArtworkView.SizedContent);
      sub_1E1302CD4(&qword_1ECEB6450, &qword_1ECEB6440);
      v33 = v48;
      sub_1E1AF259C();
      sub_1E15D5570(v7, type metadata accessor for SwiftUIArtworkView.SizedContent);
    }

    sub_1E134FD1C(v33, v39, &qword_1ECEB6430);
    swift_storeEnumTagMultiPayload();
    sub_1E15D53D8(&qword_1ECEB6458, type metadata accessor for SystemArtworkView);
    sub_1E15D5420();
    sub_1E1AF259C();
    return sub_1E1308058(v33, &qword_1ECEB6430);
  }
}