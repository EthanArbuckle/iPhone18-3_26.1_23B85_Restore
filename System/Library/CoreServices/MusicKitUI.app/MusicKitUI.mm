void sub_100001A60()
{
  v1 = v0;
  v35 = type metadata accessor for ClientInfo.API();
  v2 = sub_1000056AC(v35);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100005710();
  v9 = v8 - v7;
  v34 = type metadata accessor for ClientInfo();
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v34);
  sub_100005710();
  v14 = v13 - v12;
  v15 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_options;
  v16 = type metadata accessor for MusicSubscriptionOffer.Options();
  sub_10000400C(v1 + v15, 1, 1, v16);
  *(v1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_loadedMarketingItem) = 0;
  *(v1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_marketingItemContinuations) = &_swiftEmptyArrayStorage;
  v17 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_lock;
  v18 = type metadata accessor for UnfairLock();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v1 + v17) = UnfairLock.init()();
  v21 = (v1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_clientIdentifier);
  static ClientInfo.default.getter();
  ClientInfo.api.getter();
  v22 = *(v10 + 8);
  v22(v14, v34);
  v23 = ClientInfo.API.identifier.getter();
  v25 = v24;
  v26 = *(v4 + 8);
  v26(v9, v35);
  *v21 = v23;
  v21[1] = v25;
  v27 = (v1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_clientVersion);
  static ClientInfo.default.getter();
  ClientInfo.api.getter();
  v22(v14, v34);
  v28 = ClientInfo.API.version.getter();
  v30 = v29;
  v26(v9, v35);
  *v27 = v28;
  v27[1] = v30;
  v31 = (v1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_serviceType);
  *v31 = 0x636973756DLL;
  v31[1] = 0xE500000000000000;
  if (qword_100025828 != -1)
  {
    swift_once();
  }

  v32 = qword_100026710;
  *(v1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_bag) = qword_100026710;
  v33 = v32;
  sub_10000575C();
}

uint64_t sub_100001D20(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100001D40, 0, 0);
}

uint64_t sub_100001D40()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  v0[4] = v2;
  v3 = sub_1000044BC(&qword_1000259D8, &qword_1000179A8);
  *v2 = v0;
  v2[1] = sub_100001E2C;
  v4 = v0[2];
  v5 = v0[3];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x6E6974656B72616DLL, 0xED00006D65744967, sub_100005290, v5, v3);
}

uint64_t sub_100001E2C()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100001F60, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

void sub_100001F78(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000044BC(&qword_1000259D8, &qword_1000179A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = *(a2 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_lock);
  UnfairLock.locked<A>(_:)();
}

void sub_100002098(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_loadedMarketingItem);
  if (v3)
  {
    v4 = *a2;
    *a2 = v3;
    v5 = v3;
  }

  else
  {
    v8 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_marketingItemContinuations;
    sub_100004724();
    v9 = *(*(a1 + v8) + 16);
    sub_100004770(v9);
    v10 = *(a1 + v8);
    *(v10 + 16) = v9 + 1;
    v11 = sub_1000044BC(&qword_1000259E0, &qword_1000179B0);
    (*(*(v11 - 8) + 16))(v10 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v9, a3, v11);
    *(a1 + v8) = v10;
  }
}

void sub_100002188(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_lock);
  UnfairLock.locked<A>(_:)();
  sub_100002330(a1, a2, a3);
}

uint64_t sub_10000221C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for MusicSubscriptionOffer.Options();
  (*(*(v8 - 8) + 16))(v7, a2, v8);
  sub_10000400C(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_options;
  swift_beginAccess();
  sub_100005220(v7, a1 + v9);
  return swift_endAccess();
}

void sub_100002330(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v94 = a3;
  v99 = a2;
  v102 = a1;
  v4 = type metadata accessor for MusicSubscriptionOffer.Options();
  v5 = sub_1000056AC(v4);
  v100 = v6;
  v101 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v5);
  v98 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v91 = &v91 - v12;
  v96 = v13;
  __chkstk_darwin(v11);
  v92 = &v91 - v14;
  v15 = type metadata accessor for MusicSubscriptionOffer.MessageIdentifier();
  v16 = sub_1000056AC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100005710();
  v23 = v22 - v21;
  v24 = *(v3 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_bag);
  v25 = *(v3 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_clientIdentifier);
  v26 = *(v3 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_clientIdentifier + 8);
  v27 = *(v3 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_clientVersion + 8);
  v93 = *(v3 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_clientVersion);
  v95 = v24;

  MusicSubscriptionOffer.Options.messageIdentifier.getter();
  sub_100002BA8();
  (*(v18 + 8))(v23, v15);
  v97 = v3;
  v28 = *(v3 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_serviceType);
  v29 = *(v3 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_serviceType + 8);
  v30 = objc_allocWithZone(AMSMarketingItemTask);

  v31 = String._bridgeToObjectiveC()();

  v32 = String._bridgeToObjectiveC()();

  v33 = v94;
  v34 = String._bridgeToObjectiveC()();

  v35 = String._bridgeToObjectiveC()();

  v36 = v95;
  v37 = [v30 initWithBag:v95 clientIdentifier:v31 clientVersion:v32 placement:v34 serviceType:v35];

  v38 = v102;
  v39 = [objc_opt_self() ams_sharedAccountStore];
  v40 = [v39 ams_activeiTunesAccount];

  [v37 setAccount:v40];
  v41 = sub_100002E08();
  v42 = sub_10000317C(v41);

  sub_100004EB4(v42, v37);
  if (v33)
  {
    if (qword_100025820 != -1)
    {
      sub_10000568C();
    }

    v43 = type metadata accessor for Logger();
    sub_100004504(v43, qword_1000266F8);
    v45 = v100;
    v44 = v101;
    v46 = *(v100 + 16);
    v95 = ((v100 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v47 = v92;
    v48 = v46;
    v46(v92, v38, v101);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v93 = v37;
      v52 = v51;
      aBlock[0] = swift_slowAlloc();
      *v52 = 136446466;
      sub_1000056C0();
      sub_1000051BC(v53, v54);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      (*(v100 + 8))(v47, v44);
      v58 = sub_100014AE4(v55, v57, aBlock);
      v45 = v100;

      *(v52 + 4) = v58;
      *(v52 + 12) = 2082;
      v59 = v99;
      *(v52 + 14) = sub_100014AE4(v99, v33, aBlock);
      _os_log_impl(&_mh_execute_header, v49, v50, "Fetching marketing item for options %{public}s on behalf of application with bundle identifier %{public}s.", v52, 0x16u);
      swift_arrayDestroy();
      sub_1000056F8();
      v38 = v102;
      v37 = v93;
      sub_1000056F8();
    }

    else
    {

      (*(v45 + 8))(v47, v44);
      v59 = v99;
    }

    v77 = String._bridgeToObjectiveC()();
    [v37 setOfferHints:v77];

    v78 = v33;
    v79 = v59;
    v62 = v101;
    v64 = v48;
  }

  else
  {
    v60 = v91;
    v93 = v37;
    if (qword_100025820 != -1)
    {
      sub_10000568C();
    }

    v61 = type metadata accessor for Logger();
    sub_100004504(v61, qword_1000266F8);
    v63 = v100;
    v62 = v101;
    v64 = *(v100 + 16);
    v95 = ((v100 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v64(v60, v38, v101);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = sub_100005720();
      aBlock[0] = v68;
      *v67 = 136446210;
      sub_1000056C0();
      sub_1000051BC(v69, v70);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v60;
      v73 = v64;
      v75 = v74;
      (*(v63 + 8))(v72, v62);
      v76 = sub_100014AE4(v71, v75, aBlock);
      v64 = v73;

      *(v67 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v65, v66, "Fetching marketing item for options %{public}s", v67, 0xCu);
      sub_1000047B0(v68);
      sub_1000056F8();
      sub_1000056F8();
    }

    else
    {

      (*(v63 + 8))(v60, v62);
    }

    v78 = 0;
    v79 = v99;
    v45 = v63;
    v38 = v102;
    v37 = v93;
  }

  v80 = [v37 perform];
  v81 = swift_allocObject();
  swift_weakInit();
  v82 = v37;
  v83 = v98;
  v64(v98, v38, v62);
  v84 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v85 = (v96 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  v87 = v45;
  v88 = v86;
  *(v86 + 16) = v81;
  (*(v87 + 32))(v86 + v84, v83, v62);
  v89 = (v88 + v85);
  *v89 = v79;
  v89[1] = v78;
  aBlock[4] = sub_10000504C;
  aBlock[5] = v88;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000033EC;
  aBlock[3] = &unk_100021000;
  v90 = _Block_copy(aBlock);

  [v80 resultWithCompletion:v90];
  _Block_release(v90);

  sub_10000575C();
}

unint64_t sub_100002BA8()
{
  v1 = v0;
  v2 = 0xD000000000000012;
  v3 = type metadata accessor for MusicSubscriptionOffer.MessageIdentifier();
  v4 = sub_1000056AC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  __chkstk_darwin(v9);
  (*(v6 + 16))(&v25 - v10, v1, v3);
  static MusicSubscriptionOffer.MessageIdentifier.addMusic.getter();
  sub_1000051BC(&qword_100025A58, &type metadata accessor for MusicSubscriptionOffer.MessageIdentifier);
  v11 = sub_1000056D8();
  v12 = *(v6 + 8);
  v13 = sub_100005750();
  v12(v13);
  if (v11)
  {
    v14 = sub_100005738();
    v12(v14);
    return 0xD000000000000014;
  }

  else
  {
    static MusicSubscriptionOffer.MessageIdentifier.addToPlaylist.getter();
    v15 = sub_1000056D8();
    v16 = sub_100005750();
    v12(v16);
    if (v15)
    {
      v17 = sub_100005738();
      v12(v17);
      return 0xD000000000000015;
    }

    else
    {
      static MusicSubscriptionOffer.MessageIdentifier.join.getter();
      v18 = sub_1000056D8();
      v19 = sub_100005750();
      v12(v19);
      if (v18)
      {
        v20 = sub_100005738();
        v12(v20);
      }

      else
      {
        static MusicSubscriptionOffer.MessageIdentifier.playMusic.getter();
        v21 = sub_1000056D8();
        v22 = sub_100005750();
        v12(v22);
        v23 = sub_100005738();
        v12(v23);
        if (v21)
        {
          return 0xD000000000000016;
        }
      }
    }
  }

  return v2;
}

void *sub_100002E08()
{
  sub_100005118();
  v0 = Dictionary.init(dictionaryLiteral:)();
  v1 = MusicSubscriptionOffer.Options.itemID.getter();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100015460(v3, v4, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v6 = sub_1000150F4();
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v39 = v0;
      v10 = *(v0 + 24);
      sub_1000044BC(&qword_100025A28, &qword_1000179E0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10);
      v0 = v39;
      v11 = *(*(v39 + 56) + 16 * v8 + 8);
      _NativeDictionary._delete(at:)();
    }
  }

  v12 = *(v0 + 16);
  if (v12)
  {

    sub_100004D7C(0, v12, 0);
    result = sub_10000516C(v0);
    v15 = result;
    v17 = v16;
    v18 = 0;
    v19 = v0 + 64;
    v36 = v16;
    v37 = v12;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v0 + 32))
    {
      v20 = v15 >> 6;
      if ((*(v19 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_30;
      }

      if (*(v0 + 36) != v17)
      {
        goto LABEL_31;
      }

      v38 = v14;
      v21 = (*(v0 + 56) + 16 * v15);
      v22 = *v21;
      v23 = v21[1];

      v24 = String._bridgeToObjectiveC()();

      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      if (v26 >= v25 >> 1)
      {
        result = sub_100004D7C((v25 > 1), v26 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v26 + 1;
      v27 = &_swiftEmptyArrayStorage[3 * v26];
      v27[4] = 1684366707;
      v27[5] = 0xE400000000000000;
      v27[6] = v24;
      v28 = 1 << *(v0 + 32);
      if (v15 >= v28)
      {
        goto LABEL_32;
      }

      v19 = v0 + 64;
      v29 = *(v0 + 64 + 8 * v20);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_33;
      }

      if (*(v0 + 36) != v17)
      {
        goto LABEL_34;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v28 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v20 << 6;
        v32 = v20 + 1;
        v33 = (v0 + 72 + 8 * v20);
        while (v32 < (v28 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_1000051AC(v15, v17, v38 & 1);
            v28 = __clz(__rbit64(v34)) + v31;
            goto LABEL_23;
          }
        }

        result = sub_1000051AC(v15, v17, v38 & 1);
      }

LABEL_23:
      v14 = 0;
      ++v18;
      v15 = v28;
      v17 = v36;
      if (v18 == v37)
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_26;
      }
    }

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

  else
  {

LABEL_26:

    return sub_100004178(_swiftEmptyArrayStorage);
  }

  return result;
}

unint64_t sub_10000317C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000044BC(&qword_100025A18, &qword_1000179D8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);

    v16 = v15;
    result = sub_100015080(v14, v13);
    v17 = result;
    if (v18)
    {
      v19 = (v2[6] + 16 * result);
      v20 = v19[1];
      *v19 = v14;
      v19[1] = v13;

      v21 = v2[7];
      v22 = *(v21 + 8 * v17);
      *(v21 + 8 * v17) = v16;
      result = swift_unknownObjectRelease();
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = (v2[6] + 16 * result);
      *v23 = v14;
      v23[1] = v13;
      *(v2[7] + 8 * result) = v16;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100003360(NSObject *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100003478(a1, a4, v11, a6, a2);
  }

  return result;
}

void sub_1000033EC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_100003478(NSObject *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v72 = a2;
  v10 = sub_1000044BC(&qword_1000259D8, &qword_1000179A8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v74 = &v68 - v12;
  v13 = sub_1000044BC(&qword_1000259E0, &qword_1000179B0);
  v14 = sub_1000056AC(v13);
  v75 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v19 = &v68 - v18;
  v73 = a5;
  if (a1)
  {
    v20 = qword_100025820;
    v21 = a1;
    if (v20 != -1)
    {
      sub_10000568C();
    }

    v22 = type metadata accessor for Logger();
    sub_100004504(v22, qword_1000266F8);
    v23 = v21;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v24, v25))
    {

      goto LABEL_24;
    }

    v26 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72 = sub_100005720();
    v76 = v72;
    *v26 = 136446466;
    sub_100005744();
    v27 = _typeName(_:qualified:)();
    v29 = sub_100014AE4(v27, v28, &v76);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2114;
    *(v26 + 14) = v23;
    v30 = v71;
    *v71 = a1;
    v31 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s: fetched marketing item %{public}@.", v26, 0x16u);
    sub_1000052B8(v30, &qword_100025A00, &unk_1000179C0);
    sub_1000056F8();
    sub_1000047B0(v72);
    sub_1000056F8();
    sub_1000056F8();

LABEL_6:
LABEL_24:
    v58 = *(&v6->isa + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_lock);
    __chkstk_darwin(v32);
    *(&v68 - 2) = v6;
    *(&v68 - 1) = a1;
    sub_1000044BC(&qword_1000259E8, &qword_1000179B8);
    UnfairLock.locked<A>(_:)();
    v59 = v76[2];
    if (v59)
    {
      v60 = v75 + 16;
      v75 = *(v75 + 16);
      v61 = *(v60 + 64);
      v72 = v76;
      v62 = v76 + ((v61 + 32) & ~v61);
      v63 = *(v60 + 56);
      v64 = (v60 - 8);
      do
      {
        (v75)(v19, v62, v13);
        if (a1)
        {
          v76 = a1;
          sub_1000045AC();
          v65 = a1;
          UncheckedSendableWrapper.init(_:)();
          CheckedContinuation.resume(returning:)();
          (*v64)(v19, v13);
        }

        else
        {
          v66 = v73;
          if (!v73)
          {
            sub_100004558();
            v66 = swift_allocError();
            *v67 = 1;
          }

          v76 = v66;
          swift_errorRetain();
          CheckedContinuation.resume(throwing:)();
          (*v64)(v19, v13);
        }

        v62 += v63;
        --v59;
      }

      while (v59);
    }

    sub_10000575C();
    return;
  }

  if (!a5)
  {
    if (qword_100025820 != -1)
    {
      sub_10000568C();
    }

    v51 = type metadata accessor for Logger();
    sub_100004504(v51, qword_1000266F8);

    v31 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v52))
    {
      v53 = swift_slowAlloc();
      v54 = sub_100005720();
      v76 = v54;
      *v53 = 136446210;
      sub_100005744();
      v55 = _typeName(_:qualified:)();
      v57 = sub_100014AE4(v55, v56, &v76);

      *(v53 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v31, v52, "%{public}s: failed to load marketing item with unknown error.", v53, 0xCu);
      sub_1000047B0(v54);
      sub_1000056F8();
      sub_1000056F8();
    }

    goto LABEL_6;
  }

  swift_errorRetain();
  if (qword_100025820 != -1)
  {
    sub_10000568C();
  }

  v33 = type metadata accessor for Logger();
  sub_100004504(v33, qword_1000266F8);

  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v70 = v35;
    v37 = v36;
    v69 = swift_slowAlloc();
    v71 = sub_100005720();
    v76 = v71;
    *v37 = 136446466;
    sub_100005744();
    v38 = _typeName(_:qualified:)();
    v68 = v34;
    v40 = sub_100014AE4(v38, v39, &v76);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2114;
    swift_errorRetain();
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v41;
    v34 = v68;
    v42 = v69;
    *v69 = v41;
    _os_log_impl(&_mh_execute_header, v34, v70, "%{public}s: failed to load marketing item with error %{public}@.", v37, 0x16u);
    sub_1000052B8(v42, &qword_100025A00, &unk_1000179C0);
    sub_1000056F8();
    sub_1000047B0(v71);
    sub_1000056F8();
    sub_1000056F8();
  }

  if (!a4)
  {

    goto LABEL_24;
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = sub_100005720();
    v76 = v46;
    *v45 = 136446210;
    sub_100005744();
    v47 = _typeName(_:qualified:)();
    v49 = sub_100014AE4(v47, v48, &v76);

    *(v45 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s: fetching marketing item again without a host bundle identifier.", v45, 0xCu);
    sub_1000047B0(v46);
    sub_1000056F8();
    sub_1000056F8();
  }

  sub_100002330(v72, 0, 0);
  sub_10000575C();
}

void sub_100003CB0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_loadedMarketingItem);
  *(a1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_loadedMarketingItem) = a2;
  v6 = a2;

  v7 = *(a1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_marketingItemContinuations);
  *(a1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_marketingItemContinuations) = _swiftEmptyArrayStorage;
  *a3 = v7;
}

uint64_t sub_100003D18()
{
  sub_1000052B8(v0 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_options, &unk_100025C60, &qword_100017A10);

  v1 = *(v0 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_marketingItemContinuations);

  v2 = *(v0 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_lock);

  v3 = *(v0 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_clientIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_clientVersion + 8);

  v5 = *(v0 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_serviceType + 8);

  return v0;
}

uint64_t sub_100003DCC()
{
  sub_100003D18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s19MarketingItemLoaderCMa()
{
  result = qword_1000258A0;
  if (!qword_1000258A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003E78()
{
  sub_100003F48();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100003F48()
{
  if (!qword_1000258B0)
  {
    type metadata accessor for MusicSubscriptionOffer.Options();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000258B0);
    }
  }
}

__n128 sub_100003FA0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003FB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003FD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_100004034(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100020E80, v2);

  return v3 != 0;
}

BOOL sub_100004098@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100004034(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000040CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004088();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_UNKNOWN **sub_1000040F4@<X0>(void *a1@<X8>)
{
  result = sub_10000407C();
  *a1 = result;
  return result;
}

Swift::Int sub_100004124()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100004178(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000044BC(&qword_100025A30, &qword_1000179E8);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_1000047FC(v2, 1, &v4);

  return v4;
}

uint64_t sub_100004234()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100004274()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000042D0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100004354(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000043D0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100004450@<X0>(void *a1@<X8>)
{
  result = sub_100004478();
  *a1 = result;
  return result;
}

NSString sub_100004478()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_1000044B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100005AE8();
}

uint64_t sub_1000044BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004504(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100004558()
{
  result = qword_1000259F0;
  if (!qword_1000259F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000259F0);
  }

  return result;
}

unint64_t sub_1000045AC()
{
  result = qword_1000259F8;
  if (!qword_1000259F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000259F8);
  }

  return result;
}

uint64_t sub_1000045F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100004638@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100004668(uint64_t a1)
{
  v2 = sub_1000051BC(&qword_100025A98, type metadata accessor for LaunchOptionsKey);
  v3 = sub_1000051BC(&unk_100025AA0, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

char *sub_100004724()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_100010924(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_100004770(char *result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_100010924((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1000047B0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000047FC(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v28 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_100015080(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1000044BC(&qword_100025A38, &qword_1000179F0);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    *(v20[7] + 8 * v12) = v10;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v20[2] = v24;
    ++v4;
    a2 = 1;
  }

  sub_100004ADC(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_100015080(v7, v6);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_1000044BC(&qword_100025A40, &qword_1000179F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v26._object = 0x8000000100018640;
  v26._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v26);
  _print_unlocked<A, B>(_:_:)();
  v27._countAndFlagsBits = 39;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100004ADC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000044BC(&qword_100025A30, &qword_1000179E8);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_10000CA78(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v39 & 1) == 0)
    {
      v24 = v20[1];

      v25 = v23;
    }

    v26 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 16 * v30);
    *v35 = v21;
    v35[1] = v22;
    *(*(v8 + 56) + 8 * v30) = v23;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

char *sub_100004D7C(char *a1, int64_t a2, char a3)
{
  result = sub_100004D9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004D9C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000044BC(&qword_100025A48, &qword_100017A00);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_100010BF4((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1000044BC(&qword_100025A50, &qword_100017A08);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_100004EB4(uint64_t a1, void *a2)
{
  sub_1000044BC(&qword_100025A10, &qword_1000179D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setContextInfo:isa];
}

uint64_t sub_100004F44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004F7C()
{
  v1 = type metadata accessor for MusicSubscriptionOffer.Options();
  sub_1000056AC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

uint64_t sub_10000504C(NSObject *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for MusicSubscriptionOffer.Options() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_100003360(a1, a2, v7, (v2 + v6), v9, v10);
}

uint64_t sub_100005100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100005118()
{
  result = qword_100025A20;
  if (!qword_100025A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A20);
  }

  return result;
}

uint64_t sub_10000516C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1000051AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000051BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005220(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000052B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000044BC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s14ContextInfoKeyOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *_s14ContextInfoKeyOwst(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x100005408);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100005460(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100005540()
{
  result = qword_100025A78;
  if (!qword_100025A78)
  {
    sub_1000055A4(&qword_100025A80, qword_100017BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A78);
  }

  return result;
}

uint64_t sub_1000055A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000055F0()
{
  result = qword_100025A88;
  if (!qword_100025A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A88);
  }

  return result;
}

uint64_t sub_10000568C()
{

  return swift_once();
}

uint64_t sub_1000056D8()
{

  return dispatch thunk of static Equatable.== infix(_:_:)(v2, v1, v0, v3);
}

uint64_t sub_1000056F8()
{
}

uint64_t sub_100005720()
{

  return swift_slowAlloc();
}

id sub_100005774(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = _s5ModelCMa();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v5[OBJC_IVAR____TtCVVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer11ArtworkGrid10HostedView_model] = sub_10000F42C(a1, a4, a5);
  v19.receiver = v5;
  v19.super_class = _s10HostedViewCMa();

  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a2, a3, a4, a5);

  v15 = v14;
  State.init(wrappedValue:)();
  v16 = objc_allocWithZone(sub_1000044BC(&unk_100025B40, "> "));

  v17 = _UIHostingView.init(rootView:)();
  [v15 bounds];
  [v17 setFrame:?];
  [v17 setAutoresizingMask:18];
  [v15 addSubview:v17];

  return v15;
}

uint64_t sub_100005980()
{
  v5.receiver = v0;
  v5.super_class = _s10HostedViewCMa();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtCVVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer11ArtworkGrid10HostedView_model];

  [v0 frame];
  sub_10000FB10(v2, v3);
}

id sub_100005A80()
{
  v2.receiver = v0;
  v2.super_class = _s10HostedViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100005AE8()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

id sub_100005B74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController_bag;
  if (qword_100025828 != -1)
  {
    sub_10000810C();
    swift_once();
  }

  v4 = qword_100026710;
  *&v1[v3] = qword_100026710;
  *&v1[OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController_marketingItemLoader] = a1;
  v7.receiver = v1;
  v7.super_class = _s14ViewControllerCMa();
  v5 = v4;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

void sub_100005C10()
{
  v1 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController_bag;
  if (qword_100025828 != -1)
  {
    sub_10000810C();
    swift_once();
  }

  *(v0 + v1) = qword_100026710;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100005CC8()
{
  v1 = (*(*(sub_1000044BC(&unk_100025C70, &qword_100017D20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v11 - v2;
  v4 = _s14ViewControllerCMa();
  v11.receiver = v0;
  v11.super_class = v4;
  objc_msgSendSuper2(&v11, "viewDidLoad");
  result = [v0 view];
  if (result)
  {
    v6 = result;
    if (qword_100025830 != -1)
    {
      swift_once();
    }

    [v6 setTintColor:qword_100026718];

    v7 = type metadata accessor for TaskPriority();
    sub_10000400C(v3, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v0;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;
    sub_100006178(0, 0, v3, &unk_100017D30, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100005E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100005EEC, v6, v5);
}

id sub_100005EEC()
{
  sub_100008100();
  result = [*(v0 + 16) view];
  *(v0 + 48) = result;
  if (result)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_100005FA4;
    v3 = *(v0 + 16);

    return sub_100006450();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100005FA4()
{
  sub_100008100();
  v2 = *v1;
  sub_100008154();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  sub_100008154();
  *v7 = v6;
  *(v2 + 64) = v0;

  if (v0)
  {
    v8 = *(v2 + 32);
    v9 = *(v2 + 40);
    v10 = sub_100006110;
  }

  else
  {

    v8 = *(v2 + 32);
    v9 = *(v2 + 40);
    v10 = sub_1000060B4;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1000060B4()
{
  sub_100008100();
  v1 = *(v0 + 24);

  sub_10000813C();

  return v2();
}

uint64_t sub_100006110()
{
  sub_100008100();
  v1 = *(v0 + 24);

  sub_10000813C();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_100006178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_1000044BC(&unk_100025C70, &qword_100017D20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_100008098(a3, v22 - v9, &unk_100025C70, &qword_100017D20);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_100007E1C(v10, 1, v11);

  if (v12 == 1)
  {
    sub_1000052B8(v10, &unk_100025C70, &qword_100017D20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  v13 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000052B8(a3, &unk_100025C70, &qword_100017D20);

      return v20;
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

  sub_1000052B8(a3, &unk_100025C70, &qword_100017D20);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100006450()
{
  sub_100008100();
  v1[6] = v2;
  v1[7] = v0;
  v3 = type metadata accessor for MusicSubscriptionOffer.Options();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = *(*(sub_1000044BC(&unk_100025C60, &qword_100017A10) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v7 = sub_1000044BC(&qword_1000259D8, &qword_1000179A8);
  v1[12] = v7;
  v8 = *(v7 - 8);
  v1[13] = v8;
  v9 = *(v8 + 64) + 15;
  v1[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[15] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v11;
  v1[17] = v10;

  return _swift_task_switch(sub_1000065E0, v11, v10);
}

uint64_t sub_1000065E0()
{
  sub_100008100();
  v0[18] = *(v0[7] + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController_marketingItemLoader);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_100006684;
  v2 = v0[14];

  return sub_100001D20(v2);
}

uint64_t sub_100006684()
{
  v2 = *v1;
  sub_100008154();
  *v4 = v3;
  v5 = v2[19];
  *v4 = *v1;
  *(v3 + 160) = v0;

  v6 = v2[17];
  v7 = v2[16];
  if (v0)
  {
    v8 = sub_100006B00;
  }

  else
  {
    v8 = sub_1000067BC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000067BC()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];

  UncheckedSendableWrapper.wrapped.getter();
  (*(v5 + 8))(v3, v4);
  v9 = v0[5];
  v10 = [objc_allocWithZone(AMSUIMarketingItemViewController) initWithMarketingItem:v9 bag:*(v8 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController_bag)];
  v11 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_options;
  swift_beginAccess();
  sub_100008098(v1 + v11, v6, &unk_100025C60, &qword_100017A10);
  v12 = sub_100007E1C(v6, 1, v7);
  v13 = v0[11];
  if (v12)
  {
    sub_1000052B8(v0[11], &unk_100025C60, &qword_100017A10);
  }

  else
  {
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[8];
    (*(v15 + 16))(v14, v0[11], v16);
    sub_1000052B8(v13, &unk_100025C60, &qword_100017A10);
    v17 = MusicSubscriptionOffer.Options.campaignAttributionQueryParameters.getter();
    (*(v15 + 8))(v14, v16);
    if (v17)
    {
      sub_100007E44(v17, v10);
    }
  }

  v18 = v0[14];
  v19 = v0[10];
  v20 = v0[11];
  v22 = v0[6];
  v21 = v0[7];
  v23 = objc_opt_self();
  v24 = v10;
  v25 = [v23 ams_sharedAccountStore];
  v26 = [v25 ams_activeiTunesAccount];

  [v24 setAccount:v26];
  [v24 setDelegate:v21];

  [v21 addChildViewController:v24];
  v27 = v24;
  v28 = [v27 view];
  [v22 bounds];
  [v28 setFrame:?];

  v29 = [v27 view];
  [v29 setAutoresizingMask:18];

  v30 = [v27 view];
  [v22 addSubview:v30];

  [v27 didMoveToParentViewController:v21];

  sub_10000813C();

  return v31();
}

uint64_t sub_100006B00()
{
  v1 = v0[15];
  v2 = v0[7];

  type metadata accessor for NetworkConnectivityMonitor();
  static NetworkConnectivityMonitor.shared.getter();
  v3 = dispatch thunk of NetworkConnectivityMonitor.hasNetworkConnectivity.getter();

  sub_100008148();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  if (v3)
  {
    v4 = sub_100008A80();
  }

  else
  {
    v4 = sub_100008930();
  }

  v5 = v4;
  v6 = v0[20];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[7];

  [v10 presentViewController:v5 animated:1 completion:0];

  swift_willThrow();

  sub_10000813C();
  v12 = v0[20];

  return v11();
}

void sub_100006C64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100006D3C();
  }
}

void sub_100006CD0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100006D3C();
  }
}

uint64_t sub_100006D3C()
{
  v0 = type metadata accessor for MusicAngel.Client.Action.Identifier();
  v1 = sub_1000056AC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MusicAngel.Client.Action();
  v9 = sub_1000056AC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v7, enum case for MusicAngel.Client.Action.Identifier.dismiss(_:), v0);
  MusicAngel.Client.Action.init(identifier:)();
  v16 = sub_10000F3C4();
  v17 = v16;
  if (v16)
  {
    v16 = sub_100007D94();
  }

  else
  {
    v21[1] = 0;
    v21[2] = 0;
  }

  v21[0] = v17;
  v21[3] = v16;
  v18 = v17;
  MusicAngel.Client.Action.send(from:)();
  (*(v11 + 8))(v15, v8);

  return sub_1000052B8(v21, &qword_100025C50, &qword_100017D18);
}

id sub_100007144()
{
  v2.receiver = v0;
  v2.super_class = _s14ViewControllerCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100007264(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(_s10HostedViewCMa());

  return sub_100005774(v9, a1, a2, a3, a4);
}

void sub_100007398(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    v5 = _convertErrorToNSError(_:)();
    v6 = [v5 code];

    if (v6 == 6)
    {
      if (qword_100025820 != -1)
      {
        sub_10000568C();
      }

      v7 = type metadata accessor for Logger();
      sub_100004504(v7, qword_1000266F8);
      v8 = v3;
      oslog = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        v11 = sub_100005720();
        aBlock[0] = v11;
        *v10 = 136446210;
        swift_getObjectType();
        v12 = _typeName(_:qualified:)();
        v14 = sub_100014AE4(v12, v13, aBlock);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, oslog, v9, "%{public}s: did finish purchase after user cancelled the flow. Leaving the subscription offer view visible.", v10, 0xCu);
        sub_1000047B0(v11);
        sub_100008120();
        sub_1000056F8();

        return;
      }
    }

    else
    {
      if (qword_100025820 != -1)
      {
        sub_10000568C();
      }

      v31 = type metadata accessor for Logger();
      sub_100004504(v31, qword_1000266F8);
      swift_errorRetain();
      v32 = a2;
      v33 = v3;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = sub_100005720();
        v37 = swift_slowAlloc();
        osloga = sub_100005720();
        aBlock[0] = osloga;
        *v36 = 136446722;
        swift_getObjectType();
        v38 = _typeName(_:qualified:)();
        v40 = sub_100014AE4(v38, v39, aBlock);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2114;
        *(v36 + 14) = v32;
        *v37 = a2;
        *(v36 + 22) = 2114;
        swift_errorRetain();
        v41 = v32;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 24) = v42;
        v37[1] = v42;
        _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s: did finish purchase with purchase result: %{public}@, error %{public}@.", v36, 0x20u);
        sub_1000044BC(&qword_100025A00, &unk_1000179C0);
        swift_arrayDestroy();
        sub_1000056F8();
        sub_1000047B0(osloga);
        sub_1000056F8();
        sub_100008120();
      }

      oslog = sub_100008BD0();
      [v33 presentViewController:oslog animated:1 completion:0];
    }
  }

  else
  {
    if (qword_100025820 != -1)
    {
      sub_10000568C();
    }

    v15 = type metadata accessor for Logger();
    sub_100004504(v15, qword_1000266F8);
    v16 = a2;
    v17 = v3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = sub_100005720();
      aBlock[0] = v22;
      *v20 = 136446466;
      swift_getObjectType();
      v23 = _typeName(_:qualified:)();
      v25 = sub_100014AE4(v23, v24, aBlock);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2114;
      *(v20 + 14) = v16;
      *v21 = a2;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: did finish purchase with purchase result: %{public}@.", v20, 0x16u);
      sub_1000052B8(v21, &qword_100025A00, &unk_1000179C0);
      sub_1000056F8();
      sub_1000047B0(v22);
      sub_1000056F8();
      sub_100008120();
    }

    v27 = [objc_opt_self() sharedStatusController];
    sub_100008148();
    v28 = swift_allocObject();
    *(v28 + 16) = v17;
    aBlock[4] = sub_100007D74;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000033EC;
    aBlock[3] = &unk_100021108;
    v29 = _Block_copy(aBlock);
    v30 = v17;

    [v27 refreshSubscriptionWithCompletionHandler:v29];
    _Block_release(v29);
  }
}

uint64_t sub_10000791C(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100025820 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100004504(v4, qword_1000266F8);
    swift_errorRetain();
    v5 = a3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v6, v7))
    {

      return sub_100006D3C();
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v8 = 136446466;
    swift_getObjectType();
    v11 = _typeName(_:qualified:)();
    v13 = sub_100014AE4(v11, v12, &v28);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: ICMusicSubscriptionStatusController refresh subscription failed with error %{public}@.", v8, 0x16u);
    sub_1000052B8(v9, &qword_100025A00, &unk_1000179C0);

    sub_1000047B0(v10);
  }

  else
  {
    if (qword_100025820 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100004504(v16, qword_1000266F8);
    v17 = a1;
    v18 = a3;
    v6 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v20 = 136446466;
      swift_getObjectType();
      v23 = _typeName(_:qualified:)();
      v25 = sub_100014AE4(v23, v24, &v28);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2114;
      *(v20 + 14) = v17;
      *v21 = a1;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v6, v19, "%{public}s: ICMusicSubscriptionStatusController refresh subscription succeeded with subscription status: %{public}@.", v20, 0x16u);
      sub_1000052B8(v21, &qword_100025A00, &unk_1000179C0);

      sub_1000047B0(v22);
    }
  }

  return sub_100006D3C();
}

uint64_t sub_100007D40()
{
  sub_100008148();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100007D7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100007D94()
{
  result = qword_100025C58;
  if (!qword_100025C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025C58);
  }

  return result;
}

uint64_t sub_100007DD8()
{
  swift_unknownObjectWeakDestroy();
  sub_100008148();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_100007E44(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setCampaignQueryParameters:isa];
}

uint64_t sub_100007EBC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007EFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007FB0;

  return sub_100005E54(a1, v4, v5, v6);
}

uint64_t sub_100007FB0()
{
  sub_100008100();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100008154();
  *v3 = v2;

  sub_10000813C();

  return v4();
}

uint64_t sub_100008098(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000044BC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008120()
{
}

uint64_t sub_10000813C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100008160(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000081A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 16) <= 1uLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x4028000000000000;
  }

  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  v7 = sub_1000044BC(&qword_100025C80, &qword_100017DB8);
  return sub_100008284(a1, a2 + *(v7 + 44), a3);
}

uint64_t sub_100008284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v37 = sub_1000044BC(&qword_100025C88, &qword_100017DC0);
  v6 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v8 = v36 - v7;
  v9 = sub_1000044BC(&qword_100025C90, &qword_100017DC8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v36 - v11;
  v13 = _s4TileVMa();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v36 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = v36 - v22;
  result = __chkstk_darwin(v21);
  v26 = v36 - v25;
  v27 = *(a1 + 16);
  if (v27 >= 2)
  {
    v28 = type metadata accessor for Artwork();
    v36[2] = a2;
    v29 = v28;
    v30 = *(v28 - 8);
    v36[0] = v8;
    v31 = *(v30 + 16);
    v36[1] = v9;
    v32 = v30 + 16;
    v33 = a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v31(v26, v33, v28);
    *&v26[*(v13 + 20)] = a3;
    v31(v23, v33 + *(v32 + 56), v29);
    *&v23[*(v13 + 20)] = a3;
    sub_1000086B4(v26, v20);
    sub_1000086B4(v23, v17);
    sub_1000086B4(v20, v12);
    v34 = sub_1000044BC(&qword_100025CA8, &qword_100017DD0);
    sub_1000086B4(v17, &v12[*(v34 + 48)]);
    sub_100008770(v17);
    sub_100008770(v20);
    sub_1000087CC(v12, v36[0]);
    swift_storeEnumTagMultiPayload();
    sub_1000088E8(&qword_100025C98, &qword_100025C90, &qword_100017DC8);
    sub_100008718();
    _ConditionalContent<>.init(storage:)();
    sub_10000883C(v12);
    sub_100008770(v23);
    return sub_100008770(v26);
  }

  if (v27 == 1)
  {
    v35 = type metadata accessor for Artwork();
    (*(*(v35 - 8) + 16))(v26, a1 + ((*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80)), v35);
    *&v26[*(v13 + 20)] = a3 + a3 + 12.0;
    sub_1000086B4(v26, v8);
    swift_storeEnumTagMultiPayload();
    sub_1000088E8(&qword_100025C98, &qword_100025C90, &qword_100017DC8);
    sub_100008718();
    _ConditionalContent<>.init(storage:)();
    return sub_100008770(v26);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000086B4(uint64_t a1, uint64_t a2)
{
  v4 = _s4TileVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100008718()
{
  result = qword_100025CA0;
  if (!qword_100025CA0)
  {
    _s4TileVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025CA0);
  }

  return result;
}

uint64_t sub_100008770(uint64_t a1)
{
  v2 = _s4TileVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000087CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&qword_100025C90, &qword_100017DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000883C(uint64_t a1)
{
  v2 = sub_1000044BC(&qword_100025C90, &qword_100017DC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000088E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000055A4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100008930()
{
  if (qword_100025838 != -1)
  {
    sub_100009008();
  }

  sub_100009098();
  sub_100009028(0xD000000000000028);
  sub_1000090A8();
  sub_100009028(19279);
  sub_100008F48(0, &qword_100025CC0, UIAlertController_ptr);
  v0 = sub_10000904C();
  sub_100008F48(0, &qword_100025CC8, UIAlertAction_ptr);
  sub_1000090D4();
  v1 = swift_allocObject();
  sub_1000090B8(v1);
  v2 = sub_100009074();
  [v0 addAction:v2];

  return v0;
}

id sub_100008A80()
{
  if (qword_100025838 != -1)
  {
    sub_100009008();
  }

  sub_100009098();
  sub_100009028(0xD000000000000020);
  sub_1000090A8();
  sub_100009028(19279);
  sub_100008F48(0, &qword_100025CC0, UIAlertController_ptr);
  v0 = sub_10000904C();
  sub_100008F48(0, &qword_100025CC8, UIAlertAction_ptr);
  sub_1000090D4();
  v1 = swift_allocObject();
  sub_1000090B8(v1);
  v2 = sub_100009074();
  [v0 addAction:v2];

  return v0;
}

id sub_100008BD0()
{
  if (qword_100025838 != -1)
  {
    sub_100009008();
  }

  sub_100009098();
  sub_100009028(0xD000000000000022);
  sub_1000090A8();
  sub_100009028(19279);
  sub_100008F48(0, &qword_100025CC0, UIAlertController_ptr);
  v0 = sub_10000904C();
  sub_100008F48(0, &qword_100025CC8, UIAlertAction_ptr);
  sub_1000090D4();
  v1 = swift_allocObject();
  sub_1000090B8(v1);
  v2 = sub_100009074();
  [v0 addAction:v2];

  return v0;
}

id sub_100008D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = String._bridgeToObjectiveC()();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

id sub_100008DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100008EE0;
  v12[3] = &unk_100021228;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_100008EE0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100008F48(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100008F88()
{
  v1 = *(v0 + 24);

  sub_1000090D4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100008FBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100008FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009008()
{

  return swift_once();
}

id sub_10000904C()
{

  return sub_100008D20(v0, v1, 0, 0, 1);
}

id sub_100009074()
{

  return sub_100008DD8(v2, v3, 0, v0, v1);
}

uint64_t sub_1000090B8(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

double sub_10000910C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0x4028000000000000;
  *(a3 + 16) = 0;
  v6 = sub_1000044BC(&qword_100025CD0, &qword_100017E68);
  sub_10000927C(a1, a2, a3 + *(v6 + 44));
  v7 = static Edge.Set.all.getter();
  v8 = static SafeAreaRegions.all.getter();
  v9 = a3 + *(sub_1000044BC(&qword_100025CD8, &qword_100017E70) + 36);
  *v9 = v8;
  *(v9 + 8) = v7;
  sub_1000044BC(&qword_100025CE0, &qword_100017E78);
  State.wrappedValue.getter();
  sub_10001050C();

  *&v12 = a1;
  *(&v12 + 1) = a2;
  State.wrappedValue.getter();
  sub_10001050C();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v10 = (a3 + *(sub_1000044BC(&qword_100025CE8, &qword_100017E80) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

uint64_t sub_10000927C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a3;
  v5 = sub_1000044BC(&qword_100025CF0, &qword_100017E88);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v96 - v7;
  v9 = type metadata accessor for Artwork();
  v115 = *(v9 - 8);
  v10 = *(v115 + 64);
  __chkstk_darwin(v9);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000044BC(&qword_100025CF8, &qword_100017E90);
  v13 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v15 = &v96 - v14;
  v106 = sub_1000044BC(&qword_100025D00, &qword_100017E98);
  v16 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v103 = &v96 - v17;
  v113 = _s6ColumnVMa();
  v18 = *(*(v113 - 8) + 64);
  v19 = __chkstk_darwin(v113);
  v101 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v100 = &v96 - v22;
  v23 = __chkstk_darwin(v21);
  v104 = &v96 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v96 - v26;
  v28 = __chkstk_darwin(v25);
  v102 = &v96 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v96 - v31;
  v33 = __chkstk_darwin(v30);
  v108 = &v96 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v96 - v36;
  __chkstk_darwin(v35);
  v109 = &v96 - v38;
  v114 = a1;
  v117 = a1;
  v118 = a2;
  v112 = a2;
  v111 = sub_1000044BC(&qword_100025CE0, &qword_100017E78);
  State.wrappedValue.getter();
  v39 = *(v116 + 16);

  if (*(v39 + 16) >= 0xFuLL)
  {
    v107 = v9;
    v40 = sub_10000A200(1uLL, 5, v39);
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v98 = v15;
    if (v45)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v54 = swift_dynamicCastClass();
      if (!v54)
      {
        swift_unknownObjectRelease();
        v54 = &_swiftEmptyArrayStorage;
      }

      v55 = v54[2];

      if (__OFSUB__(v46 >> 1, v44))
      {
        goto LABEL_44;
      }

      if (v55 != (v46 >> 1) - v44)
      {
        goto LABEL_45;
      }

      v42 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v15 = v98;
      if (v42)
      {
        goto LABEL_16;
      }

      v42 = &_swiftEmptyArrayStorage;
      goto LABEL_15;
    }

    while (1)
    {
      sub_10000A120(v40, v42, v44, v46);
      v42 = v47;
LABEL_15:
      swift_unknownObjectRelease();
LABEL_16:
      if (*(v39 + 16) < 6uLL)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v56 = v113;
      v57 = *(v113 + 24);
      v58 = *(v115 + 16);
      v44 = v39 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      v97 = *(v115 + 72);
      v115 += 16;
      v99 = v58;
      v58((v37 + v57), v44 + 5 * v97, v107);
      v117 = v114;
      v118 = v112;
      State.wrappedValue.getter();
      v59 = sub_10001044C();

      *v37 = v42;
      *(v37 + 8) = 2;
      *(v37 + *(v56 + 28)) = v59;
      sub_10000A2A8(v37, v109);
      v40 = sub_10000A200(6uLL, 10, v39);
      v61 = v60;
      v37 = v62;
      v64 = v63;
      if ((v63 & 1) == 0)
      {
        goto LABEL_18;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v66 = swift_dynamicCastClass();
      if (!v66)
      {
        swift_unknownObjectRelease();
        v66 = &_swiftEmptyArrayStorage;
      }

      v67 = v66[2];

      if (__OFSUB__(v64 >> 1, v37))
      {
        break;
      }

      if (v67 != (v64 >> 1) - v37)
      {
        goto LABEL_47;
      }

      v46 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v15 = v98;
      v42 = v112;
      if (v46)
      {
        goto LABEL_26;
      }

      v46 = &_swiftEmptyArrayStorage;
LABEL_25:
      swift_unknownObjectRelease();
LABEL_26:
      if (!*(v39 + 16))
      {
        goto LABEL_42;
      }

      v68 = v113;
      v99(&v32[*(v113 + 24)], v44, v107);
      v117 = v114;
      v118 = v42;
      State.wrappedValue.getter();
      v69 = sub_10001044C();

      *v32 = v46;
      v32[8] = 1;
      *&v32[*(v68 + 28)] = v69;
      sub_10000A2A8(v32, v108);
      v40 = sub_10000A200(0xBuLL, 15, v39);
      v46 = v70;
      v72 = v71;
      v37 = v73;
      if ((v73 & 1) == 0)
      {
        goto LABEL_28;
      }

      v75 = v15;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v76 = swift_dynamicCastClass();
      if (!v76)
      {
        swift_unknownObjectRelease();
        v76 = &_swiftEmptyArrayStorage;
      }

      v77 = v76[2];

      if (__OFSUB__(v37 >> 1, v72))
      {
        __break(1u);
LABEL_49:
        swift_unknownObjectRelease();
        v15 = v75;
        v42 = v112;
LABEL_28:
        sub_10000A120(v40, v46, v72, v37);
        v32 = v74;
        goto LABEL_35;
      }

      if (v77 != (v37 >> 1) - v72)
      {
        goto LABEL_49;
      }

      v32 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v15 = v75;
      v42 = v112;
      if (v32)
      {
        goto LABEL_36;
      }

      v32 = &_swiftEmptyArrayStorage;
LABEL_35:
      swift_unknownObjectRelease();
LABEL_36:
      if (*(v39 + 16) >= 0xBuLL)
      {
        v78 = v113;
        v99(&v27[*(v113 + 24)], v44 + 10 * v97, v107);

        v117 = v114;
        v118 = v42;
        State.wrappedValue.getter();
        v79 = sub_10001044C();

        *v27 = v32;
        v27[8] = 0;
        *&v27[*(v78 + 28)] = v79;
        v80 = v27;
        v81 = v102;
        sub_10000A2A8(v80, v102);
        v82 = v109;
        v83 = v104;
        sub_10000A30C(v109, v104);
        v84 = v108;
        v85 = v15;
        v86 = v100;
        sub_10000A30C(v108, v100);
        v87 = v101;
        sub_10000A30C(v81, v101);
        v88 = v103;
        sub_10000A30C(v83, v103);
        v89 = sub_1000044BC(&qword_100025D08, &qword_100017EA0);
        sub_10000A30C(v86, v88 + *(v89 + 48));
        sub_10000A30C(v87, v88 + *(v89 + 64));
        sub_10000A370(v87);
        sub_10000A370(v86);
        sub_10000A370(v83);
        sub_10000A3CC(v88, v85);
        swift_storeEnumTagMultiPayload();
        sub_1000088E8(&qword_100025D10, &qword_100025D00, &qword_100017E98);
        sub_10000A43C();
        v53 = v110;
        _ConditionalContent<>.init(storage:)();
        sub_1000052B8(v88, &qword_100025D00, &qword_100017E98);
        sub_10000A370(v81);
        sub_10000A370(v84);
        sub_10000A370(v82);
        goto LABEL_39;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      swift_unknownObjectRelease();
      v15 = v98;
    }

    __break(1u);
LABEL_47:
    swift_unknownObjectRelease();
    v15 = v98;
LABEL_18:
    sub_10000A120(v40, v61, v37, v64);
    v46 = v65;
    v42 = v112;
    goto LABEL_25;
  }

  sub_100009DB0(v39, v8);

  if (sub_100007E1C(v8, 1, v9) == 1)
  {
    sub_1000052B8(v8, &qword_100025CF0, &qword_100017E88);
LABEL_8:
    v52 = 1;
    v53 = v110;
    goto LABEL_40;
  }

  v48 = v115;
  (*(v115 + 32))(v12, v8, v9);
  v49 = v114;
  v50 = v112;
  v117 = v114;
  v118 = v112;
  State.wrappedValue.getter();
  v51 = *(v116 + 24);

  if (v51)
  {
    (*(v48 + 8))(v12, v9);
    goto LABEL_8;
  }

  v90 = v113;
  v91 = v104;
  (*(v48 + 16))(v104 + *(v113 + 24), v12, v9);
  v117 = v49;
  v118 = v50;
  State.wrappedValue.getter();
  v92 = sub_10001044C();

  *v91 = &_swiftEmptyArrayStorage;
  *(v91 + 8) = 1;
  *(v91 + *(v90 + 28)) = v92;
  sub_10000A30C(v91, v15);
  swift_storeEnumTagMultiPayload();
  sub_1000088E8(&qword_100025D10, &qword_100025D00, &qword_100017E98);
  sub_10000A43C();
  v93 = v110;
  _ConditionalContent<>.init(storage:)();
  sub_10000A370(v91);
  v53 = v93;
  (*(v48 + 8))(v12, v9);
LABEL_39:
  v52 = 0;
LABEL_40:
  v94 = sub_1000044BC(&qword_100025D20, &qword_100017EA8);
  return sub_10000400C(v53, v52, 1, v94);
}

uint64_t sub_100009DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Artwork();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_10000400C(a2, v7, 1, v6);
}

uint64_t sub_100009E58(uint64_t a1)
{
  v2 = sub_10000A494(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_10000A4F4(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_10000A734(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_1000051AC(v7, v9, v11 & 1);
  v13 = sub_10000A8F4();
  if (v12)
  {
    sub_1000051AC(v13, v14, v15);
    return 0;
  }

  else
  {
    sub_10000A548(v13, v14, v15, a1);
    v16 = v17;
    v18 = sub_10000A8F4();
    sub_1000051AC(v18, v19, v20);
  }

  return v16;
}

char *sub_100009F1C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000044BC(&qword_100025D38, &qword_100017EB0);
  v4 = *(sub_1000044BC(&qword_1000259E0, &qword_1000179B0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10000A024(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000044BC(&qword_100025D28, &qword_100018220);
  v4 = *(type metadata accessor for Artwork() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10000A120(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_10000A024((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(type metadata accessor for Artwork() - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

unint64_t sub_10000A200(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(type metadata accessor for Artwork() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10000A2A8(uint64_t a1, uint64_t a2)
{
  v4 = _s6ColumnVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A30C(uint64_t a1, uint64_t a2)
{
  v4 = _s6ColumnVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A370(uint64_t a1)
{
  v2 = _s6ColumnVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&qword_100025D00, &qword_100017E98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000A43C()
{
  result = qword_100025D18;
  if (!qword_100025D18)
  {
    _s6ColumnVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025D18);
  }

  return result;
}

uint64_t sub_10000A494(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_10000A4F4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

void sub_10000A548(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000A768();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000A768();
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v4 = v13;
      v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v9 = *(*(a4 + 48) + 8 * v6);
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          goto LABEL_15;
        }

        v7 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v11 = *(*(a4 + 48) + 8 * v6);

  v12 = v11;
}

uint64_t sub_10000A734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
}

unint64_t sub_10000A768()
{
  result = qword_100025D30;
  if (!qword_100025D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025D30);
  }

  return result;
}

unint64_t sub_10000A7B0()
{
  result = qword_100025D40;
  if (!qword_100025D40)
  {
    sub_1000055A4(&qword_100025CE8, &qword_100017E80);
    sub_10000A83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025D40);
  }

  return result;
}

unint64_t sub_10000A83C()
{
  result = qword_100025D48;
  if (!qword_100025D48)
  {
    sub_1000055A4(&qword_100025CD8, &qword_100017E70);
    sub_1000088E8(&qword_100025D50, &qword_100025D58, &qword_100017EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025D48);
  }

  return result;
}

uint64_t sub_10000A904(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10000A934()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return String.hash(into:)();
}

uint64_t sub_10000A93C()
{
  _StringGuts.grow(_:)(54);
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v1._object = 0x8000000100018DE0;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + 16));
  v2._object = 0x8000000100018E00;
  v2._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v2);
  v3 = [*(v0 + 32) description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0;
}

uint64_t sub_10000AA30()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_10000AA58()
{
  sub_10000AA30();

  return _swift_deallocClassInstance(v0, 40, 7);
}

Swift::Int sub_10000AAB0()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10000AB60()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  sub_10000A934();
  return Hasher._finalize()();
}

uint64_t sub_10000ABA0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

unint64_t sub_10000ABE4()
{
  result = qword_100025E20;
  if (!qword_100025E20)
  {
    _s10ConnectionCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025E20);
  }

  return result;
}

uint64_t sub_10000AC38(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

id sub_10000AC5C()
{
  result = [objc_allocWithZone(_s6ServerCMa()) init];
  qword_1000266F0 = result;
  return result;
}

id sub_10000AC8C()
{
  *&v0[OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_listener] = 0;
  v1 = sub_10000AC38(&_swiftEmptyArrayStorage);
  v2 = v0;
  if (v1)
  {
    v3 = sub_10000CADC(&_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_connections] = v3;
  v4 = OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_lock;
  v5 = type metadata accessor for UnfairLock();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v2[v4] = UnfairLock.init()();
  v8 = OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_subscriptionOfferContextMap;
  _s7ContextVMa();
  *&v2[v8] = Dictionary.init(dictionaryLiteral:)();
  if (qword_100025820 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100004504(v9, qword_1000266F8);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446210;
    swift_getObjectType();

    v15 = _typeName(_:qualified:)();
    v17 = sub_100014AE4(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: init.", v13, 0xCu);
    sub_1000047B0(v14);
  }

  else
  {
  }

  v18 = _s6ServerCMa();
  v21.receiver = v10;
  v21.super_class = v18;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_10000AEE4()
{
  _s6ServerCMa();
  result = sub_10000AF14();
  qword_100025E30 = result;
  return result;
}

uint64_t sub_10000AF14()
{
  sub_100008F48(0, &qword_100025F40, BSMutableServiceInterface_ptr);
  static MusicAngel.Constants.serviceName.getter();
  v0 = sub_10000B0C8();
  v1 = [objc_opt_self() protocolForProtocol:&OBJC_PROTOCOL____TtP17_MusicKit_SwiftUI25MusicAngelServerInterface_];
  [v0 setServer:v1];

  [v0 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100008F48(0, &qword_100025F48, BSServiceInterface_ptr);
  if (swift_dynamicCast())
  {

    return v6;
  }

  else
  {
    _StringGuts.grow(_:)(53);
    v3._object = 0x8000000100018F70;
    v3._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v3);
    v4._countAndFlagsBits = static MusicAngel.Constants.serviceName.getter();
    String.append(_:)(v4);

    v5._countAndFlagsBits = 0xD00000000000001DLL;
    v5._object = 0x8000000100018F90;
    String.append(_:)(v5);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10000B0C8()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() interfaceWithIdentifier:v0];

  return v1;
}

uint64_t sub_10000B12C(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_lock];
  UnfairLock.assertOwned()();
  if (qword_100025820 != -1)
  {
    sub_10000568C();
  }

  v5 = type metadata accessor for Logger();
  sub_100004504(v5, qword_1000266F8);
  v6 = v2;

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v9 = 136446466;
    swift_getObjectType();
    v10 = _typeName(_:qualified:)();
    v12 = sub_100014AE4(v10, v11, v17);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = sub_10000A93C();
    v15 = sub_100014AE4(v13, v14, v17);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: adding client with connection: %{public}s.", v9, 0x16u);
    swift_arrayDestroy();
    sub_1000056F8();
    sub_1000056F8();
  }

  swift_beginAccess();

  sub_10000CC90(&v18, a1);
  swift_endAccess();
}

uint64_t sub_10000B314(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000044BC(&qword_100025F50, &qword_1000184A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25[-1] - v6;
  v8 = *&v1[OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_lock];
  UnfairLock.assertOwned()();
  if (qword_100025820 != -1)
  {
    sub_10000568C();
  }

  v9 = type metadata accessor for Logger();
  sub_100004504(v9, qword_1000266F8);
  v10 = v2;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v13 = 136446466;
    swift_getObjectType();
    v14 = _typeName(_:qualified:)();
    v16 = sub_100014AE4(v14, v15, v25);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    v17 = sub_10000A93C();
    v19 = sub_100014AE4(v17, v18, v25);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: removing client with connection: %{public}s.", v13, 0x16u);
    swift_arrayDestroy();
    sub_1000056F8();
    sub_1000056F8();
  }

  sub_10000E09C();
  sub_10000D848(a1);
  swift_endAccess();

  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  sub_10000E09C();
  v22 = _s7ContextVMa();
  sub_10000400C(v7, 1, 1, v22);

  sub_100012C58(v7, v21, v20);
  return swift_endAccess();
}

void sub_10000B584()
{
  v1 = objc_opt_self();
  static MusicAngel.Constants.machName.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 activateManualDomain:v2];
  swift_unknownObjectRelease();

  if (qword_100025820 != -1)
  {
    sub_10000568C();
  }

  v4 = type metadata accessor for Logger();
  sub_100004504(v4, qword_1000266F8);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136446466;
    swift_getObjectType();
    v11 = _typeName(_:qualified:)();
    v13 = sub_100014AE4(v11, v12, &v20);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    v14 = [v1 bootstrapConfiguration];
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: bootstrap configuration %{public}@.", v8, 0x16u);
    sub_1000052B8(v9, &qword_100025A00, &unk_1000179C0);
    sub_1000056F8();
    sub_1000047B0(v10);
    sub_1000056F8();
    sub_1000056F8();
  }

  v15 = sub_100008F48(0, &unk_100025F60, BSServiceConnectionListener_ptr);
  __chkstk_darwin(v15);
  v19[2] = v5;
  v16 = sub_10000B8B4(sub_10000DE0C, v19);
  v17 = *&v5[OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_listener];
  *&v5[OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_listener] = v16;
  v18 = v16;

  if (v18)
  {
    [v18 activate];
  }

  else
  {
    __break(1u);
  }
}

id sub_10000B808(void *a1, uint64_t a2)
{
  static MusicAngel.Constants.machName.getter();
  v4 = String._bridgeToObjectiveC()();

  [a1 setDomain:v4];

  static MusicAngel.Constants.serviceName.getter();
  v5 = String._bridgeToObjectiveC()();

  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

uint64_t sub_10000B8B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v9[4] = sub_10000E098;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000E094;
  v9[3] = &unk_100021410;
  v5 = _Block_copy(v9);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v7 = [ObjCClassFromMetadata listenerWithConfigurator:v5];
  _Block_release(v5);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000B9E4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  static MusicAngel.Constants.clientIdentifierKey.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [a3 decodeStringForKey:v8];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    _s10ConnectionCMa();
    v13 = swift_allocObject();
    v13[2] = v10;
    v13[3] = v12;
    v13[4] = a2;
    v14 = *&v3[OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_lock];
    __chkstk_darwin(v13);

    v15 = a2;
    UnfairLock.locked<A>(_:)();

    v16 = swift_allocObject();
    v16[2] = v4;
    v16[3] = v13;
    v16[4] = ObjectType;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_10000C81C;
    *(v17 + 24) = v16;
    aBlock[4] = sub_10000C838;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000E094;
    aBlock[3] = &unk_100021370;
    v18 = _Block_copy(aBlock);
    v19 = v4;

    [v15 configureConnection:v18];
    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      [v15 activate];
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10000BCCC(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v62 = a4;
  v61 = a5;
  v8 = sub_1000044BC(&qword_100025F50, &qword_1000184A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v56 - v13;
  v60 = _s7ContextVMa();
  v15 = *(*(v60 - 8) + 64);
  v16 = __chkstk_darwin(v60);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v56 - v19;
  sub_10000B12C(a2);
  v65 = [a3 remoteToken];
  [v65 realToken];
  v21 = v64[0];
  v22 = v64[1];
  v23 = v64[2];
  v24 = v64[3];
  sub_100008F48(0, &qword_100025F58, LSBundleRecord_ptr);
  v25 = v63;
  v26 = sub_10000C180(v21, v22, v23, v24);
  if (v25)
  {
    if (qword_100025820 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100004504(v27, qword_1000266F8);
    v28 = a1;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v64[0] = v32;
      *v31 = 136446210;
      swift_getObjectType();
      v33 = _typeName(_:qualified:)();
      v35 = sub_100014AE4(v33, v34, v64);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s: failed to find host bundle identifier.", v31, 0xCu);
      sub_1000047B0(v32);
    }
  }

  else
  {
    v57 = v26;
    v58 = v20;
    v59 = v18;
    v63 = 0;
    v36 = v12;
    v37 = OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_subscriptionOfferContextMap;
    swift_beginAccess();
    v39 = v61;
    v38 = v62;
    sub_100013478(v62, v61, *&a1[v37], v14);
    v40 = v60;
    v41 = sub_100007E1C(v14, 1, v60);
    v56 = a1;
    if (v41 == 1)
    {
      sub_1000052B8(v14, &qword_100025F50, &qword_1000184A0);
      v42 = _s19MarketingItemLoaderCMa();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      sub_100001A60();
      v45 = v58;
      v58[3] = 0;
      v45[4] = 0;
      v45[2] = v46;
      v47 = *(v40 + 28);
      v48 = type metadata accessor for MusicSubscriptionOffer.Options();
      sub_10000400C(v45 + v47, 1, 1, v48);
      *(v45 + *(v40 + 32)) = 0;
      *v45 = v38;
      v45[1] = v39;
      sub_10000C9F0(v45, v12);
      sub_10000400C(v12, 0, 1, v40);
      swift_bridgeObjectRetain_n();
      sub_100012C58(v12, v38, v39);
    }

    else
    {
      v45 = v58;
      sub_10000DDA8(v14, v58);
    }

    v49 = v40;
    v50 = v59;
    sub_10000C9F0(v45, v59);
    v51 = v57;
    v52 = sub_10000DCE8(v57);
    v54 = v53;
    v55 = *(v50 + 32);

    *(v50 + 24) = v52;
    *(v50 + 32) = v54;
    sub_10000C9F0(v50, v36);
    sub_10000400C(v36, 0, 1, v49);

    sub_100012C58(v36, v62, v39);
    sub_10000DD4C(v45);
    sub_10000DD4C(v50);
    swift_endAccess();
  }
}

id sub_10000C180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

void sub_10000C288(id a1, void *a2, uint64_t a3)
{
  if (qword_100025818 != -1)
  {
    swift_once();
  }

  [a1 setInterface:qword_100025E30];
  [a1 setInterfaceTarget:a2];
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v6];

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v10[4] = sub_10000C8CC;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100008EE0;
  v10[3] = &unk_1000213C0;
  v8 = _Block_copy(v10);
  v9 = a2;

  [a1 setInvalidationHandler:v8];
  _Block_release(v8);
}

uint64_t sub_10000C478(void *a1, uint64_t a2)
{
  if (qword_100025820 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100004504(v4, qword_1000266F8);
  v5 = a1;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136446466;
    swift_getObjectType();
    v9 = _typeName(_:qualified:)();
    v11 = sub_100014AE4(v9, v10, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    v12 = sub_10000A93C();
    v14 = sub_100014AE4(v12, v13, &v16);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: client %{public}s invalidated.", v8, 0x16u);
    swift_arrayDestroy();
  }

  return sub_10000B314(a2);
}

uint64_t sub_10000C644(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id sub_10000C72C()
{
  v2.receiver = v0;
  v2.super_class = _s6ServerCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000C838()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000C860(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C880(uint64_t a1)
{
  v3 = *(v1 + 24);

  return _swift_deallocObject(v1, a1, 7);
}

Swift::Int sub_10000C928(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10000C9AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000C9F0(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContextVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000CA54(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000CA78(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100017FB0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_10000CADC(uint64_t a1)
{
  if (sub_10000AC38(a1))
  {
    sub_1000044BC(&qword_100025FD0, &qword_100017FE0);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = sub_10000AC38(a1);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = (v2 + 7);
    v7 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_10000CA54(v5, v7 == 0, a1);
      if (v7)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = result;
      }

      else
      {
        v9 = *(a1 + 32 + 8 * v5);
      }

      v10 = __OFADD__(v5++, 1);
      if (v10)
      {
        break;
      }

      v11 = v2[5];
      Hasher.init(_seed:)();
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      String.hash(into:)();
      result = Hasher._finalize()();
      v14 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v15 = result & v14;
        v16 = (result & v14) >> 6;
        v17 = *&v6[8 * v16];
        v18 = 1 << (result & v14);
        if ((v18 & v17) == 0)
        {
          break;
        }

        v19 = *(v2[6] + 8 * v15);
        v20 = *(v19 + 16) == *(v9 + 16) && *(v19 + 24) == *(v9 + 24);
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_21;
        }

        result = v15 + 1;
      }

      *&v6[8 * v16] = v18 | v17;
      *(v2[6] + 8 * v15) = v9;
      v21 = v2[2];
      v10 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v10)
      {
        goto LABEL_24;
      }

      v2[2] = v22;
LABEL_21:
      if (v5 == v4)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    return v2;
  }

  return result;
}

uint64_t sub_10000CC90(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      _s10ConnectionCMa();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_10000CEA0(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_10000D078(v19 + 1);
    }

    sub_10000D2C4(v20, v18);

    *v3 = v18;
  }

  else
  {
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    String.hash(into:)();
    v13 = Hasher._finalize()();
    v14 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v15 = v13 & v14;
      if (((*(v6 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
      {
        break;
      }

      v16 = *(*(v6 + 48) + 8 * v15);
      v17 = *(v16 + 16) == *(a2 + 16) && *(v16 + 24) == *(a2 + 24);
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        *a1 = *(*(v6 + 48) + 8 * v15);

        return 0;
      }

      v13 = v15 + 1;
    }

    v21 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v2;

    sub_10000D368(v23, v15, isUniquelyReferenced_nonNull_native);
    *v2 = v25;
  }

  *a1 = a2;
  return 1;
}

Swift::Int sub_10000CEA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000044BC(&qword_100025FD0, &qword_100017FE0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v18 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      _s10ConnectionCMa();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_10000D078(v3 + 1);
      }

      v2 = v18;
      v4 = *(v18 + 40);
      Hasher.init(_seed:)();
      v5 = *(v17 + 16);
      v6 = *(v17 + 24);
      String.hash(into:)();
      result = Hasher._finalize()();
      v8 = v18 + 56;
      v9 = -1 << *(v18 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~*(v18 + 56 + 8 * (v10 >> 6))) == 0)
      {
        break;
      }

      v12 = __clz(__rbit64((-1 << v10) & ~*(v18 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v18 + 48) + 8 * v12) = v17;
      ++*(v18 + 16);
    }

    v13 = 0;
    v14 = (63 - v9) >> 6;
    while (++v11 != v14 || (v13 & 1) == 0)
    {
      v15 = v11 == v14;
      if (v11 == v14)
      {
        v11 = 0;
      }

      v13 |= v15;
      v16 = *(v8 + 8 * v11);
      if (v16 != -1)
      {
        v12 = __clz(__rbit64(~v16)) + (v11 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10000D078(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000044BC(&qword_100025FD0, &qword_100017FE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v30 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_10000CA78(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    Hasher.init(_seed:)();
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v6 + 48) + 8 * v24) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_10000D2C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  String.hash(into:)();
  Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_10000D368(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10000D078(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_10000D618(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      Hasher.init(_seed:)();
      v14 = *(v5 + 16);
      v15 = *(v5 + 24);
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v16;
        if (((*(v12 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        _s10ConnectionCMa();
        v17 = *(*(v12 + 48) + 8 * a2);
        v18 = *(v17 + 16) == *(v5 + 16) && *(v17 + 24) == *(v5 + 24);
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a2 + 1;
      }
    }

    result = sub_10000D4C8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_10000D4C8()
{
  v1 = v0;
  sub_1000044BC(&qword_100025FD0, &qword_100017FE0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_10000D618(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000044BC(&qword_100025FD0, &qword_100017FE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        Hasher.init(_seed:)();
        v18 = *(v16 + 16);
        v19 = *(v16 + 24);

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(*(v6 + 48) + 8 * v23) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v28;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10000D848(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v9 = *(v4 + 40);
    Hasher.init(_seed:)();
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v14 = v12 & v13;
      if (((*(v4 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
      {
        break;
      }

      v15 = *(*(v4 + 48) + 8 * v14);
      v16 = *(v15 + 16) == v10 && *(v15 + 24) == v11;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v17 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *v2;
        v21 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10000D4C8();
          v19 = v21;
        }

        v8 = *(*(v19 + 48) + 8 * v14);
        sub_10000DB28(v14);
        *v2 = v21;
        return v8;
      }

      v12 = v14 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = *v2;

  v7 = __CocoaSet.contains(_:)();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_10000D9C8(v5, a1);

  return v8;
}

uint64_t sub_10000D9C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;

  v6 = __CocoaSet.count.getter();
  v7 = swift_unknownObjectRetain();
  v8 = sub_10000CEA0(v7, v6);
  v20 = v8;
  v9 = *(v8 + 40);
  Hasher.init(_seed:)();
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);

  String.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v14 = v12 & v13;
    if (((*(v8 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
    {
      break;
    }

    v15 = *(*(v8 + 48) + 8 * v14);
    v16 = *(v15 + 16) == v10 && *(v15 + 24) == v11;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v17 = *(*(v8 + 48) + 8 * v14);
      sub_10000DB28(v14);
      v18 = v10 == *(v17 + 16) && v11 == *(v17 + 24);
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        *v3 = v20;
        return v17;
      }

      __break(1u);
      break;
    }

    v12 = v14 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_10000DB28(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        v13 = *(v12 + 16);
        v14 = *(v12 + 24);

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 8 * v2);
            v21 = (v19 + 8 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10000DCE8(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10000DD4C(uint64_t a1)
{
  v2 = _s7ContextVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DDA8(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContextVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s6ServerC5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s6ServerC5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10000DF74);
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

unint64_t sub_10000DFC4()
{
  result = qword_100025FD8;
  if (!qword_100025FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025FD8);
  }

  return result;
}

unint64_t sub_10000E01C()
{
  result = qword_100025FE0;
  if (!qword_100025FE0)
  {
    sub_1000055A4(&qword_100025FE8, qword_100018058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025FE0);
  }

  return result;
}

uint64_t sub_10000E09C()
{

  return swift_beginAccess();
}

uint64_t sub_10000E0D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Artwork();
    v9 = a1 + *(a3 + 24);

    return sub_100007E1C(v9, a2, v8);
  }
}

void *sub_10000E16C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Artwork();
    v8 = v5 + *(a4 + 24);

    return sub_10000400C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s6ColumnVMa()
{
  result = qword_1000260A8;
  if (!qword_1000260A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E238()
{
  sub_10000E2CC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Artwork();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000E2CC()
{
  if (!qword_1000260B8)
  {
    type metadata accessor for Artwork();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000260B8);
    }
  }
}

uint64_t _s20LargeArtworkPositionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s20LargeArtworkPositionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10000E478);
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

unint64_t sub_10000E4BC()
{
  result = qword_1000260F0;
  if (!qword_1000260F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000260F0);
  }

  return result;
}

void *sub_10000E510@<X0>(void *a1@<X8>)
{
  if (*(*v1 + 16))
  {
    static HorizontalAlignment.center.getter();
    sub_10000E770(v1, __src);
  }

  else
  {
    static HorizontalAlignment.center.getter();
    sub_1000044BC(&qword_100025D28, &qword_100018220);
    v3 = type metadata accessor for Artwork();
    v4 = *(v3 - 8);
    v5 = *(v4 + 72);
    v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000180E0;
    v8 = _s6ColumnVMa();
    (*(v4 + 16))(v7 + v6, v1 + *(v8 + 24), v3);
    v10 = *(v1 + *(v8 + 28));
  }

  sub_1000044BC(&qword_100026108, &qword_100018210);
  sub_1000044BC(&qword_100026110, &qword_100018218);
  sub_1000088E8(&qword_100026118, &qword_100026108, &qword_100018210);
  sub_1000088E8(&qword_100026120, &qword_100026110, &qword_100018218);
  _ConditionalContent<>.init(storage:)();
  return memcpy(a1, __src, 0x49uLL);
}

uint64_t sub_10000E770@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = &unk_100018000;
  if (!*(a1 + 8))
  {
    sub_1000044BC(&qword_100025D28, &qword_100018220);
    v15 = type metadata accessor for Artwork();
    v16 = *(v15 - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v14 = swift_allocObject();
    *(v14 + 1) = xmmword_1000180E0;
    v19 = _s6ColumnVMa();
    (*(v16 + 16))(&v14[v18], a1 + *(v19 + 24), v15);
    goto LABEL_11;
  }

  v6 = sub_10000A200(0, 2, *a1);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ((v11 & 1) == 0)
  {
LABEL_3:
    sub_10000A120(v6, v8, v10, v12);
    v14 = v13;
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = &_swiftEmptyArrayStorage;
  }

  v21 = v20[2];

  if (__OFSUB__(v12 >> 1, v10))
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v21 != (v12 >> 1) - v10)
  {
LABEL_45:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v14 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = &_swiftEmptyArrayStorage;
  }

LABEL_11:
  v22 = _s6ColumnVMa();
  v23 = *(a1 + *(v22 + 28));
  if (v4 == 1)
  {
    sub_1000044BC(&qword_100025D28, &qword_100018220);
    v24 = type metadata accessor for Artwork();
    v25 = *(v24 - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 1) = xmmword_1000180E0;
    (*(v25 + 16))(&v28[v27], a1 + *(v22 + 24), v24);
    goto LABEL_33;
  }

  v29 = *a1;
  if (!v4)
  {
    v37 = sub_10000A200(0, 2, v29);
    v39 = v38;
    v41 = v40;
    v43 = v42;
    if (v42)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v54 = swift_dynamicCastClass();
      if (!v54)
      {
        swift_unknownObjectRelease();
        v54 = &_swiftEmptyArrayStorage;
      }

      v55 = v54[2];

      if (__OFSUB__(v43 >> 1, v41))
      {
        __break(1u);
      }

      else if (v55 == (v43 >> 1) - v41)
      {
        v28 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v28)
        {
          swift_unknownObjectRelease();
          v28 = &_swiftEmptyArrayStorage;
        }

        goto LABEL_33;
      }

      swift_unknownObjectRelease();
    }

    sub_10000A120(v37, v39, v41, v43);
    v28 = v44;
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v31 = sub_10000A200(2uLL, 4, v29);
  v33 = v32;
  v35 = v34;
  if ((v34 & 1) == 0)
  {
    goto LABEL_15;
  }

  v66 = v30;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v45 = swift_dynamicCastClass();
  if (!v45)
  {
    swift_unknownObjectRelease();
    v45 = &_swiftEmptyArrayStorage;
  }

  v46 = v45[2];

  if (__OFSUB__(v35 >> 1, v33))
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v46 != (v35 >> 1) - v33)
  {
LABEL_47:
    swift_unknownObjectRelease();
    v5 = &unk_100018000;
    v30 = v66;
LABEL_15:
    sub_10000A120(v31, v30, v33, v35);
    v28 = v36;
    goto LABEL_24;
  }

  v28 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v5 = &unk_100018000;
  if (v28)
  {
    goto LABEL_25;
  }

  v28 = &_swiftEmptyArrayStorage;
LABEL_24:
  swift_unknownObjectRelease();
LABEL_25:
  if (v4 == 2)
  {
    sub_1000044BC(&qword_100025D28, &qword_100018220);
    v47 = type metadata accessor for Artwork();
    v48 = *(v47 - 8);
    v49 = *(v48 + 72);
    v50 = v5;
    v51 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v52 = swift_allocObject();
    *(v52 + 1) = v50[14];
    result = (*(v48 + 16))(&v52[v51], a1 + *(v22 + 24), v47);
    goto LABEL_41;
  }

LABEL_33:
  v56 = sub_10000A200(2uLL, 4, *a1);
  v58 = v57;
  v60 = v59;
  v62 = v61;
  if ((v61 & 1) == 0)
  {
LABEL_34:
    sub_10000A120(v56, v58, v60, v62);
    v52 = v63;
    result = swift_unknownObjectRelease();
    goto LABEL_41;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v64 = swift_dynamicCastClass();
  if (!v64)
  {
    swift_unknownObjectRelease();
    v64 = &_swiftEmptyArrayStorage;
  }

  v65 = v64[2];

  if (__OFSUB__(v62 >> 1, v60))
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v65 != (v62 >> 1) - v60)
  {
LABEL_43:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  v52 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease();
  if (!v52)
  {
    result = swift_unknownObjectRelease();
    v52 = &_swiftEmptyArrayStorage;
  }

LABEL_41:
  *a2 = v14;
  a2[1] = v23;
  a2[2] = v28;
  a2[3] = v23;
  a2[4] = v52;
  a2[5] = v23;
  return result;
}

Swift::Int sub_10000EDB0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_10000EE88()
{
  result = qword_100026128;
  if (!qword_100026128)
  {
    sub_1000055A4(&qword_100026130, &unk_100018228);
    sub_1000088E8(&qword_100026118, &qword_100026108, &qword_100018210);
    sub_1000088E8(&qword_100026120, &qword_100026110, &qword_100018218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026128);
  }

  return result;
}

uint64_t sub_10000EF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();

  return sub_100007E1C(a1, a2, v4);
}

uint64_t sub_10000EFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();

  return sub_10000400C(a1, a2, a2, v4);
}

uint64_t _s4TileVMa()
{
  result = qword_100026190;
  if (!qword_100026190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F070()
{
  result = type metadata accessor for Artwork();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000F100@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Artwork();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  (*(v6 + 16))(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v7 = *(v1 + *(_s4TileVMa() + 20));
  ArtworkImage.init(_:width:height:)();
  v8 = (a1 + *(sub_1000044BC(&qword_1000261C8, &qword_100018290) + 36));
  v9 = *(type metadata accessor for RoundedRectangle() + 20);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = type metadata accessor for RoundedCornerStyle();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #10.0 }

  *v8 = _Q0;
  result = sub_1000044BC(&qword_1000261D0, &qword_100018298);
  *&v8[*(result + 36)] = 256;
  return result;
}

unint64_t sub_10000F27C()
{
  result = qword_1000261D8;
  if (!qword_1000261D8)
  {
    sub_1000055A4(&qword_1000261C8, &qword_100018290);
    sub_10000F308();
    sub_10000F360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000261D8);
  }

  return result;
}

unint64_t sub_10000F308()
{
  result = qword_1000261E0;
  if (!qword_1000261E0)
  {
    type metadata accessor for ArtworkImage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000261E0);
  }

  return result;
}

unint64_t sub_10000F360()
{
  result = qword_1000261E8;
  if (!qword_1000261E8)
  {
    sub_1000055A4(&qword_1000261D0, &qword_100018298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000261E8);
  }

  return result;
}

id sub_10000F3C4()
{
  result = [v0 _hostedWindowScene];
  if (!result)
  {
    result = [v0 parentViewController];
    if (result)
    {
      v2 = result;
      v3 = sub_10000F3C4();

      return v3;
    }
  }

  return result;
}

double *sub_10000F42C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for CloudMarketingItem();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObservationRegistrar.init()();
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = (a3 + -24.0 + -24.0) * 0.25;
  v51[2] = 0x65756C6156776172;
  v51[3] = 0xE900000000000073;
  AnyHashable.init<A>(_:)();
  sub_100013414(v52, a1, &v53);
  sub_1000108D0(v52);
  if (!v54)
  {
    sub_100011670(&v53, &qword_100025C50, &qword_100017D18);
    goto LABEL_6;
  }

  sub_1000044BC(&qword_100026360, &qword_100018368);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    if (qword_100025820 != -1)
    {
      sub_10000568C();
    }

    v24 = type metadata accessor for Logger();
    sub_100004504(v24, qword_1000266F8);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      *v27 = 136446466;
      v28 = *v4;
      v29 = _typeName(_:qualified:)();
      v31 = sub_100014AE4(v29, v30, v52);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = Dictionary.description.getter();
      v34 = v33;

      v35 = sub_100014AE4(v32, v34, v52);

      *(v27 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s: incorrectly formed content view dictionary: %s.", v27, 0x16u);
      swift_arrayDestroy();
      sub_1000056F8();
      sub_1000056F8();
    }

    else
    {
    }

    goto LABEL_15;
  }

  v14 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v52[0] = 0;
  v16 = [v14 dataWithJSONObject:isa options:4 error:v52];

  v17 = v52[0];
  if (!v16)
  {
    v36 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100025820 != -1)
    {
      sub_10000568C();
    }

    v37 = type metadata accessor for Logger();
    sub_100004504(v37, qword_1000266F8);

    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v25, v38))
    {

      goto LABEL_16;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v52[0] = v41;
    *v39 = 136446466;
    v42 = *v4;
    v43 = _typeName(_:qualified:)();
    v45 = sub_100014AE4(v43, v44, v52);

    *(v39 + 4) = v45;
    *(v39 + 12) = 2114;
    swift_errorRetain();
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 14) = v46;
    *v40 = v46;
    _os_log_impl(&_mh_execute_header, v25, v38, "%{public}s: could not parse artworks with error %{public}@.", v39, 0x16u);
    sub_100011670(v40, &qword_100025A00, &unk_1000179C0);
    sub_1000056F8();
    sub_1000047B0(v41);
    sub_1000056F8();
    sub_1000056F8();

LABEL_15:

LABEL_16:
    v50 = 0;
    v49 = &_swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  *v51 = v8;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = type metadata accessor for JSONDecoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100010CFC(&qword_100026368, &type metadata accessor for CloudMarketingItem);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10000FCA0();
  v49 = v48;
  v50 = sub_100010330();

  sub_100010D44(v18, v20);
  (*(v10 + 8))(v13, v9);
LABEL_17:
  *(v4 + 2) = v49;
  *(v4 + 24) = v50;
  return v4;
}

uint64_t sub_10000FB10(double a1, double a2)
{
  if (*(v2 + 40) == a1 && *(v2 + 48) == a2)
  {

    return sub_1000104CC(a1, a2);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1000105B4();
  }
}

uint64_t sub_10000FBF0(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1000105B4();
  }

  return result;
}

void sub_10000FCA0()
{
  v0 = type metadata accessor for CloudGenericMusicItem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v65 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000044BC(&qword_100026378, &qword_100018378);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v51 - v6;
  v64 = type metadata accessor for Artwork();
  v54 = *(v64 - 8);
  v8 = *(v54 + 64);
  v9 = __chkstk_darwin(v64);
  v53 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = v51 - v11;
  v55 = sub_1000044BC(&qword_100026380, &qword_100018380);
  v12 = *(v55 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v55);
  v15 = v51 - v14;
  v16 = sub_1000044BC(&qword_100026388, &qword_100018388);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v51 - v18;
  v20 = sub_1000044BC(&qword_100026390, &qword_100018390);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v51 - v22;
  CloudMarketingItem.relationships.getter();
  v24 = type metadata accessor for CloudMarketingItem.Relationships();
  if (sub_100007E1C(v19, 1, v24) == 1)
  {
    v25 = &qword_100026388;
    v26 = &qword_100018388;
    v27 = v19;
LABEL_5:
    sub_100011670(v27, v25, v26);
    v29 = &_swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  CloudMarketingItem.Relationships.contents.getter();
  (*(*(v24 - 8) + 8))(v19, v24);
  v28 = sub_1000044BC(&qword_1000263A0, &qword_1000183A0);
  if (sub_100007E1C(v23, 1, v28) == 1)
  {
    v25 = &qword_100026390;
    v26 = &qword_100018390;
    v27 = v23;
    goto LABEL_5;
  }

  v29 = CloudResourceCollection.data.getter();
  (*(*(v28 - 8) + 8))(v23, v28);
LABEL_7:
  v30 = v55;
  v31 = v29[2];
  if (v31)
  {
    v60 = v7;
    v61 = v15;
    v32 = v12 + 16;
    v33 = *(v12 + 16);
    v34 = *(v12 + 80);
    v51[1] = v29;
    v35 = v29 + ((v34 + 32) & ~v34);
    v58 = (v1 + 8);
    v59 = v33;
    v36 = (v12 + 8);
    v57 = (v54 + 32);
    v37 = &_swiftEmptyArrayStorage;
    v62 = v32;
    v56 = *(v32 + 56);
    v52 = v0;
    do
    {
      v38 = v61;
      v59(v61, v35, v30);
      v39 = v65;
      CloudResource.item.getter();
      v40 = v60;
      CloudGenericMusicItem.artwork.getter();
      (*v58)(v39, v0);
      v41 = sub_1000044BC(&qword_100026398, &qword_100018398);
      if (sub_100007E1C(v40, 1, v41) == 1)
      {
        (*v36)(v38, v30);
        sub_100011670(v40, &qword_100026378, &qword_100018378);
      }

      else
      {
        v42 = v53;
        CloudAttribute<A>.convertToArtwork()();
        (*v36)(v38, v30);
        (*(*(v41 - 8) + 8))(v40, v41);
        v43 = *v57;
        (*v57)(v63, v42, v64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_100010A1C(0, *(v37 + 2) + 1, 1, v37);
        }

        v45 = *(v37 + 2);
        v44 = *(v37 + 3);
        if (v45 >= v44 >> 1)
        {
          v37 = sub_100010A1C((v44 > 1), v45 + 1, 1, v37);
        }

        *(v37 + 2) = v45 + 1;
        v43(&v37[((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v45], v63, v64);
        v0 = v52;
        v30 = v55;
      }

      v35 += v56;
      --v31;
    }

    while (v31);
  }

  else
  {

    v37 = &_swiftEmptyArrayStorage;
  }

  v70 = v37;
  v46 = *(v37 + 2);
  if (v46)
  {
    v66 = sub_10000A200(1uLL, v46, v37);
    v67 = v47;
    v68 = v48;
    v69 = v49;
    sub_10001104C();
    v50 = *(v37 + 2);
    if (v50)
    {
      sub_100011524(v66, v67, v68, v69, 1uLL, v50);
    }

    else
    {
      __break(1u);
    }
  }
}

BOOL sub_100010330()
{
  v0 = sub_1000044BC(&qword_100026370, &qword_100018370);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  CloudMarketingItem.attributes.getter();
  v4 = type metadata accessor for CloudMarketingItem.Attributes();
  if (sub_100007E1C(v3, 1, v4) == 1)
  {
    sub_100011670(v3, &qword_100026370, &qword_100018370);
  }

  else
  {
    v5 = CloudMarketingItem.Attributes.marketingArtwork.getter();
    (*(*(v4 - 8) + 8))(v3, v4);
    if (v5)
    {
      v6 = *(v5 + 16);

      return v6 != 0;
    }
  }

  return 0;
}

double sub_10001044C()
{
  swift_getKeyPath();
  sub_1000116C4();
  v3 = sub_100010CFC(v1, v2);
  sub_1000116F0(v3, v4);

  return *(v0 + 32);
}

uint64_t sub_1000104CC(double a1, double a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  sub_10001050C();

  return sub_10000FBF0((v3 + -24.0 + -24.0) * 0.25);
}

double sub_10001050C()
{
  swift_getKeyPath();
  sub_1000116C4();
  v3 = sub_100010CFC(v1, v2);
  sub_1000116F0(v3, v4);

  result = *(v0 + 40);
  v6 = *(v0 + 48);
  return result;
}

uint64_t sub_1000105B4()
{
  sub_1000116C4();
  sub_100010CFC(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10001065C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtCVVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer11ArtworkGrid5Model___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  sub_1000116DC(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t _s5ModelCMa()
{
  result = qword_100026220;
  if (!qword_100026220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010748()
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_100010808(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_10001050C();
  *(a2 + 8) = v4;
}

uint64_t sub_100010838()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0 + 2);
  return sub_1000104CC(v1, v2);
}

double sub_1000108C0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

char *sub_100010924(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_100009F1C(v8, v7);
  v10 = *(sub_1000044BC(&qword_1000259E0, &qword_1000179B0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_100010B08(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_100010A1C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_10000A024(v8, v7);
  v10 = *(type metadata accessor for Artwork() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_100010C28(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t sub_100010B08(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1000044BC(&qword_1000259E0, &qword_1000179B0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_1000044BC(&qword_1000259E0, &qword_1000179B0);

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

char *sub_100010BF4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[24 * a2] <= __dst)
  {
    return memmove(__dst, __src, 24 * a2);
  }

  return __src;
}

uint64_t sub_100010C28(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for Artwork(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for Artwork();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_100010CFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100010D44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

int64_t sub_100010D9C(int64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(*v6 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = __OFSUB__(v13, v10);
  v15 = v13 - v10;
  if (v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v8 + v15;
  if (__OFADD__(v8, v15))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_100010E6C(result, 1);

  return sub_100010ED4(v9, a2, v13, a3, a4, a5, a6);
}

char *sub_100010E6C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_100010A1C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100010ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = *v7;
  result = type metadata accessor for Artwork();
  v15 = *(*(result - 8) + 72);
  v16 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = *(*(result - 8) + 80);
  v17 = v12 + ((v14 + 32) & ~v14);
  v18 = v17 + v15 * a1;
  result = swift_arrayDestroy();
  v19 = __OFSUB__(a3, v16);
  v20 = a3 - v16;
  if (v19)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = *(v12 + 16);
  if (__OFSUB__(v21, a2))
  {
    goto LABEL_16;
  }

  result = sub_100010C28(v17 + v15 * a2, v21 - a2, v18 + v15 * a3);
  v22 = *(v12 + 16);
  v19 = __OFADD__(v22, v20);
  v23 = v22 + v20;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v12 + 16) = v23;
LABEL_7:
  if (a3 >= 1)
  {
    if (!__OFSUB__(a7 >> 1, a6))
    {
      if ((a7 >> 1) - a6 == a3)
      {
        swift_arrayInitWithCopy();
        goto LABEL_11;
      }

LABEL_19:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_11:

  return swift_unknownObjectRelease();
}

void sub_10001104C()
{
  v44 = type metadata accessor for Artwork();
  v37 = *(v44 - 8);
  v1 = v37[8];
  v2 = __chkstk_darwin(v44);
  v41 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v42 = v36 - v4;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
LABEL_47:
    __break(1u);
    return;
  }

  if (v7 >= 2)
  {
    v36[1] = v37 + 2;
    v8 = v6;
    v40 = (v37 + 5);
    while (1)
    {
      v45 = v8;
      v46 = 0;
      swift_stdlib_random();
      v9 = (v46 * v7) >> 64;
      if (v7 > v46 * v7)
      {
        v10 = -v7 % v7;
        if (v10 > v46 * v7)
        {
          do
          {
            v46 = 0;
            swift_stdlib_random();
          }

          while (v10 > v46 * v7);
          v9 = (v46 * v7) >> 64;
        }
      }

      v11 = v6 + v9;
      v8 = v45;
      if (__OFADD__(v6, v9))
      {
        break;
      }

      if (v6 != v11)
      {
        v12 = v6 >= v45 && v6 < (v5 >> 1);
        if (!v12)
        {
          goto LABEL_43;
        }

        v13 = v5;
        v14 = *(v0 + 8);
        v43 = v5 >> 1;
        v15 = v37[9];
        v16 = v44;
        v17 = v37[2];
        v39 = v15 * v6;
        v17(v42, v14 + v15 * v6, v44);
        if (v11 < v45 || v11 >= v43)
        {
          goto LABEL_44;
        }

        v38 = v15 * v11;
        v17(v41, v14 + v15 * v11, v16);
        v19 = *v0;
        v5 = v13;
        if (v13 & 1) != 0 && (v20 = *v0, isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(), *v0 = v19, (isUniquelyReferenced_nonNull))
        {
          v22 = v40;
          v8 = v45;
          v23 = v43;
        }

        else
        {
          sub_100011370(v19, *(v0 + 8), *(v0 + 16), *(v0 + 24));
          v19 = v24;
          v14 = v25;
          v8 = v26;
          v5 = v27;
          *(v0 + 8) = v25;
          *(v0 + 16) = v26;
          *(v0 + 24) = v27;
          v23 = v27 >> 1;
          v22 = v40;
        }

        if (v6 < v8 || v6 >= v23)
        {
          goto LABEL_45;
        }

        v29 = *v22;
        (*v22)(v14 + v39, v41, v44);
        if ((v5 & 1) == 0)
        {
          sub_100011370(v19, v14, v8, v5);
          v19 = v30;
          v14 = v31;
          v8 = v32;
          *(v0 + 8) = v31;
          *(v0 + 16) = v32;
          *(v0 + 24) = v33;
          v5 = v33;
          v23 = v33 >> 1;
        }

        if (v11 < v8 || v11 >= v23)
        {
          goto LABEL_46;
        }

        v29(v14 + v38, v42, v44);
        *v0 = v19;
      }

      if (__OFADD__(v6++, 1))
      {
        goto LABEL_42;
      }

      v12 = v7-- <= 2;
      if (v12)
      {
        return;
      }
    }

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
    goto LABEL_47;
  }
}

void sub_100011370(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = sub_10000A024((a4 >> 1) - a3, (a4 >> 1) - a3);
  if (v4 < a3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = *(type metadata accessor for Artwork() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();
  swift_unknownObjectRelease();

  sub_100011460(v7, a3);
}

uint64_t sub_100011460(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  result = v4 - 8;
  v6 = *(v5 + 80);
  v7 = *(v5 + 72);
  v8 = *(v3 + 16);
  v9 = __OFADD__(a2, v8);
  v10 = a2 + v8;
  if (v9)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v10 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

int64_t sub_100011524(int64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *v6;
  v10 = *(*v6 + 16);
  if (v10 < a5 || v10 < a6)
  {
    goto LABEL_20;
  }

  if (a6 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = result;
  v16 = type metadata accessor for Artwork();
  v17 = *(v16 - 8);
  result = v16 - 8;
  if (v9 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * a5 != a2 + *(v17 + 72) * a3)
  {
LABEL_13:

    return sub_100010D9C(a5, a6, v15, a2, a3, a4);
  }

  if ((a4 >> 1) < a3)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  if (a5 != a3 || a4 >> 1 != a6)
  {
    goto LABEL_13;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100011670(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000044BC(a2, a3);
  sub_1000116DC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1000116F0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return ObservationRegistrar.access<A, B>(_:keyPath:)(va, v2, a1);
}

uint64_t sub_100011710()
{
  v0 = type metadata accessor for Logger();
  sub_100011784(v0, qword_1000266F8);
  sub_100004504(v0, qword_1000266F8);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100011784(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_1000117E8()
{
  sub_10001181C();
  result = sub_100011860();
  qword_100026710 = result;
  return result;
}

unint64_t sub_10001181C()
{
  result = qword_1000263A8;
  if (!qword_1000263A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000263A8);
  }

  return result;
}

id sub_100011860()
{
  v0 = type metadata accessor for ClientInfo.Bag();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ClientInfo();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ClientInfo.default.getter();
  ClientInfo.bag.getter();
  sub_10001181C();
  ClientInfo.Bag.profile.getter();
  ClientInfo.Bag.version.getter();
  v10 = sub_100011A14();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  return v10;
}

id sub_100011A14()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = String._bridgeToObjectiveC()();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

id sub_100011AB8()
{
  v0 = objc_allocWithZone(UIColor);
  result = sub_100011C0C(sub_100011B08, 0);
  qword_100026718 = result;
  return result;
}

uint64_t sub_100011B08()
{
  sub_100011D30();
  result = sub_100011BA8();
  if (!result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_100011BA8()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() colorNamed:v0];

  return v1;
}

id sub_100011C0C(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100011CB0;
  v6[3] = &unk_100021580;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider:v3];
  _Block_release(v3);

  return v4;
}

id sub_100011CB0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_100011D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100011D30()
{
  result = qword_1000263B0;
  if (!qword_1000263B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000263B0);
  }

  return result;
}

uint64_t sub_100011D74()
{
  v1 = *(v0 + OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_lock);
  sub_100008F48(0, &qword_100026468, UIViewController_ptr);
  UnfairLock.locked<A>(_:)();
  return v3;
}

void *sub_100011E34()
{
  v1 = *(v0 + OBJC_IVAR____TtCCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server13SceneDelegate_window);
  v2 = v1;
  return v1;
}

uint64_t sub_100011EC0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server13SceneDelegate_window);
  *(v1 + OBJC_IVAR____TtCCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server13SceneDelegate_window) = a1;
  return _objc_release_x1();
}

void sub_100011ED4(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_1000044BC(&unk_100026450, &qword_1000183E8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for MusicAngel.Client.Parameters();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    return;
  }

  v20 = v19;
  v21 = a1;
  v22 = [a3 userActivities];
  sub_100008F48(0, &qword_100025D30, NSUserActivity_ptr);
  sub_1000125D8();
  v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = sub_100009E58(v23);

  if (!v24)
  {
    goto LABEL_8;
  }

  v40 = v21;
  static MusicAngel.Client.UserActivityHandler.clientID(from:)();
  if (!v25)
  {

    goto LABEL_7;
  }

  static MusicAngel.Client.UserActivityHandler.parameters(from:)();
  if (sub_100007E1C(v10, 1, v11) == 1)
  {

    sub_100012640(v10);
LABEL_7:
    v21 = v40;
LABEL_8:
    if (qword_100025820 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100004504(v26, qword_1000266F8);
    v27 = v4;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136446210;
      swift_getObjectType();
      v32 = _typeName(_:qualified:)();
      v34 = sub_100014AE4(v32, v33, &v41);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s: UIScene.ConnectionOptions don't have userActivity with AngelServiceParameter.", v30, 0xCu);
      sub_1000047B0(v31);
    }

    return;
  }

  (*(v12 + 32))(v18, v10, v11);
  (*(v12 + 16))(v16, v18, v11);
  if ((*(v12 + 88))(v16, v11) == enum case for MusicAngel.Client.Parameters.subscriptionOffer(_:))
  {
    if (qword_100025810 != -1)
    {
      swift_once();
    }

    v35 = sub_100011D74();

    v36 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v35];
    v37 = [objc_allocWithZone(UIWindow) initWithWindowScene:v20];
    v38 = *&v4[OBJC_IVAR____TtCCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server13SceneDelegate_window];
    *&v4[OBJC_IVAR____TtCCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server13SceneDelegate_window] = v37;
    v39 = v37;

    [v39 setRootViewController:v36];
    [v39 makeKeyAndVisible];

    (*(v12 + 8))(v18, v11);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_1000123F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = objc_allocWithZone(_s14ViewControllerCMa());

  v7 = sub_100005B74(v6);
  v8 = *(_s7ContextVMa() + 32);
  v9 = *(a1 + v8);
  v10 = v7;

  *(a1 + v8) = v7;
  *a2 = v10;
}

id sub_10001250C()
{
  *&v0[OBJC_IVAR____TtCCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server13SceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = _s13SceneDelegateCMa();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100012570()
{
  v2.receiver = v0;
  v2.super_class = _s13SceneDelegateCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000125D8()
{
  result = qword_100026460;
  if (!qword_100026460)
  {
    sub_100008F48(255, &qword_100025D30, NSUserActivity_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026460);
  }

  return result;
}

uint64_t sub_100012640(uint64_t a1)
{
  v2 = sub_1000044BC(&unk_100026450, &qword_1000183E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000126A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, char *)@<X3>, uint64_t *a5@<X8>)
{
  result = sub_100012DD8(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

id sub_1000126F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100012754()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000127B0()
{
  type metadata accessor for MusicKitUI_FinalClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100026720 = result;
  return result;
}

uint64_t sub_100012808()
{
  if (qword_100025810 != -1)
  {
    swift_once();
  }

  sub_10000B584();
  return 1;
}

id sub_1000128F0(int a1, id a2)
{
  v2 = [a2 role];
  v3 = objc_allocWithZone(UISceneConfiguration);
  v4 = sub_100012B48(0, 0, v2);
  _s13SceneDelegateCMa();
  [v4 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v4;
}

id sub_1000129F8()
{
  v2.receiver = v0;
  v2.super_class = _s19ApplicationDelegateCMa();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_100012A50()
{
  _s19ApplicationDelegateCMa();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v1) = UIApplicationMain(_:_:_:_:)();

  exit(v1);
}

id sub_100012ADC()
{
  v2.receiver = v0;
  v2.super_class = _s19ApplicationDelegateCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100012B48(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithName:v5 sessionRole:a3];

  return v6;
}

unint64_t sub_100012BB8()
{
  result = qword_100025A98;
  if (!qword_100025A98)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A98);
  }

  return result;
}

Swift::Int sub_100012C20()
{
  Hasher.init(_seed:)();
  sub_100015A2C();
  return Hasher._finalize()();
}

uint64_t sub_100012C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000044BC(&qword_100025F50, &qword_1000184A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  v12 = _s7ContextVMa();
  v13 = sub_1000159B0(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100007E1C(a1, 1, v18) == 1)
  {
    sub_100015884(a1, &qword_100025F50, &qword_1000184A0);
    sub_10001532C(a2, a3, v11);

    return sub_100015884(v11, &qword_100025F50, &qword_1000184A0);
  }

  else
  {
    sub_10000DDA8(a1, v17);
    v20 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v26 = *v4;
    sub_100015A20();
    sub_100015580(v21, v22, v23, v24);

    *v4 = v26;
  }

  return result;
}

uint64_t sub_100012DD8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, char *))
{
  swift_beginAccess();
  v7 = sub_10001318C(a2, a3, a4);
  swift_endAccess();
  return v7;
}

uint64_t sub_100012E74(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  swift_beginAccess();
  sub_100012F10(a2, a3, a4);
  return swift_endAccess();
}

uint64_t sub_100012F10(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = v3;
  v37 = a3;
  v7 = sub_1000044BC(&qword_100025F50, &qword_1000184A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = _s7ContextVMa();
  v15 = sub_1000159B0(v14);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = (&v36 - v21);
  sub_100013478(a1, a2, *v4, v13);
  if (sub_100007E1C(v13, 1, v14) == 1)
  {
    sub_100015884(v13, &qword_100025F50, &qword_1000184A0);
    v23 = _s19MarketingItemLoaderCMa();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_100001A60();
    v22[3] = 0;
    v22[4] = 0;
    v22[2] = v26;
    v27 = *(v14 + 28);
    v28 = type metadata accessor for MusicSubscriptionOffer.Options();
    sub_10000400C(v22 + v27, 1, 1, v28);
    *(v22 + *(v14 + 32)) = 0;
    *v22 = a1;
    v22[1] = a2;
    sub_10000C9F0(v22, v11);
    sub_10000400C(v11, 0, 1, v14);
    swift_bridgeObjectRetain_n();
    sub_100015A20();
    sub_100012C58(v29, v30, v31);
  }

  else
  {
    sub_10000DDA8(v13, v22);
  }

  sub_10000C9F0(v22, v20);
  v37(v20);
  sub_10000C9F0(v20, v11);
  sub_10000400C(v11, 0, 1, v14);

  sub_100015A20();
  sub_100012C58(v32, v33, v34);
  sub_10000DD4C(v20);
  return sub_10000DD4C(v22);
}

uint64_t sub_10001318C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, char *))
{
  v4 = v3;
  v8 = sub_1000044BC(&qword_100025F50, &qword_1000184A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = _s7ContextVMa();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = (&v29 - v20);
  sub_100013478(a1, a2, *v4, v14);
  if (sub_100007E1C(v14, 1, v15) == 1)
  {
    sub_100015884(v14, &qword_100025F50, &qword_1000184A0);
    v22 = _s19MarketingItemLoaderCMa();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_100001A60();
    v21[3] = 0;
    v21[4] = 0;
    v21[2] = v25;
    v26 = *(v15 + 28);
    v27 = type metadata accessor for MusicSubscriptionOffer.Options();
    sub_10000400C(v21 + v26, 1, 1, v27);
    *(v21 + *(v15 + 32)) = 0;
    *v21 = a1;
    v21[1] = a2;
    sub_10000C9F0(v21, v12);
    sub_10000400C(v12, 0, 1, v15);
    swift_bridgeObjectRetain_n();
    sub_100012C58(v12, a1, a2);
  }

  else
  {
    sub_10000DDA8(v14, v21);
  }

  sub_10000C9F0(v21, v19);
  a3(&v30, v19);
  sub_10000C9F0(v19, v12);
  sub_10000400C(v12, 0, 1, v15);

  sub_100012C58(v12, a1, a2);
  sub_10000DD4C(v19);
  sub_10000DD4C(v21);
  return v30;
}

double sub_100013414@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_100015144(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1000158DC(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100013478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100015080(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = _s7ContextVMa();
    sub_1000159B0(v10);
    sub_10000C9F0(v9 + *(v11 + 72) * v8, a4);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = _s7ContextVMa();
    v12 = a4;
    v13 = 1;
  }

  return sub_10000400C(v12, v13, 1, v14);
}

uint64_t sub_100013520()
{
  sub_100008100();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for MusicSubscriptionOffer.Options();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000135EC, 0, 0);
}

uint64_t sub_1000135EC()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[3];
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  sub_100014A8C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[5];
  v13 = v0[6];

  sub_100010D44(v7, v9);
  (*(v13 + 32))(v10, v11, v12);
  if (qword_100025810 != -1)
  {
    swift_once();
  }

  v14 = v0[8];
  v15 = v0[6];
  v26 = v0[5];
  v27 = v0[7];
  v16 = v0[2];
  v17 = qword_1000266F0;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = swift_task_alloc();
  *(v21 + 16) = v14;
  v22 = *(v17 + OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_lock);
  v23 = swift_task_alloc();
  v23[2] = v17;
  v23[3] = v18;
  v23[4] = v20;
  v23[5] = sub_100015054;
  v23[6] = v21;
  UnfairLock.locked<A>(_:)();

  (*(v15 + 8))(v14, v26);

  sub_10000813C();

  return v24();
}

uint64_t sub_10001396C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for MusicSubscriptionOffer.Options();
  (*(*(v8 - 8) + 16))(v7, a2, v8);
  sub_10000400C(v7, 0, 1, v8);
  v9 = _s7ContextVMa();
  sub_100015814(v7, a1 + *(v9 + 28));
  sub_100015A4C();
  return sub_100015884(v7, &unk_100025C60, &qword_100017A10);
}

uint64_t sub_100013B20(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100013BF8;

  return sub_100013520();
}

uint64_t sub_100013BF8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1000159A0();
  *v5 = v4;
  v6 = v3[6];
  v7 = v3[4];
  v8 = v3[3];
  v9 = v3[2];
  v10 = *v1;
  *v5 = *v1;

  v11 = v3[5];
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(v3[5], 0);
  }

  _Block_release(v4[5]);
  v13 = v10[1];

  return v13();
}

uint64_t sub_100013DAC()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100013DFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_1000159C0(v6);

  return v8(v7);
}

uint64_t sub_100013EA0()
{
  sub_100008100();
  sub_100015A14();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000159A0();
  *v4 = v3;

  sub_10000813C();

  return v5();
}

uint64_t sub_100013F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C70, &qword_100017D20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_10000400C(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_100018468;
  v10[5] = v9;
  sub_10001440C(0, 0, v7, &unk_100018478, v10);
}

uint64_t sub_100014090(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10001599C;

  return v7();
}

uint64_t sub_10001417C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_1000159C0(v6);

  return v8(v7);
}

uint64_t sub_100014220(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100013EA0;

  return v8();
}

uint64_t sub_100014308()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014348(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_100015A04(v7);
  *v8 = v9;
  v8[1] = sub_10001599C;

  return sub_100014220(a1, v3, v4, v6);
}

uint64_t sub_10001440C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000044BC(&unk_100025C70, &qword_100017D20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000146D8(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  if (sub_100007E1C(v12, 1, v13) == 1)
  {
    sub_100015884(v12, &unk_100025C70, &qword_100017D20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100015884(a3, &unk_100025C70, &qword_100017D20);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100015884(a3, &unk_100025C70, &qword_100017D20);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000146D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C70, &qword_100017D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014748(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014840;

  return v7(a1);
}

uint64_t sub_100014840()
{
  sub_100008100();
  sub_100015A14();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000159A0();
  *v4 = v3;

  sub_10000813C();

  return v5();
}

uint64_t sub_100014924()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001495C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100015A04(v3);
  *v4 = v5;
  v6 = sub_1000159E4(v4);

  return v7(v6);
}

uint64_t sub_1000149F4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100015A04(v3);
  *v4 = v5;
  v6 = sub_1000159E4(v4);

  return v7(v6);
}

unint64_t sub_100014A8C()
{
  result = qword_100026588;
  if (!qword_100026588)
  {
    type metadata accessor for MusicSubscriptionOffer.Options();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026588);
  }

  return result;
}

uint64_t sub_100014AE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014BA8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1000158DC(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000047B0(v11);
  return v7;
}

unint64_t sub_100014BA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100014CA8(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100014CA8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100014CF4(a1, a2);
  sub_100014E0C(&off_100020E58);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100014CF4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100014EF0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100014E0C(uint64_t result)
{
  v2 = *(result + 16);
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100014F60(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100014EF0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000044BC(&qword_100026598, &qword_1000184B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100014F60(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000044BC(&qword_100026598, &qword_1000184B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100015080(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  sub_100015A20();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100015188(a1, a2, v6);
}

unint64_t sub_1000150F4()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  sub_100015A2C();
  v2 = Hasher._finalize()();

  return sub_10001523C(v2);
}

unint64_t sub_100015144(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100015268(a1, v4);
}

unint64_t sub_100015188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10001523C(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_100015268(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100015938(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_1000108D0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10001532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100015080(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    v12 = *(*v4 + 24);
    sub_1000044BC(&qword_100026590, &unk_1000184A8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
    v13 = *(*(v20 + 48) + 16 * v9 + 8);

    v14 = *(v20 + 56);
    v15 = _s7ContextVMa();
    sub_10000DDA8(v14 + *(*(v15 - 8) + 72) * v9, a3);
    _NativeDictionary._delete(at:)();
    *v4 = v20;
    v16 = a3;
    v17 = 0;
    v18 = v15;
  }

  else
  {
    v18 = _s7ContextVMa();
    v16 = a3;
    v17 = 1;
  }

  return sub_10000400C(v16, v17, 1, v18);
}

unint64_t sub_100015460(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000150F4();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_1000044BC(&qword_100025A28, &qword_1000179E0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_1000150F4();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = (*(v19 + 56) + 16 * v14);
    v21 = v20[1];
    *v20 = a1;
    v20[1] = a2;
  }

  else
  {

    return sub_1000156D8(v14, a1, a2, v19);
  }
}

uint64_t sub_100015580(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100015080(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_1000044BC(&qword_100026590, &unk_1000184A8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_100015080(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = v22 + *(*(_s7ContextVMa() - 8) + 72) * v16;

    return sub_1000157B0(a1, v23);
  }

  else
  {
    sub_100015718(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_1000156D8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (result >> 6) + 64) |= 1 << result;
  v4 = (*(a4 + 56) + 16 * result);
  *v4 = a2;
  v4[1] = a3;
  v5 = *(a4 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v7;
  }

  return result;
}

uint64_t sub_100015718(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = _s7ContextVMa();
  result = sub_10000DDA8(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1000157B0(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContextVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015884(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000044BC(a2, a3);
  sub_1000159B0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1000158DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000159C0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1000159E4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100015A2C()
{

  return String.hash(into:)();
}

void sub_100015A4C()
{
  v1 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for MusicSubscriptionOffer.Options();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s7ContextVMa();
  sub_100015CC8(v0 + *(v10 + 28), v4);
  if (sub_100007E1C(v4, 1, v5) == 1)
  {
    sub_100015D38(v4);
    if (qword_100025820 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100004504(v11, qword_1000266F8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Skipping fetching marketing item due to nil options.", v14, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v15 = v0[3];
    v16 = v0[4];
    v17 = v0[2];
    sub_100002188(v9, v15, v16);
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t _s7ContextVMa()
{
  result = qword_1000265F8;
  if (!qword_1000265F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100015CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015D38(uint64_t a1)
{
  v2 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015DB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
    v9 = a1 + *(a3 + 28);

    return sub_100007E1C(v9, a2, v8);
  }
}

uint64_t sub_100015E5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
    v8 = v5 + *(a4 + 28);

    return sub_10000400C(v8, a2, a2, v7);
  }

  return result;
}

void sub_100015EE8()
{
  _s19MarketingItemLoaderCMa();
  if (v0 <= 0x3F)
  {
    sub_100015FE4();
    if (v1 <= 0x3F)
    {
      sub_100016034(319, &qword_1000258B0, &type metadata accessor for MusicSubscriptionOffer.Options);
      if (v2 <= 0x3F)
      {
        sub_100016034(319, &unk_100026610, _s14ViewControllerCMa);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100015FE4()
{
  if (!qword_100026608)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100026608);
    }
  }
}

void sub_100016034(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}