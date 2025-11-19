id sub_100885784(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = OBJC_IVAR____TtC8Freeform22CRLImageRepPlaceHolder_previewItemURL;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  *&v2[OBJC_IVAR____TtC8Freeform22CRLImageRepPlaceHolder_imageRep] = a1;
  v9 = a1;
  v10 = sub_100882410();
  v12 = &v2[OBJC_IVAR____TtC8Freeform22CRLImageRepPlaceHolder_previewItemTitle];
  *v12 = v10;
  v12[1] = v11;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0x6567616D69;
  }

  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v15 = sub_100883B5C(v6, v13, v14);

  swift_beginAccess();
  sub_10067DE0C(v6, &v2[v7]);
  swift_endAccess();
  v16 = type metadata accessor for CRLImageRepPlaceHolder();
  v20.receiver = v2;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, "init");
  if (v15)
  {
    [v15 setAssociatedLifetimeObject:v9];

    v9 = v15;
  }

  sub_10000CAAC(v6, &unk_1019F33C0);
  return v17;
}

id sub_100885974()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLImageRepPlaceHolder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLImageRepPlaceHolder()
{
  result = qword_101A05488;
  if (!qword_101A05488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100885A70()
{
  sub_10084E720();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100885B18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100885B78(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_100776524(0, v7 & ~(v7 >> 63), 0);
    v45 = v50;
    if (v44)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v47 = result;
    v48 = v9;
    v49 = v44 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v41 = v6;
      v10 = 0;
      v39 = v7;
      v40 = v43 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35 = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v47;
        v15 = v48;
        v16 = v49;
        v17 = a1;
        v18 = *(sub_100724840(v47, v48, v49, a1) + 24);
        ObjectType = swift_getObjectType();
        v20 = v41;
        (*(v18 + 32))(ObjectType, v18);

        v21 = v45;
        v50 = v45;
        v23 = v45[2];
        v22 = v45[3];
        if (v23 >= v22 >> 1)
        {
          sub_100776524(v22 > 1, v23 + 1, 1);
          v21 = v50;
        }

        v21[2] = v23 + 1;
        v24 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v45 = v21;
        result = (*(v43 + 32))(v21 + v24 + *(v43 + 72) * v23, v20, v42);
        if (v44)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          sub_1005B981C(&qword_1019FEFC8);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v12(v46, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_1000341AC(v47, v48, v49);
            return v45;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_1000341AC(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_1000341AC(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v47 = v25;
          v48 = v34;
          v49 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
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
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_100885F94(uint64_t a1)
{
  v32 = type metadata accessor for UUID();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v26[1] = v1;
  v37 = _swiftEmptyArrayStorage;
  sub_100776524(0, v6, 0);
  v7 = v37;
  v36 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v30 = v3 + 32;
  v31 = v3;
  v27 = a1 + 72;
  v28 = v6;
  v29 = a1;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    if ((*(v36 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v33 = v10;
    v34 = *(a1 + 36);
    v35 = v9 >> 6;
    v13 = *(*(*(a1 + 48) + 8 * v9) + 24);
    ObjectType = swift_getObjectType();
    v15 = v7;
    v16 = *(v13 + 32);

    v16(ObjectType, v13);
    v7 = v15;

    v37 = v15;
    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      sub_100776524(v17 > 1, v18 + 1, 1);
      v7 = v37;
    }

    v7[2] = v18 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v18, v5, v32);
    a1 = v29;
    v11 = 1 << *(v29 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v19 = *(v36 + 8 * v35);
    if ((v19 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(v29 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v9 & 0x3F));
    if (v20)
    {
      v11 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v12 = v28;
    }

    else
    {
      v21 = v35 << 6;
      v22 = v35 + 1;
      v12 = v28;
      v23 = (v27 + 8 * v35);
      while (v22 < (v11 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1000341AC(v9, v34, 0);
          v11 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1000341AC(v9, v34, 0);
    }

LABEL_4:
    v10 = v33 + 1;
    v9 = v11;
    if (v33 + 1 == v12)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_1008862B4(uint64_t a1)
{
  v47 = type metadata accessor for UUID();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v55 = _swiftEmptyArrayStorage;
    sub_100034080(0, v5 & ~(v5 >> 63), 0);
    v50 = v55;
    if (v48)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v7 = *(a1 + 36);
    }

    v52 = result;
    v53 = v7;
    v54 = v48 != 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v44 = v5;
      v45 = (v3 + 8);
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v9 = a1;
      }

      v42 = a1 + 56;
      v43 = v9;
      v40[1] = v1;
      v41 = a1 + 64;
      while (v8 < v5)
      {
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_37;
        }

        v12 = v52;
        v13 = v54;
        v49 = v53;
        v14 = a1;
        v15 = sub_100724840(v52, v53, v54, a1);
        v16 = *(v15 + 24);
        ObjectType = swift_getObjectType();
        v18 = v46;
        (*(v16 + 32))(ObjectType, v16);
        v19 = UUID.uuidString.getter();
        v21 = v20;
        (*v45)(v18, v47);
        v51 = *(v15 + 16);
        swift_unknownObjectRetain();
        sub_1005B981C(&qword_1019F51A8);
        v22 = String.init<A>(describing:)();
        v24 = v23;
        *&v51 = v19;
        *(&v51 + 1) = v21;

        v25._countAndFlagsBits = v22;
        v25._object = v24;
        String.append(_:)(v25);

        v26 = v51;
        v27 = v50;
        v55 = v50;
        v29 = v50[2];
        v28 = v50[3];
        if (v29 >= v28 >> 1)
        {
          result = sub_100034080((v28 > 1), v29 + 1, 1);
          v27 = v55;
        }

        v27[2] = v29 + 1;
        *&v27[2 * v29 + 4] = v26;
        v50 = v27;
        if (v48)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

          a1 = v14;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v5 = v44;
          sub_1005B981C(&qword_1019FEFC8);
          v10 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v10(&v51, 0);
          if (v8 == v5)
          {
LABEL_34:
            sub_1000341AC(v52, v53, v54);
            return v50;
          }
        }

        else
        {
          if (v13)
          {
            goto LABEL_43;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v14;
          v30 = 1 << *(v14 + 32);
          if (v12 >= v30)
          {
            goto LABEL_38;
          }

          v31 = v12 >> 6;
          v32 = *(v42 + 8 * (v12 >> 6));
          if (((v32 >> v12) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v14 + 36) != v49)
          {
            goto LABEL_40;
          }

          v33 = v32 & (-2 << (v12 & 0x3F));
          if (v33)
          {
            v30 = __clz(__rbit64(v33)) | v12 & 0x7FFFFFFFFFFFFFC0;
            v5 = v44;
          }

          else
          {
            v34 = v31 << 6;
            v35 = v31 + 1;
            v36 = (v41 + 8 * v31);
            v5 = v44;
            while (v35 < (v30 + 63) >> 6)
            {
              v38 = *v36++;
              v37 = v38;
              v34 += 64;
              ++v35;
              if (v38)
              {
                result = sub_1000341AC(v12, v49, 0);
                v30 = __clz(__rbit64(v37)) + v34;
                goto LABEL_33;
              }
            }

            result = sub_1000341AC(v12, v49, 0);
          }

LABEL_33:
          v39 = *(v14 + 36);
          v52 = v30;
          v53 = v39;
          v54 = 0;
          if (v8 == v5)
          {
            goto LABEL_34;
          }
        }
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
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void *sub_100886738(uint64_t a1)
{
  v44 = type metadata accessor for UUID();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v37[1] = v1;
    v49 = _swiftEmptyArrayStorage;
    sub_100034080(0, v5, 0);
    v47 = v49;
    v7 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v41 = a1;
    v42 = (v3 + 8);
    v38 = a1 + 72;
    v39 = v5;
    v40 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v13 = *(a1 + 36);
      v45 = v9;
      v46 = v13;
      v14 = *(*(a1 + 48) + 8 * v8);
      v15 = *(v14 + 24);
      ObjectType = swift_getObjectType();
      v17 = *(v15 + 32);

      v18 = v43;
      v17(ObjectType, v15);
      v19 = UUID.uuidString.getter();
      v21 = v20;
      (*v42)(v18, v44);
      v48 = *(v14 + 16);
      swift_unknownObjectRetain();
      sub_1005B981C(&qword_1019F51A8);
      v22 = String.init<A>(describing:)();
      v24 = v23;
      *&v48 = v19;
      *(&v48 + 1) = v21;

      v25._countAndFlagsBits = v22;
      v25._object = v24;
      String.append(_:)(v25);

      v26 = v48;
      v27 = v47;
      v49 = v47;
      v29 = v47[2];
      v28 = v47[3];
      if (v29 >= v28 >> 1)
      {
        result = sub_100034080((v28 > 1), v29 + 1, 1);
        v27 = v49;
      }

      v27[2] = v29 + 1;
      *&v27[2 * v29 + 4] = v26;
      a1 = v41;
      v10 = 1 << *(v41 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v40;
      v30 = *(v40 + 8 * v12);
      if ((v30 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v47 = v27;
      if (v46 != *(v41 + 36))
      {
        goto LABEL_25;
      }

      v31 = v30 & (-2 << (v8 & 0x3F));
      if (v31)
      {
        v10 = __clz(__rbit64(v31)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v11 = v39;
      }

      else
      {
        v32 = v12 << 6;
        v33 = v12 + 1;
        v11 = v39;
        v34 = (v38 + 8 * v12);
        while (v33 < (v10 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_1000341AC(v8, v46, 0);
            v10 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_1000341AC(v8, v46, 0);
      }

LABEL_4:
      v9 = v45 + 1;
      v8 = v10;
      if (v45 + 1 == v11)
      {
        return v47;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

NSString sub_100886ABC()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6858 = result;
  return result;
}

NSString sub_100886AF4()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6860 = result;
  return result;
}

NSString sub_100886B2C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6868 = result;
  return result;
}

NSString sub_100886B64()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6870 = result;
  return result;
}

NSString sub_100886B9C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6878 = result;
  return result;
}

NSString sub_100886BD4()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6880 = result;
  return result;
}

NSString sub_100886C0C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6888 = result;
  return result;
}

NSString sub_100886C44()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6890 = result;
  return result;
}

NSString sub_100886C7C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6898 = result;
  return result;
}

id sub_100886F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC8Freeform20CRLCommandController_suspendResumeProvider];
  *v4 = 0;
  v4[1] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform20CRLCommandController_asyncCommandHelper] = 0;
  v3[OBJC_IVAR____TtC8Freeform20CRLCommandController__isExecuting] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform20CRLCommandController__currentTransactionContext] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform20CRLCommandController__currentWatermarkTransactionContext] = 0;
  v5 = &v3[OBJC_IVAR____TtC8Freeform20CRLCommandController_commandHistory];
  *v5 = _swiftEmptyArrayStorage;
  v5[1] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform20CRLCommandController__currentSelectionBehavior] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform20CRLCommandController__indexOfGroupThatSetCurrentSelectionBehavior] = -1;
  *&v3[OBJC_IVAR____TtC8Freeform20CRLCommandController_nonUserCommandQueue] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC8Freeform20CRLCommandController_hasIncomingSuspensionInPlaceForCurrentTransaction] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform20CRLCommandController_board] = a1;
  *&v3[OBJC_IVAR____TtC8Freeform20CRLCommandController_changeNotifier] = a2;
  *&v3[OBJC_IVAR____TtC8Freeform20CRLCommandController_selectionDispatcher] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for CRLCommandController();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_1008870DC()
{

  return swift_deallocClassInstance();
}

void sub_100887184()
{
  sub_100887218();
  if (!v0)
  {
    sub_10097D1AC();
  }
}

uint64_t sub_1008871FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCC8Freeform20CRLCommandControllerP33_F675CB786BBB78E2B0BD13D7028A0B2032CRLCommandControllerCommandGroup__currentGroupActionString);
  *v3 = a1;
  v3[1] = a2;
}

void sub_100887218()
{
  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = v0;
  v15 = inited;
  v2 = v0;
  while (1)
  {
    if (inited >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_37;
      }
    }

    else if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    v3 = sub_1008252E8();
    if (*&v3[OBJC_IVAR____TtCC8Freeform20CRLCommandControllerP33_F675CB786BBB78E2B0BD13D7028A0B2032CRLCommandControllerCommandGroup__currentGroupActionString + 8])
    {

LABEL_37:

      return;
    }

    v4 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
    swift_beginAccess();
    v5 = *&v3[v4];
    v6 = v5 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v6)
    {
      break;
    }

    v11 = _swiftEmptyArrayStorage;
LABEL_22:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      type metadata accessor for CRLCommandController.CRLCommandControllerCommandGroup();

      v14 = _bridgeCocoaArray<A>(_:)();

      v11 = v14;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for CRLCommandController.CRLCommandControllerCommandGroup();
      if (swift_dynamicCastMetatype() || (v12 = _swiftEmptyArrayStorage[2]) == 0)
      {
LABEL_2:
      }

      else
      {
        v13 = 32;
        while (swift_dynamicCastClass())
        {
          v13 += 8;
          if (!--v12)
          {
            goto LABEL_2;
          }
        }

        v11 = _swiftEmptyArrayStorage + 1;
      }
    }

    sub_100799AE8(v11);

    inited = v15;
  }

  v7 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    type metadata accessor for CRLCommandController.CRLCommandControllerCommandGroup();
    if (swift_dynamicCastClass())
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v7;
    if (v10 == v6)
    {
      v11 = _swiftEmptyArrayStorage;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_1008875A0(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
    swift_beginAccess();
    v4 = *(v1 + v3);
    if (v4 >> 62)
    {
      goto LABEL_44;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v6 = OBJC_IVAR____TtC8Freeform20CRLCommandController__currentSelectionBehavior;
    v7 = *(v1 + OBJC_IVAR____TtC8Freeform20CRLCommandController__indexOfGroupThatSetCurrentSelectionBehavior);
    if (*(v1 + OBJC_IVAR____TtC8Freeform20CRLCommandController__currentSelectionBehavior))
    {
      if (v5 >= v7)
      {
        return;
      }

      v8 = v2;
      goto LABEL_38;
    }

    v57 = OBJC_IVAR____TtC8Freeform20CRLCommandController__currentSelectionBehavior;
    v58 = v5;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v59 = &type metadata for Int;
    v10 = v2;
    sub_1005B981C(&qword_1019FB560);
    String.init<A>(describing:)();
    v11 = String._bridgeToObjectiveC()();

    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 56) = v12;
    v13 = sub_1005CF04C();
    *(inited + 32) = v11;
    v14 = inited + 32;
    *(inited + 64) = v13;
    if (v7 == -1)
    {
      swift_setDeallocating();
      sub_100005070(inited + 32);
    }

    else
    {
      v15 = v13;
      v52 = v2;
      v51 = objc_opt_self();
      v55 = [v51 _atomicIncrementAssertCount];
      v59 = [objc_allocWithZone(NSString) init];
      sub_100604538(inited, &v59);
      StaticString.description.getter();
      v54 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v16 = String._bridgeToObjectiveC()();

      v17 = [v16 lastPathComponent];

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v56 = inited;
      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v53 = v1;
      v21 = static OS_os_log.crlAssert;
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_10146CA70;
      *(v22 + 56) = &type metadata for Int32;
      *(v22 + 64) = &protocol witness table for Int32;
      *(v22 + 32) = v55;
      *(v22 + 96) = v12;
      *(v22 + 104) = v15;
      *(v22 + 72) = v54;
      *(v22 + 136) = &type metadata for String;
      v23 = sub_1000053B0();
      *(v22 + 112) = v18;
      *(v22 + 120) = v20;
      *(v22 + 176) = &type metadata for UInt;
      *(v22 + 184) = &protocol witness table for UInt;
      *(v22 + 144) = v23;
      *(v22 + 152) = 200;
      v24 = v59;
      *(v22 + 216) = v12;
      *(v22 + 224) = v15;
      *(v22 + 192) = v24;
      v25 = v54;
      v26 = v24;
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v22);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v28, "expected equality between two values of type %{public}@", 55, 2, v56);

      type metadata accessor for __VaListBuilder();
      v29 = swift_allocObject();
      v29[2] = 8;
      v29[3] = 0;
      v30 = v29 + 3;
      v29[4] = 0;
      v29[5] = 0;
      v31 = *(v56 + 16);
      if (v31)
      {
        v2 = 0;
        while (1)
        {
          v1 = sub_100020E58((v14 + 40 * v2), *(v14 + 40 * v2 + 24));
          v32 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v33 = *v30;
          v34 = *(v32 + 16);
          v35 = __OFADD__(*v30, v34);
          v36 = *v30 + v34;
          if (v35)
          {
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            v5 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }

          v1 = v29[4];
          if (v1 >= v36)
          {
            goto LABEL_27;
          }

          if (v1 + 0x4000000000000000 < 0)
          {
            goto LABEL_42;
          }

          v37 = v29[5];
          if (2 * v1 > v36)
          {
            v36 = 2 * v1;
          }

          v29[4] = v36;
          if ((v36 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_43;
          }

          v38 = v32;
          v39 = swift_slowAlloc();
          v40 = v39;
          v29[5] = v39;
          if (v37)
          {
            break;
          }

          v32 = v38;
          if (!v40)
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

LABEL_28:
          v42 = *(v32 + 16);
          if (v42)
          {
            v43 = (v32 + 32);
            v44 = *v30;
            while (1)
            {
              v45 = *v43++;
              *&v40[8 * v44] = v45;
              v44 = *v30 + 1;
              if (__OFADD__(*v30, 1))
              {
                break;
              }

              *v30 = v44;
              if (!--v42)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

LABEL_12:

          v2 = v2 + 1;
          if (v2 == v31)
          {
            goto LABEL_35;
          }
        }

        if (v39 != v37 || v39 >= &v37[8 * v33])
        {
          memmove(v39, v37, 8 * v33);
        }

        v1 = v29;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v32 = v38;
LABEL_27:
        v40 = v29[5];
        if (!v40)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

LABEL_35:
      v46 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v47 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v48 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      [v51 handleFailureInFunction:v47 file:v48 lineNumber:200 isFatal:0 format:v49 args:v46];

      swift_setDeallocating();
      swift_arrayDestroy();
      v2 = v52;
      v1 = v53;
    }

    v6 = v57;
    v5 = v58;
LABEL_38:
    v50 = *(v1 + v6);
    *(v1 + v6) = v2;

    *(v1 + OBJC_IVAR____TtC8Freeform20CRLCommandController__indexOfGroupThatSetCurrentSelectionBehavior) = v5;
  }
}

void sub_100887BD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform20CRLCommandController__currentSelectionBehavior);
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v89 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v90 = sub_1005B981C(&qword_101A056B0);
  v86 = v1;
  sub_1005B981C(&qword_101A056B8);
  String.init<A>(describing:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v4;
  v5 = sub_1005CF04C();
  *(inited + 32) = v3;
  v6 = (inited + 32);
  v88 = v5;
  *(inited + 64) = v5;
  v7 = inited;
  v8 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  v9 = &selRef_ignoreUrl_;
  v10 = &selRef_isEnumeratingForUserSearch;
  v11 = &qword_1019F2000;
  if (v1)
  {
    v84 = v0;
    v12 = v7;
    v83 = objc_opt_self();
    LODWORD(v0) = [v83 _atomicIncrementAssertCount];
    v90 = [objc_allocWithZone(NSString) init];
    v87 = v12;
    sub_100604538(v12, &v90);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_68;
    }

    while (1)
    {
      v19 = static OS_os_log.crlAssert;
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_10146CA70;
      *(v20 + 56) = &type metadata for Int32;
      *(v20 + 64) = &protocol witness table for Int32;
      *(v20 + 72) = v13;
      *(v20 + 32) = v0;
      *(v20 + 96) = v4;
      *(v20 + 104) = v88;
      *(v20 + 136) = &type metadata for String;
      v21 = sub_1000053B0();
      *(v20 + 112) = v16;
      *(v20 + 120) = v18;
      *(v20 + 176) = &type metadata for UInt;
      *(v20 + 144) = v21;
      *(v20 + 152) = 224;
      v22 = v90;
      v85 = v4;
      *(v20 + 216) = v4;
      *(v20 + 224) = v88;
      *(v20 + 184) = &protocol witness table for UInt;
      *(v20 + 192) = v22;
      v23 = v13;
      v24 = v22;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v20);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v26, "expected equality between two values of type %{public}@", 55, 2, v87);

      type metadata accessor for __VaListBuilder();
      v13 = swift_allocObject();
      *(v13 + 16) = 8;
      *(v13 + 24) = 0;
      v27 = (v13 + 24);
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      v16 = v87[2];
      if (!v16)
      {
LABEL_28:
        v43 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v44 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v45 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v46 = String._bridgeToObjectiveC()();

        [v83 handleFailureInFunction:v44 file:v45 lineNumber:224 isFatal:0 format:v46 args:v43];

        v4 = v85;
        v11 = &qword_1019F2000;
        v10 = &selRef_isEnumeratingForUserSearch;
        v0 = v84;
        v9 = &selRef_ignoreUrl_;
        v8 = &_s10Foundation9IndexPathVSHAAMc_ptr;
        goto LABEL_30;
      }

      v28 = 0;
      v4 = 40;
      while (1)
      {
        v29 = &v6[5 * v28];
        v18 = v29[4];
        LODWORD(v0) = sub_100020E58(v29, v29[3]);
        v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v31 = *v27;
        v32 = *(v30 + 16);
        v33 = __OFADD__(*v27, v32);
        v34 = *v27 + v32;
        if (v33)
        {
          break;
        }

        v0 = *(v13 + 32);
        if (v0 >= v34)
        {
          goto LABEL_20;
        }

        if (v0 + 0x4000000000000000 < 0)
        {
          goto LABEL_64;
        }

        v18 = *(v13 + 40);
        if (2 * v0 > v34)
        {
          v34 = 2 * v0;
        }

        *(v13 + 32) = v34;
        if ((v34 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_65;
        }

        v35 = v30;
        v36 = swift_slowAlloc();
        v37 = v36;
        *(v13 + 40) = v36;
        if (v18)
        {
          if (v36 != v18 || v36 >= v18 + 8 * v31)
          {
            memmove(v36, v18, 8 * v31);
          }

          LODWORD(v0) = v13;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v30 = v35;
LABEL_20:
          v37 = *(v13 + 40);
          if (!v37)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v30 = v35;
        if (!v37)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v39 = *(v30 + 16);
        if (v39)
        {
          v40 = (v30 + 32);
          v41 = *v27;
          while (1)
          {
            v42 = *v40++;
            v37[v41] = v42;
            v41 = *v27 + 1;
            if (__OFADD__(*v27, 1))
            {
              break;
            }

            *v27 = v41;
            if (!--v39)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
LABEL_61:
          __break(1u);
          break;
        }

LABEL_5:

        if (++v28 == v16)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      swift_once();
    }
  }

LABEL_30:
  v47 = *(v0 + OBJC_IVAR____TtC8Freeform20CRLCommandController__indexOfGroupThatSetCurrentSelectionBehavior);
  v48 = swift_initStackObject();
  *(v48 + 16) = v89;
  v90 = &type metadata for Int;
  sub_1005B981C(&qword_1019FB560);
  String.init<A>(describing:)();
  v49 = String._bridgeToObjectiveC()();

  *(v48 + 32) = v49;
  *&v89 = v48 + 32;
  *(v48 + 56) = v4;
  *(v48 + 64) = v88;
  if (v47 == -1)
  {
  }

  else
  {
    v87 = objc_opt_self();
    v50 = [v87 _atomicIncrementAssertCount];
    v90 = [objc_allocWithZone(v8[101]) v9[165]];
    sub_100604538(v48, &v90);
    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    v53 = [v52 v10[321]];

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    if (v11[20] != -1)
    {
      swift_once();
    }

    v57 = static OS_os_log.crlAssert;
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_10146CA70;
    *(v58 + 56) = &type metadata for Int32;
    *(v58 + 64) = &protocol witness table for Int32;
    *(v58 + 72) = v51;
    *(v58 + 32) = v50;
    *(v58 + 96) = v4;
    *(v58 + 104) = v88;
    *(v58 + 136) = &type metadata for String;
    v59 = sub_1000053B0();
    *(v58 + 112) = v54;
    *(v58 + 120) = v56;
    *(v58 + 176) = &type metadata for UInt;
    *(v58 + 144) = v59;
    *(v58 + 152) = 225;
    v60 = v90;
    *(v58 + 216) = v4;
    *(v58 + 224) = v88;
    *(v58 + 184) = &protocol witness table for UInt;
    *(v58 + 192) = v60;
    v61 = v51;
    v62 = v60;
    v63 = static os_log_type_t.error.getter();
    sub_100005404(v57, &_mh_execute_header, v63, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v58);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v64 = static os_log_type_t.error.getter();
    sub_100005404(v57, &_mh_execute_header, v64, "expected equality between two values of type %{public}@", 55, 2, v48);

    type metadata accessor for __VaListBuilder();
    v65 = swift_allocObject();
    v65[2] = 8;
    v65[3] = 0;
    v6 = v65 + 3;
    v65[4] = 0;
    v65[5] = 0;
    v88 = v48;
    v66 = *(v48 + 16);
    if (v66)
    {
      v16 = 0;
      v13 = 40;
      v18 = 0x4000000000000000;
      while (1)
      {
        LODWORD(v0) = sub_100020E58((v89 + 40 * v16), *(v89 + 40 * v16 + 24));
        v67 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v4 = *v6;
        v68 = *(v67 + 16);
        v33 = __OFADD__(*v6, v68);
        v69 = *v6 + v68;
        if (v33)
        {
          goto LABEL_63;
        }

        v0 = v65[4];
        if (v0 >= v69)
        {
          goto LABEL_50;
        }

        if (v0 + 0x4000000000000000 < 0)
        {
          goto LABEL_66;
        }

        v70 = v65[5];
        if (2 * v0 > v69)
        {
          v69 = 2 * v0;
        }

        v65[4] = v69;
        if ((v69 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_67;
        }

        v71 = v67;
        v72 = swift_slowAlloc();
        v73 = v72;
        v65[5] = v72;
        if (v70)
        {
          break;
        }

        v67 = v71;
        if (!v73)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_51:
        v75 = *(v67 + 16);
        if (v75)
        {
          v76 = (v67 + 32);
          v77 = *v6;
          do
          {
            v78 = *v76++;
            *&v73[8 * v77] = v78;
            v77 = *v6 + 1;
            if (__OFADD__(*v6, 1))
            {
              goto LABEL_61;
            }

            *v6 = v77;
          }

          while (--v75);
        }

        if (++v16 == v66)
        {
          goto LABEL_58;
        }
      }

      if (v72 != v70 || v72 >= &v70[8 * v4])
      {
        memmove(v72, v70, 8 * v4);
      }

      LODWORD(v0) = v65;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v67 = v71;
LABEL_50:
      v73 = v65[5];
      if (!v73)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_58:
    v79 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v80 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    [v87 handleFailureInFunction:v80 file:v81 lineNumber:225 isFatal:0 format:v82 args:v79];
  }
}

void sub_100888700(void *a1, void (**a2)(char *, void), void *a3, int a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for UUID();
  v235 = *(v12 - 8);
  v236 = v12;
  __chkstk_darwin(v12);
  v14 = &v223 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for CRLCommandHistoryItem();
  v233 = *(v237 - 8);
  v15 = __chkstk_darwin(v237);
  v232 = &v223 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v234 = &v223 - v18;
  v19 = __chkstk_darwin(v17);
  v228 = (&v223 - v20);
  v21 = __chkstk_darwin(v19);
  v230 = (&v223 - v22);
  v23 = __chkstk_darwin(v21);
  v25 = (&v223 - v24);
  v26 = __chkstk_darwin(v23);
  v229 = (&v223 - v27);
  v28 = __chkstk_darwin(v26);
  v231 = &v223 - v29;
  __chkstk_darwin(v28);
  v31 = (&v223 - v30);
  sub_10098EABC(&_mh_execute_header, "_enqueue(command:commandType:selectionBehavior:progressivityForEnqueuingClosingGroup:destroyChangesFromClosingGroup:)", 117, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandController.swift", 92, 2, 263);
  v32 = objc_opt_self();
  v238 = a1;
  [v32 fatalAssertOnNilCommand:a1];
  sub_1008875A0(a3);
  v33 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v34 = *(v6 + v33);
  if (v34 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 0)
    {
      goto LABEL_3;
    }

LABEL_43:
    v52 = *(v6 + OBJC_IVAR____TtC8Freeform20CRLCommandController__currentSelectionBehavior);
    *(v6 + OBJC_IVAR____TtC8Freeform20CRLCommandController__currentSelectionBehavior) = 0;
    *(v6 + OBJC_IVAR____TtC8Freeform20CRLCommandController__indexOfGroupThatSetCurrentSelectionBehavior) = -1;
    sub_10088A760(v238, a2);
    if (!*(v6 + OBJC_IVAR____TtC8Freeform20CRLCommandController__currentTransactionContext))
    {
LABEL_90:

      sub_10088DA18();
      return;
    }

    if (*(v6 + OBJC_IVAR____TtC8Freeform20CRLCommandController_suspendResumeProvider))
    {
      swift_unknownObjectRetain();
      sub_100834FAC();
      swift_unknownObjectRelease();
    }

    *(v6 + OBJC_IVAR____TtC8Freeform20CRLCommandController_hasIncomingSuspensionInPlaceForCurrentTransaction) = 0;
    v53 = sub_1008941D8(v52, 0, a4);
    v54 = v53;
    if (a5)
    {
      v226 = v25;
      LODWORD(v227) = a2;
      if (!v53)
      {
        goto LABEL_129;
      }

      v55 = v52;
      swift_retain_n();
      UUID.init()();
      v56 = *(v237 + 28);
      v225 = *(v237 + 32);
      a2 = v235;
      v57 = v52;
      v58 = v236;
      (v235[2])(v31 + v56, v14, v236);
      sub_1005B981C(&unk_1019F4D60);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_101465920;
      *(v59 + 32) = v54;
      v60 = v58;
      v52 = v57;
      a2[1](v14, v60);
      *v31 = v59;
      v31[1] = v57;
      v31[2] = 0;
      v31[3] = 0xE000000000000000;
      *(v31 + v225) = 0;
      sub_10088B600(v31, 0);

      sub_100894178(v31, type metadata accessor for CRLCommandHistoryItem);
      LOBYTE(a2) = v227;
      v25 = v226;
    }

    if (a2)
    {

      goto LABEL_90;
    }

    if (!v54)
    {
      v203 = objc_opt_self();
      v204 = [v203 _atomicIncrementAssertCount];
      v242[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v242);
      StaticString.description.getter();
      v205 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v206 = String._bridgeToObjectiveC()();

      v207 = [v206 lastPathComponent];

      v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v210 = v209;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v211 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v204;
      v213 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v213;
      v214 = sub_1005CF04C();
      *(inited + 104) = v214;
      *(inited + 72) = v205;
      *(inited + 136) = &type metadata for String;
      v215 = sub_1000053B0();
      *(inited + 112) = v208;
      *(inited + 120) = v210;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v215;
      *(inited + 152) = 303;
      v216 = v242[0];
      *(inited + 216) = v213;
      *(inited + 224) = v214;
      *(inited + 192) = v216;
      v217 = v205;
      v218 = v216;
      v219 = static os_log_type_t.error.getter();
      sub_100005404(v211, &_mh_execute_header, v219, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v220 = static os_log_type_t.error.getter();
      sub_100005404(v211, &_mh_execute_header, v220, "Failed to create CRLUndoingAction for user command.", 51, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Failed to create CRLUndoingAction for user command.");
      type metadata accessor for __VaListBuilder();
      v221 = swift_allocObject();
      v221[2] = 8;
      v221[3] = 0;
      v221[4] = 0;
      v221[5] = 0;
      v222 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v138 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v139 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v140 = String._bridgeToObjectiveC()();

      [v203 handleFailureInFunction:v138 file:v139 lineNumber:303 isFatal:1 format:v140 args:v222];
      goto LABEL_128;
    }

    v61 = &selRef_crlaxViewAncestorOfType_;
    v62 = &selRef_p_writingDirectionForCharAtIndex_;
    if (a5)
    {
LABEL_87:
      v117 = [objc_opt_self() v61[190]];
      if (qword_1019F1710 != -1)
      {
        swift_once();
      }

      [v117 v62[295]];

      goto LABEL_90;
    }

    v226 = v54;
    v63 = (*((swift_isaMask & *v238) + 0xA8))();
    v227 = v52;
    if (v63)
    {
      v64 = (v6 + OBJC_IVAR____TtC8Freeform20CRLCommandController_commandHistory);
      swift_beginAccess();
      v65 = *v64;
      v66 = *(*v64 + 16);
      if (v66)
      {
        v67 = (*(v233 + 80) + 32) & ~*(v233 + 80);
        v225 = *(v233 + 72);
        v68 = v231;
        v69 = sub_1008940AC(v65 + v67 + v225 * (v66 - 1), v231, type metadata accessor for CRLCommandHistoryItem);
        v70 = *&v68[*(v237 + 32)];
        if (v70 && ((*((swift_isaMask & *v70) + 0xA8))(v69) & 1) != 0)
        {
          v223 = v67;
          v224 = v64;
          v71 = *((swift_isaMask & *v238) + 0xB0);
          v72 = v70;
          if (v71())
          {
            v73 = v231;
            v239[0] = *v231;

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v74 = v227;
            if (*((v239[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v75 = 0;
            v76 = v239[0];
            v77 = *(v73 + 1);
            if (v77 && v74)
            {
              v75 = [v77 commandSelectionBehaviorByCoalescingWithCommandSelectionBehavior:v74];
              v78 = v75;
            }

            v234 = v72;
            sub_1008940AC(v73, v25, type metadata accessor for CRLCommandHistoryItem);
            if (v76 >> 62)
            {
              v79 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v79 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v80 = v237;
            v81 = v230;
            if (v79 < 1)
            {
              __break(1u);
            }

            else
            {
              (v235[2])(v230 + *(v237 + 28), v25 + *(v237 + 28), v236);
              *v81 = v76;
              v82 = v75;
              if (!v75)
              {
                v82 = v25[1];
                v83 = v82;
              }

              v84 = *(v80 + 32);
              v81[1] = v82;
              v85 = v238;
              *(v81 + v84) = v238;
              v87 = v25[2];
              v86 = v25[3];
              v88 = v85;

              sub_100894178(v25, type metadata accessor for CRLCommandHistoryItem);
              v81[2] = v87;
              v81[3] = v86;
              v25 = v229;
              sub_100894114(v81, v229);
              v89 = v224;
              swift_beginAccess();
              sub_100D4D4F8(v31);
              sub_100894178(v31, type metadata accessor for CRLCommandHistoryItem);
              v31 = v228;
              sub_1008940AC(v25, v228, type metadata accessor for CRLCommandHistoryItem);
              v76 = *v89;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v89 = v76;
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_69;
              }
            }

            v76 = sub_100B3630C(0, *(v76 + 16) + 1, 1, v76);
            *v224 = v76;
LABEL_69:
            v92 = *(v76 + 16);
            v91 = *(v76 + 24);
            v52 = v227;
            if (v92 >= v91 >> 1)
            {
              v76 = sub_100B3630C(v91 > 1, v92 + 1, 1, v76);
            }

            *(v76 + 16) = v92 + 1;
            sub_100894114(v31, v76 + v223 + v92 * v225);
            v93 = v224;
            *v224 = v76;
            v93[1] = _swiftEmptyArrayStorage;
            swift_endAccess();

            v94 = [objc_opt_self() defaultCenter];
            if (qword_1019F1730 != -1)
            {
              swift_once();
            }

            v62 = &selRef_p_writingDirectionForCharAtIndex_;
            [v94 postNotificationName:qword_101AD68B8 object:v6];

            sub_100894178(v25, type metadata accessor for CRLCommandHistoryItem);
            sub_100894178(v231, type metadata accessor for CRLCommandHistoryItem);
            goto LABEL_86;
          }

          sub_100894178(v231, type metadata accessor for CRLCommandHistoryItem);
        }

        else
        {
          sub_100894178(v68, type metadata accessor for CRLCommandHistoryItem);
        }
      }
    }

    v95 = v238;
    v239[0] = v238;
    type metadata accessor for CRLCommand();
    v231 = v95;
    sub_1005B981C(&qword_101A056C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      memset(v242, 0, 40);
    }

    sub_10000BE14(v242, v239, &qword_101A056C8);
    v96 = v240;
    v97 = v237;
    if (v240)
    {
      v98 = v241;
      sub_100020E58(v239, v240);
      v99 = (*(v98 + 8))(v96, v98);
      v229 = v100;
      v230 = v99;
      sub_100005070(v239);
    }

    else
    {
      sub_10000CAAC(v239, &qword_101A056C8);
      v229 = 0xE000000000000000;
      v230 = 0;
    }

    v101 = v227;
    v102 = v227;
    v103 = v226;

    UUID.init()();
    v104 = *(v97 + 32);
    v106 = v234;
    v105 = v235;
    v107 = &v234[*(v97 + 28)];
    v108 = v236;
    (v235[2])(v107, v14, v236);
    sub_1005B981C(&unk_1019F4D60);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_101465920;
    *(v109 + 32) = v103;
    v110 = v105[1];
    v111 = v231;
    v110(v14, v108);
    *v106 = v109;
    v106[1] = v101;
    v112 = v229;
    v106[2] = v230;
    v106[3] = v112;
    *(v106 + v104) = v238;
    v43 = v6 + OBJC_IVAR____TtC8Freeform20CRLCommandController_commandHistory;
    swift_beginAccess();
    a5 = v232;
    sub_1008940AC(v106, v232, type metadata accessor for CRLCommandHistoryItem);
    v37 = *v43;
    v113 = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v37;
    if (v113)
    {
      goto LABEL_81;
    }

    goto LABEL_121;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
    goto LABEL_43;
  }

LABEL_3:
  if (a5)
  {
    v161 = objc_opt_self();
    v162 = [v161 _atomicIncrementAssertCount];
    v242[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v242);
    StaticString.description.getter();
    v163 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v164 = String._bridgeToObjectiveC()();

    v165 = [v164 lastPathComponent];

    v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v168 = v167;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v169 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v170 = swift_allocObject();
    *(v170 + 16) = xmmword_10146CA70;
    *(v170 + 56) = &type metadata for Int32;
    *(v170 + 64) = &protocol witness table for Int32;
    *(v170 + 32) = v162;
    v171 = sub_100006370(0, &qword_1019F4D30);
    *(v170 + 96) = v171;
    v172 = sub_1005CF04C();
    *(v170 + 104) = v172;
    *(v170 + 72) = v163;
    *(v170 + 136) = &type metadata for String;
    v173 = sub_1000053B0();
    *(v170 + 112) = v166;
    *(v170 + 120) = v168;
    *(v170 + 176) = &type metadata for UInt;
    *(v170 + 184) = &protocol witness table for UInt;
    *(v170 + 144) = v173;
    *(v170 + 152) = 339;
    v174 = v242[0];
    *(v170 + 216) = v171;
    *(v170 + 224) = v172;
    *(v170 + 192) = v174;
    v175 = v163;
    v176 = v174;
    v177 = static os_log_type_t.error.getter();
    sub_100005404(v169, &_mh_execute_header, v177, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v170);

    v178 = static os_log_type_t.error.getter();
    sub_100005404(v169, &_mh_execute_header, v178, "Can't destroy changes for a closing group while a group is still open.", 70, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Can't destroy changes for a closing group while a group is still open.");
    type metadata accessor for __VaListBuilder();
    v179 = swift_allocObject();
    v179[2] = 8;
    v179[3] = 0;
    v179[4] = 0;
    v179[5] = 0;
    v180 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v138 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v139 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v140 = String._bridgeToObjectiveC()();

    [v161 handleFailureInFunction:v138 file:v139 lineNumber:339 isFatal:1 format:v140 args:v180];
    goto LABEL_128;
  }

  v35 = *(v6 + v33);
  if (!a2)
  {
    goto LABEL_14;
  }

  if (v35 >> 62)
  {
    goto LABEL_103;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
LABEL_104:
    v141 = objc_opt_self();
    v142 = [v141 _atomicIncrementAssertCount];
    v242[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v242);
    StaticString.description.getter();
    v143 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v144 = String._bridgeToObjectiveC()();

    v145 = [v144 lastPathComponent];

    v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v148 = v147;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v149 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v150 = swift_initStackObject();
    *(v150 + 16) = xmmword_10146CA70;
    *(v150 + 56) = &type metadata for Int32;
    *(v150 + 64) = &protocol witness table for Int32;
    *(v150 + 32) = v142;
    v151 = sub_100006370(0, &qword_1019F4D30);
    *(v150 + 96) = v151;
    v152 = sub_1005CF04C();
    *(v150 + 104) = v152;
    *(v150 + 72) = v143;
    *(v150 + 136) = &type metadata for String;
    v153 = sub_1000053B0();
    *(v150 + 112) = v146;
    *(v150 + 120) = v148;
    *(v150 + 176) = &type metadata for UInt;
    *(v150 + 184) = &protocol witness table for UInt;
    *(v150 + 144) = v153;
    *(v150 + 152) = 344;
    v154 = v242[0];
    *(v150 + 216) = v151;
    *(v150 + 224) = v152;
    *(v150 + 192) = v154;
    v155 = v143;
    v156 = v154;
    v157 = static os_log_type_t.error.getter();
    sub_100005404(v149, &_mh_execute_header, v157, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v150);

    v158 = static os_log_type_t.error.getter();
    sub_100005404(v149, &_mh_execute_header, v158, "Non user command enqueued while a group was open and simultaneous execution of non user commands wasn't allowed.", 112, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Non user command enqueued while a group was open and simultaneous execution of non user commands wasn't allowed.");
    type metadata accessor for __VaListBuilder();
    v159 = swift_allocObject();
    v159[2] = 8;
    v159[3] = 0;
    v159[4] = 0;
    v159[5] = 0;
    v160 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v138 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v139 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v140 = String._bridgeToObjectiveC()();

    [v141 handleFailureInFunction:v138 file:v139 lineNumber:344 isFatal:1 format:v140 args:v160];
    goto LABEL_128;
  }

  while (1)
  {
    v37 = v36 - 1;
    if (__OFSUB__(v36, 1))
    {
      __break(1u);
LABEL_108:

      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_12;
    }

    if ((v35 & 0xC000000000000001) != 0)
    {
      goto LABEL_108;
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_110;
    }

    v38 = *(v35 + 8 * v37 + 32);

LABEL_12:
    v39 = *(v38 + 16);

    if (v39 != 3)
    {
      goto LABEL_104;
    }

    v35 = *(v6 + v33);
LABEL_14:
    if (v35 >> 62)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
      if (v40)
      {
        goto LABEL_16;
      }

LABEL_93:
      v118 = objc_opt_self();
      v119 = [v118 _atomicIncrementAssertCount];
      v242[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v242);
      StaticString.description.getter();
      v120 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v121 = String._bridgeToObjectiveC()();

      v122 = [v121 lastPathComponent];

      v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v125 = v124;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v126 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_10146CA70;
      *(v127 + 56) = &type metadata for Int32;
      *(v127 + 64) = &protocol witness table for Int32;
      *(v127 + 32) = v119;
      v128 = sub_100006370(0, &qword_1019F4D30);
      *(v127 + 96) = v128;
      v129 = sub_1005CF04C();
      *(v127 + 104) = v129;
      *(v127 + 72) = v120;
      *(v127 + 136) = &type metadata for String;
      v130 = sub_1000053B0();
      *(v127 + 112) = v123;
      *(v127 + 120) = v125;
      *(v127 + 176) = &type metadata for UInt;
      *(v127 + 184) = &protocol witness table for UInt;
      *(v127 + 144) = v130;
      *(v127 + 152) = 349;
      v131 = v242[0];
      *(v127 + 216) = v128;
      *(v127 + 224) = v129;
      *(v127 + 192) = v131;
      v132 = v120;
      v133 = v131;
      v134 = static os_log_type_t.error.getter();
      sub_100005404(v126, &_mh_execute_header, v134, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v127);

      v135 = static os_log_type_t.error.getter();
      sub_100005404(v126, &_mh_execute_header, v135, "Expected there to be an open group", 34, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Expected there to be an open group");
      type metadata accessor for __VaListBuilder();
      v136 = swift_allocObject();
      v136[2] = 8;
      v136[3] = 0;
      v136[4] = 0;
      v136[5] = 0;
      v137 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v138 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v139 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v140 = String._bridgeToObjectiveC()();

      [v118 handleFailureInFunction:v138 file:v139 lineNumber:349 isFatal:1 format:v140 args:v137];
      while (1)
      {
LABEL_128:

        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v181, v182);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_129:
        v183 = objc_opt_self();
        v184 = [v183 _atomicIncrementAssertCount];
        v242[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v242);
        StaticString.description.getter();
        v185 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v186 = String._bridgeToObjectiveC()();

        v187 = [v186 lastPathComponent];

        v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v190 = v189;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v191 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v192 = swift_initStackObject();
        *(v192 + 16) = xmmword_10146CA70;
        *(v192 + 56) = &type metadata for Int32;
        *(v192 + 64) = &protocol witness table for Int32;
        *(v192 + 32) = v184;
        v193 = sub_100006370(0, &qword_1019F4D30);
        *(v192 + 96) = v193;
        v194 = sub_1005CF04C();
        *(v192 + 104) = v194;
        *(v192 + 72) = v185;
        *(v192 + 136) = &type metadata for String;
        v195 = sub_1000053B0();
        *(v192 + 112) = v188;
        *(v192 + 120) = v190;
        *(v192 + 176) = &type metadata for UInt;
        *(v192 + 184) = &protocol witness table for UInt;
        *(v192 + 144) = v195;
        *(v192 + 152) = 292;
        v196 = v242[0];
        *(v192 + 216) = v193;
        *(v192 + 224) = v194;
        *(v192 + 192) = v196;
        v197 = v185;
        v198 = v196;
        v199 = static os_log_type_t.error.getter();
        sub_100005404(v191, &_mh_execute_header, v199, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v192);

        v200 = static os_log_type_t.error.getter();
        sub_100005404(v191, &_mh_execute_header, v200, "Failed to create CRLUndoingAction for destroying changes.", 57, 2, _swiftEmptyArrayStorage);

        sub_10063DF98(_swiftEmptyArrayStorage, "Failed to create CRLUndoingAction for destroying changes.");
        type metadata accessor for __VaListBuilder();
        v201 = swift_allocObject();
        v201[2] = 8;
        v201[3] = 0;
        v201[4] = 0;
        v201[5] = 0;
        v202 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v138 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v139 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v140 = String._bridgeToObjectiveC()();

        [v183 handleFailureInFunction:v138 file:v139 lineNumber:292 isFatal:1 format:v140 args:v202];
      }
    }

    v40 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_93;
    }

LABEL_16:
    v37 = v40 - 1;
    if (__OFSUB__(v40, 1))
    {
      __break(1u);
LABEL_97:
      v25 = a2;

      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_21:
      v37 = *(v41 + 24);

      v42 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
      swift_beginAccess();
      a2 = v238;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v40 = *((*(v37 + v42) & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40 >= *((*(v37 + v42) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_99;
      }

      goto LABEL_22;
    }

    if ((v35 & 0xC000000000000001) != 0)
    {
      goto LABEL_97;
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v37 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = a2;
      v41 = *(v35 + 8 * v37 + 32);

      goto LABEL_21;
    }

    __break(1u);
LABEL_103:
    v36 = _CocoaArrayWrapper.endIndex.getter();
    if (!v36)
    {
      goto LABEL_104;
    }
  }

  __break(1u);
LABEL_99:
  a5 = v40;
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_22:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v43 = *(v6 + v33);
  if (v43 >> 62)
  {
    v44 = _CocoaArrayWrapper.endIndex.getter();
    if (!v44)
    {
      goto LABEL_41;
    }

LABEL_24:
    v45 = v44 - 1;
    if (!__OFSUB__(v44, 1))
    {
      if ((v43 & 0xC000000000000001) == 0)
      {
        if ((v45 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v45 < *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v46 = *(v43 + 8 * v45 + 32);

          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_115;
      }

LABEL_112:

      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_29:
      v47 = *(v46 + 16);

      if ((v47 - 1) >= 3)
      {
        goto LABEL_41;
      }

      a5 = OBJC_IVAR____TtC8Freeform20CRLCommandController_hasIncomingSuspensionInPlaceForCurrentTransaction;
      if (*(v6 + OBJC_IVAR____TtC8Freeform20CRLCommandController_hasIncomingSuspensionInPlaceForCurrentTransaction))
      {
        goto LABEL_40;
      }

      v43 = *(v6 + v33);
      if (!(v43 >> 62))
      {
        v48 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v48)
        {
          goto LABEL_33;
        }

        goto LABEL_40;
      }

LABEL_115:
      v48 = _CocoaArrayWrapper.endIndex.getter();
      if (v48)
      {
LABEL_33:
        v49 = v48 - 1;
        if (__OFSUB__(v48, 1))
        {
          __break(1u);
        }

        else if ((v43 & 0xC000000000000001) == 0)
        {
          if ((v49 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v49 < *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v50 = *(v43 + 8 * v49 + 32);

            goto LABEL_38;
          }

          __break(1u);
LABEL_121:
          v37 = sub_100B3630C(0, *(v37 + 16) + 1, 1, v37);
          *v43 = v37;
LABEL_81:
          v115 = *(v37 + 16);
          v114 = *(v37 + 24);
          v52 = v227;
          if (v115 >= v114 >> 1)
          {
            v37 = sub_100B3630C(v114 > 1, v115 + 1, 1, v37);
          }

          *(v37 + 16) = v115 + 1;
          sub_100894114(a5, v37 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v115);
          *v43 = v37;
          *(v43 + 8) = _swiftEmptyArrayStorage;
          swift_endAccess();

          v116 = [objc_opt_self() defaultCenter];
          if (qword_1019F1730 != -1)
          {
            swift_once();
          }

          v62 = &selRef_p_writingDirectionForCharAtIndex_;
          [v116 postNotificationName:qword_101AD68B8 object:v6];

          sub_100894178(v234, type metadata accessor for CRLCommandHistoryItem);
          sub_10000CAAC(v242, &qword_101A056C8);
LABEL_86:
          v61 = &selRef_crlaxViewAncestorOfType_;
          goto LABEL_87;
        }

        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_38:
        v51 = *(v50 + 16);

        if (v51 == 3)
        {
          *(v6 + a5) = 1;
          sub_10088B478(a2, v25);
        }
      }

LABEL_40:
      sub_10088A760(a2, v25);
      goto LABEL_41;
    }

LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v44)
  {
    goto LABEL_24;
  }

LABEL_41:
}

void sub_10088A760(NSString a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for CRLCommandGroup();
  if (!swift_dynamicCastClass() || (v6 = a1, v7 = sub_10097DCE4(), v6, (v7 & 1) == 0))
  {
    v8 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
    swift_beginAccess();
    v9 = *&v3[v8];
    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 < 1 || a2 == 0)
    {
      goto LABEL_17;
    }

    v12 = *&v3[v8];
    if (v12 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (!v13)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_40;
      }
    }

    v14 = v13 - 1;
    if (__OFSUB__(v13, 1))
    {
      goto LABEL_43;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      goto LABEL_44;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v12 + 8 * v14 + 32);

      while (1)
      {
        v16 = *(v15 + 16);

        if (v16 == 3)
        {
          break;
        }

LABEL_40:
        v51 = objc_opt_self();
        v52 = [v51 _atomicIncrementAssertCount];
        ObjectType = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &ObjectType);
        StaticString.description.getter();
        v53 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v54 = String._bridgeToObjectiveC()();

        v55 = [v54 lastPathComponent];

        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v59 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v52;
        v61 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v61;
        v62 = sub_1005CF04C();
        *(inited + 104) = v62;
        *(inited + 72) = v53;
        *(inited + 136) = &type metadata for String;
        v63 = sub_1000053B0();
        *(inited + 112) = v56;
        *(inited + 120) = v58;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v63;
        *(inited + 152) = 850;
        v64 = ObjectType;
        *(inited + 216) = v61;
        *(inited + 224) = v62;
        *(inited + 192) = v64;
        v65 = v53;
        v66 = v64;
        v67 = static os_log_type_t.error.getter();
        sub_100005404(v59, &_mh_execute_header, v67, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

        v68 = static os_log_type_t.error.getter();
        sub_100005404(v59, &_mh_execute_header, v68, "Non user command enqueued while a group was open.", 49, 2, _swiftEmptyArrayStorage);

        sub_10063DF98(_swiftEmptyArrayStorage, "Non user command enqueued while a group was open.");
        type metadata accessor for __VaListBuilder();
        v69 = swift_allocObject();
        v69[2] = 8;
        v69[3] = 0;
        v69[4] = 0;
        v69[5] = 0;
        a2 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v70 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        a1 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v71 = String._bridgeToObjectiveC()();

        [v51 handleFailureInFunction:v70 file:a1 lineNumber:850 isFatal:1 format:v71 args:a2];

        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v72, v73);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:

        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

LABEL_17:
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        if (qword_1019F2278 == -1)
        {
LABEL_30:
          v32 = static OS_os_log.commandController;
          sub_1005B981C(&qword_1019F54E0);
          v33 = swift_initStackObject();
          *(v33 + 16) = xmmword_10146C6B0;
          ObjectType = swift_getObjectType();
          sub_1005B981C(&qword_101A05690);
          v34 = String.init<A>(describing:)();
          v36 = v35;
          *(v33 + 56) = &type metadata for String;
          v37 = sub_1000053B0();
          *(v33 + 32) = v34;
          v38 = v33 + 32;
          *(v33 + 64) = v37;
          *(v33 + 40) = v36;
          v39 = static os_log_type_t.default.getter();
          sub_100005404(v32, &_mh_execute_header, v39, "About to execute command of class: %{public}@", 45, 2, v33);
LABEL_37:
          swift_setDeallocating();
          sub_100005070(v38);
          v48 = *(a1 + OBJC_IVAR____TtC8Freeform10CRLCommand_shouldSendChangeNotificationsWhenEnqueuedInProgressiveGroup);
          v49 = a1;
          v50 = v3;
          sub_100893060(a2, v48, v50, a2, v49, v50);

          return;
        }

LABEL_48:
        swift_once();
        goto LABEL_30;
      }

      v18 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
      v19 = v17;
      swift_beginAccess();
      v20 = *(v19 + v18);
      if (v20 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
        v74 = a1;
        if (v21)
        {
LABEL_20:
          v22 = a1;

          sub_100034080(0, v21 & ~(v21 >> 63), 0);
          if ((v21 & 0x8000000000000000) == 0)
          {
            v23 = 0;
            do
            {
              if ((v20 & 0xC000000000000001) != 0)
              {
                v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v24 = *(v20 + 8 * v23 + 32);
              }

              v25 = v24;
              swift_getObjectType();
              sub_1005B981C(&qword_101A05690);
              v26 = String.init<A>(describing:)();
              v28 = v27;

              v30 = _swiftEmptyArrayStorage[2];
              v29 = _swiftEmptyArrayStorage[3];
              if (v30 >= v29 >> 1)
              {
                sub_100034080((v29 > 1), v30 + 1, 1);
              }

              ++v23;
              _swiftEmptyArrayStorage[2] = v30 + 1;
              v31 = &_swiftEmptyArrayStorage[2 * v30];
              v31[4] = v26;
              v31[5] = v28;
            }

            while (v21 != v23);

            a2 = a2;
            goto LABEL_34;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v74 = a1;
        if (v21)
        {
          goto LABEL_20;
        }
      }

      v40 = a1;
LABEL_34:
      sub_1005B981C(&unk_1019F4D80);
      sub_100613214();
      v41 = BidirectionalCollection<>.joined(separator:)();
      v43 = v42;

      if (qword_1019F2278 != -1)
      {
        swift_once();
      }

      v44 = static OS_os_log.commandController;
      sub_1005B981C(&qword_1019F54E0);
      v45 = swift_initStackObject();
      *(v45 + 16) = xmmword_10146C6B0;
      *(v45 + 56) = &type metadata for String;
      v46 = sub_1000053B0();
      *(v45 + 32) = v41;
      v38 = v45 + 32;
      *(v45 + 64) = v46;
      *(v45 + 40) = v43;
      v47 = static os_log_type_t.default.getter();
      sub_100005404(v44, &_mh_execute_header, v47, "About to execute command group composed of command classes: %{public}@", 70, 2, v45);
      a1 = v74;

      goto LABEL_37;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }
}

void sub_10088B018(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC8Freeform20CRLCommandController_asyncCommandHelper))
  {

    sub_1006846AC(a1, a2);
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 372;
    v18 = v28;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:372 isFatal:0 format:v27 args:v24];
  }
}

uint64_t sub_10088B478(uint64_t result, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform20CRLCommandController_suspendResumeProvider);
  if (!v3 || (*(v3 + 32) & 1) != 0)
  {
    return result;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_22:
    swift_unknownObjectRetain();

    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_10;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v9 = *(v7 + 8 * v8 + 32);
  swift_unknownObjectRetain();

LABEL_10:
  v10 = *(v9 + 16);

  if (v10 == 3 && a2 == 0)
  {
    v13 = (*((swift_isaMask & *v5) + 0x88))(v11);
    if (v13)
    {
      sub_1008344F0(v13);
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10088B600(unint64_t *a1, char a2)
{
  v3 = a1[1];
  sub_10088B9E0(a1);
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  result = sub_1008941D8(v3, v4, 4);
  if (!result)
  {
    v6 = objc_opt_self();
    v7 = [v6 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v7;
    v16 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v16;
    v17 = sub_1005CF04C();
    *(inited + 104) = v17;
    *(inited + 72) = v8;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v13;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 412;
    v19 = v31;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "Failed to create CRLUndoingAction", 33, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Failed to create CRLUndoingAction");
    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    [v6 handleFailureInFunction:v26 file:v27 lineNumber:412 isFatal:1 format:v28 args:v25];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v29, v30);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10088B9E0(unint64_t *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8Freeform20CRLCommandController__currentTransactionContext))
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 889;
    v17 = v29;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "Executing an action while a transaction context was already open.", 65, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Executing an action while a transaction context was already open.");
    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:889 isFatal:1 format:v26 args:v23];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v27, v28);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = *a1;

    sub_100895680(0, 1, v1, v2);
  }

  return result;
}

void sub_10088BDDC()
{
  v1 = v0;
  v2 = type metadata accessor for CRLCommandHistoryItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v76 - v7;
  __chkstk_darwin(v9);
  v11 = (&v76 - v10);
  v12 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v90 = *(v15 - 8);
  v91 = v15;
  __chkstk_darwin(v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (v19 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 0)
    {
      goto LABEL_3;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
LABEL_3:
    v20 = objc_opt_self();
    v21 = [v20 _atomicIncrementAssertCount];
    v92 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v92);
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 lastPathComponent];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v21;
    v30 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v30;
    v31 = sub_1005CF04C();
    *(inited + 104) = v31;
    *(inited + 72) = v22;
    *(inited + 136) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 112) = v25;
    *(inited + 120) = v27;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v32;
    *(inited + 152) = 421;
    v33 = v92;
    *(inited + 216) = v30;
    *(inited + 224) = v31;
    *(inited + 192) = v33;
    v34 = v22;
    v35 = v33;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v37, "Should not call undo() while a command group is already open.", 61, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v38 = swift_allocObject();
    v38[2] = 8;
    v38[3] = 0;
    v38[4] = 0;
    v38[5] = 0;
    v39 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    [v20 handleFailureInFunction:v40 file:v41 lineNumber:421 isFatal:0 format:v42 args:v39];

    goto LABEL_22;
  }

  v84 = objc_opt_self();
  v43 = [v84 defaultCenter];
  if (qword_1019F16F0 != -1)
  {
    v75 = v43;
    swift_once();
    v43 = v75;
  }

  v83 = v2;
  v89 = v11;
  v85 = v5;
  v86 = v3;
  v87 = v43;
  [v43 postNotificationName:qword_101AD6878 object:v1];
  if (qword_1019F22B8 != -1)
  {
    swift_once();
  }

  v88 = static OS_os_log.boardItemLifecycle;
  v81 = sub_1005B981C(&qword_1019F54E0);
  v44 = swift_initStackObject();
  v80 = xmmword_10146C6B0;
  *(v44 + 16) = xmmword_10146C6B0;
  v45 = *(*(v1 + OBJC_IVAR____TtC8Freeform20CRLCommandController_board) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v46 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1008940AC(v45 + v46, v14, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_100894178(v14, type metadata accessor for CRLBoardCRDTData);
  v47 = UUID.uuidString.getter();
  v49 = v48;
  v50 = v90 + 8;
  v82 = *(v90 + 8);
  v82(v17, v91);
  *(v44 + 56) = &type metadata for String;
  v51 = sub_1000053B0();
  *(v44 + 64) = v51;
  *(v44 + 32) = v47;
  *(v44 + 40) = v49;
  v52 = static os_log_type_t.default.getter();
  sub_100005404(v88, &_mh_execute_header, v52, "⬅️ Perform undo(). Board: %{public}@", 40, 0, v44);
  swift_setDeallocating();
  sub_100005070(v44 + 32);
  v53 = v1 + OBJC_IVAR____TtC8Freeform20CRLCommandController_commandHistory;
  swift_beginAccess();
  if (!*(*v53 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v77 = v8;
  v78 = v50;
  v54 = v89;
  sub_100D4D4F8(v89);
  v88 = v1;
  v1 = sub_10088B600(v54, 0);
  v50 = v54[2];
  v79 = v54[1];
  v49 = v54[3];
  v55 = qword_1019F2278;

  v76 = v53;
  if (v55 != -1)
  {
LABEL_24:
    swift_once();
  }

  v56 = static OS_os_log.commandController;
  v57 = swift_initStackObject();
  *(v57 + 16) = v80;
  *(v57 + 56) = &type metadata for String;
  *(v57 + 64) = v51;
  *(v57 + 32) = v50;
  *(v57 + 40) = v49;

  v58 = static os_log_type_t.default.getter();
  sub_100005404(v56, &_mh_execute_header, v58, "Undoing %@", 12, 2, v57);
  swift_setDeallocating();
  sub_100005070(v57 + 32);
  v59 = v50;
  v60 = v79;
  v61 = v79;

  UUID.init()();
  v62 = *(v83 + 32);
  v63 = v91;
  v64 = v77;
  (*(v90 + 16))(v77 + *(v83 + 28), v17, v91);
  sub_1005B981C(&unk_1019F4D60);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_101465920;
  v90 = v1;
  *(v65 + 32) = v1;
  v82(v17, v63);
  *v64 = v65;
  v64[1] = v60;
  v64[2] = v59;
  v64[3] = v49;
  *(v64 + v62) = 0;
  v66 = v85;
  sub_1008940AC(v64, v85, type metadata accessor for CRLCommandHistoryItem);
  v67 = v76;
  v68 = *(v76 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v67 + 8) = v68;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v68 = sub_100B3630C(0, v68[2] + 1, 1, v68);
    *(v67 + 8) = v68;
  }

  v70 = v86;
  v42 = v87;
  v71 = v88;
  v73 = v68[2];
  v72 = v68[3];
  if (v73 >= v72 >> 1)
  {
    v68 = sub_100B3630C(v72 > 1, v73 + 1, 1, v68);
    *(v67 + 8) = v68;
  }

  v68[2] = v73 + 1;
  sub_100894114(v66, v68 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v73);
  *(v67 + 8) = v68;
  sub_100894178(v64, type metadata accessor for CRLCommandHistoryItem);
  sub_100894178(v89, type metadata accessor for CRLCommandHistoryItem);
  swift_endAccess();
  v74 = [v84 defaultCenter];
  if (qword_1019F1730 != -1)
  {
    swift_once();
  }

  [v74 postNotificationName:qword_101AD68B8 object:{v71, v76}];

  if (qword_1019F16F8 != -1)
  {
    swift_once();
  }

  [v42 postNotificationName:qword_101AD6880 object:v71];
LABEL_22:
}

void sub_10088C914()
{
  v1 = v0;
  v2 = type metadata accessor for CRLCommandHistoryItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v76 - v7;
  __chkstk_darwin(v9);
  v11 = (&v76 - v10);
  v12 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v90 = *(v15 - 8);
  v91 = v15;
  __chkstk_darwin(v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (v19 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 0)
    {
      goto LABEL_3;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
LABEL_3:
    v20 = objc_opt_self();
    v21 = [v20 _atomicIncrementAssertCount];
    v92 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v92);
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 lastPathComponent];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v21;
    v30 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v30;
    v31 = sub_1005CF04C();
    *(inited + 104) = v31;
    *(inited + 72) = v22;
    *(inited + 136) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 112) = v25;
    *(inited + 120) = v27;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v32;
    *(inited + 152) = 440;
    v33 = v92;
    *(inited + 216) = v30;
    *(inited + 224) = v31;
    *(inited + 192) = v33;
    v34 = v22;
    v35 = v33;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v37, "Should not call redo() while a command group is already open.", 61, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v38 = swift_allocObject();
    v38[2] = 8;
    v38[3] = 0;
    v38[4] = 0;
    v38[5] = 0;
    v39 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    [v20 handleFailureInFunction:v40 file:v41 lineNumber:440 isFatal:0 format:v42 args:v39];

    goto LABEL_22;
  }

  v84 = objc_opt_self();
  v43 = [v84 defaultCenter];
  if (qword_1019F1700 != -1)
  {
    v75 = v43;
    swift_once();
    v43 = v75;
  }

  v83 = v2;
  v89 = v11;
  v85 = v5;
  v86 = v3;
  v87 = v43;
  [v43 postNotificationName:qword_101AD6888 object:v1];
  if (qword_1019F22B8 != -1)
  {
    swift_once();
  }

  v88 = static OS_os_log.boardItemLifecycle;
  v81 = sub_1005B981C(&qword_1019F54E0);
  v44 = swift_initStackObject();
  v80 = xmmword_10146C6B0;
  *(v44 + 16) = xmmword_10146C6B0;
  v45 = *(*(v1 + OBJC_IVAR____TtC8Freeform20CRLCommandController_board) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v46 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1008940AC(v45 + v46, v14, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_100894178(v14, type metadata accessor for CRLBoardCRDTData);
  v47 = UUID.uuidString.getter();
  v49 = v48;
  v50 = v90 + 8;
  v82 = *(v90 + 8);
  v82(v17, v91);
  *(v44 + 56) = &type metadata for String;
  v51 = sub_1000053B0();
  *(v44 + 64) = v51;
  *(v44 + 32) = v47;
  *(v44 + 40) = v49;
  v52 = static os_log_type_t.default.getter();
  sub_100005404(v88, &_mh_execute_header, v52, "➡️ Perform redo(). Board: %{public}@", 40, 0, v44);
  swift_setDeallocating();
  sub_100005070(v44 + 32);
  v53 = v1 + OBJC_IVAR____TtC8Freeform20CRLCommandController_commandHistory;
  swift_beginAccess();
  if (!*(*(v53 + 8) + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v77 = v8;
  v78 = v50;
  v54 = v89;
  sub_100D4D5D8(v89);
  v88 = v1;
  v1 = sub_10088B600(v54, 1);
  v50 = v54[2];
  v79 = v54[1];
  v49 = v54[3];
  v55 = qword_1019F2278;

  v76 = v53;
  if (v55 != -1)
  {
LABEL_24:
    swift_once();
  }

  v56 = static OS_os_log.commandController;
  v57 = swift_initStackObject();
  *(v57 + 16) = v80;
  *(v57 + 56) = &type metadata for String;
  *(v57 + 64) = v51;
  *(v57 + 32) = v50;
  *(v57 + 40) = v49;

  v58 = static os_log_type_t.default.getter();
  sub_100005404(v56, &_mh_execute_header, v58, "Redoing %@", 12, 2, v57);
  swift_setDeallocating();
  sub_100005070(v57 + 32);
  v59 = v50;
  v60 = v79;
  v61 = v79;

  UUID.init()();
  v62 = *(v83 + 32);
  v63 = v91;
  v64 = v77;
  (*(v90 + 16))(v77 + *(v83 + 28), v17, v91);
  sub_1005B981C(&unk_1019F4D60);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_101465920;
  v90 = v1;
  *(v65 + 32) = v1;
  v82(v17, v63);
  *v64 = v65;
  v64[1] = v60;
  v64[2] = v59;
  v64[3] = v49;
  *(v64 + v62) = 0;
  v66 = v85;
  sub_1008940AC(v64, v85, type metadata accessor for CRLCommandHistoryItem);
  v67 = v76;
  v68 = *v76;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v67 = v68;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v68 = sub_100B3630C(0, v68[2] + 1, 1, v68);
    *v67 = v68;
  }

  v70 = v86;
  v42 = v87;
  v71 = v88;
  v73 = v68[2];
  v72 = v68[3];
  if (v73 >= v72 >> 1)
  {
    v68 = sub_100B3630C(v72 > 1, v73 + 1, 1, v68);
    *v67 = v68;
  }

  v68[2] = v73 + 1;
  sub_100894114(v66, v68 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v73);
  *v67 = v68;
  sub_100894178(v64, type metadata accessor for CRLCommandHistoryItem);
  sub_100894178(v89, type metadata accessor for CRLCommandHistoryItem);
  swift_endAccess();
  v74 = [v84 defaultCenter];
  if (qword_1019F1730 != -1)
  {
    swift_once();
  }

  [v74 postNotificationName:qword_101AD68B8 object:{v71, v76}];

  if (qword_1019F1708 != -1)
  {
    swift_once();
  }

  [v42 postNotificationName:qword_101AD6890 object:v71];
LABEL_22:
}

BOOL sub_10088D480()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8Freeform20CRLCommandController_board) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v1)
  {

    v2 = v1;
    v3 = [v2 currentUserParticipant];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 permission];
    }

    else
    {
      v5 = [v2 publicPermission];
    }

    if (v5 != 3)
    {
      return 0;
    }
  }

  v6 = OBJC_IVAR____TtC8Freeform20CRLCommandController_commandHistory;
  swift_beginAccess();
  return *(*(v0 + v6) + 16) != 0;
}

BOOL sub_10088D5AC()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8Freeform20CRLCommandController_board) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v1)
  {

    v2 = v1;
    v3 = [v2 currentUserParticipant];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 permission];
    }

    else
    {
      v5 = [v2 publicPermission];
    }

    if (v5 != 3)
    {
      return 0;
    }
  }

  v6 = v0 + OBJC_IVAR____TtC8Freeform20CRLCommandController_commandHistory;
  swift_beginAccess();
  return *(*(v6 + 8) + 16) != 0;
}

uint64_t sub_10088D6DC()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8Freeform20CRLCommandController_board) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v1)
  {

    v2 = v1;
    v3 = [v2 currentUserParticipant];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 permission];
    }

    else
    {
      v5 = [v2 publicPermission];
    }

    if (v5 != 3)
    {
      return 0;
    }
  }

  v6 = OBJC_IVAR____TtC8Freeform20CRLCommandController_commandHistory;
  swift_beginAccess();
  return *(*(v0 + v6) + 16);
}

uint64_t sub_10088D800()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8Freeform20CRLCommandController_board) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v1)
  {

    v2 = v1;
    v3 = [v2 currentUserParticipant];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 permission];
    }

    else
    {
      v5 = [v2 publicPermission];
    }

    if (v5 != 3)
    {
      return 0;
    }
  }

  v6 = v0 + OBJC_IVAR____TtC8Freeform20CRLCommandController_commandHistory;
  swift_beginAccess();
  return *(*(v6 + 8) + 16);
}

void sub_10088D90C(char *a1, uint64_t a2, void *a3, char a4)
{
  v7 = OBJC_IVAR____TtC8Freeform20CRLCommandController_nonUserCommandQueue;
  swift_beginAccess();
  v8 = *&a1[v7];
  v9 = a3;
  v10 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v7] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100B36334(0, v8[2] + 1, 1, v8);
    *&a1[v7] = v8;
  }

  v13 = v8[2];
  v12 = v8[3];
  if (v13 >= v12 >> 1)
  {
    v8 = sub_100B36334((v12 > 1), v13 + 1, 1, v8);
  }

  v8[2] = v13 + 1;
  v14 = &v8[2 * v13];
  v14[4] = v9;
  *(v14 + 40) = a4;
  *&a1[v7] = v8;
  swift_endAccess();
  sub_10088DA18();
}

void sub_10088DA18()
{
  v1 = OBJC_IVAR____TtC8Freeform20CRLCommandController_nonUserCommandQueue;
  swift_beginAccess();
  if (!*(*(v0 + v1) + 16))
  {
    return;
  }

  v2 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_4;
    }

LABEL_6:
    swift_beginAccess();
    v5 = *(v0 + v1);
    if (*(v5 + 16))
    {
      v6 = *(v5 + 40);
      v7 = *(v5 + 32);
      sub_100678638(0, 1);
      swift_endAccess();
      sub_100888700(v7, v6, 0, 4, 0);
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v4 = *(v0 + v1);
  if (!*(v4 + 16) || !*(v4 + 40))
  {
    goto LABEL_6;
  }
}

uint64_t sub_10088DC9C()
{
  v1 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v5 = *(v2 + 8 * v4 + 32);

LABEL_8:
  v6 = *(v5 + 24);

  sub_100887218();
  if (!v8)
  {
    v7 = sub_10097D1AC();
  }

  v9 = v7;

  return v9;
}

uint64_t sub_10088DE20(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_13:
    a2 = objc_opt_self();
    v13 = [a2 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37);
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v22;
    v23 = sub_1005CF04C();
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 588;
    v25 = v37;
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "Tried to set currentGroupActionString when no group is open", 59, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Tried to set currentGroupActionString when no group is open");
    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    a1 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = v33;
    v34 = String._bridgeToObjectiveC()();

    [a2 handleFailureInFunction:v31 file:v32 lineNumber:588 isFatal:1 format:v34 args:a1];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v35, v36);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_16:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
    }

    goto LABEL_5;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 1)
  {
    goto LABEL_13;
  }

LABEL_3:
  v7 = *(v2 + v5);
  if (v7 >> 62)
  {
    goto LABEL_16;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
  }

LABEL_5:
  v9 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_19:

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_10;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v9 + 32);

LABEL_10:
    v11 = *(v10 + 24);

    v12 = &v11[OBJC_IVAR____TtCC8Freeform20CRLCommandControllerP33_F675CB786BBB78E2B0BD13D7028A0B2032CRLCommandControllerCommandGroup__currentGroupActionString];
    *v12 = a1;
    v12[1] = a2;
  }

  __break(1u);
  return result;
}

void sub_10088E3FC(void *a1)
{
  v2 = v1;
  sub_1008875A0(a1);
  type metadata accessor for CRLCommandController.CommandGroupData();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = [objc_allocWithZone(type metadata accessor for CRLCommandController.CRLCommandControllerCommandGroup()) init];
  *(v3 + 32) = 0;
  v4 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v5 = *(v1 + v4);
  swift_endAccess();
  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 1)
    {
      return;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    return;
  }

  v6 = [objc_opt_self() defaultCenter];
  if (qword_1019F16D0 != -1)
  {
    swift_once();
  }

  [v6 postNotificationName:qword_101AD6858 object:v2];
}

void sub_10088E600(void *a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v6 = *&v5[v1];
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_20:
    v3 = objc_opt_self();
    v20 = [v3 _atomicIncrementAssertCount];
    v46 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v46);
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    v23 = [v22 lastPathComponent];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v20;
    v29 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v29;
    v30 = sub_1005CF04C();
    *(inited + 104) = v30;
    *(inited + 72) = v21;
    *(inited + 136) = &type metadata for String;
    v31 = sub_1000053B0();
    *(inited + 112) = v24;
    *(inited + 120) = v26;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v31;
    *(inited + 152) = 630;
    v32 = v46;
    *(inited + 216) = v29;
    *(inited + 224) = v30;
    *(inited + 192) = v32;
    v33 = v21;
    v34 = v32;
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v36 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v36, "Mismatched open/close group.", 28, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Mismatched open/close group.");
    type metadata accessor for __VaListBuilder();
    v37 = swift_allocObject();
    v37[2] = 8;
    v37[3] = 0;
    v37[4] = 0;
    v37[5] = 0;
    v38 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v2 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    a1 = v39;
    v40 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v2 file:v5 lineNumber:630 isFatal:1 format:v40 args:v38];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v41, v42);
    LODWORD(v45) = 0;
    v44 = 348;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_23:
    if (_CocoaArrayWrapper.endIndex.getter() > 1)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 1)
  {
    goto LABEL_20;
  }

LABEL_3:
  v7 = *&v5[v1];
  if (v7 >> 62)
  {
    goto LABEL_23;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v8 = [objc_opt_self() defaultCenter];
  if (qword_1019F16D8 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_101AD6860 object:{v3, v44, v45}];

LABEL_8:
  swift_beginAccess();
  v9 = *&v5[v3];
  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_18;
    }

LABEL_16:
    v10 = [objc_opt_self() defaultCenter];
    if (qword_1019F16E0 == -1)
    {
LABEL_17:
      [v10 postNotificationName:qword_101AD6868 object:{v3, v44, v45}];

      goto LABEL_18;
    }

LABEL_32:
    swift_once();
    goto LABEL_17;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_26;
  }

LABEL_10:
  v10 = &v5[v3];
  v11 = sub_100FB0C8C();
  if (v11)
  {
    goto LABEL_14;
  }

  v12 = *&v5[v3];
  if (v12 >> 62)
  {
    v43 = _CocoaArrayWrapper.endIndex.getter();
    v14 = __OFSUB__(v43, 1);
    v15 = v43 - 1;
    if (!v14)
    {
      goto LABEL_13;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    goto LABEL_31;
  }

LABEL_13:
  v11 = sub_10106B378(v15);
LABEL_14:
  v16 = v11;
  swift_endAccess();
  v17 = *(v16 + 32);
  v18 = *(v16 + 16);
  v2 = *(v16 + 24);
  sub_100888700(v2, 0, a1, v18, v17);
  v19 = *&v5[v3];
  if (v19 >> 62)
  {
    goto LABEL_27;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_18:
}

uint64_t sub_10088ECA0()
{
  sub_10098EABC(&_mh_execute_header, "destroyOutermostCommandGroupOnClose()", 37, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandController.swift", 92, 2, 655);
  v1 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v50 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v50);
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 658;
    v18 = v50;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "Can not call destroyOutermostCommandGroupOnClose() without an open command group.", 81, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Can not call destroyOutermostCommandGroupOnClose() without an open command group.");
    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:658 isFatal:1 format:v27 args:v24];
    goto LABEL_15;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    if ((*(v4 + 32) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v28 = objc_opt_self();
    v29 = [v28 _atomicIncrementAssertCount];
    v50 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v50);
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    v32 = [v31 lastPathComponent];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_10146CA70;
    *(v37 + 56) = &type metadata for Int32;
    *(v37 + 64) = &protocol witness table for Int32;
    *(v37 + 32) = v29;
    v38 = sub_100006370(0, &qword_1019F4D30);
    *(v37 + 96) = v38;
    v39 = sub_1005CF04C();
    *(v37 + 104) = v39;
    *(v37 + 72) = v30;
    *(v37 + 136) = &type metadata for String;
    v40 = sub_1000053B0();
    *(v37 + 112) = v33;
    *(v37 + 120) = v35;
    *(v37 + 176) = &type metadata for UInt;
    *(v37 + 184) = &protocol witness table for UInt;
    *(v37 + 144) = v40;
    *(v37 + 152) = 662;
    v41 = v50;
    *(v37 + 216) = v38;
    *(v37 + 224) = v39;
    *(v37 + 192) = v41;
    v42 = v30;
    v43 = v41;
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v37);

    v45 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v45, "Can not call destroyOutermostCommandGroupOnClose() more than once on the same group.", 84, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Can not call destroyOutermostCommandGroupOnClose() more than once on the same group.");
    type metadata accessor for __VaListBuilder();
    v46 = swift_allocObject();
    v46[2] = 8;
    v46[3] = 0;
    v46[4] = 0;
    v46[5] = 0;
    v47 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v28 handleFailureInFunction:v25 file:v26 lineNumber:662 isFatal:1 format:v27 args:v47];
LABEL_15:

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v48, v49);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_16;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);

    if ((*(v4 + 32) & 1) == 0)
    {
LABEL_6:
      *(v4 + 32) = 1;
    }

    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10088F490()
{
  v1 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_27:
    v11 = objc_opt_self();
    v12 = [v11 _atomicIncrementAssertCount];
    v34 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v34);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v12;
    v21 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v21;
    v22 = sub_1005CF04C();
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 694;
    v24 = v34;
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "enableProgressiveEnqueuingInCurrentGroup() called without a group being open.", 77, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "enableProgressiveEnqueuingInCurrentGroup() called without a group being open.");
    type metadata accessor for __VaListBuilder();
    v0 = swift_allocObject();
    v0[2] = 8;
    v0[3] = 0;
    v0[4] = 0;
    v0[5] = 0;
    v1 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    [v11 handleFailureInFunction:v29 file:v30 lineNumber:694 isFatal:1 format:v31 args:v1];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v32, v33);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

LABEL_26:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_27;
  }

LABEL_3:
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_31:

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_13;
  }

  v4 = *(v2 + 8 * v4 + 32);

LABEL_8:
  v5 = *(v4 + 16);
  if (v5 == 3 || v5 == 2 || v5 == 1)
  {
  }

  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_34;
  }

  v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

  if (v1)
  {
    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_22:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v7 = *(v2 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_22;
        }
      }

      v9 = *(v7 + 24);
      sub_10088A760(v9, 0);

      ++v6;
    }

    while (v8 != v1);
  }

  *(v4 + 16) = 1;
}

uint64_t sub_10088FA60()
{
  v1 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v4 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v2 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v2 + 8 * v4 + 32);

LABEL_8:
        v6 = *(v5 + 16);

        return (v6 - 1) < 3;
      }

      __break(1u);
      return result;
    }

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_10088FB4C()
{
  v1 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v12 = objc_opt_self();
    v13 = [v12 _atomicIncrementAssertCount];
    v35 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v35);
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v22;
    v23 = sub_1005CF04C();
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 733;
    v25 = v35;
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "enableRealTimeSyncProgressiveEnqueingInCurrentGroup() called without a group being open.", 88, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "enableRealTimeSyncProgressiveEnqueingInCurrentGroup() called without a group being open.");
    type metadata accessor for __VaListBuilder();
    v0 = swift_allocObject();
    v0[2] = 8;
    v0[3] = 0;
    v0[4] = 0;
    v0[5] = 0;
    v1 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v12 handleFailureInFunction:v30 file:v31 lineNumber:733 isFatal:1 format:v32 args:v1];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v33, v34);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_25;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_26:

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_31;
  }

  v4 = *(v2 + 8 * v4 + 32);

LABEL_8:
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_28:
  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (v5)
  {
LABEL_10:
    v6 = v5 - 1;
    if (!__OFSUB__(v5, 1))
    {
      if ((v2 & 0xC000000000000001) == 0)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v6 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v7 = *(v2 + 8 * v6 + 32);

          goto LABEL_15;
        }

        __break(1u);
        goto LABEL_35;
      }

LABEL_32:

      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_15:
      v8 = *(v7 + 16);

      if ((v8 - 1) < 3)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_16:
  sub_10088F490();
LABEL_17:
  if ((*(v4 + 16) & 0xFE) != 2)
  {
    if (qword_1019F2278 == -1)
    {
LABEL_19:
      v9 = static OS_os_log.commandController;
      v10 = static os_log_type_t.debug.getter();
      sub_100005404(v9, &_mh_execute_header, v10, "simultaneous NOT enabled [setting isProgressiveAndRealTimeSync to true]", 71, 2, _swiftEmptyArrayStorage);
      *(v4 + 16) = 2;
      sub_10089095C();
    }

LABEL_35:
    swift_once();
    goto LABEL_19;
  }
}

uint64_t sub_100890138()
{
  v1 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v12 = objc_opt_self();
    v13 = [v12 _atomicIncrementAssertCount];
    v35 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v35);
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v22;
    v23 = sub_1005CF04C();
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 753;
    v25 = v35;
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "enableRealTimeSyncProgressiveEnqueingInCurrentGroup() called without a group being open.", 88, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "enableRealTimeSyncProgressiveEnqueingInCurrentGroup() called without a group being open.");
    type metadata accessor for __VaListBuilder();
    v0 = swift_allocObject();
    v0[2] = 8;
    v0[3] = 0;
    v0[4] = 0;
    v0[5] = 0;
    v1 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v12 handleFailureInFunction:v30 file:v31 lineNumber:753 isFatal:1 format:v32 args:v1];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v33, v34);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_25;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_26:

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_31;
  }

  v4 = *(v2 + 8 * v4 + 32);

LABEL_8:
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_28:
  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (v5)
  {
LABEL_10:
    v6 = v5 - 1;
    if (!__OFSUB__(v5, 1))
    {
      if ((v2 & 0xC000000000000001) == 0)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v6 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v7 = *(v2 + 8 * v6 + 32);

          goto LABEL_15;
        }

        __break(1u);
        goto LABEL_35;
      }

LABEL_32:

      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_15:
      v8 = *(v7 + 16);

      if ((v8 - 1) < 3)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_16:
  sub_10088F490();
LABEL_17:
  if (*(v4 + 16) != 3)
  {
    if (qword_1019F2278 == -1)
    {
LABEL_19:
      v9 = static OS_os_log.commandController;
      v10 = static os_log_type_t.debug.getter();
      sub_100005404(v9, &_mh_execute_header, v10, "simultaneous enabled [setting isRealTimeSyncProgressiveWithSimultaneousRealtimeIncoming to true]", 96, 2, _swiftEmptyArrayStorage);
      *(v4 + 16) = 3;
      sub_10089095C();
    }

LABEL_35:
    swift_once();
    goto LABEL_19;
  }
}

uint64_t sub_100890754()
{
  v1 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v4 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v2 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v2 + 8 * v4 + 32);

LABEL_8:
        v6 = *(v5 + 16);

        return (v6 & 0xFE) == 2;
      }

      __break(1u);
      return result;
    }

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100890874()
{
  v1 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v4 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v2 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v2 + 8 * v4 + 32);

LABEL_8:
        v6 = *(v5 + 16);

        return v6 == 3;
      }

      __break(1u);
      return result;
    }

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_10089095C()
{
  v1 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1005B981C(&qword_101A08DF0);
  result = __chkstk_darwin(v5 - 8);
  v8 = &aBlock[-1] - v7;
  v9 = *(v0 + OBJC_IVAR____TtC8Freeform20CRLCommandController__currentTransactionContext);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC8Freeform20CRLCommandController_board);
    v11 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    swift_beginAccess();
    sub_10000BE14(v10 + v11, v8, &qword_101A08DF0);
    if ((*(v2 + 48))(v8, 1, v1))
    {
      return sub_10000CAAC(v8, &qword_101A08DF0);
    }

    sub_1008940AC(v8, v4, type metadata accessor for CRLBoard.RealTimeSessionInfo);

    sub_10000CAAC(v8, &qword_101A08DF0);
    v12 = *v4;

    sub_100894178(v4, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    v13 = OBJC_IVAR____TtC8Freeform20CRLCommandController__currentWatermarkTransactionContext;
    if (!*(v0 + OBJC_IVAR____TtC8Freeform20CRLCommandController__currentWatermarkTransactionContext))
    {
      type metadata accessor for CRLWatermarkTransactionContext(0);
      swift_allocObject();

      v15 = v0;
      v16 = sub_1012E27CC(v14);

      *(v15 + v13) = v16;

      if (!*(v15 + v13))
      {
        __break(1u);
        return result;
      }
    }

    v17 = sub_1012D3118(v9);

    if (v17)
    {
      v18 = *(v12 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      *(v19 + 24) = v12;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_100798CD8;
      *(v20 + 24) = v19;
      aBlock[4] = sub_10002AAE4;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_10002AAB8;
      aBlock[3] = &unk_10188A780;
      v21 = _Block_copy(aBlock);

      dispatch_sync(v18, v21);
      _Block_release(v21);
      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if ((v18 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  return result;
}

id sub_100890DB8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100890F68()
{
  result = qword_101A05680;
  if (!qword_101A05680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05680);
  }

  return result;
}

unint64_t sub_100890FC0()
{
  result = qword_101A05688;
  if (!qword_101A05688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05688);
  }

  return result;
}

uint64_t sub_100891014(uint64_t result, unint64_t a2)
{
  v4 = result;
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (!__OFSUB__(v5--, 1))
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
        sub_1005E1010(v4);

        if (v2 || !v5)
        {
          return result;
        }
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_13;
        }

        if (v5 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

          goto LABEL_8;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        result = _CocoaArrayWrapper.endIndex.getter();
        v5 = result;
        if (!result)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

void sub_100891104(void *a1)
{
  v4 = OBJC_IVAR____TtC8Freeform20CRLCommandController__currentTransactionContext;
  if (!*(v1 + OBJC_IVAR____TtC8Freeform20CRLCommandController__currentTransactionContext))
  {
    v6 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }

    else if ((v7 & 0xC000000000000001) == 0)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v10 = *(v7 + 8 * v9 + 32);

        goto LABEL_9;
      }

      __break(1u);
      goto LABEL_46;
    }

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_9:
    v11 = *(v10 + 16);

    if (v11 == 3)
    {
      v12 = *(v1 + v6);
      if (v12 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() > 0)
        {
          goto LABEL_15;
        }
      }

      else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    if (a1 - 2 < 2)
    {
      v13 = *(v1 + OBJC_IVAR____TtC8Freeform20CRLCommandController_board);
      v14 = sub_100EDA5C4(v13);
      goto LABEL_17;
    }

    if (a1)
    {
      v13 = *(v1 + OBJC_IVAR____TtC8Freeform20CRLCommandController_board);
      v14 = sub_100822664(v13, 1);
LABEL_17:
      v15 = v14;

      *(v1 + v4) = v15;

      v16 = *(v1 + v6);
      if (v16 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() < 1)
        {
          goto LABEL_42;
        }
      }

      else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        goto LABEL_42;
      }

      v17 = *(v1 + v6);
      if (v17 >> 62)
      {
        v18 = _CocoaArrayWrapper.endIndex.getter();
        if (v18)
        {
LABEL_21:
          v19 = v18 - 1;
          if (!__OFSUB__(v18, 1))
          {
            if ((v17 & 0xC000000000000001) == 0)
            {
              if ((v19 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v19 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v20 = *(v17 + 8 * v19 + 32);

                goto LABEL_26;
              }

              __break(1u);
              goto LABEL_50;
            }

LABEL_47:

            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_26:
            v21 = *(v20 + 16);

            if (v21 == 3 || a1 == 0)
            {
              goto LABEL_42;
            }

LABEL_40:
            a1 = objc_opt_self();
            LODWORD(v1) = [a1 _atomicIncrementAssertCount];
            v41 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v41);
            StaticString.description.getter();
            v17 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v23 = String._bridgeToObjectiveC()();

            v24 = [v23 lastPathComponent];

            v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v3 = v25;

            if (qword_1019F20A0 == -1)
            {
LABEL_41:
              v26 = static OS_os_log.crlAssert;
              sub_1005B981C(&qword_1019F54E0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_10146CA70;
              *(inited + 56) = &type metadata for Int32;
              *(inited + 64) = &protocol witness table for Int32;
              *(inited + 32) = v1;
              v28 = sub_100006370(0, &qword_1019F4D30);
              *(inited + 96) = v28;
              v29 = sub_1005CF04C();
              *(inited + 104) = v29;
              *(inited + 72) = v17;
              *(inited + 136) = &type metadata for String;
              v30 = sub_1000053B0();
              *(inited + 112) = v2;
              *(inited + 120) = v3;
              *(inited + 176) = &type metadata for UInt;
              *(inited + 184) = &protocol witness table for UInt;
              *(inited + 144) = v30;
              *(inited + 152) = 1053;
              v31 = v41;
              *(inited + 216) = v28;
              *(inited + 224) = v29;
              *(inited + 192) = v31;
              v32 = v17;
              v33 = v31;
              v34 = static os_log_type_t.error.getter();
              sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
              v35 = static os_log_type_t.error.getter();
              sub_100005404(v26, &_mh_execute_header, v35, "Non-user commands are only for an open group, if simultaneous realtime updates are enabled", 90, 2, _swiftEmptyArrayStorage);

              type metadata accessor for __VaListBuilder();
              v36 = swift_allocObject();
              v36[2] = 8;
              v36[3] = 0;
              v36[4] = 0;
              v36[5] = 0;
              v37 = __VaListBuilder.va_list()();
              StaticString.description.getter();
              v38 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v39 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v40 = String._bridgeToObjectiveC()();

              [a1 handleFailureInFunction:v38 file:v39 lineNumber:1053 isFatal:0 format:v40 args:v37];

              goto LABEL_42;
            }

LABEL_50:
            swift_once();
            goto LABEL_41;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_21;
        }
      }

      if (a1)
      {
        goto LABEL_40;
      }

LABEL_42:
      sub_10113E27C();
      return;
    }

LABEL_15:
    v13 = *(v1 + OBJC_IVAR____TtC8Freeform20CRLCommandController_board);
    v14 = sub_100892DE4(v13);
    goto LABEL_17;
  }
}

uint64_t sub_10089172C(void *a1, unint64_t a2, void (*a3)(id), uint64_t a4)
{
  v178[1] = a4;
  v179 = a3;
  v205 = a2;
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v5 - 8);
  v187 = v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for UUID();
  v184 = *(v204 - 8);
  v7 = __chkstk_darwin(v204);
  v212 = v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v181 = v178 - v10;
  v11 = __chkstk_darwin(v9);
  v196 = v178 - v12;
  __chkstk_darwin(v11);
  v197 = v178 - v13;
  v14 = sub_1005B981C(&qword_101A05698);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v178 - v18;
  v210 = [objc_allocWithZone(CRLChangeGroup) init];
  v214 = [objc_allocWithZone(CRLChangeGroup) init];
  v220[0] = _swiftEmptySetSingleton;
  v20 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
  swift_beginAccess();
  v211 = a1;
  v21 = *(a1 + v20);
  if ((v21 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_100893FE8(&qword_101A22700, type metadata accessor for CRLTransactableHashableWrapper);
    Set.Iterator.init(_cocoa:)();
    v21 = v220[1];
    v22 = v220[2];
    v23 = v220[3];
    v24 = v220[4];
    v25 = v220[5];
  }

  else
  {
    v26 = -1 << *(v21 + 32);
    v22 = (v21 + 56);
    v23 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v21 + 56);

    v24 = 0;
  }

  v29 = (v23 + 64) >> 6;
  v185 = v17;
  v194 = v19;
  v206 = v23;
  v207 = v29;
  v208 = v22;
  v209 = v21;
  while (v21 < 0)
  {
    v35 = __CocoaSet.Iterator.next()();
    if (!v35)
    {
      goto LABEL_23;
    }

    v219[0] = v35;
    type metadata accessor for CRLTransactableHashableWrapper();
    swift_dynamicCast();
    v34 = v221;
    v32 = v24;
    v33 = v25;
    if (!v221)
    {
      goto LABEL_23;
    }

LABEL_18:
    v213 = v33;
    v36 = *(v34 + 16);
    v37 = *(v34 + 24);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    [v210 registerChange:2 details:0 forChangeSource:v36];
    v39 = (*(v37 + 96))(ObjectType, v37);
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = (v39 + 48);
      do
      {
        v42 = *(v41 - 2);
        v43 = *v41;
        v44 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
        swift_beginAccess();
        if (*(*(v43 + v44) + 16))
        {
          [v214 registerChange:1 details:v43 forChangeSource:v42];
        }

        v41 += 3;
        --v40;
      }

      while (v40);
    }

    swift_unknownObjectRelease();

    v24 = v32;
    v25 = v213;
    v22 = v208;
    v21 = v209;
    v29 = v207;
  }

  v30 = v24;
  v31 = v25;
  v32 = v24;
  if (v25)
  {
LABEL_14:
    v33 = (v31 - 1) & v31;
    v34 = *(*(v21 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));

    if (!v34)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_119;
    }

    if (v32 >= v29)
    {
      break;
    }

    v31 = *(v22 + v32);
    ++v30;
    if (v31)
    {
      goto LABEL_14;
    }
  }

LABEL_23:
  sub_100035F90();
  v45 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances;
  v46 = v211;
  swift_beginAccess();
  v47 = *(v46 + v45);
  if ((v47 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_100893FE8(&qword_101A22700, type metadata accessor for CRLTransactableHashableWrapper);
    Set.Iterator.init(_cocoa:)();
    v47 = v221;
    v48 = v222;
    v49 = v223;
    v50 = v224;
    v25 = v225;
  }

  else
  {
    v51 = -1 << *(v47 + 32);
    v48 = (v47 + 56);
    v49 = ~v51;
    v52 = -v51;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    else
    {
      v53 = -1;
    }

    v25 = v53 & *(v47 + 56);

    v50 = 0;
  }

  v54 = v185;
  v55 = (v49 + 64) >> 6;
  v208 = v48;
  v209 = v47;
  v206 = v49;
  v207 = v55;
  while (2)
  {
    if (v47 < 0)
    {
      v61 = __CocoaSet.Iterator.next()();
      if (!v61)
      {
        goto LABEL_45;
      }

      v219[4] = v61;
      type metadata accessor for CRLTransactableHashableWrapper();
      swift_dynamicCast();
      v60 = v219[0];
      v58 = v50;
      v59 = v25;
      if (!v219[0])
      {
        goto LABEL_45;
      }

      goto LABEL_40;
    }

    v56 = v50;
    v57 = v25;
    v58 = v50;
    if (v25)
    {
LABEL_36:
      v59 = (v57 - 1) & v57;
      v60 = *(*(v47 + 48) + ((v58 << 9) | (8 * __clz(__rbit64(v57)))));

      if (!v60)
      {
        goto LABEL_45;
      }

LABEL_40:
      v213 = v59;
      v62 = *(v60 + 16);
      v63 = *(v60 + 24);
      v64 = swift_getObjectType();
      swift_unknownObjectRetain();
      [v210 registerChange:3 details:0 forChangeSource:v62];
      v65 = *(v211 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
      v66 = *(v63 + 112);
      v67 = swift_unknownObjectRetain();
      v68 = v66(v67, v65, v64, v63);
      swift_unknownObjectRelease();
      v69 = *(v68 + 16);
      if (v69)
      {
        v70 = (v68 + 48);
        do
        {
          v71 = *(v70 - 2);
          v72 = *v70;
          v73 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
          swift_beginAccess();
          if (*(*(v72 + v73) + 16))
          {
            [v214 registerChange:1 details:v72 forChangeSource:v71];
          }

          v70 += 3;
          --v69;
        }

        while (v69);
      }

      swift_unknownObjectRelease();

      v50 = v58;
      v25 = v213;
      v54 = v185;
      v48 = v208;
      v47 = v209;
      v55 = v207;
      continue;
    }

    break;
  }

  while (1)
  {
    v58 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_120;
    }

    if (v58 >= v55)
    {
      break;
    }

    v57 = *(v48 + v58);
    ++v56;
    if (v57)
    {
      goto LABEL_36;
    }
  }

LABEL_45:
  sub_100035F90();
  v74 = OBJC_IVAR____TtC8Freeform18CRLObservableDelta_observableDeltas;
  v25 = v205;
  swift_beginAccess();
  v75 = *(v25 + v74);
  v76 = *(v75 + 64);
  v189 = v75 + 64;
  v77 = 1 << *(v75 + 32);
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  else
  {
    v78 = -1;
  }

  v195 = v78 & v76;
  v186 = OBJC_IVAR____TtC8Freeform20CRLCommandController_board;
  v180 = (v77 + 63) >> 6;
  v182 = v184 + 16;
  v183 = v75;
  v192 = (v184 + 32);
  v199 = (v184 + 8);

  v79 = 0;
  v80 = v54;
  v81 = &unk_101A056A0;
  while (1)
  {
    v82 = v195;
    if (v195)
    {
      v83 = v80;
      v193 = v79;
      v84 = v79;
LABEL_61:
      v195 = (v82 - 1) & v82;
      v87 = __clz(__rbit64(v82)) | (v84 << 6);
      v88 = v183;
      v89 = v184;
      v90 = v197;
      v91 = v204;
      (*(v184 + 16))(v197, *(v183 + 48) + *(v184 + 72) * v87, v204);
      v92 = *(*(v88 + 56) + 8 * v87);
      v93 = sub_1005B981C(v81);
      v94 = v81;
      v95 = *(v93 + 48);
      v96 = v90;
      v80 = v83;
      (*(v89 + 32))(v83, v96, v91);
      *(v83 + v95) = v92;
      v81 = v94;
      (*(*(v93 - 8) + 56))(v83, 0, 1, v93);
    }

    else
    {
      v85 = v180 <= v79 + 1 ? v79 + 1 : v180;
      v86 = v85 - 1;
      while (1)
      {
        v84 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_118;
        }

        if (v84 >= v180)
        {
          break;
        }

        v82 = *(v189 + 8 * v84);
        ++v79;
        if (v82)
        {
          v83 = v80;
          v193 = v84;
          goto LABEL_61;
        }
      }

      v146 = sub_1005B981C(v81);
      (*(*(v146 - 8) + 56))(v80, 1, 1, v146);
      v195 = 0;
      v193 = v86;
    }

    v97 = v194;
    sub_100894030(v80, v194);
    v98 = sub_1005B981C(v81);
    if ((*(*(v98 - 8) + 48))(v97, 1, v98) == 1)
    {
      break;
    }

    v99 = v81;
    v198 = *&v194[*(v98 + 48)];
    v100 = v204;
    (*v192)(v196);
    v101 = *(v188 + v186);
    v102 = *(v101 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v103 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v104 = v102 + v103;
    v105 = v187;
    sub_1008940AC(v104, v187, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250);
    v106 = v197;
    CRRegister.wrappedValue.getter();
    sub_100894178(v105, type metadata accessor for CRLBoardCRDTData);
    LOBYTE(v105) = static UUID.== infix(_:_:)();
    v25 = *v199;
    (*v199)(v106, v100);
    if (v105)
    {
      v191 = v25;
      v207 = v101;
      swift_unknownObjectRetain();
      v25 = &off_1018A75D0;
      v81 = v99;
      goto LABEL_68;
    }

    v107 = OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap;
    swift_beginAccess();
    v108 = *(v101 + v107);
    v81 = v99;
    if (*(v108 + 16))
    {

      v109 = sub_10003E994(v196);
      if (v110)
      {
        v191 = v25;
        v111 = (*(v108 + 56) + 16 * v109);
        v25 = v111[1];
        v207 = *v111;
        swift_unknownObjectRetain();

LABEL_68:
        v112 = *(v198 + OBJC_IVAR____TtC8Freeform31CRLTransactableObservableDeltas_invalidationKeys);
        v113 = v112 + 64;
        v114 = 1 << *(v112 + 32);
        if (v114 < 64)
        {
          v115 = ~(-1 << v114);
        }

        else
        {
          v115 = -1;
        }

        v116 = v115 & *(v112 + 64);
        v211 = (v198 + OBJC_IVAR____TtC8Freeform31CRLTransactableObservableDeltas_snapshot);
        v117 = (v114 + 63) >> 6;
        v190 = v25 + 32;
        v205 = v112;
        v206 = v25;
        v200 = v25 + 104;
        v201 = v25 + 88;

        v118 = 0;
        v202 = v117;
        v203 = v113;
LABEL_73:
        if (v116)
        {
          goto LABEL_78;
        }

        while (1)
        {
          v119 = v118 + 1;
          if (__OFADD__(v118, 1))
          {
            break;
          }

          if (v119 >= v117)
          {

            swift_unknownObjectRelease();
            v80 = v185;
            v25 = v191;
            goto LABEL_50;
          }

          v116 = *(v113 + 8 * v119);
          ++v118;
          if (v116)
          {
            v118 = v119;
LABEL_78:
            v120 = __clz(__rbit64(v116)) | (v118 << 6);
            v121 = *(v205 + 56);
            LODWORD(v213) = *(*(v205 + 48) + v120);
            v122 = *(v121 + 8 * v120);
            v123 = type metadata accessor for CRLPropertyMap();
            v124 = objc_allocWithZone(v123);
            *&v124[OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data] = &_swiftEmptyDictionarySingleton;
            v215.receiver = v124;
            v215.super_class = v123;

            v125 = objc_msgSendSuper2(&v215, "init");
            v126 = v207;
            v127 = swift_getObjectType();
            v129 = *v211;
            v128 = v211[1];
            v130 = v206;
            v208 = *(v206 + 88);
            swift_unknownObjectRetain();
            v209 = v122;
            v131 = v122;
            v132 = v127;
            v208(v125, v131, v213, v129, v128, v127, v130);
            swift_unknownObjectRelease();
            v133 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
            swift_beginAccess();
            if (*(*&v125[v133] + 16))
            {
              [v210 registerChange:1 details:v125 forChangeSource:v126];
              v134 = *&v125[v133];
              if (*(v134 + 16) && (v135 = sub_1007CF108(4), (v136 & 1) != 0))
              {
                sub_10000BE14(*(v134 + 56) + 32 * v135, v219, &unk_1019F4D00);
                sub_10000CAAC(v219, &unk_1019F4D50);
                v130 = v206;
                v137 = v181;
                (*(v206 + 32))(v132, v206);
                v138 = v197;
                sub_100E6AF38(v197, v137);
                v191(v138, v204);
              }

              else
              {
                memset(v219, 0, 24);
                v219[3] = 1;
                sub_10000CAAC(v219, &unk_1019F4D50);
                v130 = v206;
              }
            }

            v140 = *v211;
            v139 = v211[1];
            v25 = *(v130 + 104);
            swift_unknownObjectRetain();
            v141 = (v25)(v209, v213, v140, v139, v132, v130);
            swift_unknownObjectRelease();

            v142 = *(v141 + 16);
            if (v142)
            {
              v143 = (v141 + 48);
              do
              {
                v25 = *(v143 - 2);
                v144 = *v143;
                v145 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
                swift_beginAccess();
                if (*(*(v144 + v145) + 16))
                {
                  [v214 registerChange:1 details:v144 forChangeSource:v25];
                }

                v143 += 3;
                --v142;
              }

              while (v142);
            }

            v116 &= v116 - 1;

            v81 = &unk_101A056A0;
            v117 = v202;
            v113 = v203;
            goto LABEL_73;
          }
        }

        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
        while (2)
        {
          __break(1u);
LABEL_124:
          v148 = _CocoaArrayWrapper.endIndex.getter();
          if (!v148)
          {
            goto LABEL_114;
          }

LABEL_92:
          v149 = 0;
          v150 = v25 & 0xC000000000000001;
          v202 = v25 + 32;
          v203 = v25 & 0xFFFFFFFFFFFFFF8;
          v205 = v25 & 0xC000000000000001;
          v206 = v148;
          v207 = v25;
          while (1)
          {
LABEL_94:
            if (v150)
            {
              v151 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v152 = __OFADD__(v149++, 1);
              if (v152)
              {
                goto LABEL_121;
              }
            }

            else
            {
              if (v149 >= *(v203 + 16))
              {
                goto LABEL_122;
              }

              v151 = *(v202 + 8 * v149);
              v152 = __OFADD__(v149++, 1);
              if (v152)
              {
                goto LABEL_121;
              }
            }

            v153 = v151;
            v154 = [v151 changeSource];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_1005B981C(&qword_1019F51A8);
            if (swift_dynamicCast())
            {
              break;
            }

            if (v149 == v148)
            {
              goto LABEL_114;
            }
          }

          v25 = v217;
          v155 = v218;
          v156 = swift_getObjectType();
          (*(v155 + 32))(v156, v155);
          v208 = v153;
          v157 = [v153 changes];
          type metadata accessor for CRLChangeRecord();
          v158 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v159 = v158;
          v209 = v149;
          if (v158 >> 62)
          {
            v173 = _CocoaArrayWrapper.endIndex.getter();
            v159 = v158;
            v160 = v173;
            if (v173)
            {
LABEL_103:
              if (v160 < 1)
              {
                continue;
              }

              v161 = 0;
              v211 = (v159 & 0xC000000000000001);
              v213 = v159;
              do
              {
                if (v211)
                {
                  v163 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v163 = *(v159 + 8 * v161 + 32);
                }

                v164 = v163;
                v165 = sub_100BD51F4(_swiftEmptyArrayStorage);
                v166 = type metadata accessor for CRLPropertyMap();
                v167 = objc_allocWithZone(v166);
                *&v167[OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data] = v165;
                v216.receiver = v167;
                v216.super_class = v166;
                v168 = objc_msgSendSuper2(&v216, "init");
                v169 = __chkstk_darwin(v168);
                v178[-4] = v220;
                v178[-3] = v212;
                v178[-2] = v169;
                v171 = v170;
                sub_100BE52F4(sub_1008940A0);

                v172 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
                swift_beginAccess();
                if (*(*&v168[v172] + 16))
                {
                  v162 = *&v164[OBJC_IVAR____TtC8Freeform15CRLChangeRecord_kind];
                  swift_unknownObjectRetain();
                  [v210 registerChange:v162 details:v168 forChangeSource:v25];

                  swift_unknownObjectRelease();
                }

                else
                {

                  v164 = v168;
                }

                ++v161;

                v159 = v213;
              }

              while (v160 != v161);
            }
          }

          else
          {
            v160 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v160)
            {
              goto LABEL_103;
            }
          }

          break;
        }

        swift_unknownObjectRelease();
        (*v199)(v212, v204);
        v148 = v206;
        v25 = v207;
        v149 = v209;
        v150 = v205;
        if (v209 == v206)
        {
          goto LABEL_114;
        }

        goto LABEL_94;
      }
    }

LABEL_50:

    (v25)(v196, v204);
    v79 = v193;
  }

  v147 = [v214 changesArray];
  sub_100006370(0, &qword_101A056A8);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
    goto LABEL_124;
  }

  v148 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v148)
  {
    goto LABEL_92;
  }

LABEL_114:

  v174 = *(v188 + OBJC_IVAR____TtC8Freeform20CRLCommandController_changeNotifier);
  v175 = [v174 preprocessChanges:v210];
  if (v179)
  {
    v179(v175);
  }

  v176 = v210;
  [v174 processChanges:v210];
}

uint64_t sub_100892B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v11);
  v15 = v21 - v14 + 16;
  if (a1 == 4)
  {
    v16 = *a4;

    v17 = sub_10079C3B4(a5, v16);

    if (v17)
    {
      return result;
    }

    (*(v10 + 16))(v13, a5, v9);
    sub_100E6AF38(v15, v13);
    (*(v10 + 8))(v15, v9);
    sub_10000BE14(a2, v21, &unk_1019F4D00);
    swift_beginAccess();
    v19 = 4;
  }

  else
  {
    sub_10000BE14(a2, v21, &unk_1019F4D00);
    swift_beginAccess();
    v19 = a1;
  }

  sub_100BC1F00(v21, v19);
  return swift_endAccess();
}

void sub_100892D68(void *a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v4 = a1;
    sub_10113E7B0(v4, a3);
  }

  else
  {
    sub_10113EB48();
  }
}

uint64_t sub_100892DE4(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100893FE8(&qword_101A22920, type metadata accessor for CRLBoard);
  UUID.init()();
  type metadata accessor for CRLTransactionContext(0);
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications) = &_swiftEmptyDictionarySingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications) = &_swiftEmptyDictionarySingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableCreatedObjects) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans) = _swiftEmptyArrayStorage;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) = 0;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 1;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta) = 0;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_affectedItemUUIDSetForUndoableItems) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 0;
  (*(v3 + 32))(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id, v5, v2);
  v8 = (v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  *v8 = a1;
  v8[1] = v6;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) = 1;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) = 1;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_dirtiesOwner) = 1;
  v9 = a1;
  return v7;
}

uint64_t sub_100893060(void *a1, char a2, uint64_t a3, unsigned __int8 a4, unint64_t a5, char *a6)
{
  sub_10098EABC(&_mh_execute_header, "_execute(commandType:shouldSendChangeNotificationsWhenEnqueuedInProgressiveGroup:commandApplier:)", 97, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandController.swift", 92, 2, 910);
  v12 = OBJC_IVAR____TtC8Freeform20CRLCommandController__isExecuting;
  if (*(a3 + OBJC_IVAR____TtC8Freeform20CRLCommandController__isExecuting) == 1)
  {
    v71 = objc_opt_self();
    v72 = [v71 _atomicIncrementAssertCount];
    v122[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v122);
    StaticString.description.getter();
    v73 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v74 = String._bridgeToObjectiveC()();

    v75 = [v74 lastPathComponent];

    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v79 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v72;
    v81 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v81;
    v82 = sub_1005CF04C();
    *(inited + 104) = v82;
    *(inited + 72) = v73;
    *(inited + 136) = &type metadata for String;
    v83 = sub_1000053B0();
    *(inited + 112) = v76;
    *(inited + 120) = v78;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v83;
    *(inited + 152) = 912;
    v84 = v122[0];
    *(inited + 216) = v81;
    *(inited + 224) = v82;
    *(inited + 192) = v84;
    v85 = v73;
    v86 = v84;
    v87 = static os_log_type_t.error.getter();
    sub_100005404(v79, &_mh_execute_header, v87, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v88 = static os_log_type_t.error.getter();
    sub_100005404(v79, &_mh_execute_header, v88, "Should not execute a command while executing another command.", 61, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Should not execute a command while executing another command.");
    type metadata accessor for __VaListBuilder();
    v89 = swift_allocObject();
    v89[2] = 8;
    v89[3] = 0;
    v89[4] = 0;
    v89[5] = 0;
    v90 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v91 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v92 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v93 = String._bridgeToObjectiveC()();

    [v71 handleFailureInFunction:v91 file:v92 lineNumber:912 isFatal:1 format:v93 args:v90];
    goto LABEL_76;
  }

  *(a3 + OBJC_IVAR____TtC8Freeform20CRLCommandController__isExecuting) = 1;
  sub_100891104(a1);
  v13 = *(a3 + OBJC_IVAR____TtC8Freeform20CRLCommandController__currentTransactionContext);
  if (!v13)
  {
    v94 = objc_opt_self();
    v95 = [v94 _atomicIncrementAssertCount];
    v122[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v122);
    StaticString.description.getter();
    v96 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v97 = String._bridgeToObjectiveC()();

    v98 = [v97 lastPathComponent];

    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v102 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v103 = swift_initStackObject();
    *(v103 + 16) = xmmword_10146CA70;
    *(v103 + 56) = &type metadata for Int32;
    *(v103 + 64) = &protocol witness table for Int32;
    *(v103 + 32) = v95;
    v104 = sub_100006370(0, &qword_1019F4D30);
    *(v103 + 96) = v104;
    v105 = sub_1005CF04C();
    *(v103 + 104) = v105;
    *(v103 + 72) = v96;
    *(v103 + 136) = &type metadata for String;
    v106 = sub_1000053B0();
    *(v103 + 112) = v99;
    *(v103 + 120) = v101;
    *(v103 + 176) = &type metadata for UInt;
    *(v103 + 184) = &protocol witness table for UInt;
    *(v103 + 144) = v106;
    *(v103 + 152) = 918;
    v107 = v122[0];
    *(v103 + 216) = v104;
    *(v103 + 224) = v105;
    *(v103 + 192) = v107;
    v108 = v96;
    v109 = v107;
    v110 = static os_log_type_t.error.getter();
    sub_100005404(v102, &_mh_execute_header, v110, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v103);

    v111 = static os_log_type_t.error.getter();
    sub_100005404(v102, &_mh_execute_header, v111, "Tried to call _execute without an open transaction context.", 59, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Tried to call _execute without an open transaction context.");
    type metadata accessor for __VaListBuilder();
    v112 = swift_allocObject();
    v112[2] = 8;
    v112[3] = 0;
    v112[4] = 0;
    v112[5] = 0;
    v113 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v91 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v92 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v93 = String._bridgeToObjectiveC()();

    [v94 handleFailureInFunction:v91 file:v92 lineNumber:918 isFatal:1 format:v93 args:v113];
LABEL_76:

    goto LABEL_77;
  }

  if (a4 == 3)
  {
    sub_1012CEF04();
  }

  (*((swift_isaMask & *a5) + 0x80))(*&a6[OBJC_IVAR____TtC8Freeform20CRLCommandController_board], v13, a4 - 4 < 0xFFFFFFFD);
  *(a5 + OBJC_IVAR____TtC8Freeform10CRLCommand_committed) = 1;
  if (a4 == 3)
  {
    sub_1012CF2EC();
  }

  v14 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  a5 = *(a3 + v14);
  if (a5 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (!v15)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v15 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_26;
    }
  }

  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
  }

  else if ((a5 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(a5 + 8 * v16 + 32);

      goto LABEL_14;
    }

    __break(1u);
LABEL_33:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (!v20)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_14:
  v18 = *(v17 + 16);

  if ((v18 - 1) > 2)
  {
    goto LABEL_26;
  }

  if (a2)
  {
    v19 = sub_1012D11E8(0, 0);
    sub_10089172C(v13, v19, 0, 0);
  }

  a5 = *(a3 + v14);
  if (a5 >> 62)
  {
    goto LABEL_33;
  }

  v20 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_19:
  v21 = v20 - 1;
  if (__OFSUB__(v20, 1))
  {
    __break(1u);
  }

  else if ((a5 & 0xC000000000000001) == 0)
  {
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v22 = *(a5 + 8 * v21 + 32);

      goto LABEL_24;
    }

    __break(1u);
    if (qword_1019F2278 != -1)
    {
      goto LABEL_69;
    }

LABEL_39:
    v25 = static OS_os_log.commandController;
    sub_1005B981C(&qword_1019F54E0);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v27 = Error.publicDescription.getter(v122[59], v122[60]);
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    v30 = sub_1000053B0();
    *(v26 + 64) = v30;
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    swift_getErrorValue();
    v31 = Error.fullDescription.getter(v122[55]);
    *(v26 + 96) = &type metadata for String;
    *(v26 + 104) = v30;
    *(v26 + 72) = v31;
    *(v26 + 80) = v32;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v33, "Command execution failed with error=%{public}@ <%@>", 53, 2, v26);

    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    *(v34 + 32) = Error.publicDescription.getter(v122[37], v122[38]);
    v121 = v34 + 32;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = v30;
    *(v34 + 40) = v35;
    swift_getErrorValue();
    v36 = Error.fullDescription.getter(v122[33]);
    *(v34 + 96) = &type metadata for String;
    *(v34 + 104) = v30;
    *(v34 + 72) = v36;
    *(v34 + 80) = v37;
    v119 = objc_opt_self();
    v120 = [v119 _atomicIncrementAssertCount];
    v122[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v34, v122);
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    v40 = [v39 lastPathComponent];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v44 = static OS_os_log.crlAssert;
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_10146CA70;
    *(v45 + 56) = &type metadata for Int32;
    *(v45 + 64) = &protocol witness table for Int32;
    *(v45 + 32) = v120;
    v46 = sub_100006370(0, &qword_1019F4D30);
    *(v45 + 96) = v46;
    v47 = sub_1005CF04C();
    *(v45 + 72) = v38;
    *(v45 + 136) = &type metadata for String;
    *(v45 + 144) = v30;
    *(v45 + 104) = v47;
    *(v45 + 112) = v41;
    *(v45 + 120) = v43;
    *(v45 + 176) = &type metadata for UInt;
    *(v45 + 184) = &protocol witness table for UInt;
    *(v45 + 152) = 925;
    v48 = v122[0];
    *(v45 + 216) = v46;
    *(v45 + 224) = v47;
    *(v45 + 192) = v48;
    v49 = v38;
    v50 = v48;
    v51 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v45);

    v52 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v52, "Command execution failed with error=%{public}@ <%@>", 53, 2, v34);

    sub_10063DF98(v34, "Command execution failed with error=%{public}@ <%@>");
    type metadata accessor for __VaListBuilder();
    v53 = swift_allocObject();
    v53[2] = 8;
    v53[3] = 0;
    v54 = v53 + 3;
    v53[4] = 0;
    v53[5] = 0;
    v55 = *(v34 + 16);
    if (!v55)
    {
      while (1)
      {
LABEL_79:
        v116 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v117 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v118 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v93 = String._bridgeToObjectiveC()();

        [v119 handleFailureInFunction:v117 file:v118 lineNumber:925 isFatal:1 format:v93 args:v116];

LABEL_77:
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v114, v115);

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_78:
        __break(1u);
      }
    }

    v56 = 0;
    while (1)
    {
      sub_100020E58((v121 + 40 * v56), *(v121 + 40 * v56 + 24));
      v57 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v58 = *v54;
      v59 = *(v57 + 16);
      v60 = __OFADD__(*v54, v59);
      v61 = *v54 + v59;
      if (v60)
      {
        goto LABEL_66;
      }

      v62 = v57;
      v63 = v53[4];
      if (v63 >= v61)
      {
        goto LABEL_58;
      }

      if (v63 + 0x4000000000000000 < 0)
      {
        goto LABEL_67;
      }

      v64 = v53[5];
      if (2 * v63 > v61)
      {
        v61 = 2 * v63;
      }

      v53[4] = v61;
      if ((v61 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_68;
      }

      v65 = swift_slowAlloc();
      v53[5] = v65;
      if (v64)
      {
        break;
      }

LABEL_59:
      if (!v65)
      {
        goto LABEL_78;
      }

      v67 = *(v62 + 16);
      if (v67)
      {
        v68 = (v62 + 32);
        v69 = *v54;
        while (1)
        {
          v70 = *v68++;
          *&v65[8 * v69] = v70;
          v69 = *v54 + 1;
          if (__OFADD__(*v54, 1))
          {
            break;
          }

          *v54 = v69;
          if (!--v67)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        swift_once();
        goto LABEL_39;
      }

LABEL_43:

      if (++v56 == v55)
      {
        goto LABEL_79;
      }
    }

    if (v65 != v64 || v65 >= &v64[8 * v58])
    {
      memmove(v65, v64, 8 * v58);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_58:
    v65 = v53[5];
    goto LABEL_59;
  }

  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_24:
  v23 = *(v22 + 16);

  if ((v23 & 0xFE) == 2)
  {
    sub_10089095C();
  }

LABEL_26:

  *(a3 + v12) = 0;
  return result;
}

uint64_t sub_100893FE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100894030(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A05698);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008940AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100894114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLCommandHistoryItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100894178(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008941D8(void *a1, int a2, int a3)
{
  v7 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v158 - v12;
  v14 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v14 - 8);
  v177 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v178 = *(v16 - 1);
  v179 = v16;
  __chkstk_darwin(v16);
  v176 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v180 = v3;
  v18 = *(v3 + OBJC_IVAR____TtC8Freeform20CRLCommandController__currentTransactionContext);
  if (!v18)
  {
    v128 = objc_opt_self();
    v129 = [v128 _atomicIncrementAssertCount];
    v181 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v181);
    StaticString.description.getter();
    v130 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v131 = String._bridgeToObjectiveC()();

    v132 = [v131 lastPathComponent];

    v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v135 = v134;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v136 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v129;
    v138 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v138;
    v139 = sub_1005CF04C();
    *(inited + 104) = v139;
    *(inited + 72) = v130;
    *(inited + 136) = &type metadata for String;
    v140 = sub_1000053B0();
    *(inited + 112) = v133;
    *(inited + 120) = v135;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v140;
    *(inited + 152) = 1068;
    v141 = v181;
    *(inited + 216) = v138;
    *(inited + 224) = v139;
    *(inited + 192) = v141;
    v142 = v130;
    v143 = v141;
    v144 = static os_log_type_t.error.getter();
    sub_100005404(v136, &_mh_execute_header, v144, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v145 = static os_log_type_t.error.getter();
    sub_100005404(v136, &_mh_execute_header, v145, "Tried to close a transaction without an open transaction context.", 65, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Tried to close a transaction without an open transaction context.");
    type metadata accessor for __VaListBuilder();
    v146 = swift_allocObject();
    v146[2] = 8;
    v146[3] = 0;
    v146[4] = 0;
    v146[5] = 0;
    v147 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v148 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v149 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v150 = String._bridgeToObjectiveC()();

    [v128 handleFailureInFunction:v148 file:v149 lineNumber:1068 isFatal:1 format:v150 args:v147];

    goto LABEL_51;
  }

  v169 = a2;
  v170 = a1;
  v164 = a3;
  v159 = v13;
  v160 = v8;
  v161 = v7;
  v158 = v10;
  v163 = OBJC_IVAR____TtC8Freeform20CRLCommandController__currentTransactionContext;
  v19 = *(*v18 + 720);

  v162 = v19(v20);
  swift_beginAccess();

  v22 = sub_100885B78(v21);

  v168 = sub_100E93A84(v22);

  swift_beginAccess();

  v24 = sub_100885F94(v23);

  v167 = sub_100E93A84(v24);

  swift_beginAccess();

  v26 = sub_100885B78(v25);

  v166 = sub_100E93A84(v26);

  swift_beginAccess();

  v28 = sub_100885B78(v27);

  v165 = sub_100E93A84(v28);

  v30 = sub_1008862B4(v29);

  v181 = v30;
  sub_1005B981C(&unk_1019F4D80);
  sub_100613214();
  v31 = BidirectionalCollection<>.joined(separator:)();
  v174 = v32;
  v175 = v31;

  v34 = sub_100886738(v33);

  v181 = v34;
  v35 = BidirectionalCollection<>.joined(separator:)();
  v172 = v36;
  v173 = v35;

  v38 = sub_1008862B4(v37);

  v181 = v38;
  v39 = BidirectionalCollection<>.joined(separator:)();
  v41 = v40;

  v43 = sub_1008862B4(v42);

  v181 = v43;
  v44 = BidirectionalCollection<>.joined(separator:)();
  v46 = v45;

  if (qword_1019F22B8 != -1)
  {
    swift_once();
  }

  v171 = static OS_os_log.boardItemLifecycle;
  sub_1005B981C(&qword_1019F54E0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_101478A90;
  v48 = *(v18 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges);
  *(v47 + 56) = &type metadata for Bool;
  *(v47 + 64) = &protocol witness table for Bool;
  *(v47 + 32) = v48;
  *(v47 + 96) = &type metadata for String;
  v49 = sub_1000053B0();
  v50 = v174;
  *(v47 + 72) = v175;
  *(v47 + 80) = v50;
  *(v47 + 136) = &type metadata for String;
  *(v47 + 144) = v49;
  v51 = v172;
  v52 = v173;
  *(v47 + 104) = v49;
  *(v47 + 112) = v52;
  *(v47 + 120) = v51;
  *(v47 + 176) = &type metadata for String;
  *(v47 + 184) = v49;
  *(v47 + 152) = v39;
  *(v47 + 160) = v41;
  *(v47 + 216) = &type metadata for String;
  *(v47 + 224) = v49;
  *(v47 + 192) = v44;
  *(v47 + 200) = v46;
  v53 = *(v180 + OBJC_IVAR____TtC8Freeform20CRLCommandController_board);
  v54 = *&v53[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v55 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v56 = v54 + v55;
  v57 = v177;
  sub_1008940AC(v56, v177, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  v58 = v176;
  CRRegister.wrappedValue.getter();
  sub_100894178(v57, type metadata accessor for CRLBoardCRDTData);
  v59 = UUID.uuidString.getter();
  v61 = v60;
  (*(v178 + 8))(v58, v179);
  *(v47 + 256) = &type metadata for String;
  *(v47 + 264) = v49;
  *(v47 + 232) = v59;
  *(v47 + 240) = v61;
  v62 = static os_log_type_t.default.getter();
  sub_100005404(v171, &_mh_execute_header, v62, "📒 Transaction .close() results:\n  trackChanges: %d\n  added: [%{public}@]\n  modified: [%{public}@]\n  removed: [%{public}@]\n  removedNewlyCreated: [%{public}@]\n  Board: %{public}@", 180, 0, v47);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  [v53 fixUp];
  if (*(v18 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v63 = *(v18 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta);
  if (!v63)
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
    goto LABEL_47;
  }

  v64 = swift_allocObject();
  v65 = v170;
  v66 = v180;
  *(v64 + 16) = v170;
  *(v64 + 24) = v66;
  *(v64 + 32) = v169;
  v67 = v65;
  v68 = v66;
  v69 = v63;
  sub_10089172C(v18, v69, sub_100895674, v64);

  [*(*&v68[OBJC_IVAR____TtC8Freeform20CRLCommandController_selectionDispatcher] + OBJC_IVAR____TtC8Freeform22CRLSelectionDispatcher_selectionStateSnapshots) removeAllObjects];
  v181 = v168;
  v182 = v167;
  v183 = v166;
  v184 = v165;
  PassthroughSubject.send(_:)();

  v70 = *&v53[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges];
  v71 = *(v70 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  v72 = swift_allocObject();
  *(v72 + 16) = v18;
  *(v72 + 24) = v70;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_100896980;
  *(v73 + 24) = v72;
  v185 = sub_10002AAE0;
  v186 = v73;
  v181 = _NSConcreteStackBlock;
  v182 = *"";
  v183 = sub_10002AAB8;
  v184 = &unk_10188A820;
  v74 = _Block_copy(&v181);
  swift_retain_n();

  dispatch_sync(v71, v74);
  _Block_release(v74);
  LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

  if (v71)
  {
    goto LABEL_14;
  }

  if ((v164 & 0xFE) != 2)
  {
    v75 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    swift_beginAccess();
    v76 = &v53[v75];
    v77 = v159;
    sub_10000BE14(v76, v159, &qword_101A08DF0);
    if ((*(v160 + 48))(v77, 1, v161))
    {
      sub_10000CAAC(v77, &qword_101A08DF0);
      goto LABEL_12;
    }

    v78 = v158;
    sub_1008940AC(v77, v158, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    sub_10000CAAC(v77, &qword_101A08DF0);
    v79 = *v78;

    sub_100894178(v78, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    v80 = *(v79 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
    v81 = swift_allocObject();
    *(v81 + 16) = v18;
    *(v81 + 24) = v79;
    v82 = swift_allocObject();
    *(v82 + 16) = sub_100896980;
    *(v82 + 24) = v81;
    v185 = sub_10002AAE0;
    v186 = v82;
    v181 = _NSConcreteStackBlock;
    v182 = *"";
    v183 = sub_10002AAB8;
    v184 = &unk_10188A898;
    v83 = _Block_copy(&v181);

    dispatch_sync(v80, v83);
    _Block_release(v83);
    LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

    if ((v80 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    if (qword_1019F2278 == -1)
    {
LABEL_16:
      v85 = static OS_os_log.commandController;
      sub_1005B981C(&qword_1019F54E0);
      v86 = swift_initStackObject();
      v180 = xmmword_10146C6B0;
      *(v86 + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v87 = Error.localizedDescription.getter();
      v89 = v88;
      *(v86 + 56) = &type metadata for String;
      v90 = sub_1000053B0();
      *(v86 + 64) = v90;
      *(v86 + 32) = v87;
      *(v86 + 40) = v89;
      v91 = static os_log_type_t.error.getter();
      sub_100005404(v85, &_mh_execute_header, v91, "Command transaction close failed with error %@", 46, 2, v86);

      v92 = swift_initStackObject();
      *(v92 + 16) = v180;
      swift_getErrorValue();
      *(v92 + 32) = Error.localizedDescription.getter();
      *&v180 = v92 + 32;
      *(v92 + 56) = &type metadata for String;
      *(v92 + 64) = v90;
      *(v92 + 40) = v93;
      v179 = objc_opt_self();
      v94 = [v179 _atomicIncrementAssertCount];
      v181 = [objc_allocWithZone(NSString) init];
      sub_100604538(v92, &v181);
      StaticString.description.getter();
      v95 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v96 = String._bridgeToObjectiveC()();

      v97 = [v96 lastPathComponent];

      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v101 = static OS_os_log.crlAssert;
      v102 = swift_initStackObject();
      *(v102 + 16) = xmmword_10146CA70;
      *(v102 + 56) = &type metadata for Int32;
      *(v102 + 64) = &protocol witness table for Int32;
      *(v102 + 32) = v94;
      v103 = sub_100006370(0, &qword_1019F4D30);
      *(v102 + 96) = v103;
      v104 = sub_1005CF04C();
      *(v102 + 72) = v95;
      *(v102 + 136) = &type metadata for String;
      *(v102 + 144) = v90;
      *(v102 + 104) = v104;
      *(v102 + 112) = v98;
      *(v102 + 120) = v100;
      *(v102 + 176) = &type metadata for UInt;
      *(v102 + 184) = &protocol witness table for UInt;
      *(v102 + 152) = 1115;
      v105 = v181;
      *(v102 + 216) = v103;
      *(v102 + 224) = v104;
      *(v102 + 192) = v105;
      v106 = v95;
      v107 = v105;
      v108 = static os_log_type_t.error.getter();
      sub_100005404(v101, &_mh_execute_header, v108, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v102);

      v109 = static os_log_type_t.error.getter();
      sub_100005404(v101, &_mh_execute_header, v109, "Command transaction close failed with error %@", 46, 2, v92);

      sub_10063DF98(v92, "Command transaction close failed with error %@");
      type metadata accessor for __VaListBuilder();
      v110 = swift_allocObject();
      v110[2] = 8;
      v110[3] = 0;
      v111 = v110 + 3;
      v110[4] = 0;
      v110[5] = 0;
      v112 = *(v92 + 16);
      if (!v112)
      {
        while (1)
        {
LABEL_53:
          v154 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v155 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v156 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v157 = String._bridgeToObjectiveC()();

          [v179 handleFailureInFunction:v155 file:v156 lineNumber:1115 isFatal:1 format:v157 args:v154];

LABEL_51:
          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v151, *&v152);
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_52:
          __break(1u);
        }
      }

      v113 = 0;
      while (1)
      {
        sub_100020E58((v180 + 40 * v113), *(v180 + 40 * v113 + 24));
        v114 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v115 = *v111;
        v116 = *(v114 + 16);
        v117 = __OFADD__(*v111, v116);
        v118 = *v111 + v116;
        if (v117)
        {
          goto LABEL_44;
        }

        v119 = v114;
        v120 = v110[4];
        if (v120 >= v118)
        {
          goto LABEL_35;
        }

        if (v120 + 0x4000000000000000 < 0)
        {
          goto LABEL_45;
        }

        v121 = v110[5];
        if (2 * v120 > v118)
        {
          v118 = 2 * v120;
        }

        v110[4] = v118;
        if ((v118 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_46;
        }

        v122 = swift_slowAlloc();
        v110[5] = v122;
        if (v121)
        {
          break;
        }

LABEL_36:
        if (!v122)
        {
          goto LABEL_52;
        }

        v124 = *(v119 + 16);
        if (v124)
        {
          v125 = (v119 + 32);
          v126 = *v111;
          do
          {
            v127 = *v125++;
            *&v122[8 * v126] = v127;
            v126 = *v111 + 1;
            if (__OFADD__(*v111, 1))
            {
              goto LABEL_43;
            }

            *v111 = v126;
          }

          while (--v124);
        }

        if (++v113 == v112)
        {
          goto LABEL_53;
        }
      }

      if (v122 != v121 || v122 >= &v121[8 * v115])
      {
        memmove(v122, v121, 8 * v115);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_35:
      v122 = v110[5];
      goto LABEL_36;
    }

LABEL_47:
    swift_once();
    goto LABEL_16;
  }

  sub_10089095C();
LABEL_12:
  *(v180 + v163) = 0;

  *&v68[OBJC_IVAR____TtC8Freeform20CRLCommandController__currentWatermarkTransactionContext] = 0;

  sub_100887BD4();

  return v162;
}

uint64_t sub_100895680(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  sub_10098EABC(&_mh_execute_header, "_execute(commandType:shouldSendChangeNotificationsWhenEnqueuedInProgressiveGroup:commandApplier:)", 97, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandController.swift", 92, 2, 910);
  v8 = OBJC_IVAR____TtC8Freeform20CRLCommandController__isExecuting;
  if (*(a3 + OBJC_IVAR____TtC8Freeform20CRLCommandController__isExecuting) == 1)
  {
    v70 = objc_opt_self();
    v71 = [v70 _atomicIncrementAssertCount];
    v122[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v122);
    StaticString.description.getter();
    v72 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v73 = String._bridgeToObjectiveC()();

    v74 = [v73 lastPathComponent];

    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v78 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v71;
    v80 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v80;
    v81 = sub_1005CF04C();
    *(inited + 104) = v81;
    *(inited + 72) = v72;
    *(inited + 136) = &type metadata for String;
    v82 = sub_1000053B0();
    *(inited + 112) = v75;
    *(inited + 120) = v77;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v82;
    *(inited + 152) = 912;
    v83 = v122[0];
    *(inited + 216) = v80;
    *(inited + 224) = v81;
    *(inited + 192) = v83;
    v84 = v72;
    v85 = v83;
    v86 = static os_log_type_t.error.getter();
    sub_100005404(v78, &_mh_execute_header, v86, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v87 = static os_log_type_t.error.getter();
    sub_100005404(v78, &_mh_execute_header, v87, "Should not execute a command while executing another command.", 61, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Should not execute a command while executing another command.");
    type metadata accessor for __VaListBuilder();
    v88 = swift_allocObject();
    v88[2] = 8;
    v88[3] = 0;
    v88[4] = 0;
    v88[5] = 0;
    v89 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v90 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v91 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v92 = String._bridgeToObjectiveC()();

    [v70 handleFailureInFunction:v90 file:v91 lineNumber:912 isFatal:1 format:v92 args:v89];
    goto LABEL_72;
  }

  *(a3 + OBJC_IVAR____TtC8Freeform20CRLCommandController__isExecuting) = 1;
  sub_100891104(a1);
  v9 = *(a3 + OBJC_IVAR____TtC8Freeform20CRLCommandController__currentTransactionContext);
  if (!v9)
  {
    v93 = objc_opt_self();
    v94 = [v93 _atomicIncrementAssertCount];
    v122[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v122);
    StaticString.description.getter();
    v95 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v96 = String._bridgeToObjectiveC()();

    v97 = [v96 lastPathComponent];

    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v101 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v102 = swift_initStackObject();
    *(v102 + 16) = xmmword_10146CA70;
    *(v102 + 56) = &type metadata for Int32;
    *(v102 + 64) = &protocol witness table for Int32;
    *(v102 + 32) = v94;
    v103 = sub_100006370(0, &qword_1019F4D30);
    *(v102 + 96) = v103;
    v104 = sub_1005CF04C();
    *(v102 + 104) = v104;
    *(v102 + 72) = v95;
    *(v102 + 136) = &type metadata for String;
    v105 = sub_1000053B0();
    *(v102 + 112) = v98;
    *(v102 + 120) = v100;
    *(v102 + 176) = &type metadata for UInt;
    *(v102 + 184) = &protocol witness table for UInt;
    *(v102 + 144) = v105;
    *(v102 + 152) = 918;
    v106 = v122[0];
    *(v102 + 216) = v103;
    *(v102 + 224) = v104;
    *(v102 + 192) = v106;
    v107 = v95;
    v108 = v106;
    v109 = static os_log_type_t.error.getter();
    sub_100005404(v101, &_mh_execute_header, v109, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v102);

    v110 = static os_log_type_t.error.getter();
    sub_100005404(v101, &_mh_execute_header, v110, "Tried to call _execute without an open transaction context.", 59, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Tried to call _execute without an open transaction context.");
    type metadata accessor for __VaListBuilder();
    v111 = swift_allocObject();
    v111[2] = 8;
    v111[3] = 0;
    v111[4] = 0;
    v111[5] = 0;
    v112 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v90 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v91 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v92 = String._bridgeToObjectiveC()();

    [v93 handleFailureInFunction:v90 file:v91 lineNumber:918 isFatal:1 format:v92 args:v112];
LABEL_72:

    goto LABEL_73;
  }

  sub_100891014(v10, a4);
  v11 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v12 = *(a3 + v11);
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_22;
    }
  }

  v14 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
  }

  else if ((v12 & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v12 + 8 * v14 + 32);

      goto LABEL_10;
    }

    __break(1u);
LABEL_29:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_10:
  v16 = *(v15 + 16);

  if ((v16 - 1) > 2)
  {
    goto LABEL_22;
  }

  if (a2)
  {
    v17 = sub_1012D11E8(0, 0);
    sub_10089172C(v9, v17, 0, 0);
  }

  v12 = *(a3 + v11);
  if (v12 >> 62)
  {
    goto LABEL_29;
  }

  v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_22;
  }

LABEL_15:
  v19 = v18 - 1;
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  else if ((v12 & 0xC000000000000001) == 0)
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v12 + 8 * v19 + 32);

      goto LABEL_20;
    }

    __break(1u);
    if (qword_1019F2278 != -1)
    {
      goto LABEL_65;
    }

LABEL_35:
    v23 = static OS_os_log.commandController;
    sub_1005B981C(&qword_1019F54E0);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v25 = Error.publicDescription.getter(v122[59], v122[60]);
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    v28 = sub_1000053B0();
    *(v24 + 64) = v28;
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    swift_getErrorValue();
    v29 = Error.fullDescription.getter(v122[55]);
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v28;
    *(v24 + 72) = v29;
    *(v24 + 80) = v30;
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v31, "Command execution failed with error=%{public}@ <%@>", 53, 2, v24);

    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    *(v32 + 32) = Error.publicDescription.getter(v122[37], v122[38]);
    v121 = v32 + 32;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = v28;
    *(v32 + 40) = v33;
    swift_getErrorValue();
    v34 = Error.fullDescription.getter(v122[33]);
    *(v32 + 96) = &type metadata for String;
    *(v32 + 104) = v28;
    *(v32 + 72) = v34;
    *(v32 + 80) = v35;
    v120 = objc_opt_self();
    v36 = [v120 _atomicIncrementAssertCount];
    v122[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v32, v122);
    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    v39 = [v38 lastPathComponent];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v43 = static OS_os_log.crlAssert;
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_10146CA70;
    *(v44 + 56) = &type metadata for Int32;
    *(v44 + 64) = &protocol witness table for Int32;
    *(v44 + 32) = v36;
    v45 = sub_100006370(0, &qword_1019F4D30);
    *(v44 + 96) = v45;
    v46 = sub_1005CF04C();
    *(v44 + 72) = v37;
    *(v44 + 136) = &type metadata for String;
    *(v44 + 144) = v28;
    *(v44 + 104) = v46;
    *(v44 + 112) = v40;
    *(v44 + 120) = v42;
    *(v44 + 176) = &type metadata for UInt;
    *(v44 + 184) = &protocol witness table for UInt;
    *(v44 + 152) = 925;
    v47 = v122[0];
    *(v44 + 216) = v45;
    *(v44 + 224) = v46;
    *(v44 + 192) = v47;
    v48 = v37;
    v49 = v47;
    v50 = static os_log_type_t.error.getter();
    sub_100005404(v43, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v44);

    v51 = static os_log_type_t.error.getter();
    sub_100005404(v43, &_mh_execute_header, v51, "Command execution failed with error=%{public}@ <%@>", 53, 2, v32);

    sub_10063DF98(v32, "Command execution failed with error=%{public}@ <%@>");
    type metadata accessor for __VaListBuilder();
    v52 = swift_allocObject();
    v52[2] = 8;
    v52[3] = 0;
    v53 = v52 + 3;
    v52[4] = 0;
    v52[5] = 0;
    v54 = *(v32 + 16);
    if (!v54)
    {
      while (1)
      {
LABEL_75:
        v116 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v117 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v118 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v119 = String._bridgeToObjectiveC()();

        [v120 handleFailureInFunction:v117 file:v118 lineNumber:925 isFatal:1 format:v119 args:v116];

LABEL_73:
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v113, *&v114);

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_74:
        __break(1u);
      }
    }

    v55 = 0;
    while (1)
    {
      sub_100020E58((v121 + 40 * v55), *(v121 + 40 * v55 + 24));
      v56 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v57 = *v53;
      v58 = *(v56 + 16);
      v59 = __OFADD__(*v53, v58);
      v60 = *v53 + v58;
      if (v59)
      {
        goto LABEL_62;
      }

      v61 = v56;
      v62 = v52[4];
      if (v62 >= v60)
      {
        goto LABEL_54;
      }

      if (v62 + 0x4000000000000000 < 0)
      {
        goto LABEL_63;
      }

      v63 = v52[5];
      if (2 * v62 > v60)
      {
        v60 = 2 * v62;
      }

      v52[4] = v60;
      if ((v60 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_64;
      }

      v64 = swift_slowAlloc();
      v52[5] = v64;
      if (v63)
      {
        break;
      }

LABEL_55:
      if (!v64)
      {
        goto LABEL_74;
      }

      v66 = *(v61 + 16);
      if (v66)
      {
        v67 = (v61 + 32);
        v68 = *v53;
        while (1)
        {
          v69 = *v67++;
          *&v64[8 * v68] = v69;
          v68 = *v53 + 1;
          if (__OFADD__(*v53, 1))
          {
            break;
          }

          *v53 = v68;
          if (!--v66)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        swift_once();
        goto LABEL_35;
      }

LABEL_39:

      if (++v55 == v54)
      {
        goto LABEL_75;
      }
    }

    if (v64 != v63 || v64 >= &v63[8 * v57])
    {
      memmove(v64, v63, 8 * v57);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_54:
    v64 = v52[5];
    goto LABEL_55;
  }

  v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_20:
  v21 = *(v20 + 16);

  if ((v21 & 0xFE) == 2)
  {
    sub_10089095C();
  }

LABEL_22:

  *(a3 + v8) = 0;
  return result;
}

void sub_100896574(uint64_t a1, void (**a2)(void))
{
  if (*(a1 + OBJC_IVAR____TtC8Freeform20CRLCommandController_asyncCommandHelper))
  {

    sub_100685A70(v3, a2);
  }

  else
  {
    v4 = objc_opt_self();
    _Block_copy(a2);
    v5 = [v4 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 372;
    v17 = v27;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:372 isFatal:0 format:v26 args:v23];

    _Block_release(a2);
  }
}

uint64_t sub_1008969C4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC8Freeform17CRLMathResultView_delegate] = a1;
  v21.receiver = v5;
  v21.super_class = type metadata accessor for CRLMathResultView();
  swift_unknownObjectRetain();
  v10 = objc_msgSendSuper2(&v21, "initWithFrame:", a2, a3, a4, a5);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 traitCollectionWithUserInterfaceStyle:1];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100896EA0;
  *(v15 + 24) = v14;
  v20[4] = sub_10002AAE4;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = *"";
  v20[2] = sub_10002AAB8;
  v20[3] = &unk_10188A910;
  v16 = _Block_copy(v20);
  v17 = v13;

  [v11 crl_withTraitCollectionAsCurrent:v17 performBlock:v16];
  swift_unknownObjectRelease();

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

void sub_100896BE0(void *a1)
{
  v2 = [objc_opt_self() accentColor];
  v3 = [v2 CGColor];

  v4 = [objc_allocWithZone(UIColor) initWithCGColor:v3];
  [a1 setTintColor:v4];
}

void sub_100896D80(void *a1, uint64_t a2, void *a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for CRLMathResultView();
  v8 = *a4;
  v9 = a3;
  v10 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, v9);
  [*&v10[OBJC_IVAR____TtC8Freeform17CRLMathResultView_delegate] *a5];
}

id sub_100896E38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMathResultView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100896EA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100896FB4()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v38 = &v37 - v3;
  v4 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifier;
  swift_beginAccess();
  sub_10000BE14(v1 + v14, v6, &unk_1019F52D0);
  v39 = v8;
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CAAC(v6, &unk_1019F52D0);
    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlSendACopy;
    v16 = static os_log_type_t.error.getter();
    return sub_100005404(v15, &_mh_execute_header, v16, "Could not extract board identifier.", 35, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    sub_1005EB270(v6, v13);
    v18 = [objc_opt_self() defaultCenter];
    if (qword_1019F2748 != -1)
    {
      swift_once();
    }

    v19 = qword_101AD8948;
    v20 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardLibrary);
    v21 = swift_allocObject();
    swift_weakInit();
    v42 = sub_10089A8BC;
    v43 = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100059694;
    ObjectType = &unk_10188A960;
    v22 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v23 = [v18 addObserverForName:v19 object:v20 queue:0 usingBlock:v22];
    _Block_release(v22);

    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    aBlock[0] = v23;
    sub_100899890(aBlock);
    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlSendACopy;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v26 = sub_10084B8C8();
    v28 = v27;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v26;
    *(inited + 40) = v28;
    v29 = static os_log_type_t.default.getter();
    sub_100005404(v24, &_mh_execute_header, v29, "Started listening for a CRLBoardLibraryProvidingDidUpdateSnapshot notification that contains the identifier for the downloaded copy of the board we are trying to open: %@.", 171, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v30 = type metadata accessor for TaskPriority();
    v31 = v38;
    (*(*(v30 - 8) + 56))(v38, 1, 1, v30);
    v32 = swift_allocObject();
    swift_weakInit();
    sub_1005F1308(v13, v10);
    type metadata accessor for MainActor();

    v33 = static MainActor.shared.getter();
    v34 = (*(v39 + 80) + 40) & ~*(v39 + 80);
    v35 = swift_allocObject();
    v35[2] = v33;
    v35[3] = &protocol witness table for MainActor;
    v35[4] = v32;
    sub_1005EB270(v10, v35 + v34);

    v36 = sub_10064191C(0, 0, v31, &unk_1014832D8, v35);
    sub_100025D28(v13, type metadata accessor for CRLBoardIdentifier);
    *(v1 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_downloadTask) = v36;
  }
}

uint64_t sub_100897590(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifierToOpen;
    swift_beginAccess();
    sub_10000BE14(v14 + v15, v8, &unk_1019F52D0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      return sub_10000CAAC(v8, &unk_1019F52D0);
    }

    else
    {
      v30 = a1;
      sub_1005EB270(v8, v12);
      if (qword_1019F2168 != -1)
      {
        swift_once();
      }

      v16 = static OS_os_log.crlSendACopy;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v18 = UUID.uuidString.getter();
      v20 = v19;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v18;
      *(inited + 40) = v20;
      v21 = static os_log_type_t.default.getter();
      v29 = v16;
      sub_100005404(v16, &_mh_execute_header, v21, "Snapshot updated after public board copy was downloaded. Attempting to open board with UUID: %@.", 96, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      (*(v3 + 16))(v5, v30, v2);
      sub_100F7CC80(v5, v31);
      v22 = v31[0];
      if (v31[0] && (v24 = v31[3], v23 = v31[4], v25 = v31[2], v26 = sub_10079DDA0(v12, v31[1]), v32 = v22, sub_10000CAAC(&v32, &unk_1019FB880), , v33 = v25, sub_10000CAAC(&v33, &unk_101A22E80), v34 = v24, sub_10000CAAC(&v34, &qword_1019FB890), v35 = v23, sub_10000CAAC(&v35, &qword_1019FB890), (v26 & 1) != 0))
      {
        sub_100899A14();
        sub_100899B54(1);
      }

      else
      {
        v27 = static os_log_type_t.default.getter();
        sub_100005404(v29, &_mh_execute_header, v27, "Snapshot update didn't contain shared board identifier. Skipping.", 65, 2, _swiftEmptyArrayStorage);
      }

      return sub_100025D28(v12, type metadata accessor for CRLBoardIdentifier);
    }
  }

  return result;
}

uint64_t sub_1008979E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[125] = a5;
  v5[124] = a4;
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v5[126] = swift_task_alloc();
  v5[127] = sub_1005B981C(&unk_1019F52D0);
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();
  v5[130] = type metadata accessor for MainActor();
  v5[131] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[132] = v7;
  v5[133] = v6;

  return _swift_task_switch(sub_100897AF8, v7, v6);
}

uint64_t sub_100897AF8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 1072) = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.crlSendACopy;
    *(v0 + 1080) = static OS_os_log.crlSendACopy;
    *(v0 + 1088) = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v5 = sub_10084B8C8();
    v7 = v6;
    *(inited + 56) = &type metadata for String;
    v8 = sub_1000053B0();
    *(v0 + 1096) = v8;
    *(inited + 64) = v8;
    *(inited + 32) = v5;
    *(inited + 40) = v7;
    v9 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v9, "Downloading shared copy of board: %@ ", 37, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v10 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_delegate;
    *(v0 + 1104) = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_delegate;
    v11 = v2 + v10;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 8);

      v14(v15, ObjectType, v12);
      swift_unknownObjectRelease();
    }

    v16 = sub_100020E58((v2 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_dataHandler), *(v2 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_dataHandler + 24));
    v18 = v16[1];
    v17 = v16[2];
    *(v0 + 656) = *v16;
    *(v0 + 672) = v18;
    *(v0 + 688) = v17;
    v19 = swift_task_alloc();
    *(v0 + 1112) = v19;
    *v19 = v0;
    v19[1] = sub_100897D90;
    v20 = *(v0 + 1000);

    return sub_100F1A084(v20);
  }

  else
  {

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_100897D90(uint64_t a1, char a2)
{
  v5 = *v3;
  *(v5 + 1120) = a1;
  *(v5 + 1128) = v2;

  if (v2)
  {
    v6 = *(v5 + 1064);
    v7 = *(v5 + 1056);
    v8 = sub_100898E44;
  }

  else
  {
    *(v5 + 1234) = a2 & 1;
    v6 = *(v5 + 1064);
    v7 = *(v5 + 1056);
    v8 = sub_100897EC8;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100897EC8()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1008);
  *(v1 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_didEncounterUnsupportedContent) = *(v0 + 1234);
  *(v0 + 1136) = *(v1 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardLibrary);
  v3 = sub_1005B981C(&qword_1019F3480);
  (*(*(v3 - 8) + 56))(v2, 1, 5, v3);
  *(v0 + 1144) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1152) = v5;
  *(v0 + 1160) = v4;

  return _swift_task_switch(sub_100897FCC, v5, v4);
}

uint64_t sub_100897FCC()
{
  v1 = *(v0 + 1128);
  v2 = sub_100EDD510(*(v0 + 1120));
  *(v0 + 1168) = v2;
  if (v1)
  {

    *(v0 + 1224) = v1;
    sub_100025D28(*(v0 + 1008), type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v3 = *(v0 + 1064);
    v4 = *(v0 + 1056);

    return _swift_task_switch(sub_1008986BC, v4, v3);
  }

  else
  {
    v5 = v2;
    sub_1005B981C(&unk_1019F4D60);
    inited = swift_initStackObject();
    *(v0 + 1176) = inited;
    *(inited + 16) = xmmword_101465920;
    *(inited + 32) = v5;
    v7 = v5;
    v8 = swift_task_alloc();
    *(v0 + 1184) = v8;
    *v8 = v0;
    v8[1] = sub_10089812C;
    v9 = *(v0 + 1008);

    return sub_1010CA9B8(inited, v9, 0, 1);
  }
}

uint64_t sub_10089812C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1192) = a1;
  *(v4 + 1200) = v1;

  swift_setDeallocating();
  swift_arrayDestroy();
  v5 = *(v3 + 1160);
  v6 = *(v3 + 1152);
  if (v1)
  {
    v7 = sub_100898420;
  }

  else
  {
    v7 = sub_1008982A8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1008982A8()
{
  v1 = v0[149];

  v2 = *(v1 + 16);
  v3 = v0[149];
  v4 = v0[146];
  if (v2)
  {
    v5 = v0[129];
    v6 = v0[126];
    v7 = type metadata accessor for CRLBoardIdentifier(0);
    v0[151] = v7;
    v8 = *(v7 - 8);
    v0[152] = v8;
    sub_1005F1308(v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5);

    sub_100025D28(v6, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v9 = v0[133];
    v10 = v0[132];
    v11 = sub_1008984B4;
  }

  else
  {

    sub_1006A3EB0();
    v12 = swift_allocError();
    *v13 = 0;
    swift_willThrow();

    v0[153] = v12;
    sub_100025D28(v0[126], type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v9 = v0[133];
    v10 = v0[132];
    v11 = sub_1008986BC;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100898420()
{
  v1 = v0[146];

  v0[153] = v0[150];
  sub_100025D28(v0[126], type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v2 = v0[133];
  v3 = v0[132];

  return _swift_task_switch(sub_1008986BC, v3, v2);
}

uint64_t sub_1008984B4()
{
  v1 = v0[152];
  v2 = v0[151];
  v3 = v0[137];
  v16 = v0[135];
  v17 = v0[140];
  v4 = v0[134];
  v5 = v0[129];
  v6 = v0[128];

  (*(v1 + 56))(v5, 0, 1, v2);
  v7 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifierToOpen;
  swift_beginAccess();
  sub_10002C638(v5, v4 + v7, &unk_1019F52D0);
  swift_endAccess();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  sub_10000BE14(v4 + v7, v6, &unk_1019F52D0);
  v9 = String.init<A>(describing:)();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v3;
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  v11 = sub_10084B8C8();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v3;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v16, &_mh_execute_header, v13, "Created board with identifier %@ which is a downloaded copy of %@", 65, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1008986BC()
{

  v1 = *(v0 + 1224);
  *(v0 + 928) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 912);
    *(v0 + 952) = v2;
    sub_100877178();
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 960) == 4 || (*(v0 + 968) = v2, _BridgedStoredNSError.code.getter(), *(v0 + 976) == 3))
    {
      v3 = *(v0 + 1096);
      v4 = *(v0 + 1080);
      v5 = *(v0 + 1072);
      v56 = *(v0 + 1024);

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      v7 = UUID.uuidString.getter();
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = v3;
      *(inited + 32) = v7;
      *(inited + 40) = v8;
      v9 = sub_100B6FCD4(v2);
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v3;
      *(inited + 72) = v9;
      *(inited + 80) = v10;
      *(v0 + 984) = v2;
      v11 = v2;
      v12 = String.init<A>(reflecting:)();
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v3;
      *(inited + 112) = v12;
      *(inited + 120) = v13;
      v14 = static os_log_type_t.error.getter();
      sub_100005404(v4, &_mh_execute_header, v14, "Failed to download Send A Copy board (UUID: %{public}@) due to network error %{public}@ <%@>", 92, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v15 = type metadata accessor for CRLBoardIdentifier(0);
      (*(*(v15 - 8) + 56))(v56, 1, 1, v15);
      v16 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifierToOpen;
      swift_beginAccess();
      sub_10002C638(v56, v5 + v16, &unk_1019F52D0);
      swift_endAccess();
      sub_100899A14();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(*(v0 + 1072) + *(v0 + 1104) + 8);
        ObjectType = swift_getObjectType();
        v19 = *(v17 + 16);

        v19(v20, 0, ObjectType, v17);
        swift_unknownObjectRelease();
      }

LABEL_16:

      goto LABEL_17;
    }
  }

  *(v0 + 920) = v1;
  swift_errorRetain();
  v21 = swift_dynamicCast();
  v22 = *(v0 + 1096);
  v23 = *(v0 + 1080);
  v24 = *(v0 + 1072);
  v25 = *(v0 + 1024);
  if (v21 && *(v0 + 1232) == 13)
  {

    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_10146C4D0;
    v27 = UUID.uuidString.getter();
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = v22;
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    v29 = sub_100B7034C(13);
    *(v26 + 96) = &type metadata for String;
    *(v26 + 104) = v22;
    *(v26 + 72) = v29;
    *(v26 + 80) = v30;
    *(v0 + 1233) = 13;
    v31 = String.init<A>(reflecting:)();
    *(v26 + 136) = &type metadata for String;
    *(v26 + 144) = v22;
    *(v26 + 112) = v31;
    *(v26 + 120) = v32;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v33, "Failed to download Send A Copy board (UUID: %{public}@) due to board being unsupported %{public}@ <%@>", 102, 2, v26);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v34 = type metadata accessor for CRLBoardIdentifier(0);
    (*(*(v34 - 8) + 56))(v25, 1, 1, v34);
    v35 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifierToOpen;
    swift_beginAccess();
    sub_10002C638(v25, v24 + v35, &unk_1019F52D0);
    swift_endAccess();
    sub_100899A14();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v36 = *(*(v0 + 1072) + *(v0 + 1104) + 8);
      v37 = swift_getObjectType();
      v38 = *(v36 + 16);

      v38(v39, 2, v37, v36);
      swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_10146C4D0;
  v41 = UUID.uuidString.getter();
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = v22;
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  swift_getErrorValue();
  v43 = Error.publicDescription.getter(*(v0 + 752), *(v0 + 760));
  *(v40 + 96) = &type metadata for String;
  *(v40 + 104) = v22;
  *(v40 + 72) = v43;
  *(v40 + 80) = v44;
  swift_getErrorValue();
  v45 = Error.fullDescription.getter(*(v0 + 776));
  *(v40 + 136) = &type metadata for String;
  *(v40 + 144) = v22;
  *(v40 + 112) = v45;
  *(v40 + 120) = v46;
  v47 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v47, "Failed to download Send A Copy board (UUID: %{public}@) with error %{public}@ <%@>", 82, 2, v40);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v48 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v48 - 8) + 56))(v25, 1, 1, v48);
  v49 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifierToOpen;
  swift_beginAccess();
  sub_10002C638(v25, v24 + v49, &unk_1019F52D0);
  swift_endAccess();
  sub_100899A14();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v50 = *(*(v0 + 1072) + *(v0 + 1104) + 8);
    v51 = swift_getObjectType();
    v52 = *(v50 + 16);

    v52(v53, 1, v51, v50);
    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_17:

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_100898E44()
{

  v1 = *(v0 + 1128);
  *(v0 + 928) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 912);
    *(v0 + 952) = v2;
    sub_100877178();
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 960) == 4 || (*(v0 + 968) = v2, _BridgedStoredNSError.code.getter(), *(v0 + 976) == 3))
    {
      v3 = *(v0 + 1096);
      v4 = *(v0 + 1080);
      v5 = *(v0 + 1072);
      v56 = *(v0 + 1024);

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      v7 = UUID.uuidString.getter();
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = v3;
      *(inited + 32) = v7;
      *(inited + 40) = v8;
      v9 = sub_100B6FCD4(v2);
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v3;
      *(inited + 72) = v9;
      *(inited + 80) = v10;
      *(v0 + 984) = v2;
      v11 = v2;
      v12 = String.init<A>(reflecting:)();
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v3;
      *(inited + 112) = v12;
      *(inited + 120) = v13;
      v14 = static os_log_type_t.error.getter();
      sub_100005404(v4, &_mh_execute_header, v14, "Failed to download Send A Copy board (UUID: %{public}@) due to network error %{public}@ <%@>", 92, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v15 = type metadata accessor for CRLBoardIdentifier(0);
      (*(*(v15 - 8) + 56))(v56, 1, 1, v15);
      v16 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifierToOpen;
      swift_beginAccess();
      sub_10002C638(v56, v5 + v16, &unk_1019F52D0);
      swift_endAccess();
      sub_100899A14();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(*(v0 + 1072) + *(v0 + 1104) + 8);
        ObjectType = swift_getObjectType();
        v19 = *(v17 + 16);

        v19(v20, 0, ObjectType, v17);
        swift_unknownObjectRelease();
      }

LABEL_16:

      goto LABEL_17;
    }
  }

  *(v0 + 920) = v1;
  swift_errorRetain();
  v21 = swift_dynamicCast();
  v22 = *(v0 + 1096);
  v23 = *(v0 + 1080);
  v24 = *(v0 + 1072);
  v25 = *(v0 + 1024);
  if (v21 && *(v0 + 1232) == 13)
  {

    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_10146C4D0;
    v27 = UUID.uuidString.getter();
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = v22;
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    v29 = sub_100B7034C(13);
    *(v26 + 96) = &type metadata for String;
    *(v26 + 104) = v22;
    *(v26 + 72) = v29;
    *(v26 + 80) = v30;
    *(v0 + 1233) = 13;
    v31 = String.init<A>(reflecting:)();
    *(v26 + 136) = &type metadata for String;
    *(v26 + 144) = v22;
    *(v26 + 112) = v31;
    *(v26 + 120) = v32;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v33, "Failed to download Send A Copy board (UUID: %{public}@) due to board being unsupported %{public}@ <%@>", 102, 2, v26);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v34 = type metadata accessor for CRLBoardIdentifier(0);
    (*(*(v34 - 8) + 56))(v25, 1, 1, v34);
    v35 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifierToOpen;
    swift_beginAccess();
    sub_10002C638(v25, v24 + v35, &unk_1019F52D0);
    swift_endAccess();
    sub_100899A14();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v36 = *(*(v0 + 1072) + *(v0 + 1104) + 8);
      v37 = swift_getObjectType();
      v38 = *(v36 + 16);

      v38(v39, 2, v37, v36);
      swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_10146C4D0;
  v41 = UUID.uuidString.getter();
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = v22;
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  swift_getErrorValue();
  v43 = Error.publicDescription.getter(*(v0 + 752), *(v0 + 760));
  *(v40 + 96) = &type metadata for String;
  *(v40 + 104) = v22;
  *(v40 + 72) = v43;
  *(v40 + 80) = v44;
  swift_getErrorValue();
  v45 = Error.fullDescription.getter(*(v0 + 776));
  *(v40 + 136) = &type metadata for String;
  *(v40 + 144) = v22;
  *(v40 + 112) = v45;
  *(v40 + 120) = v46;
  v47 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v47, "Failed to download Send A Copy board (UUID: %{public}@) with error %{public}@ <%@>", 82, 2, v40);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v48 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v48 - 8) + 56))(v25, 1, 1, v48);
  v49 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifierToOpen;
  swift_beginAccess();
  sub_10002C638(v25, v24 + v49, &unk_1019F52D0);
  swift_endAccess();
  sub_100899A14();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v50 = *(*(v0 + 1072) + *(v0 + 1104) + 8);
    v51 = swift_getObjectType();
    v52 = *(v50 + 16);

    v52(v53, 1, v51, v50);
    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_17:

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1008995C0()
{
  v1 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v1);
  v3 = &v18 - v2;
  if (qword_1019F2168 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlSendACopy;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v6 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifier;
  swift_beginAccess();
  sub_10000BE14(v0 + v6, v3, &unk_1019F52D0);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v10, "Received a user-initiated request to cancel shared copy of board with identifier: %@.", 85, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_100899A14();
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifierToOpen;
  swift_beginAccess();
  sub_10002C638(v3, v0 + v12, &unk_1019F52D0);
  swift_endAccess();
  v13 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_downloadTask;
  if (*(v0 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_downloadTask))
  {

    Task.cancel()();
  }

  *(v0 + v13) = 0;

  v14 = v0 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 24))(v0, ObjectType, v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100899890(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_snapshotUpdateObservationToken;
  swift_beginAccess();
  sub_10000BE14(v1 + v3, &v7, &unk_1019F4D00);
  if (v8)
  {
    sub_10000BF3C(&v7, &v9);
    v4 = [objc_opt_self() defaultCenter];
    sub_100020E58(&v9, v10);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    if (qword_1019F2748 != -1)
    {
      swift_once();
    }

    [v4 removeObserver:v5 name:qword_101AD8948 object:*(v1 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardLibrary)];

    swift_unknownObjectRelease();
    sub_100005070(&v9);
  }

  else
  {
    sub_10000CAAC(&v7, &unk_1019F4D00);
  }

  swift_beginAccess();
  sub_10002C638(a1, v1 + v3, &unk_1019F4D00);
  return swift_endAccess();
}

uint64_t sub_100899A14()
{
  v1 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_snapshotUpdateObservationToken;
  swift_beginAccess();
  sub_10000BE14(v0 + v1, &v5, &unk_1019F4D00);
  if (!v6)
  {
    return sub_10000CAAC(&v5, &unk_1019F4D00);
  }

  sub_10000BF3C(&v5, &v7);
  v2 = [objc_opt_self() defaultCenter];
  sub_100020E58(&v7, v8);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  if (qword_1019F2748 != -1)
  {
    swift_once();
  }

  [v2 removeObserver:v3 name:qword_101AD8948 object:*(v0 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardLibrary)];

  swift_unknownObjectRelease();
  return sub_100005070(&v7);
}

void sub_100899B54(char a1)
{
  v3 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_didConfirmBoardIsReadyToOpen);
  *(v1 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_didConfirmBoardIsReadyToOpen) = a1;
  if (v10 & 1) == 0 && (a1)
  {
    v11 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifierToOpen;
    swift_beginAccess();
    sub_10000BE14(v1 + v11, v5, &unk_1019F52D0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_10000CAAC(v5, &unk_1019F52D0);
    }

    else
    {
      sub_1005EB270(v5, v9);
      v12 = v1 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 8);
        ObjectType = swift_getObjectType();
        (*(v13 + 32))(v1, v9, ObjectType, v13);
        swift_unknownObjectRelease();
      }

      sub_100025D28(v9, type metadata accessor for CRLBoardIdentifier);
    }
  }
}

uint64_t sub_100899D5C()
{
  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifier, &unk_1019F52D0);
  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifierToOpen, &unk_1019F52D0);

  swift_unknownObjectRelease();
  sub_100005070(v0 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_dataHandler);
  sub_1000C1024(v0 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_delegate);
  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_snapshotUpdateObservationToken, &unk_1019F4D00);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLDownloadSharedCopyAttempt()
{
  result = qword_101A05760;
  if (!qword_101A05760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100899EB4()
{
  sub_100028BF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100899FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = [objc_opt_self() mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *a4 = v11;
  *a5 = v13;
}

void sub_10089A09C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD6908 = v4;
  unk_101AD6910 = v6;
}

void sub_10089A16C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD6918 = v4;
  unk_101AD6920 = v6;
}

void sub_10089A23C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD6928 = v4;
  unk_101AD6930 = v6;
}

void sub_10089A30C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD6938 = v4;
  unk_101AD6940 = v6;
}

void sub_10089A3DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD6948 = v4;
  unk_101AD6950 = v6;
}

void sub_10089A4AC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD6958 = v4;
  unk_101AD6960 = v6;
}

void sub_10089A57C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD6968 = v4;
  unk_101AD6970 = v6;
}

void sub_10089A64C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD6978 = v4;
  unk_101AD6980 = v6;
}

void sub_10089A71C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD6988 = v4;
  unk_101AD6990 = v6;
}

void sub_10089A7EC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD6998 = v4;
  unk_101AD69A0 = v6;
}

uint64_t sub_10089A8C4(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_1008979E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10089A9BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 2112062;
    v6._object = 0xE300000000000000;
    String.append(_:)(v6);
    v7 = a2;
    v8 = a3;
  }

  else
  {
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v7 = 62;
    v8 = 0xE100000000000000;
  }

  String.append(_:)(*&v7);
  return 60;
}

uint64_t sub_10089AAA4()
{
  v0 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_10061655C(v3, qword_101AD69B8);
  v4 = sub_1005EB3DC(v3, qword_101AD69B8);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}