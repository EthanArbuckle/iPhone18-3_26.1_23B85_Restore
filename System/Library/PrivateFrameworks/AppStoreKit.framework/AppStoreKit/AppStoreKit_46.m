uint64_t sub_1E1776F70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v5, ObjectType, a2);
    sub_1E1777300(v5, v7);
    v6[0] = v5[0];
    v6[1] = v5[1];
    v6[2] = v5[2];
    v6[3] = v5[3];
    sub_1E139CEA8(v6);
    sub_1E177803C(v7);
    sub_1E139CE5C(v7);
  }

  return result;
}

uint64_t *sub_1E1777030(uint64_t *result)
{
  v3 = *result;
  v2 = result[1];
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage))
  {
    v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_sidepack);
    if (!v4)
    {
      return result;
    }
  }

  if ((*(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) == 0 && !*(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode))
  {

LABEL_28:
  }

  v5 = *(v4 + 24);
  if (v5)
  {
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);

    if (v2)
    {
      if (v6)
      {
        if (v3 == v7 && v6 == v2)
        {
        }

        else
        {
          v9 = sub_1E1AF74AC();

          if ((v9 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v6)
    {

      goto LABEL_20;
    }

LABEL_24:

LABEL_27:
    sub_1E17771CC();
    goto LABEL_28;
  }

  if (!v2)
  {
    goto LABEL_24;
  }

LABEL_17:

LABEL_20:
}

uint64_t sub_1E17771CC()
{
  result = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage);
  if (result)
  {
    v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_sidepack);
    if (!v2)
    {
      return result;
    }
  }

  v3 = v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode;
  *v3 = 0;
  *(v3 + 8) = 0;

  sub_1E1776018();
  v4 = v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v7 = v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_pageTitle;
  v8 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_pageTitle);
  v9 = *(v7 + 8);
  v10 = *(v5 + 32);

  v10(0, v2, v8, v9, ObjectType, v5);

  return swift_unknownObjectRelease();
}

unint64_t sub_1E1777300@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v8 = *result;
  v9 = *(result + 54);
  v10 = v9 >> 12;
  if (v9 >> 12 > 3)
  {
    v11 = v2;
    v4 = *(result + 1) | ((*(result + 5) | (*(result + 7) << 16)) << 32);
    object = *(result + 16);
    v2 = *(result + 32);
    v6 = *(result + 40);
    v12 = *(result + 48);
    v13 = *(result + 49);
    if (v9 >> 12 > 5)
    {
      v5 = *(result + 24);
      if (v10 != 6)
      {
        if (v10 == 7)
        {
          v14._countAndFlagsBits = 0xD000000000000016;
          v14._object = 0x80000001E1B5B260;
          v15._countAndFlagsBits = 0;
          v15._object = 0xE000000000000000;
          v16 = localizedString(_:comment:)(v14, v15);
          result = v16._countAndFlagsBits;
          object = v16._object;
          LOBYTE(v10) = 0;
          v4 = v16._countAndFlagsBits >> 8;
          v17 = 9;
LABEL_31:
          LOBYTE(v8) = result;
          goto LABEL_34;
        }

        v29 = v8 | (v4 << 8);
        v30 = *(result + 56);
        v31 = v12 | (v13 << 8) | ((*(result + 50) | (*(result + 54) << 32)) << 16);
        v32 = object | *(result + 8) | v5;
        if (v32 | v2 | v6 | v30 | v29)
        {
          v33 = 0;
        }

        else
        {
          v33 = v31 == 0x8000000000000000;
        }

        if (!v33)
        {
          v34 = v32 | v2 | v6;
          if (!v30 && v29 == 1 && !v34 && v31 == 0x8000000000000000)
          {
            v35._countAndFlagsBits = 0xD00000000000001CLL;
            v35._object = 0x80000001E1B5B2A0;
            v36._countAndFlagsBits = 0;
            v36._object = 0xE000000000000000;
            v37 = localizedString(_:comment:)(v35, v36);
            result = v37._countAndFlagsBits;
            object = v37._object;
            LOBYTE(v10) = 0;
            v4 = v37._countAndFlagsBits >> 8;
            v17 = 6;
            goto LABEL_31;
          }

          if (!v30 && v29 == 2 && !v34 && v31 == 0x8000000000000000)
          {
            object = 0;
            v5 = 0;
            v2 = 0;
            v6 = 0;
            LOBYTE(v10) = 0;
            LOBYTE(v8) = 0;
            v4 = 0;
            v17 = 12;
            goto LABEL_34;
          }

          if (!v30 && v29 == 3 && !v34 && v31 == 0x8000000000000000)
          {
            v2 = v11;
            v43 = *&v11[OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties];
            if (v43)
            {
              v44 = *(v43 + 72);
              if (*(v44 + 16))
              {

                v45 = sub_1E1595560(12);
                if (v46)
                {
                  v47 = *(v44 + 56) + 16 * v45;
                  v2 = *v47;
                  object = *(v47 + 8);

                  result = v2;
LABEL_60:
                  LOBYTE(v10) = 0;
                  v4 = result >> 8;
                  v17 = 11;
                  goto LABEL_31;
                }

                v2 = v11;
              }
            }

            result = sub_1E1777788();
            object = v54;
            goto LABEL_60;
          }
        }

        result = sub_1E1777788();
        v8 = result;
        object = v48;
        v49 = *&v11[OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties];
        if (v49)
        {
          v50 = *(v49 + 88);
          if (*(v50 + 16))
          {

            v51 = sub_1E1595560(0);
            if (v52)
            {
              v53 = *(v50 + 56) + 16 * v51;
              v5 = *v53;
              v2 = *(v53 + 8);

LABEL_54:
              v6 = 0;
              v17 = 0;
              v4 = v8 >> 8;
              LOBYTE(v10) = 1;
              goto LABEL_34;
            }
          }
        }

        v5 = 0;
        v2 = 0;
        goto LABEL_54;
      }

      v21 = v2;
      v22 = object;
      result = v5;
      v17 = 5;
LABEL_33:
      LOBYTE(v10) = v12;
      goto LABEL_34;
    }

    if (v10 != 4)
    {
      v38 = v2;
      result = object;
      v5 = 0;
      v17 = 5;
      goto LABEL_33;
    }

    if ((v13 & 1) == 0)
    {
      v42 = v2;
      result = object;
      v5 = 0;
      v17 = 1;
      goto LABEL_33;
    }

LABEL_13:
    v18._object = 0x80000001E1B5B2C0;
    v18._countAndFlagsBits = 0xD000000000000018;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v20 = localizedString(_:comment:)(v18, v19);
    result = v20._countAndFlagsBits;
    object = v20._object;
    LOBYTE(v10) = 0;
    v4 = v20._countAndFlagsBits >> 8;
    v17 = 2;
    goto LABEL_31;
  }

  if (v9 >> 12 <= 1)
  {
    if (!v10)
    {
      v17 = 3;
      LOBYTE(v8) = 0;
      goto LABEL_34;
    }

    if ((v8 & 1) == 0)
    {
      v39._countAndFlagsBits = 0xD00000000000001BLL;
      v39._object = 0x80000001E1B5B2E0;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v41 = localizedString(_:comment:)(v39, v40);
      result = v41._countAndFlagsBits;
      object = v41._object;
      LOBYTE(v10) = 0;
      v4 = v41._countAndFlagsBits >> 8;
      v17 = 7;
      goto LABEL_31;
    }

    result = sub_1E177786C();
    v8 = result;
    object = v23;
    v24 = *(v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
    if (v24)
    {
      v25 = *(v24 + 88);
      if (*(v25 + 16))
      {

        v26 = sub_1E1595560(0);
        if (v27)
        {
          v28 = *(v25 + 56) + 16 * v26;
          v5 = *v28;
          v2 = *(v28 + 8);

LABEL_57:
          LOBYTE(v10) = 0;
          v4 = v8 >> 8;
          v17 = 8;
          goto LABEL_34;
        }
      }
    }

    v5 = 0;
    v2 = 0;
    goto LABEL_57;
  }

  if (v10 == 2)
  {
    goto LABEL_13;
  }

  v5 = 0;
  v2 = 0;
  v6 = 0;
  LOBYTE(v10) = 0;
  LOBYTE(v8) = 0;
  v4 = 0;
  object = 1;
  v17 = 1;
LABEL_34:
  *a2 = v8 | (v4 << 8);
  *(a2 + 8) = object;
  *(a2 + 16) = v5;
  *(a2 + 24) = v2;
  *(a2 + 32) = v6;
  *(a2 + 40) = v10 & 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a2 + 72) = 0;
  *(a2 + 73) = v17;
  return result;
}

uint64_t sub_1E1777788()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_1E1595560(0);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }
  }

  v7 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_installAction);
  if (v7 && *(v7 + 24))
  {
    v8 = *(v7 + 16);

    return v8;
  }

  else
  {
    v9._object = 0x80000001E1B5B320;
    v9._countAndFlagsBits = 0xD000000000000015;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    return localizedString(_:comment:)(v9, v10)._countAndFlagsBits;
  }
}

uint64_t sub_1E177786C()
{
  result = 0x6C69662E6C6C6562;
  v2 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties;
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
  if (!v3 || *(v3 + 122) != 1)
  {
    return result;
  }

  v4 = *(v3 + 16);
  if (v4 <= 1)
  {
    v5 = 0x6C69662E6C6C6562;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 0x6C69662E6C6C6562;
LABEL_7:
    v6 = sub_1E1AF74AC();

    if ((v6 & 1) == 0)
    {
      v7 = *(v0 + v2);
      if (!v7)
      {
        return v5;
      }

      v8 = *(v7 + 80);
      if (!*(v8 + 16))
      {
        return v5;
      }

      v9 = sub_1E1595560(0);
      if ((v10 & 1) == 0)
      {
LABEL_17:

        return v5;
      }

LABEL_16:
      v5 = *(*(v8 + 56) + 16 * v9);

      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_13:
  result = 0x72616D6B63656863;
  v11 = *(v0 + v2);
  if (v11)
  {
    v8 = *(v11 + 80);
    if (*(v8 + 16))
    {
      v5 = 0x72616D6B63656863;

      v9 = sub_1E1595560(15);
      if ((v12 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  return result;
}

void sub_1E17779F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_installAction);
  if (v1)
  {
    if (*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 73) <= 2u)
    {
      v2 = v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v2 + 8);
        v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
        if (v4)
        {
          ObjectType = swift_getObjectType();
        }

        else
        {
          ObjectType = 0;
          v9[1] = 0;
          v9[2] = 0;
        }

        v9[0] = v4;
        v9[3] = ObjectType;
        v6 = swift_getObjectType();
        v7 = *(v3 + 8);
        v8 = *(v7 + 8);

        swift_unknownObjectRetain();
        v8(v1, v9, v6, v7);

        swift_unknownObjectRelease();
        sub_1E1308058(v9, &qword_1ECEB2DF0);
      }
    }
  }
}

void sub_1E1777B44()
{
  *&v18[10] = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 58);
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48);
  v17 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32);
  *v18 = v1;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16);
  v15 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v16 = v2;
  if (v18[25] == 5)
  {
    v3 = *(&v16 + 1);
    v4 = *(&v15 + 1);
    v5 = v16;
    sub_1E17771CC();
    sub_1E139CE5C(&v15);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_installAction);
    if (v6)
    {
      if (*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 73) <= 2u)
      {
        v7 = v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = *(v7 + 8);
          v9 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
          if (v9)
          {
            ObjectType = swift_getObjectType();
          }

          else
          {
            ObjectType = 0;
            v14[1] = 0;
            v14[2] = 0;
          }

          v14[0] = v9;
          v14[3] = ObjectType;
          v11 = swift_getObjectType();
          v12 = *(v8 + 8);
          v13 = *(v12 + 8);

          swift_unknownObjectRetain();
          v13(v6, v14, v11, v12);

          swift_unknownObjectRelease();
          sub_1E1308058(v14, &qword_1ECEB2DF0);
        }
      }
    }
  }
}

uint64_t sub_1E1777CD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void sub_1E1777D4C()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E139D134(*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 40), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 56), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 64), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 72));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view);
  sub_1E139CF44(*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 40), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 56), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 64), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 72), HIBYTE(*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 72)));
}

uint64_t InAppPurchaseInstallPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();

  v1 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E139D134(*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 40), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 56), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 64), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 72));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view);
  sub_1E139CF44(*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 40), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 56), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 64), *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 72), HIBYTE(*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 72)));
  return v0;
}

uint64_t InAppPurchaseInstallPagePresenter.__deallocating_deinit()
{
  InAppPurchaseInstallPagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E177803C(__int128 *a1)
{
  v2 = a1;
  v3 = (v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48);
  v17 = *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32);
  v18[0] = v4;
  *(v18 + 10) = *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 58);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16);
  v16[0] = *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v16[1] = v5;
  v19[2] = v17;
  v20[0] = v4;
  *(v20 + 10) = *(v18 + 10);
  v19[0] = v16[0];
  v19[1] = v5;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  *(v3 + 58) = *(a1 + 58);
  v3[2] = v8;
  v3[3] = v9;
  *v3 = v6;
  v3[1] = v7;
  sub_1E139D308(v16, v14);
  sub_1E139D308(v2, v14);
  sub_1E139CE5C(v19);
  v10 = v3[3];
  v14[2] = v3[2];
  v15[0] = v10;
  *(v15 + 10) = *(v3 + 58);
  v11 = v3[1];
  v14[0] = *v3;
  v14[1] = v11;
  sub_1E139D308(v14, &v13);
  LOBYTE(v2) = sub_1E139A298(v14, v16);
  sub_1E139CE5C(v14);
  if ((v2 & 1) == 0)
  {
    sub_1E1776018();
  }

  return sub_1E139CE5C(v16);
}

uint64_t sub_1E1778124(void *a1)
{
  v1 = a1[30];
  if (v1)
  {
    if (*(v1 + 125) == 1 && (v2 = qword_1EE1FA6E0) != 0)
    {
      v3 = a1[2];
      v4 = a1[3];
      v5 = *(v1 + 176);
      v6 = *(v1 + 184);
      swift_beginAccess();
      sub_1E1300B24(v2 + 16, v12);
      v7 = v13;
      v8 = v14;
      __swift_project_boxed_opaque_existential_1Tm(v12, v13);
      v11[0] = v3;
      v11[1] = v4;
      v9 = *(v8 + 32);

      v9(&v15, v11, v5, v6, v7, v8);

      __swift_destroy_boxed_opaque_existential_1(v12);
      LOBYTE(v1) = v15 ^ 1;
      if ((v15 & 0xC0) != 0x40)
      {
        LOBYTE(v1) = 0;
      }
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_1E177823C()
{
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v6[3] = type metadata accessor for InAppPurchaseInstallPagePresenter();
    v6[0] = v0;
    v5 = *(v3 + 48);

    v5(v6, ObjectType, v3);
    swift_unknownObjectRelease();
    return sub_1E1308058(v6, &qword_1ECEB2DF0);
  }

  return result;
}

unint64_t sub_1E1778308()
{
  result = qword_1ECEB8E60;
  if (!qword_1ECEB8E60)
  {
    type metadata accessor for InAppPurchaseInstallPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8E60);
  }

  return result;
}

unint64_t sub_1E1778364()
{
  result = qword_1ECEB8E68;
  if (!qword_1ECEB8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8E68);
  }

  return result;
}

uint64_t type metadata accessor for InAppPurchaseInstallPagePresenter()
{
  result = qword_1EE1FA6B0;
  if (!qword_1EE1FA6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E17784D0()
{
  result = sub_1E1AEFCCC();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1E17786A8(uint64_t a1)
{
  v2 = type metadata accessor for InAppPurchaseInstallPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NSDiffableDataSourceSnapshot.surroundingSections(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  NSDiffableDataSourceSnapshot.section(at:)(result, a4, a1);
  result = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return NSDiffableDataSourceSnapshot.section(at:)(result, a4, a2);
}

uint64_t NSDiffableDataSourceSnapshot.section(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0 || sub_1E1AF1F4C() <= a1)
  {
    v9 = *(a2 + 16);
    v6 = *(*(v9 - 8) + 56);
    v7 = a3;
    v8 = 1;
  }

  else
  {
    sub_1E1AF1F6C();
    v5 = *(a2 + 16);
    sub_1E1AF63BC();

    v6 = *(*(v5 - 8) + 56);
    v7 = a3;
    v8 = 0;
    v9 = v5;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t VideoFillMode.contentMode.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id VideoFillMode.videoGravity.getter()
{
  v1 = MEMORY[0x1E69874F0];
  if (!*v0)
  {
    v1 = MEMORY[0x1E69874E8];
  }

  return *v1;
}

uint64_t VideoFillMode.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t VideoConfiguration.aspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoConfiguration() + 20);

  return sub_1E17789F0(v3, a1);
}

uint64_t type metadata accessor for VideoConfiguration()
{
  result = qword_1EE1EF590;
  if (!qword_1EE1EF590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E17789F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VideoConfiguration.aspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for VideoConfiguration() + 20);

  return sub_1E144E7D4(a1, v3);
}

uint64_t VideoConfiguration.playbackControls.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for VideoConfiguration();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t VideoConfiguration.playbackControls.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for VideoConfiguration();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t VideoConfiguration.autoPlayPlaybackControls.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for VideoConfiguration();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t VideoConfiguration.autoPlayPlaybackControls.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for VideoConfiguration();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t VideoConfiguration.canPlayFullScreen.setter(char a1)
{
  result = type metadata accessor for VideoConfiguration();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t VideoConfiguration.allowsAutoPlay.setter(char a1)
{
  result = type metadata accessor for VideoConfiguration();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t VideoConfiguration.looping.setter(char a1)
{
  result = type metadata accessor for VideoConfiguration();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t VideoConfiguration.roundedCorners.setter(char a1)
{
  result = type metadata accessor for VideoConfiguration();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t VideoConfiguration.deviceCornerRadiusFactor.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for VideoConfiguration();
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, _BYTE *a9@<X8>, uint64_t a10, char a11)
{
  v14 = *a1;
  v15 = *a3;
  v16 = *a4;
  v17 = type metadata accessor for VideoConfiguration();
  v18 = v17[5];
  v19 = sub_1E1AF127C();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[12]];
  *a9 = v14;
  result = sub_1E144E7D4(a2, &a9[v18]);
  *&a9[v17[6]] = v15;
  *&a9[v17[7]] = v16;
  a9[v17[8]] = a5;
  a9[v17[9]] = a6;
  a9[v17[10]] = a7;
  a9[v17[11]] = a8;
  *v20 = a10;
  v20[8] = a11 & 1;
  return result;
}

uint64_t static VideoConfiguration.defaultConfiguration.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_1E1AF127C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = type metadata accessor for VideoConfiguration();
  v8 = v7[5];
  v6(&a1[v8], 1, 1, v5);
  v9 = &a1[v7[12]];
  *a1 = 1;
  result = sub_1E144E7D4(v4, &a1[v8]);
  *&a1[v7[6]] = 15;
  *&a1[v7[7]] = 15;
  a1[v7[8]] = 0;
  a1[v7[9]] = 1;
  a1[v7[10]] = 1;
  a1[v7[11]] = 0;
  *v9 = 0;
  v9[8] = 1;
  return result;
}

uint64_t _s11AppStoreKit18VideoConfigurationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1E1AF127C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8E80);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v25 = type metadata accessor for VideoConfiguration();
  v14 = v25[5];
  v15 = *(v11 + 48);
  sub_1E17789F0(&a1[v14], v13);
  sub_1E17789F0(&a2[v14], &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1E17789F0(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1E1779770();
      v17 = sub_1E1AF5DAC();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1E1308058(v13, &qword_1ECEB2AD8);
      if (v17)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1E1308058(v13, &qword_1ECEB8E80);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1E1308058(v13, &qword_1ECEB2AD8);
LABEL_9:
  if (*&a1[v25[6]] != *&a2[v25[6]] || *&a1[v25[7]] != *&a2[v25[7]] || a1[v25[8]] != a2[v25[8]] || a1[v25[9]] != a2[v25[9]] || a1[v25[10]] != a2[v25[10]] || a1[v25[11]] != a2[v25[11]])
  {
    return 0;
  }

  v20 = v25[12];
  v21 = &a1[v20];
  v22 = a1[v20 + 8];
  v23 = &a2[v20];
  result = v23[8];
  if ((v22 & 1) == 0)
  {
    return (*v21 == *v23) & ~result;
  }

  return result;
}

unint64_t sub_1E1779584()
{
  result = qword_1ECEB8E78;
  if (!qword_1ECEB8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8E78);
  }

  return result;
}

void sub_1E1779610()
{
  sub_1E17796C8();
  if (v0 <= 0x3F)
  {
    sub_1E1779720();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E17796C8()
{
  if (!qword_1EE1E3CE8)
  {
    sub_1E1AF127C();
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1E3CE8);
    }
  }
}

void sub_1E1779720()
{
  if (!qword_1EE1D2600)
  {
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D2600);
    }
  }
}

unint64_t sub_1E1779770()
{
  result = qword_1EE1D2AC8;
  if (!qword_1EE1D2AC8)
  {
    sub_1E1AF127C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2AC8);
  }

  return result;
}

uint64_t SearchResultsLearnMoreNotice.__allocating_init(id:linkableText:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  sub_1E138853C(a1, &v15);
  if (*(&v16 + 1))
  {
    sub_1E13E2E98(a1);
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    sub_1E1AEFE9C();
    v9 = sub_1E1AEFE7C();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    v14[1] = v9;
    v14[2] = v11;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v15);
  }

  v12 = v19;
  *(v8 + 24) = v18;
  *(v8 + 40) = v12;
  *(v8 + 56) = v20;
  *(v8 + 16) = a2;
  return v8;
}

uint64_t SearchResultsLearnMoreNotice.init(id:linkableText:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v16);
  if (*(&v17 + 1))
  {
    sub_1E13E2E98(a1);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    sub_1E1AEFE9C();
    v10 = sub_1E1AEFE7C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    v15[1] = v10;
    v15[2] = v12;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v16);
  }

  v13 = v20;
  *(v3 + 24) = v19;
  *(v3 + 40) = v13;
  *(v3 + 56) = v21;
  *(v3 + 16) = a2;
  return v3;
}

uint64_t SearchResultsLearnMoreNotice.deinit()
{

  sub_1E134B88C(v0 + 24);
  return v0;
}

uint64_t SearchResultsLearnMoreNotice.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1779B48@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E1779B74(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1779B74(char *a1, uint64_t a2)
{
  v41 = a2;
  v38 = sub_1E1AF39DC();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AEFEAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v45 = a1;
  sub_1E1AF381C();
  v16 = sub_1E1AF37CC();
  v39 = v9;
  v37 = v10;
  if (v17)
  {
    v42 = v16;
    v43 = v17;
  }

  else
  {
    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v19 = v6;
    v20 = v4;
    v22 = v21;
    (*(v19 + 8))(v8, v5);
    v42 = v18;
    v43 = v22;
    v4 = v20;
  }

  sub_1E1AF6F6C();
  v23 = *(v10 + 8);
  v23(v15, v9);
  v24 = v45;
  sub_1E1AF381C();
  v25 = v36;
  v26 = v4;
  v27 = v41;
  v28 = v4;
  v29 = v38;
  (*(v36 + 16))(v26, v41, v38);
  type metadata accessor for LinkableText();
  v30 = swift_allocObject();
  v31 = v40;
  v32 = LinkableText.init(deserializing:using:)(v12, v28);
  if (v31)
  {
    (*(v25 + 8))(v27, v29);
    v23(v24, v39);
    sub_1E13E2E98(v44);
  }

  else
  {
    v33 = v32;
    type metadata accessor for SearchResultsLearnMoreNotice();
    v30 = swift_allocObject();
    SearchResultsLearnMoreNotice.init(id:linkableText:)(v44, v33);
    (*(v25 + 8))(v27, v29);
    v23(v24, v39);
  }

  return v30;
}

unint64_t sub_1E1779F20()
{
  result = qword_1ECEB8E88;
  if (!qword_1ECEB8E88)
  {
    type metadata accessor for SearchResultsLearnMoreNotice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8E88);
  }

  return result;
}

uint64_t sub_1E1779FEC(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v4 = sub_1E1AF320C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1E1AF324C();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF31DC();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8E98);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = sub_1E1AF2FDC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  v18 = *(v10 + 48);
  v19 = sub_1E1AF316C();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v15[v18], v47, v19);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22 = *(Strong + 32);
      v23 = *(Strong + 40);
      v37 = v2;
      v38 = v22;
      v47 = Strong;
      sub_1E177FA18(v15, v12);

      sub_1E1AF2F9C();
      (*(v17 + 8))(v12, v16);
      aBlock[0] = sub_1E1AF31AC();
      v24 = sub_1E1AF742C();
      v26 = v25;
      (*(v45 + 8))(v9, v46);
      if (v38 == v24 && v23 == v26)
      {

        (*(v20 + 8))(&v12[*(v10 + 48)], v19);
      }

      else
      {
        v27 = sub_1E1AF74AC();

        (*(v20 + 8))(&v12[*(v10 + 48)], v19);
        if ((v27 & 1) == 0)
        {
          sub_1E1308058(v15, &qword_1ECEB8E98);
        }
      }

      sub_1E1361A80();
      v28 = sub_1E1AF68EC();
      v29 = swift_allocObject();
      v30 = v47;
      *(v29 + 16) = v37;
      *(v29 + 24) = v30;
      aBlock[4] = sub_1E177FA88;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E1302D64;
      aBlock[3] = &block_descriptor_64;
      v31 = _Block_copy(aBlock);

      v32 = v39;
      sub_1E1AF322C();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E177FABC(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FE650();
      v33 = v41;
      v34 = v44;
      sub_1E1AF6EEC();
      MEMORY[0x1E68FF640](0, v32, v33, v31);
      _Block_release(v31);

      (*(v43 + 8))(v33, v34);
      (*(v40 + 8))(v32, v42);
    }
  }

  return sub_1E1308058(v15, &qword_1ECEB8E98);
}

uint64_t sub_1E177A5DC()
{
  sub_1E1337DEC(v0 + 16);

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1E177A66C(__int128 *a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E1AF316C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E1AF2FAC();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = sub_1E1AF2FDC();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v45 = *a1;
  v46 = v12;
  v13 = a1[3];
  v47 = a1[2];
  v48 = v13;
  v14 = *(v1[2] + 16);
  v15 = v1[4];
  v16 = v1[5];
  *&v37 = v15;
  *(&v37 + 1) = v16;
  v31 = v14;

  AdamId.numberValue.getter();
  if (v17)
  {
    sub_1E1AF31BC();
  }

  else
  {
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    sub_1E1AF6FEC();

    *&v37 = 0xD000000000000017;
    *(&v37 + 1) = 0x80000001E1B6F8F0;
    v43 = 0x5B2064496D616441;
    v44 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v15, v16);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v43, v44);

    v18 = v37;
    sub_1E16BE330();
    v19 = swift_allocError();
    *v20 = v18;
    *(v20 + 16) = 0;
    swift_willThrow();
    v28 = v7;
    v29 = v5;
    v30 = v4;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v21 = sub_1E1AF591C();
    __swift_project_value_buffer(v21, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v23 = v41;
    v22 = v42;
    *(&v38 + 1) = v42;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v23, v22);
    sub_1E1AF385C();
    sub_1E1308058(&v37, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v4 = v30;
    v5 = v29;
    v7 = v28;
  }

  (*(v33 + 104))(v32, *MEMORY[0x1E698B1A0], v35);
  sub_1E1AF2F8C();
  v37 = v45;
  v38 = v46;
  v39 = v47;
  v40 = v48;
  sub_1E196D020(v7);
  v25 = sub_1E1AF2DAC();

  (*(v5 + 8))(v7, v4);
  (*(v34 + 8))(v11, v36);
  return v25 & 1;
}

uint64_t sub_1E177ACDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v59 = a2;
  v58 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8E90);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v56 - v4;
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = sub_1E1AF2FAC();
  v6 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = sub_1E1AF2FDC();
  v11 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v65 = v3[2];
  v16 = *(v65 + 16);
  v17 = v3[4];
  v18 = v3[5];
  v68 = v3;
  v76 = v17;
  v77 = v18;

  AdamId.numberValue.getter();
  if (v19)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v76 = 0xD000000000000017;
    v77 = 0x80000001E1B6F8F0;
    v79 = 0x5B2064496D616441;
    v80 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v17, v18);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v79, v80);

    v20 = v76;
    v21 = v77;
    sub_1E16BE330();
    v22 = swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v21;
    *(v23 + 16) = 0;
    swift_willThrow();
    v56 = v16;
    v69 = v11;
    v70 = v6;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v24 = sub_1E1AF591C();
    __swift_project_value_buffer(v24, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v25 = v74;
    v26 = v75;
    v78 = v75;
    v27 = __swift_allocate_boxed_opaque_existential_0(&v76);
    (*(*(v26 - 8) + 16))(v27, v25, v26);
    sub_1E1AF385C();
    sub_1E1308058(&v76, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v11 = v69;
    v6 = v70;
  }

  v28 = *MEMORY[0x1E698B1A0];
  v30 = *(v6 + 104);
  v29 = v6 + 104;
  v56 = v30;
  v30(v66, v28, v67);
  sub_1E1AF2F8C();
  sub_1E1AF2E6C();

  v33 = *(v11 + 8);
  v31 = v11 + 8;
  v32 = v33;
  v33(v15, v64);
  v34 = v68[4];
  v35 = v68[5];
  v76 = v34;
  v77 = v35;

  AdamId.numberValue.getter();
  if (v36)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v76 = 0xD000000000000017;
    v77 = 0x80000001E1B6F8F0;
    v79 = 0x5B2064496D616441;
    v80 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v34, v35);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v79, v80);

    v37 = v31;
    v38 = v76;
    v39 = v77;
    sub_1E16BE330();
    v40 = swift_allocError();
    *v41 = v38;
    *(v41 + 8) = v39;
    *(v41 + 16) = 0;
    swift_willThrow();
    v42 = v40;
    v69 = v37;
    v70 = v29;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v43 = sub_1E1AF591C();
    __swift_project_value_buffer(v43, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v44 = v72;
    v45 = v73;
    v78 = v73;
    v46 = __swift_allocate_boxed_opaque_existential_0(&v76);
    (*(*(v45 - 8) + 16))(v46, v44, v45);
    sub_1E1AF385C();
    sub_1E1308058(&v76, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
  }

  v56(v66, *MEMORY[0x1E698B198], v67);
  v47 = v57;
  sub_1E1AF2F8C();
  sub_1E1AF2E6C();

  v32(v47, v64);
  type metadata accessor for ModernAppStateMachine.Observation();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_weakInit();
  swift_unknownObjectWeakAssign();
  v49 = v68;
  swift_weakAssign();
  v50 = v60;
  *(v48 + 24) = v59;
  *(v48 + 32) = v50;

  sub_1E1AF2DCC();

  v76 = v48;
  sub_1E177FABC(qword_1EE1F9C18, type metadata accessor for ModernAppStateMachine.Observation);
  v51 = v61;
  sub_1E1AF359C();

  v53 = v49[3];
  MEMORY[0x1EEE9AC00](v52);
  *(&v56 - 2) = v48;
  *(&v56 - 1) = v51;

  os_unfair_lock_lock((v53 + 24));
  sub_1E177F9FC((v53 + 16));
  os_unfair_lock_unlock((v53 + 24));

  v54 = v49[3];

  os_unfair_lock_lock((v54 + 24));
  sub_1E177FB04((v54 + 16));
  os_unfair_lock_unlock((v54 + 24));

  return (*(v62 + 8))(v51, v63);
}

uint64_t sub_1E177B7E8(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ModernAppStateMachine.ObserverData();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 28);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8E90);
  (*(*(v12 - 8) + 16))(&v9[v11], a3, v12);
  *v9 = a2;
  v13 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1E172EFE4(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1E172EFE4(v14 > 1, v15 + 1, 1, v13);
  }

  v13[2] = v15 + 1;
  result = sub_1E177F998(v9, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
  *a1 = v13;
  return result;
}

uint64_t sub_1E177B984(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = sub_1E1AF2FAC();
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = sub_1E1AF2FDC();
  v58 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v50 = v1[2];
  v14 = *(v50 + 16);
  v15 = v1[4];
  v16 = v1[5];
  v63 = v15;
  v64 = v16;
  v48 = v14;

  AdamId.numberValue.getter();
  v53 = v8;
  if (v17)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v63 = 0xD000000000000017;
    v64 = 0x80000001E1B6F8F0;
    v66 = 0x5B2064496D616441;
    v67 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v15, v16);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v66, v67);

    v18 = v63;
    v19 = v64;
    sub_1E16BE330();
    v20 = swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v19;
    *(v21 + 16) = 0;
    swift_willThrow();
    v57 = v4;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v22 = sub_1E1AF591C();
    v49 = __swift_project_value_buffer(v22, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v23 = v61;
    v24 = v62;
    v65 = v62;
    v25 = __swift_allocate_boxed_opaque_existential_0(&v63);
    (*(*(v24 - 8) + 16))(v25, v23, v24);
    sub_1E1AF385C();
    sub_1E1308058(&v63, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v4 = v57;
  }

  v26 = *MEMORY[0x1E698B1A0];
  v28 = *(v4 + 104);
  v27 = v4 + 104;
  v49 = v28;
  v28(v55, v26, v56);
  sub_1E1AF2F8C();
  sub_1E1AF2E6C();

  v29 = v58 + 8;
  v48 = *(v58 + 8);
  v48(v13, v54);
  v30 = v2[4];
  v31 = v2[5];
  v63 = v30;
  v64 = v31;

  AdamId.numberValue.getter();
  if (v32)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v63 = 0xD000000000000017;
    v64 = 0x80000001E1B6F8F0;
    v66 = 0x5B2064496D616441;
    v67 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v30, v31);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v66, v67);

    v33 = v63;
    v34 = v64;
    sub_1E16BE330();
    v35 = swift_allocError();
    *v36 = v33;
    *(v36 + 8) = v34;
    *(v36 + 16) = 0;
    swift_willThrow();
    v37 = v35;
    v57 = v27;
    v58 = v29;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v38 = sub_1E1AF591C();
    __swift_project_value_buffer(v38, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v39 = v59;
    v40 = v60;
    v65 = v60;
    v41 = __swift_allocate_boxed_opaque_existential_0(&v63);
    (*(*(v40 - 8) + 16))(v41, v39, v40);
    sub_1E1AF385C();
    sub_1E1308058(&v63, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
  }

  v49(v55, *MEMORY[0x1E698B198], v56);
  v42 = v51;
  sub_1E1AF2F8C();
  sub_1E1AF2E6C();

  v43 = (v48)(v42, v54);
  v44 = v2[3];
  MEMORY[0x1EEE9AC00](v43);
  *(&v47 - 2) = v52;
  *(&v47 - 1) = v2;

  os_unfair_lock_lock((v44 + 24));
  sub_1E177F8A0((v44 + 16));
  os_unfair_lock_unlock((v44 + 24));

  v45 = v2[3];

  os_unfair_lock_lock((v45 + 24));
  sub_1E177F8BC((v45 + 16));
  os_unfair_lock_unlock((v45 + 24));
}

void sub_1E177C2E0(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v21 = type metadata accessor for ModernAppStateMachine.ObserverData();
  v26 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v20 = a1;
  v9 = *a1;
  v25 = *(*a1 + 16);
  if (v25)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v24 = v5;
    while (v10 < *(v9 + 16))
    {
      v12 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v13 = *(v26 + 72);
      sub_1E177F8D8(v9 + v12 + v13 * v10, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v15 = Strong, swift_unknownObjectRelease(), v15 == v23))
      {

        sub_1E1AF2DCC();

        sub_1E1AF35AC();

        sub_1E177F93C(v8);
      }

      else
      {
        sub_1E177F998(v8, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E135CA40(0, *(v11 + 16) + 1, 1);
          v11 = v27;
        }

        v18 = *(v11 + 16);
        v17 = *(v11 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1E135CA40(v17 > 1, v18 + 1, 1);
          v11 = v27;
        }

        *(v11 + 16) = v18 + 1;
        v19 = v11 + v12 + v18 * v13;
        v5 = v24;
        sub_1E177F998(v24, v19);
      }

      if (v25 == ++v10)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_14:

    *v20 = v11;
  }
}

void sub_1E177C53C(void *a1, uint64_t a2)
{
  v20 = a2;
  v19 = type metadata accessor for ModernAppStateMachine.ObserverData();
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v17 = a1;
  v8 = *a1;
  v22 = *(*a1 + 16);
  if (v22)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v18 = v3;
    while (v9 < *(v8 + 16))
    {
      v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v12 = *(v3 + 72);
      sub_1E177F8D8(v8 + v11 + v12 * v9, v7);
      if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_weakLoadStrong()))
      {

        sub_1E177F998(v7, v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E135CA40(0, *(v10 + 16) + 1, 1);
          v10 = v23;
        }

        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1E135CA40(v14 > 1, v15 + 1, 1);
          v10 = v23;
        }

        *(v10 + 16) = v15 + 1;
        sub_1E177F998(v21, v10 + v11 + v15 * v12);
        v3 = v18;
      }

      else
      {

        sub_1E1AF2DCC();

        sub_1E1AF35AC();

        sub_1E177F93C(v7);
      }

      if (v22 == ++v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_14:

    *v17 = v10;
  }
}

uint64_t sub_1E177C798()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModernAppStateMachine.ObserverData()
{
  result = qword_1EE1F9B30;
  if (!qword_1EE1F9B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E177C89C()
{
  type metadata accessor for ModernAppStateMachine.Observation();
  if (v0 <= 0x3F)
  {
    sub_1E177C920();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E177C920()
{
  if (!qword_1EE1E3A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8E98);
    v0 = sub_1E1AF462C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1E3A10);
    }
  }
}

uint64_t sub_1E177C984@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t sub_1E177C990@<X0>(uint64_t *a1@<X8>)
{
  v50 = a1;
  v2 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E1AF315C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF2FAC();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF2FDC();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E1AF316C();
  v13 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v41 = &v37 - v17;
  v18 = *(v1[2] + 16);
  v19 = v1[4];
  v20 = v1[5];
  v53 = v19;
  v54 = v20;
  v40 = v18;

  AdamId.numberValue.getter();
  if (v21)
  {
    sub_1E1AF31BC();
    v22 = v50;
  }

  else
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v53 = 0xD000000000000017;
    v54 = 0x80000001E1B6F8F0;
    v56 = 0x5B2064496D616441;
    v57 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v19, v20);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v56, v57);

    v23 = v53;
    v24 = v54;
    sub_1E16BE330();
    v25 = swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v24;
    *(v26 + 16) = 0;
    swift_willThrow();
    v37 = v10;
    v38 = v4;
    v39 = v3;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v27 = sub_1E1AF591C();
    __swift_project_value_buffer(v27, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v28 = v51;
    v29 = v52;
    v55 = v52;
    v30 = __swift_allocate_boxed_opaque_existential_0(&v53);
    (*(*(v29 - 8) + 16))(v30, v28, v29);
    sub_1E1AF385C();
    sub_1E1308058(&v53, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v22 = v50;
    v3 = v39;
    v4 = v38;
  }

  (*(v45 + 104))(v42, *MEMORY[0x1E698B1A0], v46);
  v31 = v43;
  sub_1E1AF2F8C();
  v32 = v44;
  (*(v13 + 104))(v15, *MEMORY[0x1E698B248], v44);
  v33 = v49;
  sub_1E1AF314C();
  v34 = v41;
  sub_1E1AF2EEC();

  (*(v4 + 8))(v33, v3);
  v35 = *(v13 + 8);
  v35(v15, v32);
  (*(v47 + 8))(v31, v48);
  sub_1E196BCEC(v22);
  return (v35)(v34, v32);
}

BOOL sub_1E177D078()
{
  v1 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1E1AF315C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E1AF2FAC();
  v5 = *(v46 - 1);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1E1AF2FDC();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E1AF316C();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v37 - v13;
  v14 = *(v0[2] + 16);
  v15 = v0[4];
  v16 = v0[5];
  v53 = v15;
  v54 = v16;
  v42 = v14;

  AdamId.numberValue.getter();
  v50 = v2;
  if (v17)
  {
    sub_1E1AF31BC();
    v18 = v3;
  }

  else
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v53 = 0xD000000000000017;
    v54 = 0x80000001E1B6F8F0;
    v56 = 0x5B2064496D616441;
    v57 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v15, v16);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v56, v57);

    v19 = v53;
    v20 = v54;
    sub_1E16BE330();
    v21 = swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();
    v37 = v7;
    v38 = v5;
    v39 = v3;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v23 = sub_1E1AF591C();
    __swift_project_value_buffer(v23, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v25 = v51;
    v24 = v52;
    v55 = v52;
    v26 = __swift_allocate_boxed_opaque_existential_0(&v53);
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    sub_1E1AF385C();
    sub_1E1308058(&v53, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v18 = v39;
    v5 = v38;
    v7 = v37;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E698B198], v46);
  v27 = v43;
  sub_1E1AF2F8C();
  v28 = *MEMORY[0x1E698B248];
  v29 = v44;
  v46 = *(v44 + 104);
  v30 = v40;
  v31 = v41;
  v46(v40, v28, v41);
  v32 = v49;
  sub_1E1AF314C();
  v33 = v45;
  sub_1E1AF2EEC();

  (*(v18 + 8))(v32, v50);
  v34 = *(v29 + 8);
  v34(v30, v31);
  (*(v47 + 8))(v27, v48);
  v46(v30, v28, v31);
  sub_1E177FABC(&qword_1EE1E3C98, MEMORY[0x1E698B278]);
  v35 = sub_1E1AF5DAC();
  v34(v30, v31);
  v34(v33, v31);
  return (v35 & 1) == 0;
}

uint64_t sub_1E177D7EC()
{
  v1 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1E1AF2FAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v27 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF2FDC();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v30 = v9;
  v31 = v10;

  AdamId.numberValue.getter();
  if (v11)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v30 = 0xD000000000000017;
    v31 = 0x80000001E1B6F8F0;
    v33 = 0x5B2064496D616441;
    v34 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v9, v10);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v33, v34);

    v12 = v30;
    v13 = v31;
    sub_1E16BE330();
    v14 = swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v13;
    *(v15 + 16) = 0;
    swift_willThrow();
    v23 = v3;
    v24 = v2;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v16 = sub_1E1AF591C();
    v22[1] = __swift_project_value_buffer(v16, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v17 = v28;
    v18 = v29;
    v32 = v29;
    v19 = __swift_allocate_boxed_opaque_existential_0(&v30);
    (*(*(v18 - 8) + 16))(v19, v17, v18);
    sub_1E1AF385C();
    sub_1E1308058(&v30, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v3 = v23;
    v2 = v24;
  }

  (*(v3 + 104))(v27, *MEMORY[0x1E698B1A0], v2);
  sub_1E1AF2F8C();
  v20 = sub_1E1AF2E9C();

  (*(v25 + 8))(v8, v26);
  return v20;
}

uint64_t sub_1E177DCF4@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v80 = a2;
  v89 = 0;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF315C();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF2FAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  v17 = sub_1E1AF2FDC();
  v84 = *(v17 - 8);
  v85 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - v20;
  v22 = sub_1E1AF316C();
  v82 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v78 = v8;
  v81 = v9;
  v77 = v13;
  if ((a1 & 1) == 0)
  {
LABEL_11:
    v51 = *(v2[2] + 16);
    v52 = v2[4];
    v53 = v2[5];
    v94 = v52;
    v95 = v53;

    AdamId.numberValue.getter();
    if (v54)
    {
      v55 = v89;
      sub_1E1AF31BC();
      v56 = v55;
      if (!v55)
      {
LABEL_18:
        (*(v9 + 104))(v83, *MEMORY[0x1E698B1A0], v8);
        v64 = v76;
        sub_1E1AF2F8C();
        v65 = v82;
        (*(v82 + 104))(v26, *MEMORY[0x1E698B248], v22);
        v66 = v86;
        sub_1E1AF314C();
        v67 = v75;
        sub_1E1AF2EEC();

        (*(v87 + 8))(v66, v88);
        v68 = *(v65 + 8);
        v68(v26, v22);
        (*(v84 + 8))(v64, v85);
        sub_1E196BCEC(v80);
        return (v68)(v67, v22);
      }
    }

    else
    {
      v94 = 0;
      v95 = 0xE000000000000000;
      sub_1E1AF6FEC();

      v94 = 0xD000000000000017;
      v95 = 0x80000001E1B6F8F0;
      v97 = 0x5B2064496D616441;
      v98 = 0xE800000000000000;
      MEMORY[0x1E68FECA0](v52, v53);
      MEMORY[0x1E68FECA0](93, 0xE100000000000000);
      MEMORY[0x1E68FECA0](v97, v98);

      v57 = v94;
      v58 = v95;
      sub_1E16BE330();
      v56 = swift_allocError();
      *v59 = v57;
      *(v59 + 8) = v58;
      *(v59 + 16) = 0;
      swift_willThrow();
    }

    v89 = v51;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v60 = sub_1E1AF591C();
    __swift_project_value_buffer(v60, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v61 = v92;
    v62 = v93;
    v96 = v93;
    v63 = __swift_allocate_boxed_opaque_existential_0(&v94);
    (*(*(v62 - 8) + 16))(v63, v61, v62);
    sub_1E1AF385C();
    sub_1E1308058(&v94, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v8 = v78;
    v9 = v81;
    goto LABEL_18;
  }

  v74 = v16;
  v73 = &v70 - v28;
  v71 = v21;
  v29 = *(v2[2] + 16);
  v30 = v2[4];
  v31 = v2[5];
  v70 = v2;
  v94 = v30;
  v95 = v31;
  v72 = v29;

  AdamId.numberValue.getter();
  if (v32)
  {
    v33 = v89;
    sub_1E1AF31BC();
    v34 = v33;
    if (!v33)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v94 = 0xD000000000000017;
    v95 = 0x80000001E1B6F8F0;
    v97 = 0x5B2064496D616441;
    v98 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v30, v31);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v97, v98);

    v35 = v94;
    v36 = v95;
    sub_1E16BE330();
    v34 = swift_allocError();
    *v37 = v35;
    *(v37 + 8) = v36;
    *(v37 + 16) = 0;
    swift_willThrow();
  }

  if (qword_1ECEB12A8 != -1)
  {
    swift_once();
  }

  v38 = sub_1E1AF591C();
  v89 = __swift_project_value_buffer(v38, qword_1ECEBA3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  swift_getErrorValue();
  v39 = v34;
  v41 = v90;
  v40 = v91;
  v96 = v91;
  v42 = __swift_allocate_boxed_opaque_existential_0(&v94);
  (*(*(v40 - 8) + 16))(v42, v41, v40);
  sub_1E1AF385C();
  sub_1E1308058(&v94, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  sub_1E1AF31CC();
  v9 = v81;
LABEL_9:
  v89 = 0;
  (*(v9 + 104))(v83, *MEMORY[0x1E698B198], v8);
  v43 = v71;
  sub_1E1AF2F8C();
  v44 = *MEMORY[0x1E698B248];
  v45 = v82;
  v46 = *(v82 + 104);
  v46(v26, v44, v22);
  v47 = v86;
  sub_1E1AF314C();
  v48 = v73;
  sub_1E1AF2EEC();

  (*(v87 + 8))(v47, v88);
  v49 = *(v45 + 8);
  v49(v26, v22);
  (*(v84 + 8))(v43, v85);
  v46(v26, v44, v22);
  sub_1E177FABC(&qword_1EE1E3C98, MEMORY[0x1E698B278]);
  v50 = sub_1E1AF5DAC();
  v49(v26, v22);
  if (v50)
  {
    v49(v48, v22);
    v8 = v78;
    v2 = v70;
    v9 = v81;
    goto LABEL_11;
  }

  sub_1E196BCEC(v80);
  return (v49)(v48, v22);
}

uint64_t sub_1E177E954@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v2 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v96 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1E1AF30AC();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF315C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v103 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1E1AF2FAC();
  v8 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = sub_1E1AF2FDC();
  v105 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v83 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v76 - v15);
  v17 = sub_1E1AF316C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v94 = &v76 - v23;
  v86 = sub_1E1AF30DC();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(v1 + 2);
  v25 = *(v81 + 16);
  v26 = *(v1 + 4);
  v27 = *(v1 + 5);
  v82 = v1;
  v112 = v26;
  v113 = v27;
  v93 = v25;

  AdamId.numberValue.getter();
  v98 = v5;
  v97 = v18;
  if (v28)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v112 = 0;
    v113 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v112 = 0xD000000000000017;
    v113 = 0x80000001E1B6F8F0;
    v115 = 0x5B2064496D616441;
    v116 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v26, v27);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v115, v116);

    v29 = v112;
    v30 = v113;
    sub_1E16BE330();
    v31 = swift_allocError();
    *v32 = v29;
    *(v32 + 8) = v30;
    *(v32 + 16) = 0;
    swift_willThrow();
    v90 = v17;
    v106 = v8;
    v107 = v6;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v33 = sub_1E1AF591C();
    __swift_project_value_buffer(v33, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v34 = v110;
    v35 = v111;
    v114 = v111;
    v36 = __swift_allocate_boxed_opaque_existential_0(&v112);
    (*(*(v35 - 8) + 16))(v36, v34, v35);
    sub_1E1AF385C();
    sub_1E1308058(&v112, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v5 = v98;
    v8 = v106;
    v6 = v107;
    v18 = v97;
    v17 = v90;
  }

  v77 = 0;
  v37 = *MEMORY[0x1E698B198];
  v38 = *(v8 + 104);
  v106 = v8 + 104;
  v90 = v38;
  v38(v100, v37, v102);
  sub_1E1AF2F8C();
  v92 = v16;
  v39 = *MEMORY[0x1E698B248];
  v40 = *(v18 + 104);
  v41 = v5;
  v42 = v99;
  v40(v99, v39, v17);
  v43 = v103;
  sub_1E1AF314C();
  sub_1E1AF2EEC();

  v44 = *(v6 + 8);
  v107 = v6 + 8;
  v80 = v44;
  v44(v43, v41);
  v45 = *(v18 + 8);
  v45(v42, v17);
  v46 = v105 + 8;
  v79 = *(v105 + 8);
  v79(v92, v101);
  LODWORD(v93) = v39;
  v92 = v40;
  v78 = v18 + 104;
  v40(v42, v39, v17);
  v47 = v104;
  sub_1E177FABC(&qword_1EE1E3C98, MEMORY[0x1E698B278]);
  LOBYTE(v39) = sub_1E1AF5DAC();
  v45(v42, v17);
  if ((v39 & 1) == 0)
  {
    v55 = v18;
    v56 = v94;
    (*(v18 + 32))(v94, v47, v17);
    v57 = v95;
    goto LABEL_16;
  }

  v105 = v46;
  v45(v47, v17);
  v48 = *(v81 + 16);
  v49 = *(v82 + 4);
  v50 = *(v82 + 5);
  v112 = v49;
  v113 = v50;
  v104 = v48;

  AdamId.numberValue.getter();
  if (!v51)
  {
    v112 = 0;
    v113 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v112 = 0xD000000000000017;
    v113 = 0x80000001E1B6F8F0;
    v115 = 0x5B2064496D616441;
    v116 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v49, v50);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v115, v116);

    v58 = v112;
    v59 = v113;
    sub_1E16BE330();
    v53 = swift_allocError();
    *v60 = v58;
    *(v60 + 8) = v59;
    *(v60 + 16) = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v52 = v77;
  sub_1E1AF31BC();
  v53 = v52;
  v54 = v98;
  if (v52)
  {
LABEL_12:
    v82 = v45;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v61 = sub_1E1AF591C();
    v81 = __swift_project_value_buffer(v61, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v62 = v108;
    v63 = v109;
    v114 = v109;
    v64 = __swift_allocate_boxed_opaque_existential_0(&v112);
    (*(*(v63 - 8) + 16))(v64, v62, v63);
    sub_1E1AF385C();
    sub_1E1308058(&v112, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v54 = v98;
    v45 = v82;
  }

  v90(v100, *MEMORY[0x1E698B1A0], v102);
  v65 = v83;
  sub_1E1AF2F8C();
  v66 = v99;
  v92(v99, v93, v17);
  v67 = v103;
  sub_1E1AF314C();
  v56 = v94;
  sub_1E1AF2EEC();

  v80(v67, v54);
  v45(v66, v17);
  v79(v65, v101);
  v57 = v95;
  v55 = v97;
LABEL_16:
  if ((*(v55 + 88))(v56, v17) == *MEMORY[0x1E698B228])
  {
    (*(v55 + 96))(v56, v17);
    v68 = v85;
    v69 = v84;
    v70 = v56;
    v71 = v86;
    (*(v85 + 32))(v84, v70, v86);
    v72 = v87;
    sub_1E1AF30CC();
    sub_1E1AF309C();
    (*(v88 + 8))(v72, v89);
    (*(v68 + 8))(v69, v71);
    v73 = 0;
  }

  else
  {
    v45(v56, v17);
    v73 = 1;
  }

  v74 = sub_1E1AEFE6C();
  return (*(*(v74 - 8) + 56))(v57, v73, 1, v74);
}

uint64_t sub_1E177F8D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernAppStateMachine.ObserverData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E177F93C(uint64_t a1)
{
  v2 = type metadata accessor for ModernAppStateMachine.ObserverData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E177F998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernAppStateMachine.ObserverData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E177FA18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8E98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E177FABC(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String __swiftcall localizedString(_:comment:)(Swift::String _, Swift::String comment)
{
  if (qword_1EE1EEB00 != -1)
  {
    swift_once();
  }

  v2 = off_1EE1EEB08;
  os_unfair_lock_lock(off_1EE1EEB08 + 6);
  v3 = *(v2 + 2);

  os_unfair_lock_unlock(v2 + 6);
  if (v3)
  {
    v4 = *(v3 + 16);
    swift_unknownObjectRetain();

    v5 = sub_1E1AF5DBC();
    v6 = [v4 string_];

    v7 = sub_1E1AF5DFC();
    v9 = v8;
    swift_unknownObjectRelease();

    v10 = v7;
    v11 = v9;
  }

  else
  {
    v12 = [objc_opt_self() mainBundle];
    v13 = sub_1E1AEF95C();
    v15 = v14;

    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 == 0xE100000000000000;
    }

    if (v16 || (sub_1E1AF74AC() & 1) != 0)
    {

      if (qword_1EE1E31F8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v17 = qword_1EE1E3200;
      v13 = sub_1E1AEF95C();
      v15 = v18;
    }

    v10 = v13;
    v11 = v15;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall localizedString(_:with:)(Swift::String _, Swift::OpaquePointer with)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (qword_1EE1EEB00 != -1)
  {
    swift_once();
  }

  v4 = off_1EE1EEB08;
  os_unfair_lock_lock(off_1EE1EEB08 + 6);
  v5 = *(v4 + 2);

  os_unfair_lock_unlock(v4 + 6);
  if (v5)
  {
    v6 = *(v5 + 16);
    swift_unknownObjectRetain();

    v7 = sub_1E1AF5DBC();
    v8 = sub_1E1AF5C6C();
    v9 = [v6 string:v7 with:v8];

    v10 = sub_1E1AF5DFC();
    v12 = v11;
    swift_unknownObjectRelease();

    v13 = v10;
    v14 = v12;
  }

  else
  {
    v15 = countAndFlagsBits;
    v16 = object;
    v17 = 0;
    v18 = 0xE000000000000000;

    v19 = localizedString(_:comment:)(*&v15, *&v17);
    v14 = v19._object;
    v13 = v19._countAndFlagsBits;
  }

  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

Swift::String __swiftcall localizedStringForAdsLanguage(_:)(Swift::String a1)
{
  if (qword_1EE1EEB00 != -1)
  {
    swift_once();
  }

  v1 = off_1EE1EEB08;
  os_unfair_lock_lock(off_1EE1EEB08 + 6);
  v2 = *(v1 + 2);

  os_unfair_lock_unlock(v1 + 6);
  if (v2)
  {
    sub_1E16A33D4(v2 + 24, &v19);
    if (v20)
    {
      sub_1E1361B28(&v19, v21);
      __swift_project_boxed_opaque_existential_1Tm(v21, v21[3]);
      v3 = sub_1E1AF5B7C();
      v5 = v4;

      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      sub_1E1308058(&v19, &qword_1ECEB2B50);
      v11 = *(v2 + 16);
      v12 = sub_1E1AF5DBC();
      if (*(v2 + 72))
      {

        v13 = sub_1E1AF5DBC();
      }

      else
      {
        v13 = 0;
      }

      v14 = [v11 stringForPreferredLocale:v12 :v13];

      v3 = sub_1E1AF5DFC();
      v5 = v15;
    }
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v3 = sub_1E1AEF95C();
    v5 = v7;

    if (v3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5 == 0xE100000000000000;
    }

    if (v8 || (sub_1E1AF74AC() & 1) != 0)
    {

      if (qword_1EE1E31F8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v9 = qword_1EE1E3200;
      v3 = sub_1E1AEF95C();
      v5 = v10;
    }
  }

  v16 = v3;
  v17 = v5;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

Swift::String_optional __swiftcall localizedStringForDecimal(_:_:)(NSNumber_optional a1, Swift::Int a2)
{
  v2 = *&a1.is_nil;
  isa = a1.value.super.super.isa;
  if (qword_1EE1EEB00 != -1)
  {
    swift_once();
  }

  v4 = off_1EE1EEB08;
  os_unfair_lock_lock(off_1EE1EEB08 + 6);
  v5 = *(v4 + 2);

  os_unfair_lock_unlock(v4 + 6);
  if (!v5)
  {
    if (isa)
    {
      v11 = [isa stringValue];
      isa = sub_1E1AF5DFC();
      v10 = v12;

      goto LABEL_10;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  swift_unknownObjectRetain();

  v7 = [v6 decimal:isa :v2];
  if (!v7)
  {
    swift_unknownObjectRelease();
    isa = 0;
    goto LABEL_9;
  }

  v8 = v7;
  isa = sub_1E1AF5DFC();
  v10 = v9;

  swift_unknownObjectRelease();
LABEL_10:
  v13 = isa;
  v14 = v10;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

Swift::String __swiftcall localizedStringReferencingWiFi(_:comment:)(Swift::String _, Swift::String comment)
{
  object = comment._object;
  countAndFlagsBits = comment._countAndFlagsBits;
  v4 = _._object;
  v5 = _._countAndFlagsBits;
  if ([objc_opt_self() wapiCapability])
  {
    v6 = 1312902231;
  }

  else
  {
    v6 = 1229343063;
  }

  v13 = v6 & 0xFFFF0000FFFFFFFFLL | 0x5F00000000;
  MEMORY[0x1E68FECA0](v5, v4);
  v7._countAndFlagsBits = v13;
  v7._object = 0xE500000000000000;
  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = object;
  v9 = localizedString(_:comment:)(v7, v8);

  v10 = v9._countAndFlagsBits;
  v11 = v9._object;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_1E1780388()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8EA0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_1EE1EEB08 = result;
  return result;
}

uint64_t sub_1E17803CC(void *a1, uint64_t a2)
{

  *a1 = a2;
}

uint64_t sub_1E1780414()
{
  swift_unknownObjectRelease();
  sub_1E1308058(v0 + 24, &qword_1ECEB2B50);

  v1 = OBJC_IVAR____TtC11AppStoreKit19PrimaryLocalization_legacyLocale;
  v2 = sub_1E1AEFF8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::String_optional __swiftcall localizedFileSize(_:)(NSNumber a1)
{
  if (qword_1EE1EEB00 != -1)
  {
    swift_once();
  }

  v2 = off_1EE1EEB08;
  os_unfair_lock_lock(off_1EE1EEB08 + 6);
  v3 = *(v2 + 2);

  os_unfair_lock_unlock(v2 + 6);
  if (v3 && (v4 = *(v3 + 16), swift_unknownObjectRetain(), , v5 = [v4 fileSize_], swift_unknownObjectRelease(), v5))
  {
    v6 = sub_1E1AF5DFC();
    v8 = v7;

    v9 = v8;
    v10 = v6;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t _s11AppStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  if (qword_1EE1EEB00 != -1)
  {
    swift_once();
  }

  v7 = off_1EE1EEB08;
  os_unfair_lock_lock(off_1EE1EEB08 + 6);
  v8 = *(v7 + 2);

  os_unfair_lock_unlock(v7 + 6);
  if (v8)
  {
    v9 = *(v8 + 16);
    swift_unknownObjectRetain();

    v10 = sub_1E1AF5DBC();
    v11 = [v9 stringWithCount:v10 :a3];

    v12 = sub_1E1AF5DFC();
    swift_unknownObjectRelease();

    return v12;
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
    v15 = sub_1E1AEF95C();
    v17 = v16;

    if (!v15 && v17 == 0xE100000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      if (qword_1EE1E31F8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v18 = qword_1EE1E3200;
      sub_1E1AEF95C();
    }

    v19 = sub_1E1AEFF8C();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E6530];
    *(v20 + 16) = xmmword_1E1B02CC0;
    v22 = MEMORY[0x1E69E65A8];
    *(v20 + 56) = v21;
    *(v20 + 64) = v22;
    *(v20 + 32) = a3;
    v23 = sub_1E1AF5E2C();

    sub_1E1308058(v6, &qword_1ECEB2FC8);
    return v23;
  }
}

uint64_t type metadata accessor for PrimaryLocalization()
{
  result = qword_1EE1EEAF0;
  if (!qword_1EE1EEAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1780980()
{
  result = sub_1E1AEFF8C();
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

uint64_t ProductTopLockupIconFetcher.__allocating_init(artworkLoader:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ProductTopLockupIconFetcher.init(artworkLoader:)(a1);
  return v2;
}

uint64_t ProductTopLockupIconFetcher.init(artworkLoader:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = 0;
  sub_1E1AEFE9C();
  v8 = sub_1E1AEFE7C();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  *(v2 + 40) = v8;
  *(v2 + 48) = v10;
  *(v2 + 88) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = 0;
  *(v2 + 80) = 0;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t sub_1E1780B80(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v5 = v2;

  return sub_1E1780BDC();
}

uint64_t sub_1E1780BDC()
{
  result = swift_beginAccess();
  v72 = v0;
  v2 = *(v0 + 16);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = sub_1E1AF71CC();
  v3 = result;
  if (result)
  {
LABEL_3:
    if (v3 < 1)
    {
      __break(1u);
      return result;
    }

    v71 = v2 & 0xC000000000000001;

    swift_beginAccess();
    v4 = 0;
    v5 = &qword_1ECEB2000;
    v69 = v2;
    v70 = v3;
    while (1)
    {
      if (v71)
      {
        v9 = MEMORY[0x1E68FFD80](v4, v2);
      }

      else
      {
        v9 = *(v2 + 8 * v4 + 32);
      }

      v8 = v9;
      v10 = *(v72 + 56);
      v11 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_setImageDisablesAnimations;
      swift_beginAccess();
      if (v8[v11] == 1)
      {
        v12 = *&v8[v5[146]];
        v13 = v10;
        v14 = [v12 layer];
        [v14 removeAllAnimations];

        if (!v10)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v20 = v10;
        if (!v10)
        {
LABEL_18:
          v21 = v5[146];
          [*&v8[v21] setImage_];
          [*&v8[v21] setHidden_];
          sub_1E13523F0();
          v22 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_style;
          swift_beginAccess();
          if (((v8[v22] - 2) & 0xFD) == 0)
          {
            if (sub_1E1354A9C())
            {
              if (qword_1EE1F7920 != -1)
              {
                swift_once();
              }

              v23 = qword_1EE1F7928;
              v24 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderColor;
              swift_beginAccess();
              v25 = *&v8[v24];
              *&v8[v24] = v23;
              v26 = v23;

              sub_1E150E578();
            }

            else
            {
              v65 = [objc_opt_self() clearColor];
              v66 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderColor;
              swift_beginAccess();
              v67 = *&v8[v66];
              *&v8[v66] = v65;
              v68 = v65;

              sub_1E150E578();
            }
          }

          goto LABEL_9;
        }
      }

      v15 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_artworkTintColor;
      swift_beginAccess();
      v16 = *&v8[v15];
      v17 = v10;
      v18 = v17;
      if (v16)
      {
        v19 = [v17 imageWithRenderingMode_];
      }

      else
      {
        v19 = v17;
      }

      v27 = v19;
      v28 = v5;
      v29 = v5[146];
      [*&v8[v29] setImage_];
      v30 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_shouldSymbolImageSelfSize;
      swift_beginAccess();
      if (v8[v30] == 1)
      {
        v31 = [*&v8[v29] image];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 isSymbolImage];

          if (v33)
          {
            v34 = [*&v8[v29] image];
            if (v34)
            {
              v35 = v34;
              v36 = [*&v8[v29] preferredSymbolConfiguration];
              if (v36)
              {
                v6 = v36;
                v37 = [v35 imageWithConfiguration_];
                [v37 size];
                v39 = v38;
                v41 = v40;

                v8[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_updatingFrameForSymbolSizeChange] = 1;
                v42 = type metadata accessor for ArtworkView();
                v76.receiver = v8;
                v76.super_class = v42;
                objc_msgSendSuper2(&v76, sel_frame);
                v44 = v43;
                v46 = v45;
                v75.receiver = v8;
                v75.super_class = v42;
                objc_msgSendSuper2(&v75, sel_frame);
                v48 = v47;
                v50 = v49;
                v52 = v51;
                v54 = v53;
                v74.receiver = v8;
                v74.super_class = v42;
                objc_msgSendSuper2(&v74, sel_frame);
                if (v56 != v39 || v55 != v41)
                {
                  v8[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_isCornerRadiusInvalid] = 1;
                }

                v73.receiver = v8;
                v73.super_class = v42;
                objc_msgSendSuper2(&v73, sel_setFrame_, v44, v46, v39, v41);
                sub_1E1353C04(v48, v50, v52, v54);

                v2 = v69;
              }

              else
              {
                v6 = v35;
              }

              v3 = v70;
            }
          }
        }
      }

      [*&v8[v29] setHidden_];
      sub_1E13523F0();
      v7 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_style;
      swift_beginAccess();
      if (((v8[v7] - 2) & 0xFD) == 0)
      {
        if (sub_1E1354A9C())
        {
          if (qword_1EE1F7920 != -1)
          {
            swift_once();
          }

          v57 = qword_1EE1F7928;
          v58 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderColor;
          swift_beginAccess();
          v59 = *&v8[v58];
          *&v8[v58] = v57;
          v60 = v57;

          sub_1E150E578();
        }

        else
        {
          v61 = [objc_opt_self() clearColor];
          v62 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderColor;
          swift_beginAccess();
          v63 = *&v8[v62];
          *&v8[v62] = v61;
          v64 = v61;

          sub_1E150E578();
        }
      }

      v8 = v27;
      v5 = v28;
LABEL_9:
      ++v4;

      if (v3 == v4)
      {
      }
    }
  }

  return result;
}

void *sub_1E178122C()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_1E1781270(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
  v4 = a1;

  sub_1E1780BDC();
}

uint64_t (*sub_1E17812D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E1781324;
}

uint64_t sub_1E178133C()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(v0 + 16);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = sub_1E1AF71CC();
  v4 = result;
  if (result)
  {
LABEL_3:
    if (v4 < 1)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    while (1)
    {
      v10 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x1E68FFD80](v5, v3) : *(v3 + 8 * v5 + 32);
      v11 = v10;
      v12 = *(v1 + 80);
      v13 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_style;
      swift_beginAccess();
      v14 = v11[v13];
      v11[v13] = v12;
      if (v12 <= 3)
      {
        break;
      }

      if (v12 > 5)
      {
        if (v12 == 6)
        {
          v15 = 0xE300000000000000;
          v16 = 7364969;
          if (v14 > 3)
          {
            goto LABEL_34;
          }

          goto LABEL_47;
        }

        if (v12 == 7)
        {
          v15 = 0xE600000000000000;
          v16 = 0x746365527674;
          if (v14 > 3)
          {
            goto LABEL_34;
          }

          goto LABEL_47;
        }

        v16 = 0x656E726F64616E75;
        v15 = 0xE900000000000064;
LABEL_33:
        if (v14 > 3)
        {
          goto LABEL_34;
        }

        goto LABEL_47;
      }

      if (v12 == 4)
      {
        v16 = 0xD000000000000010;
        v15 = 0x80000001E1B58350;
        if (v14 > 3)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v15 = 0xE400000000000000;
        v16 = 1819044208;
        if (v14 > 3)
        {
LABEL_34:
          if (v14 <= 5)
          {
            if (v14 == 4)
            {
              v17 = 0x80000001E1B58350;
              if (v16 != 0xD000000000000010)
              {
                goto LABEL_59;
              }
            }

            else
            {
              v17 = 0xE400000000000000;
              if (v16 != 1819044208)
              {
LABEL_59:
                v19 = sub_1E1AF74AC();

                if ((v19 & 1) == 0)
                {
                  v20 = sub_1E1354A9C();
                  v21 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderWidth;
                  if (v20)
                  {
                    swift_beginAccess();
                    *&v11[v21] = 0x3FF0000000000000;
                    sub_1E150E578();
                    if (qword_1EE1F7920 != -1)
                    {
                      swift_once();
                    }

                    v22 = qword_1EE1F7928;
                    v23 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderColor;
                    swift_beginAccess();
                    v24 = *&v11[v23];
                    *&v11[v23] = v22;
                    v25 = v22;

                    sub_1E150E578();
                  }

                  else
                  {
                    swift_beginAccess();
                    *&v11[v21] = 0;
                    sub_1E150E578();
                    v6 = [objc_opt_self() clearColor];
                    v7 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderColor;
                    swift_beginAccess();
                    v8 = *&v11[v7];
                    *&v11[v7] = v6;
                    v9 = v6;

                    sub_1E150E578();
                  }

                  v11[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_isStyleInvalid] = 1;
                  [v11 setNeedsLayout];
                }

                goto LABEL_8;
              }
            }
          }

          else if (v14 == 6)
          {
            v17 = 0xE300000000000000;
            if (v16 != 7364969)
            {
              goto LABEL_59;
            }
          }

          else if (v14 == 7)
          {
            v17 = 0xE600000000000000;
            if (v16 != 0x746365527674)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v17 = 0xE900000000000064;
            if (v16 != 0x656E726F64616E75)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }
      }

LABEL_47:
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v17 = 0x80000001E1B58330;
          if (v16 != 0xD000000000000016)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        }

        v17 = 0xE500000000000000;
        v18 = 0x646E756F72;
      }

      else
      {
        v18 = 0x6669636570736E75;
        v17 = 0xEB00000000646569;
        if (v14)
        {
          v17 = 0xEB00000000746365;
          if (v16 != 0x526465646E756F72)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        }
      }

      if (v16 != v18)
      {
        goto LABEL_59;
      }

LABEL_56:
      if (v15 != v17)
      {
        goto LABEL_59;
      }

LABEL_8:
      if (v4 == ++v5)
      {
      }
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v16 = 0xD000000000000016;
        v15 = 0x80000001E1B58330;
        if (v14 > 3)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v15 = 0xE500000000000000;
        v16 = 0x646E756F72;
        if (v14 > 3)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_47;
    }

    v16 = 0x6669636570736E75;
    v15 = 0xEB00000000646569;
    if (v12)
    {
      v16 = 0x526465646E756F72;
      v15 = 0xEB00000000746365;
      if (v14 > 3)
      {
        goto LABEL_34;
      }

      goto LABEL_47;
    }

    goto LABEL_33;
  }

  return result;
}

uint64_t sub_1E1781868(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;
  v5 = v2;

  return sub_1E17818C4();
}

uint64_t sub_1E17818C4()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(v0 + 16);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = sub_1E1AF71CC();
  v4 = result;
  if (result)
  {
LABEL_3:
    if (v4 < 1)
    {
      __break(1u);
      return result;
    }

    v5 = v3 & 0xC000000000000001;

    swift_beginAccess();
    v6 = 0;
    v13 = v3;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x1E68FFD80](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = *(v1 + 88);
      if (v9)
      {
        v10 = *&v7[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_internalBackgroundColor];
        *&v7[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_internalBackgroundColor] = v9;
        sub_1E1355E88();
        v11 = v9;
        if ((sub_1E1AF6D0C() & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v12 = [objc_opt_self() clearColor];
        v10 = *&v8[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_internalBackgroundColor];
        *&v8[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_internalBackgroundColor] = v12;
        sub_1E1355E88();
        v11 = v12;
        v3 = v13;
        if ((sub_1E1AF6D0C() & 1) == 0)
        {
LABEL_13:
          sub_1E13523F0();
        }
      }

      ++v6;

      if (v4 == v6)
      {
      }
    }
  }

  return result;
}

void *sub_1E1781A94()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_1E1781AD8(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
  v4 = a1;

  sub_1E17818C4();
}

uint64_t (*sub_1E1781B38(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E1781B8C;
}

uint64_t sub_1E1781BA4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1E1781BE8(uint64_t result, uint64_t a2)
{
  v3 = *(*(result + 16) + 48);
  if (v3)
  {
    v4 = v2;
    if ((*(v2 + 32) & 1) == 0)
    {
      *(v2 + 32) = 1;
      *(v2 + 80) = *(v3 + 64);
      v5 = result;

      sub_1E178133C();
      sub_1E17823EC(v5, a2);
      v9 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v7, v8);
      if (*(v9 + 72) > 1u || *(v9 + 72))
      {
        v10 = sub_1E1AF74AC();

        if ((v10 & 1) == 0)
        {
          if (qword_1EE1E3220 != -1)
          {
            swift_once();
          }

          v14 = qword_1EE1E3228;
          swift_beginAccess();
          v13 = *(v2 + 88);
          *(v4 + 88) = v14;
          v12 = v14;
          goto LABEL_11;
        }
      }

      else
      {
      }

      v11 = [objc_opt_self() clearColor];
      swift_beginAccess();
      v12 = v11;
      v13 = *(v4 + 88);
      *(v4 + 88) = v12;
LABEL_11:
      v15 = v12;

      sub_1E17818C4();

      sub_1E1AF6F6C();
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = v9;
      v17[4] = v3;

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v18, 1, v19, sub_1E1782618, v17);

      sub_1E13E2E98(v19);
    }
  }

  return result;
}

uint64_t sub_1E1781E80(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    *(Strong + 64) = *(a6 + 32);
    result = swift_beginAccess();
    v14 = *(v12 + 16);
    if (v14 >> 62)
    {
      result = sub_1E1AF71CC();
      v15 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_4:
        if (v15 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v15; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1E68FFD80](i, v14);
          }

          else
          {
            v17 = *(v14 + 8 * i + 32);
          }

          v18 = v17;
          v19 = *(v12 + 64);
          v20 = *(v12 + 72);
          v21 = &v17[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_imageSize];
          swift_beginAccess();
          v22 = *v21;
          v23 = v21[1];
          *v21 = v19;
          v21[1] = v20;
          if (v19 != v22 || v20 != v23)
          {
            v18[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_isCornerRadiusInvalid] = 1;
            [v18 setNeedsLayout];
          }
        }
      }
    }
  }

  swift_beginAccess();
  v25 = swift_weakLoadStrong();
  if (v25)
  {
    *(v25 + 80) = *(a7 + 64);
    sub_1E178133C();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    if (a2)
    {
      if (!a1 || ([a1 size], v28 = v27, v29 != *(a6 + 32)))
      {
        swift_beginAccess();
        v35 = *(v26 + 56);
        *(v26 + 56) = a1;
        v36 = a1;

        sub_1E1780BDC();
      }

      v30 = *(a6 + 40);
      swift_beginAccess();
      v31 = *(v26 + 56);
      *(v26 + 56) = a1;
      v32 = a1;

      sub_1E1780BDC();
      if (v28 != v30)
      {
      }
    }

    else
    {
      swift_beginAccess();
      v33 = *(v26 + 56);
      *(v26 + 56) = a1;
      v34 = a1;

      sub_1E1780BDC();
    }

    swift_beginAccess();
    *(v26 + 16) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1E1782180(char *a1)
{
  if (a1)
  {
    v2 = v1;
    swift_beginAccess();
    v4 = *(v1 + 56);
    if (v4)
    {
      v5 = v4;
      v6 = a1;
      v7 = v6;
      v24.value.super.isa = v4;
      v24.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v24, v7);
    }

    else
    {
      v8 = a1;
    }

    v9 = *(v2 + 64);
    v10 = *(v2 + 72);
    v11 = &a1[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_imageSize];
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[1];
    *v11 = v9;
    v11[1] = v10;
    if (v9 != v12 || v10 != v13)
    {
      a1[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_isCornerRadiusInvalid] = 1;
      [a1 setNeedsLayout];
    }

    v15 = *(v2 + 80);
    v16 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_style;
    swift_beginAccess();
    v17 = a1[v16];
    a1[v16] = v15;
    v23[0] = v17;
    sub_1E1354900(v23);
    swift_beginAccess();
    v18 = *(v2 + 88);
    if (v18)
    {
      v19 = *&a1[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_internalBackgroundColor];
      *&a1[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_internalBackgroundColor] = v18;
      sub_1E1355E88();
      v20 = v18;
      if ((sub_1E1AF6D0C() & 1) == 0)
      {
        sub_1E13523F0();
      }
    }

    else
    {
      v21 = [objc_opt_self() clearColor];
      v19 = *&a1[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_internalBackgroundColor];
      *&a1[OBJC_IVAR____TtC11AppStoreKit11ArtworkView_internalBackgroundColor] = v21;
      sub_1E1355E88();
      v20 = v21;
      if ((sub_1E1AF6D0C() & 1) == 0)
      {
        sub_1E13523F0();
      }
    }

    swift_beginAccess();
    v22 = a1;
    MEMORY[0x1E68FEF20]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
    swift_endAccess();
  }
}

void sub_1E17823EC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(type metadata accessor for ItemLayoutContext() + 32);
  v3 = type metadata accessor for ShelfLayoutContext();
  v4 = [*(v2 + *(v3 + 40)) traitCollection];
  v5 = *(v2 + *(v3 + 28) + 24);
  PortraitWidth = JUScreenClassGetPortraitWidth(1);
  if (!ProductTopLockup.wantsInlineUberPresentationStyle.getter() && ((sub_1E1AF696C() & 1) == 0 || (sub_1E1AF698C() & 1) == 0) && (sub_1E1AF696C() & 1) == 0 && PortraitWidth >= v5)
  {
    sub_1E1AF698C();
  }
}

uint64_t ProductTopLockupIconFetcher.deinit()
{

  return v0;
}

uint64_t ProductTopLockupIconFetcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PrivacyDefinition.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrivacyDefinition.definition.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PrivacyDefinition.__allocating_init(id:title:definition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_1E138853C(a1, &v25);
  if (*(&v26 + 1))
  {
    sub_1E13E2E98(a1);
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v24[0] = a2;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = v15;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v24[1] = v19;
    v24[2] = v21;
    a5 = v18;
    a4 = v17;
    a3 = v16;
    a2 = v24[0];
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v25);
  }

  v22 = v29;
  *(v14 + 48) = v28;
  *(v14 + 64) = v22;
  *(v14 + 80) = v30;
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  return v14;
}

uint64_t PrivacyDefinition.init(id:title:definition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v26);
  if (*(&v27 + 1))
  {
    sub_1E13E2E98(a1);
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v26);
  }

  v23 = v30;
  *(v6 + 48) = v29;
  *(v6 + 64) = v23;
  *(v6 + 80) = v31;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  return v6;
}

uint64_t PrivacyDefinition.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = 0x656C746974;
  v4 = sub_1E1AEFEAC();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  sub_1E1AF381C();
  v44 = sub_1E1AF37CC();
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v15, v6);
  v45 = v18;
  if (!v17)
  {
    v27 = 0xE500000000000000;
LABEL_7:
    v28 = sub_1E1AF5A7C();
    sub_1E17830C8(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v29 = v3;
    v29[1] = v27;
    v29[2] = v46;
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x1E69AB690], v28);
    swift_willThrow();
    v30 = sub_1E1AF39DC();
    (*(*(v30 - 8) + 8))(v50, v30);
    v45(a1, v6);
    return v17;
  }

  v43 = v17;
  v3 = 0x6974696E69666564;
  sub_1E1AF381C();
  v17 = sub_1E1AF37CC();
  v20 = v19;
  v18(v12, v6);
  v21 = v6;
  if (!v20)
  {
    v27 = 0xEA00000000006E6FLL;

    goto LABEL_7;
  }

  v22 = v17;
  sub_1E1AF381C();
  v23 = sub_1E1AF37CC();
  if (v24)
  {
    v47 = v23;
    v48 = v24;
    sub_1E1AF6F6C();
    v25 = v9;
    v26 = v6;
  }

  else
  {
    v31 = v40;
    sub_1E1AEFE9C();
    v32 = v21;
    v33 = sub_1E1AEFE7C();
    v35 = v34;
    (*(v41 + 8))(v31, v42);
    v47 = v33;
    v48 = v35;
    v21 = v32;
    sub_1E1AF6F6C();
    v25 = v9;
    v26 = v32;
  }

  v36 = v45;
  v45(v25, v26);
  v17 = swift_allocObject();
  PrivacyDefinition.init(id:title:definition:)(v49, v44, v43, v22, v20);
  v37 = sub_1E1AF39DC();
  (*(*(v37 - 8) + 8))(v50, v37);
  v36(a1, v21);
  return v17;
}

uint64_t PrivacyDefinition.deinit()
{

  sub_1E134B88C(v0 + 48);
  return v0;
}

uint64_t PrivacyDefinition.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1E17830C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1783134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyDefinition.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t ComponentModel.pairedWith<A>(objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a2, v7);
  ObjectGraphPair.init(value:objectGraph:)(v9, a1, a2, a3);
}

uint64_t ArticleDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a3;
  v53 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = swift_allocObject();
  v48 = a2;
  sub_1E1307FE8(a2, v14);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_1E13E23F8(v14, v18 + v16);
  v19 = a1;
  *(v18 + v17) = a1;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v20 = v18;
  sub_1E1307FE8(a2, v11);
  *(v15 + qword_1EE1E9D48) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v15 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v22 = qword_1EE2166A0;
  v54 = a5;

  swift_retain_n();

  *(v15 + v22) = sub_1E159D6F0(v21);
  v23 = (v15 + qword_1EE1E9E00);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v15 + qword_1EE1E9EA0);
  *v24 = 0;
  v24[1] = 0;
  v51 = v24;
  v25 = (v15 + qword_1EE1E9E08);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v15 + qword_1EE1E9DF0);
  *v26 = 0;
  v26[1] = 0;
  v49 = v26;
  v27 = (v15 + qword_1EE1E9E98);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v15 + qword_1EE216698);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v15 + qword_1EE2166D0) = 0;
  *(v15 + qword_1EE1E9D50) = 0;
  *(v15 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v15 + qword_1EE2166C8) = 0;
  v29 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3398);
  swift_allocObject();
  *(v15 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v15 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33A8);
  swift_allocObject();
  *(v15 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE2166B0;
  swift_allocObject();
  *(v15 + v32) = sub_1E1AF5BEC();
  v33 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v15 + v33) = sub_1E1AF5BEC();
  v34 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v35 = sub_1E1AF5BEC();

  v36 = v19;

  sub_1E13ECBA0(v48);
  *(v15 + v34) = v35;
  v37 = qword_1EE1E9DD8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v39 = *(*(v38 - 8) + 56);
  v39(v15 + v37, 1, 1, v38);
  v39(v15 + qword_1EE1E9DE0, 1, 1, v38);
  v40 = v52;
  *(v15 + 16) = v36;
  sub_1E13E23F8(v50, v15 + qword_1EE216678);
  *v23 = sub_1E1784020;
  v23[1] = v20;
  *v25 = 0;
  v25[1] = 0;
  if (v40)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    v42 = sub_1E1445E6C;
  }

  else
  {
    v42 = 0;
    v41 = 0;
  }

  v43 = v51;
  *v51 = v42;
  v43[1] = v41;
  v44 = v49;
  *v49 = sub_1E1769DF8;
  v44[1] = v36;
  *v27 = 0;
  v27[1] = 0;
  v45 = v54;
  *(v15 + qword_1EE1E9E90) = v53;
  *(v15 + qword_1EE216690) = v45;
  return v15;
}

uint64_t ArticleDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v55 = a3;
  v56 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v51 = a2;
  sub_1E1307FE8(a2, &v50 - v15);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_1E13E23F8(v16, v19 + v17);
  *(v19 + v18) = a1;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  sub_1E1307FE8(a2, v13);
  *(v6 + qword_1EE1E9D48) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v21 = qword_1EE2166A0;
  v57 = a5;

  swift_retain_n();

  *(v6 + v21) = sub_1E159D6F0(v20);
  v22 = (v6 + qword_1EE1E9E00);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v6 + qword_1EE1E9EA0);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v6 + qword_1EE1E9E08);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + qword_1EE1E9DF0);
  *v25 = 0;
  v25[1] = 0;
  v52 = v25;
  v26 = (v6 + qword_1EE1E9E98);
  *v26 = 0;
  v26[1] = 0;
  v54 = v26;
  v27 = (v6 + qword_1EE216698);
  *v27 = 0u;
  v27[1] = 0u;
  *(v27 + 25) = 0u;
  *(v6 + qword_1EE2166D0) = 0;
  *(v6 + qword_1EE1E9D50) = 0;
  *(v6 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EE2166C8) = 0;
  v28 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3398);
  swift_allocObject();
  *(v6 + v28) = sub_1E1AF5BEC();
  v29 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v6 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33A8);
  swift_allocObject();
  *(v6 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE2166B0;
  swift_allocObject();
  *(v6 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v6 + v32) = sub_1E1AF5BEC();
  v33 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v34 = sub_1E1AF5BEC();

  sub_1E13ECBA0(v51);
  *(v6 + v33) = v34;
  v35 = qword_1EE1E9DD8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v37 = *(*(v36 - 8) + 56);
  v37(v6 + v35, 1, 1, v36);
  v37(v6 + qword_1EE1E9DE0, 1, 1, v36);
  v38 = v55;
  *(v6 + 16) = a1;
  sub_1E13E23F8(v53, v6 + qword_1EE216678);
  v39 = *v22;
  *v22 = sub_1E17842E0;
  v22[1] = v19;
  sub_1E1300EA8(v39);
  v40 = *v24;
  *v24 = 0;
  v24[1] = 0;
  sub_1E1300EA8(v40);
  if (v38)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v38;
    v42 = sub_1E155BD80;
  }

  else
  {
    v42 = 0;
    v41 = 0;
  }

  v43 = *v23;
  *v23 = v42;
  v23[1] = v41;
  sub_1E1300EA8(v43);
  v44 = v52;
  v45 = *v52;
  *v52 = sub_1E17842E4;
  v44[1] = a1;
  sub_1E1300EA8(v45);
  v46 = v54;
  v47 = *v54;
  *v54 = 0;
  v46[1] = 0;
  sub_1E1300EA8(v47);
  v48 = v57;
  *(v6 + qword_1EE1E9E90) = v56;
  *(v6 + qword_1EE216690) = v48;
  return v6;
}

uint64_t sub_1E1783CE4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ArticlePageIntent();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  v9 = sub_1E1AEFCCC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1307FE8(a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1E13ECBA0(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8EA8);
    sub_1E1784220();
    swift_allocError();
    *v13 = 0;
    return sub_1E1AF581C();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v17[0] = 0xD000000000000011;
    v17[1] = 0x80000001E1B5A810;
    sub_1E1AF6F6C();
    (*(v10 + 16))(&v5[*(v3 + 20)], v12, v9);
    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E1AF4C1C();

    sub_1E1AF422C();
    sub_1E1AF4BEC();

    v15 = sub_1E1AF4BFC();

    v16 = sub_1E1367E70(v5, v15, "AppStoreKit/ArticleDiffablePageContentPresenter.swift", 53, 2);

    sub_1E1784284(v5);
    (*(v10 + 8))(v12, v9);
    return v16;
  }
}

uint64_t sub_1E1784024(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v4 = sub_1E1367B40(a1, a2, "AppStoreKit/ArticleDiffablePageContentPresenter.swift", 53, 2);

  return v4;
}

uint64_t ArticleDiffablePageContentPresenter.__deallocating_deinit()
{
  _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_1E1784140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1E1300EA8(a10);
  sub_1E1300EA8(a6);
  sub_1E1300EA8(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t type metadata accessor for ArticleDiffablePageContentPresenter()
{
  result = qword_1EE1D43A8;
  if (!qword_1EE1D43A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E1784220()
{
  result = qword_1ECEB8EB0;
  if (!qword_1ECEB8EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8EB0);
  }

  return result;
}

uint64_t sub_1E1784284(uint64_t a1)
{
  v2 = type metadata accessor for ArticlePageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E178437C()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1E3810);
  __swift_project_value_buffer(v0, qword_1EE1E3810);
  return sub_1E1AF521C();
}

uint64_t sub_1E1784420()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1E3788);
  __swift_project_value_buffer(v0, qword_1EE1E3788);
  return sub_1E1AF521C();
}

uint64_t sub_1E17844C8()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1E3710);
  __swift_project_value_buffer(v0, qword_1EE1E3710);
  return sub_1E1AF521C();
}

uint64_t sub_1E178452C()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1E36A8);
  __swift_project_value_buffer(v0, qword_1EE1E36A8);
  return sub_1E1AF521C();
}

uint64_t sub_1E17845C8()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1E37D0);
  __swift_project_value_buffer(v0, qword_1EE1E37D0);
  return sub_1E1AF521C();
}

uint64_t sub_1E178466C()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1E3688);
  __swift_project_value_buffer(v0, qword_1EE1E3688);
  return sub_1E1AF521C();
}

uint64_t sub_1E17846D0()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1E3830);
  __swift_project_value_buffer(v0, qword_1EE1E3830);
  return sub_1E1AF521C();
}

uint64_t sub_1E1784770()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1E3738);
  __swift_project_value_buffer(v0, qword_1EE1E3738);
  return sub_1E1AF521C();
}

uint64_t sub_1E178487C()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1E37A8);
  __swift_project_value_buffer(v0, qword_1EE1E37A8);
  return sub_1E1AF521C();
}

uint64_t sub_1E1784924()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1E3760);
  __swift_project_value_buffer(v0, qword_1EE1E3760);
  return sub_1E1AF521C();
}

uint64_t sub_1E17849CC()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1D2878);
  __swift_project_value_buffer(v0, qword_1EE1D2878);
  return sub_1E1AF521C();
}

uint64_t sub_1E1784A68()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1E37F0);
  __swift_project_value_buffer(v0, qword_1EE1E37F0);
  return sub_1E1AF521C();
}

uint64_t sub_1E1784B0C()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1E36C8);
  __swift_project_value_buffer(v0, qword_1EE1E36C8);
  return sub_1E1AF521C();
}

uint64_t sub_1E1784BA8()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1E36F0);
  __swift_project_value_buffer(v0, qword_1EE1E36F0);
  return sub_1E1AF521C();
}

uint64_t sub_1E1784C44()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1D2858);
  __swift_project_value_buffer(v0, qword_1EE1D2858);
  return sub_1E1AF521C();
}

uint64_t sub_1E1784CE0()
{
  v0 = sub_1E1AF523C();
  __swift_allocate_value_buffer(v0, qword_1EE1D2830);
  __swift_project_value_buffer(v0, qword_1EE1D2830);
  return sub_1E1AF521C();
}

uint64_t sub_1E1784D7C()
{
  v0 = sub_1E1AF51EC();
  __swift_allocate_value_buffer(v0, qword_1EE1E3868);
  __swift_project_value_buffer(v0, qword_1EE1E3868);
  return sub_1E1AF51DC();
}

uint64_t sub_1E1784E0C()
{
  v0 = sub_1E1AF51EC();
  __swift_allocate_value_buffer(v0, qword_1EE1E3850);
  __swift_project_value_buffer(v0, qword_1EE1E3850);
  return sub_1E1AF51DC();
}

uint64_t sub_1E1784EA4()
{
  v0 = sub_1E1AF51EC();
  __swift_allocate_value_buffer(v0, qword_1EE1E38D8);
  __swift_project_value_buffer(v0, qword_1EE1E38D8);
  return sub_1E1AF51DC();
}

uint64_t sub_1E1784F48()
{
  v0 = sub_1E1AF51EC();
  __swift_allocate_value_buffer(v0, qword_1EE1E3890);
  __swift_project_value_buffer(v0, qword_1EE1E3890);
  return sub_1E1AF51DC();
}

uint64_t sub_1E1785018(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0xD000000000000018, 0x80000001E1B74F50);
}

uint64_t sub_1E17850C4()
{
  v0 = sub_1E1AF51EC();
  __swift_allocate_value_buffer(v0, qword_1EE1E3900);
  __swift_project_value_buffer(v0, qword_1EE1E3900);
  return sub_1E1AF51DC();
}

uint64_t sub_1E1785168()
{
  v0 = sub_1E1AF51EC();
  __swift_allocate_value_buffer(v0, qword_1EE1D2898);
  __swift_project_value_buffer(v0, qword_1EE1D2898);
  return sub_1E1AF51DC();
}

uint64_t sub_1E1785208()
{
  v0 = sub_1E1AF51EC();
  __swift_allocate_value_buffer(v0, qword_1EE1E38B0);
  __swift_project_value_buffer(v0, qword_1EE1E38B0);
  return sub_1E1AF51DC();
}

uint64_t sub_1E17852B0()
{
  v0 = sub_1E1AF51EC();
  __swift_allocate_value_buffer(v0, qword_1ECEB8EE8);
  __swift_project_value_buffer(v0, qword_1ECEB8EE8);
  return sub_1E1AF51DC();
}

uint64_t sub_1E1785354()
{
  v0 = sub_1E1AF51EC();
  __swift_allocate_value_buffer(v0, qword_1ECEB8F00);
  __swift_project_value_buffer(v0, qword_1ECEB8F00);
  return sub_1E1AF51DC();
}

uint64_t sub_1E17853F4()
{
  v0 = sub_1E1AF51EC();
  __swift_allocate_value_buffer(v0, qword_1ECEB8F18);
  __swift_project_value_buffer(v0, qword_1ECEB8F18);
  return sub_1E1AF51DC();
}

uint64_t sub_1E1785490()
{
  v0 = sub_1E1AF51EC();
  __swift_allocate_value_buffer(v0, qword_1ECEB8F30);
  __swift_project_value_buffer(v0, qword_1ECEB8F30);
  return sub_1E1AF51DC();
}

uint64_t sub_1E178552C()
{
  v0 = sub_1E1AF51EC();
  __swift_allocate_value_buffer(v0, qword_1ECEB8F48);
  __swift_project_value_buffer(v0, qword_1ECEB8F48);
  return sub_1E1AF51DC();
}

uint64_t sub_1E17855C8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t static MetricsSuppression.isMetricsSuppressed.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECEB8F60 = a1;
  return result;
}

uint64_t Notification.updatedStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1E1AEF52C();
  if (qword_1ECEB1108 != -1)
  {
    swift_once();
  }

  v3 = sub_1E1AF5DFC();
  v5 = v4;
  if (v3 == sub_1E1AF5DFC() && v5 == v6)
  {

    v10 = sub_1E1AEF54C();
    if (!v10)
    {
LABEL_17:
      v15 = 0u;
      v16 = 0u;
      goto LABEL_18;
    }
  }

  else
  {
    v8 = sub_1E1AF74AC();

    if ((v8 & 1) == 0)
    {
      goto LABEL_19;
    }

    v10 = sub_1E1AEF54C();
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v11 = v10;
  sub_1E1AF6F6C();
  if (!*(v11 + 16) || (v12 = sub_1E135FCF4(v14), (v13 & 1) == 0))
  {

    sub_1E134B88C(v14);
    goto LABEL_17;
  }

  sub_1E137A5C4(*(v11 + 56) + 32 * v12, &v15);
  sub_1E134B88C(v14);

  if (!*(&v16 + 1))
  {
LABEL_18:
    result = sub_1E1308058(&v15, &qword_1ECEB2DF0);
    goto LABEL_19;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_19:
    *a1 = 2;
  }

  return result;
}

uint64_t static Notification.makePersonalizationDataProviderDidRefreshNotification(with:object:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB68F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = 0xD00000000000003ALL;
  v5 = inited + 32;
  *(inited + 40) = 0x80000001E1B692A0;
  *(inited + 48) = v3;
  v6 = sub_1E15A12C4(inited);
  swift_setDeallocating();
  sub_1E1308058(v5, &qword_1ECEB6900);
  if (qword_1ECEB1108 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE1D2488;
  sub_1E13BFF54(a2, v10);
  v8 = v7;
  sub_1E14C6870(v6);

  return sub_1E1AEF51C();
}

uint64_t sub_1E1785A68()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D2488 = result;
  return result;
}

id static NSNotificationName.PersonalizationDataProviderDidRefresh.getter()
{
  if (qword_1ECEB1108 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1D2488;

  return v1;
}

uint64_t sub_1E1785AFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  __swift_allocate_value_buffer(v0, qword_1EE1EAE20);
  __swift_project_value_buffer(v0, qword_1EE1EAE20);
  return sub_1E1AF3F9C();
}

uint64_t sub_1E1785B74()
{
  ObjectType = swift_getObjectType();
  v31 = sub_1E1AF0F7C();
  v0 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v9 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v9, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v10 = sub_1E1AF0F8C();
  v11 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v10, v11, v13, "RefreshTokenPromise", "", v12, 2u);
    MEMORY[0x1E6901640](v12, -1, -1);
  }

  v14 = v31;
  v26 = *(v0 + 16);
  v26(v5, v8, v31);
  sub_1E1AF0FEC();
  swift_allocObject();
  v27 = sub_1E1AF0FDC();
  v15 = *(v0 + 8);
  v28 = v0 + 8;
  v15(v8, v14);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v16 = sub_1E1AF0F8C();
  v17 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v16, v17, v19, "RefreshToken", "", v18, 2u);
    MEMORY[0x1E6901640](v18, -1, -1);
  }

  v20 = v31;
  v26(v5, v2, v31);
  swift_allocObject();
  v21 = sub_1E1AF0FDC();
  v15(v2, v20);
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v22 = sub_1E1AF6D4C();
  MEMORY[0x1EEE9AC00](v22);
  *(&v26 - 4) = v27;
  *(&v26 - 3) = v21;
  v23 = ObjectType;
  *(&v26 - 2) = v30;
  *(&v26 - 1) = v23;
  v24 = sub_1E1AF6D5C();

  return v24;
}

const char *sub_1E1785F40(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v40 = a4;
  v38 = a1;
  v39 = a5;
  v42 = a2;
  v6 = sub_1E1AF0FBC();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF0F7C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF5AAC();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v16 = MEMORY[0x1E68FD610]();
  if (!v16)
  {
    v24 = v10;
    if (qword_1EE1F7BE0 != -1)
    {
      swift_once();
    }

    v25 = sub_1E1AF0FAC();
    __swift_project_value_buffer(v25, qword_1EE1F7BE8);
    v26 = sub_1E1AF0F8C();
    sub_1E1AF0FCC();
    LODWORD(v41) = sub_1E1AF6A0C();
    v27 = v9;
    v28 = v24;
    if (sub_1E1AF6D6C())
    {

      sub_1E1AF0FFC();

      v29 = v35;
      if ((*(v35 + 88))(v8, v6) == *MEMORY[0x1E69E93E8])
      {
        v30 = "[Error] Interval already ended";
      }

      else
      {
        (*(v29 + 8))(v8, v6);
        v30 = "override=false,success=false";
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = sub_1E1AF0F5C();
      _os_signpost_emit_with_name_impl(&dword_1E12FC000, v26, v41, v32, "RefreshToken", v30, v31, 2u);
      MEMORY[0x1E6901640](v31, -1, -1);
    }

    (*(v28 + 8))(v12, v27);
    v18 = "RefreshTokenPromise";
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
    goto LABEL_13;
  }

  v17 = v16;
  v18 = swift_allocObject();
  v19 = v39;
  v20 = v40;
  *(v18 + 2) = a3;
  *(v18 + 3) = v20;
  *(v18 + 4) = v17;
  *(v18 + 5) = v19;
  v21 = v38;

  v22 = v20;

  v23 = v41;
  sub_1E1AF5A8C();
  if (v23)
  {

LABEL_13:
    sub_1E17863B4();
    return v18;
  }

  v18 = sub_1E1AF5A9C();

  (*(v36 + 8))(v15, v37);
  sub_1E17863B4();
  return v18;
}

uint64_t sub_1E17863B4()
{
  v0 = sub_1E1AF0FBC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF0F7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v8, qword_1EE1F7BE8);
  v9 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v10 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v9, v10, v13, "RefreshTokenPromise", v11, v12, 2u);
    MEMORY[0x1E6901640](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1E1786640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v69 = a2;
  v64 = a3;
  v65 = a6;
  v63 = a5;
  v75 = a4;
  *&v71 = a1;
  v6 = sub_1E1AF0FBC();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v63 - v10;
  v12 = sub_1E1AF0F7C();
  v13 = *(v12 - 8);
  v72 = v12;
  v73 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  v18 = sub_1E1AF364C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1E1AF44CC();
  sub_1E1AF44BC();
  if (qword_1EE1EAE10 != -1)
  {
    swift_once();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  __swift_project_value_buffer(v21, qword_1EE1EAE20);
  sub_1E1AF3C8C();

  if (v74[1])
  {

    v22 = sub_1E1AF755C();
    v23 = [objc_opt_self() valueWithObject:v22 inContext:v71];
    swift_unknownObjectRelease();
    if (v23)
    {
      v65 = v8;
      v24 = v73;

      if (qword_1EE1F7BE0 != -1)
      {
        swift_once();
      }

      v25 = sub_1E1AF0FAC();
      __swift_project_value_buffer(v25, qword_1EE1F7BE8);
      v26 = sub_1E1AF0F8C();
      sub_1E1AF0FCC();
      v27 = sub_1E1AF6A0C();
      if (sub_1E1AF6D6C())
      {

        sub_1E1AF0FFC();

        v29 = v66;
        v28 = v67;
        if ((*(v66 + 88))(v11, v67) == *MEMORY[0x1E69E93E8])
        {
          v30 = "[Error] Interval already ended";
        }

        else
        {
          (*(v29 + 8))(v11, v28);
          v30 = "override=true,success=true";
        }

        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = sub_1E1AF0F5C();
        _os_signpost_emit_with_name_impl(&dword_1E12FC000, v26, v27, v44, "RefreshToken", v30, v43, 2u);
        MEMORY[0x1E6901640](v43, -1, -1);
      }

      v45 = *(v24 + 8);
      v45(v17, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
      v46 = swift_allocObject();
      v71 = xmmword_1E1B02CC0;
      *(v46 + 16) = xmmword_1E1B02CC0;
      *(v46 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
      *(v46 + 32) = v23;
      v47 = v23;
      v48 = v70;
      v49 = sub_1E1AF363C();
      if (v48)
      {
        v73 = v24 + 8;

        if (qword_1EE1D27B0 != -1)
        {
          swift_once();
        }

        v50 = sub_1E1AF591C();
        __swift_project_value_buffer(v50, qword_1EE215450);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v71;
        sub_1E1AF382C();
        sub_1E1AF54AC();

        v51 = sub_1E1AF0F8C();
        v52 = v68;
        sub_1E1AF0FCC();
        v53 = sub_1E1AF6A0C();
        if (sub_1E1AF6D6C())
        {

          v54 = v65;
          sub_1E1AF0FFC();

          v56 = v66;
          v55 = v67;
          if ((*(v66 + 88))(v54, v67) == *MEMORY[0x1E69E93E8])
          {
            v57 = "[Error] Interval already ended";
          }

          else
          {
            (*(v56 + 8))(v54, v55);
            v57 = "override=true,success=false";
          }

          v60 = swift_slowAlloc();
          *v60 = 0;
          v61 = v68;
          v62 = sub_1E1AF0F5C();
          _os_signpost_emit_with_name_impl(&dword_1E12FC000, v51, v53, v62, "RefreshToken", v57, v60, 2u);
          MEMORY[0x1E6901640](v60, -1, -1);

          v59 = v61;
        }

        else
        {

          v59 = v52;
        }

        v45(v59, v72);
      }

      else
      {
        v58 = v49;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F78);
    v31 = [*(v63 + OBJC_IVAR____TtC11AppStoreKit25JSMediaTokenServiceObject_tokenService) fetchMediaToken];
    v73 = sub_1E1AF587C();
    v32 = v19;
    v68 = *(v19 + 16);
    v33 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v68)(v33, v69, v18);
    v34 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v35 = swift_allocObject();
    v72 = v35;
    v36 = v71;
    v37 = v75;
    *(v35 + 16) = v71;
    *(v35 + 24) = v37;
    v38 = *(v32 + 32);
    v38(v35 + v34, v33, v18);
    (v68)(v33, v64, v18);
    v39 = swift_allocObject();
    v40 = v75;
    *(v39 + 16) = v36;
    *(v39 + 24) = v40;
    v38(v39 + v34, v33, v18);
    v74[3] = sub_1E1AF490C();
    v74[4] = MEMORY[0x1E69AB298];
    v74[0] = v65;
    v41 = v36;
    swift_retain_n();
    v42 = v41;

    sub_1E1AF57FC();

    __swift_destroy_boxed_opaque_existential_1(v74);
  }
}

void sub_1E1786F58(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v7 = sub_1E1AF0FBC();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37[1] = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  v12 = sub_1E1AF0F7C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v41 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v37 - v17;
  v19 = [*a1 tokenString];
  v20 = sub_1E1AF5DFC();
  v22 = v21;

  v43 = v20;
  v44 = v22;
  v23 = sub_1E1AF755C();
  v24 = [objc_opt_self() valueWithObject:v23 inContext:a2];
  swift_unknownObjectRelease();
  if (v24)
  {
    if (qword_1EE1F7BE0 != -1)
    {
      swift_once();
    }

    v25 = sub_1E1AF0FAC();
    __swift_project_value_buffer(v25, qword_1EE1F7BE8);
    v26 = sub_1E1AF0F8C();
    sub_1E1AF0FCC();
    v27 = sub_1E1AF6A0C();
    if (sub_1E1AF6D6C())
    {
      *&v38 = v13;

      sub_1E1AF0FFC();
      v37[0] = a3;

      v29 = v39;
      v28 = v40;
      v30 = v12;
      if ((*(v39 + 88))(v11, v40) == *MEMORY[0x1E69E93E8])
      {
        v31 = "[Error] Interval already ended";
      }

      else
      {
        (*(v29 + 8))(v11, v28);
        v31 = "override=false,success=true";
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = sub_1E1AF0F5C();
      _os_signpost_emit_with_name_impl(&dword_1E12FC000, v26, v27, v33, "RefreshToken", v31, v32, 2u);
      MEMORY[0x1E6901640](v32, -1, -1);
      v12 = v30;
      v13 = v38;
    }

    (*(v13 + 8))(v18, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v34 = swift_allocObject();
    v38 = xmmword_1E1B02CC0;
    *(v34 + 16) = xmmword_1E1B02CC0;
    *(v34 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
    *(v34 + 32) = v24;
    v35 = v24;
    v36 = sub_1E1AF363C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E17875B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v6 = sub_1E1AF0FBC();
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = sub_1E1AF0F7C();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E13006E4(0, &qword_1EE1E32A8);
  v13 = MEMORY[0x1E68FF960](a1, a2);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v14 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v14, qword_1EE1F7BE8);
  v15 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v16 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    v17 = v25;
    if ((*(v25 + 88))(v8, v6) == *MEMORY[0x1E69E93E8])
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v17 + 8))(v8, v6);
      v18 = "override=false,success=false";
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v15, v16, v20, "RefreshToken", v18, v19, 2u);
    MEMORY[0x1E6901640](v19, -1, -1);
  }

  (*(v9 + 8))(v11, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v21 = swift_allocObject();
  v26 = xmmword_1E1B02CC0;
  *(v21 + 16) = xmmword_1E1B02CC0;
  *(v21 + 56) = v12;
  *(v21 + 32) = v13;
  v22 = v13;
  v23 = sub_1E1AF363C();
}

id sub_1E1787A60(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = sub_1E1AF6C2C();
  if (!v9)
  {
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    v14 = a2;
    sub_1E1AF56BC();
    swift_willThrow();
    return a2;
  }

  v10 = v8;
  v11 = v9;
  sub_1E1AF44CC();
  sub_1E1AF44BC();
  if (qword_1EE1EAE10 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_1EE1EAE20);
  (*(v5 + 16))(v7, v12, v4);
  v15[0] = v10;
  v15[1] = v11;

  sub_1E1AF3C9C();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    a2 = result;

    return a2;
  }

  __break(1u);
  return result;
}

void sub_1E1787FE8(id *a1)
{
  v3 = *(sub_1E1AF364C() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1E1786F58(a1, v4, v5, v6);
}

uint64_t objectdestroy_4Tm_3()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1E1788128(uint64_t a1)
{
  v3 = *(sub_1E1AF364C() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1E17875B8(a1, v4, v5, v6);
}

uint64_t FlowAction.destination.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v11 = *(v1 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page);
  v4 = OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v10[4] = &protocol witness table for FlowAction;
  v5 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl;
  v10[3] = v3;
  v10[0] = v1;
  v6 = (v1 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  swift_unknownObjectRetain();

  static FlowAction.Destination.from(id:page:url:dataProvider:appStateController:)(v1 + v4, &v11, v1 + v5, v10, v8, v7, a1);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static FlowAction.Destination.from(id:page:url:dataProvider:appStateController:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v246 = a6;
  v247 = a5;
  v268 = a4;
  v269 = a2;
  v264 = a1;
  v265 = a3;
  v270 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2870);
  v262 = *(v7 - 8);
  v263 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v245 = &v236 - v8;
  v239 = type metadata accessor for ArcadePageUrls();
  MEMORY[0x1EEE9AC00](v239);
  v240 = &v236 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for ClosedGenericPageIntent();
  MEMORY[0x1EEE9AC00](v261);
  v260 = &v236 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v244 = &v236 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v257 = &v236 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v256 = &v236 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v255 = &v236 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v254 = &v236 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v253 = &v236 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v252 = &v236 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v251 = &v236 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v250 = &v236 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v249 = &v236 - v30;
  v31 = sub_1E1AEFCCC();
  v32 = *(v31 - 8);
  v266 = v31;
  v267 = v32;
  MEMORY[0x1EEE9AC00](v31);
  v248 = &v236 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v236 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v242 = &v236 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v258 = &v236 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v236 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v243 = &v236 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v236 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v236 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v237 = &v236 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v238 = &v236 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v236 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v241 = &v236 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v236 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v259 = &v236 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v236 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F88);
  MEMORY[0x1EEE9AC00](v69 - 8);
  MEMORY[0x1EEE9AC00](v70);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v236 - v72;
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v236 - v77;
  switch(*v269)
  {
    case 0:
    case 0x23:
    case 0x35:
      type metadata accessor for FlowAction.Destination();

      return swift_storeEnumTagMultiPayload();
    case 1:
      v137 = v255;
      sub_1E134FD1C(v265, v255, &unk_1ECEB4B60);
      v138 = v266;
      v139 = v267;
      if ((*(v267 + 48))(v137, 1, v266) == 1)
      {
        goto LABEL_38;
      }

      v140 = v258;
      (*(v139 + 32))(v258, v137, v138);
      sub_1E134E724(v264, &v281);
      v141 = *(v139 + 16);
      v142 = v259;
      v141(v259, v140, v138);
      v143 = v260;
      sub_1E134E724(&v281, v260);
      v141((v143 + *(v261 + 20)), v142, v138);
      sub_1E178C054(qword_1EE1D9C48, type metadata accessor for ClosedGenericPageIntent);
      v144 = v245;
      sub_1E1AF439C();
      v145 = *(v139 + 8);
      v267 = v139 + 8;
      v269 = v145;
      v145(v142, v138);
      sub_1E134B88C(&v281);
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F98);
      v147 = (v270 + *(v146 + 64));
      v148 = v262;
      v149 = v263;
      (*(v262 + 16))(v270, v144, v263);
      v150 = *(v268 + 3);
      v151 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v150);
      v152 = type metadata accessor for ShelfBasedProductPage();
      (*(v151 + 8))(v152, sub_1E178C6B4, 0, v152, v150, v151);
      (*(v148 + 8))(v144, v149);
      v269(v258, v266);
      v153 = v246;
      *v147 = v247;
      v147[1] = v153;
      type metadata accessor for FlowAction.Destination();
      swift_storeEnumTagMultiPayload();
      return swift_unknownObjectRetain();
    case 2:
      v126 = v253;
      sub_1E134FD1C(v265, v253, &unk_1ECEB4B60);
      v127 = v266;
      v128 = v267;
      if ((*(v267 + 48))(v126, 1, v266) == 1)
      {
        sub_1E1308058(v126, &unk_1ECEB4B60);
        goto LABEL_69;
      }

      v213 = *(v128 + 32);
      v214 = v243;
      v213(v243, v126, v127);
      v215 = *(v268 + 3);
      v216 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v215);
      v217 = type metadata accessor for DynamicUIRequestInfo();
      (*(v216 + 8))(&v281, v217, sub_1E178C6B4, 0, v217, v215, v216);
      v218 = v281;
      v219 = v270;
      if (v281)
      {
        v213(v270, v214, v127);
        *(v219 + *(type metadata accessor for DynamicUIIntent() + 20)) = v218;
        type metadata accessor for FlowAction.Destination();
        return swift_storeEnumTagMultiPayload();
      }

      (*(v128 + 8))(v214, v127);
      goto LABEL_69;
    case 3:
      v170 = v257;
      sub_1E134FD1C(v265, v257, &unk_1ECEB4B60);
      v171 = v266;
      v172 = v267;
      if ((*(v267 + 48))(v170, 1, v266) == 1)
      {
        goto LABEL_40;
      }

      v173 = *(v172 + 32);
      v173(v36, v170, v171);
      v173(v270, v36, v171);
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0xC:
      v137 = v256;
      sub_1E134FD1C(v265, v256, &unk_1ECEB4B60);
      v186 = v266;
      v187 = v267;
      if ((*(v267 + 48))(v137, 1, v266) == 1)
      {
        goto LABEL_38;
      }

      v223 = *(v187 + 32);
      v224 = v242;
      v223(v242, v137, v186);
      v225 = v270;
      sub_1E134E724(v264, v270);
      v226 = type metadata accessor for TodayPageIntent();
      v223(&v225[v226[5]], v224, v186);
      *&v225[v226[6]] = MEMORY[0x1E69E7CC0];
      v225[v226[7]] = 0;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0xD:
      v129 = v252;
      sub_1E134FD1C(v265, v252, &unk_1ECEB4B60);
      v130 = v266;
      v131 = v267;
      if ((*(v267 + 48))(v129, 1, v266) == 1)
      {
        v132 = &unk_1ECEB4B60;
        v133 = v129;
        goto LABEL_63;
      }

      v220 = *(v131 + 32);
      v220(v48, v129, v130);
      v221 = v270;
      sub_1E134E724(v264, v270);
      v222 = type metadata accessor for ArticlePageIntent();
      v220(&v221[*(v222 + 20)], v48, v130);
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0xE:
      v155 = *(v268 + 3);
      v156 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v155);
      v157 = sub_1E13006E4(0, &qword_1ECEB7950);
      (*(v156 + 8))(&v281, v157, sub_1E178C6B4, 0, v157, v155, v156);
      *v270 = v281;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x11:
      v158 = *(v268 + 3);
      v159 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v158);
      v160 = type metadata accessor for ReviewsPage(0);
      (*(v159 + 8))(&v281, v160, sub_1E178C6B4, 0, v160, v158, v159);
      v93 = v281;
      if (v281)
      {
        goto LABEL_28;
      }

      goto LABEL_69;
    case 0x12:
      v190 = v250;
      sub_1E134FD1C(v265, v250, &unk_1ECEB4B60);
      v191 = v266;
      v192 = v267;
      if ((*(v267 + 48))(v190, 1, v266) == 1)
      {
        sub_1E1308058(v190, &unk_1ECEB4B60);
      }

      else
      {
        v228 = *(v192 + 32);
        v228(v63, v190, v191);
        v228(v270, v63, v191);
      }

      goto LABEL_69;
    case 0x13:
      v170 = v254;
      sub_1E134FD1C(v265, v254, &unk_1ECEB4B60);
      v188 = v266;
      v189 = v267;
      if ((*(v267 + 48))(v170, 1, v266) == 1)
      {
LABEL_40:
        v132 = &unk_1ECEB4B60;
        v133 = v170;
        goto LABEL_63;
      }

      v227 = *(v189 + 32);
      v227(v43, v170, v188);
      v227(v270, v43, v188);
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x18:
      v90 = *(v268 + 3);
      v91 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v90);
      v92 = type metadata accessor for Review(0);
      (*(v91 + 8))(&v281, v92, sub_1E178C6B4, 0, v92, v90, v91);
      v93 = v281;
      if (v281)
      {
        goto LABEL_28;
      }

      goto LABEL_69;
    case 0x19:
      v134 = *(v268 + 3);
      v135 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v134);
      v136 = type metadata accessor for EditorsChoice();
      (*(v135 + 8))(&v281, v136, sub_1E178C6B4, 0, v136, v134, v135);
      v93 = v281;
      if (!v281)
      {
        goto LABEL_69;
      }

LABEL_28:
      *v270 = v93;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x1A:
      v94 = *(v268 + 3);
      v95 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v94);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8FA8);
      (*(v95 + 8))(&v281, v96, sub_1E178C6B4, 0, v96, v94, v95);
      v97 = v281;
      if (!v281)
      {
        goto LABEL_69;
      }

      if (*(v281 + 16) && (v98 = sub_1E1595210(2u), (v99 & 1) != 0))
      {
        v101 = v266;
        v100 = v267;
        v102 = *(v267 + 72);
        v103 = *(v267 + 16);
        v103(v58, *(v97 + 56) + v102 * v98, v266);
        v104 = *(v100 + 32);
        v105 = v241;
        v106 = v58;
        v107 = v101;
        v104(v241, v106, v101);
        if (*(v97 + 16))
        {
          v108 = sub_1E1595210(1u);
          if (v109)
          {
            v110 = *(v97 + 56) + v108 * v102;
            v111 = v237;
            v103(v237, v110, v101);

            v112 = v238;
            v104(v238, v111, v107);
            v113 = v240;
            v104(v240, v105, v107);
            v114 = *(v267 + 56);
            v114(v113, 0, 1, v107);
            v115 = *(v239 + 20);
            v104((v113 + v115), v112, v107);
            v114(v113 + v115, 0, 1, v107);
            sub_1E178C09C(v113, v270, type metadata accessor for ArcadePageUrls);
            type metadata accessor for FlowAction.Destination();
            return swift_storeEnumTagMultiPayload();
          }
        }

        (*(v267 + 8))(v105, v101);
      }

      else
      {
      }

      goto LABEL_69;
    case 0x1C:
      v85 = *(v268 + 3);
      v86 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v85);
      v87 = type metadata accessor for MarketingItemRequestInfo();
      (*(v86 + 8))(&v281, v87, sub_1E178C6B4, 0, v87, v85, v86);
      v88 = v281;
      if (!v281)
      {
        goto LABEL_69;
      }

      v89 = v270;
      sub_1E134E724(v264, v270);
      *(v89 + 5) = v88;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x1D:
      v137 = v251;
      sub_1E134FD1C(v265, v251, &unk_1ECEB4B60);
      v161 = v266;
      v162 = v267;
      if ((*(v267 + 48))(v137, 1, v266) != 1)
      {
        v163 = *(v162 + 32);
        v163(v51, v137, v161);
        v164 = *(v268 + 3);
        v165 = *(v268 + 4);
        __swift_project_boxed_opaque_existential_1Tm(v268, v164);
        v166 = type metadata accessor for ArcadeSeeAllGamesPage();
        (*(v165 + 8))(&v281, v166, sub_1E178C6B4, 0, v166, v164, v165);
        v167 = v281;
        v168 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8FA0) + 48);
        v169 = v270;
        *v270 = v167;
        v163(&v169[v168], v51, v161);
        type metadata accessor for FlowAction.Destination();
        return swift_storeEnumTagMultiPayload();
      }

LABEL_38:
      v132 = &unk_1ECEB4B60;
      v133 = v137;
      goto LABEL_63;
    case 0x25:
      v200 = *(v268 + 3);
      v201 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v200);
      v202 = type metadata accessor for GameCenterPlayerProfileAction();
      (*(v201 + 8))(&v281, v202, sub_1E178C6B4, 0, v202, v200, v201);
      if (!v281)
      {
        goto LABEL_69;
      }

      v204 = *(v281 + OBJC_IVAR____TtC11AppStoreKit29GameCenterPlayerProfileAction_playerId);
      v203 = *(v281 + OBJC_IVAR____TtC11AppStoreKit29GameCenterPlayerProfileAction_playerId + 8);

      v205 = v270;
      if (!v203)
      {
        goto LABEL_69;
      }

      *v270 = v204;
      *(v205 + 1) = v203;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x28:
      v193 = *(v268 + 3);
      v194 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v193);
      v195 = type metadata accessor for ShareSheetAction();
      (*(v194 + 8))(&v281, v195, sub_1E178C6B4, 0, v195, v193, v194);
      if (!v281)
      {
        goto LABEL_69;
      }

      v196 = *(v281 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_data);
      v197 = *(v281 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_activities);
      v198 = *(v281 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_shareSheetStyle);

      v199 = v270;
      *v270 = v196;
      *(v199 + 1) = v197;
      *(v199 + 16) = v198;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x2C:
      v79 = v249;
      sub_1E134FD1C(v265, v249, &unk_1ECEB4B60);
      v80 = v266;
      v81 = v267;
      if ((*(v267 + 48))(v79, 1, v266) == 1)
      {
        sub_1E1308058(v79, &unk_1ECEB4B60);
        v82 = 1;
      }

      else
      {
        (*(v81 + 32))(v68, v79, v80);
        sub_1E134E724(v264, &v281);
        v206 = *(v81 + 16);
        v207 = v259;
        v206(v259, v68, v80);
        v208 = v260;
        sub_1E134E724(&v281, v260);
        v206((v208 + *(v261 + 20)), v207, v80);
        sub_1E178C054(qword_1EE1D9C48, type metadata accessor for ClosedGenericPageIntent);
        sub_1E1AF439C();
        v209 = *(v81 + 8);
        v209(v207, v80);
        sub_1E134B88C(&v281);
        v209(v68, v80);
        v82 = 0;
      }

      (*(v262 + 56))(v73, v82, 1, v263);
      sub_1E178BF08(v73, v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F90);
      sub_1E134FD1C(v78, v270, &qword_1ECEB8F88);
      v210 = *(v268 + 3);
      v211 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v210);
      v212 = type metadata accessor for GenericPage();
      (*(v211 + 8))(v212, sub_1E178C6B4, 0, v212, v210, v211);
      sub_1E1308058(v78, &qword_1ECEB8F88);
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x31:
      v116 = *(v268 + 3);
      v117 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v116);
      (*(v117 + 8))(&v271, &type metadata for Annotation, sub_1E178C6B4, 0, &type metadata for Annotation, v116, v117);
      if (*(&v271 + 1))
      {
        v287 = v277;
        v288 = v278;
        v289 = v279;
        v290 = v280;
        v118 = v273;
        v283 = v273;
        v284 = v274;
        v285 = v275;
        v286 = v276;
        v281 = v271;
        v282 = v272;
        v119 = v278;
        v120 = v279;
        v121 = v270;
        v270[6] = v277;
        v121[7] = v119;
        v121[8] = v120;
        *(v121 + 18) = v290;
        v122 = v284;
        v123 = v285;
        v121[2] = v118;
        v121[3] = v122;
        v124 = v286;
        v121[4] = v123;
        v121[5] = v124;
        v125 = v282;
        *v121 = v281;
        v121[1] = v125;
        type metadata accessor for FlowAction.Destination();
        return swift_storeEnumTagMultiPayload();
      }

      v132 = &unk_1ECEB8FB0;
      goto LABEL_62;
    case 0x36:
      v83 = *(v268 + 3);
      v84 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v83);
      (*(v84 + 8))(&v271, MEMORY[0x1E69E7CA0] + 8, sub_1E178C6B4, 0, MEMORY[0x1E69E7CA0] + 8, v83, v84);
      if (*(&v272 + 1))
      {
        sub_1E1301CF0(&v271, &v281);
        sub_1E1301CF0(&v281, v270);
        type metadata accessor for FlowAction.Destination();
      }

      else
      {
        v132 = &qword_1ECEB2DF0;
LABEL_62:
        v133 = &v271;
LABEL_63:
        sub_1E1308058(v133, v132);
LABEL_69:
        type metadata accessor for FlowAction.Destination();
      }

      return swift_storeEnumTagMultiPayload();
    default:
      v269 = v76;
      v174 = v75;
      v175 = *(v268 + 3);
      v176 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v268, v175);
      v177 = type metadata accessor for GenericPage();
      (*(v176 + 8))(&v281, v177, sub_1E178C6B4, 0, v177, v175, v176);
      v178 = v281;
      v179 = v266;
      v180 = v267;
      v181 = *(v267 + 48);
      v182 = v265;
      if (v181(v265, 1, v266) == 1 && !v178)
      {
        goto LABEL_69;
      }

      v268 = *(v262 + 56);
      v268(v174, 1, 1, v263);
      v183 = v244;
      sub_1E134FD1C(v182, v244, &unk_1ECEB4B60);
      v184 = v181(v183, 1, v179);
      v185 = v270;
      if (v184 == 1)
      {
        sub_1E1308058(v183, &unk_1ECEB4B60);
      }

      else
      {
        v229 = v248;
        (*(v180 + 32))(v248, v183, v179);
        sub_1E134E724(v264, &v281);
        v230 = *(v180 + 16);
        v231 = v259;
        v230(v259, v229, v179);
        v265 = v178;
        v232 = v260;
        sub_1E134E724(&v281, v260);
        v230((v232 + *(v261 + 20)), v231, v179);
        sub_1E178C054(qword_1EE1D9C48, type metadata accessor for ClosedGenericPageIntent);
        v233 = v269;
        v178 = v265;
        sub_1E1AF439C();
        v234 = *(v180 + 8);
        v234(v231, v179);
        sub_1E134B88C(&v281);
        v234(v248, v179);
        v185 = v270;
        sub_1E1308058(v174, &qword_1ECEB8F88);
        v268(v233, 0, 1, v263);
        sub_1E178BF08(v233, v174);
      }

      v235 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F90) + 48);
      sub_1E178BF08(v174, v185);
      *(v185 + v235) = v178;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
  }
}

unint64_t FlowAction.Destination.destinationIdentifier.getter()
{
  v1 = type metadata accessor for FlowAction.Destination();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E178BF90(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x746E756F636361;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6956626557736D61;
      break;
    case 2:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0xD000000000000010;
      break;
    case 3:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x656C6369747261;
      break;
    case 4:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x656461637261;
      break;
    case 5:

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8FA0) + 48);
      v8 = sub_1E1AEFCCC();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      result = 0xD000000000000011;
      break;
    case 6:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x5563696D616E7964;
      break;
    case 7:
    case 18:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0xD000000000000013;
      break;
    case 8:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x656D656761676E65;
      break;
    case 9:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x65636E616E6966;
      break;
    case 10:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0xD000000000000017;
      break;
    case 11:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x41636972656E6567;
      break;
    case 12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F90);

      sub_1E1308058(v3, &qword_1ECEB8F88);
      result = 0x676E6970756F7267;
      break;
    case 13:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6E6974656B72616DLL;
      break;
    case 14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F90);

      sub_1E1308058(v3, &qword_1ECEB8F88);
      result = 1701273968;
      break;
    case 15:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6563614665676170;
      break;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F90);

      sub_1E1308058(v3, &qword_1ECEB8F88);
      result = 0x4479636176697270;
      break;
    case 17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F98);

      swift_unknownObjectRelease();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2870);
      (*(*(v9 - 8) + 8))(v3, v9);
      result = 0x746375646F7270;
      break;
    case 19:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6573616863727570;
      break;
    case 20:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6F4374726F706572;
      break;
    case 21:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6544776569766572;
      break;
    case 22:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x73776569766572;
      break;
    case 23:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6568536572616873;
      break;
    case 24:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6472614374786574;
      break;
    case 25:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x7961646F74;
      break;
    case 26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8FB8);

      v6 = sub_1E1AEFCCC();
      (*(*(v6 - 8) + 8))(v3, v6);
      result = 0x7665526574697277;
      break;
    case 27:
      sub_1E178BFF4(v3, type metadata accessor for FlowAction.Destination);
      result = 0x73656D6167;
      break;
    case 28:
      return result;
    case 29:
      result = 0xD000000000000013;
      break;
    case 30:
      result = 0xD00000000000001BLL;
      break;
    case 31:
      result = 0x686372616573;
      break;
    case 32:
      result = 0x6E776F6E6B6E75;
      break;
    case 33:
      result = 0x75506E6564646968;
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F90);

      sub_1E1308058(v3, &qword_1ECEB8F88);
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t FlowAction.Destination.automationIdentifier.getter()
{
  v1 = type metadata accessor for ClosedGenericPageIntent();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for FlowAction.Destination();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E178BF90(v0, v12);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v13 = 0x676E6970756F7267;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F90);

    sub_1E178BF08(v12, v9);
    sub_1E134FD1C(v9, v6, &qword_1ECEB8F88);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2870);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      sub_1E1308058(v9, &qword_1ECEB8F88);
      sub_1E1308058(v6, &qword_1ECEB8F88);
    }

    else
    {
      sub_1E1AF437C();
      sub_1E134E724(v3, v20);
      sub_1E178BFF4(v3, type metadata accessor for ClosedGenericPageIntent);
      (*(v15 + 8))(v6, v14);
      v22[0] = v20[0];
      v22[1] = v20[1];
      v23 = v21;
      strcpy(v20, "groupingView=");
      HIWORD(v20[0]) = -4864;
      v17 = sub_1E1AF6F1C();
      MEMORY[0x1E68FECA0](v17);

      v13 = *&v20[0];
      sub_1E134B88C(v22);
      sub_1E1308058(v9, &qword_1ECEB8F88);
    }
  }

  else
  {
    *&v22[0] = FlowAction.Destination.destinationIdentifier.getter();
    *(&v22[0] + 1) = v16;
    MEMORY[0x1E68FECA0](2003134806, 0xE400000000000000);
    v13 = *&v22[0];
    sub_1E178BFF4(v12, type metadata accessor for FlowAction.Destination);
  }

  return v13;
}

uint64_t FlowAction.Destination.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v156 = a2;
  v151 = a3;
  v4 = type metadata accessor for DynamicUIIntent();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v135 = v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2870);
  v144 = *(v6 - 8);
  v145 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v140 = v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v143 = v131 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v148 = v131 - v11;
  v12 = type metadata accessor for ArticlePageIntent();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v150 = v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1E1AF39DC();
  v155 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v134 = v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v137 = v131 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v139 = v131 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v142 = v131 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v147 = v131 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v149 = v131 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v131 - v26;
  v28 = type metadata accessor for TodayPageIntent();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E1AF380C();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v133 = v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v136 = v131 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v138 = v131 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v141 = v131 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v146 = v131 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v131 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = v131 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = v131 - v49;
  v158 = a1;
  sub_1E1AF381C();
  v51 = sub_1E1AF37CC();
  v53 = v52;
  v55 = *(v32 + 8);
  v54 = v32 + 8;
  v56 = v50;
  v57 = v31;
  v58 = v55;
  v55(v56, v57);
  if (!v53)
  {
    v66 = sub_1E1AF5A7C();
    sub_1E178C054(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    v132 = v58;
    v67 = swift_allocError();
    v69 = v68;
    v70 = type metadata accessor for FlowAction.Destination();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1E1B02CC0;
    *(v71 + 32) = swift_allocError();
    *v72 = 1701869940;
    v72[1] = 0xE400000000000000;
    v72[2] = v70;
    v73 = *(*(v66 - 8) + 104);
    v73(v72, *MEMORY[0x1E69AB690], v66);
    *v69 = v70;
    v69[1] = v71;
    v73(v69, *MEMORY[0x1E69AB698], v66);
    v154 = v67;
    swift_willThrow();
    (*(v155 + 8))(v156, v153);
    return v132(v158, v57);
  }

  v152 = v57;
  v59 = v153;
  if (v51 == 0x7961646F74 && v53 == 0xE500000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {
    v60 = v58;

    v61 = v158;
    sub_1E1AF381C();
    v63 = v155;
    v62 = v156;
    (*(v155 + 16))(v27, v156, v59);
    v64 = v154;
    TodayPageIntent.init(deserializing:using:)(v47, v27, v30);
    v154 = v64;
    if (v64)
    {
      (*(v63 + 8))(v62, v59);
      return v60(v61, v152);
    }

    (*(v63 + 8))(v62, v59);
    v60(v61, v152);
    sub_1E178C09C(v30, v151, type metadata accessor for TodayPageIntent);
    type metadata accessor for FlowAction.Destination();
    return swift_storeEnumTagMultiPayload();
  }

  v74 = v59;
  if ((v51 != 0x656C6369747261 || v53 != 0xE700000000000000) && (sub_1E1AF74AC() & 1) == 0)
  {
    v131[1] = v54;
    if (v51 == 0x676E6970756F7267 && v53 == 0xE800000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      sub_1E1AF381C();
      v81 = v155;
      v82 = v156;
      (*(v155 + 16))(v147, v156, v59);
      type metadata accessor for ClosedGenericPageIntent();
      sub_1E178C054(&qword_1ECEB8FC0, type metadata accessor for ClosedGenericPageIntent);
      sub_1E178C054(qword_1EE1D9C48, type metadata accessor for ClosedGenericPageIntent);
      v83 = v148;
      v84 = v154;
      sub_1E1AF438C();
      v154 = v84;
      if (v84)
      {
        (*(v81 + 8))(v82, v59);
        return v58(v158, v152);
      }

      (*(v81 + 8))(v82, v59);
      v58(v158, v152);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F90);
      v86 = v83;
      v87 = *(v85 + 48);
      v89 = v144;
      v88 = v145;
      v90 = v151;
      (*(v144 + 32))(v151, v86, v145);
      (*(v89 + 56))(v90, 0, 1, v88);
      *(v90 + v87) = 0;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    }

    v132 = v58;
    if (v51 == 1701273968 && v53 == 0xE400000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      v91 = v158;
      sub_1E1AF381C();
      v93 = v155;
      v92 = v156;
      (*(v155 + 16))(v142, v156, v59);
      type metadata accessor for ClosedGenericPageIntent();
      sub_1E178C054(&qword_1ECEB8FC0, type metadata accessor for ClosedGenericPageIntent);
      sub_1E178C054(qword_1EE1D9C48, type metadata accessor for ClosedGenericPageIntent);
      v94 = v143;
      v95 = v154;
      sub_1E1AF438C();
      v154 = v95;
      if (!v95)
      {
        (*(v93 + 8))(v92, v59);
        v132(v91, v152);
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F90);
        v97 = v94;
        v98 = *(v96 + 48);
        v100 = v144;
        v99 = v145;
        v101 = v151;
        (*(v144 + 32))(v151, v97, v145);
        (*(v100 + 56))(v101, 0, 1, v99);
        *(v101 + v98) = 0;
        type metadata accessor for FlowAction.Destination();
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      if ((v51 != 0x746375646F7270 || v53 != 0xE700000000000000) && (sub_1E1AF74AC() & 1) == 0)
      {
        if (v51 == 0x686372616573 && v53 == 0xE600000000000000 || (sub_1E1AF74AC() & 1) != 0)
        {
          v109 = sub_1E1AF5A7C();
          sub_1E178C054(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
          v110 = swift_allocError();
          v111 = v58;
          v113 = v112;
          v114 = type metadata accessor for FlowAction.Destination();
          *v113 = v51;
          v113[1] = v53;
          v113[2] = v114;
          (*(*(v109 - 8) + 104))(v113, *MEMORY[0x1E69AB680], v109);
          v154 = v110;
          swift_willThrow();
          (*(v155 + 8))(v156, v59);
        }

        else
        {
          v111 = v58;
          if (v51 == 0x6E6974656B72616DLL && v53 == 0xED00006D65744967 || (sub_1E1AF74AC() & 1) != 0)
          {

            v115 = v136;
            v116 = v158;
            sub_1E1AF381C();
            v118 = v155;
            v117 = v156;
            v119 = v137;
            (*(v155 + 16))(v137, v156, v59);
            v120 = v154;
            MarketingIntent.init(deserializing:using:)(v115, v119, v157);
            v154 = v120;
            if (v120)
            {
              (*(v118 + 8))(v117, v59);
              return v111(v116, v152);
            }

            (*(v118 + 8))(v117, v59);
            v111(v116, v152);
            v121 = v157[1];
            v122 = v151;
            *v151 = v157[0];
            v122[1] = v121;
            v122[2] = v157[2];
            type metadata accessor for FlowAction.Destination();
            return swift_storeEnumTagMultiPayload();
          }

          if (v51 == 0x5563696D616E7964 && v53 == 0xE900000000000049 || (sub_1E1AF74AC() & 1) != 0)
          {

            v123 = v133;
            sub_1E1AF381C();
            v124 = v134;
            (*(v155 + 16))(v134, v156, v59);
            v125 = v154;
            DynamicUIIntent.init(deserializing:using:)(v123, v124, v135);
            v154 = v125;
            if (!v125)
            {
              (*(v155 + 8))(v156, v59);
              v58(v158, v152);
              sub_1E178C09C(v135, v151, type metadata accessor for DynamicUIIntent);
              type metadata accessor for FlowAction.Destination();
              return swift_storeEnumTagMultiPayload();
            }
          }

          else
          {
            v126 = sub_1E1AF5A7C();
            sub_1E178C054(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
            v127 = swift_allocError();
            v129 = v128;
            v130 = type metadata accessor for FlowAction.Destination();
            *v129 = v51;
            v129[1] = v53;
            v129[2] = v130;
            (*(*(v126 - 8) + 104))(v129, *MEMORY[0x1E69AB680], v126);
            v154 = v127;
            swift_willThrow();
          }

          (*(v155 + 8))(v156, v59);
        }

        return v111(v158, v152);
      }

      v91 = v158;
      sub_1E1AF381C();
      v93 = v155;
      v92 = v156;
      (*(v155 + 16))(v139, v156, v59);
      type metadata accessor for ClosedGenericPageIntent();
      sub_1E178C054(&qword_1ECEB8FC0, type metadata accessor for ClosedGenericPageIntent);
      sub_1E178C054(qword_1EE1D9C48, type metadata accessor for ClosedGenericPageIntent);
      v102 = v140;
      v103 = v154;
      sub_1E1AF438C();
      v154 = v103;
      if (!v103)
      {
        (*(v93 + 8))(v92, v59);
        v132(v91, v152);
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F98);
        v105 = v102;
        v106 = *(v104 + 48);
        v107 = v151;
        v108 = (v151 + *(v104 + 64));
        (*(v144 + 32))(v151, v105, v145);
        *(v107 + v106) = 0;
        type metadata accessor for FlowAction.Destination();
        *v108 = 0;
        v108[1] = 0;
        return swift_storeEnumTagMultiPayload();
      }
    }

    (*(v93 + 8))(v92, v59);
    return v132(v91, v152);
  }

  v75 = v158;
  sub_1E1AF381C();
  v77 = v155;
  v76 = v156;
  v78 = v149;
  (*(v155 + 16))(v149, v156, v74);
  v79 = v150;
  v80 = v154;
  ArticlePageIntent.init(deserializing:using:)(v44, v78, v150);
  v154 = v80;
  if (!v80)
  {
    (*(v77 + 8))(v76, v74);
    v58(v75, v152);
    sub_1E178C09C(v79, v151, type metadata accessor for ArticlePageIntent);
    type metadata accessor for FlowAction.Destination();
    return swift_storeEnumTagMultiPayload();
  }

  (*(v77 + 8))(v76, v74);
  return v58(v75, v152);
}

uint64_t type metadata accessor for FlowAction.Destination()
{
  result = qword_1ECEB8FC8;
  if (!qword_1ECEB8FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E178BF08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E178BF90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction.Destination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E178BFF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E178C054(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E178C09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1E178C104()
{
  sub_1E178C31C();
  if (v0 <= 0x3F)
  {
    sub_1E1AEFCCC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ArticlePageIntent();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ArcadePageUrls();
        if (v3 <= 0x3F)
        {
          sub_1E178C3A4();
          if (v4 <= 0x3F)
          {
            type metadata accessor for DynamicUIIntent();
            if (v5 <= 0x3F)
            {
              type metadata accessor for EditorsChoice();
              if (v6 <= 0x3F)
              {
                sub_1E13006E4(319, &unk_1ECEB5F50);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for PageFacetsPresenter();
                  if (v8 <= 0x3F)
                  {
                    sub_1E178C424();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for ProductMediaGalleryPage();
                      if (v10 <= 0x3F)
                      {
                        sub_1E178C4D0();
                        if (v11 <= 0x3F)
                        {
                          sub_1E178C538();
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for Review(319);
                            if (v13 <= 0x3F)
                            {
                              type metadata accessor for ReviewsPage(319);
                              if (v14 <= 0x3F)
                              {
                                sub_1E178C5B4();
                                if (v15 <= 0x3F)
                                {
                                  type metadata accessor for TextCard();
                                  if (v16 <= 0x3F)
                                  {
                                    type metadata accessor for TodayPageIntent();
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1E178C638();
                                      if (v18 <= 0x3F)
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
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E178C31C()
{
  if (!qword_1ECEB8FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8F88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8FE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECEB8FD8);
    }
  }
}

void sub_1E178C3A4()
{
  if (!qword_1ECEB8FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8FF0);
    sub_1E1AEFCCC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECEB8FE8);
    }
  }
}

void sub_1E178C424()
{
  if (!qword_1ECEB8FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB9000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB9008);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECEB8FF8);
    }
  }
}

void sub_1E178C4D0()
{
  if (!qword_1ECEB9010)
  {
    sub_1E13006E4(255, &qword_1ECEB7950);
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB9010);
    }
  }
}

void sub_1E178C538()
{
  if (!qword_1ECEB9018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB9020);
    type metadata accessor for HttpTemplateAction();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECEB9018);
    }
  }
}

void sub_1E178C5B4()
{
  if (!qword_1ECEB9028)
  {
    type metadata accessor for ShareSheetData();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB9030);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECEB9028);
    }
  }
}

void sub_1E178C638()
{
  if (!qword_1ECEB9038)
  {
    sub_1E1AEFCCC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECEB9038);
    }
  }
}

uint64_t ShelfBasedCollectionViewController.makeShelfComponentTypeMappingProvider()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1E1AF6FEC();
  v3 = sub_1E1AF772C();
  MEMORY[0x1E68FECA0](v3);

  MEMORY[0x1E68FECA0](0xD00000000000007CLL, 0x80000001E1B75270);
  v6[3] = MEMORY[0x1E69E6158];
  sub_1E1AF38BC();
  sub_1E13E44F8(v6);
  sub_1E1AF54BC();

  v4 = type metadata accessor for EmptyShelfComponentTypeMappingProvider();
  result = swift_allocObject();
  a1[3] = v4;
  a1[4] = &protocol witness table for EmptyShelfComponentTypeMappingProvider;
  *a1 = result;
  return result;
}

uint64_t ShelfBasedCollectionViewController.makePageGridProvider()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_1E1AF6FEC();
  v3 = sub_1E1AF772C();
  MEMORY[0x1E68FECA0](v3);

  MEMORY[0x1E68FECA0](0xD00000000000005ALL, 0x80000001E1B752F0);
  v5[3] = MEMORY[0x1E69E6158];
  sub_1E1AF38BC();
  sub_1E13E44F8(v5);
  sub_1E1AF54BC();

  *(a1 + 24) = &type metadata for EmptyPageGridProvider;
  *(a1 + 32) = &protocol witness table for EmptyPageGridProvider;
  return result;
}

uint64_t ShelfBasedCollectionViewController.makeShelfLayoutSpacingProvider()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_1E1AF6FEC();
  v3 = sub_1E1AF772C();
  MEMORY[0x1E68FECA0](v3);

  MEMORY[0x1E68FECA0](0xD00000000000006ELL, 0x80000001E1B75350);
  v5[3] = MEMORY[0x1E69E6158];
  sub_1E1AF38BC();
  sub_1E13E44F8(v5);
  sub_1E1AF54BC();

  *(a1 + 24) = &type metadata for EmptyShelfLayoutSpacingProvider;
  *(a1 + 32) = &protocol witness table for EmptyShelfLayoutSpacingProvider;
  return result;
}

uint64_t ShelfBasedCollectionViewController.makeLayoutSectionProvider()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_1E1AF6FEC();
  v3 = sub_1E1AF772C();
  MEMORY[0x1E68FECA0](v3);

  MEMORY[0x1E68FECA0](0xD000000000000064, 0x80000001E1B753C0);
  v5[3] = MEMORY[0x1E69E6158];
  sub_1E1AF38BC();
  sub_1E13E44F8(v5);
  sub_1E1AF54BC();

  *(a1 + 24) = &type metadata for EmptyLayoutSectionProvider;
  *(a1 + 32) = &protocol witness table for EmptyLayoutSectionProvider;
  return result;
}

uint64_t _s11AppStoreKit34ShelfBasedCollectionViewControllerPAAE09makeStateB09JetEngine09TransientjB0Cys11AnyHashableVGyF_0()
{
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_1E1AF6FEC();
  v1 = sub_1E1AF772C();
  MEMORY[0x1E68FECA0](v1);

  MEMORY[0x1E68FECA0](0xD000000000000053, 0x80000001E1B75580);
  v3[3] = MEMORY[0x1E69E6158];
  sub_1E1AF38BC();
  sub_1E13E44F8(v3);
  sub_1E1AF548C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2C00);
  swift_allocObject();
  return sub_1E1AF497C();
}

uint64_t _s11AppStoreKit34ShelfBasedCollectionViewControllerPAAE04makeD21SupplementaryProviderAA0djK0_pyF_0()
{
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_1E1AF6FEC();
  v1 = sub_1E1AF772C();
  MEMORY[0x1E68FECA0](v1);

  MEMORY[0x1E68FECA0](0xD00000000000006ELL, 0x80000001E1B75510);
  v3[3] = MEMORY[0x1E69E6158];
  sub_1E1AF38BC();
  sub_1E13E44F8(v3);
  sub_1E1AF54BC();

  type metadata accessor for EmptyShelfSupplementaryProvider();
  return swift_allocObject();
}

uint64_t _s11AppStoreKit34ShelfBasedCollectionViewControllerPAAE29makeItemSupplementaryProviderAA0jkL0_pyF_0()
{
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_1E1AF6FEC();
  v1 = sub_1E1AF772C();
  MEMORY[0x1E68FECA0](v1);

  MEMORY[0x1E68FECA0](0xD00000000000006CLL, 0x80000001E1B754A0);
  v3[3] = MEMORY[0x1E69E6158];
  sub_1E1AF38BC();
  sub_1E13E44F8(v3);
  sub_1E1AF54BC();

  type metadata accessor for EmptyItemSupplementaryProvider();
  return swift_allocObject();
}

uint64_t _s11AppStoreKit34ShelfBasedCollectionViewControllerPAAE04makeF16ElementsObserverAA0fjK0_pyF_0()
{
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_1E1AF6FEC();
  v1 = sub_1E1AF772C();
  MEMORY[0x1E68FECA0](v1);

  MEMORY[0x1E68FECA0](0xD00000000000006ELL, 0x80000001E1B75430);
  v3[3] = MEMORY[0x1E69E6158];
  sub_1E1AF38BC();
  sub_1E13E44F8(v3);
  sub_1E1AF54BC();

  type metadata accessor for EmptyCollectionElementsObserver();
  return swift_allocObject();
}

double ComponentHeightCache.height(for:or:)(uint64_t a1, double (*a2)(uint64_t))
{
  v3 = v2;
  v6 = type metadata accessor for ItemLayoutContext();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  sub_1E1AF3DAC();

  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = &selRef_setAppleID_;
  if (*(v7 + 16) && (v9 = sub_1E135FCF4(v24), (v10 & 1) != 0))
  {
    v11 = (*(v7 + 56) + 16 * v9);
    v12 = *v11;
    v13 = *(v11 + 1);
    swift_endAccess();
    v14 = v13;
    sub_1E134B88C(v24);
    sub_1E1452D6C();
    v15 = a1 + *(v6 + 32);
    v16 = *(v15 + *(type metadata accessor for ShelfLayoutContext() + 40));
    v17 = v14;
    v18 = [v16 traitCollection];
    v8 = &selRef_setAppleID_;
    LOBYTE(v14) = sub_1E1AF6D0C();

    if (v14)
    {
      return v12;
    }
  }

  else
  {
    swift_endAccess();
    v19 = sub_1E134B88C(v24);
  }

  v12 = a2(v19);
  swift_getKeyPath();
  sub_1E1AF3DAC();

  v20 = [*(a1 + *(v6 + 32) + *(type metadata accessor for ShelfLayoutContext() + 40)) v8[114]];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_1E159B81C(v20, v24, isUniquelyReferenced_nonNull_native, v12);
  sub_1E134B88C(v24);
  *(v3 + 16) = v23;
  swift_endAccess();
  return v12;
}

uint64_t sub_1E178D7DC()
{
  v1 = *v0;
  sub_1E1AF762C();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1E6900390](*&v2);
  sub_1E1AF6D1C();
  return sub_1E1AF767C();
}

uint64_t sub_1E178D848()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E6900390](*&v1);
  return sub_1E1AF6D1C();
}

uint64_t sub_1E178D89C()
{
  v1 = *v0;
  sub_1E1AF762C();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1E6900390](*&v2);
  sub_1E1AF6D1C();
  return sub_1E1AF767C();
}

uint64_t sub_1E178D904(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1E1452D6C();
  return sub_1E1AF6D0C() & 1;
}

uint64_t ComponentHeightCache.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1E15A22E0(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t ComponentHeightCache.cachedHeights(for:)()
{
  v1 = v0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  sub_1E1AF3DAC();

  v2 = *(v17 + 16);
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1E135C320(0, v2, 0);
    v3 = v16;
    v4 = v17 + 32;
    do
    {
      sub_1E1300B24(v4, v15);
      __swift_project_boxed_opaque_existential_1Tm(v15, v15[3]);
      sub_1E1AF3FEC();
      swift_beginAccess();
      v5 = *(v1 + 16);
      if (*(v5 + 16) && (v6 = sub_1E135FCF4(v14), (v7 & 1) != 0))
      {
        v8 = *(v5 + 56) + 16 * v6;
        v9 = *v8;
        v10 = *(v8 + 8);
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v9 = 0;
      }

      sub_1E134B88C(v14);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v16 = v3;
      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1E135C320((v11 > 1), v12 + 1, 1);
        v3 = v16;
      }

      *(v3 + 16) = v12 + 1;
      *(v3 + 8 * v12 + 32) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t ComponentHeightCache.invalidate(items:)(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1E1300B24(a1, &v4);
    if (*(&v5 + 1))
    {
LABEL_3:
      sub_1E1308EC0(&v4, v7);
      __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
      sub_1E1AF615C();
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  else
  {
    v3 = *(a1 + 16);
    v4 = *a1;
    v5 = v3;
    v6 = *(a1 + 32);
    if (*(&v3 + 1))
    {
      goto LABEL_3;
    }
  }

  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
}

uint64_t sub_1E178DC74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = sub_1E135FCF4(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a2 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E141A004();
    }

    sub_1E134B88C(*(v8 + 48) + 40 * v6);
    v9 = *(*(v8 + 56) + 16 * v6 + 8);
    sub_1E1414A3C(v6, v8);
    *(a2 + 16) = v8;
  }

  return swift_endAccess();
}

uint64_t ComponentHeightCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1E178DE14()
{
  result = qword_1ECEB9040;
  if (!qword_1ECEB9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9040);
  }

  return result;
}

uint64_t TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, __int128 *a11)
{
  v19 = a10;
  v18 = a11;
  sub_1E14F59A8(a1, a9);
  sub_1E1300B24(a2, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AC8);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1Tm(&v40, *(&v41 + 1));
    sub_1E1AF14BC();
    v20 = a5;
    v21 = a8;
    v22 = v34;
    v23 = v35;
    v24 = __swift_project_boxed_opaque_existential_1Tm(v33, v34);
    *(&v38 + 1) = v22;
    v25 = *(v23 + 8);
    a8 = v21;
    a5 = v20;
    v39 = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
    v27 = v24;
    v18 = a11;
    v19 = a10;
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v27, v22);
    sub_1E1308058(a1, &qword_1ECEB4E00);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(&v40);
    if (*(&v38 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(a2);
      sub_1E1308EC0(&v37, &v40);
      goto LABEL_7;
    }
  }

  else
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_1E1308058(a1, &qword_1ECEB4E00);
    sub_1E1308058(&v40, &qword_1ECEB2AD0);
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  sub_1E1308EC0(a2, &v40);
  if (*(&v38 + 1))
  {
    sub_1E1308058(&v37, &qword_1ECEB4E00);
  }

LABEL_7:
  sub_1E1308EC0(&v40, a9 + 40);
  sub_1E1308EC0(a3, a9 + 80);
  sub_1E1308EC0(a4, a9 + 120);
  sub_1E1308EC0(a5, a9 + 160);
  v28 = *(a6 + 16);
  *(a9 + 200) = *a6;
  *(a9 + 216) = v28;
  *(a9 + 232) = *(a6 + 32);
  v29 = *(a7 + 16);
  *(a9 + 240) = *a7;
  *(a9 + 256) = v29;
  *(a9 + 272) = *(a7 + 32);
  sub_1E1308EC0(a8, a9 + 280);
  sub_1E1308EC0(v19, a9 + 320);
  return sub_1E1308EC0(v18, a9 + 360);
}

AppStoreKit::TitleHeaderLayout::ChildrenHorizontalAlignment_optional __swiftcall TitleHeaderLayout.ChildrenHorizontalAlignment.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t TitleHeaderLayout.init(accessoryView:accessoryMargin:accessoryVerticalAlignment:accessoryHorizontalAlignment:children:childrenHorizontalAlignment:allowsAccessibilityLayouts:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  v14 = *a4;
  v15 = *a6;
  v16 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v16;
  *(a8 + 32) = *(a1 + 32);
  result = sub_1E1308EC0(a2, a8 + 40);
  *(a8 + 80) = a5;
  *(a8 + 88) = v15;
  *(a8 + 96) = v11;
  *(a8 + 104) = v12;
  *(a8 + 112) = v13;
  *(a8 + 113) = v14;
  *(a8 + 114) = a7;
  return result;
}

__n128 TitleHeaderLayout.accessoryVerticalAlignment.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[7].n128_u8[0];
  result = v1[6];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_1E178E2D8@<X0>(uint64_t a1@<X8>)
{
  sub_1E14F59A8(v1, &v4);
  if (!v5)
  {
    result = sub_1E1308058(&v4, &qword_1ECEB4E00);
    goto LABEL_5;
  }

  sub_1E1308EC0(&v4, v6);
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  if (sub_1E1AF117C())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v6);
LABEL_5:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  sub_1E1300B24(v6, a1);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

double sub_1E178E394(void *a1)
{
  v22 = a1;
  v2 = sub_1E1AF162C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF165C();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x1E69AB970], v2, v7);
  sub_1E1AF163C();
  v10 = *(v1 + 80);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + 32;
    v13 = MEMORY[0x1E69ABA90];
    do
    {
      sub_1E1791D9C(v12, v27);
      sub_1E1300B24(v28, v23);
      v14 = sub_1E1AF1A1C();
      v25 = v14;
      v26 = v13;
      __swift_allocate_boxed_opaque_existential_0(v24);
      sub_1E1AF1A2C();
      sub_1E1AF164C();
      __swift_destroy_boxed_opaque_existential_1(v24);
      sub_1E1300B24(v29, v23);
      v25 = v14;
      v26 = v13;
      __swift_allocate_boxed_opaque_existential_0(v24);
      sub_1E1AF1A2C();
      sub_1E1AF164C();
      __swift_destroy_boxed_opaque_existential_1(v24);
      sub_1E14F59A8(&v30, v24);
      if (v25)
      {
        sub_1E1308058(v24, &qword_1ECEB4E00);
        v15 = [v22 traitCollection];
        v16 = sub_1E1AF698C();

        if (v16)
        {
          sub_1E1300B24(v28, v23);
          v25 = v14;
          v26 = v13;
          __swift_allocate_boxed_opaque_existential_0(v24);
          sub_1E1AF1A2C();
          sub_1E1AF164C();
          __swift_destroy_boxed_opaque_existential_1(v24);
          sub_1E1300B24(v29, v23);
          v25 = v14;
          v26 = v13;
          __swift_allocate_boxed_opaque_existential_0(v24);
          sub_1E1AF1A2C();
          sub_1E1AF164C();
          sub_1E1791DD4(v27);
          __swift_destroy_boxed_opaque_existential_1(v24);
        }

        else
        {
          sub_1E1791DD4(v27);
        }
      }

      else
      {
        sub_1E1791DD4(v27);
        sub_1E1308058(v24, &qword_1ECEB4E00);
      }

      v12 += 400;
      --v11;
    }

    while (v11);
  }

  sub_1E1AF161C();
  v18 = v17;
  (*(v20 + 8))(v9, v21);
  return v18;
}

double TitleHeaderLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1E1AF745C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= 0.0)
  {
    return sub_1E178E394(a1);
  }

  sub_1E178E2D8(&v21);
  if (v22)
  {
    sub_1E1308EC0(&v21, v23);
    __swift_project_boxed_opaque_existential_1Tm(v23, v23[3]);
    sub_1E1AF11CC();
    v13 = v12;
    __swift_project_boxed_opaque_existential_1Tm((v3 + 40), *(v3 + 64));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v16 = [a1 traitCollection];
    v17 = v16;
    if (*(v4 + 114) == 1)
    {
      v18 = sub_1E1AF698C();

      if (v18)
      {
        sub_1E178E9F0(a1, a2, a3, a2, a3);
LABEL_13:
        __swift_destroy_boxed_opaque_existential_1(v23);
        return a2;
      }
    }

    else
    {
    }

    if (*(v4 + 112))
    {
      v19 = a2 - (v13 + v15);
    }

    else
    {
      v19 = a2 - (v13 + v15) - *(v4 + 96);
    }

    sub_1E178E9F0(a1, a2, a3, v19, 1.79769313e308);
    goto LABEL_13;
  }

  sub_1E1308058(&v21, &qword_1ECEB4E00);
  sub_1E178E9F0(a1, a2, a3, a2, a3);
  return a2;
}

void sub_1E178E9F0(void *a1, double a2, double a3, double a4, double a5)
{
  v144 = a5;
  v136 = a2;
  v137 = a3;
  v8 = sub_1E1AF745C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF1A6C();
  MEMORY[0x1EEE9AC00](v12);
  v129 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v119 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v138 = &v119 - v19;
  v148 = v5;
  v20 = *(v5 + 80);
  v21 = *(v20 + 16);
  if (!v21)
  {
    return;
  }

  v125 = v11;
  v126 = v8;
  v22 = 0;
  v23 = 0;
  v142 = (&v163[16] + 8);
  v146 = (v18 + 8);
  v24 = *MEMORY[0x1E69ABBD0];
  v134 = *(MEMORY[0x1E69ABBD0] + 8);
  v135 = v24;
  v128 = (v9 + 8);
  v25 = v20 + 32;
  v123 = v21 - 1;
  v124 = v20 + 32;
  v26 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v145 = a1;
  v143 = v16;
  v140 = v21;
  v141 = v20;
  do
  {
    v130 = v29;
    v131 = v26;
    LODWORD(v127) = v23;
    v132 = v27;
    v133 = v28;
    for (i = v25 + 400 * v22; ; i += 400)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
LABEL_80:
        __break(1u);
        return;
      }

      *&v163[0] = v22;
      sub_1E1791D9C(i, v163 + 8);
      if (!*(&v163[4] + 1))
      {
        return;
      }

      v31 = v12;
      v32 = *&v163[0];
      v33 = *v142;
      v34 = v142[1];
      v35 = v142[2];
      v36 = v142[3];
      v37 = v142[4];
      v38 = v142[5];
      v39 = v142[6];
      v40 = v142[7];
      v41 = v142[8];
      v163[0] = *(v163 + 8);
      v163[1] = *(&v163[1] + 8);
      v163[2] = *(&v163[2] + 8);
      v163[3] = *(&v163[3] + 8);
      v163[4] = *(&v163[4] + 8);
      v163[5] = *(&v163[5] + 8);
      v163[6] = *(&v163[6] + 8);
      v163[7] = *(&v163[7] + 8);
      v163[8] = *(&v163[8] + 8);
      v163[9] = *(&v163[9] + 8);
      v163[10] = *(&v163[10] + 8);
      v163[11] = *(&v163[11] + 8);
      v163[12] = *(&v163[12] + 8);
      v163[13] = *(&v163[13] + 8);
      v163[14] = *(&v163[14] + 8);
      v163[15] = *(&v163[15] + 8);
      v163[16] = v33;
      v164[0] = v34;
      v164[1] = v35;
      v165 = v36;
      v166[0] = v37;
      v166[1] = v38;
      v167[0] = v39;
      v167[1] = v40;
      v167[2] = v41;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_80;
      }

      v42 = a4;
      if (*(v148 + 112) == 1)
      {
        v44 = *(v148 + 96);
        v43 = *(v148 + 104);
        if (v44 <= 1)
        {
          if (v44 | v43)
          {
LABEL_17:
            if (v32 + 1 == *(v20 + 16))
            {
              v42 = a4;
            }

            else
            {
              v42 = v136;
            }

            goto LABEL_20;
          }

LABEL_14:
          if (v32)
          {
            v42 = v136;
          }

          else
          {
            v42 = a4;
          }

          goto LABEL_20;
        }

        if (!(v44 ^ 2 | v43))
        {
          goto LABEL_17;
        }

        v42 = v136;
        if (!(v44 ^ 3 | v43))
        {
          goto LABEL_14;
        }
      }

LABEL_20:
      v147 = v22;
      sub_1E14F59A8(v163, &v157);
      if (v158)
      {
        sub_1E1308EC0(&v157, v160);
        v46 = v161;
        v45 = v162;
        v47 = __swift_project_boxed_opaque_existential_1Tm(v160, v161);
        v158 = v46;
        v159 = *(v45 + 8);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v157);
        v49 = v47;
        a1 = v145;
        (*(*(v46 - 8) + 16))(boxed_opaque_existential_0, v49, v46);
        v156 = MEMORY[0x1E69ABBA8];
        v155 = MEMORY[0x1E69E63B0];
        v153 = MEMORY[0x1E69ABBA8];
        *&v154 = 0;
        v152 = MEMORY[0x1E69E63B0];
        *&v151 = 0;
        v50 = v138;
        sub_1E1AF1A5C();
        sub_1E1AF11CC();
        v52 = v51;
        v54 = v53;
        (*v146)(v50, v31);
        __swift_destroy_boxed_opaque_existential_1(v160);
      }

      else
      {
        sub_1E1308058(&v157, &qword_1ECEB4E00);
        v54 = v134;
        v52 = v135;
      }

      v55 = [a1 traitCollection];
      v56 = v55;
      v139 = *(v148 + 114);
      if (v139 != 1)
      {

LABEL_29:
        sub_1E1300B24(&v163[7] + 8, v160);
        goto LABEL_30;
      }

      v57 = sub_1E1AF698C();

      if (v57 & 1) == 0 || v32 || (*(v148 + 112))
      {
        goto LABEL_29;
      }

      v161 = sub_1E1AF140C();
      v162 = MEMORY[0x1E69AB908];
      __swift_allocate_boxed_opaque_existential_0(v160);
      sub_1E1AF13FC();
LABEL_30:
      v58 = v163[4];
      v59 = __swift_project_boxed_opaque_existential_1Tm(&v163[2] + 1, *&v163[4]);
      v158 = v58;
      v159 = *(*(&v58 + 1) + 8);
      v60 = __swift_allocate_boxed_opaque_existential_0(&v157);
      (*(*(v58 - 8) + 16))(v60, v59, v58);
      sub_1E1300B24(v160, &v154);
      sub_1E1300B24(&v163[10], &v151);
      v61 = v143;
      sub_1E1AF1A5C();
      a1 = v145;
      v12 = v31;
      sub_1E1AF11CC();
      v66 = v65;
      v67 = v62;
      if (fabs(v65) >= COERCE_DOUBLE(1) && fabs(v62) >= COERCE_DOUBLE(1))
      {
        break;
      }

      v22 = v147 + 1;
      (*v146)(v61, v31);
      __swift_destroy_boxed_opaque_existential_1(v160);
      sub_1E1791DD4(v163);
      v20 = v141;
      if (v140 == v22)
      {
        return;
      }
    }

    v68 = v64;
    v69 = v133;
    if ((LOBYTE(v127) & 1) == 0)
    {
      v69 = v63;
    }

    v133 = v69;
    sub_1E14F59A8(&v163[12] + 8, &v154);
    if (v155)
    {
      sub_1E1308EC0(&v154, &v157);
      v70 = v158;
      v71 = v159;
      v72 = __swift_project_boxed_opaque_existential_1Tm(&v157, v158);
      v155 = v70;
      v156 = *(v71 + 8);
      v73 = __swift_allocate_boxed_opaque_existential_0(&v154);
      (*(*(v70 - 8) + 16))(v73, v72, v70);
      sub_1E1300B24(v166, &v151);
      sub_1E1300B24(v167 + 8, v150);
      sub_1E1AF1A5C();
      sub_1E1AF11CC();
      v122 = v74;
      v127 = v75;
      v130 = v76;
      sub_1E14F59A8(&v163[15], &v151);
      if (v152)
      {
        sub_1E1308EC0(&v151, &v154);
        v77 = v155;
        v78 = v156;
        v79 = __swift_project_boxed_opaque_existential_1Tm(&v154, v155);
        v152 = v77;
        v153 = *(v78 + 8);
        v80 = __swift_allocate_boxed_opaque_existential_0(&v151);
        (*(*(v77 - 8) + 16))(v80, v79, v77);
        sub_1E1300B24(&v163[7] + 8, v150);
        sub_1E1300B24(&v163[10], &v149);
        v81 = v138;
        sub_1E1AF1A5C();
        sub_1E1AF11CC();
        v121 = v82;
        (*v146)(v81, v31);
        __swift_destroy_boxed_opaque_existential_1(&v154);
      }

      else
      {
        sub_1E1308058(&v151, &qword_1ECEB4E00);
        v121 = v135;
      }

      __swift_project_boxed_opaque_existential_1Tm(v164 + 1, v165);
      v85 = v125;
      sub_1E13BC274();
      sub_1E1AF12DC();
      v87 = v86;
      v88 = *v128;
      v89 = v126;
      (*v128)(v85, v126);
      v90 = v66 + v87;
      sub_1E14F59A8(v163, &v154);
      v91 = v155;
      sub_1E1308058(&v154, &qword_1ECEB4E00);
      v120 = v88;
      if (v91)
      {
        v119 = COERCE_DOUBLE(__swift_project_boxed_opaque_existential_1Tm(&v163[5], *(&v163[6] + 1)));
        sub_1E13BC274();
        sub_1E1AF12DC();
        v119 = v92;
        v88(v85, v89);
        v90 = v90 + v52 + v119;
      }

      v93 = v42 - v90;
      sub_1E14F59A8(&v163[15], &v154);
      v94 = v155;
      if (v155)
      {
        __swift_project_boxed_opaque_existential_1Tm(&v154, v155);
        v94 = sub_1E1AF112C();
        __swift_destroy_boxed_opaque_existential_1(&v154);
        v95 = v121;
        v96 = v94 & (v121 <= v93);
      }

      else
      {
        sub_1E1308058(&v154, &qword_1ECEB4E00);
        v96 = 0;
      }

      v97 = v122;
      v98 = [a1 traitCollection];
      v99 = sub_1E1AF698C();

      if (v97 <= v93 || ((v99 | v94) & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1Tm(v164 + 1, v165);
        v100 = v125;
        sub_1E13BC274();
        sub_1E1AF12DC();
        v102 = v101;
        v120(v100, v126);
        (*v146)(v129, v31);
        v84 = v97 + v102;
        goto LABEL_53;
      }

      if (v96)
      {
        goto LABEL_52;
      }

      if (v99)
      {
        (*v146)(v129, v31);
        v83 = 0;
        v67 = v67 - v68;
        goto LABEL_76;
      }

      sub_1E14F59A8(&v163[15], &v154);
      if (v155)
      {
        sub_1E1308058(&v154, &qword_1ECEB4E00);
LABEL_52:
        __swift_project_boxed_opaque_existential_1Tm(v164 + 1, v165);
        v103 = v125;
        sub_1E13BC274();
        sub_1E1AF12DC();
        v105 = v104;
        v120(v103, v126);
        (*v146)(v129, v31);
        v84 = v121 + v105;
LABEL_53:
        v83 = 1;
        v130 = 0.0;
        v127 = 0.0;
      }

      else
      {
        (*v146)(v129, v31);
        sub_1E1308058(&v154, &qword_1ECEB4E00);
        v83 = 1;
        v130 = 0.0;
        v127 = 0.0;
LABEL_76:
        v84 = 0.0;
      }

      __swift_destroy_boxed_opaque_existential_1(&v157);
      v61 = v143;
    }

    else
    {
      sub_1E1308058(&v154, &qword_1ECEB4E00);
      v83 = 1;
      v130 = 0.0;
      v127 = 0.0;
      v84 = 0.0;
    }

    v106 = [a1 traitCollection];
    v107 = v106;
    if (v139)
    {
      v108 = sub_1E1AF698C();

      if (v108)
      {
        v109 = v131;
        if (v131 <= v66)
        {
          v109 = v66;
        }

        if (v109 > v52 + v84)
        {
          v110 = v109;
        }

        else
        {
          v110 = v52 + v84;
        }

        (*v146)(v61, v31);
        __swift_destroy_boxed_opaque_existential_1(v160);
        v111 = v54 + v67;
        goto LABEL_70;
      }
    }

    else
    {
    }

    __swift_project_boxed_opaque_existential_1Tm(&v163[5], *(&v163[6] + 1));
    v112 = v125;
    sub_1E13BC274();
    sub_1E1AF12DC();
    v114 = v113;
    (*v128)(v112, v126);
    (*v146)(v61, v31);
    v115 = v84 + v66 + v52 + v114;
    v110 = v131;
    if (v131 <= v115)
    {
      v110 = v115;
    }

    if (v54 > v67)
    {
      v111 = v54;
    }

    else
    {
      v111 = v67;
    }

    __swift_destroy_boxed_opaque_existential_1(v160);
LABEL_70:
    v20 = v141;
    v25 = v124;
    v116 = v147;
    v22 = v147 + 1;
    v117 = v132 + v127 + v111;
    if (v83)
    {
      v118 = v68;
    }

    else
    {
      v118 = v130;
    }

    sub_1E1791DD4(v163);
    v29 = v118;
    v27 = v117;
    v23 = 1;
    v26 = v110;
    v28 = v133;
  }

  while (v123 != v116);
}

double sub_1E178F7F0(void *a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v10 = v9;
  v17 = sub_1E1AF745C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v9 + 40), *(v9 + 64));
  sub_1E13BC274();
  sub_1E1AF12DC();
  (*(v18 + 8))(v20, v17);
  v21 = [a1 traitCollection];
  v22 = v21;
  if (*(v10 + 114) != 1)
  {

    goto LABEL_5;
  }

  v23 = sub_1E1AF698C();

  if ((v23 & 1) == 0)
  {
LABEL_5:
    v31.origin.x = a6;
    v31.origin.y = a7;
    v31.size.width = a8;
    v31.size.height = a9;
    MinX = CGRectGetMinX(v31);
    v32.origin.x = a6;
    v32.origin.y = a7;
    v32.size.width = a8;
    v32.size.height = a9;
    CGRectGetMinY(v32);
    v33.origin.x = a6;
    v33.origin.y = a7;
    v33.size.width = a8;
    v33.size.height = a9;
    CGRectGetWidth(v33);
    v34.origin.x = a6;
    v34.origin.y = a7;
    v34.size.width = a8;
    v34.size.height = a9;
    CGRectGetHeight(v34);
    return MinX;
  }

  v27.origin.x = a6;
  v27.origin.y = a7;
  v27.size.width = a8;
  v27.size.height = a9;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = a6;
  v28.origin.y = a7;
  v28.size.width = a8;
  v28.size.height = a9;
  CGRectGetMinY(v28);
  *&v26[1] = a3;
  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  CGRectGetWidth(v29);
  v30.origin.x = a6;
  v30.origin.y = a7;
  v30.size.width = a8;
  v30.size.height = a9;
  CGRectGetHeight(v30);
  return MinX;
}

uint64_t sub_1E178FA5C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, double a10)
{
  v159 = a8;
  v160 = a9;
  v158 = a7;
  *&v138[1] = a6;
  v151 = sub_1E1AF1D6C();
  v23 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v150 = v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1E1AF111C();
  v25 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v139 = v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v145 = v138 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v148 = v138 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v138 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v149 = v138 - v35;
  v156 = sub_1E1AF745C();
  v36 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = v138 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a2;
  v144 = a3;
  v193.origin.x = a2;
  v193.origin.y = a3;
  v193.size.width = a4;
  v193.size.height = a5;
  MinY = CGRectGetMinY(v193);
  v177 = v17;
  v38 = *(*(v17 + 80) + 16);

  if (!v38)
  {
    v44 = MEMORY[0x1E69E7CC0];
LABEL_74:

    return v44;
  }

  v40 = 0.0;
  v157 = a10;
  v152 = (&v186[16] + 8);
  v41 = result + 32;
  v154 = (v36 + 8);
  v42 = *(MEMORY[0x1E69ABBD0] + 8);
  v146 = *MEMORY[0x1E69ABBD0];
  v43 = *(MEMORY[0x1E69ABBD0] + 24);
  v141 = *(MEMORY[0x1E69ABBD0] + 16);
  v142 = v42;
  v140 = v43;
  v164 = (v25 + 8);
  v147 = (v23 + 8);
  v44 = MEMORY[0x1E69E7CC0];
  v163 = a5;
  v166 = a4;
  v153 = result;
  while (*&v40 < v38)
  {
    *v186 = v40;
    v170 = v41;
    result = sub_1E1791D9C(v41, v186 + 8);
    if (!*(&v186[4] + 1))
    {
      goto LABEL_74;
    }

    v45 = *&v186[0];
    v46 = *v152;
    v47 = v152[1];
    v48 = v152[2];
    v49 = v152[3];
    v50 = v152[4];
    v51 = v152[5];
    v52 = v152[6];
    v53 = v152[7];
    v54 = v152[8];
    v186[0] = *(v186 + 8);
    v186[1] = *(&v186[1] + 8);
    v186[2] = *(&v186[2] + 8);
    v186[3] = *(&v186[3] + 8);
    v186[4] = *(&v186[4] + 8);
    v186[5] = *(&v186[5] + 8);
    v186[6] = *(&v186[6] + 8);
    v186[7] = *(&v186[7] + 8);
    v186[8] = *(&v186[8] + 8);
    v186[9] = *(&v186[9] + 8);
    v186[10] = *(&v186[10] + 8);
    v186[11] = *(&v186[11] + 8);
    v186[12] = *(&v186[12] + 8);
    v186[13] = *(&v186[13] + 8);
    v186[14] = *(&v186[14] + 8);
    v186[15] = *(&v186[15] + 8);
    v186[16] = v46;
    v187[0] = v47;
    v187[1] = v48;
    v188 = v49;
    v189 = v50;
    v190 = v51;
    v191[0] = v52;
    v191[1] = v53;
    v192 = v54;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_76;
    }

    v55 = v158;
    v56 = v159;
    v57 = v160;
    v58 = v157;
    if (*(v177 + 112) == 1)
    {
      v59 = *(v177 + 96);
      v60 = *(v177 + 104);
      if (v59 <= 1)
      {
        if (!(v59 | v60))
        {
          goto LABEL_14;
        }
      }

      else if (v59 ^ 2 | v60)
      {
        if (!(v59 ^ 3 | v60))
        {
LABEL_14:
          v55 = v158;
          v56 = v159;
          v57 = v160;
          v58 = v157;
          if (!v45)
          {
            goto LABEL_16;
          }
        }

LABEL_15:
        v55 = v143;
        v56 = v144;
        v57 = a4;
        v58 = a5;
        goto LABEL_16;
      }

      v55 = v158;
      v56 = v159;
      v57 = v160;
      v58 = v157;
      if (v45 + 1 != v38)
      {
        goto LABEL_15;
      }
    }

LABEL_16:
    v169 = v44;
    sub_1E14F59A8(v186, &v182);
    if (v183)
    {
      sub_1E1308EC0(&v182, v184);
      __swift_project_boxed_opaque_existential_1Tm(v184, v185);
      sub_1E1AF11CC();
      v173 = v61;
      v161 = v63;
      v162 = v62;
      __swift_project_boxed_opaque_existential_1Tm(&v186[5], *(&v186[6] + 1));
      v64 = v155;
      sub_1E13BC274();
      sub_1E1AF12DC();
      v176 = v65;
      (*v154)(v64, v156);
      __swift_destroy_boxed_opaque_existential_1(v184);
    }

    else
    {
      sub_1E1308058(&v182, &qword_1ECEB4E00);
      v176 = 0.0;
      v173 = v142;
      v161 = v140;
      v162 = v141;
    }

    v194.origin.x = v55;
    v194.origin.y = v56;
    v194.size.width = v57;
    v194.size.height = v58;
    CGRectGetMinX(v194);
    v195.origin.x = v55;
    v195.origin.y = v56;
    v195.size.width = v57;
    v195.size.height = v58;
    CGRectGetMinY(v195);
    v196.origin.x = v55;
    v196.origin.y = v56;
    v196.size.width = v57;
    v196.size.height = v58;
    CGRectGetWidth(v196);
    v197.origin.x = v55;
    v197.origin.y = v56;
    v197.size.width = v57;
    v197.size.height = v58;
    CGRectGetHeight(v197);
    v66 = [a1 traitCollection];
    v67 = v66;
    v68 = *(v177 + 114);
    if (v68 == 1)
    {
      v69 = sub_1E1AF698C();

      if (v69)
      {
        v198.origin.x = v55;
        v198.origin.y = v56;
        v198.size.width = v57;
        v198.size.height = v58;
        CGRectGetMinX(v198);
        v199.origin.x = v55;
        v199.origin.y = v56;
        v199.size.width = v57;
        v199.size.height = v58;
        CGRectGetMinY(v199);
        v200.origin.x = v55;
        v200.origin.y = v56;
        v200.size.width = v57;
        v200.size.height = v58;
        CGRectGetWidth(v200);
        v201.origin.x = v55;
        v201.origin.y = v56;
        v201.size.width = v57;
        v201.size.height = v58;
        CGRectGetHeight(v201);
      }
    }

    else
    {
    }

    v179 = v55;
    __swift_project_boxed_opaque_existential_1Tm(&v186[2] + 1, *&v186[4]);
    sub_1E1AF11CC();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    __swift_project_boxed_opaque_existential_1Tm(&v186[7] + 1, *&v186[9]);
    v174 = v73;
    v175 = v75;
    v167 = v77;
    sub_1E1AF12FC();
    v78 = *(v177 + 88);
    v79 = [a1 traitCollection];
    v80 = v79;
    v178 = v56;
    v168 = v71;
    if (v68)
    {
      v81 = sub_1E1AF698C();

      if (v78)
      {
        if (v81)
        {
          v202.origin.y = v178;
          v82 = v179;
          v202.origin.x = v179;
          v202.size.width = v57;
          v202.size.height = v58;
          floor(CGRectGetMinX(v202));
          v203.origin.x = v82;
          v203.origin.y = v178;
          v203.size.width = v57;
          v203.size.height = v58;
          CGRectGetWidth(v203);
          v204.origin.x = v82;
          v204.origin.y = v178;
          v204.size.width = v57;
          v204.size.height = v58;
          floor(CGRectGetMinX(v204));
          v205.origin.x = v82;
          v205.origin.y = v178;
          v205.size.width = v57;
          v205.size.height = v58;
          CGRectGetWidth(v205);
          goto LABEL_32;
        }

LABEL_28:
        v83 = v179;
        v206.origin.x = v179;
        v206.origin.y = v56;
        v206.size.width = v57;
        v206.size.height = v58;
        floor(CGRectGetMinX(v206));
        v207.origin.x = v83;
        v207.origin.y = v56;
        v207.size.width = v57;
        v207.size.height = v58;
        CGRectGetWidth(v207);
        goto LABEL_32;
      }

      if (v81)
      {
        v208.origin.x = v179;
        v208.origin.y = v56;
        v208.size.width = v57;
        v208.size.height = v58;
        CGRectGetMinX(v208);
        v209.origin.x = v179;
        v209.origin.y = v56;
        v209.size.width = v57;
        v209.size.height = v58;
        CGRectGetMinX(v209);
        goto LABEL_32;
      }
    }

    else
    {

      if (v78)
      {
        goto LABEL_28;
      }
    }

    v210.origin.y = v178;
    v84 = v179;
    v210.origin.x = v179;
    v210.size.width = v57;
    v210.size.height = v58;
    CGRectGetMinX(v210);
    v211.origin.x = v84;
    v211.origin.y = v178;
    v211.size.width = v57;
    v211.size.height = v58;
    CGRectGetMinX(v211);
LABEL_32:
    v172 = v58;
    v176 = v57;
    sub_1E14F59A8(v186, &v182);
    if (v183)
    {
      sub_1E1308EC0(&v182, v184);
      v85 = v149;
      sub_1E1AF107C();
      __swift_project_boxed_opaque_existential_1Tm(v184, v185);
      sub_1E1AF10EC();
      sub_1E1AF109C();
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      (*v164)(v85, v165);
      __swift_destroy_boxed_opaque_existential_1(v184);
    }

    else
    {
      sub_1E1308058(&v182, &qword_1ECEB4E00);
    }

    sub_1E1AF107C();
    __swift_project_boxed_opaque_existential_1Tm(&v186[2] + 1, *&v186[4]);
    sub_1E1AF10EC();
    sub_1E1AF109C();
    v86 = v176;
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    sub_1E1AF10EC();
    v88 = v87;
    sub_1E1AF109C();
    v90 = v89;
    __swift_project_boxed_opaque_existential_1Tm(&v186[10], *(&v186[11] + 1));
    sub_1E1AF12CC();
    v92 = v91;
    __swift_project_boxed_opaque_existential_1Tm(&v186[2] + 1, *&v186[4]);
    sub_1E1AF115C();
    v93 = CGRectGetMinY(v212);
    v44 = v169;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1E172DAA8(0, *(v44 + 2) + 1, 1, v44);
    }

    v95 = *(v44 + 2);
    v94 = *(v44 + 3);
    a5 = v163;
    if (v95 >= v94 >> 1)
    {
      v44 = sub_1E172DAA8((v94 > 1), v95 + 1, 1, v44);
    }

    MinY = v88 + v90 + v92;
    v96 = v175 + v93;
    *(v44 + 2) = v95 + 1;
    *&v44[8 * v95 + 32] = v96;
    sub_1E14F59A8(&v186[12] + 8, &v182);
    if (v183)
    {
      sub_1E1308EC0(&v182, v184);
      __swift_project_boxed_opaque_existential_1Tm(v184, v185);
      sub_1E1AF11CC();
      v98 = v97;
      __swift_project_boxed_opaque_existential_1Tm(v187 + 1, v188);
      v99 = v155;
      sub_1E13BC274();
      sub_1E1AF12DC();
      v101 = v100;
      (*v154)(v99, v156);
      sub_1E14F59A8(&v186[15], &v180);
      if (v181)
      {
        sub_1E1308EC0(&v180, &v182);
        __swift_project_boxed_opaque_existential_1Tm(&v182, v183);
        sub_1E1AF11CC();
        v103 = v102;
        __swift_destroy_boxed_opaque_existential_1(&v182);
      }

      else
      {
        sub_1E1308058(&v180, &qword_1ECEB4E00);
        v103 = v146;
      }

      v175 = v40;
      sub_1E1AF10EC();
      v105 = v104;
      sub_1E1AF109C();
      v107 = v86 - (v105 + v106) - v101;
      sub_1E14F59A8(&v186[15], &v182);
      v108 = v44;
      if (v183)
      {
        __swift_project_boxed_opaque_existential_1Tm(&v182, v183);
        v109 = sub_1E1AF112C();
        __swift_destroy_boxed_opaque_existential_1(&v182);
        v110 = v109 & (v103 <= v107);
      }

      else
      {
        sub_1E1308058(&v182, &qword_1ECEB4E00);
        v110 = 0;
        v109 = 0;
      }

      v111 = [a1 traitCollection];
      v112 = sub_1E1AF698C();

      sub_1E1AF10EC();
      sub_1E1AF109C();
      sub_1E1AF10EC();
      v113 = v150;
      sub_1E1AF110C();
      sub_1E1AF1D2C();
      (*v147)(v113, v151);
      if (v98 > v107 && ((v112 | v109) & 1) != 0)
      {
        a4 = v166;
        v44 = v108;
        v40 = v175;
        v114 = v179;
        if (v110)
        {
          goto LABEL_59;
        }

        if (v112)
        {
          v116 = v143;
          v115 = v144;
          v213.origin.x = v143;
          v213.origin.y = v144;
          v213.size.width = v166;
          v213.size.height = a5;
          CGRectGetWidth(v213);
          sub_1E1AF10EC();
          v214.origin.x = v116;
          v214.origin.y = v115;
          v214.size.width = a4;
          v214.size.height = a5;
          CGRectGetHeight(v214);
          __swift_project_boxed_opaque_existential_1Tm(v184, v185);
          sub_1E1AF11CC();
          v118 = v117;
          sub_1E1AF10EC();
          __swift_project_boxed_opaque_existential_1Tm(&v189, *(&v190 + 1));
          sub_1E1AF12FC();
          v174 = v118;
          sub_1E1AF107C();
          __swift_project_boxed_opaque_existential_1Tm(v184, v185);
          sub_1E1AF10EC();
          sub_1E1AF109C();
          sub_1E1AF6B1C();
          sub_1E1AF116C();
          sub_1E14F59A8(&v186[15], &v182);
          if (v183)
          {
            __swift_project_boxed_opaque_existential_1Tm(&v182, v183);
            sub_1E1AF118C();
            __swift_destroy_boxed_opaque_existential_1(&v182);
          }

          else
          {
            sub_1E1308058(&v182, &qword_1ECEB4E00);
          }

          __swift_project_boxed_opaque_existential_1Tm(v184, v185);
          sub_1E1AF118C();
          sub_1E1AF10EC();
          v124 = v123;
          sub_1E1AF109C();
          v126 = v125;
          __swift_project_boxed_opaque_existential_1Tm(v191 + 1, v192);
          v127 = v174;
          sub_1E1AF12CC();
          v129 = v128;
          __swift_project_boxed_opaque_existential_1Tm(v184, v185);
          sub_1E1AF115C();
          v130 = CGRectGetMinY(v217);
          v132 = *(v44 + 2);
          v131 = *(v44 + 3);
          *&v179 = v132 + 1;
          if (v132 >= v131 >> 1)
          {
            v136 = v130;
            v137 = sub_1E172DAA8((v131 > 1), v132 + 1, 1, v44);
            v130 = v136;
            a4 = v166;
            v44 = v137;
          }

          a5 = v163;
          MinY = v124 + v126 + v129;
          v133 = v127 + v130;
          v134 = v165;
          v135 = *v164;
          (*v164)(v139, v165);
          v135(v33, v134);
          *(v44 + 2) = v179;
          *&v44[8 * v132 + 32] = v133;
          goto LABEL_67;
        }

        sub_1E14F59A8(&v186[15], &v182);
        v121 = v183;
        sub_1E1308058(&v182, &qword_1ECEB4E00);
        if (v121)
        {
LABEL_59:
          v216.origin.x = v114;
          v216.origin.y = v178;
          v216.size.width = v176;
          v216.size.height = v172;
          CGRectGetHeight(v216);
          __swift_project_boxed_opaque_existential_1Tm(v184, v185);
          sub_1E1AF11CC();
          sub_1E1AF107C();
          sub_1E14F59A8(&v186[15], &v182);
          if (v183)
          {
            __swift_project_boxed_opaque_existential_1Tm(&v182, v183);
            sub_1E1AF10EC();
            sub_1E1AF109C();
            sub_1E1AF6B1C();
            sub_1E1AF116C();
            __swift_destroy_boxed_opaque_existential_1(&v182);
          }

          else
          {
            sub_1E1308058(&v182, &qword_1ECEB4E00);
          }

          sub_1E14F59A8(&v186[15], &v182);
          a5 = v163;
          a4 = v166;
          if (v183)
          {
            __swift_project_boxed_opaque_existential_1Tm(&v182, v183);
            sub_1E1AF118C();
            __swift_destroy_boxed_opaque_existential_1(&v182);
          }

          else
          {
            sub_1E1308058(&v182, &qword_1ECEB4E00);
          }

          __swift_project_boxed_opaque_existential_1Tm(v184, v185);
          sub_1E1AF118C();
          v119 = *v164;
          v120 = v145;
          goto LABEL_66;
        }

        (*v164)(v33, v165);
      }

      else
      {
        v215.origin.x = v179;
        v215.origin.y = v178;
        v215.size.width = v176;
        v215.size.height = v172;
        CGRectGetHeight(v215);
        __swift_project_boxed_opaque_existential_1Tm(v184, v185);
        sub_1E1AF11CC();
        sub_1E1AF107C();
        __swift_project_boxed_opaque_existential_1Tm(v184, v185);
        sub_1E1AF10EC();
        sub_1E1AF109C();
        sub_1E1AF6B1C();
        sub_1E1AF116C();
        sub_1E14F59A8(&v186[15], &v182);
        a4 = v166;
        v44 = v108;
        if (v183)
        {
          __swift_project_boxed_opaque_existential_1Tm(&v182, v183);
          sub_1E1AF118C();
          __swift_destroy_boxed_opaque_existential_1(&v182);
        }

        else
        {
          sub_1E1308058(&v182, &qword_1ECEB4E00);
        }

        v40 = v175;
        a5 = v163;
        __swift_project_boxed_opaque_existential_1Tm(v184, v185);
        sub_1E1AF118C();
        v119 = *v164;
        v120 = v148;
LABEL_66:
        v122 = v165;
        v119(v120, v165);
        v119(v33, v122);
      }

LABEL_67:
      __swift_destroy_boxed_opaque_existential_1(v184);
      goto LABEL_4;
    }

    (*v164)(v33, v165);
    sub_1E1308058(&v182, &qword_1ECEB4E00);
    a4 = v166;
LABEL_4:
    ++*&v40;
    sub_1E1791DD4(v186);
    result = v153;
    v38 = *(v153 + 16);
    v41 = v170 + 400;
    if (*&v40 == v38)
    {
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

void sub_1E1790F64(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_1E1AF745C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E14F59A8(v5, &v45);
  if (!v46)
  {
    sub_1E1308058(&v45, &qword_1ECEB4E00);
    return;
  }

  sub_1E1308EC0(&v45, v50);
  if (*(v5 + 112) == 1)
  {
    v16 = [a1 traitCollection];
    v17 = v16;
    if (*(v6 + 114) == 1)
    {
      v18 = sub_1E1AF698C();

      if (v18)
      {
        __swift_project_boxed_opaque_existential_1Tm((v6 + 40), *(v6 + 64));
        sub_1E13BC274();
        sub_1E1AF12DC();
        (*(v13 + 8))(v15, v12);
        v51.origin.x = a2;
        v51.origin.y = a3;
        v51.size.width = a4;
        v51.size.height = a5;
        CGRectGetMinX(v51);
        v52.origin.x = a2;
        v52.origin.y = a3;
        v52.size.width = a4;
        v52.size.height = a5;
        CGRectGetMaxY(v52);
        sub_1E1AF6B1C();
        goto LABEL_27;
      }
    }

    else
    {
    }
  }

  if (*(v6 + 113))
  {
    if ((*(v6 + 112) & 1) == 0)
    {
      v19 = [a1 traitCollection];
      v20 = sub_1E1AF697C();

      v21 = a2;
      v22 = a3;
      v23 = a4;
      v24 = a5;
      if (v20)
      {
        CGRectGetMinX(*&v21);
        v25 = *(v6 + 96);
        v26 = *(v6 + 104);
        if (*(v6 + 112) != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        CGRectGetMaxX(*&v21);
        v25 = *(v6 + 96);
        v26 = *(v6 + 104);
        if ((*(v6 + 112) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v40 = v25;
      goto LABEL_25;
    }
  }

  else
  {
    v27 = *(v6 + 80);
    if (*(v27 + 16))
    {
      sub_1E1300B24(v27 + 72, &v45);
      __swift_project_boxed_opaque_existential_1Tm((v6 + 40), *(v6 + 64));
      sub_1E13BC274();
      sub_1E1AF12DC();
      (*(v13 + 8))(v15, v12);
      v28 = [a1 traitCollection];
      v29 = sub_1E1AF697C();

      __swift_project_boxed_opaque_existential_1Tm(&v45, v46);
      sub_1E1AF115C();
      if (v29)
      {
        CGRectGetMinX(*&v30);
      }

      else
      {
        CGRectGetMaxX(*&v30);
      }

      __swift_destroy_boxed_opaque_existential_1(&v45);
      goto LABEL_21;
    }
  }

  v34 = [a1 traitCollection];
  v35 = sub_1E1AF697C();

  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  if (v35)
  {
    CGRectGetMinX(*&v36);
  }

  else
  {
    CGRectGetMaxX(*&v36);
  }

LABEL_21:
  v26 = *(v6 + 104);
  if (*(v6 + 112) != 1)
  {
    goto LABEL_27;
  }

  v40 = *(v6 + 96);
LABEL_25:
  if (v40 <= 2)
  {
    if (__PAIR128__(v26, v40) >= 2)
    {
      v42 = *(v6 + 80);
      v43 = *(v42 + 16);
      if (v43)
      {
        sub_1E1300B24(v42 + 400 * v43 - 328, &v45);
        __swift_project_boxed_opaque_existential_1Tm(&v45, v46);
        sub_1E1AF115C();
        CGRectGetMidY(v54);
        __swift_destroy_boxed_opaque_existential_1(&v45);
      }
    }

    goto LABEL_27;
  }

  if (!(v40 ^ 3 | v26))
  {
    v41 = *(v6 + 80);
    if (*(v41 + 16))
    {
      sub_1E1791D9C(v41 + 32, &v45);
      __swift_project_boxed_opaque_existential_1Tm(v47, v48);
      if (sub_1E1AF112C())
      {
        __swift_project_boxed_opaque_existential_1Tm(v47, v48);
        sub_1E1AF115C();
        CGRectGetMidY(v53);
      }

      else
      {
        v58.origin.x = a2;
        v58.origin.y = a3;
        v58.size.width = a4;
        v58.size.height = a5;
        CGRectGetMidY(v58);
      }

      sub_1E1791DD4(&v45);
    }

    goto LABEL_27;
  }

  v44 = *(v6 + 80);
  if (*(v44 + 16) != 2)
  {
LABEL_27:
    __swift_project_boxed_opaque_existential_1Tm(v50, v50[3]);
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v50);
    return;
  }

  sub_1E1300B24(v44 + 472, &v45);
  __swift_project_boxed_opaque_existential_1Tm(&v45, v46);
  sub_1E1AF115C();
  CGRectGetMaxY(v55);
  if (*(v44 + 16))
  {
    sub_1E1300B24(v44 + 72, v49);
    __swift_project_boxed_opaque_existential_1Tm(v49, v49[3]);
    sub_1E1AF115C();
    CGRectGetMinY(v56);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(&v45);
    if (*(v44 + 16))
    {
      sub_1E1300B24(v44 + 72, &v45);
      __swift_project_boxed_opaque_existential_1Tm(&v45, v46);
      sub_1E1AF115C();
      CGRectGetMinY(v57);
      __swift_destroy_boxed_opaque_existential_1(&v45);
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}