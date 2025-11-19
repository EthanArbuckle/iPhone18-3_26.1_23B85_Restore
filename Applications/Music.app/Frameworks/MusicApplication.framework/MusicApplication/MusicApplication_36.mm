void sub_30D850()
{
  v1 = *(v0 + qword_DFE528);
  swift_beginAccess();
  v10 = v1;
  v2 = *(v1 + 80);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_130800(*(v2 + 16), 0);
    v5 = sub_131344(&v11, v4 + 32, v3, v2);
    swift_bridgeObjectRetain_n();
    sub_2BB88();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v11 = v4;
  sub_426D20(&v11);

  v6 = v11;
  v7 = sub_30C4B8();
  v8 = *(*(sub_208918() + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar);
  *&v8[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_sources] = v6;
  v9 = v8;

  sub_295DE8();

  if (!sub_412FC0(v7, v6))
  {
    if (!*(v6 + 2))
    {

      sub_30E554(v10 + 16, &v11);
      LOBYTE(v7) = Search.Configuration.defaultSource.getter();
      sub_30E5B0(&v11);
      goto LABEL_9;
    }

    LOBYTE(v7) = v6[32];
  }

LABEL_9:
  sub_30C53C(v7 & 1);
  sub_30D210();
}

void sub_30DA34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v32 - v4;
  v6 = type metadata accessor for Search.ResultContext(0);
  v7 = *(v6 - 1);
  v8 = __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v13 = sub_208934();
  v14 = v13[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading];
  v13[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading] = 0;
  v15 = v13;
  sub_34DA84(v14);

  v16 = sub_208918();
  v17 = [v16 text];
  if (v17)
  {
    v33 = v5;
    v18 = v17;
    sub_AB92A0();

    v19 = String.trim()();

    v20 = (v19._object >> 56) & 0xF;
    if ((v19._object & 0x2000000000000000) == 0)
    {
      v20 = v19._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v21 = sub_208934();
      Search.resultSnapshotController.getter();
      RequestResponse.Controller.revision.getter();

      v22 = v33;
      RequestResponse.Revision.content.getter(v33);

      v23 = *(v7 + 48);
      if (v23(v22, 1, v6) == 1)
      {
        type metadata accessor for Search.Item(0);
        sub_1D30D0();
        sub_30EF2C(&qword_DF4FB0, type metadata accessor for Search.Item);
        sub_AB5110();
        v24 = &v12[v6[7]];
        *(v24 + 1) = 0u;
        *(v24 + 2) = 0u;
        *v24 = 0u;
        v25 = &v12[v6[5]];
        *v25 = 0;
        *(v25 + 1) = 0;
        v12[v6[6]] = 1;
        *&v12[v6[8]] = 0;
        *&v12[v6[9]] = 0;
        v26 = &v12[v6[10]];
        *v26 = 0;
        *(v26 + 1) = 0;
        *(v26 + 2) = 0x7000000000000007;
        if (v23(v22, 1, v6) != 1)
        {
          sub_12E1C(v22, &unk_E00050);
        }
      }

      else
      {
        sub_30EF74(v22, v12, type metadata accessor for Search.ResultContext);
      }

      v31 = v12;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v21 = sub_208934();
  Search.recentlySearchedSnapshotController.getter();
  RequestResponse.Controller.revision.getter();

  RequestResponse.Revision.content.getter(v3);

  v27 = *(v7 + 48);
  if (v27(v3, 1, v6) == 1)
  {
    type metadata accessor for Search.Item(0);
    sub_1D30D0();
    sub_30EF2C(&qword_DF4FB0, type metadata accessor for Search.Item);
    sub_AB5110();
    v28 = &v10[v6[7]];
    *(v28 + 1) = 0u;
    *(v28 + 2) = 0u;
    *v28 = 0u;
    v29 = &v10[v6[5]];
    *v29 = 0;
    *(v29 + 1) = 0;
    v10[v6[6]] = 1;
    *&v10[v6[8]] = 0;
    *&v10[v6[9]] = 0;
    v30 = &v10[v6[10]];
    *v30 = 0;
    *(v30 + 1) = 0;
    *(v30 + 2) = 0x7000000000000007;
    if (v27(v3, 1, v6) != 1)
    {
      sub_12E1C(v3, &unk_E00050);
    }
  }

  else
  {
    sub_30EF74(v3, v10, type metadata accessor for Search.ResultContext);
  }

  v31 = v10;
LABEL_16:
  sub_34DF14(v31);
}

uint64_t sub_30DF5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = type metadata accessor for MetricsPageProperties();
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v16 - v9;
  v11 = sub_30C9C8();
  swift_beginAccess();
  sub_15F84((v11 + 17), v16, &qword_DFE5C0);
  if (*(&v16[0] + 1))
  {
    v18[6] = v16[6];
    v18[7] = v16[7];
    v18[8] = v16[8];
    v19 = v17;
    v18[2] = v16[2];
    v18[3] = v16[3];
    v18[4] = v16[4];
    v18[5] = v16[5];
    v18[0] = v16[0];
    v18[1] = v16[1];

    sub_30CEC8(v16);
    v12 = _s16MusicApplication6SearchC21ResultSnapshotRequestV2eeoiySbAE_AEtFZ_0(v18, v16);
    sub_30E458(v16);
    if ((v12 & 1) == 0)
    {

      MetricsEvent.PageRender.markPageDisappearanceAndRecordIfNecessary(with:)(0);

      sub_30CB98(v16);
      Search.resultSnapshotController.getter();
      RequestResponse.Controller.revision.getter();

      RequestResponse.Revision.content.getter(v4);

      sub_475B48(v4, 2, v10);
      sub_12E1C(v4, &unk_E00050);
      sub_30E4AC(v16);
      sub_30EEC4(v10, v8, type metadata accessor for MetricsPageProperties);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5C8);
      swift_allocObject();
      *(v1 + qword_DFE530) = MetricsEvent.PageRender.init(pageProperties:)(v8);

      sub_30EFDC(v10, type metadata accessor for MetricsPageProperties);
    }

    sub_30E458(v18);
  }

  else
  {
    sub_12E1C(v16, &qword_DFE5C0);
  }

  v13 = qword_DFE530;

  MetricsEvent.PageRender.markPageRequest()();

  v14 = *(v1 + v13);

  sub_30CEC8(v18);
  swift_beginAccess();
  sub_160B4(v18, v14 + 136, &qword_DFE5C0);
  swift_endAccess();
}

uint64_t sub_30E2B4()
{
}

id sub_30E2F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_30E350()
{
}

uint64_t sub_30E3B4()
{

  return swift_deallocObject();
}

uint64_t sub_30E604()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_30E63C()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_30E700(double a1)
{
  v3 = *(sub_AB3430() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_41C040(v4, v5, a1);
}

void sub_30E774()
{
  *(v0 + qword_DFE518) = 0;
  *(v0 + qword_DFE520) = 0;
  v1 = qword_DFE528;
  type metadata accessor for Search();
  swift_allocObject();
  *(v0 + v1) = Search.init()();
  *(v0 + qword_DFE530) = 0;
  *(v0 + qword_DFE538) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_30E834()
{
  v1 = *(v0 + qword_DFE518);
  *(v0 + qword_DFE518) = 1;
  sub_30BEA0(v1);

  return sub_208A54();
}

void sub_30E870()
{
  sub_208A6C();
  v1 = *(v0 + qword_DFE518);
  *(v0 + qword_DFE518) = 0;

  sub_30BEA0(v1);
}

uint64_t sub_30E8A8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    *v6 = 27;
    *(v6 + 1) = 0;
    v6[16] = 1;
    *(v6 + 3) = 0;
    *(v6 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_309680(v6, v23);
    sub_12E1C(v23, &qword_DF2BD0);
    sub_30EFDC(v6, type metadata accessor for Search.Event);
  }

  sub_30CFAC();
  sub_30CEC8(v23);
  countAndFlagsBits = v25._countAndFlagsBits;
  object = v25._object;

  sub_30E458(v23);
  v10 = String.trim()();
  sub_30CEC8(v23);
  v11 = v26;
  sub_30E458(v23);
  if ((countAndFlagsBits != v10._countAndFlagsBits || object != v10._object) && (sub_ABB3C0() & 1) == 0)
  {
    v12 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v12 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      if ((v11 & 1) == 0)
      {
        v13 = v10._object & 0x2000000000000000;
        v14 = (v10._object >> 56) & 0xF;
        v15 = v10._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        goto LABEL_18;
      }
    }

    else
    {
      v13 = v10._object & 0x2000000000000000;
      v14 = (v10._object >> 56) & 0xF;
      v15 = v10._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      if ((v10._object & 0x2000000000000000) != 0)
      {
        v16 = (v10._object >> 56) & 0xF;
      }

      else
      {
        v16 = v10._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!((v16 != 0) | v11 & 1))
      {
LABEL_18:
        if (v13)
        {
          v17 = v14;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          goto LABEL_23;
        }
      }
    }

    v18 = sub_208934();
    sub_3512A4();
  }

LABEL_23:
  sub_30CEC8(v23);

  v25 = v10;
  sub_30CF2C(v23);
  sub_30CEC8(v23);
  v26 = 0;
  sub_30CF2C(v23);
  v19 = sub_30DF5C();
  if (!v7)
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_30CEC8(v23);
    sub_160B4(v21, &v27, &unk_E00060);
    v19 = sub_30CF2C(v23);
  }

  sub_208A28(v19);
}

id sub_30EB44()
{
  v0 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v0);
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v2 = 1;
  swift_storeEnumTagMultiPayload();
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_309680(v2, v6);
  sub_12E1C(v6, &qword_DF2BD0);
  sub_30EFDC(v2, type metadata accessor for Search.Event);
  sub_30CEC8(v6);

  v8 = 0;
  v9 = 0xE000000000000000;
  sub_30CF2C(v6);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_30CEC8(v6);
  sub_160B4(v4, &v10, &unk_E00060);
  sub_30CF2C(v6);
  return sub_208A2C();
}

uint64_t sub_30EC74()
{
  v0 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v2 = 2;
  swift_storeEnumTagMultiPayload();
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  sub_309680(v2, &v4);
  sub_12E1C(&v4, &qword_DF2BD0);
  sub_30EFDC(v2, type metadata accessor for Search.Event);
  *v2 = 0;
  v2[40] = 0;
  swift_storeEnumTagMultiPayload();
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  sub_309680(v2, &v4);
  sub_12E1C(&v4, &qword_DF2BD0);
  sub_30EFDC(v2, type metadata accessor for Search.Event);
  return 1;
}

uint64_t sub_30EE10()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_30EE48()
{

  return swift_deallocObject();
}

uint64_t sub_30EEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    return sub_2BBCC();
  }

  return result;
}

uint64_t sub_30EEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_30EF2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_30EF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_30EFDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_30F03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x4000000000000000) != 0)
  {
  }

  else
  {
    return sub_2BB90();
  }
}

uint64_t sub_30F04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0x7000000000000007) != 0)
  {
    return sub_30F064(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_30F064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x4000000000000000) != 0)
  {
  }

  else
  {
    return sub_2BBCC();
  }
}

unint64_t sub_30F074()
{
  result = qword_DFE5F8;
  if (!qword_DFE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE5F8);
  }

  return result;
}

void sub_30F140(uint64_t a1)
{
  v2 = v1;
  v50 = a1;
  ObjectType = swift_getObjectType();
  v51 = sub_AB4BC0();
  v4 = *(v51 - 8);
  v5 = __chkstk_darwin(v51);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = sub_AB3470();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = JSSubscriptionPurchaseSegue.buyParameters.getter();
  if (v15)
  {
    v48 = v14;
    v49 = v15;
    v47 = ObjectType;
    v16 = JSSubscriptionPurchaseCoordinator.shared.unsafeMutableAddressor();
    v17 = *v16;
    v18 = OBJC_IVAR____TtC11MusicJSCore33JSSubscriptionPurchaseCoordinator_processingPurchase;
    swift_beginAccess();
    if (v17[v18])
    {

      v19 = *OS_os_log.scripting.unsafeMutableAddressor();
      sub_AB4BD0();
      v20 = sub_AB4BA0();
      v21 = sub_AB9F30();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v20, v21, "[JSSubscriptionPurchase] A purchase attempt is in flight. Cannot complete subscription purchase.", v22, 2u);
      }

      (*(v4 + 8))(v9, v51);
      goto LABEL_23;
    }

    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v26 = sub_AB3440();
    v28 = v27;
    (*(v11 + 8))(v13, v10);
    v29 = *v16;
    JSSubscriptionPurchaseCoordinator.didBeginPurchase(for:identifier:)(v2, v26, v28);

    sub_30F7C4(v60);
    if (*&v60[0] == 1)
    {
      swift_unknownObjectWeakInit();
      v62[0] = 0;
      v62[1] = 0;
      swift_unknownObjectWeakAssign();
      v62[3] = 0;
      v62[4] = 0;
      v30 = v50;
      if (*&v60[0] != 1)
      {
        sub_12E1C(v60, &unk_DFE1E0);
      }

      sub_D5B6C();
      if (v31)
      {
LABEL_13:
        v32 = v31;
        static PresentationSource.topmost(in:)(&v52);

        if (v56 != 1)
        {
          sub_17704(&v52, v60);
          Strong = swift_unknownObjectWeakLoadStrong();
          sub_1611C(v60);
          swift_unknownObjectWeakAssign();

LABEL_18:
          if (qword_DE6A90 != -1)
          {
            swift_once();
          }

          sub_311CA4(v62, v60);
          swift_beginAccess();
          v34 = v2;
          sub_2E5AFC(v60, v34);
          swift_endAccess();
          if (JSSubscriptionPurchaseSegue.shouldShowLoadingIndicator.getter())
          {
            sub_30F890();
          }

          v35 = objc_allocWithZone(AMSBuyParams);
          v36 = sub_AB9260();
          v37 = [v35 initWithString:v36];

          sub_13C80(0, &qword_DEE560);
          v38 = static ICStoreRequestContext.storeFlow.getter();
          v39 = [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v38];

          v40 = v39;
          v20 = sub_311278(v37, v40, v26, v28, v34);

          v41 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_2D384(v30, v60);
          v42 = swift_allocObject();
          v43 = v60[1];
          *(v42 + 40) = v60[0];
          *(v42 + 16) = v41;
          *(v42 + 24) = v26;
          *(v42 + 32) = v28;
          *(v42 + 56) = v43;
          *(v42 + 72) = v60[2];
          v44 = v47;
          *(v42 + 88) = v61;
          *(v42 + 96) = v44;
          *&v54 = sub_311D7C;
          *(&v54 + 1) = v42;
          *&v52 = _NSConcreteStackBlock;
          *(&v52 + 1) = 1107296256;
          *&v53 = sub_311FA0;
          *(&v53 + 1) = &block_descriptor_105;
          v45 = _Block_copy(&v52);

          [v20 addFinishBlock:v45];

          sub_3108D0(v62);
          _Block_release(v45);

          goto LABEL_23;
        }

LABEL_17:
        sub_12E1C(&v52, &unk_DEA520);
        goto LABEL_18;
      }
    }

    else
    {
      sub_9B098(v60, v62);
      v30 = v50;
      sub_D5B6C();
      if (v31)
      {
        goto LABEL_13;
      }
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v56 = 1;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    goto LABEL_17;
  }

  v23 = *OS_os_log.scripting.unsafeMutableAddressor();
  sub_AB4BD0();
  v20 = sub_AB4BA0();
  v24 = sub_AB9F30();
  if (os_log_type_enabled(v20, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v20, v24, "[JSSubscriptionPurchase] No buyParameters were set. Cannot complete subscription purchase.", v25, 2u);
  }

  (*(v4 + 8))(v7, v51);
LABEL_23:
}

uint64_t sub_30F7C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_DE6A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_DFE610;
  if (*(&dword_10 + off_DFE610) && (v4 = sub_2ECB8C(v1), (v5 & 1) != 0))
  {
    sub_311CA4(*&stru_20.segname[v3 + 16] + 40 * v4, a1);
  }

  else
  {
    *a1 = 1;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
  }

  return swift_endAccess();
}

void sub_30F890()
{
  v1 = v0;
  if (qword_DE6A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_DFE610;
  if (*(&dword_10 + off_DFE610) && (v3 = sub_2ECB8C(v1), (v4 & 1) != 0))
  {
    sub_311CA4(*&stru_20.segname[v2 + 16] + 40 * v3, &v14);
  }

  else
  {
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
  }

  swift_endAccess();
  if (v14 == 1)
  {
    sub_12E1C(&v14, &unk_DFE1E0);
  }

  else
  {
    v5 = v16;
    v6 = v16;
    sub_3108D0(&v14);
    if (v5)
    {

      return;
    }
  }

  type metadata accessor for JSSubscriptionPurchaseLoadingViewController();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_30F7C4(v13);
  if (v13[0] == 1)
  {
    swift_unknownObjectWeakInit();
    v14 = 0;
    *&v15 = 0;
    swift_unknownObjectWeakAssign();
    v16 = 0uLL;
    if (v13[0] != 1)
    {
      sub_12E1C(v13, &unk_DFE1E0);
    }
  }

  else
  {
    sub_9B098(v13, &v14);
  }

  v8 = v16;
  v9 = v7;

  *&v16 = v7;
  sub_311CA4(&v14, v13);
  swift_beginAccess();
  v10 = v1;
  sub_2E5AFC(v13, v10);
  swift_endAccess();
  sub_13C80(0, &qword_DE8ED0);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = v10;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_311DE8, v11);

  sub_3108D0(&v14);
}

uint64_t sub_30FAEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_30FDE0(a1, a2, a4, a5);
    if (JSSubscriptionPurchaseSegue.shouldShowLoadingIndicator.getter())
    {
      sub_414AFC(&v23);
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = a7;
      v15 = v13;
      sub_30F7C4(v22);
      if (*v22 == 1)
      {
        sub_12E1C(v22, &unk_DFE1E0);
      }

      else
      {
        v16 = *&v22[24];
        v17 = *&v22[24];
        sub_3108D0(v22);
        if (v16)
        {
          sub_13C80(0, &qword_DE8ED0);
          sub_311E30(&v23, v22);
          v18 = swift_allocObject();
          *(v18 + 16) = v17;
          *(v18 + 24) = v15;
          *(v18 + 32) = sub_311E28;
          *(v18 + 40) = v14;
          v19 = *&v22[16];
          *(v18 + 48) = *v22;
          *(v18 + 64) = v19;
          *(v18 + 80) = *&v22[32];
          v20 = v15;
          v21 = v17;

          static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_311EF8, v18);

          sub_12E1C(&v23, &unk_DE8E30);
        }
      }

      if (qword_DE6A90 != -1)
      {
        swift_once();
      }

      *v22 = 1;
      memset(&v22[8], 0, 32);
      swift_beginAccess();
      sub_2E5AFC(v22, v15);
      swift_endAccess();
      sub_12E1C(&v23, &unk_DE8E30);
    }

    if (qword_DE6A90 != -1)
    {
      swift_once();
    }

    v23 = 1;
    v24 = 0u;
    v25 = 0u;
    swift_beginAccess();
    sub_2E5AFC(&v23, v13);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_30FDE0(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    if (!a1)
    {
      v14 = sub_97420(_swiftEmptyArrayStorage);
      goto LABEL_19;
    }

    v13 = [a1 error];
    if (!v13)
    {
      v23 = objc_opt_self();
      v24 = a1;
      v25 = [v23 sharedController];
      [v25 refreshMusicSubscriptionStatus];

      v26 = sub_310168();
      if (v26)
      {
        v27 = v26;
        v28 = v24;
        v27(a1, 0);

        sub_17654(v27);
      }

      else
      {
      }

      v14 = sub_97420(_swiftEmptyArrayStorage);
      v15 = v24;
      goto LABEL_11;
    }

    v10 = v13;
  }

  swift_errorRetain();
  v11 = sub_310168();
  if (v11)
  {
    v12 = v11;
    swift_errorRetain();
    v12(v10, 1);

    sub_17654(v12);
  }

  else
  {
  }

  v14 = sub_97420(_swiftEmptyArrayStorage);
  if (!a1)
  {
    goto LABEL_19;
  }

  v15 = a1;
LABEL_11:
  v16 = [v15 responseDictionary];
  if (v16)
  {
    v17 = v16;
    v18 = sub_AB8FF0();

    sub_ABAD10();
    if (*(v18 + 16) && (v19 = sub_2EC004(v29), (v20 & 1) != 0))
    {
      sub_808B0(*(v18 + 56) + 32 * v19, v30);
      sub_8085C(v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
      if (swift_dynamicCast())
      {

        v14 = 0xD000000000000012;
        goto LABEL_19;
      }
    }

    else
    {
      sub_8085C(v29);
    }
  }

LABEL_19:
  v21 = *JSSubscriptionPurchaseCoordinator.shared.unsafeMutableAddressor();
  JSSubscriptionPurchaseCoordinator.didCompletePurchase(for:identifier:subscriptionStatus:error:)(v5, a3, a4, v14, a2);
}

uint64_t sub_3100CC(void *a1)
{
  if (qword_DE6A90 != -1)
  {
    swift_once();
  }

  v3 = 1;
  v4 = 0u;
  v5 = 0u;
  swift_beginAccess();
  sub_2E5AFC(&v3, a1);
  return swift_endAccess();
}

uint64_t sub_310168()
{
  if (qword_DE6A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = off_DFE610;
  if (*(&dword_10 + off_DFE610) && (v2 = sub_2ECB8C(v0), (v3 & 1) != 0))
  {
    sub_311CA4(*&stru_20.segname[v1 + 16] + 40 * v2, &v6);
  }

  else
  {
    v6 = 1;
    v7 = 0u;
    v8 = 0u;
  }

  swift_endAccess();
  v4 = v6;
  if (v6 == 1)
  {
    sub_12E1C(&v6, &unk_DFE1E0);
    return 0;
  }

  else
  {
    sub_307CC(v6);
    sub_3108D0(&v6);
  }

  return v4;
}

void sub_310274(uint64_t a1, void *a2)
{
  sub_30F7C4(v9);
  if (v9[0] == 1)
  {
    sub_12E1C(v9, &unk_DFE1E0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_3108D0(v9);
    if (Strong)
    {
      UIViewController.add(_:)(a2);
    }
  }

  if ([a2 isViewLoaded])
  {
    sub_30F7C4(v9);
    if (v9[0] == 1)
    {
      sub_12E1C(v9, &unk_DFE1E0);
      return;
    }

    v4 = swift_unknownObjectWeakLoadStrong();
    sub_3108D0(v9);
    if (v4)
    {
      if ([v4 isViewLoaded])
      {
        v5 = [a2 view];
        if (v5)
        {
          v6 = v5;
          v7 = [v4 view];
          if (v7)
          {
            v8 = v7;
            [v7 bounds];
            [v6 setFrame:?];

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_3103F4(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a1;
  v10[4] = a3;
  v10[5] = a4;
  v11 = *&a1[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView];
  v12 = a2;
  v13 = a1;

  [v11 setAlpha:1.0];
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v29 = sub_311F4C;
  v30 = v15;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1B5EB4;
  v28 = &block_descriptor_51;
  v16 = _Block_copy(&aBlock);
  v17 = v13;

  v29 = sub_311F08;
  v30 = v10;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1811AC;
  v28 = &block_descriptor_54;
  v18 = _Block_copy(&aBlock);

  [v14 animateWithDuration:v16 animations:v18 completion:0.25];
  _Block_release(v18);
  _Block_release(v16);

  sub_311E30(a5, &v23);
  if (!v24)
  {
    return sub_12E1C(&v23, &unk_DE8E30);
  }

  sub_70DF8(&v23, &aBlock);
  __swift_project_boxed_opaque_existential_1(&aBlock, v28);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    _s30CollectionViewSelectionHandlerVMa();
    isa = sub_AB3770().super.isa;
    [v20 deselectItemAtIndexPath:isa animated:1];
  }

  return __swift_destroy_boxed_opaque_existential_0(&aBlock);
}

uint64_t sub_310670(uint64_t a1, uint64_t a2, UIViewController a3, uint64_t (*a4)(uint64_t))
{
  sub_30F7C4(v9);
  if (v9[0] == 1)
  {
    v6 = sub_12E1C(v9, &unk_DFE1E0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = sub_3108D0(v9);
    if (Strong)
    {
      UIViewController.remove(_:)(a3);
    }
  }

  return a4(v6);
}

int *sub_310718()
{
  result = sub_99394(_swiftEmptyArrayStorage);
  off_DFE610 = result;
  return result;
}

void JSSubscriptionPurchaseSegue.purchase(_:handle:completion:)(uint64_t a1, void *a2, void (*a3)(void, id), uint64_t a4)
{
  sub_30F7C4(v14);
  if (v14[0] == 1)
  {
    sub_12E1C(v14, &unk_DFE1E0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_3108D0(v14);
    if (Strong)
    {
      sub_13C80(0, &qword_DE8ED0);
      v8 = swift_allocObject();
      v8[2] = a2;
      v8[3] = Strong;
      v8[4] = a3;
      v8[5] = a4;
      v9 = a2;
      v10 = Strong;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_310A10, v8);

      return;
    }
  }

  v11 = sub_AB9260();
  v12 = sub_AB9260();
  v13 = AMSError();

  a3(0, v13);
}

{
  sub_30F7C4(v15);
  if (v15[0] == 1)
  {
    sub_12E1C(v15, &unk_DFE1E0);
  }

  else
  {
    v7 = v16;
    v8 = v16;
    sub_3108D0(v15);
    if (v7)
    {
      sub_13C80(0, &qword_DE8ED0);
      v9 = swift_allocObject();
      v9[2] = a2;
      v9[3] = v8;
      v9[4] = a3;
      v9[5] = a4;
      v10 = v8;
      v11 = a2;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_310CCC, v9);

      return;
    }
  }

  v12 = sub_AB9260();
  v13 = sub_AB9260();
  v14 = AMSError();

  a3(0, v14);
}

{
  sub_30F7C4(v19);
  if (v19[0] == 1)
  {
    sub_12E1C(v19, &unk_DFE1E0);
LABEL_6:
    v9 = sub_AB9260();
    v10 = sub_AB9260();
    v11 = AMSError();

    a3(0, v11);
    return;
  }

  v7 = v20;
  v8 = v20;
  sub_3108D0(v19);
  if (!v7)
  {
    goto LABEL_6;
  }

  sub_30F7C4(v19);
  if (v19[0] == 1)
  {
    sub_12E1C(v19, &unk_DFE1E0);
  }

  else
  {
    v12 = v21;
    swift_unknownObjectRetain();
    sub_3108D0(v19);
    if (v12)
    {
      sub_13C80(0, &qword_DE8ED0);
      v13 = swift_allocObject();
      v13[2] = a2;
      v13[3] = v12;
      v13[4] = v8;
      v13[5] = a3;
      v13[6] = a4;
      v14 = v8;
      swift_unknownObjectRetain();
      v15 = a2;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3110D0, v13);

      swift_unknownObjectRelease();

      return;
    }
  }

  v16 = sub_AB9260();
  v17 = sub_AB9260();
  v18 = AMSError();

  a3(0, v18);
}

void sub_310900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithRequest:a1 presentingViewController:a2];
  v7 = [v6 performAuthentication];
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_151E0;
  v9[3] = &block_descriptor_63_0;
  v8 = _Block_copy(v9);

  [v7 addFinishBlock:v8];
  _Block_release(v8);
}

void sub_310BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(AMSUIAlertDialogTask) initWithRequest:a1 presentingViewController:a2];
  v7 = [v6 present];
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_DBA68;
  v9[3] = &block_descriptor_60_1;
  v8 = _Block_copy(v9);

  [v7 addFinishBlock:v8];
  _Block_release(v8);
}

void sub_310F6C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_13C80(0, &qword_DFE688);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) initWithRequest:v12 bag:a2 presentingViewController:v11];

  swift_unknownObjectRelease();
  v14 = [v13 presentEngagement];
  v16[4] = a4;
  v16[5] = a5;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_311FA0;
  v16[3] = &block_descriptor_57_0;
  v15 = _Block_copy(v16);

  [v14 addFinishBlock:v15];
  _Block_release(v15);
}

void sub_3110EC(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t get_enum_tag_for_layout_string_s6ResultOySo011AMSPurchaseA0Cs5Error_pGIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_3111B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_31120C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_311278(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = [objc_allocWithZone(AMSPurchase) initWithPurchaseType:0 buyParams:a1];
  v8 = [objc_opt_self() ams_sharedAccountStore];
  v9 = [v8 ams_activeiTunesAccount];

  [v7 setAccount:v9];
  [v7 setRequiresAccount:1];
  [v7 setUserInitiated:1];
  v10 = JSSubscriptionPurchaseSegue.metricsOverlay.getter();
  if (v10)
  {
    sub_3E8814(v10);

    v11.super.isa = sub_AB8FD0().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  [v7 setMetricsOverlay:v11.super.isa];

  v12 = sub_AB9260();
  [v7 setLogUUID:v12];

  v13 = [objc_allocWithZone(AMSPurchaseTask) initWithPurchase:v7 bag:a2];
  [v13 setDelegate:a5];
  sub_30F7C4(v17);
  if (v17[0] == 1)
  {
    swift_unknownObjectWeakInit();
    v18[0] = 0;
    v18[1] = 0;
    swift_unknownObjectWeakAssign();
    v18[3] = 0;
    v19 = 0;
    if (v17[0] != 1)
    {
      sub_12E1C(v17, &unk_DFE1E0);
    }
  }

  else
  {
    sub_9B098(v17, v18);
  }

  v14 = a2;
  swift_unknownObjectRelease();
  v19 = a2;
  if (qword_DE6A90 != -1)
  {
    swift_once();
  }

  sub_311CA4(v18, v17);
  swift_beginAccess();
  sub_2E5AFC(v17, a5);
  swift_endAccess();
  v15 = [v13 performPurchase];

  sub_3108D0(v18);
  return v15;
}

void sub_311558(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  sub_30F7C4(v14);
  if (v14[0] == 1)
  {
    sub_12E1C(v14, &unk_DFE1E0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_3108D0(v14);
    if (Strong)
    {
      sub_13C80(0, &qword_DE8ED0);
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = Strong;
      v7[4] = sub_15AAE4;
      v7[5] = v5;
      v8 = a1;
      v9 = Strong;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_311FA8, v7);

      return;
    }
  }

  v10 = sub_AB9260();
  v11 = sub_AB9260();
  v12 = AMSError();

  v13 = sub_AB3040();
  (a3)[2](a3, 0, v13);
}

void sub_311740(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  sub_30F7C4(v15);
  if (v15[0] == 1)
  {
    sub_12E1C(v15, &unk_DFE1E0);
  }

  else
  {
    v6 = v16;
    v7 = v16;
    sub_3108D0(v15);
    if (v6)
    {
      sub_13C80(0, &qword_DE8ED0);
      v8 = swift_allocObject();
      v8[2] = a1;
      v8[3] = v7;
      v8[4] = sub_15A6E8;
      v8[5] = v5;
      v9 = v7;
      v10 = a1;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_311FA4, v8);

      return;
    }
  }

  v11 = sub_AB9260();
  v12 = sub_AB9260();
  v13 = AMSError();

  v14 = sub_AB3040();
  (a3)[2](a3, 0, v14);
}

void sub_311924(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  sub_30F7C4(v19);
  if (v19[0] == 1)
  {
    sub_12E1C(v19, &unk_DFE1E0);
LABEL_6:
    v8 = sub_AB9260();
    v9 = sub_AB9260();
    v10 = AMSError();

    v11 = sub_AB3040();
    (a3)[2](a3, 0, v11);

    goto LABEL_10;
  }

  v6 = v20;
  v7 = v20;
  sub_3108D0(v19);
  if (!v6)
  {
    goto LABEL_6;
  }

  sub_30F7C4(v19);
  if (v19[0] == 1)
  {
    sub_12E1C(v19, &unk_DFE1E0);
  }

  else
  {
    v12 = v21;
    swift_unknownObjectRetain();
    sub_3108D0(v19);
    if (v12)
    {
      sub_13C80(0, &qword_DE8ED0);
      v13 = swift_allocObject();
      v13[2] = a1;
      v13[3] = v12;
      v13[4] = v7;
      v13[5] = sub_15AAE4;
      v13[6] = v5;
      v14 = v7;
      swift_unknownObjectRetain();
      v15 = a1;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_311F78, v13);

      swift_unknownObjectRelease();

      return;
    }
  }

  v16 = sub_AB9260();
  v17 = sub_AB9260();
  v18 = AMSError();

  v11 = sub_AB3040();
  (a3)[2](a3, 0, v11);

LABEL_10:
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_311C6C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_311CDC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_311D14()
{

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 64);
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_311DA8()
{

  return swift_deallocObject();
}

uint64_t sub_311DF0()
{

  return swift_deallocObject();
}

uint64_t sub_311E30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_311EA0()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  }

  return swift_deallocObject();
}

uint64_t sub_311F14()
{

  return swift_deallocObject();
}

uint64_t MusicRecognitionModuleContextProvider.enabledState.getter()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = sub_AB9260();
  v5[4] = sub_312980;
  v5[5] = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_312988;
  v5[3] = &block_descriptor_106;
  v3 = _Block_copy(v5);

  [v1 getEnabledStateOfModuleWithIdentifier:v2 completionHandler:v3];
  _Block_release(v3);

  if (*(v0 + 40))
  {
    return 0;
  }

  else
  {
    return *(v0 + 32);
  }
}

void sub_3120E4()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = sub_AB9260();
  v4[4] = sub_312AC4;
  v5 = v0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_3FC190;
  v4[3] = &block_descriptor_4;
  v3 = _Block_copy(v4);

  [v1 requestEnableModuleWithIdentifier:v2 completionHandler:v3];
  _Block_release(v3);
}

uint64_t MusicRecognitionModuleContextProvider.stateChangeObserver.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MusicRecognitionModuleContextProvider.stateChangeObserver.modify(uint64_t *a1))(uint64_t a1, char a2)
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

void sub_31232C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_3123B0(uint64_t result)
{
  v2 = result;
  if ((*(v1 + 40) & 1) != 0 || *(v1 + 32) != result)
  {
    *(v1 + 32) = result;
    *(v1 + 40) = 0;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v2, ObjectType, v3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_312450(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB4BC0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v8);
  v12 = aBlock - v11 + 16;
  if (a2)
  {
    swift_errorRetain();
    v13 = *OS_os_log.scripting.unsafeMutableAddressor();
    sub_AB4BD0();
    swift_errorRetain();
    v14 = sub_AB4BA0();
    v15 = sub_AB9F30();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_ABB520();
      v20 = sub_425E68(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_0, v14, v15, "Attempt to enable Music Recognition module failed with error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);

      (*(v7 + 8))(v12, v6);
    }

    else
    {
      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    v21 = [objc_opt_self() sharedInstance];
    v22 = sub_AB9260();
    aBlock[4] = sub_312ADC;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_312988;
    aBlock[3] = &block_descriptor_8_1;
    v23 = _Block_copy(aBlock);

    [v21 getEnabledStateOfModuleWithIdentifier:v22 completionHandler:v23];
    _Block_release(v23);

    v24 = *OS_os_log.scripting.unsafeMutableAddressor();
    sub_AB4BD0();
    v25 = sub_AB4BA0();
    v26 = sub_AB9F50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = a1 & 1;
      _os_log_impl(&dword_0, v25, v26, "Attempt to enable Music Recognition module: %{BOOL}d", v27, 8u);
    }

    (*(v7 + 8))(v10, v6);
  }
}

void sub_312818(uint64_t a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3123B0(a1);
  v6 = *OS_os_log.scripting.unsafeMutableAddressor();
  sub_AB4BD0();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_0, v7, v8, "Music recognition enabled state = %lu", v9, 0xCu);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_312988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MusicRecognitionModuleContextProvider.__deallocating_deinit()
{
  sub_176DC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_312A4C@<X0>(uint64_t *a1@<X8>)
{
  result = MusicRecognitionModuleContextProvider.enabledState.getter();
  *a1 = result;
  return result;
}

id sub_312C24()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for JSBiographyViewController();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  v4 = sub_3132E4();
  [v3 addSubview:v4];

  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = result;
  [result bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v20.origin.x = v7;
  v20.origin.y = v9;
  v20.size.width = v11;
  v20.size.height = v13;
  Width = CGRectGetWidth(v20);
  sub_471A4();
  if (sub_AB38F0())
  {
    v14 = *&v1[OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController____lazy_storage___biographyView];
    v15 = v14[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle];
    v14[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle] = 1;
    if (v15 != 1)
    {
      v16 = v14;
      [v16 setNeedsLayout];
      v17 = *&v16[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler];
      if (v17)
      {

        v17(v16);
        sub_17654(v17);
      }
    }

    sub_3135E8();
  }

  return sub_3135E8();
}

uint64_t sub_312E90(void *a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for JSBiographyViewController();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!a1 || v4 != [a1 horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [a1 preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {
  }

  v13 = sub_ABB3C0();

  if ((v13 & 1) == 0)
  {
LABEL_7:
    v14 = *&v1[OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_textDrawingCache];
    v15 = *(v14 + 64);

    [v15 removeAllObjects];
    [*(v14 + 80) removeAllObjects];
    if (*(v14 + 96))
    {
      *(v14 + 104) = 1;
    }

    else
    {
      v16 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v16 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v14];
    }

    return sub_3135E8();
  }

  return result;
}

uint64_t sub_313138(char a1, double a2)
{
  if (a1)
  {
    sub_471A4();
    v2 = sub_AB38F0();
    v3 = sub_3132E4();
    v4 = v3;
    v5 = v3[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle];
    if (v2)
    {
      v3[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle] = 2;
      if (v5 == 2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle] = 0;
      if (!v5)
      {
LABEL_14:

        return sub_3135E8();
      }
    }

    [v3 setNeedsLayout];
    v11 = *&v4[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler];
    if (v11)
    {

      v11(v4);
      sub_17654(v11);
    }

    goto LABEL_14;
  }

  v6 = sub_3132E4();
  v7 = v6;
  v8 = v6[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle];
  v6[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle] = 1;
  if (v8 != 1)
  {
    [v6 setNeedsLayout];
    v9 = *&v7[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler];
    if (v9)
    {

      v9(v7);
      sub_17654(v9);
    }
  }

  return sub_3135E8();
}

char *sub_3132E4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController____lazy_storage___biographyView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController____lazy_storage___biographyView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController____lazy_storage___biographyView);
  }

  else
  {
    v4 = sub_313348(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_313348(uint64_t a1)
{
  v1 = (*(&stru_B8.size + (swift_isaMask & **(a1 + OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_viewModel))))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v4 = 0;
    v27 = v2 & 0xFFFFFFFFFFFFFF8;
    v28 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v26 = v2;
    while (1)
    {
      if (v28)
      {
        v6 = sub_3608D8(v4, v2);
      }

      else
      {
        if (v4 >= *(v27 + 16))
        {
          goto LABEL_17;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = i;
      v10 = (*&stru_68.segname[swift_isaMask & *v6])();
      v12 = v11;
      v13 = (*(&stru_68.size + (swift_isaMask & *v7)))();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_6B7C8(0, *(v5 + 2) + 1, 1, v5);
      }

      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      if (v17 >= v16 >> 1)
      {
        v5 = sub_6B7C8((v16 > 1), v17 + 1, 1, v5);
      }

      *(v5 + 2) = v17 + 1;
      v18 = &v5[32 * v17];
      *(v18 + 4) = v10;
      *(v18 + 5) = v12;
      *(v18 + 6) = v13;
      *(v18 + 7) = v15;
      ++v4;
      i = v9;
      v19 = v8 == v9;
      v2 = v26;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_20:

  v20 = objc_allocWithZone(type metadata accessor for BiographyView());
  v21 = sub_160234(v5);
  v22 = *(a1 + OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_textDrawingCache);
  v23 = OBJC_IVAR____TtC16MusicApplication13BiographyView_textDrawingCache;
  swift_beginAccess();
  *&v21[v23] = v22;
  swift_retain_n();

  sub_160988();

  return v21;
}

uint64_t sub_3135E8()
{
  v1 = v0;
  result = [v0 isViewLoaded];
  if (result)
  {
    v3 = sub_3132E4();
    result = [v1 view];
    if (result)
    {
      v4 = result;
      [result bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v21.origin.x = v6;
      v21.origin.y = v8;
      v21.size.width = v10;
      v21.size.height = v12;
      [v3 sizeThatFits:{CGRectGetWidth(v21), 1.79769313e308}];
      v14 = v13;
      v16 = v15;

      type metadata accessor for CGSize(0);
      [v1 preferredContentSize];
      v19 = v17;
      v20 = v18;
      result = sub_AB38D0();
      if (result)
      {
        return [v1 setPreferredContentSize:{v14, v16, *&v14, *&v16, v19, v20}];
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_31374C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBiographyViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3138B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE900);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE908);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  *v5 = sub_AB6440();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE910);
  sub_313B84(v1, &v5[*(v9 + 44)]);
  KeyPath = swift_getKeyPath();
  v11 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE918) + 36)];
  *v11 = KeyPath;
  *(v11 + 1) = 3;
  v11[16] = 0;
  v12 = swift_getKeyPath();
  v13 = &v5[*(v3 + 44)];
  *v13 = v12;
  v13[8] = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB7A30();
  sub_AB5E90();
  sub_319B08(v5, v8);
  v14 = &v8[*(v6 + 36)];
  v15 = v19[6];
  *(v14 + 4) = v19[5];
  *(v14 + 5) = v15;
  *(v14 + 6) = v19[7];
  v16 = v19[2];
  *v14 = v19[1];
  *(v14 + 1) = v16;
  v17 = v19[4];
  *(v14 + 2) = v19[3];
  *(v14 + 3) = v17;
  sub_319B78();
  View.keyboardReactive()(v6);
  return sub_12E1C(v8, &qword_DFE908);
}

uint64_t sub_313B84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v86 = a1;
  v89 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE968) - 8;
  v3 = __chkstk_darwin(v88);
  v87 = &v76[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v6 = &v76[-v5];
  v93 = *v2;
  v105 = JSSocialLightIdentityCreator.title.getter();
  v106 = v7;
  v85 = sub_36A48();
  v8 = sub_AB6F20();
  v10 = v9;
  v12 = v11;
  sub_AB6BB0();
  v13 = sub_AB6E80();
  v15 = v14;
  LOBYTE(v2) = v16;

  sub_36B74(v8, v10, v12 & 1);

  sub_AB6BD0();
  v17 = sub_AB6E00();
  v19 = v18;
  LOBYTE(v10) = v20;
  sub_36B74(v13, v15, v2 & 1);

  sub_AB74D0();
  v91 = sub_AB6E10();
  v90 = v21;
  v23 = v22;
  v92 = v24;

  sub_36B74(v17, v19, v10 & 1);

  v95 = sub_AB6AC0();
  sub_AB5690();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v94 = v23 & 1;
  LOBYTE(v105) = v23 & 1;
  LOBYTE(v101) = 0;
  v105 = JSSocialLightIdentityCreator.subtitle.getter();
  v106 = v33;
  v34 = sub_AB6F20();
  v36 = v35;
  LOBYTE(v19) = v37;
  sub_AB6B90();
  v38 = sub_AB6E80();
  v40 = v39;
  v42 = v41;

  sub_36B74(v34, v36, v19 & 1);

  sub_AB6BF0();
  v43 = sub_AB6E00();
  v45 = v44;
  v47 = v46;
  sub_36B74(v38, v40, v42 & 1);

  sub_AB74E0();
  v82 = sub_AB6E10();
  v83 = v48;
  v84 = v49;
  v85 = v50;

  sub_36B74(v43, v45, v47 & 1);

  v51 = v86;
  v101 = *(v86 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE978);
  sub_AB7660();
  v81 = v105;
  v80 = v106;
  v79 = v107;
  v101 = *(v51 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980);
  sub_AB7660();
  v52 = v106;
  v78 = v105;
  v77 = v107;
  type metadata accessor for EnvironmentObjects(0);
  sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects);
  v53 = sub_AB5F20();
  v55 = v54;
  v56 = sub_AB7A30();
  v58 = v57;
  v59 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE990) + 36)];
  sub_314370(v59);
  v60 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE998) + 36));
  *v60 = v56;
  v60[1] = v58;
  v61 = v81;
  *v6 = v93;
  *(v6 + 1) = v61;
  *(v6 + 2) = v80;
  v6[24] = v79;
  *(v6 + 7) = *&v100[3];
  *(v6 + 25) = *v100;
  *(v6 + 4) = v78;
  *(v6 + 5) = v52;
  v6[48] = v77;
  *(v6 + 13) = *&v99[3];
  *(v6 + 49) = *v99;
  *(v6 + 7) = v53;
  *(v6 + 8) = v55;
  v98 = *(v51 + 1);
  v62 = *(&v98 + 1);
  v63 = sub_AB5490();
  v64 = &v6[*(v88 + 44)];
  *v64 = v63;
  v64[1] = v62;
  v65 = v87;
  sub_15F84(v6, v87, &unk_DFE968);
  v66 = v89;
  *v89 = 0x4034000000000000;
  *(v66 + 8) = 0;
  *&v101 = v91;
  *(&v101 + 1) = v90;
  LOBYTE(v102) = v94;
  *(&v102 + 1) = *v97;
  DWORD1(v102) = *&v97[3];
  *(&v102 + 1) = v92;
  LOBYTE(v103) = v95;
  *(&v103 + 1) = *v96;
  DWORD1(v103) = *&v96[3];
  *(&v103 + 1) = v26;
  *v104 = v28;
  *&v104[8] = v30;
  *&v104[16] = v32;
  v104[24] = 0;
  v67 = v101;
  v68 = v102;
  v69 = v103;
  *(v66 + 73) = *&v104[9];
  v70 = *v104;
  *(v66 + 3) = v69;
  *(v66 + 4) = v70;
  *(v66 + 1) = v67;
  *(v66 + 2) = v68;
  v71 = v82;
  v72 = v83;
  v66[12] = v82;
  v66[13] = v72;
  LOBYTE(v43) = v84 & 1;
  *(v66 + 112) = v84 & 1;
  v66[15] = v85;
  v66[16] = 0x403E000000000000;
  *(v66 + 136) = 0;
  v73 = v66;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9A0);
  sub_15F84(v65, v73 + *(v74 + 96), &unk_DFE968);
  sub_15F84(&v98, &v105, &qword_DFE9A8);
  sub_15F84(&v101, &v105, &qword_DFE9B0);
  sub_AFF30(v71, v72, v43);

  sub_12E1C(v6, &unk_DFE968);
  sub_12E1C(v65, &unk_DFE968);
  sub_36B74(v71, v72, v43);

  v105 = v91;
  v106 = v90;
  v107 = v94;
  *v108 = *v97;
  *&v108[3] = *&v97[3];
  v109 = v92;
  v110 = v95;
  *v111 = *v96;
  *&v111[3] = *&v96[3];
  v112 = v26;
  v113 = v28;
  v114 = v30;
  v115 = v32;
  v116 = 0;
  return sub_12E1C(&v105, &qword_DFE9B0);
}

double sub_314370@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EnvironmentObjects(0);
  sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects);
  sub_AB5B60();
  swift_getKeyPath();
  sub_AB5B70();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE978);
  sub_AB7660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980);
  sub_AB7660();
  UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor();

  ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)(v8, *(&v8 + 1), v9, v5, v6, v7, v5, v6, a1, v7, 0, 0, v1);

  sub_AB7A30();
  sub_AB5970();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9B8) + 36));
  *v2 = v8;
  v2[1] = v9;
  result = *&v10;
  v2[2] = v10;
  return result;
}

double sub_31455C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_314614@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA20);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA28);
  v9 = *(v34 - 8);
  v10 = __chkstk_darwin(v34);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v38 = a1;
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA38);
  sub_31A2C0();
  sub_36A00(&qword_DFEAB8, &qword_DFEA38);
  v14 = v13;
  v32 = v13;
  sub_AB6D10();
  *v8 = sub_AB6450();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEAC0);
  sub_315F3C(a1, &v8[*(v15 + 44)]);
  v16 = sub_AB6AC0();
  sub_AB5690();
  v17 = &v8[*(v4 + 44)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v22 = *(v9 + 16);
  v24 = v33;
  v23 = v34;
  v22(v33, v14, v34);
  v25 = v35;
  sub_15F84(v8, v35, &qword_DFEA20);
  v26 = v36;
  v22(v36, v24, v23);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEAC8);
  v28 = &v26[*(v27 + 48)];
  *v28 = 0x403E000000000000;
  v28[8] = 0;
  sub_15F84(v25, &v26[*(v27 + 64)], &qword_DFEA20);
  sub_12E1C(v8, &qword_DFEA20);
  v29 = *(v9 + 8);
  v29(v32, v23);
  sub_12E1C(v25, &qword_DFEA20);
  return (v29)(v24, v23);
}

uint64_t sub_314998@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB38);
  v4 = __chkstk_darwin(v3 - 8);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB40);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v45 = &v39 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v39 - v15;
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = swift_allocObject();
  v20 = *(a1 + 48);
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(a1 + 64);
  v21 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v21;
  sub_31A604(a1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB48);
  sub_36A00(&qword_DFEB50, &qword_DFEB48);
  v44 = v18;
  sub_AB7690();
  v22 = swift_allocObject();
  v23 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v23;
  *(v22 + 80) = *(a1 + 64);
  v24 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v24;
  sub_31A604(a1, v46);
  v41 = v16;
  sub_AB7690();
  if (*(a1 + 56))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    if (v46[0])
    {

      v25 = swift_allocObject();
      v26 = *(a1 + 48);
      *(v25 + 48) = *(a1 + 32);
      *(v25 + 64) = v26;
      *(v25 + 80) = *(a1 + 64);
      v27 = *(a1 + 16);
      *(v25 + 16) = *a1;
      *(v25 + 32) = v27;
      sub_31A604(a1, v46);
      v28 = v45;
      sub_AB7690();
      (*(v9 + 32))(v7, v28, v8);
      v29 = 0;
    }

    else
    {
      v29 = 1;
      v28 = v45;
    }

    (*(v9 + 56))(v7, v29, 1, v8);
    v30 = *(v9 + 16);
    v30(v28, v44, v8);
    v32 = v40;
    v31 = v41;
    v30(v40, v41, v8);
    v33 = v43;
    sub_15F84(v7, v43, &qword_DFEB38);
    v34 = v7;
    v35 = v42;
    v30(v42, v28, v8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB58);
    v30(&v35[*(v36 + 48)], v32, v8);
    sub_15F84(v33, &v35[*(v36 + 64)], &qword_DFEB38);
    sub_12E1C(v34, &qword_DFEB38);
    v37 = *(v9 + 8);
    v37(v31, v8);
    v37(v44, v8);
    sub_12E1C(v33, &qword_DFEB38);
    v37(v32, v8);
    return (v37)(v45, v8);
  }

  else
  {
    type metadata accessor for EnvironmentObjects(0);
    sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects);
    result = sub_AB5F00();
    __break(1u);
  }

  return result;
}

uint64_t sub_314FA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB60);
  sub_AB7800();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB68);
  sub_AB77F0();
  return sub_AB7800();
}

uint64_t sub_315074()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_36A48();
  return sub_AB75C0();
}

uint64_t sub_3151B4(uint64_t a1)
{
  if (*(a1 + 56))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_AB5520();
  }

  else
  {
    type metadata accessor for EnvironmentObjects(0);
    sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects);
    result = sub_AB5F00();
    __break(1u);
  }

  return result;
}

uint64_t sub_3152BC()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_36A48();
  return sub_AB75C0();
}

void *sub_3153F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB7540();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 56))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_AB5510();

    v23[1] = a1;
    v24 = a2;
    if (v76[0])
    {

LABEL_7:
      sub_AB7520();
      (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
      v23[0] = sub_AB7590();
      (*(v5 + 8))(v7, v4);

      sub_AB7A30();
      sub_AB5970();
      v78 = 1;
      *&v77[6] = *(&v79[7] + 6);
      *&v77[22] = *(&v79[8] + 6);
      *&v77[38] = *(&v79[9] + 6);
      v12 = sub_AB7A30();
      v14 = v13;
      v15 = sub_AB74B0();
      sub_AB7A30();
      sub_AB5970();
      *&v41[6] = *(&v79[10] + 6);
      *&v41[22] = *(&v79[11] + 6);
      *&v41[38] = *(&v79[12] + 6);
      sub_AB7480();
      v16 = sub_AB74C0();

      *&v42[0] = v15;
      WORD4(v42[0]) = 256;
      *(v42 + 10) = *v41;
      *(&v42[1] + 10) = *&v41[16];
      *(&v42[2] + 10) = *&v41[32];
      *(&v42[3] + 1) = *&v41[46];
      *&v43[0] = v16;
      *(v43 + 8) = xmmword_B09670;
      *(&v43[1] + 1) = 0x4018000000000000;
      *&v44 = v12;
      *(&v44 + 1) = v14;
      *(&v79[2] + 6) = v42[2];
      *(&v79[1] + 6) = v42[1];
      *(v79 + 6) = v42[0];
      *(&v79[6] + 6) = v44;
      *(&v79[5] + 6) = v43[1];
      *(&v79[4] + 6) = v43[0];
      *(&v79[3] + 6) = v42[3];
      v45 = v15;
      v46 = 256;
      *&v49[14] = *&v41[46];
      v48 = *&v41[16];
      *v49 = *&v41[32];
      v47 = *v41;
      v50 = v16;
      v51 = xmmword_B09670;
      v52 = 0x4018000000000000;
      v53 = v12;
      v54 = v14;
      sub_15F84(v42, v76, &qword_DFEAA0);
      sub_12E1C(&v45, &qword_DFEAA0);
      v17 = sub_AB7A30();
      v19 = v18;
      sub_315BD0(&v55);
      v37 = v67;
      v38 = v68;
      v39 = v69;
      LOBYTE(v40) = v70;
      v33 = v63;
      v34 = v64;
      v35 = v65;
      v36 = v66;
      v29 = v59;
      v30 = v60;
      v31 = v61;
      v32 = v62;
      *&v25[264] = v55;
      v26 = v56;
      v27 = v57;
      v28 = v58;
      v71[12] = v67;
      v71[13] = v68;
      v71[14] = v69;
      v71[8] = v63;
      v71[9] = v64;
      v71[10] = v65;
      v71[11] = v66;
      v71[4] = v59;
      v71[5] = v60;
      v71[6] = v61;
      v71[7] = v62;
      v71[0] = v55;
      v71[1] = v56;
      v71[2] = v57;
      v71[3] = v58;
      *&v71[15] = v40;
      *(&v71[15] + 1) = v17;
      *&v71[16] = v19;
      memcpy(v76, v71, sizeof(v76));
      v72[12] = v67;
      v72[13] = v68;
      v72[14] = v69;
      v72[8] = v63;
      v72[9] = v64;
      v72[10] = v65;
      v72[11] = v66;
      v72[4] = v59;
      v72[5] = v60;
      v72[6] = v61;
      v72[7] = v62;
      v72[0] = v55;
      v72[1] = v56;
      v72[2] = v57;
      v72[3] = v58;
      v73 = v40;
      v74 = v17;
      v75 = v19;
      sub_15F84(v71, v25, &qword_DFEAB0);
      sub_12E1C(v72, &qword_DFEAB0);
      v20 = *&v77[16];
      v21 = v24;
      *(v24 + 18) = *v77;
      *v21 = v23[0];
      *(v21 + 8) = 0;
      *(v21 + 16) = 1;
      *(v21 + 34) = v20;
      *(v21 + 50) = *&v77[32];
      *(v21 + 64) = *&v77[46];
      *(v21 + 72) = 256;
      *(v21 + 184) = *(&v79[6] + 14);
      *(v21 + 170) = v79[6];
      *(v21 + 154) = v79[5];
      *(v21 + 138) = v79[4];
      *(v21 + 74) = v79[0];
      *(v21 + 90) = v79[1];
      *(v21 + 106) = v79[2];
      *(v21 + 122) = v79[3];
      return memcpy((v21 + 192), v76, 0x108uLL);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    if (v76[0])
    {
      goto LABEL_7;
    }

    v8 = sub_AB9260();
    v9 = [objc_opt_self() systemImageNamed:v8];

    if (v9)
    {
      v10 = [objc_opt_self() configurationWithPointSize:80.0];
      v11 = [v9 imageByApplyingSymbolConfiguration:v10];

      if (v11)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    type metadata accessor for EnvironmentObjects(0);
    sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects);
    sub_AB5F00();
    __break(1u);
  }

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_315B64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

int64x2_t sub_315BD0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_AB7540();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB7530();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v21 = sub_AB7590();
  (*(v3 + 8))(v5, v2);

  sub_AB7A30();
  sub_AB5970();
  LOBYTE(v38) = 1;
  *&v24[3] = *&v24[27];
  *&v24[11] = *&v24[35];
  *&v24[19] = *&v24[43];
  v6 = sub_AB7480();
  KeyPath = swift_getKeyPath();
  v8 = sub_AB7A30();
  v10 = v9;
  v11 = sub_AB74B0();
  sub_AB7A30();
  sub_AB5970();
  *&v23[6] = *&v24[51];
  *&v23[22] = *&v24[59];
  *&v23[38] = *&v24[67];
  sub_AB7480();
  v12 = sub_AB74C0();

  *&v25[0] = v11;
  WORD4(v25[0]) = 256;
  *(v25 + 10) = *v23;
  *(&v25[1] + 10) = *&v23[16];
  *(&v25[2] + 10) = *&v23[32];
  *(&v25[3] + 1) = *&v23[46];
  *&v26[0] = v12;
  *(v26 + 8) = xmmword_B09670;
  *(&v26[1] + 1) = 0x4008000000000000;
  *&v27 = v8;
  *(&v27 + 1) = v10;
  v28 = v11;
  v38 = v25[0];
  v39 = v25[1];
  v43 = v26[1];
  v44 = v27;
  v41 = v25[3];
  v42 = v26[0];
  v40 = v25[2];
  v29 = 256;
  *&v32[14] = *&v23[46];
  v33 = v12;
  *v32 = *&v23[32];
  v31 = *&v23[16];
  v30 = *v23;
  v34 = xmmword_B09670;
  v35 = 0x4008000000000000;
  v36 = v8;
  v37 = v10;
  sub_15F84(v25, &v22, &qword_DFEAA0);
  sub_12E1C(&v28, &qword_DFEAA0);
  v13 = sub_AB6AA0();
  *a1 = v21;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = *v24;
  *(a1 + 34) = *&v24[8];
  *(a1 + 50) = *&v24[16];
  *(a1 + 64) = *&v24[23];
  *(a1 + 72) = KeyPath;
  *(a1 + 80) = v6;
  v14 = v38;
  v15 = v39;
  v16 = v41;
  *(a1 + 120) = v40;
  *(a1 + 104) = v15;
  *(a1 + 88) = v14;
  v17 = v42;
  v18 = v43;
  *(a1 + 184) = v44;
  *(a1 + 168) = v18;
  *(a1 + 152) = v17;
  *(a1 + 136) = v16;
  *(a1 + 200) = v13;
  result = vdupq_n_s64(0x4067C00000000000uLL);
  *(a1 + 208) = result;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return result;
}

uint64_t sub_315F3C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v151 = a2;
  *&v152 = a1;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEAD0);
  v141 = *(v145 - 8);
  __chkstk_darwin(v145);
  v129 = &v128 - v3;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB930);
  v140 = *(v144 - 8);
  __chkstk_darwin(v144);
  v135 = &v128 - v4;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEAE0);
  __chkstk_darwin(v131);
  v133 = &v128 - v5;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEAE8);
  __chkstk_darwin(v130);
  v134 = &v128 - v6;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEAF0);
  __chkstk_darwin(v132);
  v138 = &v128 - v7;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEAF8);
  __chkstk_darwin(v137);
  v142 = &v128 - v8;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB00);
  __chkstk_darwin(v139);
  v146 = &v128 - v9;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB08);
  __chkstk_darwin(v143);
  *&v150 = &v128 - v10;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEB10);
  v11 = __chkstk_darwin(v136);
  v158 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v149 = &v128 - v14;
  __chkstk_darwin(v13);
  v159 = &v128 - v15;
  v148 = *a1;
  *&v177 = JSSocialLightIdentityCreator.inputFieldTitle.getter();
  *(&v177 + 1) = v16;
  v147 = sub_36A48();
  v17 = sub_AB6F20();
  v19 = v18;
  v21 = v20;
  sub_AB6CB0();
  v22 = sub_AB6E80();
  v24 = v23;
  v26 = v25;

  sub_36B74(v17, v19, v21 & 1);

  sub_AB6BF0();
  v27 = sub_AB6E00();
  v29 = v28;
  v31 = v30;
  sub_36B74(v22, v24, v26 & 1);

  sub_AB74E0();
  v32 = sub_AB6E10();
  v155 = v33;
  v156 = v32;
  v35 = v34;
  v157 = v36;

  sub_36B74(v27, v29, v31 & 1);

  v37 = sub_AB6AA0();
  v153 = v35 & 1;
  v154 = v37;
  LOBYTE(v177) = v35 & 1;
  LOBYTE(v168) = 0;
  sub_AB6360();
  v38 = *(v152 + 56);
  v39 = *(v152 + 64);
  type metadata accessor for EnvironmentObjects(0);
  sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects);
  v128 = v39;
  sub_AB5EF0();
  swift_getKeyPath();
  sub_AB5F10();

  v40 = v129;
  sub_AB7B00();

  if (v38)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    v168 = v177;
    v41 = swift_allocObject();
    v42 = v152;
    v43 = *(v152 + 48);
    *(v41 + 48) = *(v152 + 32);
    *(v41 + 64) = v43;
    *(v41 + 80) = *(v42 + 64);
    v44 = *(v42 + 16);
    *(v41 + 16) = *v42;
    *(v41 + 32) = v44;
    sub_31A604(v42, &v177);
    sub_36A00(&qword_DFB9C8, &unk_DFEAD0);
    v45 = v135;
    v46 = v145;
    sub_AB7330();
    (*(v141 + 8))(v40, v46);

    v47 = sub_AB6B90();
    KeyPath = swift_getKeyPath();
    v49 = v133;
    (*(v140 + 32))(v133, v45, v144);
    v50 = (v49 + *(v131 + 36));
    *v50 = KeyPath;
    v50[1] = v47;
    v51 = swift_getKeyPath();
    v52 = v134;
    sub_36B0C(v49, v134, &qword_DFEAE0);
    v53 = v52 + *(v130 + 36);
    *v53 = v51;
    *(v53 + 8) = 0;
    LOBYTE(v51) = sub_AB6AD0();
    sub_AB5690();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v138;
    sub_36B0C(v52, v138, &qword_DFEAE8);
    v63 = v62 + *(v132 + 36);
    *v63 = v51;
    *(v63 + 8) = v55;
    *(v63 + 16) = v57;
    *(v63 + 24) = v59;
    *(v63 + 32) = v61;
    *(v63 + 40) = 0;
    v64 = sub_AB7480();
    v65 = swift_getKeyPath();
    v66 = v62;
    v67 = v142;
    sub_36B0C(v66, v142, &qword_DFEAF0);
    v68 = (v67 + *(v137 + 36));
    *v68 = v65;
    v68[1] = v64;
    sub_AB7A30();
    sub_AB5970();
    v69 = v67;
    v70 = v146;
    sub_36B0C(v69, v146, &qword_DFEAF8);
    v71 = (v70 + *(v139 + 36));
    v72 = v211;
    *v71 = v210;
    v71[1] = v72;
    v71[2] = v212;
    LODWORD(v64) = sub_AB6750();
    LOBYTE(v65) = sub_AB6AA0();
    v73 = v150;
    sub_36B0C(v70, v150, &qword_DFEB00);
    v74 = v73 + *(v143 + 36);
    *v74 = v64;
    *(v74 + 4) = 1048576000;
    *(v74 + 8) = v65;
    v75 = v149;
    v76 = &v149[*(v136 + 36)];
    v77 = *(sub_AB5E60() + 20);
    v78 = enum case for RoundedCornerStyle.continuous(_:);
    v79 = sub_AB63A0();
    (*(*(v79 - 8) + 104))(&v76[v77], v78, v79);
    __asm { FMOV            V0.2D, #8.0 }

    *v76 = _Q0;
    *&v76[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB20) + 36)] = 256;
    sub_36B0C(v73, v75, &qword_DFEB08);
    sub_36B0C(v75, v159, &unk_DFEB10);
    *&v177 = JSSocialLightIdentityCreator.inputFieldSubtitle.getter();
    *(&v177 + 1) = v85;
    v86 = sub_AB6F20();
    v88 = v87;
    LOBYTE(v77) = v89;
    sub_AB6CB0();
    v90 = sub_AB6E80();
    v92 = v91;
    LOBYTE(v73) = v93;

    sub_36B74(v86, v88, v77 & 1);

    sub_AB6BF0();
    v94 = sub_AB6E00();
    v148 = v95;
    v149 = v94;
    LOBYTE(v88) = v96;
    v98 = v97;
    sub_36B74(v90, v92, v73 & 1);

    v99 = swift_getKeyPath();
    v143 = v99;
    LOBYTE(v177) = v88 & 1;
    LOBYTE(v75) = v88 & 1;
    LODWORD(v142) = v88 & 1;
    LOBYTE(v168) = 0;
    v147 = sub_AB74E0();
    v146 = swift_getKeyPath();
    v144 = swift_getKeyPath();
    LODWORD(v145) = sub_AB6A90();
    sub_AB5690();
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v107 = v106;
    LOBYTE(v177) = 0;
    v108 = v158;
    sub_15F84(v159, v158, &unk_DFEB10);
    *&v165 = v156;
    *(&v165 + 1) = v155;
    LOBYTE(v166) = v153;
    *(&v166 + 1) = *v209;
    DWORD1(v166) = *&v209[3];
    *(&v166 + 1) = v157;
    LOBYTE(v167[0]) = v154;
    *(v167 + 1) = *v208;
    DWORD1(v167[0]) = *&v208[3];
    v152 = xmmword_AFB130;
    *(v167 + 8) = xmmword_AFB130;
    v150 = xmmword_B09680;
    *(&v167[1] + 8) = xmmword_B09680;
    BYTE8(v167[2]) = 0;
    v109 = v167[1];
    v110 = v151;
    v151[2] = v167[0];
    v110[3] = v109;
    *(v110 + 57) = *(&v167[1] + 9);
    v111 = v166;
    *v110 = v165;
    v110[1] = v111;
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB28);
    sub_15F84(v108, v110 + *(v112 + 48), &unk_DFEB10);
    v113 = v110 + *(v112 + 64);
    v114 = v148;
    v115 = v149;
    *&v168 = v149;
    *(&v168 + 1) = v148;
    LOBYTE(v169) = v75;
    *(&v169 + 1) = *v160;
    DWORD1(v169) = *&v160[3];
    v116 = v98;
    *(&v169 + 1) = v98;
    *&v170 = v99;
    *(&v170 + 1) = 3;
    LOBYTE(v171) = 0;
    *(&v171 + 1) = 256;
    *(&v171 + 3) = v161;
    BYTE7(v171) = v162;
    v118 = v146;
    v117 = v147;
    *(&v171 + 1) = v146;
    *&v172 = v147;
    v119 = v144;
    *(&v172 + 1) = v144;
    LOBYTE(v173) = 0;
    DWORD1(v173) = *&v164[3];
    *(&v173 + 1) = *v164;
    LOBYTE(v110) = v145;
    BYTE8(v173) = v145;
    *(&v173 + 9) = *v163;
    HIDWORD(v173) = *&v163[3];
    *&v174 = v101;
    *(&v174 + 1) = v103;
    *&v175 = v105;
    *(&v175 + 1) = v107;
    v176 = 0;
    v120 = v168;
    v121 = v169;
    v122 = v171;
    v123 = v172;
    *(v113 + 2) = v170;
    *(v113 + 3) = v122;
    *v113 = v120;
    *(v113 + 1) = v121;
    v124 = v173;
    v125 = v174;
    v126 = v175;
    v113[128] = 0;
    *(v113 + 6) = v125;
    *(v113 + 7) = v126;
    *(v113 + 4) = v123;
    *(v113 + 5) = v124;
    sub_15F84(&v165, &v177, &qword_DFE9B0);
    sub_15F84(&v168, &v177, &qword_DFEB30);
    sub_12E1C(v159, &unk_DFEB10);
    *&v177 = v115;
    *(&v177 + 1) = v114;
    v178 = v142;
    *v179 = *v160;
    *&v179[3] = *&v160[3];
    v180 = v116;
    v181 = v143;
    v182 = 3;
    v183 = 0;
    v184 = 256;
    v185 = v161;
    v186 = v162;
    v187 = v118;
    v188 = v117;
    v189 = v119;
    v190 = 0;
    *&v191[3] = *&v164[3];
    *v191 = *v164;
    v192 = v110;
    *&v193[3] = *&v163[3];
    *v193 = *v163;
    v194 = v101;
    v195 = v103;
    v196 = v105;
    v197 = v107;
    v198 = 0;
    sub_12E1C(&v177, &qword_DFEB30);
    sub_12E1C(v158, &unk_DFEB10);
    v199[0] = v156;
    v199[1] = v155;
    v200 = v153;
    *v201 = *v209;
    *&v201[3] = *&v209[3];
    v202 = v157;
    v203 = v154;
    *v204 = *v208;
    *&v204[3] = *&v208[3];
    v205 = v152;
    v206 = v150;
    v207 = 0;
    return sub_12E1C(v199, &qword_DFE9B0);
  }

  else
  {
    result = sub_AB5F00();
    __break(1u);
  }

  return result;
}

uint64_t sub_316E70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_316EE4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_316F64()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_316FE8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v4 == 32 && v5 == 0xE100000000000000;
  if (v6 || (result = sub_ABB3C0(), (result & 1) != 0))
  {
    if (*(a3 + 56))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_AB5520();
    }

    else
    {
      type metadata accessor for EnvironmentObjects(0);
      sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects);
      result = sub_AB5F00();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_3170E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_AB6440();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA18);
  return sub_314614(v7, (a1 + *(v5 + 44)));
}

void sub_317184()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA9F0);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - v8;
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E8);
  v10 = *(v19[0] - 8);
  __chkstk_darwin(v19[0]);
  v12 = v19 - v11;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "viewDidLoad");
  sub_317594();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  sub_60044();
  v13 = sub_ABA150();
  v19[1] = v13;
  v14 = sub_ABA130();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_36A00(&unk_DFE9F0, &qword_DFE9E0);
  sub_319DA0(&qword_DEA668, sub_60044);
  sub_AB5590();
  sub_12E1C(v5, &unk_DFA9F0);
  (*(v7 + 8))(v9, v6);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_36A00(&unk_DFEA00, &qword_DFE9E8);
  v15 = v19[0];
  v16 = sub_AB55C0();
  (*(v10 + 8))(v12, v15);

  *&v1[qword_DFE788] = v16;

  v17 = [v1 view];
  if (v17)
  {
    v18 = v17;
    [v17 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_317594()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF82B0;
  *(v2 + 32) = CNContactThumbnailImageDataKey;
  v42 = v2;
  v3 = objc_opt_self();
  v4 = CNContactThumbnailImageDataKey;
  v5 = [v3 descriptorForRequiredKeysForStyle:0];
  sub_AB9730();
  if (*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v42 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  v6 = [objc_allocWithZone(CNContactStore) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA10);
  isa = sub_AB9740().super.isa;
  *&v45[0] = 0;
  v8 = [v6 _ios_meContactWithKeysToFetch:isa error:v45];
  v9 = *&v45[0];

  if (v8)
  {
    v10 = [v3 stringFromContact:v8 style:0];
    if (v10)
    {
      v11 = v10;
      v12 = sub_AB92A0();
      v14 = v13;

      swift_getKeyPath();
      swift_getKeyPath();
      *&v45[0] = v12;
      *(&v45[0] + 1) = v14;

      sub_AB5520();
      v15 = &v1[qword_DFE798];
      *v15 = v12;
      v15[1] = v14;
    }

    else
    {
      if (qword_DE67A8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300);
      UnfairLock.locked<A>(_:)(sub_90048);
      v48 = v43[6];
      v49 = v43[7];
      v50 = v43[8];
      v51 = v44;
      v45[2] = v43[2];
      v45[3] = v43[3];
      v46 = v43[4];
      v47 = v43[5];
      v45[0] = v43[0];
      v45[1] = v43[1];
      if (sub_90064(v45) == 1)
      {
        v16 = 0;
        v17 = 0xE000000000000000;
      }

      else
      {
        v17 = *(&v46 + 1);
        v16 = v46;

        sub_12E1C(v43, &unk_E05300);
      }

      v18 = &v1[qword_DFE798];
      *v18 = v16;
      *(v18 + 1) = v17;
    }

    v19 = [v8 thumbnailImageData];
    if (v19)
    {
      v20 = v19;
      v21 = sub_AB3260();
      v23 = v22;

      v24 = objc_allocWithZone(UIImage);
      sub_90090(v21, v23);
      v25 = sub_AB3250().super.isa;
      v26 = [v24 initWithData:v25];

      sub_466B8(v21, v23);
      swift_getKeyPath();
      swift_getKeyPath();
      *&v45[0] = v26;

      v27 = v26;
      sub_AB5520();
      sub_466B8(v21, v23);
    }

    else
    {
      v28 = [v1 view];
      if (v28)
      {
        v29 = v28;

        v30 = [v29 effectiveUserInterfaceLayoutDirection];

        sub_318CF0();
        v31 = objc_allocWithZone(MusicMonogramArtworkToken);
        v32 = sub_AB9260();

        v33 = [v31 initWithFullName:v32 rightToLeft:v30 == &dword_0 + 1];

        if (v33)
        {
          v34 = [objc_opt_self() sharedMonogramArtworkDataSource];
          v35 = [objc_allocWithZone(MPArtworkCatalog) initWithToken:v33 dataSource:v34];
          [v35 setFittingSize:{250.0, 250.0}];
          v36 = [v1 traitCollection];
          [v36 displayScale];
          v38 = v37;

          [v35 setDestinationScale:v38];
          v39 = sub_AB9260();
          [v35 setCacheIdentifier:v39 forCacheReference:*&v1[qword_DFE7A0]];

          v40 = swift_allocObject();
          *(v40 + 16) = v1;
          v41 = v1;
          MPArtworkCatalog.requestImage(_:)(sub_319FB4, v40);
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {

    sub_AB3050();

    swift_willThrow();
  }
}

void sub_317C24(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = HIBYTE(v2) & 0xF;
      if ((v2 & 0x2000000000000000) == 0)
      {
        v5 = v1 & 0xFFFFFFFFFFFFLL;
      }

      sub_17FE5C(v5 != 0);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_317CC4(void *a1)
{
  v1 = a1;
  sub_317184();
}

id sub_317D0C()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  [result bounds];

  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v3 = result;
  [objc_opt_self() music_defaultLayoutInsetsInView:result];

  sub_ABA530();
  v5 = v4;
  sub_AB64B0();
  v7 = v6;
  [v0 preferredContentSize];
  if (v7 != v8)
  {
    [v0 preferredContentSize];
    [v0 setPreferredContentSize:?];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v9 != v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_AB5520();
  }

  return result;
}

void sub_317EE0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  sub_317D0C();
}

void sub_317F38(uint64_t a1)
{
  v2 = sub_AB7C10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C50();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_60044();
    v18 = sub_ABA150();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    aBlock[4] = sub_31A180;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_52;
    v13 = _Block_copy(aBlock);
    v17 = v6;
    v14 = v13;
    v16 = v11;
    swift_errorRetain();

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_319DA0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_36A00(&qword_DF06D0, &unk_DE9C30);
    sub_ABABB0();
    v15 = v18;
    sub_ABA160();

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v17);
    _Block_release(v14);
  }
}

void sub_318258(void *a1, uint64_t a2)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    [v6 setUserInteractionEnabled:1];

    if (a2)
    {
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v8 = sub_AB9260();

      v9 = [objc_opt_self() alertControllerWithTitle:v8 message:0 preferredStyle:1];

      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v10 = sub_AB9260();

      v11 = [objc_opt_self() actionWithTitle:v10 style:1 handler:0];

      [v9 addAction:v11];
      [a1 presentViewController:v9 animated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_3184A8(void (*a1)(uint64_t), uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v5 = HIBYTE(*(&v11 + 1)) & 0xFLL;
  if ((*(&v11 + 1) & 0x2000000000000000) == 0)
  {
    v5 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 setUserInteractionEnabled:0];

      a1(2);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510();

      v8 = v11;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = v11;
      if (qword_DE67A8 != -1)
      {
        swift_once();
      }

      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = a1;
      v10[4] = a2;

      sub_3821A0(&v11, sub_319A78, v10);

      sub_D3144(v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_318724();
  }
}

void sub_318724()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v3 = sub_AB9260();

  v4 = [objc_opt_self() alertControllerWithTitle:v3 message:0 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v5 = sub_AB9260();

  v6 = [objc_opt_self() actionWithTitle:v5 style:1 handler:0];

  [v4 addAction:v6];
  [v0 presentViewController:v4 animated:1 completion:0];
}

void sub_318930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_AB7C10();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_AB7C50();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_60044();
    v20 = sub_ABA150();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a1;
    v16[4] = a3;
    v16[5] = a4;
    aBlock[4] = sub_319ACC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_107;
    v17 = _Block_copy(aBlock);
    v19 = v15;
    swift_errorRetain();

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_319DA0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_36A00(&qword_DF06D0, &unk_DE9C30);
    sub_ABABB0();
    v18 = v20;
    sub_ABA160();

    (*(v8 + 8))(v10, v7);
    (*(v11 + 8))(v13, v21);
    _Block_release(v17);
  }
}

id sub_318C60(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = [a1 view];
  if (result)
  {
    v6 = result;
    v7 = 1;
    [result setUserInteractionEnabled:1];

    if (a2)
    {
      sub_318724();
      v7 = 0;
    }

    return a3(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_318CF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v0 = HIBYTE(*(&v5[0] + 1)) & 0xFLL;
  if ((*(&v5[0] + 1) & 0x2000000000000000) == 0)
  {
    v0 = *&v5[0] & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    return *&v5[0];
  }

  else
  {
    if (qword_DE67A8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300);
    UnfairLock.locked<A>(_:)(sub_31A7A4);
    v8 = v3[6];
    v9 = v3[7];
    v10 = v3[8];
    v11 = v4;
    v5[2] = v3[2];
    v5[3] = v3[3];
    v6 = v3[4];
    v7 = v3[5];
    v5[0] = v3[0];
    v5[1] = v3[1];
    if (sub_90064(v5) == 1)
    {
      return 0;
    }

    else
    {
      v2 = v6;

      sub_12E1C(v3, &unk_E05300);
      return v2;
    }
  }
}

uint64_t sub_318ED8(void *a1, char a2, void *a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    return swift_willThrowTypedImpl();
  }

  else
  {
    sub_60044();
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    *(v6 + 24) = a1;
    v7 = a3;
    sub_21A5DC(a1, 0);
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_31A000, v6);
  }
}

uint64_t sub_318FBC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = a2;
  return sub_AB5520();
}

uint64_t sub_31903C()
{
  sub_176DC(v0 + qword_DFE780);
}

uint64_t sub_3190B0(uint64_t a1)
{
  sub_176DC(a1 + qword_DFE780);
}

double sub_3191A4@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_319224()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_3192A0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_31931C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_AB5520();
}

uint64_t sub_319390()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__hostedWidth;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__name;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__userImage;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE9D0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__fallbackUserImage, v6);

  return swift_deallocClassInstance();
}

void sub_319528()
{
  sub_299798(319, &qword_DFE850);
  if (v0 <= 0x3F)
  {
    sub_299798(319, &qword_DFE858);
    if (v1 <= 0x3F)
    {
      sub_31964C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_31964C()
{
  if (!qword_DFE860[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E00030);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, qword_DFE860);
    }
  }
}

uint64_t sub_3196DC()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE9D0);
  v1 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__hostedWidth;
  v21 = 0;
  sub_AB54D0();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__name;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_AB54D0();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__userImage;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00030);
  sub_AB54D0();
  v15 = *(v1 + 32);
  v16 = v20;
  v15(v0 + v14, v3, v20);
  v17 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__fallbackUserImage;
  v21 = 0;
  sub_AB54D0();
  v15(v0 + v17, v3, v16);
  return v0;
}

uint64_t sub_319A00()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_319A38()
{

  return swift_deallocObject();
}

uint64_t sub_319A84()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_319B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_319B78()
{
  result = qword_DFE920;
  if (!qword_DFE920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFE908);
    sub_319C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE920);
  }

  return result;
}

unint64_t sub_319C04()
{
  result = qword_DFE928;
  if (!qword_DFE928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFE900);
    sub_319CBC();
    sub_36A00(&qword_DEDBF8, &qword_DFE960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE928);
  }

  return result;
}

unint64_t sub_319CBC()
{
  result = qword_DFE930;
  if (!qword_DFE930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFE918);
    sub_36A00(&qword_DFE938, &qword_DFE940);
    sub_36A00(&qword_DFE948, &unk_DFE950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE930);
  }

  return result;
}

uint64_t sub_319DA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_319DF0(void *a1)
{
  *(v1 + qword_DFE780 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_DFE788) = 0;
  v3 = qword_DFE790;
  type metadata accessor for EnvironmentObjects(0);
  swift_allocObject();
  *(v1 + v3) = sub_3196DC();
  v4 = (v1 + qword_DFE798);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = qword_DFE7A0;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v5) = swift_allocObject();
  sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects);

  a1;
  sub_AB5B50();
  sub_AB7630();
  sub_AB7630();
  return sub_AB64F0();
}

uint64_t sub_319F7C()
{

  return swift_deallocObject();
}

uint64_t sub_319FC0()
{

  return swift_deallocObject();
}

void sub_31A058()
{
  v1 = v0;
  *(v0 + qword_DFE780 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_DFE788) = 0;
  v2 = qword_DFE790;
  type metadata accessor for EnvironmentObjects(0);
  swift_allocObject();
  *(v0 + v2) = sub_3196DC();
  v3 = (v0 + qword_DFE798);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = qword_DFE7A0;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v4) = swift_allocObject();
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_31A140()
{

  return swift_deallocObject();
}

uint64_t sub_31A188(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_31A1D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_31A230()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFE908);
  sub_319B78();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_31A2C0()
{
  result = qword_DFEA40;
  if (!qword_DFEA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFEA30);
    sub_31A378();
    sub_36A00(&qword_DFEAA8, &qword_DFEAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEA40);
  }

  return result;
}

unint64_t sub_31A378()
{
  result = qword_DFEA48;
  if (!qword_DFEA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFEA50);
    sub_31A430();
    sub_36A00(&qword_DFEA98, &qword_DFEAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEA48);
  }

  return result;
}

unint64_t sub_31A430()
{
  result = qword_DFEA58;
  if (!qword_DFEA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFEA60);
    sub_31A4E8();
    sub_36A00(&qword_DEFED0, &qword_DFEA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEA58);
  }

  return result;
}

unint64_t sub_31A4E8()
{
  result = qword_DFEA68;
  if (!qword_DFEA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFEA70);
    sub_31A574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEA68);
  }

  return result;
}

unint64_t sub_31A574()
{
  result = qword_DFEA78;
  if (!qword_DFEA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DFEA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEA78);
  }

  return result;
}

uint64_t sub_31A64C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB5F80();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_61Tm()
{

  return swift_deallocObject();
}

void sub_31A7BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState] = 0x80;
  v5 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView;
  *&v2[v5] = [objc_allocWithZone(UIView) init];
  v6 = objc_opt_self();
  v7 = [v6 buttonWithType:1];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 systemGrayColor];
  [v9 setTintColor:v10];

  [v6 easyTouchDefaultHitRectInsets];
  [v9 setHitRectInsets:?];
  v11 = objc_opt_self();
  v12 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v13 = [v11 imageNamed:v12 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (v13)
  {
    v14 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_closeButton;
    [v9 setImage:v13 forState:0];

    *&v2[v14] = v9;
    v15 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_textDrawingCache;
    type metadata accessor for TextDrawing.Cache();
    swift_allocObject();
    *&v2[v15] = TextDrawing.Cache.init()();
    *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView] = 0;
    v16 = &v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
    type metadata accessor for InformativeView();
    *v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v16[1] = 0;
    *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_inlinePopup] = a1;
    v17 = a1;
    v18 = sub_31E0B0(v17);
    v19 = *v16;
    v20 = v16[1];
    *v16 = v18;
    v16[1] = v21;
    sub_31E2D0(v19, v20);
    v33.receiver = v2;
    v33.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", 0, 0);
    v23 = &v17[OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate];
    swift_beginAccess();
    *(v23 + 1) = &off_D0B9E0;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    v32.receiver = v22;
    v32.super_class = ObjectType;
    v24 = v22;

    v25 = objc_msgSendSuper2(&v32, "title");
    if (v25)
    {
      v26 = v25;
      v27 = sub_AB92A0();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = sub_AB9260();

    v31.receiver = v24;
    v31.super_class = ObjectType;
    objc_msgSendSuper2(&v31, "setTitle:", v30);

    sub_31AD8C(v27, v29);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_31AB50(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v13, "title");
  if (!v5)
  {
    v7 = 0;
    v9 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v6 = v5;
  v7 = sub_AB92A0();
  v9 = v8;

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_AB9260();

LABEL_6:
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "setTitle:", v10);

  sub_31AD8C(v7, v9);
}

void sub_31AD8C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40);
  __chkstk_darwin(v6 - 8);
  v8 = &v30[-v7];
  v34.receiver = v2;
  v34.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v34, "title");
  if (!v9)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_12;
  }

  v10 = v9;
  v11 = sub_AB92A0();
  v13 = v12;

  if (!a2)
  {

LABEL_12:
    v16 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView];
    if (v16)
    {
      v33.receiver = v2;
      v33.super_class = ObjectType;
      v17 = v16;
      v18 = objc_msgSendSuper2(&v33, "title");
      if (v18)
      {
        v19 = v18;
        v20 = sub_AB92A0();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v31 = v20;
      v32 = v22;
      sub_AB3550();
      v23 = sub_AB35C0();
      (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
      sub_36A48();
      v24 = sub_ABAA50();
      v26 = v25;
      sub_12E1C(v8, &qword_DEAC40);

      v27 = &v17[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
      swift_beginAccess();
      *v27 = v24;
      v27[1] = v26;

      v28 = *&v17[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

      v29 = String.trim()();

      swift_beginAccess();
      v28[7] = v29;

      sub_2EB704();
      [v17 setNeedsLayout];
    }

    return;
  }

  if (v11 == a1 && v13 == a2)
  {

    return;
  }

  v15 = sub_ABB3C0();

  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }
}

void sub_31B040()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = v5;
  if (qword_DE6AA0 != -1)
  {
    swift_once();
  }

  [v6 music_setLayoutInsets:{*&qword_DFEB90, *&qword_DFEB98, *&qword_DFEBA0, *&qword_DFEBA8}];

  v7 = [v1 view];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView];
  [v7 addSubview:v9];

  if (*&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView])
  {
    [v9 addSubview:?];
  }

  [v9 setClipsToBounds:1];
  [v9 _setContinuousCornerRadius:8.0];
  v10 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_closeButton];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_13C80(0, &qword_E0BC00);
  ControlEventHandling<>.on(_:handler:)(64, sub_31E738, v11, v12);

  [v9 addSubview:v10];
  v13 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  v14 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
  sub_31E280(v13, v14);
  sub_31B4E8(v13, v14);
  sub_31E2D0(v13, v14);
}

uint64_t sub_31B2AC()
{
  v0 = sub_AB3430();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_inlinePopup);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v8 = Strong, sub_12B2FC(), v10 = v9, v12 = v11, v8, v10))
    {
      ObjectType = swift_getObjectType();
      (*(v12 + 8))(ObjectType, v12);
      v15 = v14;
      swift_unknownObjectRelease();
      v16 = swift_getObjectType();
      v23 = 0;
      memset(v22, 0, sizeof(v22));
      sub_3B8F68();
      v17 = sub_21CCAC(1, v3, v22, v16, v15);
      (*(v1 + 8))(v3, v0);
      sub_12E1C(v22, &qword_DF2BD0);
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0;
    }

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      sub_12AFE8();
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    JSInlinePopup.didSelectCloseButton(snapshotImpressions:pageDetailsProvider:)(v17, v21);
  }

  return result;
}

void sub_31B4E8(unint64_t a1, void *a2)
{
  v3 = v2;
  sub_31D1B4(a1, a2, v2);
  if ((a1 & 0x8000000000000000) != 0)
  {
    v33 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView;
    v34 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView];
    if (v34)
    {
      v35 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView];
    }

    else
    {
      type metadata accessor for TitleSectionHeaderView();
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v34 = 0;
    }

    v42 = qword_DE6A98;
    v43 = v34;
    v44 = v35;
    if (v42 != -1)
    {
      swift_once();
    }

    [v44 music_setLayoutInsets:{0.0, 8.0, 0.0, *&qword_DFEB80 + 0.0 + 10.0 + 8.0}];

    v41 = *&v3[v33];
    *&v3[v33] = v44;
    v45 = v44;
    sub_31CC4C(v41);
  }

  else
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_inlinePopup];
    v6 = (v5 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_title);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
    v9 = (a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_title);
    v10 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_title);
    v11 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_title + 8);
    *v9 = v8;
    v9[1] = v7;

    sub_22E6D0(v10, v11);

    v12 = (v5 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_message);
    swift_beginAccess();
    v14 = *v12;
    v13 = v12[1];
    v15 = (a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_message);
    v16 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_message);
    v17 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_message + 8);
    *v15 = v14;
    v15[1] = v13;

    sub_22E7B0(v16, v17);

    v18 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_button;
    swift_beginAccess();
    v19 = *(v5 + v18);
    if (v19)
    {
      v20 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode);
      *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode) = 0;
      v21 = v19;
      v22 = sub_22EB10(v20);
      v23 = (*(&stru_68.size + (swift_isaMask & *v21)))(v22);
      v24 = (a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle);
      v25 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle);
      v26 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8);
      *v24 = v23;
      v24[1] = v27;
      sub_22E90C(v25, v26);

      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v21;
      v30 = (a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler);
      v31 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler);
      *v30 = sub_31E398;
      v30[1] = v29;
      v32 = v21;

      sub_17654(v31);
      sub_22EA2C();
    }

    else
    {
      v36 = (a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle);
      v37 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle);
      v38 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8);
      *v36 = 0;
      v36[1] = 0;
      sub_22E90C(v37, v38);

      v39 = (a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler);
      v40 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler);
      *v39 = 0;
      v39[1] = 0;
      sub_17654(v40);
      sub_22EA2C();
    }

    v41 = *&v3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView];
    *&v3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView] = 0;
    sub_31CC4C(v41);
  }

  if ([v3 isViewLoaded])
  {
    sub_31C49C();
    sub_31C210();
    v46 = [v3 view];
    if (v46)
    {
      v47 = v46;
      [v46 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_31B948(unsigned __int8 a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1 & 1);
  v3 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState] = a1;
  if ((*&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind] & 0x8000000000000000) != 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
    sub_69014(v4, v1[v3], v6, v7);
  }
}

void sub_31BA90(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillDisappear:", a1 & 1);
  v3 = a1 | 0x40;
  v4 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState;
  v5 = v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState] = v3;
  if ((*&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind] & 0x8000000000000000) != 0)
  {
    v6 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
    sub_69014(v5, v1[v4], v7, v8);
  }
}

void sub_31BB7C(char a1, SEL *a2, unsigned __int8 a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, *a2, a1 & 1);
  v7 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState;
  v8 = v3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState];
  v3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState] = a3;
  if ((*&v3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind] & 0x8000000000000000) != 0)
  {
    v9 = *&v3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
    sub_69014(v8, v3[v7], v10, v11);
  }
}

id sub_31BC74()
{
  v53.receiver = v0;
  v53.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v53, "viewDidLayoutSubviews");
  v1 = [v0 traitCollection];
  [v1 displayScale];

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  [result effectiveUserInterfaceLayoutDirection];

  result = [v0 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = result;
  [result music_inheritedLayoutInsets];
  v6 = v5;
  v8 = v7;

  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  [result bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  UIEdgeInsetsInsetRect(v11, v13, v15, v17, v6, v8);
  v18 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView];
  sub_ABA490();
  [v18 setFrame:?];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  if (qword_DE6A98 != -1)
  {
    swift_once();
  }

  v27 = *algn_DFEB88;
  rect = *&qword_DFEB80;
  v28 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView];
  if (v28)
  {
    v29 = v28;
    [v29 music_inheritedLayoutInsets];
    v32 = [v0 traitCollection];
    sub_18A8A8(v32, 6uLL, 0, 1);
    v34 = v33;
    v51 = v33;

    v54.origin.x = v20;
    v54.origin.y = v22;
    v54.size.width = v24;
    v54.size.height = v26;
    MinY = CGRectGetMinY(v54);
    v55.origin.x = v20;
    v55.origin.y = v22;
    v55.size.width = v24;
    v55.size.height = v34;
    CGRectGetHeight(v55);
    v56.origin.x = 0.0;
    v56.origin.y = 0.0;
    v56.size.width = rect;
    v56.size.height = v27;
    CGRectGetHeight(v56);
    sub_AB39F0();
    v37 = MinY + fmax(v36, 10.0);
    v57.origin.x = v20;
    v57.origin.y = v22;
    v57.size.width = v24;
    v57.size.height = v26;
    MaxX = CGRectGetMaxX(v57);
    v58.origin.x = 0.0;
    v58.origin.y = v37;
    v39 = v24;
    v40 = v20;
    v41 = v37;
    v58.size.width = rect;
    v58.size.height = v27;
    v42 = MaxX - (CGRectGetWidth(v58) + 10.0);
    v59.origin.x = v40;
    v59.origin.y = v22;
    v59.size.width = v39;
    v59.size.height = v51;
    MaxY = CGRectGetMaxY(v59);
    v60.origin.x = v42;
    v60.origin.y = v41;
    v60.size.width = rect;
    v60.size.height = v27;
    v44 = CGRectGetMaxY(v60);
    if (MaxY > v44)
    {
      v45 = MaxY;
    }

    else
    {
      v45 = v44;
    }

    v61.origin.x = v40;
    v61.origin.y = v45;
    v61.size.width = v39;
    v61.size.height = v26;
    CGRectGetMinY(v61);
    v62.origin.x = v40;
    v62.origin.y = v22;
    v62.size.width = v39;
    v62.size.height = v26;
    CGRectGetMinY(v62);
    sub_ABA490();
    [v29 setFrame:?];

    [v18 bringSubviewToFront:v29];
  }

  else
  {
    v63.origin.x = v20;
    v63.origin.y = v22;
    v63.size.width = v24;
    v63.size.height = v26;
    CGRectGetMaxX(v63);
    v64.origin.x = 0.0;
    v64.origin.y = 0.0;
    v64.size.width = rect;
    v64.size.height = v27;
    CGRectGetWidth(v64);
    v65.origin.x = v20;
    v65.origin.y = v22;
    v65.size.width = v24;
    v65.size.height = v26;
    CGRectGetMinY(v65);
  }

  v46 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_closeButton];
  sub_ABA490();
  [v46 setFrame:?];
  v47 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  if ((v47 & 0x8000000000000000) == 0)
  {
    v48 = v47;
LABEL_16:
    sub_ABA490();
    [v48 setFrame:?];

    return [v18 bringSubviewToFront:v46];
  }

  v49 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
  v50 = (v47 & 0x7FFFFFFFFFFFFFFFLL);
  result = [v49 view];
  if (result)
  {
    v48 = result;
    sub_31E2D0(v47, v49);
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_31C210()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  v4 = *(v2 + 1);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v8 = qword_DE6C78;
    v9 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = v4;
    if (v8 != -1)
    {
      swift_once();
    }

    v7 = [qword_E718B8 colorWithAlphaComponent:0.5];
  }

  else
  {
    v5 = qword_DE6C78;
    v6 = v3;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = qword_E718B8;
  }

  v18 = v7;
  sub_31E2D0(v3, v4);
  v11 = [v1 parentViewController];
  if (v11)
  {
    v12 = v11;
    if ([v11 isViewLoaded])
    {
      v13 = [v12 view];
      if (!v13)
      {
        __break(1u);
        return;
      }

      v14 = v13;
      v15 = [v13 backgroundColor];

      if (v15)
      {
        sub_13C80(0, qword_DFAAC0);
        v18 = v18;
        v16 = sub_ABA790();

        if (v16)
        {
          v17 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.5];

          v18 = v17;
        }
      }
    }
  }

  [*&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView] setBackgroundColor:v18];
}

void sub_31C49C()
{
  if (![v0 isViewLoaded])
  {
    return;
  }

  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
  sub_31E280(v1, v2);
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  [v3 music_inheritedLayoutInsets];

  sub_AB9E70();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v0 view];
  if (!v13)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  UIEdgeInsetsInsetRect(v16, v18, v20, v22, v6, v8);
  v25 = v23;
  if ((v1 & 0x8000000000000000) != 0)
  {
    swift_getObjectType();
    v28 = swift_conformsToProtocol2();
    v26 = 170.0;
    if (v28 && v2)
    {
      v29 = v2;
      v30 = [v29 traitCollection];
      sub_B2768(v30, v25);
      v32 = v31;

      v26 = v32 * 3.0;
    }
  }

  else
  {
    [v1 sizeThatFits:{v23, v24}];
    v25 = v27;
  }

  if (!*&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView])
  {
    goto LABEL_16;
  }

  v55 = v26;
  v56 = v8;
  v33 = [v0 view];
  if (!v33)
  {
    goto LABEL_21;
  }

  v34 = v33;
  [v33 music_inheritedLayoutInsets];

  if (qword_DE6A98 != -1)
  {
    swift_once();
  }

  v52 = v25;
  v53 = v10;
  v54 = v6;
  sub_AB9E70();
  v36 = v35;
  v38 = v37;
  v39 = [v0 view];
  if (!v39)
  {
    goto LABEL_22;
  }

  v40 = v39;
  [v39 bounds];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v49 = [v0 traitCollection];
  sub_18A8A8(v49, 6uLL, 0, 1);
  v51 = v50;

  v6 = v54;
  v26 = v55 + v51;
  v10 = v53;
  v8 = v56;
  v25 = v52;
LABEL_16:
  [v0 setPreferredContentSize:{v8 + v12 + v25, v6 + v10 + v26}];

  sub_31E2D0(v1, v2);
}

void sub_31C8F8(void *a1)
{
  v15.receiver = v1;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];
  if (a1 && v4 == [a1 horizontalSizeClass])
  {
    v5 = [v3 preferredContentSizeCategory];
    v6 = [a1 preferredContentSizeCategory];
    v7 = sub_AB92A0();
    v9 = v8;
    if (v7 == sub_AB92A0() && v9 == v10)
    {

      goto LABEL_10;
    }

    v12 = sub_ABB3C0();

    if (v12)
    {
LABEL_10:

      return;
    }
  }

  sub_31C49C();
  v13 = [v1 view];
  if (v13)
  {
    v14 = v13;
    [v13 setNeedsLayout];

    v3 = v14;
    goto LABEL_10;
  }

  __break(1u);
}

BOOL sub_31CAF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = *a1 >= 0 && v3 == v4;
  if (v3 < 0 && v3 == v4)
  {
    return a1[1] == a2[1];
  }

  return result;
}

void sub_31CB30()
{
  v0 = objc_opt_self();
  v1 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v4 = [v0 imageNamed:v1 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (v4)
  {
    [v4 size];
    qword_DFEB80 = v2;
    *algn_DFEB88 = v3;
  }

  else
  {
    __break(1u);
  }
}

double sub_31CC20()
{
  result = -1.0;
  qword_DFEB90 = 0x4030000000000000;
  qword_DFEB98 = 0xBFF0000000000000;
  qword_DFEBA0 = 0x4030000000000000;
  qword_DFEBA8 = 0xBFF0000000000000;
  return result;
}

void sub_31CC4C(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView;
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView];
  if (!v9)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    v10 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
    swift_beginAccess();
    *&a1[v10] = 0;
    v11 = a1;

    [v11 removeFromSuperview];

    v9 = *&v2[v8];
    if (!v9)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v9 == a1)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v12 = &v9[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
  swift_beginAccess();
  v29 = xmmword_B09CB0;
  *v12 = xmmword_B09CB0;
  v12[16] = 1;
  v13 = v9;
  sub_1846A0();
  v14 = &v13[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
  swift_beginAccess();
  *v14 = v29;
  v14[16] = 1;
  sub_1848CC();
  v15 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_textDrawingCache];
  v16 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
  swift_beginAccess();
  *&v13[v16] = v15;

  v32.receiver = v2;
  v32.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v32, "title");
  if (v17)
  {
    v18 = v17;
    v19 = sub_AB92A0();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  v30 = v19;
  v31 = v21;
  sub_AB3550();
  v22 = sub_AB35C0();
  (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
  sub_36A48();
  v23 = sub_ABAA50();
  v25 = v24;
  sub_12E1C(v7, &qword_DEAC40);

  v26 = &v13[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  *v26 = v23;
  v26[1] = v25;

  v27 = *&v13[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

  v28 = String.trim()();

  swift_beginAccess();
  v27[7] = v28;

  sub_2EB704();
  [v13 setNeedsLayout];
  if (qword_DE6C78 != -1)
  {
    swift_once();
  }

  [v13 setBackgroundColor:qword_E718B8];
  if ([v2 isViewLoaded])
  {
    [*&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView] addSubview:v13];
  }
}

void sub_31D00C(unint64_t a1, id a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (v5 == a1)
      {
        return;
      }

      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
LABEL_6:
    v6 = &selRef_removeFromSuperview;
LABEL_7:
    [a1 *v6];
    goto LABEL_8;
  }

  if (v5 != a1 || v4[1] != a2)
  {
LABEL_15:
    v10 = [a2 parentViewController];
    if (!v10 || (v11 = v10, v10, v11 != v2))
    {
LABEL_8:
      v7 = *v4;
      v8 = v4[1];
      sub_31E280(*v4, v8);
      sub_31B4E8(v7, v8);

      sub_31E2D0(v7, v8);
      return;
    }

    [a2 willMoveToParentViewController:0];
    if (![a2 isViewLoaded])
    {
      goto LABEL_28;
    }

    v12 = v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState];
    if (v12 >> 6)
    {
      if (v12 >> 6 == 1)
      {
LABEL_25:
        [a2 endAppearanceTransition];
LABEL_26:
        v13 = [a2 view];
        if (!v13)
        {
          __break(1u);
          return;
        }

        v14 = v13;
        [v13 removeFromSuperview];

LABEL_28:
        v6 = &selRef_removeFromParentViewController;
        a1 = a2;
        goto LABEL_7;
      }

      if (v12 == 128)
      {
        goto LABEL_26;
      }
    }

    else
    {
      [a2 endAppearanceTransition];
    }

    [a2 beginAppearanceTransition:0 animated:0];
    goto LABEL_25;
  }
}

void sub_31D1B4(unint64_t a1, id a2, char *a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v10 = [a2 parentViewController];
    if (!v10 || (v11 = v10, v10, v11 != a3))
    {
      [a3 addChildViewController:a2];
      [a2 didMoveToParentViewController:a3];
    }

    if (([a3 isViewLoaded] & 1) == 0)
    {
      goto LABEL_21;
    }

    v12 = [a2 view];
    v13 = [a3 view];
    v14 = v13;
    if (v12)
    {

      if (v14)
      {

        if (v12 == v14)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    v15 = *&a3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView];
    v16 = [a2 view];
    if (!v16)
    {
LABEL_43:
      __break(1u);
      return;
    }

    v17 = v16;
    [v15 addSubview:v16];

    v18 = a3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState];
    if (v18 != 128)
    {
      if (v18 >> 6)
      {
        if (v18 >> 6 != 1)
        {
          [a2 beginAppearanceTransition:1 animated:0];
          [a2 endAppearanceTransition];
        }
      }

      else
      {
        [a2 beginAppearanceTransition:1 animated:v18 & 1];
      }
    }

    v29 = [a2 contentScrollView];
    goto LABEL_24;
  }

  if ([a3 isViewLoaded])
  {
    v6 = [a3 view];
    if (!v6)
    {
      __break(1u);
      goto LABEL_41;
    }

    v7 = v6;
    v8 = [a1 isDescendantOfView:v6];

    if ((v8 & 1) == 0)
    {
      [*&a3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView] addSubview:a1];
      v9 = [objc_opt_self() clearColor];
      [a1 setBackgroundColor:v9];

      v29 = 0;
LABEL_24:
      v19 = 1;
      goto LABEL_25;
    }
  }

LABEL_21:
  v19 = 0;
  v29 = 0;
LABEL_25:
  v20 = [a3 isViewLoaded];
  if (v19 && v20)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v21 = a1;
LABEL_30:
      v22 = objc_opt_self();
      v23 = [v22 clearColor];
      [v21 setBackgroundColor:v23];

      if (v29)
      {
        v24 = [v22 clearColor];
        [v29 setBackgroundColor:v24];
      }

      if ((a1 & 0x8000000000000000) == 0)
      {
        v25 = a1;
        v26 = 20.0;
        v27 = 24.0;
LABEL_36:
        [v25 music_setLayoutInsets:{0.0, v27, v26, v27}];

        goto LABEL_37;
      }

      v28 = [a2 view];
      if (v28)
      {
        v25 = v28;
        v26 = 0.0;
        v27 = 8.0;
        goto LABEL_36;
      }

      goto LABEL_42;
    }

    v21 = [a2 view];
    if (v21)
    {
      goto LABEL_30;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_37:
}

void sub_31D584(uint64_t a1, void *a2)
{
  v3 = sub_AB3430();
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB3820();
  v71 = *(v6 - 8);
  __chkstk_darwin(v6);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v20 - 8);
  v72 = &v61 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v23 = Strong;
  v67 = v6;
  v62 = v5;
  v69 = v8;
  v70 = a2;
  v68 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v24 = v23;
  v25 = [v24 view];
  if (!v25)
  {
    __break(1u);
    return;
  }

  v26 = v25;
  sub_D5958(v79);
  v27 = v80;
  v28 = v81;
  v29 = v82;

  v83[0] = v79[0];
  v83[1] = v79[1];
  v84 = v27;
  v85 = v28;
  v86 = v29;
  PresentationSource.init(viewController:position:)(v24, v83, v78);
  v30 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v76, 0, sizeof(v76));
  v77 = 0;
  (*(*(v30 - 8) + 56))(v72, 1, 1, v30);
  sub_15F84(v76, &v73, &unk_DE8E30);
  v66 = v24;
  if (*(&v74 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v31 = _s30CollectionViewSelectionHandlerVMa();
    v32 = swift_dynamicCast();
    v33 = *(v31 - 8);
    (*(v33 + 56))(v13, v32 ^ 1u, 1, v31);
    v34 = (*(v33 + 48))(v13, 1, v31);
    v35 = v67;
    v36 = v71;
    if (v34 != 1)
    {
      (*(v71 + 16))(v19, &v13[*(v31 + 20)], v67);
      sub_2D6C0(v13, _s30CollectionViewSelectionHandlerVMa);
      v37 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    sub_12E1C(&v73, &unk_DE8E30);
    v38 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v38 - 8) + 56))(v13, 1, 1, v38);
    v35 = v67;
    v36 = v71;
  }

  sub_12E1C(v13, &qword_E037A0);
  v37 = 1;
LABEL_8:
  v39 = v69;
  (*(v36 + 56))(v19, v37, 1, v35);
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40 && (v41 = v40, sub_12B2FC(), v43 = v42, v45 = v44, v41, v43))
  {
    ObjectType = swift_getObjectType();
    (*(v45 + 8))(ObjectType, v45);
    v48 = v47;
    swift_unknownObjectRelease();
    sub_15F84(v19, v17, &unk_DE8E20);
    if ((*(v36 + 48))(v17, 1, v35) == 1)
    {
      sub_12E1C(v17, &unk_DE8E20);
      v73 = 0u;
      v74 = 0u;
      v75 = 0;
    }

    else
    {
      (*(v36 + 32))(v63, v17, v35);
      sub_2D668();
      sub_ABAD10();
    }

    v50 = swift_getObjectType();
    v51 = v62;
    sub_3B8F68();
    v49 = sub_21CCAC(1, v51, &v73, v50, v48);
    (*(v64 + 8))(v51, v65);
    sub_12E1C(&v73, &qword_DF2BD0);
    sub_12E1C(v19, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v19, &unk_DE8E20);
    v49 = 0;
  }

  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = v52;
    v54 = v66;
    sub_12AFE8();
    v56 = v55;
  }

  else
  {
    v54 = v66;
    v56 = 0;
  }

  sub_15F28(v78, &v73);
  sub_15F84(v76, (v10 + 104), &unk_DE8E30);
  v57 = v72;
  sub_15F84(v72, &v10[*(v39 + 28)], &unk_DEA510);
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 8) = 1;
  *(v10 + 9) = 0;
  *(v10 + 10) = 0;
  *(v10 + 11) = 0;
  sub_2D594(&v73, v10);
  *(v10 + 12) = 0;
  v58 = *v68;
  *(&v74 + 1) = v39;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v73);
  sub_2D604(v10, boxed_opaque_existential_0);
  v60 = v58;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v70, 0, v49, v56, &v73);

  sub_12E1C(v57, &unk_DEA510);
  sub_12E1C(v76, &unk_DE8E30);
  sub_1611C(v78);
  sub_2D6C0(v10, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v73, &unk_DE8E40);
}

uint64_t sub_31DED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_31DF34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

void sub_31DFBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8);
    v3 = v1;
    sub_31B4E8(v1, v2);

    sub_31E2D0(v1, v2);
  }
}

void sub_31E030(uint64_t a1)
{
  v2 = sub_31E0B0(a1);
  v4 = v3;
  v5 = (v1 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind);
  v6 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind);
  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8);
  *v5 = v2;
  v5[1] = v3;
  sub_31E280(v2, v3);
  sub_31D00C(v6, v7);
  sub_31E2D0(v6, v7);

  sub_31E2D0(v2, v4);
}

id sub_31E0B0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (!v3)
  {
    type metadata accessor for InformativeView();
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v14 = *(a1 + v2);
  type metadata accessor for JSViewModel();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEC10);
  if (swift_dynamicCast())
  {
    sub_70DF8(v12, &v15);
    v5 = *__swift_project_boxed_opaque_existential_1(&v15, v17);
    v6 = objc_allocWithZone(type metadata accessor for JSSocialProfileCollectionViewController());
    sub_1AFD88(v5);
    v7 = v3 | 0x8000000000000000;
    __swift_destroy_boxed_opaque_existential_0(&v15);
    return v7;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_12E1C(v12, &qword_DFEC18);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_ABAD90(47);
  swift_getObjectType();
  v9 = sub_ABB6D0();
  v11 = v10;

  v15 = v9;
  v16 = v11;
  v18._object = 0x8000000000B5EC30;
  v18._countAndFlagsBits = 0xD00000000000002DLL;
  sub_AB94A0(v18);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

id sub_31E280(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v4 = (a1 & 0x7FFFFFFFFFFFFFFFLL);
    a1 = a2;
  }

  return a1;
}

void sub_31E2D0(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {

    a1 = a2;
  }
}

uint64_t sub_31E320()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_31E358()
{

  return swift_deallocObject();
}

void sub_31E3A0()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState) = 0x80;
  v1 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = objc_opt_self();
  v3 = [v2 buttonWithType:1];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 systemGrayColor];
  [v5 setTintColor:v6];

  [v2 easyTouchDefaultHitRectInsets];
  [v5 setHitRectInsets:?];
  v7 = objc_opt_self();
  v8 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v7 = [v7 imageNamed:v8 inBundle:qword_E71620 compatibleWithTraitCollection:0];

    if (v7)
    {
      break;
    }

    __break(1u);
LABEL_4:
    swift_once();
  }

  v9 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_closeButton;
  [v5 setImage:v7 forState:0];

  *(v0 + v9) = v5;
  v10 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v0 + v10) = TextDrawing.Cache.init()();
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView) = 0;
  v11 = (v0 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind);
  type metadata accessor for InformativeView();
  *v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_31E5FC()
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v12.receiver = v0;
  v12.super_class = ObjectType;

  v2 = objc_msgSendSuper2(&v12, "title");
  if (v2)
  {
    v3 = v2;
    v4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = sub_AB9260();

  v11.receiver = v0;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "setTitle:", v7);

  sub_31AD8C(v4, v6);

  v8 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
    v10 = v8;
    sub_31B4E8(v8, v9);
    sub_31E2D0(v8, v9);
  }
}

uint64_t sub_31E740(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v9 - 8);
  v11 = v61 - v10;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_title];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_subtitle];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu] = 0;
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_textComponents];
  *v15 = sub_31FF10() & 1;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *&v4[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView] = 0;
  v19 = type metadata accessor for UserDetailsCell();
  v62.receiver = v4;
  v62.super_class = v19;
  v20 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  [v20 setAccessoryType:1];
  sub_ABA670();
  v21 = sub_ABA680();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  sub_200394(v11);
  v22 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v23 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];

  v24 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  v29 = *(v24 + 2);
  v30 = *(v23 + 184);
  v31 = *(v23 + 152);
  v63[1] = *(v23 + 168);
  v63[2] = v30;
  v63[0] = v31;
  *(v23 + 152) = v25;
  *(v23 + 160) = v26;
  *(v23 + 168) = v27;
  *(v23 + 176) = v28;
  *(v23 + 184) = v29;
  v32 = v27;
  v33 = v28;
  v34 = v25;
  v35 = v26;
  v36 = v32;
  v37 = v33;
  v38 = v34;
  v39 = v35;
  sub_75948(v63);
  sub_B2A40(v63);

  v40 = *&v20[v22];
  v41 = qword_DE6C90;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = qword_E718D0;
  v43 = *(v40 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_explicitBackgroundColor);
  *(v40 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_explicitBackgroundColor) = qword_E718D0;
  if (!v43)
  {
    v46 = v42;
    goto LABEL_7;
  }

  sub_13C80(0, qword_DFAAC0);
  v44 = v42;
  v43 = v43;
  v45 = sub_ABA790();

  if ((v45 & 1) == 0)
  {
LABEL_7:
    sub_79590();
  }

  v47 = vdupq_n_s64(0x404C000000000000uLL);
  *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = v47;
  v48 = *&v20[v22];
  v49 = *(v48 + 80);
  v50 = *(v48 + 88);
  *(v48 + 80) = v47;
  sub_75614(v49, v50);
  v51 = &v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  v52 = *v51;
  v53 = *(v51 + 1);
  *v51 = xmmword_AFB2E0;
  *(v51 + 1) = xmmword_AFB2F0;
  v61[2] = xmmword_AFB2E0;
  v61[3] = xmmword_AFB2F0;
  v61[0] = v52;
  v61[1] = v53;
  if (sub_AB38D0())
  {
    [v20 setNeedsLayout];
  }

  v54 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  v55 = &v20[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_textComponents];
  result = swift_beginAccess();
  v57 = *(v55 + 3);
  if (!(v57 >> 62))
  {
    v58 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
    if (v58)
    {
      goto LABEL_12;
    }

LABEL_20:

    return v20;
  }

  result = sub_ABB060();
  v58 = result;
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v58 >= 1)
  {

    for (i = 0; i != v58; ++i)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v60 = sub_36003C(i, v57);
      }

      else
      {
        v60 = *(v57 + 8 * i + 32);
      }

      TextStackView.add(_:)(v60);
    }

    return v20;
  }

  __break(1u);
  return result;
}

void sub_31ECC0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_textComponents];
  swift_beginAccess();
  v3 = *(v2 + 3);
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_title];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_title + 8];
  swift_beginAccess();

  sub_31EE6C(v4, v5);
  swift_endAccess();

  LOBYTE(v5) = sub_12C928(v6, v3);

  if ((v5 & 1) == 0)
  {
    v7 = *(v2 + 3);
    v8 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

    TextStackView.removeAll()();
    if (v7 >> 62)
    {
      v9 = sub_ABB060();
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      if (v9)
      {
LABEL_4:
        if (v9 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v9; ++i)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v11 = sub_36003C(i, v7);
          }

          else
          {
            v11 = *(v7 + 8 * i + 32);
          }

          TextStackView.add(_:)(v11);
        }
      }
    }

    [v1 setNeedsLayout];
  }
}

uint64_t sub_31EE6C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_AB9250();
  __chkstk_darwin(v7 - 8);
  if (!a2)
  {
    goto LABEL_7;
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = *v2;
    *v2 = 0;
    if (v9)
    {
      v10 = v2[1];

      sub_3201F8(&qword_DE6C98, &qword_E718D8, &v36);
      swift_beginAccess();
      v12 = v10[3];
      v11 = v10[4];
      v13 = v10[6];
      v34 = v10[5];
      v35 = v13;
      v33 = v11;
      v31 = v10[2];
      v32 = v12;
      v14 = v40;
      v10[5] = v39;
      v10[6] = v14;
      v15 = v37;
      v10[2] = v36;
      v10[3] = v15;
      v10[4] = v38;
      sub_2F118(&v36, v30);
      sub_2F174(&v31);
      sub_2EB2A8();
      sub_2F174(&v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_AF7C50;
      v17 = v3[2];
      *(v16 + 32) = v10;
      *(v16 + 40) = v17;

      v3[3] = v16;
    }

    else
    {
    }

    v26 = v3[1];
    swift_beginAccess();
    *(v26 + 112) = a1;
  }

  else
  {
LABEL_7:
    v18 = *v2;
    *v2 = 1;
    if ((v18 & 1) == 0)
    {
      v19 = v2[1];
      sub_3201F8(&qword_DE6C88, &qword_E718C8, &v36);
      swift_beginAccess();
      v21 = v19[3];
      v20 = v19[4];
      v22 = v19[6];
      v34 = v19[5];
      v35 = v22;
      v33 = v20;
      v31 = v19[2];
      v32 = v21;
      v23 = v40;
      v19[5] = v39;
      v19[6] = v23;
      v24 = v37;
      v19[2] = v36;
      v19[3] = v24;
      v19[4] = v38;
      sub_2F118(&v36, v30);
      sub_2F174(&v31);
      sub_2EB2A8();
      sub_2F174(&v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_AF82B0;
      *(v25 + 32) = v19;

      v3[3] = v25;
    }

    v26 = v3[1];
    sub_AB91E0();
    sub_AB3550();
    v27 = sub_AB9320();
    a2 = v28;
    swift_beginAccess();
    *(v26 + 112) = v27;
  }

  *(v26 + 120) = a2;

  return sub_2EB704();
}

uint64_t sub_31F284(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_subtitle);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_subtitle);
  v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_subtitle + 8);
  *v4 = a1;
  v4[1] = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v10 = v2 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_textComponents;
    swift_beginAccess();
    v11 = *(v10 + 16);
    swift_beginAccess();
    *(v11 + 112) = a1;
    *(v11 + 120) = a2;

    sub_2EB704();
  }
}

uint64_t sub_31F484(uint64_t result, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText + 8];
  if (!a2)
  {
    if (!v3)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v3)
  {
LABEL_13:

    return [v2 setNeedsLayout];
  }

  if (*&v2[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText] != result || v3 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
LABEL_10:

      if ([v2 accessoryType] != &dword_0 + 1)
      {
        v5 = sub_31FA74();
        v6 = sub_AB9260();
        [v5 setTitle:v6 forState:0];

        v7 = OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView;
        [*&v2[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView] sizeToFit];
        [v2 setAccessoryView:*&v2[v7]];
      }

      goto LABEL_13;
    }
  }

  return result;
}

void sub_31F628(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu);
  if (a1)
  {
    if (v4)
    {
      v5 = a1;
      sub_13C80(0, &qword_DF1D50);
      v6 = v4;
      v7 = v5;
      LOBYTE(v5) = sub_ABA790();

      if (v5)
      {
        return;
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  v9 = sub_31FA74();
  v8 = *(v2 + v3);
  [v9 setMenu:v8];
}

uint64_t sub_31F720(uint64_t a1)
{
  v2 = v1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for UserDetailsCell();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_textComponents];
  swift_beginAccess();
  v5 = *(v4 + 1);
  v6 = objc_opt_self();

  v7 = [v6 defaultMetrics];
  v8 = [v2 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  v10 = sub_ABA310();
  sub_AB9F00();
  v12 = v11;

  swift_beginAccess();
  *(v5 + 96) = v12;
  sub_2EB2A8();

  v13 = *(v4 + 1);

  v14 = [v2 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  v16 = sub_ABA310();
  LOBYTE(v5) = sub_ABA330();

  if (v5)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  swift_beginAccess();
  *(v13 + 88) = v17;
  sub_2EB2A8();
}

id sub_31FA74()
{
  v1 = OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView);
  }

  else
  {
    v4 = [objc_opt_self() buttonWithType:0];
    [v4 setContentMode:8];
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    v6 = [v4 titleLabel];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
      [v7 setFont:v8];
    }

    v9 = UIColor.MusicTint.normal.unsafeMutableAddressor();
    [v4 setTitleColor:*v9 forState:0];
    [v4 setTitleColor:*UIColor.MusicTint.pressed.unsafeMutableAddressor() forState:5];
    [v4 setTintColor:*v9];
    [v4 setShowsMenuAsPrimaryAction:1];
    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_31FC20()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView);
}

id sub_31FCD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserDetailsCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UserDetailsCell()
{
  result = qword_DFEC58;
  if (!qword_DFEC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_31FE8C(void *a1, double a2)
{
  sub_31FF10();
  sub_2F48A4(v4, a1, 0, 0);

  return a2;
}

uint64_t sub_31FF10()
{
  sub_3201F8(&qword_DE6C98, &qword_E718D8, v10);
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v0 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v10);
  sub_13C80(0, &qword_DE6EE0);

  v1 = sub_ABA560();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v2 = qword_E718C8;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  *&v11[0] = v2;
  *(&v11[0] + 1) = v5;
  v11[1] = xmmword_AF7C20;
  v12 = 0;
  v13 = 0;
  v14 = v1;
  v15 = 1;
  v16 = xmmword_AF7C30;
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF7C50;
  *(v7 + 32) = v0;
  *(v7 + 40) = v6;
  v17[0] = v2;
  v17[1] = v5;
  v18 = xmmword_AF7C20;
  v19 = 0;
  v20 = 0;
  v21 = v1;
  v22 = 1;
  v23 = xmmword_AF7C30;
  sub_2F118(v11, v9);

  sub_2F174(v17);
  return 0;
}

void sub_32012C()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu) = 0;
  v4 = v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_textComponents;
  *v4 = sub_31FF10() & 1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView) = 0;
  sub_ABAFD0();
  __break(1u);
}

double sub_3201F8@<D0>(void *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  sub_13C80(0, &qword_DE6EE0);
  v6 = sub_ABA560();
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = *a2;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  *a3 = v7;
  *(a3 + 8) = v10;
  *(a3 + 16) = xmmword_AF7C20;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v6;
  *(a3 + 56) = 1;
  result = 20.0;
  *(a3 + 64) = xmmword_AF7C30;
  return result;
}

unint64_t sub_3202EC()
{
  result = qword_DFEC68;
  if (!qword_DFEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEC68);
  }

  return result;
}

id sub_3203F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicKitEditingModelResponse();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_320460()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E714D0);
  __swift_project_value_buffer(v0, qword_E714D0);
  return static Logger.music(_:)();
}

unint64_t ShelfCollectionViewLayout.SupplementaryViewKind.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000002ELL;
  }

  else
  {
    return 0xD000000000000026;
  }
}

MusicApplication::ShelfCollectionViewLayout::SupplementaryViewKind_optional __swiftcall ShelfCollectionViewLayout.SupplementaryViewKind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_CEFD98;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicApplication_ShelfCollectionViewLayout_SupplementaryViewKind_scrollingHeader;
  }

  else
  {
    v4.value = MusicApplication_ShelfCollectionViewLayout_SupplementaryViewKind_unknownDefault;
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

uint64_t sub_320550(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000002ELL;
  }

  else
  {
    v3 = 0xD000000000000026;
  }

  if (v2)
  {
    v4 = "";
  }

  else
  {
    v4 = "ryViewKindGlobalHeader";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000002ELL;
  }

  else
  {
    v6 = 0xD000000000000026;
  }

  if (*a2)
  {
    v7 = "ryViewKindGlobalHeader";
  }

  else
  {
    v7 = "";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_ABB3C0();
  }

  return v9 & 1;
}

Swift::Int sub_3205FC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_32067C()
{
  sub_AB93F0();
}

Swift::Int sub_3206E8()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_320764@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_CEFD98;
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

void sub_3207C4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000002ELL;
  }

  else
  {
    v2 = 0xD000000000000026;
  }

  if (*v1)
  {
    v3 = "ryViewKindGlobalHeader";
  }

  else
  {
    v3 = "";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t ShelfCollectionViewLayout.scrollStyle.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void ShelfCollectionViewLayout.scrollStyle.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1 & 1;
  if (v4 != (a1 & 1))
  {
    sub_32533C();
  }
}

void (*ShelfCollectionViewLayout.scrollStyle.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_320940;
}

void sub_320940(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    sub_32533C();
  }

  free(v1);
}

double ShelfCollectionViewLayout.interSectionHorizontalOffset.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ShelfCollectionViewLayout.interSectionHorizontalOffset.setter(double a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
  swift_beginAccess();
  *&v1[v3] = a1;
  v4 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset;
  result = sub_AB38D0();
  if (result)
  {
    *&v1[v4] = *&v1[v3];
    return [v1 invalidateLayout];
  }

  return result;
}

void (*ShelfCollectionViewLayout.interSectionHorizontalOffset.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_320B28;
}

void sub_320B28(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v4 = v3[5];
    v6 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset;
    *v3 = *(v5 + OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset);
    v3[3] = *(v5 + v4);
    if (sub_AB38D0())
    {
      v7 = v3[4];
      *(v5 + v6) = *&v7[v3[5]];
      [v7 invalidateLayout];
    }
  }

  free(v3);
}

CGFloat sub_320BCC()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    return UIEdgeInsetsZero.top;
  }

  v2 = v1;
  [v1 music_inheritedLayoutInsets];
  v4 = v3;
  if ([v2 delegate])
  {
    ObjectType = swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    if (v6)
    {
      v7 = (*(v6 + 64))(v2, v0, ObjectType, v6);
      swift_unknownObjectRelease();

      return v4 + v7;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  return v4;
}

uint64_t ShelfCollectionViewLayout.invalidationContext(forBoundsChange:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [swift_getObjCClassFromObject() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &unk_DFED50);
  if (swift_dynamicCastMetatype())
  {
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    type metadata accessor for ShelfCollectionViewLayout.InvalidationContext();
    v13 = swift_dynamicCastClassUnconditional();
    v14 = [v4 collectionView];
    if (v14)
    {
      v15 = v14;
      [(objc_class *)v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v41.origin.x = a1;
      v41.origin.y = a2;
      v41.size.width = a3;
      v41.size.height = a4;
      Width = CGRectGetWidth(v41);
      v42.origin.x = v17;
      v42.origin.y = v19;
      v42.size.width = v21;
      v42.size.height = v23;
      v39 = CGRectGetWidth(v42);
      sub_7FD28();
      if (sub_AB38E0())
      {
        v13[OBJC_IVAR____TtCC16MusicApplication25ShelfCollectionViewLayoutP33_8F3A1CCF37430C45DA7B42CF7C548BFA19InvalidationContext_invalidateItemLayoutMetrics] = 0;
        v36[1] = "";
        v37 = v13;

        v38 = v4;
        v24 = *(*&v4[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames] + 16);
        if (v24)
        {
          v25 = 0;
          v26 = _swiftEmptyArrayStorage;
          do
          {
            sub_AB3810();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_6AE4C(0, v26[2] + 1, 1, v26);
            }

            v28 = v26[2];
            v27 = v26[3];
            if (v28 >= v27 >> 1)
            {
              v26 = sub_6AE4C(v27 > 1, v28 + 1, 1, v26);
            }

            ++v25;
            v26[2] = v28 + 1;
            (*(v10 + 32))(v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v28, v12, v9);
          }

          while (v24 != v25);
        }

        else
        {
          v26 = _swiftEmptyArrayStorage;
        }

        if (v26[2])
        {
          v29 = sub_AB9260();
          isa = sub_AB9740().super.isa;

          v13 = v37;
          [v37 invalidateSupplementaryElementsOfKind:v29 atIndexPaths:isa];
        }

        else
        {

          v13 = v37;
        }

        v31 = v38;
        sub_321240(v38, v13, v17, v19, v21, v23);
        sub_321240(v31, v13, a1, a2, a3, a4);
        v32 = sub_AB9260();
        v33 = [(objc_class *)v15 indexPathsForVisibleSupplementaryElementsOfKind:v32];

        if (!v33)
        {
          sub_AB9760();
          v33 = sub_AB9740().super.isa;
        }

        v34 = sub_AB9260();
        [v13 invalidateSupplementaryElementsOfKind:v34 atIndexPaths:v33];

        v15 = v33;
      }
    }

    return v13;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

void sub_321240(char *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v14 = _swiftEmptyArrayStorage;
  sub_3246F4(a1, &v14, a3, a4, a5, a6);
  if (v14[2])
  {
    v12 = sub_AB9260();
    sub_AB3820();
    isa = sub_AB9740().super.isa;
    [a2 invalidateSupplementaryElementsOfKind:v12 atIndexPaths:isa];
  }

  else
  {
  }
}

Swift::Void __swiftcall ShelfCollectionViewLayout.invalidateLayout(with:)(UICollectionViewLayoutInvalidationContext with)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ShelfCollectionViewLayout();
  objc_msgSendSuper2(&v8, "invalidateLayoutWithContext:", with.super.isa);
  if (([(objc_class *)with.super.isa invalidateEverything]& 1) != 0 || ([(objc_class *)with.super.isa invalidateDataSourceCounts]& 1) != 0 || (v3 = [(objc_class *)with.super.isa invalidatedItemIndexPaths]) != 0 && (v4 = v3, sub_AB3820(), v5 = sub_AB9760(), v4, v6 = *(v5 + 16), , v6))
  {
    *(v1 + OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_hasValidItemLayoutMetrics) = 0;
  }

  type metadata accessor for ShelfCollectionViewLayout.InvalidationContext();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    if (*(v7 + OBJC_IVAR____TtCC16MusicApplication25ShelfCollectionViewLayoutP33_8F3A1CCF37430C45DA7B42CF7C548BFA19InvalidationContext_invalidateItemLayoutMetrics) == 1)
    {
      *(v1 + OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_hasValidItemLayoutMetrics) = 0;
    }
  }
}

void *ShelfCollectionViewLayout.layoutAttributesForElements(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11 = _swiftEmptyArrayStorage;
  v9 = v4;
  sub_335730(v9, v9, &v11, a1, a2, a3, a4);
  sub_335F5C(v9, v9, &v11, a1, a2, a3, a4);
  sub_336220(v9, v9, &v11, a1, a2, a3, a4);

  return v11;
}

uint64_t ShelfCollectionViewLayout.layoutAttributesForItem(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_itemIndexPathRelativeFrameMap;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_2EC048(a1);
  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = *(v5 + 56) + 32 * v6;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);

  MaxY = sub_320BCC();
  v15 = v9 + v14;
  v16 = *&v2[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames];
  v17 = *(v16 + 16);
  if (v17)
  {
    v38.origin.x = sub_3250E8(*(v16 + 32 * v17));
    MaxY = CGRectGetMaxY(v38);
  }

  v18 = v10 + MaxY + *&v2[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_maximumScrollingHeaderHeight];
  type metadata accessor for ShelfCollectionViewLayout.LayoutAttributes();
  isa = sub_AB3770().super.isa;
  v20 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath:isa];

  v21 = v20;
  [v21 setFrame:{v15, v18, v11, v12}];
  v22 = [v2 collectionView];
  if (!v22)
  {
    goto LABEL_28;
  }

  v23 = v22;
  if (![v22 delegate])
  {

LABEL_28:
    return v21;
  }

  ObjectType = swift_getObjectType();
  v25 = swift_conformsToProtocol2();
  if (!v25)
  {

    swift_unknownObjectRelease();
    return v21;
  }

  v26 = &v2[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_cachedShelfGridMetrics];
  if (v2[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_cachedShelfGridMetrics + 32] == 1)
  {
    v27 = v25;
    v28 = sub_AB37F0();
    v29 = (*(v27 + 24))(v23, v2, v28, ObjectType, v27);
    *v26 = v29;
    *(v26 + 1) = v30;
    *(v26 + 2) = v31;
    *(v26 + 3) = v32;
    v26[32] = 0;
  }

  else
  {
    v29 = *v26;
  }

  v33 = [v23 numberOfItemsInSection:sub_AB37F0()];
  v34 = v33;
  if (v33 < v29)
  {
    v29 = v33;
  }

  result = sub_AB37E0();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (!v29)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (result == 0x7FFFFFFFFFFFFFFFLL && v29 == -1)
  {
    goto LABEL_32;
  }

  v36 = (result + 1) % v29;
  if (v36 != 1)
  {
    goto LABEL_25;
  }

  result = sub_AB37E0();
  if (!__OFADD__(result, 1))
  {
    if ((result + 1) == v34)
    {
      v37 = 3;
LABEL_27:
      *(v21 + OBJC_IVAR____TtCC16MusicApplication25ShelfCollectionViewLayout16LayoutAttributes_rowPosition) = v37;

      swift_unknownObjectRelease();
      goto LABEL_28;
    }

LABEL_25:
    v37 = v36 != 1;
    if (!v36)
    {
      v37 = 2;
    }

    goto LABEL_27;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t ShelfCollectionViewLayout.layoutAttributesForSupplementaryView(ofKind:at:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  [swift_getObjCClassFromMetadata() layoutAttributesClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &qword_E04510);
  if (swift_dynamicCastMetatype())
  {
    v8 = sub_AB9260();
    isa = sub_AB3770().super.isa;
    v10 = [swift_getObjCClassFromMetadata() layoutAttributesForSupplementaryViewOfKind:v8 withIndexPath:isa];

    v11._rawValue = &off_CEFD98;
    v54._countAndFlagsBits = a1;
    v54._object = a2;
    v12 = sub_ABB140(v11, v54);

    if (v12 == 1)
    {
      v32 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollingHeaderIndexPathMetricsMap;
      swift_beginAccess();
      v33 = *&v4[v32];
      if (*(v33 + 16))
      {

        v34 = sub_2EC048(a3);
        if (v35)
        {
          v36 = (*(v33 + 56) + 48 * v34);
          v37 = v36[1];
          v53[0] = *v36;
          v53[1] = v37;
          v53[2] = v36[2];

          v38 = [v4 collectionView];
          if (v38)
          {
            v39 = v38;
            [v38 bounds];
            v41 = v40;
            v43 = v42;
            v45 = v44;
            v47 = v46;
          }

          else
          {
            v41 = 0.0;
            v43 = 0.0;
            v45 = 0.0;
            v47 = 0.0;
          }

          v48 = sub_325230(v53, v41, v43, v45, v47);
          [v10 setFrame:{v48, v49, v50, v51}];
        }

        else
        {
        }
      }

      return v10;
    }

    if (v12)
    {
      return v10;
    }

    v13 = IndexPath.safeSection.getter();
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14 = *&v4[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames];
      if (v13 < *(v14 + 16))
      {
        v15 = sub_3250E8(*(v14 + 32 * v13 + 32));
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = [v4 collectionView];
        if (v22)
        {
          v23 = v22;
          [v22 bounds];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
        }

        else
        {
          v25 = 0.0;
          v27 = 0.0;
          v29 = 0.0;
          v31 = 0.0;
        }

        v55.origin.x = v25;
        v55.origin.y = v27;
        v55.size.width = v29;
        v55.size.height = v31;
        [v10 setFrame:{v15 + CGRectGetMinX(v55), v17, v19, v21}];
        return v10;
      }
    }

    __break(1u);
  }

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

Swift::Void __swiftcall ShelfCollectionViewLayout.prepare()()
{
  v1 = v0;
  v2 = sub_AB3820();
  v248 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v263 = &v208 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v239 = &v208 - v6;
  v7 = __chkstk_darwin(v5);
  v262 = &v208 - v8;
  __chkstk_darwin(v7);
  v237 = &v208 - v9;
  v10 = &selRef_setSubtitleText_;
  if (v0[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_hasValidItemLayoutMetrics])
  {
    goto LABEL_2;
  }

  v0[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_hasValidItemLayoutMetrics] = 1;
  v14 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_itemIndexPathRelativeFrameMap;
  swift_beginAccess();
  v260 = v14;
  *&v0[v14] = _swiftEmptyDictionarySingleton;

  v230 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_sectionPageRects;
  *&v0[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_sectionPageRects] = _swiftEmptyArrayStorage;

  v15 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollingHeaderIndexPathMetricsMap;
  swift_beginAccess();
  *&v0[v15] = _swiftEmptyDictionarySingleton;

  v16 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames;
  *&v0[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames] = _swiftEmptyArrayStorage;

  v17 = &v0[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_cachedShelfGridMetrics];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v18 = [v0 collectionView];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 delegate];
    if (!v20)
    {

      return;
    }

    v21 = v20;
    swift_getObjectType();
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    v256 = v23;
    if (!v22)
    {

      swift_unknownObjectRelease();
      return;
    }

    v24 = v22;
    v25 = sub_320BCC();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [v19 bounds];
    v225 = v32;
    v224 = v33;
    v223 = v34;
    v222 = v35;
    v36 = [v19 numberOfSections];
    ObjectType = swift_getObjectType();
    v38 = *(v24 + 32);
    v255 = ObjectType;
    v257 = v24;
    v39 = v38(v19);
    if (v39 < 0)
    {
      goto LABEL_158;
    }

    v40 = v39;
    v221 = v36;
    v258 = v15;
    v213 = v21;
    v254 = v19;
    if (v39)
    {
      v41 = 0;
      v42 = *(v257 + 40);
      v43 = 0.0;
      v231 = 0.0;
      MaxY = 0.0;
      do
      {
        v45 = v42(v19, v1, v41, v255, v257);
        v47 = v46;
        v48 = *&v1[v16];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v1[v16] = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = sub_6C31C(0, *(v48 + 2) + 1, 1, v48);
          *&v1[v16] = v48;
        }

        v51 = *(v48 + 2);
        v50 = *(v48 + 3);
        if (v51 >= v50 >> 1)
        {
          v48 = sub_6C31C((v50 > 1), v51 + 1, 1, v48);
        }

        ++v41;
        *(v48 + 2) = v51 + 1;
        v52 = &v48[32 * v51];
        *(v52 + 4) = 0;
        *(v52 + 5) = MaxY;
        *(v52 + 6) = v45;
        *(v52 + 7) = v47;
        *&v1[v16] = v48;
        v53 = v231;
        if (v231 <= v45)
        {
          v53 = v45;
        }

        v231 = v53;
        v43 = v43 + v47;
        v268.origin.x = 0.0;
        v268.origin.y = MaxY;
        v268.size.width = v45;
        v268.size.height = v47;
        MaxY = CGRectGetMaxY(v268);
        v19 = v254;
      }

      while (v40 != v41);
    }

    else
    {
      v43 = 0.0;
      v231 = 0.0;
    }

    v54 = sub_994C0(_swiftEmptyArrayStorage);
    v10 = &selRef_setSubtitleText_;
    if ((v221 & 0x8000000000000000) != 0)
    {
LABEL_159:
      __break(1u);
LABEL_160:
      sub_ABB4C0();
      __break(1u);
LABEL_161:
      sub_ABB4C0();
      __break(1u);
LABEL_162:
      sub_ABB4C0();
      __break(1u);
      return;
    }

    v209 = v31;
    v210 = v27;
    v211 = v29;
    v212 = v25;
    horizontal = UIOffsetZero.horizontal;
    v55 = v258;
    if (!v221)
    {

      *&v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_maximumScrollingHeaderHeight] = 0;
      v60 = 0.0;
      v58 = 0.0;
      goto LABEL_141;
    }

    v229 = v54;
    v56 = v257 + 24;
    v219 = *(v257 + 24);
    vertical = UIOffsetZero.vertical;
    v217 = *(v257 + 16);
    v218 = v257 + 16;
    v216 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
    swift_beginAccess();
    v57 = 0;
    v232 = v56 - 16;
    v264 = (v248 + 16);
    v259 = (v248 + 8);
    v215 = v56 + 24;
    v220 = v56;
    v243 = (v56 + 32);
    v58 = 0.0;
    v59 = 0.0;
    v60 = 0.0;
    v242 = 1;
    v61 = v237;
    v265 = v2;
    v214 = v43;
    v246 = v1;
    while (1)
    {
      v250 = [v19 numberOfItemsInSection:v57];
      v63 = v255;
      v64 = v257;
      *&v252 = COERCE_DOUBLE(v219(v19, v1, v57, v255, v257));
      v249 = v65;
      v238 = v66;
      v236 = v67;
      v68 = v217(v19, v1, v57, v63, v64);
      if (v70)
      {
        v71 = v229;
        goto LABEL_45;
      }

      v72 = v68;
      v261 = v69;
      v73 = v229;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v267 = v73;
      v75 = sub_2F5A90(v57);
      v77 = v73[2];
      v78 = (v76 & 1) == 0;
      v79 = __OFADD__(v77, v78);
      v80 = v77 + v78;
      if (v79)
      {
        goto LABEL_155;
      }

      v81 = v76;
      if (v73[3] < v80)
      {
        break;
      }

      if (v74)
      {
        goto LABEL_40;
      }

      v85 = v75;
      sub_3341C0();
      v75 = v85;
      v71 = v267;
      if (v81)
      {
LABEL_41:
        v83 = (v71[7] + 16 * v75);
        v84 = v261;
        *v83 = v72;
        v83[1] = v84;
        goto LABEL_45;
      }

LABEL_43:
      v71[(v75 >> 6) + 8] |= 1 << v75;
      *(v71[6] + 8 * v75) = v57;
      v86 = (v71[7] + 16 * v75);
      v87 = v261;
      *v86 = v72;
      v86[1] = v87;
      v88 = v71[2];
      v79 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v79)
      {
        goto LABEL_157;
      }

      v71[2] = v89;
LABEL_45:
      v90 = v239;
      v91 = v250;
      v92 = v71[2];
      v93 = 0.0;
      v247 = 0.0;
      if (v92)
      {
        v94 = sub_2F5A90(v57);
        if (v95)
        {
          v245 = 0;
          v96 = (v71[7] + 16 * v94);
          v93 = v96[1];
          v247 = *v96;
        }

        else
        {
          v245 = 1;
          v93 = 0.0;
        }
      }

      else
      {
        v245 = 1;
      }

      v244 = v93;
      if (v91 < 0)
      {
        goto LABEL_152;
      }

      v261 = v57;
      v229 = v71;
      v228 = v60;
      if (v91)
      {
        v97 = 0;
        v227 = 0;
        v98 = v252;
        if (v91 < v252)
        {
          v98 = v91;
        }

        v241 = v98 - 1;
        v99 = __OFSUB__(v98, 1);
        v242 = v99;
        v233 = v249 - 1;
        v100 = __OFSUB__(v249, 1);
        v234 = v100;
        *&v252 = 0.0;
        v101 = horizontal;
        v226 = 0.0;
LABEL_61:
        v240 = 0;
        v102 = 0;
        v103 = vertical;
        v104 = v101;
        v105 = 0.0;
        v106 = 0.0;
        v235 = v101;
        while (1)
        {
          if (v97 >= v91)
          {
            goto LABEL_145;
          }

          v108 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            goto LABEL_146;
          }

          sub_AB37C0();
          v109 = v247;
          v110 = v244;
          if (v245)
          {
            v109 = (*(v257 + 8))(v254, v1, v61, v255);
            v110 = v111;
          }

          v112 = v61;
          v113 = *v264;
          v114 = v262;
          v115 = v112;
          (*v264)(v262);
          v116 = v260;
          swift_beginAccess();
          v117 = swift_isUniquelyReferenced_nonNull_native();
          v266 = *&v1[v116];
          v118 = v266;
          *&v1[v116] = 0x8000000000000000;
          v119 = sub_2EC048(v114);
          v121 = v118[2];
          v122 = (v120 & 1) == 0;
          v79 = __OFADD__(v121, v122);
          v123 = v121 + v122;
          if (v79)
          {
            goto LABEL_147;
          }

          v124 = v120;
          if (v118[3] < v123)
          {
            break;
          }

          v57 = v261;
          if (v117)
          {
            goto LABEL_75;
          }

          v129 = v119;
          sub_333F40();
          v119 = v129;
          v126 = v266;
          if ((v124 & 1) == 0)
          {
LABEL_78:
            v126[(v119 >> 6) + 8] |= 1 << v119;
            v130 = v248;
            v131 = v119;
            v132 = v262;
            v133 = v265;
            (v113)(v126[6] + *(v248 + 72) * v119, v262, v265);
            v134 = v126[7] + 32 * v131;
            *v134 = v104;
            *(v134 + 8) = v103;
            *(v134 + 16) = v109;
            *(v134 + 24) = v110;
            v128 = *(v130 + 8);
            v128(v132, v133);
            v135 = v126[2];
            v79 = __OFADD__(v135, 1);
            v136 = v135 + 1;
            if (v79)
            {
              goto LABEL_150;
            }

            v126[2] = v136;
            v61 = v237;
            v57 = v261;
            goto LABEL_80;
          }

LABEL_76:
          v127 = v126[7] + 32 * v119;
          *v127 = v104;
          *(v127 + 8) = v103;
          *(v127 + 16) = v109;
          *(v127 + 24) = v110;
          v128 = *v259;
          (*v259)(v262, v265);
          v61 = v115;
LABEL_80:
          *&v1[v260] = v126;

          swift_endAccess();
          v270.origin.x = v104;
          v270.origin.y = v103;
          v270.size.width = v109;
          v270.size.height = v110;
          v137 = CGRectGetMaxX(v270) - v101;
          if (v137 > v106)
          {
            v106 = v137;
          }

          if (v249 == 1)
          {
            v271.origin.x = v104;
            v271.origin.y = v103;
            v271.size.width = v109;
            v271.size.height = v110;
            Height = CGRectGetHeight(v271);
            if (v105 <= Height)
            {
              v105 = Height;
            }
          }

          v139 = v265;
          v272.origin.x = v104;
          v272.origin.y = v103;
          v272.size.width = v109;
          v272.size.height = v110;
          v140 = CGRectGetMaxY(v272) - vertical;
          if (v140 > v58)
          {
            v58 = v140;
          }

          if (v242)
          {
            goto LABEL_148;
          }

          if (v102 < v241)
          {
            ++v102;
            v269.origin.x = v104;
            v269.origin.y = v103;
            v269.size.width = v109;
            v269.size.height = v110;
            v107 = CGRectGetHeight(v269);
            v128(v61, v139);
            if (v105 <= v107)
            {
              v105 = v107;
            }

            v103 = v103 + v236 + v105;
          }

          else
          {
            if (v234)
            {
              goto LABEL_151;
            }

            if (v240 >= v233)
            {
              v143 = v227 + 1;
              if (__OFADD__(v227, 1))
              {
                goto LABEL_156;
              }

              v144 = v226;
              ++v227;
              v145 = *&v252;
              if (v143 > 1)
              {
                v145 = v226 + v238 + v106;
              }

              *&v252 = v145;
              if (v143 > 1)
              {
                v144 = v226 + v238 + v106;
              }

              v146 = v101;
              v147 = v101 + v106;
              v148 = v147 - v146;
              if (v148 > 0.0)
              {
                v149 = v148;
              }

              else
              {
                v149 = 0.0;
              }

              v275.origin.x = v225;
              v275.origin.y = v224;
              v275.size.width = v223;
              v275.size.height = v222;
              v150 = CGRectGetHeight(v275);
              v151 = v230;
              v152 = *&v1[v230];
              v153 = swift_isUniquelyReferenced_nonNull_native();
              *&v1[v151] = v152;
              v19 = v254;
              v43 = v214;
              v90 = v239;
              v154 = v61;
              if ((v153 & 1) == 0)
              {
                v152 = sub_6C31C(0, *(v152 + 2) + 1, 1, v152);
                *&v1[v230] = v152;
              }

              v156 = *(v152 + 2);
              v155 = *(v152 + 3);
              if (v156 >= v155 >> 1)
              {
                v152 = sub_6C31C((v155 > 1), v156 + 1, 1, v152);
              }

              *(v152 + 2) = v156 + 1;
              v157 = &v152[32 * v156];
              *(v157 + 4) = v235;
              *(v157 + 5) = 0;
              *(v157 + 6) = v149;
              *(v157 + 7) = v150;
              *&v1[v230] = v152;
              v61 = v154;
              v128(v154, v265);
              v91 = v250;
              if (v108 != v250)
              {
                v226 = v144;
                v101 = v147 + v238;
                v97 = v108;
                goto LABEL_61;
              }

              v242 = 0;
              v59 = v238;
              v55 = v258;
              v172 = v257;
              goto LABEL_122;
            }

            ++v240;
            v273.origin.x = v104;
            v273.origin.y = v103;
            v273.size.width = v109;
            v273.size.height = v110;
            v141 = v104 + v238 + CGRectGetWidth(v273);
            v274.origin.x = v104;
            v274.origin.y = v103;
            v274.size.width = v109;
            v274.size.height = v110;
            v142 = CGRectGetHeight(v274);
            v128(v61, v139);
            v102 = 0;
            if (v105 <= v142)
            {
              v105 = v142;
            }

            v103 = vertical;
            v104 = v141;
            v101 = v235;
          }

          ++v97;
          v91 = v250;
          v55 = v258;
          if (v108 == v250)
          {
            v242 = 0;
            v59 = v238;
            v19 = v254;
            v43 = v214;
            v90 = v239;
            v158 = v226;
            v159 = v227 + 1;
            if (__OFADD__(v227, 1))
            {
              goto LABEL_154;
            }

            goto LABEL_112;
          }
        }

        sub_32DB14(v123, v117);
        v119 = sub_2EC048(v262);
        v57 = v261;
        if ((v124 & 1) != (v125 & 1))
        {
          goto LABEL_161;
        }

LABEL_75:
        v126 = v266;
        if ((v124 & 1) == 0)
        {
          goto LABEL_78;
        }

        goto LABEL_76;
      }

      *&v252 = 0.0;
      v158 = 0.0;
      v106 = 0.0;
      v101 = horizontal;
      v159 = 1;
LABEL_112:
      v160 = v158 + v238 + v106;
      v161 = v252;
      if (v159 > 1)
      {
        *&v161 = v160;
      }

      v252 = v161;
      v162 = v101;
      v147 = v106 + v101;
      v163 = v162;
      v164 = v147 - v162;
      if (v164 > 0.0)
      {
        v165 = v164;
      }

      else
      {
        v165 = 0.0;
      }

      v276.origin.x = v225;
      v276.origin.y = v224;
      v276.size.width = v223;
      v276.size.height = v222;
      v166 = CGRectGetHeight(v276);
      v167 = v230;
      v168 = *&v1[v230];
      v169 = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v167] = v168;
      if ((v169 & 1) == 0)
      {
        v168 = sub_6C31C(0, *(v168 + 2) + 1, 1, v168);
        *&v1[v230] = v168;
      }

      v171 = *(v168 + 2);
      v170 = *(v168 + 3);
      v172 = v257;
      if (v171 >= v170 >> 1)
      {
        v204 = sub_6C31C((v170 > 1), v171 + 1, 1, v168);
        v172 = v257;
        v168 = v204;
      }

      *(v168 + 2) = v171 + 1;
      v173 = &v168[32 * v171];
      *(v173 + 4) = v163;
      *(v173 + 5) = 0;
      *(v173 + 6) = v165;
      *(v173 + 7) = v166;
      *&v1[v230] = v168;
LABEL_122:
      v174 = *&v1[v216];
      v175 = (*(v172 + 48))(v19, v1, v57, v255);
      if (v175 < 0)
      {
        goto LABEL_153;
      }

      v176 = v265;
      if (v175)
      {
        v177 = 0;
        v250 = *v243;
        v62 = 0.0;
        v1 = v246;
        v249 = v175;
        while (1)
        {
          sub_AB37C0();
          v181 = (v250)(v254, v1, v90, v255, v257);
          v183 = v182;
          v184 = *v264;
          v185 = v263;
          (*v264)(v263, v90, v176);
          swift_beginAccess();
          v186 = swift_isUniquelyReferenced_nonNull_native();
          v266 = *&v1[v55];
          v187 = v266;
          *&v1[v55] = 0x8000000000000000;
          v189 = sub_2EC048(v185);
          v190 = v187[2];
          v191 = (v188 & 1) == 0;
          v192 = v190 + v191;
          if (__OFADD__(v190, v191))
          {
            break;
          }

          v193 = v188;
          if (v187[3] >= v192)
          {
            if ((v186 & 1) == 0)
            {
              sub_333CA8();
            }
          }

          else
          {
            sub_32D71C(v192, v186);
            v194 = sub_2EC048(v263);
            if ((v193 & 1) != (v195 & 1))
            {
              goto LABEL_160;
            }

            v189 = v194;
          }

          v196 = v266;
          v197 = v259;
          if (v193)
          {
            v178 = v266[7] + 48 * v189;
            *v178 = horizontal;
            *(v178 + 8) = v62;
            *(v178 + 16) = *&v252;
            *(v178 + 24) = 0;
            *(v178 + 32) = v181;
            *(v178 + 40) = v183;
            v179 = *v197;
            v180 = v265;
            (*v197)(v263, v265);
          }

          else
          {
            v266[(v189 >> 6) + 8] |= 1 << v189;
            v198 = v248;
            v199 = v263;
            v200 = v265;
            (v184)(v196[6] + *(v248 + 72) * v189, v263, v265);
            v201 = v196[7] + 48 * v189;
            *v201 = horizontal;
            *(v201 + 8) = v62;
            *(v201 + 16) = *&v252;
            *(v201 + 24) = 0;
            *(v201 + 32) = v181;
            *(v201 + 40) = v183;
            v179 = *(v198 + 8);
            v179(v199, v200);
            v202 = v196[2];
            v79 = __OFADD__(v202, 1);
            v203 = v202 + 1;
            if (v79)
            {
              goto LABEL_149;
            }

            v196[2] = v203;
            v90 = v239;
            v57 = v261;
            v180 = v265;
          }

          ++v177;
          v55 = v258;
          v1 = v246;
          *&v246[v258] = v196;

          swift_endAccess();
          v179(v90, v180);
          v62 = v62 + v183;
          v176 = v180;
          if (v249 == v177)
          {
            goto LABEL_30;
          }
        }

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
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v62 = 0.0;
      v1 = v246;
LABEL_30:
      ++v57;
      horizontal = v147 + v174;
      v60 = v228;
      if (v228 <= v62)
      {
        v60 = v62;
      }

      v19 = v254;
      v61 = v237;
      if (v57 == v221)
      {

        *&v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_maximumScrollingHeaderHeight] = v60;
        if ((v242 & 1) == 0)
        {
          horizontal = horizontal - v59;
        }

        v10 = &selRef_setSubtitleText_;
LABEL_141:
        v205 = v231;
        if (horizontal > v231)
        {
          v205 = horizontal;
        }

        v206 = v212 + v211 + v43 + v60 + v58;
        v207 = &v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_contentSize];
        *v207 = v210 + v209 + v205;
        v207[1] = v206;
        swift_unknownObjectRelease();

LABEL_2:
        v11 = [v1 v10[199]];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 panGestureRecognizer];
          [v13 removeTarget:v1 action:0];
          [v13 addTarget:v1 action:"panGestureRecognizerStateDidChange:"];
        }

        sub_32533C();
        return;
      }
    }

    sub_32DEF4(v80, v74);
    v75 = sub_2F5A90(v57);
    if ((v81 & 1) != (v82 & 1))
    {
      goto LABEL_162;
    }

LABEL_40:
    v71 = v267;
    if (v81)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }
}

void sub_3235B8(void *a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  v16 = [v1 collectionView];
  if (v16)
  {
    v17 = v16;
    v18 = *(v5 + 56);
    v61 = v4;
    v55 = v18;
    v56 = v5 + 56;
    v18(v15, 1, 1, v4);
    v19 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
    swift_beginAccess();
    if (v2[v19] != 1)
    {
LABEL_21:

      sub_36B0C(v15, v13, &unk_DE8E20);
      v50 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_startingIndexPath;
      swift_beginAccess();
      sub_57CF8(v13, &v2[v50]);
      swift_endAccess();
      return;
    }

    [a1 locationInView:v17];
    v21 = v20;
    v22 = [v17 visibleCells];
    sub_13C80(0, &qword_DFE230);
    v23 = sub_AB9760();

    v53 = v2;
    v54 = v15;
    v52 = v13;
    if (v23 >> 62)
    {
      v24 = sub_ABB060();
      if (v24)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v24 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
      if (v24)
      {
LABEL_5:
        if (v24 < 1)
        {
          __break(1u);
          return;
        }

        v25 = 0;
        v60 = v23 & 0xC000000000000001;
        v26 = (v5 + 32);
        v57 = (v5 + 8);
        v59 = 1;
        v27 = 0.0;
        do
        {
          if (v60)
          {
            v28 = sub_360438(v25, v23);
          }

          else
          {
            v28 = *(v23 + 8 * v25 + 32);
          }

          v29 = v28;
          v30 = [v17 indexPathForCell:v28];
          if (v30)
          {
            v31 = v24;
            v32 = v9;
            v33 = v58;
            v34 = v30;
            sub_AB3790();

            v35 = *v26;
            v36 = v33;
            v37 = v61;
            (*v26)(v32, v36, v61);
            v38 = v29;
            v39 = [v38 superview];
            if (v39)
            {
              v40 = v39;
              [v38 center];
              v42 = v41;
              v44 = v43;

              [v40 convertPoint:v17 toCoordinateSpace:{v42, v44}];
              v46 = v45;

              v47 = vabdd_f64(v21, v46);
              if (v59 & 1 | (v47 < v27))
              {
                v48 = v54;
                sub_12E1C(v54, &unk_DE8E20);
                v9 = v32;
                v49 = v61;
                v35(v48, v32, v61);
                v55(v48, 0, 1, v49);
                v59 = 0;
                v27 = v47;
              }

              else
              {
                v9 = v32;
                (*v57)(v32, v61);
                v59 = 0;
              }
            }

            else
            {

              (*v57)(v32, v37);
              v9 = v32;
            }

            v24 = v31;
          }

          else
          {
          }

          ++v25;
        }

        while (v24 != v25);
      }
    }

    v13 = v52;
    v2 = v53;
    v15 = v54;
    goto LABEL_21;
  }
}

id ShelfCollectionViewLayout.shouldInvalidateLayout(forBoundsChange:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  result = [v4 collectionView];
  if (result)
  {
    v10 = result;
    [result bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v21.origin.x = v12;
    v21.origin.y = v14;
    v21.size.width = v16;
    v21.size.height = v18;
    Width = CGRectGetWidth(v21);
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    if (Width != CGRectGetWidth(v22))
    {
      return &dword_0 + 1;
    }

    if (v12 != a1 || v14 != a2)
    {

      return &dword_0 + 1;
    }

    return 0;
  }

  return result;
}

CGFloat ShelfCollectionViewLayout.targetContentOffset(forProposedContentOffset:withScrollingVelocity:)(CGFloat a1, double a2, long double a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v106 - v11;
  v13 = sub_AB3820();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v3 collectionView];
  if (!v17)
  {
    return a1;
  }

  v18 = v17;
  [v18 contentInset];
  v20 = v19;
  v21 = copysign(0.01, a3);
  v22 = log(UIScrollViewDecelerationRateNormal);
  [v18 contentOffset];
  v24 = v23;

  v116 = v20 + v24 - (a3 - v21) / v22;
  sub_320BCC();
  v26 = v25;
  v27 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
  swift_beginAccess();
  p_cache = &OBJC_METACLASS____TtC16MusicApplication13TextStackView.cache;
  if (v4[v27] != 1)
  {
LABEL_10:
    v41 = *&v4[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_sectionPageRects];
    v42 = *(v41 + 2);
    if (v42)
    {
      v43 = v41[4];
      v44 = v41[5];
      v45 = v41[6];
      v46 = v41[7];

      v117.origin.x = v43;
      v117.origin.y = v44;
      v117.size.width = v45;
      v117.size.height = v46;
      MinX = CGRectGetMinX(v117);
      v118.origin.x = v43;
      v118.origin.y = v44;
      v118.size.width = v45;
      v118.size.height = v46;
      a1 = CGRectGetMinX(v118);
      v48 = v42 - 1;
      if (v42 != 1)
      {
        v49 = vabdd_f64(v26 + MinX, v116);
        v50 = v41 + 11;
        do
        {
          v51 = *(v50 - 3);
          v52 = *(v50 - 2);
          v53 = *(v50 - 1);
          v54 = *v50;
          v119.origin.x = v51;
          v119.origin.y = v52;
          v119.size.width = v53;
          v119.size.height = *v50;
          v55 = vabdd_f64(v26 + CGRectGetMinX(v119), v116);
          if (v55 < v49)
          {
            v120.origin.x = v51;
            v120.origin.y = v52;
            v120.size.width = v53;
            v120.size.height = v54;
            a1 = CGRectGetMinX(v120);
            v49 = v55;
          }

          v50 += 4;
          --v48;
        }

        while (v48);
      }

      v31 = v18;
      p_cache = &OBJC_METACLASS____TtC16MusicApplication13TextStackView.cache;
    }

    else
    {
      v31 = v18;
    }

    goto LABEL_50;
  }

  v29 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_startingIndexPath;
  swift_beginAccess();
  sub_15F84(&v4[v29], v12, &unk_DE8E20);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_12E1C(v12, &unk_DE8E20);
    goto LABEL_10;
  }

  (*(v14 + 32))(v16, v12, v13);
  isa = sub_AB3770().super.isa;
  v31 = [v18 layoutAttributesForItemAtIndexPath:isa];

  if (!v31)
  {
    (*(v14 + 8))(v16, v13);
    goto LABEL_10;
  }

  [v31 center];
  v109 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_sectionPageRects;
  v33 = *&v4[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_sectionPageRects];
  v34 = *(v33 + 16);
  if (!v34)
  {
    goto LABEL_49;
  }

  v35 = v32;
  v106 = v31;
  v107 = v16;
  v108 = v10;
  v112 = v33 + 32;

  v113 = 0;
  v36 = 0;
  v37 = 1;
  v31 = (1 - v34);
  v38 = 0uLL;
  v39 = 0.0;
  v40 = 0uLL;
  while (1)
  {
    v110 = v40;
    v111 = v38;
    v59 = v34;
    v60 = v112 + 32 * v36;
    v61 = *(v60 + 16);
    v62 = v36 + 1;
    v63 = v26 + *v60;
    v115 = *v60;
    v64 = *(&v115 + 1);
    v65 = *(&v61 + 1);
    v114 = v61;
    v66 = vabdd_f64(CGRectGetMidX(*(&v61 - 1)), v35);
    if ((v37 & 1) == 0 && v66 >= v39)
    {
      break;
    }

LABEL_19:
    v37 = 0;
    v113 = v36;
    v39 = v66;
    v36 = v62;
    v56 = v115;
    v38 = v115;
    v57 = v114;
    v40 = v114;
    v58 = v62 == v59;
    v34 = v59;
    if (v58)
    {
      goto LABEL_27;
    }
  }

  if (v62 != v59)
  {
    v62 = v36 + 2;
    while (1)
    {
      v67 = (v33 + 32 * v62);
      v68 = *(v67 + 1);
      v69 = v26 + *v67;
      v115 = *v67;
      v70 = *(&v115 + 1);
      v71 = *(&v68 + 1);
      v114 = v68;
      v66 = vabdd_f64(CGRectGetMidX(*(&v68 - 1)), v35);
      if (v66 < v39)
      {
        break;
      }

      ++v62;
      if (v31 + v62 == &dword_0 + 2)
      {
        goto LABEL_26;
      }
    }

    v36 = v62 - 1;
    goto LABEL_19;
  }

LABEL_26:
  v56 = v111;
  v57 = v110;
LABEL_27:
  v114 = v57;
  v115 = v56;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEDC0);
  inited = swift_initStackObject();
  v73 = v114;
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = v115;
  *(inited + 48) = v73;
  v74 = v113;
  if (v113 >= 1)
  {
    v75 = *&v4[v109];
    v10 = v108;
    v16 = v107;
    if (v113 <= *(v75 + 16))
    {
      v76 = (v75 + 32 * v113);

      v77 = v76[1];
      v115 = *v76;
      v114 = v77;
      inited = sub_6C31C(&dword_0 + 1, 2, 1, inited);
      *(inited + 16) = 2;
      v78 = v114;
      *(inited + 64) = v115;
      *(inited + 80) = v78;

      goto LABEL_31;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v10 = v108;
  v16 = v107;
LABEL_31:
  v79 = *&v4[v109];
  v31 = v106;
  if (v74 + 1 < *(v79 + 16))
  {
    if (v74 < -1)
    {
      goto LABEL_53;
    }

    v80 = v79 + 32 * (v74 + 1);
    v81 = *(v80 + 32);
    v114 = *(v80 + 48);
    v115 = v81;
    v31 = *(inited + 16);
    v16 = *(inited + 24);
    v10 = v31 + 1;

    if (v31 >= v16 >> 1)
    {
LABEL_54:
      inited = sub_6C31C((v16 > 1), v10, 1, inited);
    }

    p_cache = (&OBJC_METACLASS____TtC16MusicApplication13TextStackView + 16);
    v16 = v107;
    *(inited + 16) = v10;
    v82 = inited + 32 * v31;
    v83 = v114;
    *(v82 + 32) = v115;
    *(v82 + 48) = v83;

    v10 = v108;
    v31 = v106;
  }

  else
  {
    p_cache = &OBJC_METACLASS____TtC16MusicApplication13TextStackView.cache;
  }

  [v18 bounds];
  Width = CGRectGetWidth(v121);
  v85 = *(inited + 16);
  if (!v85)
  {

    goto LABEL_49;
  }

  v86 = 0;
  v87 = v116 + Width * 0.5;
  v113 = v85 - 1;
  v112 = inited + 88;
  v88 = 1;
  v89 = 0.0;
  v90 = 0.0;
  v91 = 0.0;
  v92 = 0.0;
  v93 = 0.0;
  while (2)
  {
    *&v114 = v92;
    *&v115 = v91;
    v116 = v89;
    v95 = inited + 32 + 32 * v86;
    v96 = *v95;
    v97 = *(v95 + 8);
    v98 = *(v95 + 16);
    v99 = *(v95 + 24);
    v94 = v86 + 1;
    v122.origin.x = v26 + *v95;
    v122.origin.y = v97;
    v122.size.width = v98;
    v122.size.height = v99;
    v100 = vabdd_f64(CGRectGetMidX(v122), v87);
    if ((v88 & 1) != 0 || v100 < v93)
    {
LABEL_39:
      v88 = 0;
      v89 = v96;
      v90 = v97;
      v91 = v98;
      v92 = v99;
      v93 = v100;
      v86 = v94;
      if (v94 == v85)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  if (v94 != v85)
  {
    v101 = -2 - v86;
    v102 = v113 - v86;
    v103 = (v112 + 32 * v86);
    while (1)
    {
      v96 = *(v103 - 3);
      v97 = *(v103 - 2);
      v98 = *(v103 - 1);
      v99 = *v103;
      v123.origin.x = v26 + v96;
      v123.origin.y = v97;
      v123.size.width = v98;
      v123.size.height = *v103;
      v100 = vabdd_f64(CGRectGetMidX(v123), v87);
      if (v100 < v93)
      {
        break;
      }

      --v101;
      v103 += 4;
      if (!--v102)
      {
        goto LABEL_46;
      }
    }

    v94 = -v101;
    goto LABEL_39;
  }

LABEL_46:
  v96 = v116;
  v97 = v90;
  v98 = *&v115;
  v99 = *&v114;
LABEL_47:

  v124.origin.x = v96;
  v124.origin.y = v97;
  v124.size.width = v98;
  v124.size.height = v99;
  a1 = CGRectGetMinX(v124);
  v10 = v108;
  p_cache = (&OBJC_METACLASS____TtC16MusicApplication13TextStackView + 16);
  v16 = v107;
  v31 = v106;
LABEL_49:

  (*(v14 + 8))(v16, v13);
LABEL_50:

  (*(v14 + 56))(v10, 1, 1, v13);
  v104 = p_cache[439];
  swift_beginAccess();
  sub_57CF8(v10, v104 + v4);
  swift_endAccess();
  return a1;
}

Swift::Void __swiftcall ShelfCollectionViewLayout.music_collectionViewInheritedLayoutInsetsDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ShelfCollectionViewLayout();
  objc_msgSendSuper2(&v1, "music_collectionViewInheritedLayoutInsetsDidChange");
  [v0 invalidateLayout];
}

uint64_t sub_3246F4(char *a1, void **a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v105 = a2;
  v115 = a6;
  v114 = a5;
  v127 = a3;
  v128 = a4;
  v131 = sub_AB3820();
  v7 = *(v131 - 8);
  v8 = __chkstk_darwin(v131);
  v113 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v130 = &v103 - v11;
  __chkstk_darwin(v10);
  v108 = &v103 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF088);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v103 - v17;
  v19 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollingHeaderIndexPathMetricsMap;
  swift_beginAccess();
  v20 = *&a1[v19];
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v112 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames;
  v25 = (v22 + 63) >> 6;
  v120 = (v7 + 16);
  v129 = (v7 + 32);
  left = UIEdgeInsetsZero.left;
  top = UIEdgeInsetsZero.top;
  v121 = v7;
  v111 = (v7 + 8);
  v110 = v20;

  v28 = 0;
  v109 = a1;
  v107 = v16;
  v123 = v18;
  v106 = v21;
  v116 = left;
  while (v24)
  {
    v29 = v28;
LABEL_16:
    v32 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v110;
    v35 = v121;
    (*(v121 + 16))(v108, *(v110 + 48) + *(v121 + 72) * v33, v131);
    v36 = *(v34 + 56) + 48 * v33;
    v37 = *(v36 + 32);
    v38 = *(v36 + 40);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF090);
    v40 = &v107[*(v39 + 48)];
    v41 = *(v35 + 32);
    v42 = *v36;
    v125 = *(v36 + 16);
    v126 = v42;
    v16 = v107;
    v41();
    v43 = v125;
    *v40 = v126;
    *(v40 + 1) = v43;
    *(v40 + 4) = v37;
    *(v40 + 5) = v38;
    (*(*(v39 - 8) + 56))(v16, 0, 1, v39);
    a1 = v109;
    v18 = v123;
    v21 = v106;
LABEL_17:
    sub_36B0C(v16, v18, &qword_DFF088);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF090);
    if ((*(*(v44 - 8) + 48))(v18, 1, v44) == 1)
    {
    }

    v45 = &v18[*(v44 + 48)];
    v47 = *v45;
    v46 = *(v45 + 1);
    v48 = *(v45 + 3);
    v124 = *(v45 + 2);
    v49 = *(v45 + 5);
    *&v126 = *(v45 + 4);
    *&v125 = v49;
    v50 = *v129;
    (*v129)(v130, v18, v131);
    v51 = [a1 collectionView];
    MaxY = top;
    v53 = left;
    if (v51)
    {
      v54 = v51;
      [v51 music_inheritedLayoutInsets];
      MaxY = v55;
      v53 = v56;
      if ([v54 delegate])
      {
        ObjectType = swift_getObjectType();
        v58 = swift_conformsToProtocol2();
        if (v58)
        {
          v59 = (*(v58 + 64))(v54, a1, ObjectType, v58);
          v61 = v60;
          swift_unknownObjectRelease();

          MaxY = MaxY + v59;
          v53 = v53 + v61;
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    v63 = *&a1[v112];
    v64 = *(v63 + 16);
    if (v64)
    {
      v119 = v46;
      v65 = (v63 + 32 * v64);
      v67 = *v65;
      v66 = v65[1];
      v68 = v65[3];
      v118 = v65[2];
      v117 = v68;
      v69 = [a1 collectionView];
      v70 = top;
      v71 = left;
      if (v69)
      {
        v72 = v69;
        [v69 music_inheritedLayoutInsets];
        v70 = v73;
        v71 = v74;
        if ([v72 delegate])
        {
          v75 = swift_getObjectType();
          v76 = swift_conformsToProtocol2();
          if (v76)
          {
            v77 = v47;
            v78 = v48;
            v79 = (*(v76 + 64))(v72, a1, v75, v76);
            v104 = v80;
            swift_unknownObjectRelease();

            v70 = v70 + v79;
            v48 = v78;
            v47 = v77;
            left = v116;
            v71 = v71 + v104;
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }

      v132.origin.x = v67 + v71;
      v132.origin.y = v66 + v70;
      v132.size.width = v118;
      v132.size.height = v117;
      MaxY = CGRectGetMaxY(v132);
      v46 = v119;
    }

    v81 = [a1 collectionView];
    v82 = left;
    if (v81)
    {
      v83 = v81;
      [v81 music_inheritedLayoutInsets];
      v82 = v84;
      if ([v83 delegate])
      {
        v85 = swift_getObjectType();
        v86 = swift_conformsToProtocol2();
        if (v86)
        {
          (*(v86 + 64))(v83, a1, v85, v86);
          v88 = v87;
          swift_unknownObjectRelease();

          v82 = v82 + v88;
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    v89 = v47 + v53;
    v90 = v46 + MaxY;
    v133.origin.x = v89;
    v133.origin.y = v90;
    v91 = v124;
    v133.size.width = v124;
    v133.size.height = v48;
    MinX = CGRectGetMinX(v133);
    v134.origin.x = v127;
    v134.origin.y = v128;
    v93 = v114;
    v134.size.width = v114;
    v94 = v115;
    v134.size.height = v115;
    v95 = v82 + CGRectGetMinX(v134);
    v135.origin.x = v89;
    v135.origin.y = v90;
    v135.size.width = v91;
    v135.size.height = v48;
    MaxX = CGRectGetMaxX(v135);
    if (MaxX >= v95)
    {
      MaxX = v95;
    }

    if (MinX > MaxX)
    {
      v97 = MinX;
    }

    else
    {
      v97 = MaxX;
    }

    v136.origin.x = v89;
    v136.origin.y = v90;
    v136.size.width = v91;
    v136.size.height = v48;
    v138.origin.y = CGRectGetMinY(v136);
    v137.origin.x = v127;
    v137.origin.y = v128;
    v137.size.width = v93;
    v137.size.height = v94;
    v138.origin.x = v97;
    *&v138.size.width = v126;
    *&v138.size.height = v125;
    if (CGRectIntersectsRect(v137, v138))
    {
      (*v120)(v113, v130, v131);
      v98 = v105;
      v99 = *v105;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v98 = v99;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v99 = sub_6AE4C(0, v99[2] + 1, 1, v99);
        *v105 = v99;
      }

      v102 = v99[2];
      v101 = v99[3];
      if (v102 >= v101 >> 1)
      {
        v99 = sub_6AE4C(v101 > 1, v102 + 1, 1, v99);
        *v105 = v99;
      }

      v99[2] = v102 + 1;
      v50(v99 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v102, v113, v131);
    }

    result = (*v111)(v130, v131);
    v18 = v123;
    left = v116;
  }

  if (v25 <= v28 + 1)
  {
    v30 = v28 + 1;
  }

  else
  {
    v30 = v25;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF090);
      (*(*(v62 - 8) + 56))(v16, 1, 1, v62);
      v24 = 0;
      v28 = v31;
      goto LABEL_17;
    }

    v24 = *(v21 + 8 * v29);
    ++v28;
    if (v24)
    {
      v28 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}