uint64_t CuttlefishAPIAsync.resetAccountCdpcontents(resetReason:idmsTargetContext:idmsCuttlefishPassword:testingNotifyIdms:accountInfo:metrics:isDbrv2:completion:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27 = a7;
  v30 = a12;
  v31 = a11;
  v28 = a8;
  v29 = a14;
  v20 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2 & 0x1FF;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = v27;
  v40 = v28;
  v41 = a9;
  v42 = a10;
  sub_1001D63AC(&qword_100298FA8, type metadata accessor for ResetAccountCDPContentsRequest);
  sub_100216654();
  (*(v29 + 112))(v24, v31, v30, v32);
  return sub_1001E32F4(v24, type metadata accessor for ResetAccountCDPContentsRequest);
}

uint64_t sub_1001D52C0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t (*a12)(void))
{
  v59 = a8;
  v57 = a4;
  v58 = a6;
  v54 = a2;
  v16 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v60 = &v53 - v19;
  v20 = type metadata accessor for Metrics(0);
  v61 = *(v20 - 8);
  v62 = v20;
  v21 = *(v61 + 64);
  v23 = __chkstk_darwin(v20, v22);
  v56 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v55 = &v53 - v26;
  v27 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8, v29);
  v31 = &v53 - v30;
  v32 = type metadata accessor for AccountInfo(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v36 = __chkstk_darwin(v32, v35);
  v38 = &v53 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v39);
  v41 = &v53 - v40;
  if ((a3 & 0x100) == 0)
  {
    *a1 = v54;
    *(a1 + 8) = a3 & 1;
  }

  if (a5)
  {
    v42 = *(a1 + 24);

    *(a1 + 16) = v57;
    *(a1 + 24) = a5;
  }

  if (a7)
  {
    v43 = *(a1 + 40);

    *(a1 + 32) = v58;
    *(a1 + 40) = a7;
  }

  if (v59 != 2)
  {
    *(a1 + 48) = v59 & 1;
  }

  sub_100019C6C(a9, v31, &unk_10029D6F0, &qword_100226B40);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_1000114D4(v31, &unk_10029D6F0, &qword_100226B40);
  }

  else
  {
    sub_1001E3224(v31, v41, type metadata accessor for AccountInfo);
    sub_1001E3224(v41, v38, type metadata accessor for AccountInfo);
    v44 = *(a12(0) + 40);
    sub_1000114D4(a1 + v44, &unk_10029D6F0, &qword_100226B40);
    sub_1001E3224(v38, a1 + v44, type metadata accessor for AccountInfo);
    (*(v33 + 56))(a1 + v44, 0, 1, v32);
  }

  v45 = v60;
  v46 = v61;
  sub_100019C6C(a10, v60, &qword_100297FE0, &unk_10021E7F0);
  v47 = v62;
  if ((*(v46 + 48))(v45, 1, v62) == 1)
  {
    result = sub_1000114D4(v45, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    v49 = v45;
    v50 = v55;
    sub_1001E3224(v49, v55, type metadata accessor for Metrics);
    v51 = v56;
    sub_1001E3224(v50, v56, type metadata accessor for Metrics);
    v52 = *(a12(0) + 44);
    sub_1000114D4(a1 + v52, &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v51, a1 + v52, type metadata accessor for Metrics);
    result = (*(v46 + 56))(a1 + v52, 0, 1, v47);
  }

  if (a11 != 2)
  {
    *(a1 + 49) = a11 & 1;
  }

  return result;
}

uint64_t CuttlefishAPIAsync.removeRecoveryKey(changeToken:peerID:stableInfoAndSig:dynamicInfoAndSig:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = a9;
  v26 = a8;
  v27 = a10;
  v29 = a11;
  v19 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19, v21);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = v26;
  sub_1001D63AC(&unk_10029D9E0, type metadata accessor for RemoveRecoveryKeyRequest);
  sub_100216654();
  (*(a12 + 120))(v23, v28, v27, v29, a12);
  return sub_1001E32F4(v23, type metadata accessor for RemoveRecoveryKeyRequest);
}

uint64_t CuttlefishAPIAsync.fetchPcsidentityByPublicKey(pcsServices:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  v15 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request, v16);
  v18 = &v20[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_1001D63AC(&qword_100299040, type metadata accessor for DirectPCSIdentityFetchRequest);
  sub_100216654();
  (*(a7 + 136))(v18, a4, a5, a6, a7);
  return sub_1001E32F4(v18, type metadata accessor for DirectPCSIdentityFetchRequest);
}

uint64_t sub_1001D5C30(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v47 = a5;
  v43 = a3;
  v44 = a4;
  v7 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v42 - v10;
  v12 = type metadata accessor for AccountInfo(0);
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  v15 = __chkstk_darwin(v12, v14);
  v42 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v19 = &v42 - v18;
  v20 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v42 - v23;
  v25 = type metadata accessor for Metrics(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v32);
  v34 = &v42 - v33;
  if (*(a2 + 16))
  {
    v35 = *a1;

    *a1 = a2;
  }

  sub_100019C6C(v43, v24, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1000114D4(v24, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v24, v34, type metadata accessor for Metrics);
    sub_1001E3224(v34, v31, type metadata accessor for Metrics);
    v36 = *(v47(0) + 24);
    sub_1000114D4(&a1[v36], &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v31, &a1[v36], type metadata accessor for Metrics);
    (*(v26 + 56))(&a1[v36], 0, 1, v25);
  }

  sub_100019C6C(v44, v11, &unk_10029D6F0, &qword_100226B40);
  v38 = v45;
  v37 = v46;
  if ((*(v45 + 48))(v11, 1, v46) == 1)
  {
    return sub_1000114D4(v11, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1001E3224(v11, v19, type metadata accessor for AccountInfo);
  v40 = v42;
  sub_1001E3224(v19, v42, type metadata accessor for AccountInfo);
  v41 = *(v47(0) + 28);
  sub_1000114D4(&a1[v41], &unk_10029D6F0, &qword_100226B40);
  sub_1001E3224(v40, &a1[v41], type metadata accessor for AccountInfo);
  return (*(v38 + 56))(&a1[v41], 0, 1, v37);
}

uint64_t CuttlefishAPIAsync.fetchCurrentItem(currentItems:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  v15 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request, v16);
  v18 = &v20[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_1001D63AC(&qword_100299090, type metadata accessor for CurrentItemFetchRequest);
  sub_100216654();
  (*(a7 + 144))(v18, a4, a5, a6, a7);
  return sub_1001E32F4(v18, type metadata accessor for CurrentItemFetchRequest);
}

uint64_t CuttlefishAPIAsync.performCkserverUnreadableDataRemoval(metrics:accountInfo:isDbrv2:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v16);
  v18 = &v20[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_1001D63AC(&qword_1002990D0, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  sub_100216654();
  (*(a7 + 152))(v18, a4, a5, a6, a7);
  return sub_1001E32F4(v18, type metadata accessor for RemoveUnreadableCKServerDataRequest);
}

uint64_t sub_1001D63AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CuttlefishAPIAsyncClient.__allocating_init(codeService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void CuttlefishAPIAsyncClient.reset(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298518, &unk_100226B60);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for ResetRequest);
  v13 = type metadata accessor for ResetRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.ResetOperation(0));
  sub_100019C6C(v12, v9, &qword_100298518, &unk_100226B60);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298518, &unk_100226B60);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.establish(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298508, &qword_10021DF78);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for EstablishRequest);
  v13 = type metadata accessor for EstablishRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.EstablishOperation(0));
  sub_100019C6C(v12, v9, &qword_100298508, &qword_10021DF78);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298508, &qword_10021DF78);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.joinWithVoucher(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002984F8, &unk_100226B70);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for JoinWithVoucherRequest);
  v13 = type metadata accessor for JoinWithVoucherRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.JoinWithVoucherOperation(0));
  sub_100019C6C(v12, v9, &qword_1002984F8, &unk_100226B70);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002984F8, &unk_100226B70);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.updateTrust(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002984E8, &qword_10021DF58);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for UpdateTrustRequest);
  updated = type metadata accessor for UpdateTrustRequest(0);
  (*(*(updated - 8) + 56))(v12, 0, 1, updated);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.UpdateTrustOperation(0));
  sub_100019C6C(v12, v9, &qword_1002984E8, &qword_10021DF58);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002984E8, &qword_10021DF58);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.setRecoveryKey(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002984D8, &unk_100226B80);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for SetRecoveryKeyRequest);
  v13 = type metadata accessor for SetRecoveryKeyRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.SetRecoveryKeyOperation(0));
  sub_100019C6C(v12, v9, &qword_1002984D8, &unk_100226B80);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002984D8, &unk_100226B80);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.addCustodianRecoveryKey(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298458, &unk_100226BC0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for AddCustodianRecoveryKeyRequest);
  v13 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.AddCustodianRecoveryKeyOperation(0));
  sub_100019C6C(v12, v9, &qword_100298458, &unk_100226BC0);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298458, &unk_100226BC0);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.fetchChanges(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002984C8, &qword_10021DF38);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for FetchChangesRequest);
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  (*(*(ChangesRequest - 8) + 56))(v12, 0, 1, ChangesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchChangesOperation(0));
  sub_100019C6C(v12, v9, &qword_1002984C8, &qword_10021DF38);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002984C8, &qword_10021DF38);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.fetchViableBottles(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002984B8, &unk_100226B90);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for FetchViableBottlesRequest);
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  (*(*(ViableBottlesRequest - 8) + 56))(v12, 0, 1, ViableBottlesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchViableBottlesOperation(0));
  sub_100019C6C(v12, v9, &qword_1002984B8, &unk_100226B90);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002984B8, &unk_100226B90);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.fetchRecoverableTlkshares(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298448, &qword_10021DEB8);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for FetchRecoverableTLKSharesRequest);
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  (*(*(RecoverableTLKSharesRequest - 8) + 56))(v12, 0, 1, RecoverableTLKSharesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchRecoverableTlksharesOperation(0));
  sub_100019C6C(v12, v9, &qword_100298448, &qword_10021DEB8);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298448, &qword_10021DEB8);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.fetchPolicyDocuments(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002984A8, &qword_10021DF18);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for FetchPolicyDocumentsRequest);
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  (*(*(PolicyDocumentsRequest - 8) + 56))(v12, 0, 1, PolicyDocumentsRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchPolicyDocumentsOperation(0));
  sub_100019C6C(v12, v9, &qword_1002984A8, &qword_10021DF18);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002984A8, &qword_10021DF18);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.getRepairAction(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298498, &unk_100226BA0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for GetRepairActionRequest);
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  (*(*(RepairActionRequest - 8) + 56))(v12, 0, 1, RepairActionRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetRepairActionOperation(0));
  sub_100019C6C(v12, v9, &qword_100298498, &unk_100226BA0);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298498, &unk_100226BA0);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.getEscrowCheck(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298488, &qword_10021DEF8);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for GetEscrowCheckRequest);
  v13 = type metadata accessor for GetEscrowCheckRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetEscrowCheckOperation(0));
  sub_100019C6C(v12, v9, &qword_100298488, &qword_10021DEF8);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298488, &qword_10021DEF8);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.getSupportAppInfo(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298478, &unk_100226BB0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for GetSupportAppInfoRequest);
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  (*(*(SupportAppInfoRequest - 8) + 56))(v12, 0, 1, SupportAppInfoRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetSupportAppInfoOperation(0));
  sub_100019C6C(v12, v9, &qword_100298478, &unk_100226BB0);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298478, &unk_100226BB0);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.resetAccountCdpcontents(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298468, &qword_10021DED8);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for ResetAccountCDPContentsRequest);
  v13 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.ResetAccountCdpcontentsOperation(0));
  sub_100019C6C(v12, v9, &qword_100298468, &qword_10021DED8);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298468, &qword_10021DED8);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.removeRecoveryKey(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298438, &unk_100226BD0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for RemoveRecoveryKeyRequest);
  v13 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.RemoveRecoveryKeyOperation(0));
  sub_100019C6C(v12, v9, &qword_100298438, &unk_100226BD0);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298438, &unk_100226BD0);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.performAtoprvactions(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298428, &qword_10021DE98);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for PerformATOPRVActionsRequest);
  v13 = type metadata accessor for PerformATOPRVActionsRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.PerformAtoprvactionsOperation(0));
  sub_100019C6C(v12, v9, &qword_100298428, &qword_10021DE98);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298428, &qword_10021DE98);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.fetchPcsidentityByPublicKey(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298408, &qword_10021DE78);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for DirectPCSIdentityFetchRequest);
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  (*(*(Request - 8) + 56))(v12, 0, 1, Request);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchPcsidentityByPublicKeyOperation(0));
  sub_100019C6C(v12, v9, &qword_100298408, &qword_10021DE78);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298408, &qword_10021DE78);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.fetchCurrentItem(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298418, &unk_100226BE0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for CurrentItemFetchRequest);
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  (*(*(Request - 8) + 56))(v12, 0, 1, Request);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchCurrentItemOperation(0));
  sub_100019C6C(v12, v9, &qword_100298418, &unk_100226BE0);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298418, &unk_100226BE0);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

void CuttlefishAPIAsyncClient.performCkserverUnreadableDataRemoval(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002983F8, &qword_100226BF0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v17 - v11;
  sub_1001E328C(a1, &v17 - v11, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  v13 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.PerformCkserverUnreadableDataRemovalOperation(0));
  sub_100019C6C(v12, v9, &qword_1002983F8, &qword_100226BF0);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002983F8, &qword_100226BF0);
  v15 = v14;

  sub_1002163E4();

  v16 = *(v2 + 16);
  sub_100216C44();
}

uint64_t CuttlefishAPIAsyncClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CuttlefishAPIAsyncOperation.reset(resetReason:idmsTargetContext:idmsCuttlefishPassword:testingNotifyIdms:accountInfo:metrics:isDbrv2:completion:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v28 = a7;
  v31 = a12;
  v32 = a11;
  v29 = a8;
  v30 = a14;
  v20 = type metadata accessor for ResetRequest(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2 & 0x1FF;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = v28;
  v41 = v29;
  v42 = a9;
  v43 = a10;
  sub_1001D63AC(&qword_100298CE0, type metadata accessor for ResetRequest);
  sub_100216654();
  v25 = (*(v30 + 8))(v24, v32, v31, v33);
  sub_1001E32F4(v24, type metadata accessor for ResetRequest);
  return v25;
}

uint64_t CuttlefishAPIAsyncOperation.establish(peer:bottle:viewKeys:tlkShares:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a8;
  v24 = a7;
  v16 = type metadata accessor for EstablishRequest(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v18);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  sub_1001D63AC(&unk_10029D920, type metadata accessor for EstablishRequest);
  sub_100216654();
  v21 = (*(a10 + 16))(v20, v24, v25, a9, a10);
  sub_1001E32F4(v20, type metadata accessor for EstablishRequest);
  return v21;
}

uint64_t sub_1001D8D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v151 = a7;
  v148 = a6;
  v163 = a5;
  v162 = a4;
  v146 = a3;
  v144 = a2;
  v156 = a1;
  v7 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v143 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v150 = &v140 - v13;
  v14 = type metadata accessor for AccountInfo(0);
  v154 = *(v14 - 8);
  v155 = v14;
  v15 = *(v154 + 64);
  v17 = __chkstk_darwin(v14, v16);
  v153 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v152 = &v140 - v20;
  v21 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v22 = *(*(v21 - 8) + 64);
  v24 = __chkstk_darwin(v21 - 8, v23);
  v142 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v26);
  v147 = &v140 - v27;
  v28 = type metadata accessor for Metrics(0);
  v160 = *(v28 - 8);
  v161 = v28;
  v29 = *(v160 + 64);
  v31 = __chkstk_darwin(v28, v30);
  v149 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v159 = &v140 - v34;
  v35 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v36 = *(*(v35 - 8) + 64);
  v38 = __chkstk_darwin(v35 - 8, v37);
  v141 = &v140 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v40);
  v42 = &v140 - v41;
  v43 = type metadata accessor for Bottle(0);
  v157 = *(v43 - 8);
  v158 = v43;
  v44 = *(v157 + 64);
  v46 = __chkstk_darwin(v43, v45);
  v145 = &v140 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46, v48);
  v140 = &v140 - v49;
  v50 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v51 = *(*(v50 - 8) + 64);
  v53 = __chkstk_darwin(v50 - 8, v52);
  v55 = &v140 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53, v56);
  v58 = &v140 - v57;
  v59 = type metadata accessor for Peer(0);
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  v63 = __chkstk_darwin(v59, v62);
  v65 = &v140 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63, v66);
  v68 = &v140 - v67;
  sub_100019C6C(v144, v58, &unk_10029D7A0, &qword_10021E858);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    sub_1000114D4(v58, &unk_10029D7A0, &qword_10021E858);
    v69 = v156;
    v70 = v159;
  }

  else
  {
    sub_1001E3224(v58, v68, type metadata accessor for Peer);
    sub_1001E328C(v68, v65, type metadata accessor for Peer);
    v71 = *(type metadata accessor for EstablishRequest(0) + 20);
    v72 = v156;
    v73 = *(v156 + v71);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v68, type metadata accessor for Peer);
      v74 = *(v72 + v71);
      v69 = v72;
    }

    else
    {
      v75 = *(v72 + v71);
      v76 = type metadata accessor for EstablishRequest._StorageClass(0);
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      swift_allocObject();

      v74 = sub_1000BDADC(v79);
      sub_1001E32F4(v68, type metadata accessor for Peer);

      v80 = v156;
      *(v156 + v71) = v74;
      v69 = v80;
    }

    v70 = v159;
    sub_1001E3224(v65, v55, type metadata accessor for Peer);
    (*(v60 + 56))(v55, 0, 1, v59);
    v81 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
    swift_beginAccess();
    sub_1000F9E80(v55, v74 + v81, &unk_10029D7A0, &qword_10021E858);
    swift_endAccess();
  }

  sub_100019C6C(v146, v42, &unk_10029D880, &qword_10021E830);
  v82 = (*(v157 + 48))(v42, 1, v158);
  v83 = v152;
  v84 = v150;
  v85 = v147;
  if (v82 == 1)
  {
    sub_1000114D4(v42, &unk_10029D880, &qword_10021E830);
    v86 = v154;
  }

  else
  {
    v87 = v42;
    v88 = v140;
    sub_1001E3224(v87, v140, type metadata accessor for Bottle);
    sub_1001E328C(v88, v145, type metadata accessor for Bottle);
    v89 = *(type metadata accessor for EstablishRequest(0) + 20);
    v90 = *(v69 + v89);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v88, type metadata accessor for Bottle);
      v91 = *(v69 + v89);
    }

    else
    {
      v92 = *(v69 + v89);
      v93 = type metadata accessor for EstablishRequest._StorageClass(0);
      v94 = *(v93 + 48);
      v95 = *(v93 + 52);
      swift_allocObject();

      v91 = sub_1000BDADC(v96);
      sub_1001E32F4(v88, type metadata accessor for Bottle);

      *(v69 + v89) = v91;
    }

    v86 = v154;
    v97 = v141;
    sub_1001E3224(v145, v141, type metadata accessor for Bottle);
    (*(v157 + 56))(v97, 0, 1, v158);
    v98 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
    swift_beginAccess();
    sub_1000F9E80(v97, v91 + v98, &unk_10029D880, &qword_10021E830);
    swift_endAccess();
    v70 = v159;
  }

  if (*(v162 + 16))
  {
    v99 = *(type metadata accessor for EstablishRequest(0) + 20);
    v100 = *(v69 + v99);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = *(v69 + v99);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = type metadata accessor for EstablishRequest._StorageClass(0);
      v104 = *(v103 + 48);
      v105 = *(v103 + 52);
      swift_allocObject();
      v102 = sub_1000BDADC(v102);
      *(v69 + v99) = v102;
    }

    v106 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
    swift_beginAccess();
    v107 = *(v102 + v106);
    *(v102 + v106) = v162;
  }

  if (*(v163 + 16))
  {
    v108 = *(type metadata accessor for EstablishRequest(0) + 20);
    v109 = *(v69 + v108);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v111 = *(v69 + v108);
    if ((v110 & 1) == 0)
    {
      v112 = type metadata accessor for EstablishRequest._StorageClass(0);
      v113 = *(v112 + 48);
      v114 = *(v112 + 52);
      swift_allocObject();
      v111 = sub_1000BDADC(v111);
      *(v69 + v108) = v111;
    }

    v115 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
    swift_beginAccess();
    v116 = *(v111 + v115);
    *(v111 + v115) = v163;
  }

  sub_100019C6C(v148, v85, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v160 + 48))(v85, 1, v161) == 1)
  {
    sub_1000114D4(v85, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v85, v70, type metadata accessor for Metrics);
    sub_1001E328C(v70, v149, type metadata accessor for Metrics);
    v117 = v70;
    v118 = *(type metadata accessor for EstablishRequest(0) + 20);
    v119 = *(v69 + v118);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v117, type metadata accessor for Metrics);
      v120 = *(v69 + v118);
    }

    else
    {
      v121 = *(v69 + v118);
      v122 = type metadata accessor for EstablishRequest._StorageClass(0);
      v123 = *(v122 + 48);
      v124 = *(v122 + 52);
      swift_allocObject();

      v120 = sub_1000BDADC(v125);
      sub_1001E32F4(v117, type metadata accessor for Metrics);

      *(v69 + v118) = v120;
    }

    v126 = v142;
    sub_1001E3224(v149, v142, type metadata accessor for Metrics);
    (*(v160 + 56))(v126, 0, 1, v161);
    v127 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v126, v120 + v127, &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
  }

  v128 = v155;
  sub_100019C6C(v151, v84, &unk_10029D6F0, &qword_100226B40);
  if ((*(v86 + 48))(v84, 1, v128) == 1)
  {
    return sub_1000114D4(v84, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1001E3224(v84, v83, type metadata accessor for AccountInfo);
  sub_1001E328C(v83, v153, type metadata accessor for AccountInfo);
  v130 = *(type metadata accessor for EstablishRequest(0) + 20);
  v131 = *(v69 + v130);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_1001E32F4(v83, type metadata accessor for AccountInfo);
    v132 = *(v69 + v130);
  }

  else
  {
    v133 = *(v69 + v130);
    v134 = type metadata accessor for EstablishRequest._StorageClass(0);
    v135 = *(v134 + 48);
    v136 = *(v134 + 52);
    swift_allocObject();

    v132 = sub_1000BDADC(v137);
    sub_1001E32F4(v83, type metadata accessor for AccountInfo);

    *(v69 + v130) = v132;
  }

  v138 = v143;
  sub_1001E3224(v153, v143, type metadata accessor for AccountInfo);
  (*(v86 + 56))(v138, 0, 1, v128);
  v139 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v138, v132 + v139, &unk_10029D6F0, &qword_100226B40);
  return swift_endAccess();
}

uint64_t CuttlefishAPIAsyncOperation.joinWithVoucher(changeToken:peer:bottle:tlkShares:viewKeys:trustedDevicesVersion:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = a7;
  v27 = a8;
  v30 = a12;
  v28 = a10;
  v29 = a11;
  v19 = type metadata accessor for JoinWithVoucherRequest(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = v26;
  v38 = v27;
  v39 = a9;
  sub_1001D63AC(&unk_10029D870, type metadata accessor for JoinWithVoucherRequest);
  sub_100216654();
  v24 = (*(a13 + 24))(v23, v28, v29, v30, a13);
  sub_1001E32F4(v23, type metadata accessor for JoinWithVoucherRequest);
  return v24;
}

uint64_t sub_1001D9BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v205 = a8;
  v204 = a7;
  v218 = a6;
  v202 = a5;
  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v197 = &v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v208 = &v189 - v20;
  v211 = type metadata accessor for AccountInfo(0);
  v210 = *(v211 - 8);
  v21 = *(v210 + 64);
  v23 = __chkstk_darwin(v211, v22);
  v209 = &v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v196 = &v189 - v26;
  v27 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v28 = *(*(v27 - 8) + 64);
  v30 = __chkstk_darwin(v27 - 8, v29);
  v195 = &v189 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v32);
  v219 = &v189 - v33;
  v207 = type metadata accessor for Metrics(0);
  v217 = *(v207 - 8);
  v34 = *(v217 + 64);
  v36 = __chkstk_darwin(v207, v35);
  v206 = &v189 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v38);
  v212 = &v189 - v39;
  v40 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  v41 = *(*(v40 - 8) + 64);
  v43 = __chkstk_darwin(v40 - 8, v42);
  v194 = &v189 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43, v45);
  v203 = &v189 - v46;
  v47 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v215 = *(v47 - 8);
  v216 = v47;
  v48 = *(v215 + 64);
  v50 = __chkstk_darwin(v47, v49);
  v193 = &v189 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50, v52);
  v192 = &v189 - v53;
  v54 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v55 = *(*(v54 - 8) + 64);
  v57 = __chkstk_darwin(v54 - 8, v56);
  v191 = &v189 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57, v59);
  v199 = &v189 - v60;
  v61 = type metadata accessor for Bottle(0);
  v213 = *(v61 - 8);
  v214 = v61;
  v62 = *(v213 + 64);
  v64 = __chkstk_darwin(v61, v63);
  v201 = &v189 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64, v66);
  v200 = &v189 - v67;
  v68 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v69 = *(*(v68 - 8) + 64);
  v71 = __chkstk_darwin(v68 - 8, v70);
  v73 = &v189 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71, v74);
  v76 = &v189 - v75;
  v77 = type metadata accessor for Peer(0);
  v78 = *(v77 - 8);
  v79 = *(v78 + 64);
  v81 = __chkstk_darwin(v77, v80);
  v198 = &v189 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v81, v83);
  v85 = &v189 - v84;
  if (a3)
  {
    v189 = v73;
    v190 = a4;
    v86 = type metadata accessor for JoinWithVoucherRequest(0);
    v87 = a3;
    v88 = a1;
    v89 = *(v86 + 20);
    v90 = v87;

    v91 = *(v88 + v89);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = *(v88 + v89);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v94 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      v95 = *(v94 + 48);
      v96 = *(v94 + 52);
      swift_allocObject();
      v93 = sub_1000C12E8(v93);
      *(v88 + v89) = v93;
    }

    a1 = v88;
    swift_beginAccess();
    v97 = *(v93 + 24);
    *(v93 + 16) = a2;
    *(v93 + 24) = v90;

    a4 = v190;
    v73 = v189;
  }

  sub_100019C6C(a4, v76, &unk_10029D7A0, &qword_10021E858);
  if ((*(v78 + 48))(v76, 1, v77) == 1)
  {
    sub_1000114D4(v76, &unk_10029D7A0, &qword_10021E858);
    v98 = v212;
  }

  else
  {
    sub_1001E3224(v76, v85, type metadata accessor for Peer);
    sub_1001E328C(v85, v198, type metadata accessor for Peer);
    v99 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
    v100 = *(a1 + v99);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v85, type metadata accessor for Peer);
      v101 = *(a1 + v99);
    }

    else
    {
      v102 = *(a1 + v99);
      v103 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      v104 = *(v103 + 48);
      v105 = *(v103 + 52);
      swift_allocObject();

      v101 = sub_1000C12E8(v106);
      sub_1001E32F4(v85, type metadata accessor for Peer);

      *(a1 + v99) = v101;
    }

    v98 = v212;
    sub_1001E3224(v198, v73, type metadata accessor for Peer);
    (*(v78 + 56))(v73, 0, 1, v77);
    v107 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
    swift_beginAccess();
    sub_1000F9E80(v73, v101 + v107, &unk_10029D7A0, &qword_10021E858);
    swift_endAccess();
  }

  v108 = v199;
  sub_100019C6C(v202, v199, &unk_10029D880, &qword_10021E830);
  v109 = (*(v213 + 48))(v108, 1, v214);
  v110 = v211;
  v111 = v210;
  v112 = v204;
  v113 = v200;
  if (v109 == 1)
  {
    sub_1000114D4(v108, &unk_10029D880, &qword_10021E830);
  }

  else
  {
    sub_1001E3224(v108, v200, type metadata accessor for Bottle);
    sub_1001E328C(v113, v201, type metadata accessor for Bottle);
    v114 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
    v115 = *(a1 + v114);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v113, type metadata accessor for Bottle);
      v116 = *(a1 + v114);
    }

    else
    {
      v117 = *(a1 + v114);
      v118 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      v119 = *(v118 + 48);
      v120 = *(v118 + 52);
      swift_allocObject();

      v122 = sub_1000C12E8(v121);
      v123 = v113;
      v116 = v122;
      sub_1001E32F4(v123, type metadata accessor for Bottle);

      *(a1 + v114) = v116;
    }

    v124 = v191;
    sub_1001E3224(v201, v191, type metadata accessor for Bottle);
    (*(v213 + 56))(v124, 0, 1, v214);
    v125 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
    swift_beginAccess();
    sub_1000F9E80(v124, v116 + v125, &unk_10029D880, &qword_10021E830);
    swift_endAccess();
  }

  v126 = v219;
  if (*(v218 + 16))
  {
    v127 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
    v128 = *(a1 + v127);
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v130 = *(a1 + v127);
    if ((v129 & 1) == 0)
    {
      v131 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      v132 = *(v131 + 48);
      v133 = *(v131 + 52);
      swift_allocObject();
      v130 = sub_1000C12E8(v130);
      *(a1 + v127) = v130;
    }

    v134 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
    swift_beginAccess();
    v135 = *(v130 + v134);
    *(v130 + v134) = v218;
  }

  if (*(v112 + 16))
  {
    v136 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
    v137 = *(a1 + v136);
    v138 = swift_isUniquelyReferenced_nonNull_native();
    v139 = *(a1 + v136);
    if ((v138 & 1) == 0)
    {
      v140 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      v141 = *(v140 + 48);
      v142 = *(v140 + 52);
      swift_allocObject();
      v139 = sub_1000C12E8(v139);
      *(a1 + v136) = v139;
    }

    v143 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
    swift_beginAccess();
    v144 = *(v139 + v143);
    *(v139 + v143) = v112;

    v126 = v219;
  }

  v145 = a10;
  v146 = v203;
  sub_100019C6C(v205, v203, &qword_10029D770, &qword_10021E860);
  if ((*(v215 + 48))(v146, 1, v216) == 1)
  {
    sub_1000114D4(v146, &qword_10029D770, &qword_10021E860);
  }

  else
  {
    v218 = a10;
    v147 = v111;
    v148 = v110;
    v149 = v192;
    sub_1001E3224(v146, v192, type metadata accessor for IdmsTrustedDevicesVersion);
    v150 = v193;
    sub_1001E328C(v149, v193, type metadata accessor for IdmsTrustedDevicesVersion);
    v151 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
    v152 = *(a1 + v151);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v149, type metadata accessor for IdmsTrustedDevicesVersion);
      v153 = *(a1 + v151);
    }

    else
    {
      v154 = *(a1 + v151);
      v155 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      v156 = *(v155 + 48);
      v157 = *(v155 + 52);
      swift_allocObject();

      v153 = sub_1000C12E8(v158);
      sub_1001E32F4(v149, type metadata accessor for IdmsTrustedDevicesVersion);
      v98 = v212;

      *(a1 + v151) = v153;
    }

    v159 = v150;
    v160 = v194;
    sub_1001E3224(v159, v194, type metadata accessor for IdmsTrustedDevicesVersion);
    (*(v215 + 56))(v160, 0, 1, v216);
    v161 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
    swift_beginAccess();
    sub_1000F9E80(v160, v153 + v161, &qword_10029D770, &qword_10021E860);
    swift_endAccess();
    v126 = v219;
    v110 = v148;
    v111 = v147;
    v145 = v218;
  }

  sub_100019C6C(a9, v126, &qword_100297FE0, &unk_10021E7F0);
  v162 = v207;
  if ((*(v217 + 48))(v126, 1, v207) == 1)
  {
    sub_1000114D4(v126, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v126, v98, type metadata accessor for Metrics);
    sub_1001E328C(v98, v206, type metadata accessor for Metrics);
    v163 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
    v164 = *(a1 + v163);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v98, type metadata accessor for Metrics);
      v165 = *(a1 + v163);
    }

    else
    {
      v166 = *(a1 + v163);
      v167 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      v168 = *(v167 + 48);
      v169 = *(v167 + 52);
      swift_allocObject();

      v165 = sub_1000C12E8(v170);
      sub_1001E32F4(v98, type metadata accessor for Metrics);

      *(a1 + v163) = v165;
    }

    v171 = v195;
    sub_1001E3224(v206, v195, type metadata accessor for Metrics);
    (*(v217 + 56))(v171, 0, 1, v162);
    v172 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v171, v165 + v172, &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
  }

  v173 = v208;
  sub_100019C6C(v145, v208, &unk_10029D6F0, &qword_100226B40);
  if ((*(v111 + 48))(v173, 1, v110) == 1)
  {
    return sub_1000114D4(v173, &unk_10029D6F0, &qword_100226B40);
  }

  v175 = v173;
  v176 = v196;
  sub_1001E3224(v175, v196, type metadata accessor for AccountInfo);
  sub_1001E328C(v176, v209, type metadata accessor for AccountInfo);
  v177 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  v178 = *(a1 + v177);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_1001E32F4(v176, type metadata accessor for AccountInfo);
    v179 = *(a1 + v177);
  }

  else
  {
    v180 = *(a1 + v177);
    v181 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v182 = *(v181 + 48);
    v183 = *(v181 + 52);
    swift_allocObject();

    v185 = sub_1000C12E8(v184);
    v186 = v176;
    v179 = v185;
    sub_1001E32F4(v186, type metadata accessor for AccountInfo);

    *(a1 + v177) = v179;
  }

  v187 = v197;
  sub_1001E3224(v209, v197, type metadata accessor for AccountInfo);
  (*(v111 + 56))(v187, 0, 1, v110);
  v188 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v187, v179 + v188, &unk_10029D6F0, &qword_100226B40);
  return swift_endAccess();
}

uint64_t CuttlefishAPIAsyncOperation.updateTrust(changeToken:peerID:stableInfoAndSig:dynamicInfoAndSig:tlkShares:viewKeys:trustedDevicesVersion:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v28 = a7;
  v29 = a8;
  v32 = a13;
  v30 = a11;
  v31 = a12;
  v27 = a9;
  updated = type metadata accessor for UpdateTrustRequest(0);
  v21 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated, v22);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = v28;
  v40 = v29;
  v41 = a9;
  v42 = a10;
  sub_1001D63AC(&qword_100298D60, type metadata accessor for UpdateTrustRequest);
  sub_100216654();
  v25 = (*(a14 + 32))(v24, v30, v31, v32, a14);
  sub_1001E32F4(v24, type metadata accessor for UpdateTrustRequest);
  return v25;
}

uint64_t sub_1001DAEC8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v126 = a8;
  v120 = a7;
  v121 = a5;
  v122 = a6;
  v117 = a2;
  v15 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v130 = &v108 - v18;
  v132 = type metadata accessor for AccountInfo(0);
  v131 = *(v132 - 8);
  v19 = *(v131 + 64);
  v21 = __chkstk_darwin(v132, v20);
  v116 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v115 = &v108 - v24;
  v25 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8, v27);
  v127 = &v108 - v28;
  v29 = type metadata accessor for Metrics(0);
  v128 = *(v29 - 8);
  v129 = v29;
  v30 = *(v128 + 64);
  v32 = __chkstk_darwin(v29, v31);
  v114 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v34);
  v113 = &v108 - v35;
  v36 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8, v38);
  v123 = &v108 - v39;
  v40 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v124 = *(v40 - 8);
  v125 = v40;
  v41 = *(v124 + 64);
  v43 = __chkstk_darwin(v40, v42);
  v112 = &v108 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43, v45);
  v111 = &v108 - v46;
  v47 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8, v49);
  v51 = &v108 - v50;
  v52 = type metadata accessor for SignedPeerDynamicInfo(0);
  v118 = *(v52 - 8);
  v119 = v52;
  v53 = *(v118 + 64);
  v55 = __chkstk_darwin(v52, v54);
  v110 = &v108 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55, v57);
  v109 = &v108 - v58;
  v59 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v60 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59 - 8, v61);
  v63 = &v108 - v62;
  v64 = type metadata accessor for SignedPeerStableInfo(0);
  v65 = *(v64 - 8);
  v66 = *(v65 + 64);
  v68 = __chkstk_darwin(v64, v67);
  v70 = &v108 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68, v71);
  v73 = &v108 - v72;
  if (a3)
  {
    v74 = *(a1 + 1);

    *a1 = v117;
    *(a1 + 1) = a3;
  }

  v75 = v121;
  if (v121)
  {
    v76 = *(a1 + 3);

    *(a1 + 2) = a4;
    *(a1 + 3) = v75;
  }

  sub_100019C6C(v122, v63, &qword_1002985A8, &unk_100226650);
  if ((*(v65 + 48))(v63, 1, v64) == 1)
  {
    sub_1000114D4(v63, &qword_1002985A8, &unk_100226650);
  }

  else
  {
    sub_1001E3224(v63, v73, type metadata accessor for SignedPeerStableInfo);
    sub_1001E3224(v73, v70, type metadata accessor for SignedPeerStableInfo);
    v77 = *(type metadata accessor for UpdateTrustRequest(0) + 36);
    sub_1000114D4(&a1[v77], &qword_1002985A8, &unk_100226650);
    sub_1001E3224(v70, &a1[v77], type metadata accessor for SignedPeerStableInfo);
    (*(v65 + 56))(&a1[v77], 0, 1, v64);
  }

  v78 = v128;
  v79 = v125;
  v80 = v118;
  sub_100019C6C(v120, v51, &unk_10029D760, &qword_10021E810);
  v81 = v119;
  if ((*(v80 + 48))(v51, 1, v119) == 1)
  {
    sub_1000114D4(v51, &unk_10029D760, &qword_10021E810);
  }

  else
  {
    v82 = v51;
    v83 = v109;
    sub_1001E3224(v82, v109, type metadata accessor for SignedPeerDynamicInfo);
    v84 = v110;
    sub_1001E3224(v83, v110, type metadata accessor for SignedPeerDynamicInfo);
    v85 = *(type metadata accessor for UpdateTrustRequest(0) + 40);
    sub_1000114D4(&a1[v85], &unk_10029D760, &qword_10021E810);
    sub_1001E3224(v84, &a1[v85], type metadata accessor for SignedPeerDynamicInfo);
    (*(v80 + 56))(&a1[v85], 0, 1, v81);
  }

  v86 = v126;
  if (*(v126 + 16))
  {
    v87 = *(a1 + 4);

    *(a1 + 4) = v86;
  }

  if (*(a9 + 16))
  {
    v88 = *(a1 + 5);

    *(a1 + 5) = a9;
  }

  v89 = v123;
  sub_100019C6C(a10, v123, &qword_10029D770, &qword_10021E860);
  v90 = v124;
  if ((*(v124 + 48))(v89, 1, v79) == 1)
  {
    sub_1000114D4(v89, &qword_10029D770, &qword_10021E860);
  }

  else
  {
    v91 = v89;
    v92 = v111;
    sub_1001E3224(v91, v111, type metadata accessor for IdmsTrustedDevicesVersion);
    v93 = v112;
    sub_1001E3224(v92, v112, type metadata accessor for IdmsTrustedDevicesVersion);
    v94 = *(type metadata accessor for UpdateTrustRequest(0) + 44);
    sub_1000114D4(&a1[v94], &qword_10029D770, &qword_10021E860);
    sub_1001E3224(v93, &a1[v94], type metadata accessor for IdmsTrustedDevicesVersion);
    (*(v90 + 56))(&a1[v94], 0, 1, v79);
  }

  v95 = v129;
  v96 = v127;
  sub_100019C6C(a11, v127, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v78 + 48))(v96, 1, v95) == 1)
  {
    sub_1000114D4(v96, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    v97 = v96;
    v98 = v113;
    sub_1001E3224(v97, v113, type metadata accessor for Metrics);
    v99 = v114;
    sub_1001E3224(v98, v114, type metadata accessor for Metrics);
    v100 = *(type metadata accessor for UpdateTrustRequest(0) + 48);
    sub_1000114D4(&a1[v100], &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v99, &a1[v100], type metadata accessor for Metrics);
    (*(v78 + 56))(&a1[v100], 0, 1, v95);
  }

  v101 = v130;
  v102 = v131;
  sub_100019C6C(a12, v130, &unk_10029D6F0, &qword_100226B40);
  if ((*(v102 + 48))(v101, 1, v132) == 1)
  {
    return sub_1000114D4(v101, &unk_10029D6F0, &qword_100226B40);
  }

  v104 = v101;
  v105 = v115;
  sub_1001E3224(v104, v115, type metadata accessor for AccountInfo);
  v106 = v116;
  sub_1001E3224(v105, v116, type metadata accessor for AccountInfo);
  v107 = *(type metadata accessor for UpdateTrustRequest(0) + 52);
  sub_1000114D4(&a1[v107], &unk_10029D6F0, &qword_100226B40);
  sub_1001E3224(v106, &a1[v107], type metadata accessor for AccountInfo);
  return (*(v102 + 56))(&a1[v107], 0, 1, v132);
}

uint64_t CuttlefishAPIAsyncOperation.setRecoveryKey(changeToken:peerID:recoverySigningPubKey:recoveryEncryptionPubKey:stableInfoAndSig:tlkShares:metrics:accountInfo:viewKeys:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v30 = a8;
  v33 = a13;
  v34 = a14;
  v31 = a15;
  v32 = a12;
  v29[1] = a10;
  v29[0] = a9;
  v22 = type metadata accessor for SetRecoveryKeyRequest(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22, v24);
  v26 = v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = v30;
  v43 = a9;
  v44 = a10;
  v45 = a11;
  sub_1001D63AC(&qword_100298D90, type metadata accessor for SetRecoveryKeyRequest);
  sub_100216654();
  v27 = (*(v31 + 40))(v26, v32, v33, v34);
  sub_1001E32F4(v26, type metadata accessor for SetRecoveryKeyRequest);
  return v27;
}

uint64_t sub_1001DBB44(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v87 = a8;
  v97 = a2;
  v20 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v96 = &v85 - v23;
  v98 = type metadata accessor for AccountInfo(0);
  v24 = *(v98 - 8);
  v25 = *(v24 + 64);
  v27 = __chkstk_darwin(v98, v26);
  v91 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v90 = &v85 - v30;
  v31 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8, v33);
  v94 = &v85 - v34;
  v95 = type metadata accessor for Metrics(0);
  v35 = *(v95 - 8);
  v36 = *(v35 + 64);
  v38 = __chkstk_darwin(v95, v37);
  v89 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v40);
  v88 = &v85 - v41;
  v42 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8, v44);
  v46 = &v85 - v45;
  v47 = type metadata accessor for SignedPeerStableInfo(0);
  v92 = *(v47 - 8);
  v93 = v47;
  v48 = *(v92 + 64);
  v50 = __chkstk_darwin(v47, v49);
  v86 = &v85 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50, v52);
  v85 = &v85 - v53;
  if (a3)
  {
    v54 = *(a1 + 1);

    *a1 = v97;
    *(a1 + 1) = a3;
  }

  v97 = v24;
  if (a5)
  {
    v55 = *(a1 + 3);

    *(a1 + 2) = a4;
    *(a1 + 3) = a5;
  }

  if (a7 >> 60 != 15)
  {
    v57 = *(a1 + 4);
    v56 = *(a1 + 5);
    sub_100012558(a6, a7);
    sub_100002BF0(v57, v56);
    *(a1 + 4) = a6;
    *(a1 + 5) = a7;
  }

  if (a9 >> 60 != 15)
  {
    v58 = v87;
    v59 = v35;
    v61 = *(a1 + 6);
    v60 = *(a1 + 7);
    sub_100012558(v87, a9);
    v62 = v60;
    v35 = v59;
    sub_100002BF0(v61, v62);
    *(a1 + 6) = v58;
    *(a1 + 7) = a9;
  }

  sub_100019C6C(a10, v46, &qword_1002985A8, &unk_100226650);
  v64 = v92;
  v63 = v93;
  if ((*(v92 + 48))(v46, 1, v93) == 1)
  {
    sub_1000114D4(v46, &qword_1002985A8, &unk_100226650);
  }

  else
  {
    v65 = v46;
    v66 = v85;
    sub_1001E3224(v65, v85, type metadata accessor for SignedPeerStableInfo);
    v67 = v86;
    sub_1001E3224(v66, v86, type metadata accessor for SignedPeerStableInfo);
    v68 = *(type metadata accessor for SetRecoveryKeyRequest(0) + 44);
    sub_1000114D4(&a1[v68], &qword_1002985A8, &unk_100226650);
    sub_1001E3224(v67, &a1[v68], type metadata accessor for SignedPeerStableInfo);
    (*(v64 + 56))(&a1[v68], 0, 1, v63);
  }

  v69 = v94;
  if (*(a11 + 16))
  {
    v70 = *(a1 + 8);

    *(a1 + 8) = a11;
  }

  sub_100019C6C(a12, v69, &qword_100297FE0, &unk_10021E7F0);
  v71 = v95;
  if ((*(v35 + 48))(v69, 1, v95) == 1)
  {
    sub_1000114D4(v69, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    v72 = v69;
    v73 = v88;
    sub_1001E3224(v72, v88, type metadata accessor for Metrics);
    v74 = v89;
    sub_1001E3224(v73, v89, type metadata accessor for Metrics);
    v75 = *(type metadata accessor for SetRecoveryKeyRequest(0) + 48);
    sub_1000114D4(&a1[v75], &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v74, &a1[v75], type metadata accessor for Metrics);
    (*(v35 + 56))(&a1[v75], 0, 1, v71);
  }

  v77 = v97;
  v76 = v98;
  v78 = v96;
  sub_100019C6C(a13, v96, &unk_10029D6F0, &qword_100226B40);
  if ((*(v77 + 48))(v78, 1, v76) != 1)
  {
    v80 = v78;
    v81 = v90;
    sub_1001E3224(v80, v90, type metadata accessor for AccountInfo);
    v82 = v91;
    sub_1001E3224(v81, v91, type metadata accessor for AccountInfo);
    v83 = *(type metadata accessor for SetRecoveryKeyRequest(0) + 52);
    sub_1000114D4(&a1[v83], &unk_10029D6F0, &qword_100226B40);
    sub_1001E3224(v82, &a1[v83], type metadata accessor for AccountInfo);
    result = (*(v77 + 56))(&a1[v83], 0, 1, v76);
    if (!*(a14 + 16))
    {
      return result;
    }

    goto LABEL_21;
  }

  result = sub_1000114D4(v78, &unk_10029D6F0, &qword_100226B40);
  if (*(a14 + 16))
  {
LABEL_21:
    v84 = *(a1 + 9);

    *(a1 + 9) = a14;
  }

  return result;
}

uint64_t CuttlefishAPIAsyncOperation.addCustodianRecoveryKey(changeToken:peerID:peer:stableInfoAndSig:tlkShares:dynamicInfoAndSig:metrics:accountInfo:viewKeys:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v28 = a7;
  v29 = a8;
  v32 = a13;
  v30 = a11;
  v31 = a12;
  v27 = a9;
  v20 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = v28;
  v40 = v29;
  v41 = a9;
  v42 = a10;
  sub_1001D63AC(&qword_100298E10, type metadata accessor for AddCustodianRecoveryKeyRequest);
  sub_100216654();
  v25 = (*(a14 + 48))(v24, v30, v31, v32, a14);
  sub_1001E32F4(v24, type metadata accessor for AddCustodianRecoveryKeyRequest);
  return v25;
}

uint64_t sub_1001DC440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v217 = a8;
  v214 = a7;
  v211 = a6;
  v209 = a4;
  v229 = a1;
  v15 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v208 = &v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v221 = &v197 - v21;
  v22 = type metadata accessor for AccountInfo(0);
  v223 = *(v22 - 8);
  v224 = v22;
  v23 = *(v223 + 64);
  v25 = __chkstk_darwin(v22, v24);
  v222 = &v197 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v27);
  v207 = &v197 - v28;
  v29 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v30 = *(*(v29 - 8) + 64);
  v32 = __chkstk_darwin(v29 - 8, v31);
  v206 = &v197 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v34);
  v218 = &v197 - v35;
  v220 = type metadata accessor for Metrics(0);
  v228 = *(v220 - 8);
  v36 = *(v228 + 64);
  v38 = __chkstk_darwin(v220, v37);
  v219 = &v197 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v40);
  v205 = &v197 - v41;
  v42 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v43 = *(*(v42 - 8) + 64);
  v45 = __chkstk_darwin(v42 - 8, v44);
  v204 = &v197 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45, v47);
  v215 = &v197 - v48;
  v49 = type metadata accessor for SignedPeerDynamicInfo(0);
  v226 = *(v49 - 8);
  v227 = v49;
  v50 = *(v226 + 64);
  v52 = __chkstk_darwin(v49, v51);
  v216 = &v197 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52, v54);
  v203 = &v197 - v55;
  v56 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v57 = *(*(v56 - 8) + 64);
  v59 = __chkstk_darwin(v56 - 8, v58);
  v202 = &v197 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59, v61);
  v63 = &v197 - v62;
  v213 = type metadata accessor for SignedPeerStableInfo(0);
  v225 = *(v213 - 8);
  v64 = *(v225 + 64);
  v66 = __chkstk_darwin(v213, v65);
  v212 = &v197 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66, v68);
  v201 = &v197 - v69;
  v70 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v71 = *(*(v70 - 8) + 64);
  v73 = __chkstk_darwin(v70 - 8, v72);
  v75 = &v197 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73, v76);
  v78 = &v197 - v77;
  v79 = type metadata accessor for Peer(0);
  v80 = *(v79 - 8);
  v81 = *(v80 + 64);
  v83 = __chkstk_darwin(v79, v82);
  v200 = &v197 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83, v85);
  v210 = &v197 - v86;
  if (a3)
  {
    v198 = v80;
    v199 = v79;
    v87 = v75;
    v88 = v63;
    v89 = a5;
    v90 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    v91 = a3;

    v92 = v229;
    v93 = *(v229 + v90);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v92 + v90);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v96 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      v97 = *(v96 + 48);
      v98 = *(v96 + 52);
      swift_allocObject();
      v95 = sub_1000CB2E0(v95);
      *(v92 + v90) = v95;
    }

    swift_beginAccess();
    v99 = *(v95 + 3);
    *(v95 + 2) = a2;
    *(v95 + 3) = v91;

    a5 = v89;
    v63 = v88;
    v75 = v87;
    v79 = v199;
    v80 = v198;
  }

  if (a5)
  {
    v100 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    v101 = a5;

    v102 = v229;
    v103 = *(v229 + v100);
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v105 = *(v102 + v100);
    if ((v104 & 1) == 0)
    {
      v106 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      v107 = *(v106 + 48);
      v108 = *(v106 + 52);
      swift_allocObject();
      v105 = sub_1000CB2E0(v105);
      *(v102 + v100) = v105;
    }

    swift_beginAccess();
    v109 = *(v105 + 5);
    *(v105 + 4) = v209;
    *(v105 + 5) = v101;
  }

  sub_100019C6C(v211, v78, &unk_10029D7A0, &qword_10021E858);
  if ((*(v80 + 48))(v78, 1, v79) == 1)
  {
    sub_1000114D4(v78, &unk_10029D7A0, &qword_10021E858);
    v110 = v229;
  }

  else
  {
    v111 = v210;
    sub_1001E3224(v78, v210, type metadata accessor for Peer);
    v112 = v200;
    sub_1001E328C(v111, v200, type metadata accessor for Peer);
    v113 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    v110 = v229;
    v114 = *(v229 + v113);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v111, type metadata accessor for Peer);
      v115 = *(v110 + v113);
    }

    else
    {
      v116 = *(v110 + v113);
      v117 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      v118 = *(v117 + 48);
      v119 = *(v117 + 52);
      swift_allocObject();

      v115 = sub_1000CB2E0(v120);
      sub_1001E32F4(v210, type metadata accessor for Peer);

      *(v110 + v113) = v115;
    }

    sub_1001E3224(v112, v75, type metadata accessor for Peer);
    (*(v80 + 56))(v75, 0, 1, v79);
    v121 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
    swift_beginAccess();
    sub_1000F9E80(v75, &v115[v121], &unk_10029D7A0, &qword_10021E858);
    swift_endAccess();
  }

  v122 = v213;
  sub_100019C6C(v214, v63, &qword_1002985A8, &unk_100226650);
  v123 = (*(v225 + 48))(v63, 1, v122);
  v124 = v223;
  v125 = v220;
  if (v123 == 1)
  {
    sub_1000114D4(v63, &qword_1002985A8, &unk_100226650);
    v126 = v217;
  }

  else
  {
    v127 = v201;
    sub_1001E3224(v63, v201, type metadata accessor for SignedPeerStableInfo);
    sub_1001E328C(v127, v212, type metadata accessor for SignedPeerStableInfo);
    v128 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    v129 = *(v110 + v128);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v127, type metadata accessor for SignedPeerStableInfo);
      v130 = *(v110 + v128);
    }

    else
    {
      v131 = *(v110 + v128);
      v132 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      v133 = *(v132 + 48);
      v134 = *(v132 + 52);
      swift_allocObject();

      v130 = sub_1000CB2E0(v135);
      sub_1001E32F4(v127, type metadata accessor for SignedPeerStableInfo);

      *(v110 + v128) = v130;
    }

    v126 = v217;
    v136 = v202;
    sub_1001E3224(v212, v202, type metadata accessor for SignedPeerStableInfo);
    (*(v225 + 56))(v136, 0, 1, v122);
    v137 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
    swift_beginAccess();
    sub_1000F9E80(v136, &v130[v137], &qword_1002985A8, &unk_100226650);
    swift_endAccess();
  }

  if (*(v126 + 16))
  {
    v138 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    v139 = *(v110 + v138);
    v140 = swift_isUniquelyReferenced_nonNull_native();
    v141 = *(v110 + v138);
    if ((v140 & 1) == 0)
    {
      v142 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      v143 = *(v142 + 48);
      v144 = *(v142 + 52);
      swift_allocObject();
      v141 = sub_1000CB2E0(v141);
      *(v110 + v138) = v141;
    }

    v145 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
    swift_beginAccess();
    v146 = *&v141[v145];
    *&v141[v145] = v126;
  }

  v147 = v215;
  sub_100019C6C(a9, v215, &unk_10029D760, &qword_10021E810);
  if ((*(v226 + 48))(v147, 1, v227) == 1)
  {
    sub_1000114D4(v147, &unk_10029D760, &qword_10021E810);
  }

  else
  {
    v148 = v147;
    v149 = v203;
    sub_1001E3224(v148, v203, type metadata accessor for SignedPeerDynamicInfo);
    sub_1001E328C(v149, v216, type metadata accessor for SignedPeerDynamicInfo);
    v150 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    v151 = *(v110 + v150);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v149, type metadata accessor for SignedPeerDynamicInfo);
      v152 = *(v110 + v150);
    }

    else
    {
      v153 = *(v110 + v150);
      v154 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      v155 = *(v154 + 48);
      v156 = *(v154 + 52);
      swift_allocObject();

      v158 = sub_1000CB2E0(v157);
      v159 = v149;
      v152 = v158;
      sub_1001E32F4(v159, type metadata accessor for SignedPeerDynamicInfo);

      *(v110 + v150) = v152;
    }

    v160 = v204;
    sub_1001E3224(v216, v204, type metadata accessor for SignedPeerDynamicInfo);
    (*(v226 + 56))(v160, 0, 1, v227);
    v161 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
    swift_beginAccess();
    sub_1000F9E80(v160, &v152[v161], &unk_10029D760, &qword_10021E810);
    swift_endAccess();
  }

  v162 = v218;
  sub_100019C6C(a10, v218, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v228 + 48))(v162, 1, v125) == 1)
  {
    sub_1000114D4(v162, &qword_100297FE0, &unk_10021E7F0);
    v163 = v224;
  }

  else
  {
    v164 = v205;
    sub_1001E3224(v162, v205, type metadata accessor for Metrics);
    sub_1001E328C(v164, v219, type metadata accessor for Metrics);
    v165 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    v166 = *(v110 + v165);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1001E32F4(v164, type metadata accessor for Metrics);
      v167 = *(v110 + v165);
    }

    else
    {
      v168 = *(v110 + v165);
      v169 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      v170 = *(v169 + 48);
      v171 = *(v169 + 52);
      swift_allocObject();

      v167 = sub_1000CB2E0(v172);
      sub_1001E32F4(v164, type metadata accessor for Metrics);

      *(v110 + v165) = v167;
    }

    v163 = v224;
    v173 = v206;
    sub_1001E3224(v219, v206, type metadata accessor for Metrics);
    (*(v228 + 56))(v173, 0, 1, v125);
    v174 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v173, &v167[v174], &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
  }

  v175 = v221;
  sub_100019C6C(a11, v221, &unk_10029D6F0, &qword_100226B40);
  if ((*(v124 + 48))(v175, 1, v163) == 1)
  {
    result = sub_1000114D4(v175, &unk_10029D6F0, &qword_100226B40);
    if (!*(a12 + 16))
    {
      return result;
    }

    goto LABEL_44;
  }

  v177 = v207;
  sub_1001E3224(v175, v207, type metadata accessor for AccountInfo);
  sub_1001E328C(v177, v222, type metadata accessor for AccountInfo);
  v178 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  v179 = *(v110 + v178);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_1001E32F4(v177, type metadata accessor for AccountInfo);
    v180 = *(v110 + v178);
  }

  else
  {
    v181 = *(v110 + v178);
    v182 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    v183 = *(v182 + 48);
    v184 = *(v182 + 52);
    swift_allocObject();

    v180 = sub_1000CB2E0(v185);
    sub_1001E32F4(v177, type metadata accessor for AccountInfo);

    *(v110 + v178) = v180;
  }

  v186 = v208;
  sub_1001E3224(v222, v208, type metadata accessor for AccountInfo);
  (*(v124 + 56))(v186, 0, 1, v163);
  v187 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v186, &v180[v187], &unk_10029D6F0, &qword_100226B40);
  result = swift_endAccess();
  if (*(a12 + 16))
  {
LABEL_44:
    v188 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
    v189 = *(v110 + v188);
    v190 = swift_isUniquelyReferenced_nonNull_native();
    v191 = *(v110 + v188);
    if ((v190 & 1) == 0)
    {
      v192 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      v193 = *(v192 + 48);
      v194 = *(v192 + 52);
      swift_allocObject();
      v191 = sub_1000CB2E0(v191);
      *(v110 + v188) = v191;
    }

    v195 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
    swift_beginAccess();
    v196 = *&v191[v195];
    *&v191[v195] = a12;
  }

  return result;
}

uint64_t CuttlefishAPIAsyncOperation.fetchChanges(changeToken:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  v17 = *(*(ChangesRequest - 8) + 64);
  __chkstk_darwin(ChangesRequest, v18);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = a3;
  v23[7] = a4;
  sub_1001D63AC(&unk_10029DA40, type metadata accessor for FetchChangesRequest);
  sub_100216654();
  v21 = (*(a8 + 56))(v20, a5, a6, a7, a8);
  sub_1001E32F4(v20, type metadata accessor for FetchChangesRequest);
  return v21;
}

uint64_t CuttlefishAPIAsyncOperation.fetchViableBottles(filterRequest:metrics:accountInfo:completion:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  v17 = *(*(ViableBottlesRequest - 8) + 64);
  __chkstk_darwin(ViableBottlesRequest, v18);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[4] = a1;
  v24 = a2 & 0x1FF;
  v25 = a3;
  v26 = a4;
  sub_1001D63AC(&unk_10029DA60, type metadata accessor for FetchViableBottlesRequest);
  sub_100216654();
  v21 = (*(a8 + 64))(v20, a5, a6, a7, a8);
  sub_1001E32F4(v20, type metadata accessor for FetchViableBottlesRequest);
  return v21;
}

uint64_t sub_1001DD91C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v42 = a2;
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for AccountInfo(0);
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  v16 = __chkstk_darwin(v13, v15);
  v44 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v43 = &v42 - v19;
  v20 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v42 - v23;
  v25 = type metadata accessor for Metrics(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v32);
  v34 = &v42 - v33;
  if ((a3 & 0x100) == 0)
  {
    *a1 = v42;
    *(a1 + 8) = a3 & 1;
  }

  sub_100019C6C(a4, v24, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1000114D4(v24, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v24, v34, type metadata accessor for Metrics);
    sub_1001E3224(v34, v31, type metadata accessor for Metrics);
    v35 = *(type metadata accessor for FetchViableBottlesRequest(0) + 24);
    sub_1000114D4(a1 + v35, &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v31, a1 + v35, type metadata accessor for Metrics);
    (*(v26 + 56))(a1 + v35, 0, 1, v25);
  }

  sub_100019C6C(v45, v12, &unk_10029D6F0, &qword_100226B40);
  v37 = v46;
  v36 = v47;
  if ((*(v46 + 48))(v12, 1, v47) == 1)
  {
    return sub_1000114D4(v12, &unk_10029D6F0, &qword_100226B40);
  }

  v39 = v43;
  sub_1001E3224(v12, v43, type metadata accessor for AccountInfo);
  v40 = v44;
  sub_1001E3224(v39, v44, type metadata accessor for AccountInfo);
  v41 = *(type metadata accessor for FetchViableBottlesRequest(0) + 28);
  sub_1000114D4(a1 + v41, &unk_10029D6F0, &qword_100226B40);
  sub_1001E3224(v40, a1 + v41, type metadata accessor for AccountInfo);
  return (*(v37 + 56))(a1 + v41, 0, 1, v36);
}

uint64_t CuttlefishAPIAsyncOperation.fetchRecoverableTlkshares(peerID:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  v17 = *(*(RecoverableTLKSharesRequest - 8) + 64);
  __chkstk_darwin(RecoverableTLKSharesRequest, v18);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = a3;
  v23[7] = a4;
  sub_1001D63AC(&unk_10029D960, type metadata accessor for FetchRecoverableTLKSharesRequest);
  sub_100216654();
  v21 = (*(a8 + 72))(v20, a5, a6, a7, a8);
  sub_1001E32F4(v20, type metadata accessor for FetchRecoverableTLKSharesRequest);
  return v21;
}

uint64_t CuttlefishAPIAsyncOperation.fetchPolicyDocuments(keys:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v15 = *(*(PolicyDocumentsRequest - 8) + 64);
  __chkstk_darwin(PolicyDocumentsRequest, v16);
  v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a1;
  v23 = a2;
  v24 = a3;
  sub_1001D63AC(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);
  sub_100216654();
  v19 = (*(a7 + 80))(v18, a4, a5, a6, a7);
  sub_1001E32F4(v18, type metadata accessor for FetchPolicyDocumentsRequest);
  return v19;
}

uint64_t CuttlefishAPIAsyncOperation.getRepairAction(peerID:requiresEscrowCheck:knownFederations:performCleanup:metrics:accountInfo:performDanglingPeerCleanup:updateIdms:performCaesarPeerCleanup:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = a8;
  v26 = a7;
  v28 = a11;
  v29 = a10;
  v30 = a12;
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  v20 = *(*(RepairActionRequest - 8) + 64);
  __chkstk_darwin(RepairActionRequest, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = v26;
  v38 = v27;
  v39 = a9;
  sub_1001D63AC(&unk_10029D710, type metadata accessor for GetRepairActionRequest);
  sub_100216654();
  v24 = (*(a13 + 88))(v23, v29, v28, v30, a13);
  sub_1001E32F4(v23, type metadata accessor for GetRepairActionRequest);
  return v24;
}

uint64_t sub_1001DE1D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, char a9, char a10, char a11)
{
  v55 = a7;
  v56 = a8;
  v53 = a4;
  v54 = a6;
  v52 = a2;
  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for AccountInfo(0);
  v57 = *(v19 - 8);
  v58 = v19;
  v20 = *(v57 + 64);
  v22 = __chkstk_darwin(v19, v21);
  v51 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v24);
  v50 = &v50 - v25;
  v26 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8, v28);
  v30 = &v50 - v29;
  v31 = type metadata accessor for Metrics(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = __chkstk_darwin(v31, v34);
  v37 = &v50 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v38);
  v40 = &v50 - v39;
  if (a3)
  {
    v41 = *(a1 + 8);

    *a1 = v52;
    *(a1 + 8) = a3;
  }

  if (v53 != 2)
  {
    *(a1 + 16) = v53 & 1;
  }

  if (*(a5 + 16))
  {
    v42 = *(a1 + 24);

    *(a1 + 24) = a5;
  }

  if (v54 != 2)
  {
    *(a1 + 32) = v54 & 1;
  }

  sub_100019C6C(v55, v30, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1000114D4(v30, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v30, v40, type metadata accessor for Metrics);
    sub_1001E3224(v40, v37, type metadata accessor for Metrics);
    v43 = *(type metadata accessor for GetRepairActionRequest(0) + 48);
    sub_1000114D4(a1 + v43, &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v37, a1 + v43, type metadata accessor for Metrics);
    (*(v32 + 56))(a1 + v43, 0, 1, v31);
  }

  v44 = v58;
  sub_100019C6C(v56, v18, &unk_10029D6F0, &qword_100226B40);
  v45 = v57;
  if ((*(v57 + 48))(v18, 1, v44) == 1)
  {
    result = sub_1000114D4(v18, &unk_10029D6F0, &qword_100226B40);
  }

  else
  {
    v47 = v50;
    sub_1001E3224(v18, v50, type metadata accessor for AccountInfo);
    v48 = v51;
    sub_1001E3224(v47, v51, type metadata accessor for AccountInfo);
    v49 = *(type metadata accessor for GetRepairActionRequest(0) + 52);
    sub_1000114D4(a1 + v49, &unk_10029D6F0, &qword_100226B40);
    sub_1001E3224(v48, a1 + v49, type metadata accessor for AccountInfo);
    result = (*(v45 + 56))(a1 + v49, 0, 1, v44);
  }

  if (a9 != 2)
  {
    *(a1 + 33) = a9 & 1;
  }

  if (a10 != 2)
  {
    *(a1 + 34) = a10 & 1;
  }

  if (a11 != 2)
  {
    *(a1 + 35) = a11 & 1;
  }

  return result;
}

uint64_t CuttlefishAPIAsyncOperation.getEscrowCheck(peerID:isBackgroundCheck:passcodeGeneration:knownFederations:metrics:accountInfo:disableWithError:disableRepair:requiresEscrowCheck:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = a7;
  v28 = a8;
  v30 = a11;
  v31 = a10;
  v29 = a13;
  v19 = type metadata accessor for GetEscrowCheckRequest(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5 & 1;
  v38 = a6;
  v39 = v27;
  v40 = v28;
  v41 = a9;
  v42 = *(&a9 + 1);
  sub_1001D63AC(&qword_100298F00, type metadata accessor for GetEscrowCheckRequest);
  sub_100216654();
  v24 = (*(v29 + 96))(v23, v31, v30, v32);
  sub_1001E32F4(v23, type metadata accessor for GetEscrowCheckRequest);
  return v24;
}

uint64_t sub_1001DE87C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12)
{
  v57 = a8;
  v55 = a4;
  v56 = a6;
  v51 = a5;
  v54 = a2;
  v15 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v51 - v18;
  v20 = type metadata accessor for AccountInfo(0);
  v58 = *(v20 - 8);
  v59 = v20;
  v21 = *(v58 + 64);
  v23 = __chkstk_darwin(v20, v22);
  v53 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v52 = &v51 - v26;
  v27 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8, v29);
  v31 = &v51 - v30;
  v32 = type metadata accessor for Metrics(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v36 = __chkstk_darwin(v32, v35);
  v38 = &v51 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v39);
  v41 = &v51 - v40;
  if (a3)
  {
    v42 = *(a1 + 8);

    *a1 = v54;
    *(a1 + 8) = a3;
  }

  if (v55 != 2)
  {
    *(a1 + 16) = v55 & 1;
  }

  if ((v56 & 1) == 0)
  {
    *(a1 + 24) = v51;
  }

  if (*(a7 + 16))
  {
    v43 = *(a1 + 32);

    *(a1 + 32) = a7;
  }

  sub_100019C6C(v57, v31, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_1000114D4(v31, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v31, v41, type metadata accessor for Metrics);
    sub_1001E3224(v41, v38, type metadata accessor for Metrics);
    v44 = *(type metadata accessor for GetEscrowCheckRequest(0) + 48);
    sub_1000114D4(a1 + v44, &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v38, a1 + v44, type metadata accessor for Metrics);
    (*(v33 + 56))(a1 + v44, 0, 1, v32);
  }

  v45 = v58;
  sub_100019C6C(a9, v19, &unk_10029D6F0, &qword_100226B40);
  v46 = v59;
  if ((*(v45 + 48))(v19, 1, v59) == 1)
  {
    result = sub_1000114D4(v19, &unk_10029D6F0, &qword_100226B40);
  }

  else
  {
    v48 = v52;
    sub_1001E3224(v19, v52, type metadata accessor for AccountInfo);
    v49 = v53;
    sub_1001E3224(v48, v53, type metadata accessor for AccountInfo);
    v50 = *(type metadata accessor for GetEscrowCheckRequest(0) + 52);
    sub_1000114D4(a1 + v50, &unk_10029D6F0, &qword_100226B40);
    sub_1001E3224(v49, a1 + v50, type metadata accessor for AccountInfo);
    result = (*(v45 + 56))(a1 + v50, 0, 1, v46);
  }

  if (a10 != 2)
  {
    *(a1 + 40) = a10 & 1;
  }

  if (a11 != 2)
  {
    *(a1 + 41) = a11 & 1;
  }

  if (a12 != 2)
  {
    *(a1 + 42) = a12 & 1;
  }

  return result;
}

uint64_t CuttlefishAPIAsyncOperation.getSupportAppInfo(metrics:accountInfo:page:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  v17 = *(*(SupportAppInfoRequest - 8) + 64);
  __chkstk_darwin(SupportAppInfoRequest, v18);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = a3;
  v24 = a4 & 1;
  sub_1001D63AC(&qword_100298F80, type metadata accessor for GetSupportAppInfoRequest);
  sub_100216654();
  v21 = (*(a8 + 104))(v20, a5, a6, a7, a8);
  sub_1001E32F4(v20, type metadata accessor for GetSupportAppInfoRequest);
  return v21;
}

uint64_t sub_1001DEF08(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v47 = a5;
  v42 = a4;
  v43 = a2;
  v44 = a3;
  v6 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for AccountInfo(0);
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  v14 = __chkstk_darwin(v11, v13);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v40 = &v40 - v17;
  v18 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v22 = &v40 - v21;
  v23 = type metadata accessor for Metrics(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v30);
  v32 = &v40 - v31;
  sub_100019C6C(v43, v22, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1000114D4(v22, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v22, v32, type metadata accessor for Metrics);
    sub_1001E3224(v32, v29, type metadata accessor for Metrics);
    v33 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 24);
    sub_1000114D4(&a1[v33], &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v29, &a1[v33], type metadata accessor for Metrics);
    (*(v24 + 56))(&a1[v33], 0, 1, v23);
  }

  sub_100019C6C(v44, v10, &unk_10029D6F0, &qword_100226B40);
  v35 = v45;
  v34 = v46;
  if ((*(v45 + 48))(v10, 1, v46) != 1)
  {
    v37 = v40;
    sub_1001E3224(v10, v40, type metadata accessor for AccountInfo);
    v38 = v41;
    sub_1001E3224(v37, v41, type metadata accessor for AccountInfo);
    v39 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 28);
    sub_1000114D4(&a1[v39], &unk_10029D6F0, &qword_100226B40);
    sub_1001E3224(v38, &a1[v39], type metadata accessor for AccountInfo);
    result = (*(v35 + 56))(&a1[v39], 0, 1, v34);
    if (v47)
    {
      return result;
    }

    goto LABEL_8;
  }

  result = sub_1000114D4(v10, &unk_10029D6F0, &qword_100226B40);
  if ((v47 & 1) == 0)
  {
LABEL_8:
    *a1 = v42;
  }

  return result;
}

uint64_t CuttlefishAPIAsyncOperation.resetAccountCdpcontents(resetReason:idmsTargetContext:idmsCuttlefishPassword:testingNotifyIdms:accountInfo:metrics:isDbrv2:completion:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v28 = a7;
  v31 = a12;
  v32 = a11;
  v29 = a8;
  v30 = a14;
  v20 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2 & 0x1FF;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = v28;
  v41 = v29;
  v42 = a9;
  v43 = a10;
  sub_1001D63AC(&qword_100298FA8, type metadata accessor for ResetAccountCDPContentsRequest);
  sub_100216654();
  v25 = (*(v30 + 112))(v24, v32, v31, v33);
  sub_1001E32F4(v24, type metadata accessor for ResetAccountCDPContentsRequest);
  return v25;
}

uint64_t CuttlefishAPIAsyncOperation.removeRecoveryKey(changeToken:peerID:stableInfoAndSig:dynamicInfoAndSig:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a9;
  v27 = a8;
  v28 = a10;
  v30 = a11;
  v19 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = v27;
  sub_1001D63AC(&unk_10029D9E0, type metadata accessor for RemoveRecoveryKeyRequest);
  sub_100216654();
  v24 = (*(a12 + 120))(v23, v29, v28, v30, a12);
  sub_1001E32F4(v23, type metadata accessor for RemoveRecoveryKeyRequest);
  return v24;
}

uint64_t sub_1001DF6B4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v99 = a8;
  v96 = a7;
  v92 = a5;
  v93 = a6;
  v90 = a2;
  v91 = a4;
  v11 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v100 = &v84 - v14;
  v15 = type metadata accessor for AccountInfo(0);
  v101 = *(v15 - 8);
  v102 = v15;
  v16 = *(v101 + 64);
  v18 = __chkstk_darwin(v15, v17);
  v89 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v88 = &v84 - v21;
  v22 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8, v24);
  v97 = &v84 - v25;
  v103 = type metadata accessor for Metrics(0);
  v98 = *(v103 - 8);
  v26 = *(v98 + 64);
  v28 = __chkstk_darwin(v103, v27);
  v87 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v30);
  v86 = &v84 - v31;
  v32 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8, v34);
  v36 = &v84 - v35;
  v37 = type metadata accessor for SignedPeerDynamicInfo(0);
  v94 = *(v37 - 8);
  v95 = v37;
  v38 = *(v94 + 64);
  v40 = __chkstk_darwin(v37, v39);
  v85 = &v84 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v42);
  v44 = &v84 - v43;
  v45 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8, v47);
  v49 = &v84 - v48;
  v50 = type metadata accessor for SignedPeerStableInfo(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  v54 = __chkstk_darwin(v50, v53);
  v56 = &v84 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54, v57);
  v59 = &v84 - v58;
  if (a3)
  {
    v60 = *(a1 + 1);

    *a1 = v90;
    *(a1 + 1) = a3;
  }

  v61 = v92;
  if (v92)
  {
    v62 = *(a1 + 3);

    *(a1 + 2) = v91;
    *(a1 + 3) = v61;
  }

  sub_100019C6C(v93, v49, &qword_1002985A8, &unk_100226650);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_1000114D4(v49, &qword_1002985A8, &unk_100226650);
  }

  else
  {
    sub_1001E3224(v49, v59, type metadata accessor for SignedPeerStableInfo);
    sub_1001E3224(v59, v56, type metadata accessor for SignedPeerStableInfo);
    v63 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 28);
    sub_1000114D4(&a1[v63], &qword_1002985A8, &unk_100226650);
    sub_1001E3224(v56, &a1[v63], type metadata accessor for SignedPeerStableInfo);
    (*(v51 + 56))(&a1[v63], 0, 1, v50);
  }

  v64 = v101;
  v65 = v103;
  v66 = v98;
  sub_100019C6C(v96, v36, &unk_10029D760, &qword_10021E810);
  v68 = v94;
  v67 = v95;
  if ((*(v94 + 48))(v36, 1, v95) == 1)
  {
    sub_1000114D4(v36, &unk_10029D760, &qword_10021E810);
  }

  else
  {
    sub_1001E3224(v36, v44, type metadata accessor for SignedPeerDynamicInfo);
    v69 = v85;
    sub_1001E3224(v44, v85, type metadata accessor for SignedPeerDynamicInfo);
    v70 = v67;
    v71 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 32);
    sub_1000114D4(&a1[v71], &unk_10029D760, &qword_10021E810);
    sub_1001E3224(v69, &a1[v71], type metadata accessor for SignedPeerDynamicInfo);
    (*(v68 + 56))(&a1[v71], 0, 1, v70);
    v65 = v103;
  }

  v72 = v97;
  sub_100019C6C(v99, v97, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v66 + 48))(v72, 1, v65) == 1)
  {
    sub_1000114D4(v72, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    v73 = v72;
    v74 = v86;
    sub_1001E3224(v73, v86, type metadata accessor for Metrics);
    v75 = v87;
    sub_1001E3224(v74, v87, type metadata accessor for Metrics);
    v76 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 36);
    sub_1000114D4(&a1[v76], &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v75, &a1[v76], type metadata accessor for Metrics);
    (*(v66 + 56))(&a1[v76], 0, 1, v65);
  }

  v77 = v102;
  v78 = v100;
  sub_100019C6C(a9, v100, &unk_10029D6F0, &qword_100226B40);
  if ((*(v64 + 48))(v78, 1, v77) == 1)
  {
    return sub_1000114D4(v78, &unk_10029D6F0, &qword_100226B40);
  }

  v80 = v78;
  v81 = v88;
  sub_1001E3224(v80, v88, type metadata accessor for AccountInfo);
  v82 = v89;
  sub_1001E3224(v81, v89, type metadata accessor for AccountInfo);
  v83 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 40);
  sub_1000114D4(&a1[v83], &unk_10029D6F0, &qword_100226B40);
  sub_1001E3224(v82, &a1[v83], type metadata accessor for AccountInfo);
  return (*(v64 + 56))(&a1[v83], 0, 1, v77);
}

uint64_t CuttlefishAPIAsyncOperation.performAtoprvactions(metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for PerformATOPRVActionsRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  v21 = a2;
  sub_1001D63AC(&unk_10029D9D0, type metadata accessor for PerformATOPRVActionsRequest);
  sub_100216654();
  v17 = (*(a6 + 128))(v16, a3, a4, a5, a6);
  sub_1001E32F4(v16, type metadata accessor for PerformATOPRVActionsRequest);
  return v17;
}

uint64_t sub_1001E0088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v4 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  v12 = __chkstk_darwin(v9, v11);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v38 = &v38 - v15;
  v16 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v38 - v19;
  v21 = type metadata accessor for Metrics(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = __chkstk_darwin(v21, v24);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v28);
  v30 = &v38 - v29;
  sub_100019C6C(v40, v20, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000114D4(v20, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v20, v30, type metadata accessor for Metrics);
    sub_1001E3224(v30, v27, type metadata accessor for Metrics);
    v31 = *(type metadata accessor for PerformATOPRVActionsRequest(0) + 20);
    sub_1000114D4(a1 + v31, &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v27, a1 + v31, type metadata accessor for Metrics);
    (*(v22 + 56))(a1 + v31, 0, 1, v21);
  }

  sub_100019C6C(v41, v8, &unk_10029D6F0, &qword_100226B40);
  v33 = v42;
  v32 = v43;
  if ((*(v42 + 48))(v8, 1, v43) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  v35 = v38;
  sub_1001E3224(v8, v38, type metadata accessor for AccountInfo);
  v36 = v39;
  sub_1001E3224(v35, v39, type metadata accessor for AccountInfo);
  v37 = *(type metadata accessor for PerformATOPRVActionsRequest(0) + 24);
  sub_1000114D4(a1 + v37, &unk_10029D6F0, &qword_100226B40);
  sub_1001E3224(v36, a1 + v37, type metadata accessor for AccountInfo);
  return (*(v33 + 56))(a1 + v37, 0, 1, v32);
}

uint64_t CuttlefishAPIAsyncOperation.fetchPcsidentityByPublicKey(pcsServices:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  v15 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request, v16);
  v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a1;
  v23 = a2;
  v24 = a3;
  sub_1001D63AC(&qword_100299040, type metadata accessor for DirectPCSIdentityFetchRequest);
  sub_100216654();
  v19 = (*(a7 + 136))(v18, a4, a5, a6, a7);
  sub_1001E32F4(v18, type metadata accessor for DirectPCSIdentityFetchRequest);
  return v19;
}

uint64_t CuttlefishAPIAsyncOperation.fetchCurrentItem(currentItems:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  v15 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request, v16);
  v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a1;
  v23 = a2;
  v24 = a3;
  sub_1001D63AC(&qword_100299090, type metadata accessor for CurrentItemFetchRequest);
  sub_100216654();
  v19 = (*(a7 + 144))(v18, a4, a5, a6, a7);
  sub_1001E32F4(v18, type metadata accessor for CurrentItemFetchRequest);
  return v19;
}

uint64_t CuttlefishAPIAsyncOperation.performCkserverUnreadableDataRemoval(metrics:accountInfo:isDbrv2:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v16);
  v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a1;
  v23 = a2;
  v24 = a3;
  sub_1001D63AC(&qword_1002990D0, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  sub_100216654();
  v19 = (*(a7 + 152))(v18, a4, a5, a6, a7);
  sub_1001E32F4(v18, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  return v19;
}

uint64_t sub_1001E08C8(_BYTE *a1, uint64_t a2, uint64_t a3, int a4)
{
  v46 = a4;
  v42 = a2;
  v43 = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v39 - v8;
  v10 = type metadata accessor for AccountInfo(0);
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  v13 = __chkstk_darwin(v10, v12);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v40 = &v39 - v16;
  v17 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v21 = &v39 - v20;
  v22 = type metadata accessor for Metrics(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = __chkstk_darwin(v22, v25);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v29);
  v31 = &v39 - v30;
  sub_100019C6C(v42, v21, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1000114D4(v21, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v21, v31, type metadata accessor for Metrics);
    sub_1001E3224(v31, v28, type metadata accessor for Metrics);
    v32 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 24);
    sub_1000114D4(&a1[v32], &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v28, &a1[v32], type metadata accessor for Metrics);
    (*(v23 + 56))(&a1[v32], 0, 1, v22);
  }

  sub_100019C6C(v43, v9, &unk_10029D6F0, &qword_100226B40);
  v34 = v44;
  v33 = v45;
  if ((*(v44 + 48))(v9, 1, v45) == 1)
  {
    result = sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  else
  {
    v36 = v40;
    sub_1001E3224(v9, v40, type metadata accessor for AccountInfo);
    v37 = v41;
    sub_1001E3224(v36, v41, type metadata accessor for AccountInfo);
    v38 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 28);
    sub_1000114D4(&a1[v38], &unk_10029D6F0, &qword_100226B40);
    sub_1001E3224(v37, &a1[v38], type metadata accessor for AccountInfo);
    result = (*(v34 + 56))(&a1[v38], 0, 1, v33);
  }

  if (v46 != 2)
  {
    *a1 = v46 & 1;
  }

  return result;
}

id CuttlefishAPIAsyncOperationClient.reset(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298518, &unk_100226B60);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for ResetRequest);
  v13 = type metadata accessor for ResetRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.ResetOperation(0));
  sub_100019C6C(v12, v9, &qword_100298518, &unk_100226B60);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298518, &unk_100226B60);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.establish(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298508, &qword_10021DF78);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for EstablishRequest);
  v13 = type metadata accessor for EstablishRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.EstablishOperation(0));
  sub_100019C6C(v12, v9, &qword_100298508, &qword_10021DF78);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298508, &qword_10021DF78);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.joinWithVoucher(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002984F8, &unk_100226B70);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for JoinWithVoucherRequest);
  v13 = type metadata accessor for JoinWithVoucherRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.JoinWithVoucherOperation(0));
  sub_100019C6C(v12, v9, &qword_1002984F8, &unk_100226B70);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002984F8, &unk_100226B70);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.updateTrust(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002984E8, &qword_10021DF58);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for UpdateTrustRequest);
  updated = type metadata accessor for UpdateTrustRequest(0);
  (*(*(updated - 8) + 56))(v12, 0, 1, updated);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.UpdateTrustOperation(0));
  sub_100019C6C(v12, v9, &qword_1002984E8, &qword_10021DF58);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002984E8, &qword_10021DF58);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.setRecoveryKey(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002984D8, &unk_100226B80);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for SetRecoveryKeyRequest);
  v13 = type metadata accessor for SetRecoveryKeyRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.SetRecoveryKeyOperation(0));
  sub_100019C6C(v12, v9, &qword_1002984D8, &unk_100226B80);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002984D8, &unk_100226B80);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.addCustodianRecoveryKey(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298458, &unk_100226BC0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for AddCustodianRecoveryKeyRequest);
  v13 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.AddCustodianRecoveryKeyOperation(0));
  sub_100019C6C(v12, v9, &qword_100298458, &unk_100226BC0);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298458, &unk_100226BC0);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.fetchChanges(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002984C8, &qword_10021DF38);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for FetchChangesRequest);
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  (*(*(ChangesRequest - 8) + 56))(v12, 0, 1, ChangesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchChangesOperation(0));
  sub_100019C6C(v12, v9, &qword_1002984C8, &qword_10021DF38);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002984C8, &qword_10021DF38);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.fetchViableBottles(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002984B8, &unk_100226B90);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for FetchViableBottlesRequest);
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  (*(*(ViableBottlesRequest - 8) + 56))(v12, 0, 1, ViableBottlesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchViableBottlesOperation(0));
  sub_100019C6C(v12, v9, &qword_1002984B8, &unk_100226B90);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002984B8, &unk_100226B90);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.fetchRecoverableTlkshares(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298448, &qword_10021DEB8);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for FetchRecoverableTLKSharesRequest);
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  (*(*(RecoverableTLKSharesRequest - 8) + 56))(v12, 0, 1, RecoverableTLKSharesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchRecoverableTlksharesOperation(0));
  sub_100019C6C(v12, v9, &qword_100298448, &qword_10021DEB8);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298448, &qword_10021DEB8);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.fetchPolicyDocuments(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002984A8, &qword_10021DF18);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for FetchPolicyDocumentsRequest);
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  (*(*(PolicyDocumentsRequest - 8) + 56))(v12, 0, 1, PolicyDocumentsRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchPolicyDocumentsOperation(0));
  sub_100019C6C(v12, v9, &qword_1002984A8, &qword_10021DF18);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002984A8, &qword_10021DF18);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.getRepairAction(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298498, &unk_100226BA0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for GetRepairActionRequest);
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  (*(*(RepairActionRequest - 8) + 56))(v12, 0, 1, RepairActionRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetRepairActionOperation(0));
  sub_100019C6C(v12, v9, &qword_100298498, &unk_100226BA0);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298498, &unk_100226BA0);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.getEscrowCheck(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298488, &qword_10021DEF8);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for GetEscrowCheckRequest);
  v13 = type metadata accessor for GetEscrowCheckRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetEscrowCheckOperation(0));
  sub_100019C6C(v12, v9, &qword_100298488, &qword_10021DEF8);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298488, &qword_10021DEF8);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.getSupportAppInfo(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298478, &unk_100226BB0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for GetSupportAppInfoRequest);
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  (*(*(SupportAppInfoRequest - 8) + 56))(v12, 0, 1, SupportAppInfoRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetSupportAppInfoOperation(0));
  sub_100019C6C(v12, v9, &qword_100298478, &unk_100226BB0);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298478, &unk_100226BB0);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.resetAccountCdpcontents(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298468, &qword_10021DED8);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for ResetAccountCDPContentsRequest);
  v13 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.ResetAccountCdpcontentsOperation(0));
  sub_100019C6C(v12, v9, &qword_100298468, &qword_10021DED8);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298468, &qword_10021DED8);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.removeRecoveryKey(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298438, &unk_100226BD0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for RemoveRecoveryKeyRequest);
  v13 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.RemoveRecoveryKeyOperation(0));
  sub_100019C6C(v12, v9, &qword_100298438, &unk_100226BD0);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298438, &unk_100226BD0);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.performAtoprvactions(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298428, &qword_10021DE98);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for PerformATOPRVActionsRequest);
  v13 = type metadata accessor for PerformATOPRVActionsRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.PerformAtoprvactionsOperation(0));
  sub_100019C6C(v12, v9, &qword_100298428, &qword_10021DE98);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298428, &qword_10021DE98);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.fetchPcsidentityByPublicKey(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298408, &qword_10021DE78);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for DirectPCSIdentityFetchRequest);
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  (*(*(Request - 8) + 56))(v12, 0, 1, Request);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchPcsidentityByPublicKeyOperation(0));
  sub_100019C6C(v12, v9, &qword_100298408, &qword_10021DE78);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298408, &qword_10021DE78);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.fetchCurrentItem(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298418, &unk_100226BE0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for CurrentItemFetchRequest);
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  (*(*(Request - 8) + 56))(v12, 0, 1, Request);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchCurrentItemOperation(0));
  sub_100019C6C(v12, v9, &qword_100298418, &unk_100226BE0);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_100298418, &unk_100226BE0);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

id CuttlefishAPIAsyncOperationClient.performCkserverUnreadableDataRemoval(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002983F8, &qword_100226BF0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_1001E328C(a1, &v18 - v11, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  v13 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.PerformCkserverUnreadableDataRemovalOperation(0));
  sub_100019C6C(v12, v9, &qword_1002983F8, &qword_100226BF0);
  v14 = sub_100216404();
  sub_1000114D4(v12, &qword_1002983F8, &qword_100226BF0);
  v15 = v14;

  sub_1002163E4();
  v16 = *(v2 + 16);
  sub_1002163F4();

  return v15;
}

uint64_t sub_1001E3224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E328C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E32F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001E3660(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_10001148C(&qword_10029E768, &qword_100226FB8);
  if (swift_dynamicCast())
  {
    sub_1001F36F0(v38, &v41);
    sub_100006484(&v41, v42);
    sub_1002160B4();
    v38[0] = v40;
    sub_100006128(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_1000114D4(v38, &qword_10029E770, &unk_100226FC0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&v38[0] = a1;
    *(&v38[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v38;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_100217034();
  }

  sub_1001EEC28(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    v38[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v38[0] = sub_1001F00A4(v8);
  *(&v38[0] + 1) = v9;
  __chkstk_darwin(*&v38[0], v9);
  v10 = sub_1001EE510(sub_1001F3688);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&v38[0] + 1) >> 62;
  if ((*(&v38[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&v38[0] + 16);
      v18 = *(*&v38[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(v38[0]), v38[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(v38[0]) - LODWORD(v38[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&v38[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&v38[0] >> 32;
      }

      else
      {
        v22 = BYTE14(v38[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1002161E4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(v38[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1001EFEFC(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_100216A44();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_100216A74();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_100217034();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1001EFEFC(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_100216A54();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_1002161F4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_1002161F4();
    sub_10004CD18(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_10004CD18(v35, v6);
LABEL_63:
  v32 = v38[0];
  sub_100012558(*&v38[0], *(&v38[0] + 1));

  sub_100002BF0(v32, *(&v32 + 1));
  return v32;
}

void sub_1001E3B80(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216C04();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = _swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!sub_100216F14() || (type metadata accessor for MachineMO(), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_1001ACCA0();
      return;
    }

LABEL_17:
    v12 = [v11 machineID];
    if (v12)
    {
      v13 = v12;
      v19 = sub_100216974();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100182D90(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_100182D90((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1001E3E28(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = v14[1];
      v16[0] = *v14;
      v16[1] = v15;

      a1(v16);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1001E3F60(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for VoucherMO();
    sub_1001F3728(&qword_10029DA08, type metadata accessor for VoucherMO);
    sub_100216C04();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v19 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        a1(&v25);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v19;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_100216F14())
        {
          break;
        }

        type metadata accessor for VoucherMO();
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_1001ACCA0();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001E4190(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100216894();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F3728(&qword_10029E760, &type metadata accessor for SHA256Digest);
  v10 = sub_100216AE4();
  v40 = _swiftEmptyArrayStorage;
  sub_1001877A4(0, v10 & ~(v10 >> 63), 0);
  v11 = v40;
  (*(v5 + 16))(v9, a1, v4);
  result = sub_100216AD4();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v13 = v39;
    if (v10)
    {
      v35 = v1;
      v14 = v38;
      *&v37 = *(v38 + 16);
      v36 = xmmword_10021D600;
      v15 = v39;
      while (v37 != v15)
      {
        if (v13 < 0)
        {
          goto LABEL_21;
        }

        if (v15 >= *(v14 + 16))
        {
          goto LABEL_22;
        }

        v16 = *(v14 + 32 + v15);
        sub_10001148C(&qword_100297D30, &qword_1002270B0);
        v17 = swift_allocObject();
        *(v17 + 16) = v36;
        *(v17 + 56) = &type metadata for UInt8;
        *(v17 + 64) = &protocol witness table for UInt8;
        *(v17 + 32) = v16;
        result = sub_100216984();
        v40 = v11;
        v20 = v11[2];
        v19 = v11[3];
        if (v20 >= v19 >> 1)
        {
          v34 = result;
          v22 = v18;
          sub_1001877A4((v19 > 1), v20 + 1, 1);
          v18 = v22;
          result = v34;
          v11 = v40;
        }

        v11[2] = v20 + 1;
        v21 = &v11[2 * v20];
        v21[4] = result;
        v21[5] = v18;
        ++v15;
        if (!--v10)
        {
          v39 = v15;
          v2 = v35;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v15 = v39;
LABEL_12:
      v23 = v38;
      v24 = *(v38 + 16);
      if (v15 == v24)
      {
LABEL_13:

        return v11;
      }

      v37 = xmmword_10021D600;
      while (v15 < v24)
      {
        v25 = v15 + 1;
        v26 = *(v23 + 32 + v15);
        v39 = v25;
        sub_10001148C(&qword_100297D30, &qword_1002270B0);
        v27 = swift_allocObject();
        *(v27 + 16) = v37;
        *(v27 + 56) = &type metadata for UInt8;
        *(v27 + 64) = &protocol witness table for UInt8;
        *(v27 + 32) = v26;
        result = sub_100216984();
        v40 = v11;
        v30 = v11[2];
        v29 = v11[3];
        if (v30 >= v29 >> 1)
        {
          *&v36 = result;
          v32 = v2;
          v33 = v28;
          sub_1001877A4((v29 > 1), v30 + 1, 1);
          v28 = v33;
          v2 = v32;
          result = v36;
          v11 = v40;
        }

        v11[2] = v30 + 1;
        v31 = &v11[2 * v30];
        v31[4] = result;
        v31[5] = v28;
        v24 = *(v23 + 16);
        v15 = v39;
        if (v39 == v24)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1001E4538()
{
  v1 = sub_100216384();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v5 = __chkstk_darwin(v1, v4);
  v160 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5, v7);
  v159 = &v145 - v9;
  v11 = __chkstk_darwin(v8, v10);
  v158 = &v145 - v12;
  v14 = __chkstk_darwin(v11, v13);
  v157 = &v145 - v15;
  v17 = __chkstk_darwin(v14, v16);
  v156 = &v145 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v155 = &v145 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v25 = &v145 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v145 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v147 = &v145 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v146 = &v145 - v35;
  v37 = __chkstk_darwin(v34, v36);
  v153 = &v145 - v38;
  v40 = __chkstk_darwin(v37, v39);
  v152 = &v145 - v41;
  v43 = __chkstk_darwin(v40, v42);
  v151 = &v145 - v44;
  v46 = __chkstk_darwin(v43, v45);
  v150 = &v145 - v47;
  v49 = __chkstk_darwin(v46, v48);
  v51 = &v145 - v50;
  v53 = __chkstk_darwin(v49, v52);
  v149 = &v145 - v54;
  __chkstk_darwin(v53, v55);
  v148 = &v145 - v56;
  v57 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v58 = [*(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) honorIDMSListChanges];
  if (v58)
  {
    v154 = v29;
    v59 = v25;
    v60 = v2;
    v61 = v58;
    v62 = sub_100216974();
    v64 = v63;

    if (v62 == 0x4E574F4E4B4E55 && v64 == 0xE700000000000000)
    {

      return 1;
    }

    v66 = sub_1002171A4();

    v2 = v60;
    v25 = v59;
    v29 = v154;
    if (v66)
    {
      return 1;
    }
  }

  v68 = [*(v0 + v57) machines];
  v69 = &_swiftEmptySetSingleton;
  if (v68)
  {
    v70 = v68;
    v165 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();

    if (v165)
    {
      v71 = v165;
    }

    else
    {
      v71 = &_swiftEmptySetSingleton;
    }

    if ((v71 & 0xC000000000000001) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v71 = &_swiftEmptySetSingleton;
    if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
    {
LABEL_13:
      v165 = &_swiftEmptySetSingleton;
      v162 = sub_100216E84();
      v72 = sub_100216F14();
      if (!v72)
      {
LABEL_42:

        if ((v69 & 0xC000000000000001) != 0)
        {
          goto LABEL_76;
        }

        goto LABEL_81;
      }

      v153 = v25;
      v154 = v29;
      v73 = v72;
      v161 = type metadata accessor for MachineMO();
      v74 = v73;
      v75 = (v2 + 32);
      v76 = (v2 + 8);
LABEL_19:
      v163 = v74;
      swift_dynamicCast();
      v84 = v164;
      if ([v164 status])
      {
        goto LABEL_85;
      }

      v97 = [v84 modified];
      if (v97)
      {
        v98 = v160;
        v99 = v97;
        sub_100216344();

        v100 = v159;
        (*v75)(v159, v98, v1);
        sub_100216314();
        v2 = sub_100216354();
        v71 = *v76;
        (*v76)(v51, v1);
        (v71)(v100, v1);
        if (v2 == 1)
        {
LABEL_85:
          if ([v84 status] != 3)
          {
            goto LABEL_86;
          }

          v85 = [v84 modified];
          if (v85)
          {
            v86 = v158;
            v87 = v85;
            sub_100216344();

            v2 = v157;
            (*v75)(v157, v86, v1);
            sub_100216314();
            v88 = sub_100216354();
            v71 = *v76;
            (*v76)(v51, v1);
            (v71)(v2, v1);
            if (v88 == 1)
            {
LABEL_86:
              if ([v84 status] != 4)
              {
                goto LABEL_87;
              }

              v89 = [v84 modified];
              if (v89)
              {
                v90 = v156;
                v91 = v89;
                sub_100216344();

                v2 = v155;
                (*v75)(v155, v90, v1);
                sub_100216314();
                v92 = sub_100216354();
                v71 = *v76;
                (*v76)(v51, v1);
                (v71)(v2, v1);
                if (v92 == 1)
                {
LABEL_87:
                  if ([v84 status] != 5)
                  {
                    goto LABEL_29;
                  }

                  v93 = [v84 modified];
                  if (v93)
                  {
                    v71 = v153;
                    v94 = v93;
                    sub_100216344();

                    v2 = v154;
                    (*v75)(v154, v71, v1);
                    sub_100216314();
                    v95 = sub_100216354();
                    v96 = *v76;
                    (*v76)(v51, v1);
                    v96(v2, v1);
                    if (v95 == 1)
                    {
LABEL_29:

                      goto LABEL_18;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v101 = v164;
      v102 = *(v69 + 16);
      if (*(v69 + 24) <= v102)
      {
        sub_100188B58(v102 + 1);
      }

      v69 = v165;
      v77 = sub_100216DB4(v165[5]);
      v79 = v69 + 56;
      v80 = -1 << *(v69 + 32);
      v81 = v77 & ~v80;
      v82 = v81 >> 6;
      if (((-1 << v81) & ~*(v69 + 56 + 8 * (v81 >> 6))) != 0)
      {
        v83 = __clz(__rbit64((-1 << v81) & ~*(v69 + 56 + 8 * (v81 >> 6)))) | v81 & 0x7FFFFFFFFFFFFFC0;
        goto LABEL_17;
      }

      v103 = 0;
      v104 = (63 - v80) >> 6;
      while (++v82 != v104 || (v103 & 1) == 0)
      {
        v105 = v82 == v104;
        if (v82 == v104)
        {
          v82 = 0;
        }

        v103 |= v105;
        v106 = *(v79 + 8 * v82);
        if (v106 != -1)
        {
          v83 = __clz(__rbit64(~v106)) + (v82 << 6);
LABEL_17:
          *(v79 + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v83;
          *(*(v69 + 48) + 8 * v83) = v101;
          ++*(v69 + 16);
LABEL_18:
          v74 = sub_100216F14();
          if (!v74)
          {
            goto LABEL_42;
          }

          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      v143 = v78;

      if (swift_stdlib_isStackAllocationSafe())
      {

        v78 = v143;
        goto LABEL_47;
      }

      v144 = swift_slowAlloc();
      v69 = sub_1001EF198(v144, v101, v71, sub_1001EE44C, 0);

      if ((v69 & 0xC000000000000001) != 0)
      {
        goto LABEL_76;
      }

LABEL_81:
      v142 = *(v69 + 16);
      goto LABEL_82;
    }
  }

  v107 = *(v71 + 32);
  v101 = ((1 << v107) + 63) >> 6;
  v78 = 8 * v101;
  if ((v107 & 0x3Fu) > 0xD)
  {
    goto LABEL_78;
  }

LABEL_47:
  v155 = &v145;
  v156 = v101;
  __chkstk_darwin(v68, v78);
  v157 = &v145 - ((v108 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v157, v108);
  v158 = 0;
  v109 = 0;
  v160 = v71;
  v110 = v71 + 56;
  v111 = 1 << *(v71 + 32);
  v112 = -1;
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  v113 = v112 & *(v71 + 56);
  v71 = (v111 + 63) >> 6;
  v161 = (v2 + 32);
  v114 = (v2 + 8);
  v101 = 0x100292000;
  do
  {
    do
    {
      while (1)
      {
        if (!v113)
        {
          v116 = v109;
          while (1)
          {
            v109 = v116 + 1;
            if (__OFADD__(v116, 1))
            {
              goto LABEL_77;
            }

            if (v109 >= v71)
            {
              goto LABEL_75;
            }

            v117 = *(v110 + 8 * v109);
            ++v116;
            if (v117)
            {
              v115 = __clz(__rbit64(v117));
              v162 = (v117 - 1) & v117;
              goto LABEL_58;
            }
          }
        }

        v115 = __clz(__rbit64(v113));
        v162 = (v113 - 1) & v113;
LABEL_58:
        v118 = v115 | (v109 << 6);
        v119 = *(v160 + 48);
        v159 = v118;
        v120 = *(v119 + 8 * v118);
        if (![v120 *(v101 + 3376)])
        {
          v121 = [v120 modified];
          if (!v121)
          {
            goto LABEL_71;
          }

          v122 = v121;
          v123 = v147;
          sub_100216344();

          v124 = v146;
          (*v161)(v146, v123, v1);
          sub_100216314();
          v2 = sub_100216354();
          v125 = *v114;
          (*v114)(v51, v1);
          v125(v124, v1);
          v101 = &stru_100292000;
          if (v2 != 1)
          {
            goto LABEL_71;
          }
        }

        if ([v120 *(v101 + 3376)] == 3)
        {
          v126 = [v120 modified];
          if (!v126)
          {
            goto LABEL_71;
          }

          v127 = v126;
          v128 = v153;
          sub_100216344();

          v2 = v152;
          (*v161)(v152, v128, v1);
          sub_100216314();
          v129 = sub_100216354();
          v130 = *v114;
          (*v114)(v51, v1);
          v130(v2, v1);
          v101 = &stru_100292000;
          if (v129 != 1)
          {
            goto LABEL_71;
          }
        }

        if ([v120 *(v101 + 3376)] == 4)
        {
          v131 = [v120 modified];
          if (!v131)
          {
            goto LABEL_71;
          }

          v132 = v131;
          v133 = v151;
          sub_100216344();

          v2 = v150;
          (*v161)(v150, v133, v1);
          sub_100216314();
          v134 = sub_100216354();
          v135 = *v114;
          (*v114)(v51, v1);
          v135(v2, v1);
          v101 = &stru_100292000;
          if (v134 != 1)
          {
LABEL_71:

            v113 = v162;
            goto LABEL_72;
          }
        }

        if ([v120 *(v101 + 3376)] == 5)
        {
          break;
        }

        v113 = v162;
      }

      v136 = [v120 modified];
      if (!v136)
      {
        goto LABEL_71;
      }

      v137 = v136;
      v138 = v149;
      sub_100216344();

      v2 = v148;
      (*v161)(v148, v138, v1);
      sub_100216314();
      v139 = sub_100216354();
      v140 = *v114;
      (*v114)(v51, v1);
      v140(v2, v1);
      v101 = 0x100292000;

      v113 = v162;
    }

    while (v139 == 1);
LABEL_72:
    *&v157[(v159 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v159;
  }

  while (!__OFADD__(v158++, 1));
  __break(1u);
LABEL_75:
  v69 = sub_10018AD28(v157, v156, v158, v160);
  if ((v69 & 0xC000000000000001) == 0)
  {
    goto LABEL_81;
  }

LABEL_76:
  v142 = sub_100216ED4();
LABEL_82:

  return v142 != 0;
}

uint64_t sub_1001E537C(uint64_t a1, unint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) machines];
  v6 = &_swiftEmptySetSingleton;
  if (v5)
  {
    v7 = v5;
    v54[0] = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();
  }

  if ((sub_1001F2390() & 1) == 0)
  {

    if (qword_100297540 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

  if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
  {
    sub_100216E84();
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216C04();
    v6 = v54[0];
    v8 = v54[1];
    v9 = v54[2];
    v10 = v54[3];
    v11 = v54[4];
  }

  else
  {
    v10 = 0;
    v18 = -1 << *(&_swiftEmptySetSingleton + 32);
    v8 = &_swiftEmptySetSingleton + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(&_swiftEmptySetSingleton + 7);
  }

  v52 = v8;
  v21 = (v9 + 64) >> 6;
  while (1)
  {
    if (v6 < 0)
    {
      if (!sub_100216F14() || (type metadata accessor for MachineMO(), swift_dynamicCast(), v13 = v53, v24 = v10, v25 = v11, !v53))
      {
LABEL_32:
        sub_1001ACCA0();
        if (qword_100297540 != -1)
        {
          swift_once();
        }

        v35 = sub_100216774();
        sub_100002648(v35, qword_10029E728);

        v36 = sub_100216754();
        v37 = sub_100216C94();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v53 = v39;
          *v38 = 136446210;
          *(v38 + 4) = sub_100005FB0(a1, a2, &v53);
          _os_log_impl(&_mh_execute_header, v36, v37, "machineID %{public}s not found on list", v38, 0xCu);
          sub_100006128(v39);
        }

        return 0;
      }
    }

    else
    {
      v22 = v10;
      v23 = v11;
      v24 = v10;
      if (!v11)
      {
        while (1)
        {
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v24 >= v21)
          {
            goto LABEL_32;
          }

          v23 = *&v8[8 * v24];
          ++v22;
          if (v23)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_48:
        swift_once();
LABEL_7:
        v12 = sub_100216774();
        sub_100002648(v12, qword_10029E728);

        v13 = sub_100216754();
        v14 = sub_100216C54();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v54[0] = v16;
          *v15 = 136446210;
          *(v15 + 4) = sub_100005FB0(a1, a2, v54);
          _os_log_impl(&_mh_execute_header, v13, v14, "not enforcing idms list changes; allowing %{public}s", v15, 0xCu);
          sub_100006128(v16);
        }

        goto LABEL_9;
      }

LABEL_21:
      v25 = (v23 - 1) & v23;
      v13 = *(*(v6 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    v26 = [v13 machineID];
    if (!v26)
    {
      goto LABEL_15;
    }

    v27 = a1;
    v28 = a2;
    v29 = v26;
    v30 = sub_100216974();
    v32 = v31;

    a2 = v28;
    a1 = v27;
    if (v30 == v27 && v32 == a2)
    {
      break;
    }

    v34 = sub_1002171A4();

    v8 = v52;
    if (v34)
    {
      goto LABEL_39;
    }

LABEL_15:

    v10 = v24;
    v11 = v25;
  }

LABEL_39:
  if ([v13 status]!= 1)
  {
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v40 = sub_100216774();
    sub_100002648(v40, qword_10029E728);

    v41 = v13;
    v42 = sub_100216754();
    v43 = sub_100216C54();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = a2;
      v45 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v45 = 136446466;
      *(v45 + 4) = sub_100005FB0(v27, v44, &v53);
      *(v45 + 12) = 2082;
      v46 = v41;
      v47 = [v46 description];
      v48 = sub_100216974();
      v50 = v49;

      v51 = sub_100005FB0(v48, v50, &v53);

      *(v45 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v42, v43, "machineID %{public}s not explicitly allowed: %{public}s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_1001ACCA0();
    return 0;
  }

  sub_1001ACCA0();
LABEL_9:

  return 1;
}

uint64_t sub_1001E5AA8(void *a1)
{
  v2 = v1;
  v108 = sub_100216384();
  v4 = *(v108 - 8);
  v5 = v4[8];
  __chkstk_darwin(v108, v6);
  v104 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v8 = [*(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) machines];
  v9 = &_swiftEmptySetSingleton;
  v101 = v4;
  if (v8)
  {
    v10 = v8;
    v113 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();

    if (v113)
    {
      v9 = v113;
    }
  }

  v105 = v9;
  sub_1001E3B80(v9);
  v110 = 0;
  v111 = sub_10019C848(v11);

  v12 = [a1 includedPeerIDs];
  v13 = sub_100216BB4();

  v14 = v13 + 56;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 56);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v109 = v2;
  while (v17)
  {
LABEL_14:
    v23 = (*(v13 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v17)))));
    v24 = v23[1];
    v113 = *v23;
    v114 = v24;

    v25 = v110;
    sub_1001EE168(&v113, v2, &v115);
    v110 = v25;

    v26 = v116;
    if (v116)
    {
      v27 = v115;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100182D90(0, *(v20 + 2) + 1, 1, v20);
      }

      v29 = *(v20 + 2);
      v28 = *(v20 + 3);
      if (v29 >= v28 >> 1)
      {
        v20 = sub_100182D90((v28 > 1), v29 + 1, 1, v20);
      }

      *(v20 + 2) = v29 + 1;
      v21 = &v20[16 * v29];
      *(v21 + 4) = v27;
      *(v21 + 5) = v26;
      v2 = v109;
    }

    v17 &= v17 - 1;
  }

  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (v22 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v22);
    ++v19;
    if (v17)
    {
      v19 = v22;
      goto LABEL_14;
    }
  }

  v19 = sub_10019C848(v20);

  v30 = sub_1001F2390();
  v17 = 0x10021C000;
  v107 = v19;
  if (v30)
  {
    v31 = v111;
    v14 = v105;
    if (*(v111 + 16) > *(v19 + 16) >> 3)
    {

      v32 = sub_10018EA24(v31, v19);

      v43 = v32;
    }

    else
    {
      v113 = v19;

      sub_10018E8F8(v31);

      v43 = v113;
    }

    v44 = 0;
    v45 = v43 + 56;
    v46 = 1 << *(v43 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v17 = v47 & *(v43 + 56);
    *&v102 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc;
    v19 = (v46 + 63) >> 6;
    ++v101;
    *&v42 = 136446210;
    v100 = v42;
    v103 = v43;
    while (v17)
    {
LABEL_37:
      v54 = (*(v43 + 48) + ((v44 << 10) | (16 * __clz(__rbit64(v17)))));
      v55 = *v54;
      v56 = v54[1];
      v57 = qword_100297540;

      if (v57 != -1)
      {
        swift_once();
      }

      v58 = sub_100216774();
      sub_100002648(v58, qword_10029E728);

      v59 = sub_100216754();
      v60 = sub_100216C54();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v111 = v55;
        v62 = v61;
        v63 = swift_slowAlloc();
        v113 = v63;
        *v62 = v100;

        v64 = sub_100005FB0(v111, v56, &v113);

        *(v62 + 4) = v64;
        v14 = v105;
        _os_log_impl(&_mh_execute_header, v59, v60, "Peer machineID is unknown, beginning grace period: %{public}s", v62, 0xCu);
        sub_100006128(v63);
        v2 = v109;
      }

      v17 &= v17 - 1;
      type metadata accessor for MachineMO();
      v48 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v2 + v102)];
      v49 = sub_100216964();

      [v48 setMachineID:v49];

      v50 = v106;
      [v48 setContainer:*(v2 + v106)];
      [v48 setSeenOnFullList:0];
      v51 = v104;
      sub_100216374();
      isa = sub_1002162F4().super.isa;
      (*v101)(v51, v108);
      [v48 setModified:isa];

      [v48 setStatus:0];
      [*(v2 + v50) addMachinesObject:v48];

      v43 = v103;
    }

    while (1)
    {
      v53 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_83;
      }

      if (v53 >= v19)
      {

        v19 = v107;
        v17 = &OBJC_INSTANCE_METHODS_TrustedPeersHelperCustodianRecoveryKey;
        if ((v14 & 0xC000000000000001) != 0)
        {
          goto LABEL_27;
        }

        goto LABEL_42;
      }

      v17 = *(v45 + 8 * v53);
      ++v44;
      if (v17)
      {
        v44 = v53;
        goto LABEL_37;
      }
    }
  }

  v14 = v105;
  if (qword_100297540 == -1)
  {
    goto LABEL_24;
  }

LABEL_84:
  swift_once();
LABEL_24:
  v33 = sub_100216774();
  sub_100002648(v33, qword_10029E728);
  v34 = sub_100216754();
  v35 = sub_100216C54();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Not enforcing IDMS list changes", v36, 2u);
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_27:
    sub_100216E84();
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216C04();
    v14 = v115;
    v38 = v116;
    v39 = v117;
    v40 = v118;
    v41 = v119;
  }

  else
  {
LABEL_42:
    v40 = 0;
    v65 = -1 << *(v14 + 32);
    v38 = (v14 + 56);
    v39 = ~v65;
    v66 = -v65;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    else
    {
      v67 = -1;
    }

    v41 = v67 & *(v14 + 56);
  }

  v103 = v39;
  v68 = (v39 + 64) >> 6;
  v111 = v19 + 56;
  v19 = &stru_100292000;
  *&v37 = *(v17 + 3200);
  v102 = v37;
  v104 = v38;
  while (1)
  {
    v17 = v41;
    if (v14 < 0)
    {
      break;
    }

    v69 = v40;
    for (i = v41; !i; ++v69)
    {
      v40 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_82;
      }

      if (v40 >= v68)
      {
        goto LABEL_80;
      }

      i = *&v38[8 * v40];
    }

    v41 = (i - 1) & i;
    v71 = *(*(v14 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(i)))));
    if (!v71)
    {
      goto LABEL_80;
    }

LABEL_57:
    if ([v71 *(v19 + 3376)] == 2)
    {
      v73 = [v71 machineID];
      v74 = v107;
      if (v73)
      {
        v75 = v73;
        v76 = sub_100216974();
        v78 = v77;
      }

      else
      {
        v76 = 0;
        v78 = 0xE000000000000000;
      }

      v108 = v41;
      if (*(v74 + 16) && (v79 = *(v74 + 40), sub_100217264(), sub_1002169C4(), v80 = sub_100217284(), v81 = -1 << *(v74 + 32), v82 = v80 & ~v81, ((*(v111 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) != 0))
      {
        v83 = ~v81;
        while (1)
        {
          v84 = (*(v74 + 48) + 16 * v82);
          v85 = *v84 == v76 && v84[1] == v78;
          if (v85 || (sub_1002171A4() & 1) != 0)
          {
            break;
          }

          v82 = (v82 + 1) & v83;
          if (((*(v111 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        v38 = v104;
        v19 = 0x100292000;
        v41 = v108;
      }

      else
      {
LABEL_70:

        if (qword_100297540 != -1)
        {
          swift_once();
        }

        v86 = sub_100216774();
        sub_100002648(v86, qword_10029E728);
        v87 = v71;
        v88 = sub_100216754();
        v89 = sub_100216C94();

        if (os_log_type_enabled(v88, v89))
        {
          v105 = v14;
          v90 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v112 = v101;
          *v90 = v102;
          v91 = [v87 machineID];
          if (v91)
          {
            v92 = v91;
            v93 = sub_100216974();
            v95 = v94;
          }

          else
          {
            v93 = 0;
            v95 = 0;
          }

          v113 = v93;
          v114 = v95;
          sub_10001148C(&qword_10029D698, &unk_100226590);
          v96 = sub_100216994();
          v98 = sub_100005FB0(v96, v97, &v112);

          *(v90 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v88, v89, "Dropping knowledge of machineID %{public}s", v90, 0xCu);
          sub_100006128(v101);

          v2 = v109;
          v14 = v105;
        }

        else
        {
        }

        v38 = v104;
        v19 = 0x100292000;
        [*(v2 + v106) removeMachinesObject:v87];
        v41 = v108;
      }
    }

    else
    {
    }
  }

  v72 = sub_100216F14();
  if (v72)
  {
    v112 = v72;
    type metadata accessor for MachineMO();
    swift_dynamicCast();
    v71 = v113;
    if (v113)
    {
      goto LABEL_57;
    }
  }

LABEL_80:
  sub_1001ACCA0();
}

uint64_t sub_1001E6708(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v5 = v2;
  v6 = sub_10019C8E0(v5, 0xD00000000000001ELL, 0x800000010023E6F0);

  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = qword_100297540;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029E728);
  v10 = sub_100216754();
  v11 = sub_100216C54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Fetching allowed machine IDs", v12, 2u);
  }

  v13 = *&v5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = sub_1001F2548;
  v14[4] = v7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1001F2554;
  *(v15 + 24) = v14;
  v20[4] = sub_100056B30;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100109050;
  v20[3] = &unk_100288E18;
  v16 = _Block_copy(v20);
  v17 = v5;

  [v13 performBlockAndWait:v16];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001E69D0()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_10029E728);
  sub_100002648(v0, qword_10029E728);
  return sub_100216764();
}

id sub_1001E6A4C()
{
  v1 = sub_100216384();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v19 - v10;
  __chkstk_darwin(v9, v12);
  v14 = &v19 - v13;
  result = [v0 modified];
  if (result)
  {
    v16 = result;
    sub_100216344();

    (*(v2 + 32))(v14, v11, v1);
    sub_100216314();
    v17 = sub_100216354();
    v18 = *(v2 + 8);
    v18(v7, v1);
    v18(v14, v1);
    return (v17 == 1);
  }

  return result;
}

uint64_t sub_1001E6BF0()
{
  v1 = v0;
  v2 = sub_100216384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v19 - v10;
  v12 = [v1 modified];
  if (!v12)
  {
    return 0x6E776F6E6B6E75;
  }

  v13 = v12;
  sub_100216344();

  (*(v3 + 32))(v11, v8, v2);
  v14 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  isa = sub_1002162F4().super.isa;
  v16 = [v14 stringFromDate:isa];

  v17 = sub_100216974();
  (*(v3 + 8))(v11, v2);
  return v17;
}

unint64_t sub_1001E6DA8()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = sub_100216384();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v28 - v15;
  v17 = [v1 machineID];
  if (v17)
  {
    v18 = v17;
    sub_100216974();
  }

  result = [v1 status];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    v21 = [v1 modified];
    if (v21)
    {
      v22 = v21;
      sub_100216344();

      v23 = *(v8 + 32);
      v23(v6, v13, v7);
      (*(v8 + 56))(v6, 0, 1, v7);
      v23(v16, v6, v7);
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7);
      sub_100216374();
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_1000114D4(v6, &qword_10029D778, &qword_1002265C8);
      }
    }

    v24 = objc_allocWithZone(TPMachineID);
    v25 = sub_100216964();

    isa = sub_1002162F4().super.isa;
    v27 = [v24 initWithMachineID:v25 status:v20 modified:isa];

    (*(v8 + 8))(v16, v7);
    return v27;
  }

  return result;
}

uint64_t sub_1001E70A0(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5, NSString a6)
{
  v10 = kSecurityRTCEventNameMIDVanishedFromTDL;
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  *(inited + 32) = sub_100216974();
  *(inited + 40) = v12;
  v27 = v6;
  v13 = *(v6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDVanished);
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v13;
  v14 = v10;
  v15 = sub_10001900C(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
  sub_1000561D0();
  swift_allocError();
  *v16 = xmmword_100226F70;
  *(v16 + 16) = 13;
  v17 = sub_100216144();
  sub_1001ADA38(v15);

  sub_1001F3558();
  v19 = v18;
  v20.super.isa = sub_1002168C4().super.isa;

  if (a2)
  {
    v21 = sub_100216964();
  }

  else
  {
    v21 = 0;
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v22 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (a6)
  {
    a6 = sub_100216964();
  }

  LOBYTE(v26) = 1;
  v23 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v20.super.isa altDSID:v21 flowID:a4 deviceSessionID:a6 eventName:v14 testsAreEnabled:v19 canSendMetrics:v26 category:v22];

  v24 = sub_100216144();
  [v23 sendMetricWithResult:0 error:v24];

  *(v27 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric) = 1;
}

void sub_1001E731C(uint64_t a1, NSString a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6)
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029E728);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "MID evicted! incoming trust loss", v11, 2u);
  }

  v12 = kSecurityRTCErrorDomain;
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  *(inited + 32) = sub_100216974();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v14;
  *(inited + 48) = 0xD00000000000001ELL;
  *(inited + 56) = 0x800000010023E730;
  v15 = v12;
  sub_10001900C(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
  v16 = objc_allocWithZone(NSError);
  isa = sub_1002168C4().super.isa;

  v18 = [v16 initWithDomain:v15 code:2 userInfo:isa];

  v19 = kSecurityRTCEventNameOctagonTrustLost;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_10021D600;
  *(v20 + 32) = sub_100216974();
  *(v20 + 40) = v21;
  v22 = *(v35 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDEvicted);
  *(v20 + 72) = &type metadata for Bool;
  *(v20 + 48) = v22;
  v23 = v19;
  v24 = sub_10001900C(v20);
  swift_setDeallocating();
  sub_1000114D4(v20 + 32, &qword_100297CF0, &qword_10021D6F8);
  v25 = v18;
  sub_1001ADA38(v24);

  sub_1001F3558();
  v27 = v26;
  v28.super.isa = sub_1002168C4().super.isa;

  if (a2)
  {
    a2 = sub_100216964();
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v29 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (a6)
  {
    v30 = sub_100216964();
  }

  else
  {
    v30 = 0;
  }

  LOBYTE(v33) = 1;
  v31 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v28.super.isa altDSID:a2 flowID:a4 deviceSessionID:v30 eventName:v23 testsAreEnabled:v27 canSendMetrics:v33 category:v29];

  v32 = sub_100216144();
  [v31 sendMetricWithResult:1 error:v32];

  *(v35 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric) = 1;
}

void sub_1001E7714(uint64_t a1, NSString a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6)
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029E728);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "user initiated KO! incoming trust loss", v11, 2u);
  }

  v12 = kSecurityRTCErrorDomain;
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  *(inited + 32) = sub_100216974();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v14;
  *(inited + 48) = 0xD000000000000028;
  *(inited + 56) = 0x800000010023E750;
  v15 = v12;
  sub_10001900C(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
  v16 = objc_allocWithZone(NSError);
  isa = sub_1002168C4().super.isa;

  v18 = [v16 initWithDomain:v15 code:1 userInfo:isa];

  v19 = kSecurityRTCEventNameOctagonTrustLost;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_10021D600;
  *(v20 + 32) = sub_100216974();
  *(v20 + 40) = v21;
  v22 = *(v35 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUserInitiated);
  *(v20 + 72) = &type metadata for Bool;
  *(v20 + 48) = v22;
  v23 = v19;
  v24 = sub_10001900C(v20);
  swift_setDeallocating();
  sub_1000114D4(v20 + 32, &qword_100297CF0, &qword_10021D6F8);
  v25 = v18;
  sub_1001ADA38(v24);

  sub_1001F3558();
  v27 = v26;
  v28.super.isa = sub_1002168C4().super.isa;

  if (a2)
  {
    a2 = sub_100216964();
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v29 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (a6)
  {
    v30 = sub_100216964();
  }

  else
  {
    v30 = 0;
  }

  LOBYTE(v33) = 1;
  v31 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v28.super.isa altDSID:a2 flowID:a4 deviceSessionID:v30 eventName:v23 testsAreEnabled:v27 canSendMetrics:v33 category:v29];

  v32 = sub_100216144();
  [v31 sendMetricWithResult:1 error:v32];

  *(v35 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric) = 1;
}

void sub_1001E7B0C(uint64_t a1, NSString a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6)
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029E728);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "MID unknown reason! incoming trust loss", v11, 2u);
  }

  v12 = kSecurityRTCErrorDomain;
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  *(inited + 32) = sub_100216974();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v14;
  *(inited + 48) = 0xD000000000000028;
  *(inited + 56) = 0x800000010023E780;
  v15 = v12;
  sub_10001900C(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
  v16 = objc_allocWithZone(NSError);
  isa = sub_1002168C4().super.isa;

  v18 = [v16 initWithDomain:v15 code:3 userInfo:isa];

  v19 = kSecurityRTCEventNameOctagonTrustLost;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_10021D600;
  *(v20 + 32) = sub_100216974();
  *(v20 + 40) = v21;
  v22 = *(v35 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUnknownReason);
  *(v20 + 72) = &type metadata for Bool;
  *(v20 + 48) = v22;
  v23 = v19;
  v24 = sub_10001900C(v20);
  swift_setDeallocating();
  sub_1000114D4(v20 + 32, &qword_100297CF0, &qword_10021D6F8);
  v25 = v18;
  sub_1001ADA38(v24);

  sub_1001F3558();
  v27 = v26;
  v28.super.isa = sub_1002168C4().super.isa;

  if (a2)
  {
    a2 = sub_100216964();
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v29 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (a6)
  {
    v30 = sub_100216964();
  }

  else
  {
    v30 = 0;
  }

  LOBYTE(v33) = 1;
  v31 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v28.super.isa altDSID:a2 flowID:a4 deviceSessionID:v30 eventName:v23 testsAreEnabled:v27 canSendMetrics:v33 category:v29];

  v32 = sub_100216144();
  [v31 sendMetricWithResult:1 error:v32];

  *(v35 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric) = 1;
}

void sub_1001E7F04(uint64_t a1, NSString a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6)
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029E728);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "MID unknown! incoming trust loss", v11, 2u);
  }

  v12 = kSecurityRTCErrorDomain;
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  *(inited + 32) = sub_100216974();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v14;
  *(inited + 48) = 0xD000000000000024;
  *(inited + 56) = 0x800000010023E7B0;
  v15 = v12;
  sub_10001900C(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
  v16 = objc_allocWithZone(NSError);
  isa = sub_1002168C4().super.isa;

  v18 = [v16 initWithDomain:v15 code:0 userInfo:isa];

  v19 = kSecurityRTCEventNameOctagonTrustLost;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_10021D600;
  *(v20 + 32) = sub_100216974();
  *(v20 + 40) = v21;
  v22 = *(v35 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUnknown);
  *(v20 + 72) = &type metadata for Bool;
  *(v20 + 48) = v22;
  v23 = v19;
  v24 = sub_10001900C(v20);
  swift_setDeallocating();
  sub_1000114D4(v20 + 32, &qword_100297CF0, &qword_10021D6F8);
  v25 = v18;
  sub_1001ADA38(v24);

  sub_1001F3558();
  v27 = v26;
  v28.super.isa = sub_1002168C4().super.isa;

  if (a2)
  {
    a2 = sub_100216964();
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v29 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (a6)
  {
    v30 = sub_100216964();
  }

  else
  {
    v30 = 0;
  }

  LOBYTE(v33) = 1;
  v31 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v28.super.isa altDSID:a2 flowID:a4 deviceSessionID:v30 eventName:v23 testsAreEnabled:v27 canSendMetrics:v33 category:v29];

  v32 = sub_100216144();
  [v31 sendMetricWithResult:1 error:v32];

  *(v35 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric) = 1;
}

void sub_1001E82FC(uint64_t a1, NSString a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6)
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029E728);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "MID ghosted! incoming trust loss", v11, 2u);
  }

  v12 = kSecurityRTCErrorDomain;
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  *(inited + 32) = sub_100216974();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v14;
  *(inited + 48) = 0xD00000000000001ALL;
  *(inited + 56) = 0x800000010023E7E0;
  v15 = v12;
  sub_10001900C(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
  v16 = objc_allocWithZone(NSError);
  isa = sub_1002168C4().super.isa;

  v18 = [v16 initWithDomain:v15 code:4 userInfo:isa];

  v19 = kSecurityRTCEventNameOctagonTrustLost;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_10021D600;
  *(v20 + 32) = sub_100216974();
  *(v20 + 40) = v21;
  v22 = *(v35 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDGhosted);
  *(v20 + 72) = &type metadata for Bool;
  *(v20 + 48) = v22;
  v23 = v19;
  v24 = sub_10001900C(v20);
  swift_setDeallocating();
  sub_1000114D4(v20 + 32, &qword_100297CF0, &qword_10021D6F8);
  v25 = v18;
  sub_1001ADA38(v24);

  sub_1001F3558();
  v27 = v26;
  v28.super.isa = sub_1002168C4().super.isa;

  if (a2)
  {
    a2 = sub_100216964();
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v29 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (a6)
  {
    v30 = sub_100216964();
  }

  else
  {
    v30 = 0;
  }

  LOBYTE(v33) = 1;
  v31 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v28.super.isa altDSID:a2 flowID:a4 deviceSessionID:v30 eventName:v23 testsAreEnabled:v27 canSendMetrics:v33 category:v29];

  v32 = sub_100216144();
  [v31 sendMetricWithResult:1 error:v32];

  *(v35 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric) = 1;
}

uint64_t sub_1001E86F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v5 = sub_100216774();
  sub_100002648(v5, qword_10029E728);
  swift_errorRetain();
  v6 = sub_100216754();
  v7 = sub_100216C54();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v14._countAndFlagsBits = sub_100216994();
      sub_100216A14(v14);

      v10 = 0x203A726F727265;
    }

    else
    {
      v10 = 0x73736563637573;
    }

    v11 = sub_100005FB0(v10, 0xE700000000000000, &v13);

    *(v8 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "markTrustedDeviceListFetchFailed complete: %{public}s", v8, 0xCu);
    sub_100006128(v9);
  }

  sub_10010EEEC(0xD000000000000028, 0x800000010023DAA0);
  return a3(a1);
}

uint64_t sub_1001E8910(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v4 = sub_100216774();
  sub_100002648(v4, qword_10029E728);
  v5 = sub_100216754();
  v6 = sub_100216C54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setting honorIDMSListChanges to NO", v7, 2u);
  }

  v8 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v9 = sub_100216964();
  [v8 setHonorIDMSListChanges:v9];

  v10 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v22 = 0;
  if ([v10 save:&v22])
  {
    v11 = v22;
    return a2(0);
  }

  else
  {
    v13 = v22;
    v14 = sub_100216154();

    swift_willThrow();
    swift_errorRetain();
    v15 = sub_100216754();
    v16 = sub_100216C74();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v19 = sub_100216994();
      v21 = sub_100005FB0(v19, v20, &v22);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error marking machine ID list as unusable: %{public}s", v17, 0xCu);
      sub_100006128(v18);
    }

    swift_errorRetain();
    a2(v14);
  }
}

uint64_t sub_1001E8C08(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029E728);
  swift_errorRetain();
  v8 = sub_100216754();
  v9 = sub_100216C94();

  if (os_log_type_enabled(v8, v9))
  {
    v15 = a4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v17._countAndFlagsBits = sub_100216994();
      sub_100216A14(v17);

      v12 = 0x203A726F727265;
    }

    else
    {
      v12 = 0x73736563637573;
    }

    v13 = sub_100005FB0(v12, 0xE700000000000000, &v16);

    *(v10 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "setAllowedMachineIDs complete: %{public}s", v10, 0xCu);
    sub_100006128(v11);

    a4 = v15;
  }

  else
  {
  }

  sub_10010EEEC(0xD0000000000000E7, 0x800000010023DAF0);
  return a4(a1 & 1, a2);
}

uint64_t sub_1001E8E3C(int64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void *), void *a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, void *a18, void (*a19)(uint64_t, void *), uint64_t a20)
{
  v323 = a8;
  v329 = a7;
  v316 = a6;
  v334 = a2;
  v320 = 0;
  v314 = sub_100216384();
  v313 = *(v314 - 8);
  v24 = *(v313 + 64);
  __chkstk_darwin(v314, v25);
  v312 = &v307 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = 0;
  v353 = 0;
  v344 = 0;
  v27 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v28 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  p_cache = CKKSSOSSelfPeer.cache;
  v330 = a1;
  v331 = a3;
  v332 = a5;
  v328 = v27;
  if (!v28)
  {
    LODWORD(v322) = 0;
    v307 = 0;
    v321 = 0;
    goto LABEL_18;
  }

  v30 = v28;
  v31 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v32 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v347 = 0;
  v33 = [v32 peerWithID:v30 error:&v347];
  v34 = v33;
  if (v347)
  {
    v35 = v347;

    swift_willThrow();
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v36 = sub_100216774();
    sub_100002648(v36, qword_10029E728);
    v37 = v35;
    v38 = sub_100216754();
    v39 = sub_100216C74();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v347 = v41;
      *v40 = 136446210;
      v343 = v37;
      v42 = v37;
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v43 = sub_100216994();
      v45 = sub_100005FB0(v43, v44, &v347);
      a5 = v332;

      *(v40 + 4) = v45;
      a1 = v330;
      _os_log_impl(&_mh_execute_header, v38, v39, "Error getting ego peer from model: %{public}s", v40, 0xCu);
      sub_100006128(v41);
      p_cache = 0x100297000;
    }

    else
    {
    }

    LODWORD(v322) = 0;
    v307 = 0;
    v321 = 0;
LABEL_16:
    v66 = &v346;
LABEL_17:
    *(v66 - 32) = 0;
    a3 = v331;
    goto LABEL_18;
  }

  if (!v33)
  {
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v180 = sub_100216774();
    sub_100002648(v180, qword_10029E728);
    v181 = sub_100216754();
    v182 = sub_100216C74();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&_mh_execute_header, v181, v182, "Couldn't find ego peer in model", v183, 2u);
    }

    LODWORD(v322) = 0;
    v307 = 0;
    v66 = &v347;
    goto LABEL_17;
  }

  v46 = v33;
  v47 = [v46 permanentInfo];
  v48 = [v47 machineID];

  v49 = sub_100216974();
  v51 = v50;

  v307 = v49;
  v352 = v49;
  v353 = v51;
  v321 = v51;
  v52 = *(a1 + v31);
  v347 = 0;
  v53 = v52;
  v54 = [v53 statusOfPeerWithID:v30 error:&v347];

  v55 = v347;
  if (v347)
  {
    swift_willThrow();
    v56 = qword_100297540;
    v57 = v55;
    if (v56 != -1)
    {
      swift_once();
    }

    v58 = sub_100216774();
    sub_100002648(v58, qword_10029E728);
    v59 = v57;
    v60 = sub_100216754();
    v61 = sub_100216C74();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138543362;
      v64 = v59;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 4) = v65;
      *v63 = v65;
      _os_log_impl(&_mh_execute_header, v60, v61, "error calling statusOfPeer: %{public}@", v62, 0xCu);
      sub_1000114D4(v63, &qword_10029D580, &unk_10021CCC0);
      a5 = v332;

      p_cache = 0x100297000;
    }

    else
    {
    }

    LODWORD(v322) = 0;
    goto LABEL_16;
  }

  v305 = 0;
  if (v54 == 4)
  {
    a3 = v331;
  }

  else
  {
    a3 = v331;
    if (v54 != 32)
    {
      v305 = v54 != 128;
    }
  }

  LODWORD(v322) = v305;
  v344 = v305;
LABEL_18:
  v343 = &_swiftEmptySetSingleton;
  if (v334)
  {

    sub_100111148(v67);
  }

  if (a3)
  {

    sub_100111148(v68);
  }

  if (a4)
  {

    sub_100111148(v69);
  }

  v70 = v343[2];
  v333 = a4;
  v317 = v343;
  if (!v70)
  {
    v318 = 0;
    v72 = 0xE000000000000000;
    goto LABEL_30;
  }

  v318 = sub_1001F31D8(v343);
  v72 = v71;
  v73 = *(p_cache + 1344);

  if (v73 == -1)
  {
    goto LABEL_26;
  }

  while (2)
  {
    swift_once();
LABEL_26:
    v74 = sub_100216774();
    sub_100002648(v74, qword_10029E728);

    v75 = sub_100216754();
    v76 = sub_100216C94();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 136446210;
      v346 = v78;
      v347 = v318;
      v348 = v72;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v79 = sub_100216994();
      v81 = sub_100005FB0(v79, v80, &v346);

      *(v77 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "sha256 of deleted list: %{public}s", v77, 0xCu);
      sub_100006128(v78);
      a5 = v332;
    }

    else
    {
    }

LABEL_30:
    v82 = a15;
    v325 = a12;
    v324 = a10;
    if (*(a5 + 16))
    {
      v83 = sub_1001F31D8(a5);
      v85 = v84;
      v86 = *(p_cache + 1344);

      if (v86 != -1)
      {
        swift_once();
      }

      v87 = sub_100216774();
      sub_100002648(v87, qword_10029E728);

      v88 = sub_100216754();
      v89 = sub_100216C94();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v346 = v91;
        v347 = v83;
        *v90 = 136446210;
        v348 = v85;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v92 = sub_100216994();
        v94 = sub_100005FB0(v92, v93, &v346);
        a1 = v330;

        *(v90 + 4) = v94;
        a5 = v332;
        _os_log_impl(&_mh_execute_header, v88, v89, "sha256 of allowed list: %{public}s", v90, 0xCu);
        sub_100006128(v91);

        v82 = a15;
      }

      else
      {
      }
    }

    else
    {
      v83 = 0;
      v85 = 0xE000000000000000;
    }

    v95 = v329;
    v327 = a13;
    v319 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_testHashMismatchDetected;
    *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_testHashMismatchDetected) = 0;
    v326 = a9;
    v329 = a11;
    if (!v95)
    {

LABEL_43:
      v97 = kSecurityRTCEventNameAllowedMIDHashMismatch;
      sub_1001F3558();
      v99 = v98;
      v100 = a1;
      if (v326)
      {
        v101 = sub_100216964();
      }

      else
      {
        v101 = 0;
      }

      v102 = v327;
      v103 = v82;
      if (a11)
      {
        v104 = sub_100216964();
      }

      else
      {
        v104 = 0;
      }

      v105 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
      if (v102)
      {
        v102 = sub_100216964();
      }

      LOBYTE(v306) = 1;
      v106 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v101 flowID:v104 deviceSessionID:v102 eventName:v97 testsAreEnabled:v99 canSendMetrics:v306 category:v105];

      sub_1000561D0();
      swift_allocError();
      *v107 = xmmword_100226F80;
      *(v107 + 16) = 13;
      v108 = sub_100216144();

      [v106 sendMetricWithResult:0 error:v108];

      v100[v319] = 1;
      v82 = v103;
      a1 = v100;
      a5 = v332;
      goto LABEL_52;
    }

    if (v83 == v316 && v85 == v95)
    {

      goto LABEL_52;
    }

    v96 = sub_1002171A4();

    if ((v96 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_52:
    v315 = a20;
    v316 = a19;
    v308 = a17;
    v109 = v333;
    if (!v82)
    {

      goto LABEL_58;
    }

    if (v318 != a14 || v72 != v82)
    {
      v110 = sub_1002171A4();

      if (v110)
      {
        goto LABEL_68;
      }

LABEL_58:
      v111 = kSecurityRTCEventNameDeletedMIDHashMismatch;
      sub_1001F3558();
      v113 = v112;
      if (v326)
      {
        v114 = sub_100216964();
      }

      else
      {
        v114 = 0;
      }

      if (v329)
      {
        v115 = sub_100216964();
      }

      else
      {
        v115 = 0;
      }

      v116 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
      if (v327)
      {
        v117 = sub_100216964();
      }

      else
      {
        v117 = 0;
      }

      LOBYTE(v306) = 1;
      v118 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v114 flowID:v115 deviceSessionID:v117 eventName:v111 testsAreEnabled:v113 canSendMetrics:v306 category:v116];

      sub_1000561D0();
      swift_allocError();
      *v119 = xmmword_100226F90;
      *(v119 + 16) = 13;
      v120 = sub_100216144();

      [v118 sendMetricWithResult:0 error:v120];

      *(a1 + v319) = 1;
      goto LABEL_68;
    }

LABEL_68:
    v311 = a18;
    LODWORD(v318) = a16;
    sub_1001F3558();
    v309 = v121;
    v122 = a5 + 56;
    v123 = 1 << *(a5 + 32);
    if (v123 < 64)
    {
      v124 = ~(-1 << v123);
    }

    else
    {
      v124 = -1;
    }

    v125 = v124 & *(a5 + 56);
    v72 = (v123 + 63) >> 6;
    p_cache = (v334 + 7);
    a5 = (v109 + 7);

    a1 = 0;
    while (1)
    {
      if (!v125)
      {
        while (1)
        {
          v126 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_232;
          }

          if (v126 >= v72)
          {

            v310 = 0;
            v146 = v330;
            v147 = v328;
            v148 = v334;
            goto LABEL_115;
          }

          v125 = *(v122 + 8 * v126);
          ++a1;
          if (v125)
          {
            a1 = v126;
            break;
          }
        }
      }

      v127 = (v332[6] + ((a1 << 10) | (16 * __clz(__rbit64(v125)))));
      v129 = *v127;
      v128 = v127[1];
      v130 = v334;
      if (v334 && v334[2])
      {
        v131 = v334[5];
        sub_100217264();

        sub_1002169C4();
        v132 = sub_100217284();
        v133 = -1 << *(v130 + 32);
        v134 = v132 & ~v133;
        if ((*(p_cache + ((v134 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v134))
        {
          v135 = ~v133;
          while (1)
          {
            v136 = (v334[6] + 16 * v134);
            v137 = *v136 == v129 && v136[1] == v128;
            if (v137 || (sub_1002171A4() & 1) != 0)
            {
              break;
            }

            v134 = (v134 + 1) & v135;
            if (((*(p_cache + ((v134 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v134) & 1) == 0)
            {
              goto LABEL_90;
            }
          }

LABEL_104:

          goto LABEL_106;
        }
      }

      else
      {
      }

LABEL_90:
      if (v331)
      {
        v347 = v331;
        v346 = v332;
        sub_10001148C(&qword_10029E740, &qword_100226FB0);
        sub_1001AC36C(&qword_10029E748, &qword_10029E740, &qword_100226FB0);
        if (sub_100216C24())
        {
          goto LABEL_104;
        }
      }

      v138 = v333;
      if (v333)
      {
        if (v333[2])
        {
          v139 = v333[5];
          sub_100217264();
          sub_1002169C4();
          v140 = sub_100217284();
          v141 = -1 << *(v138 + 32);
          v142 = v140 & ~v141;
          if ((*(a5 + ((v142 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v142))
          {
            break;
          }
        }
      }

LABEL_72:
      v125 &= v125 - 1;

      v109 = v333;
    }

    v143 = ~v141;
    while (1)
    {
      v144 = (v333[6] + 16 * v142);
      v145 = *v144 == v129 && v144[1] == v128;
      if (v145 || (sub_1002171A4() & 1) != 0)
      {
        break;
      }

      v142 = (v142 + 1) & v143;
      if (((*(a5 + ((v142 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v142) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

LABEL_106:
    v149 = kSecurityRTCEventNameDuplicateMachineID;
    v146 = v330;
    v147 = v328;
    v148 = v334;
    v109 = v333;
    v150 = v329;
    v151 = v326;
    if (v326)
    {
      v152 = kSecurityRTCEventNameDuplicateMachineID;
      v151 = sub_100216964();
      if (v150)
      {
        goto LABEL_108;
      }

LABEL_110:
      v153 = 0;
    }

    else
    {
      v154 = kSecurityRTCEventNameDuplicateMachineID;
      if (!v150)
      {
        goto LABEL_110;
      }

LABEL_108:
      v153 = sub_100216964();
    }

    v155 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (v327)
    {
      v156 = sub_100216964();
    }

    else
    {
      v156 = 0;
    }

    v157 = objc_allocWithZone(AAFAnalyticsEventSecurity);
    v310 = 1;
    LOBYTE(v306) = 1;
    v158 = [v157 initWithKeychainCircleMetrics:0 altDSID:v151 flowID:v153 deviceSessionID:v156 eventName:v149 testsAreEnabled:v309 canSendMetrics:v306 category:v155];

    sub_1000561D0();
    swift_allocError();
    *v159 = xmmword_100226FA0;
    *(v159 + 16) = 13;
    v160 = sub_100216144();

    [v158 sendMetricWithResult:0 error:v160];

LABEL_115:
    if (v322)
    {
      v161 = v321;
      if (v321)
      {
        sub_1001F3558();
        if (sub_1001F2E2C(v307, v161, v332, v148, v331, v109))
        {
          if (qword_100297540 != -1)
          {
            swift_once();
          }

          v162 = sub_100216774();
          sub_100002648(v162, qword_10029E728);
          v163 = sub_100216754();
          v164 = sub_100216C54();
          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            *v165 = 0;
            _os_log_impl(&_mh_execute_header, v163, v164, "MID rolled! incoming trust loss", v165, 2u);
          }

          v166 = kSecurityRTCErrorDomain;
          sub_10001148C(&unk_10029DA20, &unk_100226750);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10021D600;
          *(inited + 32) = sub_100216974();
          *(inited + 72) = &type metadata for String;
          *(inited + 40) = v168;
          *(inited + 48) = 0xD00000000000001ALL;
          *(inited + 56) = 0x800000010023E710;
          v169 = v166;
          sub_10001900C(inited);
          swift_setDeallocating();
          sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
          v170 = objc_allocWithZone(NSError);
          isa = sub_1002168C4().super.isa;

          v172 = [v170 initWithDomain:v169 code:5 userInfo:isa];

          v146[OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDRolled] = 1;
          v173 = kSecurityRTCEventNameOctagonTrustLost;
          v174 = sub_10001900C(_swiftEmptyArrayStorage);
          v175 = v172;
          sub_1001ADA38(v174);

          sub_1001F3558();
          v177 = v176;
          v178.super.isa = sub_1002168C4().super.isa;

          if (v326)
          {
            v179 = sub_100216964();
          }

          else
          {
            v179 = 0;
          }

          if (v329)
          {
            v184 = sub_100216964();
          }

          else
          {
            v184 = 0;
          }

          v185 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
          if (v327)
          {
            v186 = sub_100216964();
          }

          else
          {
            v186 = 0;
          }

          LOBYTE(v306) = 1;
          v187 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v178.super.isa altDSID:v179 flowID:v184 deviceSessionID:v186 eventName:v173 testsAreEnabled:v177 canSendMetrics:v306 category:v185];

          v188 = sub_100216144();
          [v187 sendMetricWithResult:1 error:v188];

          v146[OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric] = 1;
          v147 = v328;
        }
      }
    }

    v322 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_midVanishedFromTDL;
    v146[OBJC_IVAR____TtC18TrustedPeersHelper9Container_midVanishedFromTDL] = 0;
    v146[OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDVanished] = 0;
    v342 = 0;
    v341 = 0;
    v340 = 0;
    v339 = 0;
    v338 = 0;
    v337 = 0;
    v189 = *&v146[v147];
    v190 = sub_100216964();

    [v189 setHonorIDMSListChanges:v190];

    v191 = [*&v146[v147] machines];
    if (v191)
    {
      v192 = v191;
      v347 = 0;
      type metadata accessor for MachineMO();
      sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
      sub_100216BA4();

      p_cache = v347;
      if (v347)
      {
      }

      else
      {
        p_cache = &_swiftEmptySetSingleton;
      }
    }

    else
    {
      p_cache = &_swiftEmptySetSingleton;
    }

    sub_1001E3B80(p_cache);
    v320 = sub_10019C848(v193);

    if ((p_cache & 0xC000000000000001) != 0)
    {

      v194 = v146;

      sub_100216E84();
      type metadata accessor for MachineMO();
      sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
      sub_100216C04();
      v72 = v347;
      a5 = v348;
      v195 = v349;
      a1 = v350;
      v196 = v351;
    }

    else
    {
      v197 = -1 << *(p_cache + 32);
      a5 = p_cache + 56;
      v198 = ~v197;
      v199 = -v197;
      if (v199 < 64)
      {
        v200 = ~(-1 << v199);
      }

      else
      {
        v200 = -1;
      }

      v196 = v200 & *(p_cache + 56);

      v201 = v146;

      v195 = v198;
      a1 = 0;
      v72 = p_cache;
    }

    v318 = v195;
    v202 = (v195 + 64) >> 6;
    if (v72 < 0)
    {
      while (1)
      {
        v208 = sub_100216F14();
        if (!v208)
        {
          break;
        }

        v335 = v208;
        type metadata accessor for MachineMO();
        swift_dynamicCast();
        v207 = v345;
        v205 = a1;
        v206 = v196;
        if (!v345)
        {
          break;
        }

LABEL_157:
        v345 = v207;
        sub_1001EB6A4(&v345, v332, &v337, v334, &v344, &v352, v330, &v341, v331, &v342, v333, &v340, &v338, &v339);

        a1 = v205;
        v196 = v206;
        if ((v72 & 0x8000000000000000) == 0)
        {
          goto LABEL_149;
        }
      }
    }

    else
    {
LABEL_149:
      v203 = a1;
      v204 = v196;
      v205 = a1;
      if (!v196)
      {
        while (1)
        {
          v205 = (v203 + 1);
          if (__OFADD__(v203, 1))
          {
            break;
          }

          if (v205 >= v202)
          {
            goto LABEL_159;
          }

          v204 = *(a5 + 8 * v205);
          ++v203;
          if (v204)
          {
            goto LABEL_153;
          }
        }

        __break(1u);
LABEL_232:
        __break(1u);
        continue;
      }

LABEL_153:
      v206 = (v204 - 1) & v204;
      v207 = *(*(v72 + 48) + ((v205 << 9) | (8 * __clz(__rbit64(v204)))));
      if (v207)
      {
        goto LABEL_157;
      }
    }

    break;
  }

LABEL_159:
  sub_1001ACCA0();

  v209 = v332;

  v210 = v334;

  v211 = v330;

  v212 = v333;

  v213 = v328;
  v214 = [*&v211[v328] machines];
  v215 = &_swiftEmptySetSingleton;
  if (v214)
  {
    v216 = v214;
    v345 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();

    if (v345)
    {
      v215 = v345;
    }
  }

  v346 = v215;
  sub_1001E3B80(v215);
  v218 = v217;

  v219 = sub_10019C848(v218);

  v336 = v219;
  v220 = v211;
  sub_1001F07C8(v209, &v336, v220, &v337, &v346, 1, "Newly trusted machine ID: %{public}s");

  v221 = [*&v211[v213] machines];
  v222 = &_swiftEmptySetSingleton;
  if (v221)
  {
    v223 = v221;
    v345 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();

    if (v345)
    {
      v222 = v345;
    }
  }

  v346 = v222;
  sub_1001E3B80(v222);
  v225 = v224;

  v226 = sub_10019C848(v225);

  v336 = v226;
  if (v210)
  {
    v227 = v220;
    sub_1001F0144(v210, &v336, v227, &v337, &v346, &v344, &v352, &v341);
  }

  v228 = [*&v211[v213] machines];
  v229 = &_swiftEmptySetSingleton;
  if (v228)
  {
    v230 = v228;
    v345 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();

    if (v345)
    {
      v229 = v345;
    }
  }

  v346 = v229;
  sub_1001E3B80(v229);
  v232 = v231;

  v233 = sub_10019C848(v232);

  v336 = v233;
  v234 = v331;
  if (v331)
  {
    v235 = v220;
    sub_1001F07C8(v234, &v336, v235, &v337, &v346, 3, "Newly evicted machine ID: %{public}s");
  }

  v236 = [*&v211[v213] machines];
  v237 = &_swiftEmptySetSingleton;
  if (v236)
  {
    v238 = v236;
    v345 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();

    if (v345)
    {
      v237 = v345;
    }
  }

  v346 = v237;
  sub_1001E3B80(v237);
  v240 = v239;

  v241 = sub_10019C848(v240);

  v336 = v241;
  if (v212)
  {
    v242 = v220;
    sub_1001F07C8(v212, &v336, v242, &v337, &v346, 4, "Newly removed with unknown reason machine ID: %{public}s");
  }

  v243 = [*&v211[v213] machines];
  v244 = &_swiftEmptySetSingleton;
  if (v243)
  {
    v245 = v243;
    v345 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();

    if (v345)
    {
      v244 = v345;
    }
  }

  sub_1001E3B80(v244);
  v247 = sub_10019C848(v246);

  v336 = v247;
  v248 = sub_1001F2390();

  if (v248)
  {
    v249 = *&v220[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    v345 = 0;
    v250 = [v249 allMachineIDsWithError:&v345];
    v251 = v345;
    if (!v250)
    {
      v296 = v345;

      v295 = sub_100216154();

      swift_willThrow();

      goto LABEL_219;
    }

    v320 = v247;
    v252 = v250;
    v253 = sub_100216BB4();
    v254 = v251;

    v255 = v331;

    v256 = v332;

    v257 = v220;
    sub_1001F0D4C(v253, &v336, v256, v255, v212, v210, v257, &v337);
    v211 = v330;

    v258 = v325;
    v259 = v324;
    v260 = v327;
  }

  else
  {
    v320 = v247;
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v261 = sub_100216774();
    sub_100002648(v261, qword_10029E728);
    v257 = sub_100216754();
    v262 = sub_100216C94();
    v263 = os_log_type_enabled(v257, v262);
    v258 = v325;
    v259 = v324;
    v260 = v327;
    if (v263)
    {
      v264 = swift_slowAlloc();
      *v264 = 0;
      _os_log_impl(&_mh_execute_header, v257, v262, "Believe we're in a demo account, not enforcing IDMS list", v264, 2u);
    }
  }

  v265 = *&v211[v213];
  v266 = v311;
  if (v311)
  {
    v267 = v265;
    v266 = sub_100216964();
  }

  else
  {
    v268 = v265;
  }

  [v265 setIdmsTrustedDevicesVersion:v266];

  v269 = *&v211[v213];
  v270 = v312;
  sub_100216374();
  v271 = sub_1002162F4().super.isa;
  (*(v313 + 8))(v270, v314);
  [v269 setIdmsTrustedDeviceListFetchDate:v271];

  v272 = *&v211[v213];
  v273 = objc_allocWithZone(NSSet);
  v274 = v272;
  v275 = [v273 init];
  [v274 setAllowedMachineIDs:v275];

  v276 = v323;
  v277 = v326;
  if (v211[v322] == 1)
  {
    sub_1001E70A0(v323, v326, v259, v329, v258, v260);
  }

  if (v342)
  {
    sub_1001E731C(v276, v277, v259, v329, v258, v260);
  }

  if (v341 == 1)
  {
    sub_1001E7714(v276, v277, v259, v329, v258, v260);
  }

  if (v340)
  {
    sub_1001E7B0C(v276, v277, v259, v329, v258, v260);
  }

  if (v339 == 1)
  {
    sub_1001E7F04(v276, v277, v259, v329, v258, v260);
  }

  if (v338)
  {
    sub_1001E82FC(v276, v277, v259, v329, v258, v260);
  }

  v278 = kSecurityRTCEventNameTDLProcessingSuccess;
  sub_1001F3558();
  v280 = v279;
  if (v277)
  {
    v281 = sub_100216964();
  }

  else
  {
    v281 = 0;
  }

  if (v329)
  {
    v282 = sub_100216964();
  }

  else
  {
    v282 = 0;
  }

  v283 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v260)
  {
    v260 = sub_100216964();
  }

  LOBYTE(v306) = 1;
  v284 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v281 flowID:v282 deviceSessionID:v260 eventName:v278 testsAreEnabled:v280 canSendMetrics:v306 category:v283];

  v285 = v330;
  if ((v330[v322] | v310))
  {

    v286 = v328;
  }

  else
  {
    v287 = v330[v319];

    v286 = v328;
    if ((v287 & 1) == 0)
    {
      v288 = 1;
      goto LABEL_215;
    }
  }

  v288 = 0;
LABEL_215:
  [v284 sendMetricWithResult:v288 error:0];
  v289 = *&v220[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v290 = *&v285[v286];
  sub_10019E368(v290, v289);

  v345 = 0;
  if ([v289 save:&v345])
  {
    v291 = v337;
    v292 = v345;
    v316(v291, 0);
  }

  v294 = v345;
  v295 = sub_100216154();

  swift_willThrow();

LABEL_219:

  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v297 = sub_100216774();
  sub_100002648(v297, qword_10029E728);
  swift_errorRetain();
  v298 = sub_100216754();
  v299 = sub_100216C74();

  if (os_log_type_enabled(v298, v299))
  {
    v300 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    v352 = v301;
    *v300 = 136446210;
    v343 = v295;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v302 = sub_100216994();
    v304 = sub_100005FB0(v302, v303, &v352);

    *(v300 + 4) = v304;
    _os_log_impl(&_mh_execute_header, v298, v299, "Error setting machine ID list: %{public}s", v300, 0xCu);
    sub_100006128(v301);
  }

  swift_errorRetain();
  v316(0, v295);
}

void sub_1001EB6A4(id *a1, uint64_t a2, _BYTE *a3, uint64_t a4, _BYTE *a5, uint64_t *a6, uint64_t a7, _BYTE *a8, uint64_t a9, BOOL *a10, uint64_t a11, BOOL *a12, BOOL *a13, _BYTE *a14)
{
  v15 = v14;
  v337 = a6;
  v338 = a5;
  v340 = a3;
  v342 = sub_100216384();
  v21 = *(v342 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v342, v23);
  v341 = &v331 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = &stru_100292000;
  v27 = [*a1 machineID];
  if (!v27)
  {
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v44 = sub_100216774();
    sub_100002648(v44, qword_10029E728);
    v45 = v25;
    isa = sub_100216754();
    v47 = sub_100216C94();

    if (!os_log_type_enabled(isa, v47))
    {
      goto LABEL_61;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v343 = v49;
    *v48 = 136446210;
    v50 = v45;
    v51 = [v50 description];
    v52 = sub_100216974();
    v54 = v53;

    v55 = sub_100005FB0(v52, v54, &v343);

    *(v48 + 4) = v55;
    _os_log_impl(&_mh_execute_header, isa, v47, "Machine has no ID: %{public}s", v48, 0xCu);
    sub_100006128(v49);
    goto LABEL_13;
  }

  v339 = v21;
  v336 = a7;
  v28 = v27;
  v29 = sub_100216974();
  v31 = v30;

  if (sub_10004C758(v29, v31, a2))
  {

    if ([v25 status] == 1)
    {
      v32 = v339;
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v33 = sub_100216774();
      sub_100002648(v33, qword_10029E728);
      v34 = v25;
      v35 = sub_100216754();
      v36 = sub_100216C94();

      if (os_log_type_enabled(v35, v36))
      {
        v335 = v14;
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v345 = v38;
        *v37 = 136446210;
        v39 = [v34 machineID];
        if (v39)
        {
          v40 = v39;
          v41 = sub_100216974();
          v43 = v42;
        }

        else
        {
          v41 = 0;
          v43 = 0;
        }

        v343 = v41;
        v344 = v43;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v108 = sub_100216994();
        v110 = sub_100005FB0(v108, v109, &v345);

        *(v37 + 4) = v110;
        _os_log_impl(&_mh_execute_header, v35, v36, "Machine ID still trusted: %{public}s", v37, 0xCu);
        sub_100006128(v38);

        v32 = v339;
      }

      else
      {
      }
    }

    else
    {
      v32 = v339;
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v83 = sub_100216774();
      sub_100002648(v83, qword_10029E728);
      v84 = v25;
      v85 = sub_100216754();
      v86 = sub_100216C94();

      if (os_log_type_enabled(v85, v86))
      {
        v335 = v14;
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v345 = v88;
        *v87 = 136446210;
        v89 = [v84 machineID];
        if (v89)
        {
          v90 = v89;
          v91 = sub_100216974();
          v93 = v92;
        }

        else
        {
          v91 = 0;
          v93 = 0;
        }

        v343 = v91;
        v344 = v93;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v111 = sub_100216994();
        v113 = sub_100005FB0(v111, v112, &v345);

        *(v87 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v85, v86, "Machine ID newly retrusted: %{public}s", v87, 0xCu);
        sub_100006128(v88);

        v32 = v339;
      }

      else
      {
      }

      *v340 = 1;
    }

    [v25 setStatus:1];
    [v25 setSeenOnFullList:1];
    v114 = v341;
    sub_100216374();
    isa = sub_1002162F4().super.isa;
    (*(v32 + 8))(v114, v342);
    [v25 setModified:isa];
    goto LABEL_61;
  }

  if (a4 && (sub_10004C758(v29, v31, a4) & 1) != 0)
  {

    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v56 = sub_100216774();
    sub_100002648(v56, qword_10029E728);
    v57 = v25;
    v58 = sub_100216754();
    v59 = sub_100216C94();

    if (os_log_type_enabled(v58, v59))
    {
      v335 = v14;
      v60 = swift_slowAlloc();
      v345 = swift_slowAlloc();
      *v60 = 136446466;
      v61 = sub_1001E6BF0();
      v63 = sub_100005FB0(v61, v62, &v345);

      *(v60 + 4) = v63;
      *(v60 + 12) = 2082;
      v64 = [v57 machineID];
      if (v64)
      {
        v65 = v64;
        v66 = sub_100216974();
        v68 = v67;
      }

      else
      {
        v66 = 0;
        v68 = 0;
      }

      v343 = v66;
      v344 = v68;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v134 = sub_100216994();
      v136 = sub_100005FB0(v134, v135, &v345);

      *(v60 + 14) = v136;
      _os_log_impl(&_mh_execute_header, v58, v59, "User initiated removal! machine ID last modified %{public}s; distrusting: %{public}s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v137 = v339;
    if ([v57 status] != 2)
    {
      [v57 setStatus:2];
      v138 = v341;
      sub_100216374();
      v139 = sub_1002162F4().super.isa;
      (*(v137 + 8))(v138, v342);
      [v57 setModified:v139];

      *v340 = 1;
    }

    if (*v338 != 1)
    {
      goto LABEL_113;
    }

    v140 = v337[1];
    if (!v140)
    {
      goto LABEL_113;
    }

    v141 = *v337;
    v142 = v337[1];

    v143 = [v57 machineID];
    if (v143)
    {
      v144 = v143;
      v145 = sub_100216974();
      v147 = v146;

      if (v141 == v145 && v140 == v147)
      {

        v148 = v336;
LABEL_112:
        *(v148 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUserInitiated) = 1;
        goto LABEL_113;
      }

      v177 = sub_1002171A4();

      v148 = v336;
      if (v177)
      {
        goto LABEL_112;
      }
    }

    else
    {
    }

LABEL_113:
    *a8 = 1;
    return;
  }

  v69 = a10;
  if (a9 && (sub_10004C758(v29, v31, a9) & 1) != 0)
  {

    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v70 = sub_100216774();
    sub_100002648(v70, qword_10029E728);
    v71 = v25;
    v72 = sub_100216754();
    v73 = sub_100216C94();

    if (os_log_type_enabled(v72, v73))
    {
      v333 = a10;
      v335 = v14;
      v74 = swift_slowAlloc();
      v345 = swift_slowAlloc();
      *v74 = 136446466;
      v75 = sub_1001E6BF0();
      v77 = sub_100005FB0(v75, v76, &v345);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2082;
      v78 = [v71 machineID];
      if (v78)
      {
        v79 = v78;
        v80 = sub_100216974();
        v82 = v81;
      }

      else
      {
        v80 = 0;
        v82 = 0;
      }

      v343 = v80;
      v344 = v82;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v167 = sub_100216994();
      v169 = sub_100005FB0(v167, v168, &v345);

      *(v74 + 14) = v169;
      _os_log_impl(&_mh_execute_header, v72, v73, "Evicted removal! machine ID last modified %{public}s; tagging as evicted: %{public}s", v74, 0x16u);
      swift_arrayDestroy();

      v107 = v336;
      v69 = v333;
    }

    else
    {

      v107 = v336;
    }

    if ([v71 status] == 3)
    {
      if (*v69)
      {
        *v69 = 1;
      }

      else
      {
        v170 = sub_1001F1538(v71, v340, "Evicted machine ID last modified %{public}s; distrusting: %{public}s", "Evicted machine ID last modified %{public}s; leaving evicted: %{public}s");
        *v69 = v170;
        if (!v170)
        {
          return;
        }
      }

      if (*v338 == 1)
      {
        v116 = v337[1];
        if (v116)
        {
          v117 = *v337;
          v171 = v337[1];

          v119 = [v71 machineID];
LABEL_106:
          v172 = v119;
          if (v172)
          {
            v173 = v172;
            v174 = sub_100216974();
            v176 = v175;

            if (v117 == v174 && v116 == v176)
            {

LABEL_149:
              v227 = &OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDEvicted;
LABEL_159:
              *(v107 + *v227) = 1;
              return;
            }

            v226 = sub_1002171A4();

            if (v226)
            {
              goto LABEL_149;
            }

            return;
          }

LABEL_130:

          return;
        }
      }

      return;
    }

    [v71 setStatus:3];
    goto LABEL_120;
  }

  v94 = a12;
  if (a11 && (sub_10004C758(v29, v31, a11) & 1) != 0)
  {
    v334 = a12;

    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v95 = sub_100216774();
    sub_100002648(v95, qword_10029E728);
    v71 = v25;
    v96 = sub_100216754();
    v97 = sub_100216C94();

    if (os_log_type_enabled(v96, v97))
    {
      v335 = v14;
      v98 = swift_slowAlloc();
      v345 = swift_slowAlloc();
      *v98 = 136446466;
      v99 = sub_1001E6BF0();
      v101 = sub_100005FB0(v99, v100, &v345);

      *(v98 + 4) = v101;
      *(v98 + 12) = 2082;
      v102 = [v71 machineID];
      if (v102)
      {
        v103 = v102;
        v104 = sub_100216974();
        v106 = v105;
      }

      else
      {
        v104 = 0;
        v106 = 0;
      }

      v343 = v104;
      v344 = v106;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v178 = sub_100216994();
      v180 = sub_100005FB0(v178, v179, &v345);

      *(v98 + 14) = v180;
      _os_log_impl(&_mh_execute_header, v96, v97, "Unknown reason removal! machine ID last modified %{public}s; tagging as unknown reason: %{public}s", v98, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v107 = v336;
    v181 = [v71 status];
    v182 = v334;
    if (v181 != 4)
    {
      [v71 setStatus:4];
LABEL_120:
      v183 = v341;
      sub_100216374();
      v184 = sub_1002162F4().super.isa;
      (*(v339 + 8))(v183, v342);
      [v71 setModified:v184];

LABEL_121:
      *v340 = 1;
      return;
    }

    if (*v334)
    {
      *v334 = 1;
    }

    else
    {
      v185 = sub_1001F1538(v71, v340, "Unknown reason machine ID last modified %{public}s; distrusting: %{public}s", "Unknown reason machine ID last modified %{public}s; leaving unknown reason: %{public}s");
      *v182 = v185;
      if (!v185)
      {
        return;
      }
    }

    if (*v338 != 1)
    {
      return;
    }

    v150 = v337[1];
    if (!v150)
    {
      return;
    }

    v151 = *v337;
    v186 = v337[1];

    v153 = [v71 machineID];
LABEL_126:
    v187 = v153;
    if (v187)
    {
      v188 = v187;
      v189 = sub_100216974();
      v191 = v190;

      if (v151 == v189 && v150 == v191)
      {
      }

      else
      {
        v235 = sub_1002171A4();

        if ((v235 & 1) == 0)
        {
          return;
        }
      }

      v227 = &OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUnknownReason;
      goto LABEL_159;
    }

    goto LABEL_130;
  }

  if ((sub_1001E6A4C() & 1) == 0 || ![v25 status] || objc_msgSend(v25, "status") == 5 || objc_msgSend(v25, "status") == 2)
  {

    v107 = v336;
    goto LABEL_45;
  }

  v333 = a10;
  v334 = a12;
  v335 = v14;
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v192 = sub_100216774();
  sub_100002648(v192, qword_10029E728);
  v193 = v25;

  v194 = sub_100216754();
  v195 = sub_100216C94();

  v196 = os_log_type_enabled(v194, v195);
  v332 = v193;
  if (v196)
  {
    v197 = swift_slowAlloc();
    v343 = swift_slowAlloc();
    *v197 = 136446466;
    v198 = sub_100005FB0(v29, v31, &v343);

    *(v197 + 4) = v198;
    *(v197 + 12) = 2080;
    v199 = sub_1001E6BF0();
    v201 = sub_100005FB0(v199, v200, &v343);

    *(v197 + 14) = v201;
    _os_log_impl(&_mh_execute_header, v194, v195, "machineID that vanished: %{public}s, last modified : %s", v197, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = v335;
  v107 = v336;
  v69 = v333;
  v94 = v334;
  if (*v338 == 1)
  {
    v228 = v337[1];
    if (v228)
    {
      v229 = *v337;

      v230 = [v332 machineID];
      if (v230)
      {
        v231 = v230;
        v232 = sub_100216974();
        v234 = v233;

        if (v229 == v232 && v228 == v234)
        {

          v107 = v336;
          v69 = v333;
LABEL_182:
          *(v107 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDVanished) = 1;
          goto LABEL_183;
        }

        v275 = sub_1002171A4();

        v107 = v336;
        v69 = v333;
        if (v275)
        {
          goto LABEL_182;
        }
      }

      else
      {
      }
    }
  }

LABEL_183:
  *(v107 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_midVanishedFromTDL) = 1;
LABEL_45:
  if ([v25 status] != 3)
  {
    if ([v25 status] == 4)
    {
      if (*v94)
      {
        *v94 = 1;
      }

      else
      {
        v149 = sub_1001F1538(v25, v340, "Unknown reason machine ID last modified %{public}s; distrusting: %{public}s", "Unknown reason machine ID last modified %{public}s; leaving unknown reason: %{public}s");
        *v94 = v149;
        if (!v149)
        {
          return;
        }
      }

      if (*v338 != 1)
      {
        return;
      }

      v150 = v337[1];
      if (!v150)
      {
        return;
      }

      v151 = *v337;
      v152 = v337[1];

      v153 = [v25 machineID];
      goto LABEL_126;
    }

    if ([v25 status] == 5)
    {
      v120 = sub_1001E6A4C();
      v121 = [v25 seenOnFullList];
      if (v120)
      {
        if (v121)
        {
          if (qword_100297540 != -1)
          {
            swift_once();
          }

          v122 = sub_100216774();
          sub_100002648(v122, qword_10029E728);
          v123 = v25;
          isa = sub_100216754();
          v124 = sub_100216C94();

          if (!os_log_type_enabled(isa, v124))
          {
            goto LABEL_61;
          }

          v125 = swift_slowAlloc();
          v345 = swift_slowAlloc();
          *v125 = 136446466;
          v126 = sub_1001E6BF0();
          v128 = sub_100005FB0(v126, v127, &v345);

          *(v125 + 4) = v128;
          *(v125 + 12) = 2082;
          v129 = [v123 machineID];
          if (v129)
          {
            v130 = v129;
            v131 = sub_100216974();
            v133 = v132;
          }

          else
          {
            v131 = 0;
            v133 = 0;
          }

          v343 = v131;
          v344 = v133;
          sub_10001148C(&qword_10029D698, &unk_100226590);
          v276 = sub_100216994();
          v278 = sub_100005FB0(v276, v277, &v345);

          *(v125 + 14) = v278;
          v279 = "Seen on full list machine ID isn't on full list, last modified %{public}s, ignoring: %{public}s";
        }

        else
        {
          if (qword_100297540 != -1)
          {
            swift_once();
          }

          v236 = sub_100216774();
          sub_100002648(v236, qword_10029E728);
          v237 = v25;
          isa = sub_100216754();
          v124 = sub_100216C94();

          if (!os_log_type_enabled(isa, v124))
          {
            goto LABEL_61;
          }

          v125 = swift_slowAlloc();
          v345 = swift_slowAlloc();
          *v125 = 136446466;
          v238 = sub_1001E6BF0();
          v240 = sub_100005FB0(v238, v239, &v345);

          *(v125 + 4) = v240;
          *(v125 + 12) = 2082;
          v241 = [v237 machineID];
          if (v241)
          {
            v242 = v241;
            v243 = sub_100216974();
            v245 = v244;
          }

          else
          {
            v243 = 0;
            v245 = 0;
          }

          v343 = v243;
          v344 = v245;
          sub_10001148C(&qword_10029D698, &unk_100226590);
          v284 = sub_100216994();
          v286 = sub_100005FB0(v284, v285, &v345);

          *(v125 + 14) = v286;
          v279 = "Allowed-but-unseen machine ID isn't on full list, last modified %{public}s, ignoring: %{public}s";
        }

        goto LABEL_206;
      }

      v202 = a13;
      v335 = v15;
      if (v121)
      {
        if (qword_100297540 != -1)
        {
          swift_once();
        }

        v203 = sub_100216774();
        sub_100002648(v203, qword_10029E728);
        v204 = v25;
        v205 = sub_100216754();
        v206 = sub_100216C94();

        if (os_log_type_enabled(v205, v206))
        {
          v334 = a13;
          v207 = swift_slowAlloc();
          v345 = swift_slowAlloc();
          *v207 = 136446466;
          v208 = sub_1001E6BF0();
          v210 = sub_100005FB0(v208, v209, &v345);

          *(v207 + 4) = v210;
          *(v207 + 12) = 2082;
          v211 = [v204 machineID];
          if (v211)
          {
            v212 = v211;
            v213 = sub_100216974();
            v215 = v214;
          }

          else
          {
            v213 = 0;
            v215 = 0;
          }

          v343 = v213;
          v344 = v215;
          sub_10001148C(&qword_10029D698, &unk_100226590);
          v280 = sub_100216994();
          v282 = sub_100005FB0(v280, v281, &v345);

          *(v207 + 14) = v282;
          v283 = "Seen on full list machine ID isn't on full list, last modified %{public}s, distrusting: %{public}s";
LABEL_192:
          _os_log_impl(&_mh_execute_header, v205, v206, v283, v207, 0x16u);
          swift_arrayDestroy();

          v202 = v334;
          goto LABEL_193;
        }
      }

      else
      {
        if (qword_100297540 != -1)
        {
          swift_once();
        }

        v246 = sub_100216774();
        sub_100002648(v246, qword_10029E728);
        v247 = v25;
        v205 = sub_100216754();
        v206 = sub_100216C94();

        if (os_log_type_enabled(v205, v206))
        {
          v334 = a13;
          v207 = swift_slowAlloc();
          v345 = swift_slowAlloc();
          *v207 = 136446466;
          v248 = sub_1001E6BF0();
          v250 = sub_100005FB0(v248, v249, &v345);

          *(v207 + 4) = v250;
          *(v207 + 12) = 2082;
          v251 = [v247 machineID];
          if (v251)
          {
            v252 = v251;
            v253 = sub_100216974();
            v255 = v254;
          }

          else
          {
            v253 = 0;
            v255 = 0;
          }

          v343 = v253;
          v344 = v255;
          sub_10001148C(&qword_10029D698, &unk_100226590);
          v287 = sub_100216994();
          v289 = sub_100005FB0(v287, v288, &v345);

          *(v207 + 14) = v289;
          v283 = "Allowed-but-unseen machine ID isn't on full list, last modified %{public}s, distrusting: %{public}s";
          goto LABEL_192;
        }
      }

LABEL_193:
      [v25 setStatus:2];
      v290 = v341;
      sub_100216374();
      v291 = sub_1002162F4().super.isa;
      (*(v339 + 8))(v290, v342);
      [v25 setModified:v291];

      *v340 = 1;
      if (*v338 != 1)
      {
        goto LABEL_202;
      }

      v292 = v337[1];
      if (!v292)
      {
        goto LABEL_202;
      }

      v293 = *v337;
      v294 = v337[1];

      v295 = [v25 machineID];
      if (!v295)
      {

        *v202 = 1;
        return;
      }

      v296 = v295;
      v297 = sub_100216974();
      v299 = v298;

      if (v293 == v297 && v292 == v299)
      {
      }

      else
      {
        v300 = sub_1002171A4();

        if ((v300 & 1) == 0)
        {
LABEL_202:
          *v202 = 1;
          return;
        }
      }

      *(v336 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDGhosted) = 1;
      goto LABEL_202;
    }

    if ([v25 status] == 1)
    {
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v154 = sub_100216774();
      sub_100002648(v154, qword_10029E728);
      v155 = v25;
      v156 = sub_100216754();
      v157 = sub_100216C94();

      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v345 = swift_slowAlloc();
        *v158 = 136446466;
        v159 = sub_1001E6BF0();
        v161 = sub_100005FB0(v159, v160, &v345);

        *(v158 + 4) = v161;
        *(v158 + 12) = 2082;
        v162 = [v155 machineID];
        if (v162)
        {
          v163 = v162;
          v164 = sub_100216974();
          v166 = v165;
        }

        else
        {
          v164 = 0;
          v166 = 0;
        }

        v343 = v164;
        v344 = v166;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v256 = sub_100216994();
        v258 = sub_100005FB0(v256, v257, &v345);

        *(v158 + 14) = v258;
        _os_log_impl(&_mh_execute_header, v156, v157, "MachineID was allowed but no longer on the TDL, last modified %{public}s, tagging as ghosted fromt TDL: %{public}s", v158, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v259 = v339;
      [v155 setStatus:5];
      v260 = v341;
      sub_100216374();
      v261 = sub_1002162F4().super.isa;
      (*(v259 + 8))(v260, v342);
      [v155 setModified:v261];

      goto LABEL_121;
    }

    if ([v25 status])
    {
      return;
    }

    if (sub_1001E6A4C())
    {
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v216 = sub_100216774();
      sub_100002648(v216, qword_10029E728);
      v217 = v25;
      isa = sub_100216754();
      v124 = sub_100216C94();

      if (!os_log_type_enabled(isa, v124))
      {
        goto LABEL_61;
      }

      v125 = swift_slowAlloc();
      v345 = swift_slowAlloc();
      *v125 = 136446466;
      v218 = sub_1001E6BF0();
      v220 = sub_100005FB0(v218, v219, &v345);

      *(v125 + 4) = v220;
      *(v125 + 12) = 2082;
      v221 = [v217 machineID];
      if (v221)
      {
        v222 = v221;
        v223 = sub_100216974();
        v225 = v224;
      }

      else
      {
        v223 = 0;
        v225 = 0;
      }

      v343 = v223;
      v344 = v225;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v301 = sub_100216994();
      v303 = sub_100005FB0(v301, v302, &v345);

      *(v125 + 14) = v303;
      v279 = "Unknown machine ID last modified %{public}s; leaving unknown: %{public}s";
LABEL_206:
      _os_log_impl(&_mh_execute_header, isa, v124, v279, v125, 0x16u);
      swift_arrayDestroy();
LABEL_13:

LABEL_61:

      return;
    }

    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v262 = sub_100216774();
    sub_100002648(v262, qword_10029E728);
    v263 = v25;
    v264 = sub_100216754();
    v265 = sub_100216C94();

    if (os_log_type_enabled(v264, v265))
    {
      v335 = v15;
      v266 = swift_slowAlloc();
      v345 = swift_slowAlloc();
      *v266 = 136446466;
      v267 = sub_1001E6BF0();
      v269 = sub_100005FB0(v267, v268, &v345);

      *(v266 + 4) = v269;
      *(v266 + 12) = 2082;
      v270 = [v263 machineID];
      if (v270)
      {
        v271 = v270;
        v272 = sub_100216974();
        v274 = v273;

        v26 = &stru_100292000;
      }

      else
      {
        v272 = 0;
        v274 = 0;
      }

      v343 = v272;
      v344 = v274;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v304 = sub_100216994();
      v306 = sub_100005FB0(v304, v305, &v345);

      *(v266 + 14) = v306;
      _os_log_impl(&_mh_execute_header, v264, v265, "Unknown machine ID last modified %{public}s; distrusting: %{public}s", v266, 0x16u);
      swift_arrayDestroy();

      v107 = v336;
    }

    else
    {
    }

    [v263 setStatus:2];
    v307 = v341;
    sub_100216374();
    v308 = sub_1002162F4().super.isa;
    (*(v339 + 8))(v307, v342);
    [v263 setModified:v308];

    *v340 = 1;
    if (*v338 == 1)
    {
      v309 = v337[1];
      if (v309)
      {
        v310 = *v337;
        v311 = v337[1];

        v312 = [v263 v26[213].name];
        if (!v312)
        {

          goto LABEL_218;
        }

        v313 = v26;
        v314 = v312;
        v315 = sub_100216974();
        v317 = v316;

        if (v310 == v315 && v309 == v317)
        {

          v26 = v313;
          v107 = v336;
        }

        else
        {
          v318 = sub_1002171A4();

          v26 = v313;
          v107 = v336;
          if ((v318 & 1) == 0)
          {
            goto LABEL_218;
          }
        }

        *(v107 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUnknown) = 1;
      }
    }

LABEL_218:
    v319 = [v263 v26[213].name];
    if (v319)
    {
      v320 = v319;
      v321 = *(v107 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
      v343 = 0;
      v322 = v321;
      v323 = [v322 doAnyTrustedPeersMatchMachineID:v320 error:&v343];

      v324 = v343;
      if (v343)
      {
        swift_willThrow();
        v325 = v324;
        isa = sub_100216754();
        v326 = sub_100216C74();

        if (os_log_type_enabled(isa, v326))
        {
          v327 = swift_slowAlloc();
          v328 = swift_slowAlloc();
          *v327 = 138543362;
          v329 = v325;
          v330 = _swift_stdlib_bridgeErrorToNSError();
          *(v327 + 4) = v330;
          *v328 = v330;
          _os_log_impl(&_mh_execute_header, isa, v326, "error calling doAnyTrustedPeersMatchMachineID: %{public}@", v327, 0xCu);
          sub_1000114D4(v328, &qword_10029D580, &unk_10021CCC0);

          return;
        }

        goto LABEL_61;
      }

      if (v323)
      {
        *a14 = 1;
      }
    }

    return;
  }

  if (*v69)
  {
    *v69 = 1;
  }

  else
  {
    v115 = sub_1001F1538(v25, v340, "Evicted machine ID last modified %{public}s; distrusting: %{public}s", "Evicted machine ID last modified %{public}s; leaving evicted: %{public}s");
    *v69 = v115;
    if (!v115)
    {
      return;
    }
  }

  if (*v338 == 1)
  {
    v116 = v337[1];
    if (v116)
    {
      v117 = *v337;
      v118 = v337[1];

      v119 = [v25 machineID];
      goto LABEL_106;
    }
  }
}

uint64_t sub_1001EDA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029E728);
  swift_errorRetain();
  v8 = sub_100216754();
  v9 = sub_100216C54();

  if (os_log_type_enabled(v8, v9))
  {
    v15 = a4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v17._countAndFlagsBits = sub_100216994();
      sub_100216A14(v17);

      v12 = 0x203A726F727265;
    }

    else
    {
      v12 = 0x73736563637573;
    }

    v13 = sub_100005FB0(v12, 0xE700000000000000, &v16);

    *(v10 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "fetchAllowedMachineIDs complete: %{public}s", v10, 0xCu);
    sub_100006128(v11);

    a4 = v15;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000001ELL, 0x800000010023E6F0);
  return a4(a1, a2);
}

uint64_t sub_1001EDC5C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) machines];
  if (v5)
  {
    v6 = v5;
    v50 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();
  }

  v8 = _swiftEmptySetSingleton;
  v46[1] = a3;
  v47 = a2;
  if ((_swiftEmptySetSingleton & 0xC000000000000001) == 0)
  {
    v27 = _swiftEmptySetSingleton[32];
    v10 = ((1 << v27) + 63) >> 6;
    v17 = 8 * v10;
    if ((v27 & 0x3Fu) <= 0xD)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

  v9 = _swiftEmptySetSingleton;
  v50 = _swiftEmptySetSingleton;
  v10 = sub_100216E84();
  v11 = sub_100216F14();
  if (!v11)
  {
LABEL_22:

LABEL_39:
    a2 = v47;
    goto LABEL_40;
  }

  v12 = v11;
  type metadata accessor for MachineMO();
  v13 = v12;
  a2 = 63;
  while (1)
  {
    v48 = v13;
    swift_dynamicCast();
    v14 = v49;
    if ([v49 status] == 1)
    {
      break;
    }

LABEL_7:
    v13 = sub_100216F14();
    if (!v13)
    {
      goto LABEL_22;
    }
  }

  v15 = v9[2];
  if (v9[3] <= v15)
  {
    sub_100188B58(v15 + 1);
  }

  v9 = v50;
  v8 = v49;
  v16 = sub_100216DB4(v50[5]);
  v18 = (v50 + 7);
  v19 = -1 << *(v50 + 32);
  v20 = v16 & ~v19;
  v21 = v20 >> 6;
  if (((-1 << v20) & ~v50[(v20 >> 6) + 7]) != 0)
  {
    v22 = __clz(__rbit64((-1 << v20) & ~v50[(v20 >> 6) + 7])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *&v18[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
    *(v9[6] + 8 * v22) = v14;
    ++v9[2];
    goto LABEL_7;
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *&v18[8 * v21];
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_42:
    v44 = v17;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v17 = v44;
LABEL_24:
    v46[0] = v46;
    __chkstk_darwin(v7, v17);
    v29 = v46 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v28);
    v30 = 0;
    v31 = 0;
    v32 = 1 << v8[32];
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v8 + 7);
    v35 = (v32 + 63) >> 6;
    while (v34)
    {
      v36 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
LABEL_34:
      a2 = v36 | (v31 << 6);
      if ([*(*(v8 + 6) + 8 * a2) status] == 1)
      {
        *&v29[(a2 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a2;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_38:
          v9 = sub_10018AD28(v29, v10, v30, v8);
          goto LABEL_39;
        }
      }
    }

    v37 = v31;
    while (1)
    {
      v31 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v31 >= v35)
      {
        goto LABEL_38;
      }

      v38 = *&v8[8 * v31 + 56];
      ++v37;
      if (v38)
      {
        v36 = __clz(__rbit64(v38));
        v34 = (v38 - 1) & v38;
        goto LABEL_34;
      }
    }
  }

  v45 = swift_slowAlloc();
  v9 = sub_1001EF198(v45, v10, v8, sub_1001EE12C, 0);

LABEL_40:
  sub_1001E3B80(v9);
  v41 = v40;

  v42 = sub_10019C848(v41);

  (a2)(v42, 0);
}

void sub_1001EE168(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v7 = sub_100216964();
  v24 = 0;
  v8 = [v6 peerWithID:v7 error:&v24];

  if (v24)
  {
    v9 = v24;

    swift_willThrow();
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v10 = sub_100216774();
    sub_100002648(v10, qword_10029E728);

    v11 = v9;
    v12 = sub_100216754();
    v13 = sub_100216C74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v14 = 136446466;
      *(v14 + 4) = sub_100005FB0(v5, v4, &v24);
      *(v14 + 12) = 2114;
      v17 = v11;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      *v15 = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error getting peer with machineID %{public}s: %{public}@", v14, 0x16u);
      sub_1000114D4(v15, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v16);
    }

    else
    {
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else if (v8)
  {
    v19 = [v8 permanentInfo];

    v20 = [v19 machineID];
    v21 = sub_100216974();
    v23 = v22;

    *a3 = v21;
    a3[1] = v23;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_1001EE44C(id *a1)
{
  v1 = *a1;
  if ([*a1 status] || (sub_1001E6A4C()) && (objc_msgSend(v1, "status") != 3 || (sub_1001E6A4C()) && (objc_msgSend(v1, "status") != 4 || (sub_1001E6A4C()))
  {
    if ([v1 status] == 5)
    {
      v2 = sub_1001E6A4C() ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

char *sub_1001EE510(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100002BF0(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100002BF0(v6, v5);
    *v3 = xmmword_10021D470;
    sub_100002BF0(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_100216034() && __OFSUB__(v6, sub_100216064()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_100216074();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_100216014();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1001EE8B4(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_100002BF0(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_10021D470;
    sub_100002BF0(0, 0xC000000000000000);
    sub_1002161A4();
    result = sub_1001EE8B4(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

char *sub_1001EE8B4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_100216034();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_100216064();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_100216054();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1001EE968(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_1002168A4();
      sub_1001F3728(&qword_10029E758, &type metadata accessor for SHA256);
      return sub_100216864();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1001EEB48(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1001EEB48(v4, v5);
  }

  sub_1002168A4();
  sub_1001F3728(&qword_10029E758, &type metadata accessor for SHA256);
  return sub_100216864();
}

uint64_t sub_1001EEB48(uint64_t a1, uint64_t a2)
{
  result = sub_100216034();
  if (!result || (result = sub_100216064(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_100216054();
      sub_1002168A4();
      sub_1001F3728(&qword_10029E758, &type metadata accessor for SHA256);
      return sub_100216864();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1001EEC28@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_100017F84(a1, &a1[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_100216074();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_100216024();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1002161D4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1001EECF0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1001EEDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1001EEF28(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1001F19F0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_1001EEFC4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1001F2A24(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1001EF080(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a7;
    v10 = a6;
    v12 = a4;
    v13 = a3;
    v15 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
      v9 = a7;
      v10 = a6;
      v12 = a4;
      v13 = a3;
    }

    v19 = sub_1001F2578(v15, a2, v13, v12, a5, v10, v9);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v19;
  }

  return result;
}

void *sub_1001EF198(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_1001EEDB4(result, a2, a3, a4, a5, sub_10018AD28);
    v11 = v10;

    return v11;
  }

  return result;
}

Swift::Int sub_1001EF23C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001EFEE8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1001EF2A8(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001EF2A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100217164(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_100216B54();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1001EF470(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1001EF3A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001EF3A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1002171A4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001EF470(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1001EFD00(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1001EFA4C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1002171A4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1002171A4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100182E9C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100182E9C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
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
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1001EFA4C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001EFD00(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1001EFC74(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1002171A4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1001EFA4C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1002171A4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1002171A4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1001EFC74(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001EFD00(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1001EFD14(uint64_t a1, unint64_t a2)
{

  v4 = sub_100216A34();
  v6 = a1;
  if (v5)
  {
    v7 = v4;
    v8 = v5;
    v6 = a1;
    while ((v6 ^ a2) >= 0x4000)
    {
      v11 = sub_100216DF4();
      v13 = v12;
      v6 = sub_100216DE4();
      if (v7 == v11 && v8 == v13)
      {
      }

      else
      {
        v9 = sub_1002171A4();

        if ((v9 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v7 = sub_100216A34();
      v8 = v10;
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    return 1;
  }

  else
  {
LABEL_9:

    if ((v6 ^ a2) >= 0x4000)
    {
      sub_100216DF4();
      sub_100216DE4();
LABEL_13:

      return 0;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_1001EFEFC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100216A84();
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
    v5 = sub_100216A64();
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

uint64_t sub_1001EFF78@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_100216FE4();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001EFFC8(uint64_t a1)
{
  v9 = sub_10001148C(&qword_10029DB20, &qword_1002267C0);
  v10 = sub_1001AC36C(&qword_10029E778, &qword_10029DB20, &qword_1002267C0);
  v8[0] = a1;
  v2 = sub_100006484(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100017EF0(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100006128(v8);
  return v5;
}

uint64_t sub_1001F00A4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_10001391C(result);
    }

    else
    {
      v2 = sub_100216074();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_100216044();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1002161D4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1001F0144(uint64_t a1, uint64_t *a2, uint64_t a3, _BYTE *a4, uint64_t a5, _BYTE *a6, uint64_t *a7, _BYTE *a8)
{
  v75 = a8;
  v64 = a7;
  v73 = a5;
  v74 = a6;
  v72 = a4;
  v80 = a3;
  v78 = a2;
  v71 = sub_100216384();
  v9 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71, v10);
  v70 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 56);
  v69 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc;
  v79 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v62 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUserInitiated;
  v17 = (v14 + 63) >> 6;
  v68 = (v11 + 8);

  v19 = 0;
  *&v20 = 136446210;
  v63 = v20;
  v67 = a1;
  v76 = v17;
  v77 = a1 + 56;
  while (v16)
  {
LABEL_12:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = (*(a1 + 48) + ((v19 << 10) | (16 * v22)));
    v25 = *v23;
    v24 = v23[1];
    v26 = *v78;
    if (!*(*v78 + 16))
    {

LABEL_23:
      type metadata accessor for MachineMO();
      v34 = v80;
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v80 + v69)];
      v36 = sub_100216964();
      [v35 setMachineID:v36];

      [v35 setContainer:*(v34 + v79)];
      [v35 setSeenOnFullList:1];
      v37 = v70;
      sub_100216374();
      isa = sub_1002162F4().super.isa;
      (*v68)(v37, v71);
      [v35 setModified:isa];

      [v35 setStatus:2];
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v39 = sub_100216774();
      sub_100002648(v39, qword_10029E728);
      v40 = v35;
      v41 = sub_100216754();
      v42 = sub_100216C94();

      if (os_log_type_enabled(v41, v42))
      {
        v66 = v42;
        v43 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v82 = v65;
        *v43 = v63;
        v44 = [v40 machineID];
        if (v44)
        {
          v45 = v44;
          v46 = sub_100216974();
          v48 = v47;
        }

        else
        {
          v46 = 0;
          v48 = 0;
        }

        v81[0] = v46;
        v81[1] = v48;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v49 = sub_100216994();
        v51 = sub_100005FB0(v49, v50, &v82);

        *(v43 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v41, v66, "Newly distrusted machine ID: %{public}s", v43, 0xCu);
        sub_100006128(v65);

        a1 = v67;
      }

      else
      {
      }

      *v72 = 1;
      [*(v80 + v79) addMachinesObject:v40];
      v52 = v40;
      sub_10018B5EC(v81, v52);

      if (*v74 == 1)
      {
        v53 = v64[1];
        if (v53)
        {
          v54 = *v64;
          v55 = v64[1];

          v56 = [v52 machineID];
          if (v56)
          {
            v57 = v56;
            v58 = sub_100216974();
            v60 = v59;

            if (v54 == v58 && v53 == v60)
            {

              a1 = v67;
              goto LABEL_41;
            }

            v61 = sub_1002171A4();

            a1 = v67;
            if (v61)
            {
LABEL_41:
              *(v80 + v62) = 1;
            }

LABEL_39:
            *v75 = 1;
            goto LABEL_6;
          }
        }
      }

      goto LABEL_39;
    }

    v27 = *(v26 + 40);
    sub_100217264();

    sub_1002169C4();
    v28 = sub_100217284();
    v29 = -1 << *(v26 + 32);
    v30 = v28 & ~v29;
    if (((*(v26 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
LABEL_21:

      goto LABEL_23;
    }

    v31 = ~v29;
    while (1)
    {
      v32 = (*(v26 + 48) + 16 * v30);
      v33 = *v32 == v25 && v32[1] == v24;
      if (v33 || (sub_1002171A4() & 1) != 0)
      {
        break;
      }

      v30 = (v30 + 1) & v31;
      if (((*(v26 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_6:

    v17 = v76;
    v13 = v77;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
    }

    v16 = *(v13 + 8 * v21);
    ++v19;
    if (v16)
    {
      v19 = v21;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1001F07C8(uint64_t a1, uint64_t *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v55 = a7;
  v62 = a4;
  v63 = a5;
  v69 = a3;
  v66 = a2;
  v61 = sub_100216384();
  v9 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61, v10);
  v60 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 56);
  v59 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc;
  v67 = a1;
  v68 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v17 = (v14 + 63) >> 6;
  v58 = (v11 + 8);

  v18 = 0;
  *&v19 = 136446210;
  v53 = v19;
  v64 = a1 + 56;
  v65 = v17;
  v54 = a6;
  if (!v16)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = (*(v67 + 48) + ((v18 << 10) | (16 * v22)));
      v25 = *v23;
      v24 = v23[1];
      v26 = *v66;
      if (!*(*v66 + 16))
      {

        goto LABEL_23;
      }

      v27 = *(v26 + 40);
      sub_100217264();

      sub_1002169C4();
      v28 = sub_100217284();
      v29 = -1 << *(v26 + 32);
      v30 = v28 & ~v29;
      if ((*(v26 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        break;
      }

LABEL_21:

      v13 = v64;
LABEL_23:
      type metadata accessor for MachineMO();
      v34 = v69;
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v69 + v59)];
      v36 = sub_100216964();
      [v35 setMachineID:v36];

      [v35 setContainer:*(v34 + v68)];
      [v35 setSeenOnFullList:1];
      v37 = v60;
      sub_100216374();
      isa = sub_1002162F4().super.isa;
      (*v58)(v37, v61);
      [v35 setModified:isa];

      [v35 setStatus:a6];
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v39 = sub_100216774();
      sub_100002648(v39, qword_10029E728);
      v40 = v35;
      v41 = sub_100216754();
      v42 = sub_100216C94();

      if (os_log_type_enabled(v41, v42))
      {
        v57 = v42;
        v43 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v71 = v56;
        *v43 = v53;
        v44 = [v40 machineID];
        if (v44)
        {
          v45 = v44;
          v46 = sub_100216974();
          v48 = v47;
        }

        else
        {
          v46 = 0;
          v48 = 0;
        }

        v70[0] = v46;
        v70[1] = v48;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v49 = sub_100216994();
        v51 = sub_100005FB0(v49, v50, &v71);

        *(v43 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v41, v57, v55, v43, 0xCu);
        sub_100006128(v56);

        a6 = v54;
        v13 = v64;
      }

      else
      {
      }

      *v62 = 1;
      [*(v69 + v68) addMachinesObject:v40];
      sub_10018B5EC(v70, v40);
      v20 = v70[0];

      v17 = v65;
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    v31 = ~v29;
    while (1)
    {
      v32 = (*(v26 + 48) + 16 * v30);
      v33 = *v32 == v25 && v32[1] == v24;
      if (v33 || (sub_1002171A4() & 1) != 0)
      {
        break;
      }

      v30 = (v30 + 1) & v31;
      if (((*(v26 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v13 = v64;
    v17 = v65;
  }

  while (v16);
LABEL_8:
  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v17)
    {

      return;
    }

    v16 = *(v13 + 8 * v21);
    ++v18;
    if (v16)
    {
      v18 = v21;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1001F0D4C(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, _BYTE *a8)
{
  v85 = a7;
  v86 = a8;
  v89 = a2;
  v84 = sub_100216384();
  v13 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84, v14);
  v83 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a1 + 56);
  v82 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc;
  v81 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v21 = (v18 + 63) >> 6;
  v98 = a3;
  v95 = a4;
  v96 = a3 + 7;
  v92 = a5 + 56;
  v93 = a4 + 7;
  v90 = a6 + 7;
  v80 = (v15 + 8);
  v91 = a1;

  v22 = 0;
  *&v23 = 136446210;
  v79 = v23;
  v94 = a6;
  v87 = v21;
  v88 = a5;
  if (v20)
  {
    while (1)
    {
LABEL_11:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = (*(v91 + 48) + ((v22 << 10) | (16 * v25)));
      v27 = *v26;
      v28 = v26[1];
      v29 = *v89;
      if (*(*v89 + 16))
      {
        v30 = *(v29 + 40);
        sub_100217264();

        sub_1002169C4();
        v31 = sub_100217284();
        v32 = -1 << *(v29 + 32);
        v33 = v31 & ~v32;
        if ((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
        {
          v34 = ~v32;
          while (1)
          {
            v35 = (*(v29 + 48) + 16 * v33);
            v36 = *v35 == v27 && v35[1] == v28;
            if (v36 || (sub_1002171A4() & 1) != 0)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_67;
        }

LABEL_20:

        v21 = v87;
        a5 = v88;
      }

      else
      {
      }

      if (v98[2])
      {
        v37 = v98;
        v38 = v98[5];
        sub_100217264();
        sub_1002169C4();
        v39 = sub_100217284();
        v40 = -1 << *(v37 + 32);
        v41 = v39 & ~v40;
        if ((*(v96 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
        {
          v42 = ~v40;
          do
          {
            v43 = (v98[6] + 16 * v41);
            v44 = *v43 == v27 && v43[1] == v28;
            if (v44 || (sub_1002171A4() & 1) != 0)
            {
              goto LABEL_6;
            }

            v41 = (v41 + 1) & v42;
          }

          while (((*(v96 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0);
        }
      }

      if (v95)
      {
        if (v95[2])
        {
          v45 = v95;
          v46 = v95[5];
          sub_100217264();
          sub_1002169C4();
          v47 = sub_100217284();
          v48 = -1 << *(v45 + 32);
          v49 = v47 & ~v48;
          if ((*(v93 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
          {
            v50 = ~v48;
            do
            {
              v51 = (v95[6] + 16 * v49);
              v52 = *v51 == v27 && v51[1] == v28;
              if (v52 || (sub_1002171A4() & 1) != 0)
              {
                goto LABEL_6;
              }

              v49 = (v49 + 1) & v50;
            }

            while (((*(v93 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) != 0);
          }
        }
      }

      if (a5)
      {
        if (*(a5 + 16))
        {
          v53 = *(a5 + 40);
          sub_100217264();
          sub_1002169C4();
          v54 = sub_100217284();
          v55 = -1 << *(a5 + 32);
          v56 = v54 & ~v55;
          if ((*(v92 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
          {
            break;
          }
        }
      }

LABEL_51:
      if (v94 && v94[2] && (v60 = v94, v61 = v94[5], sub_100217264(), sub_1002169C4(), v62 = sub_100217284(), v63 = -1 << *(v60 + 32), v64 = v62 & ~v63, ((*(v90 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) != 0))
      {
        v65 = ~v63;
        while (1)
        {
          v66 = (v94[6] + 16 * v64);
          v67 = *v66 == v27 && v66[1] == v28;
          if (v67 || (sub_1002171A4() & 1) != 0)
          {
            break;
          }

          v64 = (v64 + 1) & v65;
          if (((*(v90 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
          {
            goto LABEL_61;
          }
        }

LABEL_6:

        if (!v20)
        {
          goto LABEL_7;
        }
      }

      else
      {
LABEL_61:
        if (qword_100297540 != -1)
        {
          swift_once();
        }

        v68 = sub_100216774();
        sub_100002648(v68, qword_10029E728);

        v69 = sub_100216754();
        v70 = sub_100216C94();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v97 = v72;
          *v71 = v79;
          *(v71 + 4) = sub_100005FB0(v27, v28, &v97);
          _os_log_impl(&_mh_execute_header, v69, v70, "Peer machineID is unknown, beginning grace period: %{public}s", v71, 0xCu);
          sub_100006128(v72);
        }

        type metadata accessor for MachineMO();
        v73 = v85;
        v74 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v85 + v82)];
        v75 = sub_100216964();
        [v74 setMachineID:v75];

        v76 = v81;
        [v74 setContainer:*(v73 + v81)];
        [v74 setSeenOnFullList:0];
        v77 = v83;
        sub_100216374();
        isa = sub_1002162F4().super.isa;
        (*v80)(v77, v84);
        [v74 setModified:isa];

        [v74 setStatus:0];
        *v86 = 1;
        [*(v73 + v76) addMachinesObject:v74];

LABEL_67:
        v21 = v87;
        a5 = v88;
        if (!v20)
        {
          goto LABEL_7;
        }
      }
    }

    v57 = ~v55;
    while (1)
    {
      v58 = (*(a5 + 48) + 16 * v56);
      v59 = *v58 == v27 && v58[1] == v28;
      if (v59 || (sub_1002171A4() & 1) != 0)
      {
        goto LABEL_6;
      }

      v56 = (v56 + 1) & v57;
      if (((*(v92 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_7:
  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v24);
    ++v22;
    if (v20)
    {
      v22 = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
}

BOOL sub_1001F1538(void *a1, _BYTE *a2, const char *a3, const char *a4)
{
  v8 = sub_100216384();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v14) = sub_1001E6A4C();
  if (v14)
  {
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v15 = sub_100216774();
    sub_100002648(v15, qword_10029E728);
    v16 = a1;
    v17 = sub_100216754();
    v18 = sub_100216C54();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v19 = 136446466;
      v20 = sub_1001E6BF0();
      v22 = sub_100005FB0(v20, v21, &v55);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      v23 = [v16 machineID];
      if (v23)
      {
        v24 = v23;
        v25 = sub_100216974();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v53 = v25;
      v54 = v27;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v40 = sub_100216994();
      v42 = sub_100005FB0(v40, v41, &v55);

      *(v19 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v17, v18, a4, v19, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v52 = a3;
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v28 = sub_100216774();
    sub_100002648(v28, qword_10029E728);
    v29 = a1;
    v30 = sub_100216754();
    v31 = sub_100216C94();

    if (os_log_type_enabled(v30, v31))
    {
      v50 = a2;
      v51 = v14;
      v14 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55 = v49;
      *v14 = 136446466;
      v32 = sub_1001E6BF0();
      v34 = sub_100005FB0(v32, v33, &v55);

      *(v14 + 4) = v34;
      *(v14 + 12) = 2082;
      v35 = [v29 machineID];
      if (v35)
      {
        v36 = v35;
        v37 = sub_100216974();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v53 = v37;
      v54 = v39;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v43 = sub_100216994();
      v45 = sub_100005FB0(v43, v44, &v55);

      *(v14 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v30, v31, v52, v14, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v14) = v51;
      a2 = v50;
    }

    else
    {
    }

    [v29 setStatus:2];
    sub_100216374();
    isa = sub_1002162F4().super.isa;
    (*(v9 + 8))(v13, v8);
    [v29 setModified:isa];

    *a2 = 1;
  }

  return (v14 & 1) == 0;
}

uint64_t sub_1001F19F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v29 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v15 = v12 | (v5 << 6);
    if (!*(a4 + 16))
    {
      goto LABEL_23;
    }

    v32 = v9;
    v30 = v12 | (v5 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(a4 + 40);
    sub_100217264();

    sub_1002169C4();
    v20 = sub_100217284();
    v21 = -1 << *(a4 + 32);
    v22 = v20 & ~v21;
    if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = (*(a4 + 48) + 16 * v22);
        v25 = *v24 == v18 && v24[1] == v17;
        if (v25 || (sub_1002171A4() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v9 = v32;
    }

    else
    {
LABEL_22:

      v9 = v32;
      v15 = v30;
LABEL_23:
      *(v28 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_26:

        return sub_10018AB04(v28, a2, v29, a3);
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001F1BFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (2)
  {
    v35[0] = v3;
    v35[1] = v35;
    v36 = v8;
    __chkstk_darwin(v10, v11);
    v37 = v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v9);
    v38 = 0;
    v39 = v5;
    v12 = 0;
    v8 = v5 + 56;
    v13 = 1 << *(v5 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v5 + 56);
    v3 = (v13 + 63) >> 6;
    v16 = a2 + 56;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = v17 | (v12 << 6);
      if (!*(a2 + 16))
      {
        goto LABEL_24;
      }

      v40 = v17 | (v12 << 6);
      v41 = v15;
      v21 = (*(v5 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(a2 + 40);
      sub_100217264();

      sub_1002169C4();
      v25 = sub_100217284();
      v26 = -1 << *(a2 + 32);
      v9 = v25 & ~v26;
      if ((*(v16 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v27 = ~v26;
        while (1)
        {
          v28 = (*(a2 + 48) + 16 * v9);
          v29 = *v28 == v23 && v28[1] == v22;
          if (v29 || (sub_1002171A4() & 1) != 0)
          {
            break;
          }

          v9 = (v9 + 1) & v27;
          if (((*(v16 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v5 = v39;
        v15 = v41;
      }

      else
      {
LABEL_23:

        v5 = v39;
        v20 = v40;
        v15 = v41;
LABEL_24:
        *&v37[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_27:
          v31 = sub_10018AB04(v37, v36, v38, v5);

          return v31;
        }
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v3)
      {
        goto LABEL_27;
      }

      v19 = *(v8 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v33 = swift_slowAlloc();

  v34 = sub_1001EEF28(v33, v8, v5, a2);

  return v34;
}

id sub_1001F1F48(void *a1, void *a2)
{
  v41 = a2;
  v39 = sub_100216384();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v39, v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v9 = [a1 machines];
  v10 = &_swiftEmptySetSingleton;
  if (v9)
  {
    v11 = v9;
    v43 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();

    if (v43)
    {
      v10 = v43;
    }
  }

  sub_1001E3B80(v10);
  v13 = v12;

  v14 = sub_10019C848(v13);

  v15 = [v42 allowedMachineIDs];
  v16 = &_swiftEmptySetSingleton;
  if (v15)
  {
    v43 = 0;
    v17 = v15;
    sub_100216BA4();

    if (v43)
    {
      v16 = v43;
    }
  }

  v18 = sub_1001F1BFC(v16, v14);
  v38[1] = v2;

  v19 = v18 + 56;
  v20 = 1 << v18[32];
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 7);
  v23 = (v20 + 63) >> 6;
  v24 = (v4 + 8);
  v40 = v18;

  v25 = 0;
  if (v22)
  {
    while (1)
    {
      v26 = v25;
LABEL_15:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = (*(v40 + 6) + ((v26 << 10) | (16 * v27)));
      v30 = *v28;
      v29 = v28[1];
      type metadata accessor for MachineMO();
      v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v32 = [v31 initWithContext:v41];
      v33 = sub_100216964();
      [v32 setMachineID:v33];

      [v32 setSeenOnFullList:1];
      [v32 setStatus:1];
      sub_100216374();
      isa = sub_1002162F4().super.isa;
      (*v24)(v8, v39);
      [v32 setModified:isa];

      [v42 addMachinesObject:v32];

      if (!v22)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
    }

    if (v26 >= v23)
    {
      break;
    }

    v22 = *&v19[8 * v26];
    ++v25;
    if (v22)
    {
      v25 = v26;
      goto LABEL_15;
    }
  }

  v35 = sub_100216B94().super.isa;
  [v42 setAllowedMachineIDs:v35];

  v43 = 0;
  if ([v41 save:&v43])
  {
    return v43;
  }

  v37 = v43;
  sub_100216154();

  return swift_willThrow();
}

uint64_t sub_1001F2390()
{
  v1 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v2 = [*(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) honorIDMSListChanges];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100216974();
    v6 = v5;

    if (v4 == 5457241 && v6 == 0xE300000000000000)
    {

      goto LABEL_20;
    }

    v8 = sub_1002171A4();

    if (v8)
    {
LABEL_20:
      v16 = 1;
      return v16 & 1;
    }
  }

  v9 = [*(v0 + v1) honorIDMSListChanges];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100216974();
  v13 = v12;

  if (v11 == 20302 && v13 == 0xE200000000000000)
  {
    goto LABEL_21;
  }

  v15 = sub_1002171A4();

  v16 = 0;
  if ((v15 & 1) == 0)
  {
LABEL_13:
    v17 = [*(v0 + v1) honorIDMSListChanges];
    if (v17)
    {
      v18 = v17;
      v19 = sub_100216974();
      v21 = v20;

      if (v19 != 0x4E574F4E4B4E55 || v21 != 0xE700000000000000)
      {
        v23 = sub_1002171A4();

        v16 = v23 ^ 1;
        return v16 & 1;
      }

LABEL_21:

      v16 = 0;
      return v16 & 1;
    }

    goto LABEL_20;
  }

  return v16 & 1;
}

uint64_t sub_1001F2560(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F2578(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v23 = result;
  v24 = 0;
  v9 = 0;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = (*(a3 + 48) + 16 * v18);
    if (*v19 != a4 || v19[1] != a5)
    {
      result = sub_1002171A4();
      if ((result & 1) == 0)
      {

        v20 = sub_1001EFD14(a6, a7);

        if (v20)
        {
          *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
          if (__OFADD__(v24++, 1))
          {
            __break(1u);
LABEL_18:

            return sub_10018AB04(v23, a2, v24, a3);
          }
        }
      }
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_18;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001F271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a5;
  v39 = a6;
  v37 = a4;
  v41 = a2;
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;

  v40 = a7;

  if (v12 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v33 = v13;
    v34 = v8;
    v32[1] = v32;
    __chkstk_darwin(v16, v17);
    v35 = v32 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v14);
    v36 = 0;
    v14 = 0;
    v13 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v8 = v19 & *(a1 + 56);
    v20 = (v18 + 63) >> 6;
    while (v8)
    {
      v21 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v24 = v21 | (v14 << 6);
      v25 = (*(a1 + 48) + 16 * v24);
      if ((*v25 != v41 || v25[1] != a3) && (sub_1002171A4() & 1) == 0)
      {

        v26 = sub_1001EFD14(v37, v38);

        if (v26)
        {
          *&v35[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
          if (__OFADD__(v36++, 1))
          {
            __break(1u);
LABEL_19:
            v28 = sub_10018AB04(v35, v33, v36, a1);

            return v28;
          }
        }
      }
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v13 + 8 * v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v8 = (v23 - 1) & v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v30 = swift_slowAlloc();

  v31 = v40;

  v28 = sub_1001EF080(v30, v13, a1, v41, a3, v37, v38, v39, v31);

  return v28;
}

uint64_t sub_1001F2A24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v23 = result;
  v24 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = (*(a3 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1001EFD14(a4, a5);

    if (v20)
    {
      *(v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10018AB04(v23, a2, v24, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_15;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001F2B8C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;

  if (v8 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v29 = v9;
    v30 = v5;
    v28[1] = v28;
    __chkstk_darwin(v11, v12);
    v31 = v28 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v10);
    v32 = 0;
    v10 = 0;
    v5 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v9 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v19 = v16 | (v10 << 6);
      v20 = (*(a1 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];

      v23 = sub_1001EFD14(v33, v34);

      if (v23)
      {
        *&v31[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_10018AB04(v31, v29, v32, a1);

          return v25;
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_16;
      }

      v18 = *(v5 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();

  v25 = sub_1001EEFC4(v27, v9, a1, v33, v34);

  return v25;
}

BOOL sub_1001F2E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_10004C758(a1, a2, a3);
  if (a4)
  {
    v12 = sub_10004C758(a1, a2, a4);
  }

  else
  {
    v12 = 0;
  }

  v13 = (a5 != 0) | v12;
  if (a5 && (v12 & 1) == 0)
  {
    v13 = sub_10004C758(a1, a2, a5);
  }

  if (a6)
  {
    if (v13)
    {
      if ((v11 & 1) == 0)
      {
LABEL_10:
        v14 = 1;
        goto LABEL_19;
      }

LABEL_14:
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v15 = sub_100216774();
      sub_100002648(v15, qword_10029E728);
      v16 = sub_100216754();
      v17 = sub_100216C54();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_25;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Detected ego MID on both allowed section and evicted/unknown removal section of the deleted list, bailing from MID roll evaluation";
      goto LABEL_24;
    }

    v13 = sub_10004C758(a1, a2, a6);
  }

  if (v13)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v14 = v11 ^ 1;
LABEL_19:
  if (sub_1002169D4() < 26)
  {
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v20 = sub_100216774();
    sub_100002648(v20, qword_10029E728);
    v16 = sub_100216754();
    v17 = sub_100216C54();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_25;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Empty prefix, returning";
    goto LABEL_24;
  }

  sub_1002169F4();
  v22 = sub_100216AC4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if ((v14 & 1) == 0)
  {
    if ((v11 & 1) == 0)
    {

      return 0;
    }

    v33 = sub_1001F2B8C(v32, v22, v24, v26);

    v34 = *(v33 + 16);

    if (v34 < 2)
    {
      return 0;
    }

    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v35 = sub_100216774();
    sub_100002648(v35, qword_10029E728);
    v16 = sub_100216754();
    v17 = sub_100216C54();
    if (!os_log_type_enabled(v16, v17))
    {
LABEL_25:

      return 0;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Possible IdMS trust maintenance";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);

    goto LABEL_25;
  }

  v30 = sub_1001F271C(v29, a1, a2, v22, v24, v26, v28);

  v31 = *(v30 + 16);

  return v31 != 0;
}

uint64_t sub_1001F31D8(uint64_t a1)
{
  v2 = sub_1002168A4();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100216894();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v29, v9);
  v26 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v25 = v7;
  v12 = sub_1001830AC(v11, 0);
  v13 = sub_10018FF74(&v30, v12 + 4, v11, a1);

  sub_1001ACCA0();
  if (v13 == v11)
  {
    v7 = v25;
LABEL_5:
    v30 = v12;
    sub_1001EF23C(&v30);
    v25 = sub_10001148C(&qword_10029DB40, &qword_1002267D0);
    sub_1001AC36C(&qword_10029E750, &qword_10029DB40, &qword_1002267D0);
    v14 = sub_100216914();
    v16 = v15;

    v17 = sub_1001E3660(v14, v16);
    v19 = v18;
    sub_1001F3728(&qword_10029E758, &type metadata accessor for SHA256);
    v20 = v28;
    sub_100216884();
    sub_100012558(v17, v19);
    sub_1001EE968(v17, v19);
    sub_100002BF0(v17, v19);
    v21 = v26;
    sub_100216874();
    sub_100002BF0(v17, v19);
    (*(v27 + 8))(v6, v20);
    v30 = sub_1001E4190(v21);
    v22 = sub_100216914();

    (*(v7 + 8))(v21, v29);
    return v22;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1001F3558()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_1002AF8A0;
  v7 = off_1002AF8A0;
  if (!off_1002AF8A0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001F3770;
    v3[3] = &unk_10027F138;
    v3[4] = &v4;
    sub_1001F3770(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"_Bool soft_MetricsOverrideTestsAreEnabled(void)"];
    [v1 handleFailureInFunction:v2 file:@"TrustedPeersHelper-Bridging-Header.h" lineNumber:89 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001F3670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1001F3688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1001EECF0(sub_1001F3708, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1001F36F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1001F3728(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1001F3770(void *a1)
{
  v5[0] = 0;
  if (!qword_1002AF8A8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1001F38F4;
    v5[4] = &unk_10027F170;
    v5[5] = v5;
    v6 = off_100288E40;
    v7 = 0;
    qword_1002AF8A8 = _sl_dlopen();
  }

  v2 = qword_1002AF8A8;
  if (!qword_1002AF8A8)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *KeychainCircleLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"TrustedPeersHelper-Bridging-Header.h" lineNumber:86 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MetricsOverrideTestsAreEnabled");
  *(*(a1[4] + 8) + 24) = result;
  off_1002AF8A0 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1001F38F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002AF8A8 = result;
  return result;
}

char *sub_1001F3968(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = &v4[OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_secret];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_bottleSalt];
  *v11 = a3;
  v11[1] = a4;
  sub_100012558(a1, a2);

  v12 = sub_1001F6234(1u, a1, a2, a3, a4);
  if (v5)
  {

    sub_100002BF0(a1, a2);
    type metadata accessor for EscrowKeys();
    sub_100002BF0(*v10, *(v10 + 1));
    v19 = v11[1];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v64 = v12;
    v70 = v13;
    v14 = sub_1001F693C();
    v15 = [objc_allocWithZone(_SFECKeyPair) initWithSecKey:v14];

    v16 = OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_encryptionKey;
    *&v4[OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_encryptionKey] = v15;
    v17 = sub_1001F6234(0, a1, a2, a3, a4);
    v62 = v18;
    v63 = v16;
    v61 = v17;
    v21 = sub_1001F693C();
    v22 = [objc_allocWithZone(_SFECKeyPair) initWithSecKey:v21];

    v23 = OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_signingKey;
    *&v4[OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_signingKey] = v22;
    v24 = sub_1001F6234(2u, a1, a2, a3, a4);
    v26 = v25;
    v59 = v23;

    v27 = v24;
    v57 = objc_opt_self();
    v28 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(v57, "aes256BitSize")}];
    v29 = objc_allocWithZone(_SFAESKey);
    sub_100012558(v27, v26);
    v60 = v27;
    v30 = v26;
    v31 = sub_100013D6C(v27, v26, v28);
    v55 = v28;
    sub_100002BF0(v60, v26);
    v54 = OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_symmetricKey;
    *&v4[OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_symmetricKey] = v31;
    v32 = [objc_msgSend(*&v4[v59] "publicKey")];
    swift_unknownObjectRelease();
    v33 = sub_100216224();
    v56 = v30;
    v35 = v34;

    v36 = ccsha384_di();
    v68 = sub_10001393C([v57 ccsha384_diSize]);
    v69 = v37;
    v66 = v33;
    v67 = v35;
    sub_100012558(v33, v35);
    sub_100013234(&v68, &v66, v36);
    v38 = v68;
    v39 = v69;
    v40 = sub_100216214(0);
    v58 = v41;
    sub_100002BF0(v33, v35);
    sub_100002BF0(v38, v39);
    sub_100002BF0(v66, v67);
    v42 = [*&v4[v59] keyData];
    v43 = sub_100216224();
    v45 = v44;

    sub_1001F6C68(v43, v45, v40, v58);
    sub_100002BF0(v43, v45);
    v46 = [*&v4[v63] keyData];
    v47 = sub_100216224();
    v49 = v48;

    sub_1001F6F60(v47, v49, v40, v58);
    sub_100002BF0(v47, v49);
    v50 = [*&v4[v54] keyData];
    v51 = sub_100216224();
    v53 = v52;

    sub_1001F725C(v51, v53, v40, v58);
    sub_100002BF0(v51, v53);

    sub_100002BF0(v60, v56);
    sub_100002BF0(v61, v62);
    sub_100002BF0(v64, v70);
    v65.receiver = v4;
    v65.super_class = type metadata accessor for EscrowKeys();
    v4 = objc_msgSendSuper2(&v65, "init");
    sub_100002BF0(a1, a2);
  }

  return v4;
}

unint64_t sub_1001F3F9C(_BYTE *a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      return sub_100017F84(a1, &a1[a2]);
    }

    else
    {
      v5 = sub_100216074();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      sub_100216024();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1002161D4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

id sub_1001F407C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EscrowKeys();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001F4158()
{
  result = qword_10029E7D0;
  if (!qword_10029E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E7D0);
  }

  return result;
}

uint64_t sub_1001F41AC(uint64_t a1)
{
  v2 = sub_1001F4660();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001F41E8(uint64_t a1)
{
  v2 = sub_1001F4660();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_1001F4224(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_100216FD4(23);

      v7 = 0xD000000000000015;
      v9._countAndFlagsBits = a1;
      v9._object = a2;
      sub_100216A14(v9);
      return v7;
    }

    sub_100216FD4(35);

    v4 = 0xD000000000000021;
LABEL_6:
    v7 = v4;
    v8._countAndFlagsBits = sub_100217174();
    sub_100216A14(v8);

    return v7;
  }

  if (a3 == 2)
  {
    sub_100216FD4(23);

    v4 = 0xD000000000000015;
    goto LABEL_6;
  }

  if (a1 | a2)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000015;
  }
}

unint64_t sub_1001F43B0(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = sub_10001900C(_swiftEmptyArrayStorage);
  v7 = sub_1001F4224(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_100216974();
    v13 = v12;
    v32 = &type metadata for String;
    *&v31 = v9;
    *(&v31 + 1) = v10;
    sub_1000125AC(&v31, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100185894(v30, v11, v13, isUniquelyReferenced_nonNull_native);
  }

  if (a3 == 2)
  {
    v20 = sub_100216974();
    v22 = v21;
    v23 = a1;
    v24 = objc_allocWithZone(NSError);
    v25 = sub_100216964();
    v26 = [v24 initWithDomain:v25 code:v23 userInfo:0];

    v32 = sub_1001F61E8();
    *&v31 = v26;
    sub_1000125AC(&v31, v30);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v6;
    sub_100185894(v30, v20, v22, v27);
    goto LABEL_7;
  }

  if (!a3)
  {
    v15 = sub_100216974();
    v17 = v16;
    v18 = [objc_allocWithZone(NSError) initWithDomain:NSOSStatusErrorDomain code:a1 userInfo:0];
    v32 = sub_1001F61E8();
    *&v31 = v18;
    sub_1000125AC(&v31, v30);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v6;
    sub_100185894(v30, v15, v17, v19);
LABEL_7:

    return v29;
  }

  return v6;
}

uint64_t sub_1001F460C()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 5;
    }

    else if (*v0 == 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (*(v0 + 16))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

unint64_t sub_1001F4660()
{
  result = qword_10029E7D8;
  if (!qword_10029E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E7D8);
  }

  return result;
}

uint64_t sub_1001F46B4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4, _DWORD *a5, _BYTE *a6, uint64_t a7, unsigned __int8 a8, uint64_t *a9, uint64_t a10, uint64_t *a11)
{
  v12 = a2;
  v15 = *a1;
  v14 = a1[1];
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v169 = a4;
      v170 = a5;
      v171 = a6;
      sub_100012558(a2, a3);

      sub_100002BF0(v15, v14);
      *&v176 = v15;
      *(&v176 + 1) = v14 & 0x3FFFFFFFFFFFFFFFLL;
      v165 = a1;
      *a1 = xmmword_10021D470;
      sub_100002BF0(0, 0xC000000000000000);
      sub_1002161A4();
      v20 = v176;
      v21 = *(v176 + 16);
      v22 = *(v176 + 24);
      v23 = sub_100216034();
      if (!v23)
      {
        result = sub_100002BF0(v12, a3);
        __break(1u);
        goto LABEL_151;
      }

      v24 = v23;
      v25 = sub_100216064();
      v26 = v21 - v25;
      if (__OFSUB__(v21, v25))
      {
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v27 = __OFSUB__(v22, v21);
      v28 = v22 - v21;
      if (v27)
      {
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v29 = sub_100216054();
      if (v29 >= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      v31 = v24 + v26;
      v32 = a3 >> 62;
      if ((a3 >> 62) > 1)
      {
        if (v32 != 2)
        {
          memset(v175, 0, 14);
          v33 = *v169;
          v34 = v169[1];
          sub_100012558(*v169, v34);
          v160 = a11;
          v35 = v31 + v30;
          v157 = a10;
          v154 = a9;
          v151 = a8;
          v148 = a7;
          v40 = v175;
          v36 = v170;
          v37 = v33;
          v38 = v34;
          v39 = v31;
          goto LABEL_80;
        }

        v167 = v30;
        v76 = *(v12 + 16);
        v77 = *(v12 + 24);
        v78 = sub_100216034();
        if (v78)
        {
          v79 = sub_100216064();
          if (__OFSUB__(v76, v79))
          {
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          v78 += v76 - v79;
        }

        v27 = __OFSUB__(v77, v76);
        v80 = v77 - v76;
        if (v27)
        {
          __break(1u);
LABEL_47:
          v52 = v165;
          if (v164 >> 32 >= v164)
          {
            v81 = sub_100216034();
            if (!v81)
            {
              v55 = 0;
LABEL_107:
              v136 = sub_100216054();
              if (v136 >= (v164 >> 32) - v164)
              {
                v135 = (v164 >> 32) - v164;
              }

              else
              {
                v135 = v136;
              }

              goto LABEL_110;
            }

            v82 = v81;
            v83 = sub_100216064();
            if (!__OFSUB__(v164, v83))
            {
              v55 = v164 - v83 + v82;
              goto LABEL_107;
            }

            goto LABEL_144;
          }

          goto LABEL_135;
        }
      }

      else
      {
        if (!v32)
        {
          v175[0] = v12;
          LOWORD(v175[1]) = a3;
          BYTE2(v175[1]) = BYTE2(a3);
          BYTE3(v175[1]) = BYTE3(a3);
          BYTE4(v175[1]) = BYTE4(a3);
          BYTE5(v175[1]) = BYTE5(a3);
          v33 = *v169;
          v34 = v169[1];
          sub_100012558(*v169, v34);
          v160 = a11;
          v35 = v31 + v30;
          v157 = a10;
          v154 = a9;
          v151 = a8;
          v148 = a7;
          v36 = v170;
          v37 = v33;
          v38 = v34;
          v39 = v31;
          v40 = v175 + BYTE6(a3);
LABEL_80:
          sub_1001F55A4(v37, v38, v36, v39, v35, v175, v40, v171, v148, v151, v154, v157, v160);
          v103 = v33;
LABEL_81:
          sub_100002BF0(v103, v34);
          sub_100002BF0(v12, a3);
          result = sub_100002BF0(v12, a3);
          *a1 = v20;
          a1[1] = *(&v20 + 1) | 0x8000000000000000;
          return result;
        }

        v167 = v30;
        v80 = (v12 >> 32) - v12;
        if (v12 >> 32 < v12)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v78 = sub_100216034();
        if (v78)
        {
          v97 = sub_100216064();
          if (__OFSUB__(v12, v97))
          {
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
          }

          v78 += v12 - v97;
        }
      }

      v98 = sub_100216054();
      if (v98 >= v80)
      {
        v99 = v80;
      }

      else
      {
        v99 = v98;
      }

      v100 = v99 + v78;
      if (v78)
      {
        v101 = v100;
      }

      else
      {
        v101 = 0;
      }

      v102 = *v169;
      v34 = v169[1];
      sub_100012558(*v169, v34);
      sub_1001F55A4(v102, v34, v170, v31, v31 + v167, v78, v101, v171, a7, a8, a9, a10, a11);
      v103 = v102;
      goto LABEL_81;
    }

    v44 = a3 >> 62;
    *(&v176 + 7) = 0;
    *&v176 = 0;
    if ((a3 >> 62) > 1)
    {
      if (v44 != 2)
      {
        memset(v175, 0, 14);
        v45 = *a4;
        v46 = a4[1];
        sub_100012558(*a4, v46);
        sub_1001F55A4(v45, v46, a5, &v176, &v176, v175, v175, a6, a7, a8, a9, a10, a11);
        goto LABEL_66;
      }

      v59 = *(a2 + 16);
      v60 = *(a2 + 24);
      v61 = sub_100216034();
      if (v61)
      {
        v62 = sub_100216064();
        if (__OFSUB__(v59, v62))
        {
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v61 += v59 - v62;
      }

      v27 = __OFSUB__(v60, v59);
      v63 = v60 - v59;
      if (v27)
      {
        goto LABEL_137;
      }

      v64 = sub_100216054();
      if (v64 >= v63)
      {
        v65 = v63;
      }

      else
      {
        v65 = v64;
      }

      v66 = v65 + v61;
      if (v61)
      {
        v67 = v66;
      }

      else
      {
        v67 = 0;
      }

      v68 = *a4;
      v69 = a4[1];
      sub_100012558(*a4, v69);
      v161 = a11;
      v158 = a10;
      v155 = a9;
      v152 = a8;
      v149 = a7;
      v70 = v68;
      v71 = v69;
      v72 = a5;
      v73 = v61;
      v74 = v67;
      v75 = a6;
    }

    else
    {
      if (!v44)
      {
        v175[0] = a2;
        LOWORD(v175[1]) = a3;
        BYTE2(v175[1]) = BYTE2(a3);
        BYTE3(v175[1]) = BYTE3(a3);
        BYTE4(v175[1]) = BYTE4(a3);
        BYTE5(v175[1]) = BYTE5(a3);
        v45 = *a4;
        v46 = a4[1];
        sub_100012558(*a4, v46);
        sub_1001F55A4(v45, v46, a5, &v176, &v176, v175, v175 + BYTE6(a3), a6, a7, a8, a9, a10, a11);
LABEL_66:
        v93 = v45;
        v94 = v46;
        goto LABEL_67;
      }

      v84 = (a2 >> 32) - a2;
      if (a2 >> 32 < a2)
      {
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v87 = sub_100216034();
      if (v87)
      {
        v88 = sub_100216064();
        if (__OFSUB__(v12, v88))
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        v87 += v12 - v88;
      }

      v89 = sub_100216054();
      if (v89 >= v84)
      {
        v90 = (v12 >> 32) - v12;
      }

      else
      {
        v90 = v89;
      }

      v91 = v90 + v87;
      if (v87)
      {
        v92 = v91;
      }

      else
      {
        v92 = 0;
      }

      v68 = *a4;
      v69 = a4[1];
      sub_100012558(*a4, v69);
      v161 = a11;
      v158 = a10;
      v155 = a9;
      v152 = a8;
      v149 = a7;
      v70 = v68;
      v71 = v69;
      v72 = a5;
      v73 = v87;
      v74 = v92;
      v75 = a6;
    }

    sub_1001F55A4(v70, v71, v72, &v176, &v176, v73, v74, v75, v149, v152, v155, v158, v161);
    v93 = v68;
    v94 = v69;
LABEL_67:
    sub_100002BF0(v93, v94);
    return sub_100002BF0(v12, a3);
  }

  v169 = a4;
  v170 = a5;
  v171 = a6;
  if (!v16)
  {
    v165 = a1;
    v167 = a3;
    v164 = a2;
    sub_100012558(a2, a3);
    sub_100002BF0(v15, v14);
    *&v176 = v15;
    WORD4(v176) = v14;
    BYTE10(v176) = BYTE2(v14);
    BYTE11(v176) = BYTE3(v14);
    BYTE12(v176) = BYTE4(v14);
    BYTE13(v176) = BYTE5(v14);
    v12 = &v176 + BYTE6(v14);
    v17 = v167 >> 62;
    BYTE14(v176) = BYTE6(v14);
    if ((v167 >> 62) > 1)
    {
      if (v17 != 2)
      {
        memset(v175, 0, 14);
        v18 = *v169;
        v19 = v169[1];
        sub_100012558(*v169, v19);
        sub_1001F55A4(v18, v19, v170, &v176, &v176 + BYTE6(v14), v175, v175, v171, a7, a8, a9, a10, a11);
        goto LABEL_64;
      }

      v49 = *(v164 + 16);
      v50 = *(v164 + 24);
      v51 = sub_100216034();
      v52 = v165;
      if (v51)
      {
        v53 = v51;
        v54 = sub_100216064();
        if (__OFSUB__(v49, v54))
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v55 = v49 - v54 + v53;
      }

      else
      {
        v55 = 0;
      }

      if (!__OFSUB__(v50, v49))
      {
        v134 = sub_100216054();
        if (v134 >= v50 - v49)
        {
          v135 = v50 - v49;
        }

        else
        {
          v135 = v134;
        }

LABEL_110:
        v137 = v135 + v55;
        if (v55)
        {
          v138 = v137;
        }

        else
        {
          v138 = 0;
        }

        v139 = *v169;
        v19 = v169[1];
        sub_100012558(*v169, v19);
        sub_1001F55A4(v139, v19, v170, &v176, v12, v55, v138, v171, a7, a8, a9, a10, a11);
        v95 = v139;
        goto LABEL_114;
      }

      goto LABEL_138;
    }

    if (!v17)
    {
      v175[0] = v164;
      LODWORD(v175[1]) = v167;
      WORD2(v175[1]) = WORD2(v167);
      v18 = *v169;
      v19 = v169[1];
      sub_100012558(*v169, v19);
      sub_1001F55A4(v18, v19, v170, &v176, &v176 + BYTE6(v14), v175, v175 + BYTE6(v167), v171, a7, a8, a9, a10, a11);
LABEL_64:
      v52 = v165;
      v95 = v18;
LABEL_114:
      sub_100002BF0(v95, v19);
      v140 = v176;
      v141 = DWORD2(v176) | ((WORD6(v176) | (BYTE14(v176) << 16)) << 32);
      sub_100002BF0(v164, v167);
      result = sub_100002BF0(v164, v167);
      *v52 = v140;
      v52[1] = v141;
      return result;
    }

    goto LABEL_47;
  }

  v41 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  sub_100012558(a2, a3);
  sub_100012558(v15, v14);
  sub_100002BF0(v15, v14);
  *a1 = xmmword_10021D470;
  sub_100002BF0(0, 0xC000000000000000);
  sub_100012558(v12, a3);
  v42 = v15;
  v43 = v15 >> 32;
  v163 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v43 < v15)
    {
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (sub_100216034() && __OFSUB__(v15, sub_100216064()))
    {
      goto LABEL_134;
    }

    v104 = sub_100216074();
    v105 = *(v104 + 48);
    v106 = *(v104 + 52);
    swift_allocObject();
    v107 = sub_100216014();

    v41 = v107;
  }

  v108 = v43 - v15;
  if (v43 < v15)
  {
    goto LABEL_130;
  }

  result = sub_100216034();
  if (result)
  {
    v109 = result;
    v110 = sub_100216064();
    v111 = v42 - v110;
    if (!__OFSUB__(v42, v110))
    {
      v112 = sub_100216054();
      if (v112 < v108)
      {
        v108 = v112;
      }

      v113 = v109 + v111;
      v114 = a3 >> 62;
      if ((a3 >> 62) > 1)
      {
        if (v114 != 2)
        {
          *(&v176 + 6) = 0;
          *&v176 = 0;
          v115 = *v169;
          v116 = v169[1];
          sub_100012558(*v169, v116);
          v162 = a11;
          v117 = v113 + v108;
          v159 = a10;
          v156 = a9;
          v153 = a8;
          v150 = a7;
          v122 = &v176;
          v118 = v170;
          v119 = v115;
          v120 = v116;
          v121 = v113;
          v123 = v171;
          goto LABEL_100;
        }

        v166 = v108;
        v168 = v109 + v111;
        v124 = *(v12 + 16);
        v125 = *(v12 + 24);
        v126 = sub_100216034();
        if (v126)
        {
          v127 = v126;
          v128 = sub_100216064();
          if (__OFSUB__(v124, v128))
          {
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          v129 = v124 - v128 + v127;
        }

        else
        {
          v129 = 0;
        }

        if (__OFSUB__(v125, v124))
        {
          goto LABEL_141;
        }

        v142 = sub_100216054();
        if (v142 >= v125 - v124)
        {
          v143 = v125 - v124;
        }

        else
        {
          v143 = v142;
        }
      }

      else
      {
        if (!v114)
        {
          *&v176 = v12;
          WORD4(v176) = a3;
          BYTE10(v176) = BYTE2(a3);
          BYTE11(v176) = BYTE3(a3);
          BYTE12(v176) = BYTE4(a3);
          BYTE13(v176) = BYTE5(a3);
          v115 = *v169;
          v116 = v169[1];
          sub_100012558(*v169, v116);
          v162 = a11;
          v117 = v113 + v108;
          v159 = a10;
          v156 = a9;
          v153 = a8;
          v150 = a7;
          v118 = v170;
          v119 = v115;
          v120 = v116;
          v121 = v113;
          v122 = &v176 + BYTE6(a3);
          v123 = v171;
LABEL_100:
          sub_1001F55A4(v119, v120, v118, v121, v117, &v176, v122, v123, v150, v153, v156, v159, v162);
          v133 = v115;
LABEL_128:
          sub_100002BF0(v133, v116);

          sub_100002BF0(v12, a3);
          sub_100002BF0(v12, a3);
          result = sub_100002BF0(v12, a3);
          *a1 = v163;
          a1[1] = v41 | 0x4000000000000000;
          return result;
        }

        v166 = v108;
        v168 = v109 + v111;
        if (v12 >> 32 < v12)
        {
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        v130 = sub_100216034();
        if (v130)
        {
          v131 = v130;
          v132 = sub_100216064();
          if (__OFSUB__(v12, v132))
          {
            goto LABEL_149;
          }

          v129 = v12 - v132 + v131;
        }

        else
        {
          v129 = 0;
        }

        v144 = sub_100216054();
        if (v144 >= (v12 >> 32) - v12)
        {
          v143 = (v12 >> 32) - v12;
        }

        else
        {
          v143 = v144;
        }
      }

      v145 = v143 + v129;
      if (v129)
      {
        v146 = v145;
      }

      else
      {
        v146 = 0;
      }

      v147 = *v169;
      v116 = v169[1];
      sub_100012558(*v169, v116);
      sub_1001F55A4(v147, v116, v170, v168, v168 + v166, v129, v146, v171, a7, a8, a9, a10, a11);
      v133 = v147;
      goto LABEL_128;
    }

    goto LABEL_132;
  }

LABEL_151:
  __break(1u);
  return result;
}

uint64_t sub_1001F55A4(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint64_t a9, unsigned __int8 a10, uint64_t *a11, uint64_t a12, uint64_t *a13)
{
  v16 = a3;
  v17 = a13;
  v18 = a11;
  v19 = a9;
  v20 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v20)
    {
      v120[0] = a1;
      LOWORD(v120[1]) = a2;
      BYTE2(v120[1]) = BYTE2(a2);
      BYTE3(v120[1]) = BYTE3(a2);
      BYTE4(v120[1]) = BYTE4(a2);
      BYTE5(v120[1]) = BYTE5(a2);
      result = ccsha384_di();
      if (a4)
      {
        if (a6)
        {
          if (a8)
          {
            result = cchkdf();
            *v16 = result;
            if (!result)
            {
              if (a10 < 2u)
              {
                result = ccrng();
                if (result)
                {
                  result = ccec_generate_key_deterministic();
                  *v16 = result;
                  if (!result)
                  {
                    if (a13)
                    {
                      v22 = sub_100019CD4(a13);
                      v127 = sub_10001393C(v22);
                      v128 = v23;
                      sub_100017104(&v127);
                      v24 = v127;
                      v25 = v128;
                      v125 = &type metadata for Data;
                      v126 = &protocol witness table for Data;
                      v123 = v127;
                      v124 = v128;
                      v26 = sub_100006484(&v123, &type metadata for Data);
                      v27 = *v26;
                      v28 = v26[1];
                      v29 = v28 >> 62;
                      if ((v28 >> 62) <= 1)
                      {
                        if (!v29)
                        {
                          v30 = a11;
                          v119[0] = *v26;
                          LOWORD(v119[1]) = v28;
                          BYTE2(v119[1]) = BYTE2(v28);
                          BYTE3(v119[1]) = BYTE3(v28);
                          BYTE4(v119[1]) = BYTE4(v28);
                          BYTE5(v119[1]) = BYTE5(v28);
                          sub_100012558(v24, v25);
                          v31 = v119;
                          v32 = v119 + BYTE6(v28);
LABEL_124:
                          sub_100017EF0(v31, v32, &v121);
                          sub_100002BF0(v24, v25);
                          v101 = v121;
                          v102 = v122;
                          sub_100006128(&v123);
                          v103 = *v30;
                          v104 = v30[1];
                          *v30 = v101;
                          v30[1] = v102;
                          return sub_100002BF0(v103, v104);
                        }

                        v89 = v27;
                        v90 = v27 >> 32;
                        v77 = v90 - v89;
                        if (v90 >= v89)
                        {
                          v30 = a11;
                          sub_100012558(v24, v25);
                          v74 = sub_100216034();
                          if (!v74)
                          {
LABEL_105:
                            v92 = sub_100216054();
                            if (v92 >= v77)
                            {
                              v93 = v77;
                            }

                            else
                            {
                              v93 = v92;
                            }

                            v94 = (v93 + v74);
                            if (v74)
                            {
                              v32 = v94;
                            }

                            else
                            {
                              v32 = 0;
                            }

                            v31 = v74;
                            goto LABEL_124;
                          }

                          v91 = sub_100216064();
                          if (!__OFSUB__(v89, v91))
                          {
                            v74 += v89 - v91;
                            goto LABEL_105;
                          }

                          goto LABEL_150;
                        }

                        goto LABEL_144;
                      }

                      v30 = a11;
                      if (v29 != 2)
                      {
                        memset(v119, 0, 14);
                        sub_100012558(v24, v25);
                        v31 = v119;
                        v32 = v119;
                        goto LABEL_124;
                      }

                      v72 = *(v27 + 16);
                      v73 = *(v27 + 24);
                      sub_100012558(v24, v25);
                      v74 = sub_100216034();
                      if (v74)
                      {
                        v75 = sub_100216064();
                        v61 = v72 - v75;
                        if (__OFSUB__(v72, v75))
                        {
LABEL_148:
                          __break(1u);
                          goto LABEL_149;
                        }

                        v74 += v61;
                      }

                      v76 = __OFSUB__(v73, v72);
                      v77 = v73 - v72;
                      if (!v76)
                      {
                        goto LABEL_105;
                      }

                      __break(1u);
                      goto LABEL_79;
                    }

                    goto LABEL_173;
                  }

                  goto LABEL_55;
                }

                goto LABEL_169;
              }

              if (a10 == 2)
              {
                goto LABEL_70;
              }

              return result;
            }

LABEL_55:
            v56 = result;
            sub_1001F4158();
            swift_allocError();
            *v57 = v56;
            *(v57 + 8) = 0;
            *(v57 + 16) = 2;
            return swift_willThrow();
          }

          goto LABEL_159;
        }

        goto LABEL_157;
      }

      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    goto LABEL_35;
  }

  if (v20 == 2)
  {
    v115 = a11;
    v17 = *(a1 + 16);
    v33 = *(a1 + 24);
    v34 = sub_100216034();
    if (v34)
    {
      v35 = sub_100216064();
      if (__OFSUB__(v17, v35))
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v34 += v17 - v35;
    }

    if (__OFSUB__(v33, v17))
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    sub_100216054();
    result = ccsha384_di();
    if (!a4)
    {
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    v36 = a8;
    if (!a6)
    {
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    if (!v34)
    {
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    if (!a8)
    {
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    v37 = a9 - a8;
    result = cchkdf();
    *a3 = result;
    if (result)
    {
      goto LABEL_55;
    }

    v38 = a10 == 2;
    if (a10 >= 2u)
    {
      goto LABEL_64;
    }

    result = ccrng();
    if (!result)
    {
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    result = ccec_generate_key_deterministic();
    *a3 = result;
    if (result)
    {
      goto LABEL_55;
    }

    if (!a13)
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    v39 = sub_100019CD4(a13);
    v127 = sub_10001393C(v39);
    v128 = v40;
    sub_100017104(&v127);
    v16 = v13;
    v24 = v127;
    v25 = v128;
    v125 = &type metadata for Data;
    v126 = &protocol witness table for Data;
    v123 = v127;
    v124 = v128;
    v41 = sub_100006484(&v123, &type metadata for Data);
    v42 = *v41;
    v43 = v41[1];
    v44 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
LABEL_86:
      if (v44 != 2)
      {
LABEL_100:
        memset(v120, 0, 14);
        sub_100012558(v24, v25);
        v54 = v120;
        v55 = v120;
        goto LABEL_138;
      }

      v83 = *(v42 + 16);
      v84 = *(v42 + 24);
      sub_100012558(v24, v25);
      v19 = sub_100216034();
      if (v19)
      {
        v85 = sub_100216064();
        v42 = v83 - v85;
        if (__OFSUB__(v83, v85))
        {
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        v19 += v42;
      }

      v76 = __OFSUB__(v84, v83);
      a6 = v84 - v83;
      if (!v76)
      {
        goto LABEL_131;
      }

      __break(1u);
LABEL_93:
      if (v53 == 2)
      {
        v86 = *(v42 + 16);
        v87 = *(v42 + 24);
        sub_100012558(v24, v25);
        v19 = sub_100216034();
        if (v19)
        {
          v88 = sub_100216064();
          if (__OFSUB__(v86, v88))
          {
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
          }

          v19 += v86 - v88;
        }

        v76 = __OFSUB__(v87, v86);
        a6 = v87 - v86;
        if (!v76)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      goto LABEL_100;
    }

    if (!v44)
    {
LABEL_50:
      v120[0] = v42;
      LOWORD(v120[1]) = v43;
      BYTE2(v120[1]) = BYTE2(v43);
      BYTE3(v120[1]) = BYTE3(v43);
      BYTE4(v120[1]) = BYTE4(v43);
      BYTE5(v120[1]) = BYTE5(v43);
      sub_100012558(v24, v25);
      v54 = v120;
      v55 = v120 + BYTE6(v43);
LABEL_138:
      sub_100017EF0(v54, v55, &v121);
      sub_100002BF0(v24, v25);
      v113 = v121;
      v114 = v122;
      sub_100006128(&v123);
      v103 = *v115;
      v104 = v115[1];
      *v115 = v113;
      v115[1] = v114;
      return sub_100002BF0(v103, v104);
    }

    a4 = v42;
    v45 = v42 >> 32;
    a6 = v45 - a4;
    if (v45 < a4)
    {
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    sub_100012558(v24, v25);
    v19 = sub_100216034();
    if (!v19)
    {
      goto LABEL_131;
    }

    v18 = v43 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = sub_100216064();
    v46 = a4 - a1;
    if (!__OFSUB__(a4, a1))
    {
LABEL_130:
      v19 += v46;
LABEL_131:
      v110 = sub_100216054();
      if (v110 >= a6)
      {
        v111 = a6;
      }

      else
      {
        v111 = v110;
      }

      v112 = (v111 + v19);
      if (v19)
      {
        v55 = v112;
      }

      else
      {
        v55 = 0;
      }

      v54 = v19;
      goto LABEL_138;
    }

    __break(1u);
LABEL_35:
    v47 = a1;
    if (a1 >> 32 >= a1)
    {
      v115 = v18;
      v117 = v16;
      v48 = sub_100216034();
      if (!v48)
      {
        goto LABEL_39;
      }

      v49 = sub_100216064();
      if (!__OFSUB__(v47, v49))
      {
        v48 += v47 - v49;
LABEL_39:
        sub_100216054();
        result = ccsha384_di();
        if (!a4)
        {
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        v36 = a8;
        if (!a6)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        if (!v48)
        {
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        if (!a8)
        {
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        v37 = v19 - a8;
        result = cchkdf();
        *v117 = result;
        if (result)
        {
          goto LABEL_55;
        }

        v38 = a10 == 2;
        if (a10 < 2u)
        {
          result = ccrng();
          if (!result)
          {
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
            goto LABEL_175;
          }

          result = ccec_generate_key_deterministic();
          *v117 = result;
          if (result)
          {
            goto LABEL_55;
          }

          if (!v17)
          {
LABEL_176:
            __break(1u);
            return result;
          }

          v50 = sub_100019CD4(v17);
          v127 = sub_10001393C(v50);
          v128 = v51;
          sub_100017104(&v127);
          v24 = v127;
          v25 = v128;
          v125 = &type metadata for Data;
          v126 = &protocol witness table for Data;
          v123 = v127;
          v124 = v128;
          v52 = sub_100006484(&v123, &type metadata for Data);
          v42 = *v52;
          v43 = v52[1];
          v53 = v43 >> 62;
          if ((v43 >> 62) > 1)
          {
            goto LABEL_93;
          }

          if (!v53)
          {
            goto LABEL_50;
          }

          v107 = v42;
          v108 = v42 >> 32;
          a6 = v108 - v107;
          if (v108 < v107)
          {
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          sub_100012558(v24, v25);
          v19 = sub_100216034();
          if (!v19)
          {
            goto LABEL_131;
          }

          v109 = sub_100216064();
          v46 = v107 - v109;
          if (__OFSUB__(v107, v109))
          {
            goto LABEL_154;
          }

          goto LABEL_130;
        }

LABEL_64:
        if (v38)
        {
          v66 = sub_1001F3F9C(v36, v37);
          v67 = *v115;
          v68 = v115[1];
          *v115 = v66;
          v115[1] = v69;
          return sub_100002BF0(v67, v68);
        }

        return result;
      }

LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    __break(1u);
    goto LABEL_141;
  }

  memset(v120, 0, 14);
  result = ccsha384_di();
  if (!a4)
  {
    goto LABEL_156;
  }

  if (!a6)
  {
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  if (!a8)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v24 = a11;
  result = cchkdf();
  *v16 = result;
  if (result)
  {
    goto LABEL_55;
  }

  if (a10 < 2u)
  {
    result = ccrng();
    if (!result)
    {
LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    result = ccec_generate_key_deterministic();
    *v16 = result;
    if (!result)
    {
      if (a13)
      {
        v58 = sub_100019CD4(a13);
        v127 = sub_10001393C(v58);
        v128 = v59;
        sub_100017104(&v127);
        v30 = v127;
        v25 = v128;
        v125 = &type metadata for Data;
        v126 = &protocol witness table for Data;
        v123 = v127;
        v124 = v128;
        v60 = sub_100006484(&v123, &type metadata for Data);
        v61 = *v60;
        v62 = v60[1];
        v63 = v62 >> 62;
        if ((v62 >> 62) <= 1)
        {
          if (v63)
          {
            v95 = v61;
            v96 = v61 >> 32;
            v82 = v96 - v95;
            if (v96 < v95)
            {
LABEL_145:
              __break(1u);
              goto LABEL_146;
            }

            sub_100012558(v30, v25);
            v80 = sub_100216034();
            if (v80)
            {
              v97 = sub_100216064();
              if (__OFSUB__(v95, v97))
              {
LABEL_151:
                __break(1u);
                goto LABEL_152;
              }

              v80 += v95 - v97;
            }

            goto LABEL_116;
          }

          v119[0] = *v60;
          LOWORD(v119[1]) = v62;
          BYTE2(v119[1]) = BYTE2(v62);
          BYTE3(v119[1]) = BYTE3(v62);
          BYTE4(v119[1]) = BYTE4(v62);
          BYTE5(v119[1]) = BYTE5(v62);
          sub_100012558(v30, v25);
          v64 = v119;
          v65 = v119 + BYTE6(v62);
          goto LABEL_126;
        }

LABEL_79:
        if (v63 == 2)
        {
          v78 = *(v61 + 16);
          v79 = *(v61 + 24);
          sub_100012558(v30, v25);
          v80 = sub_100216034();
          if (v80)
          {
            v81 = sub_100216064();
            v42 = v78 - v81;
            if (__OFSUB__(v78, v81))
            {
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
              goto LABEL_151;
            }

            v80 += v42;
          }

          v76 = __OFSUB__(v79, v78);
          v82 = v79 - v78;
          if (!v76)
          {
LABEL_116:
            v98 = sub_100216054();
            if (v98 >= v82)
            {
              v99 = v82;
            }

            else
            {
              v99 = v98;
            }

            v100 = (v99 + v80);
            if (v80)
            {
              v65 = v100;
            }

            else
            {
              v65 = 0;
            }

            v64 = v80;
            goto LABEL_126;
          }

          __break(1u);
          goto LABEL_86;
        }

        memset(v119, 0, 14);
        sub_100012558(v30, v25);
        v64 = v119;
        v65 = v119;
LABEL_126:
        sub_100017EF0(v64, v65, &v121);
        sub_100002BF0(v30, v25);
        v105 = v121;
        v106 = v122;
        sub_100006128(&v123);
        v103 = *v24;
        v104 = v24[1];
        *v24 = v105;
        v24[1] = v106;
        return sub_100002BF0(v103, v104);
      }

      goto LABEL_174;
    }

    goto LABEL_55;
  }

  if (a10 == 2)
  {
LABEL_70:
    v70 = sub_1001F3F9C(a8, a9 - a8);
    v67 = *a11;
    v68 = a11[1];
    *a11 = v70;
    a11[1] = v71;
    return sub_100002BF0(v67, v68);
  }

  return result;
}

unint64_t sub_1001F61E8()
{
  result = qword_100297CE8;
  if (!qword_100297CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100297CE8);
  }

  return result;
}

uint64_t sub_1001F6234(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v65 = xmmword_10021D470;
  if (!a1)
  {
    v10 = "Escrowed Signing Key-%@";
    v11 = 0xD00000000000001ALL;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v10 = "Escrow Signing Private Key";
    v11 = 0xD00000000000001DLL;
LABEL_5:
    v12 = sub_1001B43B8(v11, v10 | 0x8000000000000000);
    v13 = sub_1000139DC(v12 + 32, *(v12 + 2));
    v15 = v14;

    v66 = v13;
    v16 = 56;
    goto LABEL_7;
  }

  v17 = sub_1001B43B8(0xD000000000000014, 0x800000010023E960);
  v18 = sub_1000139DC(v17 + 32, *(v17 + 2));
  v15 = v19;

  v66 = v18;
  v16 = 32;
LABEL_7:
  v67 = v15;
  v20 = ccec_cp_384();
  if (!v20)
  {
    sub_1001F4158();
    swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 3;
    swift_willThrow();
LABEL_45:
    sub_100002BF0(v65, *(&v65 + 1));
    sub_100002BF0(v66, v67);
    return a3;
  }

  v21 = v20;
  v62 = 0;
  v22 = objc_opt_self();
  v60 = [v22 ccec384Context];
  v23 = sub_10001393C(v16);
  v25 = v24;
  v63 = a2;
  v64 = a3;
  v26 = sub_1001B43B8(a4, a5);
  if ((a5 & 0x1000000000000000) != 0)
  {
    v27 = sub_100216A44();
  }

  else if ((a5 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v27 = a4 & 0xFFFFFFFFFFFFLL;
  }

  sub_100012558(a2, a3);
  v28 = sub_1000139DC(v26 + 32, v27);
  v30 = v29;

  v31 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    if (v31 != 2)
    {
      *(&v61 + 7) = 0;
      *&v61 = 0;
      sub_1001F46B4(&v63, v28, v30, &v66, &v62, &v61, &v61, a1, &v65, v21, v60);
      if (v5)
      {
        goto LABEL_44;
      }

      v58 = v22;
      goto LABEL_47;
    }

    v58 = v22;
    sub_100012558(v28, v30);

    sub_100002BF0(v23, v25);
    *&v61 = v23;
    *(&v61 + 1) = v25 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1002161A4();
    v33 = v25 & 0x3FFFFFFFFFFFFFFFLL;
    v34 = *(v23 + 16);
    v35 = *(v23 + 24);
    v36 = sub_100216034();
    if (!v36)
    {
      result = sub_100002BF0(v28, v30);
      __break(1u);
      goto LABEL_57;
    }

    a3 = v36;
    v37 = sub_100216064();
    v38 = v34 - v37;
    if (!__OFSUB__(v34, v37))
    {
      v39 = __OFSUB__(v35, v34);
      v40 = v35 - v34;
      if (!v39)
      {
        v41 = sub_100216054();
        if (v41 >= v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = v41;
        }

        sub_1001F46B4(&v63, v28, v30, &v66, &v62, (a3 + v38), a3 + v38 + v42, a1, &v65, v21, v60);
        if (!v5)
        {
          sub_100002BF0(v28, v30);
          v25 = v33 | 0x8000000000000000;
          goto LABEL_47;
        }

        sub_100002BF0(v28, v30);
        v25 = v33 | 0x8000000000000000;
LABEL_43:
        v22 = v58;
        goto LABEL_44;
      }

      goto LABEL_52;
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (!v31)
  {
    *&v61 = v23;
    WORD4(v61) = v25;
    BYTE10(v61) = BYTE2(v25);
    BYTE11(v61) = BYTE3(v25);
    BYTE12(v61) = BYTE4(v25);
    BYTE13(v61) = BYTE5(v25);
    BYTE14(v61) = BYTE6(v25);
    a3 = &v61 + BYTE6(v25);
    sub_100012558(v28, v30);
    sub_1001F46B4(&v63, v28, v30, &v66, &v62, &v61, a3, a1, &v65, v21, v60);
    if (v5)
    {
      v23 = v61;
      v25 = DWORD2(v61) | ((WORD6(v61) | (BYTE14(v61) << 16)) << 32);
      sub_100002BF0(v28, v30);
LABEL_44:
      sub_100002BF0(v63, v64);
      [v22 contextFree:v60];
      sub_100002BF0(v23, v25);
      goto LABEL_45;
    }

    v58 = v22;
    v23 = v61;
    v25 = DWORD2(v61) | ((WORD6(v61) | (BYTE14(v61) << 16)) << 32);
    sub_100002BF0(v28, v30);
LABEL_47:
    v55 = *(&v65 + 1);
    a3 = v65;
    v56 = v63;
    v57 = v64;
    sub_100012558(v65, *(&v65 + 1));
    sub_100002BF0(v56, v57);
    [v58 contextFree:v60];
    sub_100002BF0(v23, v25);
    sub_100002BF0(a3, v55);
    sub_100002BF0(v66, v67);
    return a3;
  }

  a3 = v25 & 0x3FFFFFFFFFFFFFFFLL;
  sub_100012558(v28, v30);
  sub_100012558(v28, v30);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v23 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v44 < v23)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (sub_100216034() && __OFSUB__(v23, sub_100216064()))
    {
LABEL_55:
      __break(1u);
    }

    v45 = sub_100216074();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = sub_100216014();

    a3 = v48;
    v44 = v23 >> 32;
  }

  v58 = v22;
  v49 = v44 - v23;
  if (v44 < v23)
  {
    goto LABEL_51;
  }

  result = sub_100216034();
  if (result)
  {
    v51 = result;
    v52 = sub_100216064();
    v53 = v23 - v52;
    if (!__OFSUB__(v23, v52))
    {
      v54 = sub_100216054();
      if (v54 < v49)
      {
        v49 = v54;
      }

      sub_100012558(v28, v30);
      sub_1001F46B4(&v63, v28, v30, &v66, &v62, (v51 + v53), v51 + v53 + v49, a1, &v65, v21, v60);
      if (!v5)
      {

        sub_100002BF0(v28, v30);
        sub_100002BF0(v28, v30);
        sub_100002BF0(v28, v30);
        v25 = a3 | 0x4000000000000000;
        goto LABEL_47;
      }

      sub_100002BF0(v28, v30);
      sub_100002BF0(v28, v30);
      sub_100002BF0(v28, v30);
      v25 = a3 | 0x4000000000000000;
      goto LABEL_43;
    }

    goto LABEL_53;
  }

LABEL_57:
  __break(1u);
  return result;
}

SecKeyRef sub_1001F693C()
{
  sub_10001148C(&qword_100297D48, &qword_10021D758);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D420;
  *(inited + 32) = kSecAttrKeyClass;
  *(inited + 40) = kSecAttrKeyClassPrivate;
  *(inited + 48) = kSecAttrKeyType;
  *(inited + 56) = kSecAttrKeyTypeEC;
  v1 = kSecAttrKeyClass;
  v2 = kSecAttrKeyClassPrivate;
  v3 = kSecAttrKeyType;
  v4 = kSecAttrKeyTypeEC;
  sub_100018514(inited);
  swift_setDeallocating();
  sub_10001148C(&qword_100297D50, &qword_10021D760);
  swift_arrayDestroy();
  isa = sub_100216204().super.isa;
  type metadata accessor for CFString(0);
  sub_1001F7554();
  v6 = sub_1002168C4().super.isa;

  v7 = SecKeyCreateWithData(isa, v6, 0);

  if (!v7)
  {
    sub_1001F4158();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 3;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1001F6AD4()
{
  result = 0;
  type metadata accessor for CFString(0);
  sub_1001F7554();
  isa = sub_1002168C4().super.isa;
  v1 = SecItemAdd(isa, &result);

  if (v1)
  {
    if (v1 != -25299)
    {
      goto LABEL_4;
    }

    sub_100015790(kSecClass, v6);
    sub_100012480(v6);
    v2 = sub_1002168C4().super.isa;
    v3 = sub_1002168C4().super.isa;

    v1 = SecItemUpdate(v2, v3);

    if (v1)
    {
LABEL_4:
      sub_1001F4158();
      swift_allocError();
      *v4 = v1;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      swift_willThrow();
    }
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_1001F6C68(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D5F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v5;
  *(inited + 72) = kSecAttrAccessible;
  *(inited + 80) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 104) = v5;
  *(inited + 112) = kSecUseDataProtectionKeychain;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrAccessGroup;
  *(inited + 160) = 0xD00000000000001ALL;
  *(inited + 168) = 0x8000000100227BB0;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 200) = 0;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrApplicationLabel;
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10021D600;
  v7 = objc_allocWithZone(NSUUID);
  v8 = kSecClass;
  v9 = kSecClassKey;
  v10 = kSecAttrAccessible;
  v11 = kSecAttrAccessibleWhenUnlocked;
  v12 = kSecUseDataProtectionKeychain;
  v13 = kSecAttrAccessGroup;
  v14 = kSecAttrSynchronizable;
  v15 = kSecAttrApplicationLabel;
  v16 = [v7 init];
  v17 = [v16 UUIDString];

  v18 = sub_100216974();
  v20 = v19;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100019BD0();
  *(v6 + 32) = v18;
  *(v6 + 40) = v20;
  *(inited + 240) = sub_100216984();
  *(inited + 248) = v21;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecAttrLabel;
  *(inited + 280) = a3;
  *(inited + 288) = a4;
  *(inited + 304) = &type metadata for String;
  *(inited + 312) = kSecValueData;
  *(inited + 344) = &type metadata for Data;
  *(inited + 320) = a1;
  *(inited + 328) = a2;
  v22 = kSecAttrLabel;

  v23 = kSecValueData;
  sub_100012558(a1, a2);
  sub_100018728(inited);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  v24 = sub_1001F6AD4();

  return v24 & 1;
}

uint64_t sub_1001F6F60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D5F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v7;
  *(inited + 72) = kSecAttrAccessible;
  *(inited + 80) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 104) = v7;
  *(inited + 112) = kSecUseDataProtectionKeychain;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrAccessGroup;
  *(inited + 160) = 0xD00000000000001ALL;
  *(inited + 168) = 0x8000000100227BB0;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 200) = 0;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrLabel;
  *(inited + 240) = a3;
  *(inited + 248) = a4;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecAttrApplicationLabel;
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10021D600;
  v9 = objc_allocWithZone(NSUUID);
  v10 = kSecClass;
  v11 = kSecClassKey;
  v12 = kSecAttrAccessible;
  v13 = kSecAttrAccessibleWhenUnlocked;
  v14 = kSecUseDataProtectionKeychain;
  v15 = kSecAttrAccessGroup;
  v16 = kSecAttrSynchronizable;
  v17 = kSecAttrLabel;

  v18 = kSecAttrApplicationLabel;
  v19 = [v9 init];
  v20 = [v19 UUIDString];

  v21 = sub_100216974();
  v23 = v22;

  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100019BD0();
  *(v8 + 32) = v21;
  *(v8 + 40) = v23;
  *(inited + 280) = sub_100216984();
  *(inited + 288) = v24;
  *(inited + 304) = &type metadata for String;
  *(inited + 312) = kSecValueData;
  *(inited + 344) = &type metadata for Data;
  *(inited + 320) = a1;
  *(inited + 328) = a2;
  v25 = kSecValueData;
  sub_100012558(a1, a2);
  sub_100018728(inited);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  v26 = sub_1001F6AD4();

  return v26 & 1;
}

uint64_t sub_1001F725C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D5F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v5;
  *(inited + 72) = kSecAttrAccessible;
  *(inited + 80) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 104) = v5;
  *(inited + 112) = kSecUseDataProtectionKeychain;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrAccessGroup;
  *(inited + 160) = 0xD00000000000001ALL;
  *(inited + 168) = 0x8000000100227BB0;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 200) = 0;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrApplicationLabel;
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10021D600;
  v7 = objc_allocWithZone(NSUUID);
  v8 = kSecClass;
  v9 = kSecClassKey;
  v10 = kSecAttrAccessible;
  v11 = kSecAttrAccessibleWhenUnlocked;
  v12 = kSecUseDataProtectionKeychain;
  v13 = kSecAttrAccessGroup;
  v14 = kSecAttrSynchronizable;
  v15 = kSecAttrApplicationLabel;
  v16 = [v7 init];
  v17 = [v16 UUIDString];

  v18 = sub_100216974();
  v20 = v19;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100019BD0();
  *(v6 + 32) = v18;
  *(v6 + 40) = v20;
  *(inited + 240) = sub_100216984();
  *(inited + 248) = v21;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecAttrLabel;
  *(inited + 280) = a3;
  *(inited + 288) = a4;
  *(inited + 304) = &type metadata for String;
  *(inited + 312) = kSecValueData;
  *(inited + 344) = &type metadata for Data;
  *(inited + 320) = a1;
  *(inited + 328) = a2;
  v22 = kSecAttrLabel;

  v23 = kSecValueData;
  sub_100012558(a1, a2);
  sub_100018728(inited);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  v24 = sub_1001F6AD4();

  return v24 & 1;
}

unint64_t sub_1001F7554()
{
  result = qword_1002978D0;
  if (!qword_1002978D0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002978D0);
  }

  return result;
}

uint64_t sub_1001F75AC(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_1001F75DC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for EscrowRecordMO();
    sub_1001FC8B0();
    sub_100216C04();
    v1 = v22;
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v21 = _swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!sub_100216F14() || (type metadata accessor for EscrowRecordMO(), swift_dynamicCast(), (v11 = v27) == 0))
    {
LABEL_25:
      sub_10000D778();
      return;
    }

LABEL_18:
    v12 = [v11 escrowMetadata];
    if (v12 && (v13 = v12, v14 = [v12 bottleID], v13, v14))
    {
      v20 = sub_100216974();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100182D90(0, *(v21 + 2) + 1, 1, v21);
      }

      v18 = *(v21 + 2);
      v17 = *(v21 + 3);
      if (v18 >= v17 >> 1)
      {
        v21 = sub_100182D90((v17 > 1), v18 + 1, 1, v21);
      }

      *(v21 + 2) = v18 + 1;
      v19 = &v21[16 * v18];
      *(v19 + 4) = v20;
      *(v19 + 5) = v16;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1001F7878(void *a1, uint64_t a2)
{
  v554 = a2;
  v4 = sub_10001148C(&qword_100298660, &qword_10021E878);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v583 = &v550 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7, v9);
  v581 = &v550 - v11;
  v13 = __chkstk_darwin(v10, v12);
  v577 = &v550 - v14;
  v16 = __chkstk_darwin(v13, v15);
  v574 = &v550 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v571 = &v550 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v567 = &v550 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v564 = &v550 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v560 = &v550 - v29;
  v31 = __chkstk_darwin(v28, v30);
  v586 = &v550 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v589 = &v550 - v35;
  v37 = __chkstk_darwin(v34, v36);
  v598 = &v550 - v38;
  __chkstk_darwin(v37, v39);
  v596 = &v550 - v40;
  v633 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  v599 = *(v633 - 8);
  v41 = *(v599 + 64);
  v43 = __chkstk_darwin(v633, v42);
  v582 = (&v550 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __chkstk_darwin(v43, v45);
  v580 = (&v550 - v47);
  v49 = __chkstk_darwin(v46, v48);
  v576 = (&v550 - v50);
  v52 = __chkstk_darwin(v49, v51);
  v573 = (&v550 - v53);
  v55 = __chkstk_darwin(v52, v54);
  v570 = (&v550 - v56);
  v58 = __chkstk_darwin(v55, v57);
  v566 = (&v550 - v59);
  v61 = __chkstk_darwin(v58, v60);
  v563 = (&v550 - v62);
  v64 = __chkstk_darwin(v61, v63);
  v559 = (&v550 - v65);
  v67 = __chkstk_darwin(v64, v66);
  v584 = (&v550 - v68);
  v70 = __chkstk_darwin(v67, v69);
  v588 = (&v550 - v71);
  v73 = __chkstk_darwin(v70, v72);
  v597 = (&v550 - v74);
  __chkstk_darwin(v73, v75);
  v595 = (&v550 - v76);
  v621 = type metadata accessor for PasscodeGeneration(0);
  v614 = *(v621 - 1);
  v77 = *(v614 + 64);
  __chkstk_darwin(v621, v78);
  v551 = (&v550 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  v81 = *(*(v80 - 8) + 64);
  v83 = __chkstk_darwin(v80 - 8, v82);
  v552 = &v550 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83, v85);
  v613 = &v550 - v86;
  v87 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  v88 = *(*(v87 - 8) + 64);
  v90 = __chkstk_darwin(v87 - 8, v89);
  v579 = &v550 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __chkstk_darwin(v90, v92);
  v575 = &v550 - v94;
  v96 = __chkstk_darwin(v93, v95);
  v572 = &v550 - v97;
  v99 = __chkstk_darwin(v96, v98);
  v569 = &v550 - v100;
  v102 = __chkstk_darwin(v99, v101);
  v565 = &v550 - v103;
  v105 = __chkstk_darwin(v102, v104);
  v562 = &v550 - v106;
  v108 = __chkstk_darwin(v105, v107);
  v558 = &v550 - v109;
  v111 = __chkstk_darwin(v108, v110);
  v556 = &v550 - v112;
  v114 = __chkstk_darwin(v111, v113);
  v585 = &v550 - v115;
  v117 = __chkstk_darwin(v114, v116);
  v587 = &v550 - v118;
  v120 = __chkstk_darwin(v117, v119);
  v619 = &v550 - v121;
  v123 = __chkstk_darwin(v120, v122);
  v593 = &v550 - v124;
  v126 = __chkstk_darwin(v123, v125);
  v553 = &v550 - v127;
  v129 = __chkstk_darwin(v126, v128);
  v612 = &v550 - v130;
  v132 = __chkstk_darwin(v129, v131);
  v610 = &v550 - v133;
  v135 = __chkstk_darwin(v132, v134);
  v637 = &v550 - v136;
  v138 = __chkstk_darwin(v135, v137);
  v607 = &v550 - v139;
  v141 = __chkstk_darwin(v138, v140);
  v605 = &v550 - v142;
  v144 = __chkstk_darwin(v141, v143);
  v603 = &v550 - v145;
  v147 = __chkstk_darwin(v144, v146);
  v620 = &v550 - v148;
  v150 = __chkstk_darwin(v147, v149);
  v616 = &v550 - v151;
  __chkstk_darwin(v150, v152);
  v642 = (&v550 - v153);
  v154 = type metadata accessor for EscrowInformation.Metadata(0);
  v644 = *(v154 - 8);
  v155 = *(v644 + 64);
  v157 = __chkstk_darwin(v154, v156);
  v578 = &v550 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __chkstk_darwin(v157, v159);
  v624 = &v550 - v161;
  v163 = __chkstk_darwin(v160, v162);
  v623 = &v550 - v164;
  v166 = __chkstk_darwin(v163, v165);
  v568 = &v550 - v167;
  v169 = __chkstk_darwin(v166, v168);
  v622 = &v550 - v170;
  v172 = __chkstk_darwin(v169, v171);
  v561 = &v550 - v173;
  v175 = __chkstk_darwin(v172, v174);
  v557 = &v550 - v176;
  v178 = __chkstk_darwin(v175, v177);
  v618 = &v550 - v179;
  v181 = __chkstk_darwin(v178, v180);
  v625 = &v550 - v182;
  v184 = __chkstk_darwin(v181, v183);
  v626 = &v550 - v185;
  v187 = __chkstk_darwin(v184, v186);
  v594 = &v550 - v188;
  v190 = __chkstk_darwin(v187, v189);
  v592 = &v550 - v191;
  v193 = __chkstk_darwin(v190, v192);
  v550 = &v550 - v194;
  v196 = __chkstk_darwin(v193, v195);
  v611 = &v550 - v197;
  v199 = __chkstk_darwin(v196, v198);
  v609 = &v550 - v200;
  v202 = __chkstk_darwin(v199, v201);
  v608 = &v550 - v203;
  v205 = __chkstk_darwin(v202, v204);
  v606 = &v550 - v206;
  v208 = __chkstk_darwin(v205, v207);
  v604 = &v550 - v209;
  v211 = __chkstk_darwin(v208, v210);
  v617 = &v550 - v212;
  v214 = __chkstk_darwin(v211, v213);
  v600 = &v550 - v215;
  v217 = __chkstk_darwin(v214, v216);
  v615 = &v550 - v218;
  __chkstk_darwin(v217, v219);
  v221 = &v550 - v220;
  v635 = sub_100216384();
  v636 = *(v635 - 8);
  v222 = *(v636 + 64);
  __chkstk_darwin(v635, v223);
  v634 = &v550 - ((v224 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v226 = *(*(v225 - 8) + 64);
  v228 = __chkstk_darwin(v225 - 8, v227);
  v591 = &v550 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = __chkstk_darwin(v228, v230);
  v602 = &v550 - v232;
  __chkstk_darwin(v231, v233);
  v235 = &v550 - v234;
  v236 = sub_1002164A4();
  v237 = *(v236 - 8);
  v238 = *(v237 + 8);
  v240 = __chkstk_darwin(v236, v239);
  v590 = &v550 - ((v241 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = __chkstk_darwin(v240, v242);
  v601 = &v550 - v244;
  __chkstk_darwin(v243, v245);
  v247 = &v550 - v246;
  type metadata accessor for EscrowRecordMO();
  v555 = v2;
  v248 = *(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v249 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v640 = v248;
  v250 = [v249 initWithContext:v248];
  v251 = a1[1];
  v252 = a1[2];
  v253 = sub_100216964();
  v632 = v250;
  [v250 setLabel:v253];

  v254 = type metadata accessor for EscrowInformation(0);
  v255 = *(v254 + 48);
  v641 = a1;
  sub_100019C6C(a1 + v255, v235, &qword_10029D780, &qword_1002265D0);
  v256 = *(v237 + 6);
  v257 = v256(v235, 1, v236);
  v631 = v237 + 48;
  if (v257 == 1)
  {
    sub_100216494();
    if (v256(v235, 1, v236) != 1)
    {
      sub_1000114D4(v235, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    (*(v237 + 4))(v247, v235, v236);
  }

  v258 = v634;
  sub_100216474();
  v259 = *(v237 + 1);
  v638 = v236;
  v630 = v237 + 8;
  v629 = v259;
  v259(v247, v236);
  isa = sub_1002162F4().super.isa;
  v261 = *(v636 + 8);
  v636 += 8;
  v628 = v261;
  v261(v258, v635);
  v262 = v632;
  [v632 setCreationDate:isa];

  v263 = v641;
  if ((*v641 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_214;
  }

  [v262 setRemainingAttempts:?];
  if ((v263[3] & 0x8000000000000000) != 0)
  {
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  [v262 setSilentAttemptAllowed:?];
  if (*(v263 + 40))
  {
    v264 = v263[4] != 0;
  }

  else
  {
    v264 = v263[4];
  }

  [v262 setRecordStatus:v264];
  [v262 setSosViability:v263[6]];
  v265 = v263[8];
  v266 = v263[9];
  v267 = sub_100216964();
  [v262 setFederationID:v267];

  v268 = v263[10];
  v269 = v263[11];
  v270 = sub_100216964();
  [v262 setExpectedFederationID:v270];

  type metadata accessor for EscrowMetadataMO();
  v271 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v639 = [v271 initWithContext:v640];
  v643 = *(v254 + 52);
  v272 = v642;
  sub_100019C6C(v263 + v643, v642, &unk_10029DAA0, &qword_10021E870);
  v273 = *(v644 + 48);
  v644 += 48;
  v274 = (v273)(v272, 1, v154);
  v627 = v256;
  if (v274 == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v275 = *(v154 + 20);
    v276 = v637;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *&v221[v275] = qword_100298568;
    v277 = v642;
    v278 = (v273)(v642, 1, v154);

    if (v278 != 1)
    {
      sub_1000114D4(v277, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001FD72C(v272, v221, type metadata accessor for EscrowInformation.Metadata);
    v276 = v637;
  }

  v279 = *&v221[*(v154 + 20)];
  swift_beginAccess();
  v280 = *(v279 + 16);
  v281 = *(v279 + 24);
  sub_100012558(v280, v281);
  sub_1001FD6CC(v221, type metadata accessor for EscrowInformation.Metadata);
  v282 = sub_100216204().super.isa;
  sub_100002BF0(v280, v281);
  [v639 setBackupKeybagDigest:v282];

  v283 = v616;
  sub_100019C6C(v263 + v643, v616, &unk_10029DAA0, &qword_10021E870);
  v642 = v273;
  if ((v273)(v283, 1, v154) == 1)
  {
    v284 = v237;
    v285 = v276;
    v286 = v615;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v287 = *(v154 + 20);
    v288 = v617;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v286 + v287) = qword_100298568;
    v289 = (v642)(v283, 1, v154);

    v290 = v283;
    v291 = v286;
    v276 = v285;
    v237 = v284;
    v263 = v641;
    if (v289 != 1)
    {
      sub_1000114D4(v290, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v292 = v283;
    v291 = v615;
    sub_1001FD72C(v292, v615, type metadata accessor for EscrowInformation.Metadata);
    v288 = v617;
  }

  v293 = *(v291 + *(v154 + 20));
  v294 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  v295 = *(v293 + v294);
  sub_1001FD6CC(v291, type metadata accessor for EscrowInformation.Metadata);
  if (v295 < 0)
  {
    goto LABEL_215;
  }

  v637 = v237;
  [v639 setSecureBackupUsesMultipleiCSCS:v295];
  v296 = v620;
  sub_100019C6C(v263 + v643, v620, &unk_10029DAA0, &qword_10021E870);
  v297 = v276;
  if ((v642)(v296, 1, v154) == 1)
  {
    v298 = v600;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v299 = *(v154 + 20);
    v300 = v603;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v298 + v299) = qword_100298568;
    v301 = v620;
    v302 = (v642)(v620, 1, v154);

    if (v302 != 1)
    {
      sub_1000114D4(v301, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v298 = v600;
    sub_1001FD72C(v296, v600, type metadata accessor for EscrowInformation.Metadata);
    v300 = v603;
  }

  v303 = (*(v298 + *(v154 + 20)) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID);
  swift_beginAccess();
  v305 = *v303;
  v304 = v303[1];

  sub_1001FD6CC(v298, type metadata accessor for EscrowInformation.Metadata);
  v306 = sub_100216964();

  [v639 setBottleID:v306];

  sub_100019C6C(v263 + v643, v300, &unk_10029DAA0, &qword_10021E870);
  if ((v642)(v300, 1, v154) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v307 = *(v154 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v288 + v307) = qword_100298568;
    v308 = (v642)(v300, 1, v154);

    v309 = v297;
    if (v308 != 1)
    {
      sub_1000114D4(v300, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001FD72C(v300, v288, type metadata accessor for EscrowInformation.Metadata);
    v309 = v297;
  }

  v310 = *(v288 + *(v154 + 20));
  v311 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  v312 = v602;
  sub_100019C6C(v310 + v311, v602, &qword_10029D780, &qword_1002265D0);
  v313 = v638;
  v314 = v627;
  if (v627(v312, 1, v638) == 1)
  {
    v315 = v601;
    sub_100216494();
    v316 = v315;
    if (v314(v312, 1, v313) != 1)
    {
      sub_1000114D4(v312, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    v316 = v601;
    (*(v637 + 4))(v601, v312, v313);
  }

  sub_1001FD6CC(v288, type metadata accessor for EscrowInformation.Metadata);
  v317 = v634;
  sub_100216474();
  v629(v316, v313);
  v318 = sub_1002162F4().super.isa;
  v628(v317, v635);
  [v639 setSecureBackupTimestamp:v318];

  v319 = v605;
  sub_100019C6C(v263 + v643, v605, &unk_10029DAA0, &qword_10021E870);
  if ((v642)(v319, 1, v154) == 1)
  {
    v320 = v604;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v321 = *(v154 + 20);
    v322 = v606;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v320 + v321) = qword_100298568;
    v323 = (v642)(v319, 1, v154);

    if (v323 != 1)
    {
      sub_1000114D4(v319, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v320 = v604;
    sub_1001FD72C(v319, v604, type metadata accessor for EscrowInformation.Metadata);
    v322 = v606;
  }

  v324 = (*(v320 + *(v154 + 20)) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki);
  swift_beginAccess();
  v326 = *v324;
  v325 = v324[1];
  sub_100012558(v326, v325);
  sub_1001FD6CC(v320, type metadata accessor for EscrowInformation.Metadata);
  v327 = sub_100216204().super.isa;
  sub_100002BF0(v326, v325);
  [v639 setEscrowedSPKI:v327];

  v328 = v607;
  sub_100019C6C(v263 + v643, v607, &unk_10029DAA0, &qword_10021E870);
  if ((v642)(v328, 1, v154) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v329 = *(v154 + 20);
    v330 = v610;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v322 + v329) = qword_100298568;
    v331 = (v642)(v328, 1, v154);

    if (v331 != 1)
    {
      sub_1000114D4(v328, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001FD72C(v328, v322, type metadata accessor for EscrowInformation.Metadata);
    v330 = v610;
  }

  v332 = (*(v322 + *(v154 + 20)) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo);
  swift_beginAccess();
  v334 = *v332;
  v333 = v332[1];
  sub_100012558(v334, v333);
  sub_1001FD6CC(v322, type metadata accessor for EscrowInformation.Metadata);
  v335 = sub_100216204().super.isa;
  sub_100002BF0(v334, v333);
  [v639 setPeerInfo:v335];

  sub_100019C6C(v263 + v643, v309, &unk_10029DAA0, &qword_10021E870);
  if ((v642)(v309, 1, v154) == 1)
  {
    v336 = v608;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v337 = *(v154 + 20);
    v338 = v612;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v336 + v337) = qword_100298568;
    v339 = (v642)(v309, 1, v154);

    if (v339 != 1)
    {
      sub_1000114D4(v309, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v336 = v608;
    sub_1001FD72C(v309, v608, type metadata accessor for EscrowInformation.Metadata);
    v338 = v612;
  }

  v340 = (*(v336 + *(v154 + 20)) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  swift_beginAccess();
  v342 = *v340;
  v341 = v340[1];

  sub_1001FD6CC(v336, type metadata accessor for EscrowInformation.Metadata);
  v343 = sub_100216964();

  [v639 setSerial:v343];

  sub_100019C6C(v263 + v643, v330, &unk_10029DAA0, &qword_10021E870);
  if ((v642)(v330, 1, v154) == 1)
  {
    v344 = v609;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v345 = *(v154 + 20);
    v346 = v611;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v344 + v345) = qword_100298568;
    v347 = (v642)(v330, 1, v154);

    if (v347 != 1)
    {
      sub_1000114D4(v330, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v344 = v609;
    sub_1001FD72C(v330, v609, type metadata accessor for EscrowInformation.Metadata);
    v346 = v611;
  }

  v348 = (*(v344 + *(v154 + 20)) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build);
  swift_beginAccess();
  v350 = *v348;
  v349 = v348[1];

  sub_1001FD6CC(v344, type metadata accessor for EscrowInformation.Metadata);
  v351 = sub_100216964();

  [v639 setBuild:v351];

  sub_100019C6C(v263 + v643, v338, &unk_10029DAA0, &qword_10021E870);
  if ((v642)(v338, 1, v154) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v352 = *(v154 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v346 + v352) = qword_100298568;
    v353 = (v642)(v338, 1, v154);

    if (v353 != 1)
    {
      sub_1000114D4(v338, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001FD72C(v338, v346, type metadata accessor for EscrowInformation.Metadata);
  }

  v354 = *(v346 + *(v154 + 20));
  v355 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  v356 = v613;
  sub_100019C6C(v354 + v355, v613, &qword_1002986A8, &qword_10021E880);
  v357 = *(v614 + 48);
  v358 = v614 + 48;
  LODWORD(v354) = v357(v356, 1, v621);
  sub_1000114D4(v356, &qword_1002986A8, &qword_10021E880);
  sub_1001FD6CC(v346, type metadata accessor for EscrowInformation.Metadata);
  if (v354 != 1)
  {
    type metadata accessor for PasscodeGen();
    v359 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v360 = [v359 initWithContext:v640];
    v361 = v553;
    sub_100019C6C(v641 + v643, v553, &unk_10029DAA0, &qword_10021E870);
    if ((v642)(v361, 1, v154) == 1)
    {
      v362 = v550;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v363 = *(v154 + 20);
      if (qword_1002974B8 != -1)
      {
        swift_once();
      }

      *(v362 + v363) = qword_100298568;
      v364 = v553;
      v365 = (v642)(v553, 1, v154);

      if (v365 != 1)
      {
        sub_1000114D4(v364, &unk_10029DAA0, &qword_10021E870);
      }
    }

    else
    {
      v362 = v550;
      sub_1001FD72C(v361, v550, type metadata accessor for EscrowInformation.Metadata);
    }

    v366 = *(v362 + *(v154 + 20));
    v367 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
    swift_beginAccess();
    v368 = v366 + v367;
    v369 = v552;
    sub_100019C6C(v368, v552, &qword_1002986A8, &qword_10021E880);
    v370 = v621;
    if (v357(v369, 1, v621) == 1)
    {
      v371 = v551;
      *v551 = 0;
      v372 = v371 + *(v370 + 5);
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v373 = v357(v369, 1, v370);
      v374 = v639;
      if (v373 != 1)
      {
        sub_1000114D4(v369, &qword_1002986A8, &qword_10021E880);
      }
    }

    else
    {
      v371 = v551;
      sub_1001FD72C(v369, v551, type metadata accessor for PasscodeGeneration);
      v374 = v639;
    }

    sub_1001FD6CC(v362, type metadata accessor for EscrowInformation.Metadata);
    v375 = *v371;
    sub_1001FD6CC(v371, type metadata accessor for PasscodeGeneration);
    if (v375 < 0)
    {
      __break(1u);
LABEL_222:
      swift_once();
      goto LABEL_84;
    }

    [v360 setValue:v375];
    [v374 setPasscodeGen:v360];
  }

  [v632 setEscrowMetadata:v639];
  type metadata accessor for EscrowClientMetadataMO();
  v376 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v640 = [v376 initWithContext:v640];
  v375 = v593;
  sub_100019C6C(v641 + v643, v593, &unk_10029DAA0, &qword_10021E870);
  if ((v642)(v375, 1, v154) != 1)
  {
    v358 = v592;
    sub_1001FD72C(v375, v592, type metadata accessor for EscrowInformation.Metadata);
    goto LABEL_87;
  }

  v358 = v592;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v374 = *(v154 + 20);
  if (qword_1002974B8 != -1)
  {
    goto LABEL_222;
  }

LABEL_84:
  *(v374 + v358) = qword_100298568;
  v377 = (v642)(v375, 1, v154);

  if (v377 != 1)
  {
    sub_1000114D4(v375, &unk_10029DAA0, &qword_10021E870);
  }

LABEL_87:
  v378 = *(v358 + *(v154 + 20));
  v379 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v380 = v378 + v379;
  v381 = v596;
  sub_100019C6C(v380, v596, &qword_100298660, &qword_10021E878);
  v382 = *(v599 + 48);
  v383 = v633;
  if (v382(v381, 1, v633) == 1)
  {
    v384 = v595;
    *v595 = 0u;
    v384[1] = 0u;
    *(v384 + 4) = 0xE000000000000000;
    *(v384 + 5) = 0;
    *(v384 + 6) = 0xE000000000000000;
    *(v384 + 7) = 0;
    *(v384 + 8) = 0xE000000000000000;
    *(v384 + 9) = 0;
    *(v384 + 10) = 0xE000000000000000;
    *(v384 + 11) = 0;
    *(v384 + 12) = 0xE000000000000000;
    *(v384 + 13) = 0;
    *(v384 + 14) = 0xE000000000000000;
    *(v384 + 15) = 0;
    *(v384 + 16) = 0xE000000000000000;
    *(v384 + 17) = 0;
    v385 = v384 + *(v383 + 60);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v386 = v638;
    (*(v637 + 7))(v384 + *(v383 + 64), 1, 1, v638);
    v387 = v382(v381, 1, v383);
    v388 = v590;
    if (v387 != 1)
    {
      sub_1000114D4(v381, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v384 = v595;
    sub_1001FD72C(v381, v595, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    v388 = v590;
    v386 = v638;
  }

  sub_1001FD6CC(v358, type metadata accessor for EscrowInformation.Metadata);
  v389 = v591;
  sub_100019C6C(v384 + *(v633 + 64), v591, &qword_10029D780, &qword_1002265D0);
  v390 = v627;
  v391 = v627(v389, 1, v386);
  v621 = v382;
  if (v391 == 1)
  {
    sub_100216494();
    sub_1001FD6CC(v384, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    v392 = v390(v389, 1, v386);
    v393 = v594;
    v394 = v386;
    if (v392 != 1)
    {
      sub_1000114D4(v389, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    sub_1001FD6CC(v384, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    (*(v637 + 4))(v388, v389, v386);
    v393 = v594;
    v394 = v386;
  }

  v395 = v634;
  sub_100216474();
  v629(v388, v394);
  v396 = sub_1002162F4().super.isa;
  v628(v395, v635);
  [v640 setSecureBackupMetadataTimestamp:v396];

  v397 = v619;
  sub_100019C6C(v641 + v643, v619, &unk_10029DAA0, &qword_10021E870);
  v398 = (v642)(v397, 1, v154);
  v399 = v598;
  if (v398 == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v400 = *(v154 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v393 + v400) = qword_100298568;
    v401 = v619;
    v402 = (v642)(v619, 1, v154);

    if (v402 != 1)
    {
      sub_1000114D4(v401, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001FD72C(v397, v393, type metadata accessor for EscrowInformation.Metadata);
  }

  v403 = *(v393 + *(v154 + 20));
  v404 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_100019C6C(v403 + v404, v399, &qword_100298660, &qword_10021E878);
  v405 = v633;
  v406 = v621;
  if ((v621)(v399, 1, v633) == 1)
  {
    v407 = v597;
    *v597 = 0u;
    v407[1] = 0u;
    *(v407 + 4) = 0xE000000000000000;
    *(v407 + 5) = 0;
    *(v407 + 6) = 0xE000000000000000;
    *(v407 + 7) = 0;
    *(v407 + 8) = 0xE000000000000000;
    *(v407 + 9) = 0;
    *(v407 + 10) = 0xE000000000000000;
    *(v407 + 11) = 0;
    *(v407 + 12) = 0xE000000000000000;
    *(v407 + 13) = 0;
    *(v407 + 14) = 0xE000000000000000;
    *(v407 + 15) = 0;
    *(v407 + 16) = 0xE000000000000000;
    *(v407 + 17) = 0;
    v408 = v407 + *(v405 + 60);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v637 + 7))(v407 + *(v405 + 64), 1, 1, v394);
    v409 = v406(v399, 1, v405) == 1;
    v410 = v399;
    v411 = v642;
    if (!v409)
    {
      sub_1000114D4(v410, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v407 = v597;
    sub_1001FD72C(v399, v597, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    v411 = v642;
  }

  sub_1001FD6CC(v393, type metadata accessor for EscrowInformation.Metadata);
  v412 = *v407;
  sub_1001FD6CC(v407, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  if (v412 < 0)
  {
    goto LABEL_216;
  }

  [v640 setSecureBackupNumericPassphraseLength:v412];
  v413 = v587;
  sub_100019C6C(v641 + v643, v587, &unk_10029DAA0, &qword_10021E870);
  if (v411(v413, 1, v154) == 1)
  {
    v414 = v626;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v415 = *(v154 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v414 + v415) = qword_100298568;
    v416 = v411(v413, 1, v154);

    if (v416 != 1)
    {
      sub_1000114D4(v413, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v414 = v626;
    sub_1001FD72C(v413, v626, type metadata accessor for EscrowInformation.Metadata);
  }

  v417 = *(v414 + *(v154 + 20));
  v418 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v419 = v589;
  sub_100019C6C(v417 + v418, v589, &qword_100298660, &qword_10021E878);
  if (v406(v419, 1, v405) == 1)
  {
    v420 = v588;
    *v588 = 0u;
    v420[1] = 0u;
    *(v420 + 4) = 0xE000000000000000;
    *(v420 + 5) = 0;
    *(v420 + 6) = 0xE000000000000000;
    *(v420 + 7) = 0;
    *(v420 + 8) = 0xE000000000000000;
    *(v420 + 9) = 0;
    *(v420 + 10) = 0xE000000000000000;
    *(v420 + 11) = 0;
    *(v420 + 12) = 0xE000000000000000;
    *(v420 + 13) = 0;
    *(v420 + 14) = 0xE000000000000000;
    *(v420 + 15) = 0;
    *(v420 + 16) = 0xE000000000000000;
    *(v420 + 17) = 0;
    v421 = v420 + *(v405 + 60);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v637 + 7))(v420 + *(v405 + 64), 1, 1, v638);
    if (v406(v419, 1, v405) != 1)
    {
      sub_1000114D4(v419, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v420 = v588;
    sub_1001FD72C(v419, v588, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v626, type metadata accessor for EscrowInformation.Metadata);
  v422 = *(v420 + 1);
  sub_1001FD6CC(v420, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  if (v422 < 0)
  {
    goto LABEL_217;
  }

  [v640 setSecureBackupUsesComplexPassphrase:v422];
  v423 = v585;
  sub_100019C6C(v641 + v643, v585, &unk_10029DAA0, &qword_10021E870);
  if (v411(v423, 1, v154) == 1)
  {
    v424 = v625;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v425 = *(v154 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v424 + v425) = qword_100298568;
    v426 = v411(v423, 1, v154);

    if (v426 != 1)
    {
      sub_1000114D4(v423, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v424 = v625;
    sub_1001FD72C(v423, v625, type metadata accessor for EscrowInformation.Metadata);
  }

  v427 = *(v424 + *(v154 + 20));
  v428 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v429 = v586;
  sub_100019C6C(v427 + v428, v586, &qword_100298660, &qword_10021E878);
  if (v406(v429, 1, v405) == 1)
  {
    v430 = v584;
    *v584 = 0u;
    v430[1] = 0u;
    *(v430 + 4) = 0xE000000000000000;
    *(v430 + 5) = 0;
    *(v430 + 6) = 0xE000000000000000;
    *(v430 + 7) = 0;
    *(v430 + 8) = 0xE000000000000000;
    *(v430 + 9) = 0;
    *(v430 + 10) = 0xE000000000000000;
    *(v430 + 11) = 0;
    *(v430 + 12) = 0xE000000000000000;
    *(v430 + 13) = 0;
    *(v430 + 14) = 0xE000000000000000;
    *(v430 + 15) = 0;
    *(v430 + 16) = 0xE000000000000000;
    *(v430 + 17) = 0;
    v431 = v430 + *(v405 + 60);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v637 + 7))(v430 + *(v405 + 64), 1, 1, v638);
    v432 = v406(v429, 1, v405);
    v433 = v618;
    if (v432 != 1)
    {
      sub_1000114D4(v429, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v430 = v584;
    sub_1001FD72C(v429, v584, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    v433 = v618;
  }

  sub_1001FD6CC(v625, type metadata accessor for EscrowInformation.Metadata);
  v434 = *(v430 + 2);
  sub_1001FD6CC(v430, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  if (v434 < 0)
  {
    goto LABEL_218;
  }

  [v640 setSecureBackupUsesNumericPassphrase:v434];
  v435 = v556;
  sub_100019C6C(v641 + v643, v556, &unk_10029DAA0, &qword_10021E870);
  if (v411(v435, 1, v154) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v436 = *(v154 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v433 + v436) = qword_100298568;
    v437 = v411(v435, 1, v154);

    if (v437 != 1)
    {
      sub_1000114D4(v435, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001FD72C(v435, v433, type metadata accessor for EscrowInformation.Metadata);
  }

  v438 = *(v433 + *(v154 + 20));
  v439 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v440 = v438 + v439;
  v441 = v560;
  sub_100019C6C(v440, v560, &qword_100298660, &qword_10021E878);
  if (v406(v441, 1, v405) == 1)
  {
    v442 = v559;
    *v559 = 0u;
    v442[1] = 0u;
    *(v442 + 4) = 0xE000000000000000;
    *(v442 + 5) = 0;
    *(v442 + 6) = 0xE000000000000000;
    *(v442 + 7) = 0;
    *(v442 + 8) = 0xE000000000000000;
    *(v442 + 9) = 0;
    *(v442 + 10) = 0xE000000000000000;
    *(v442 + 11) = 0;
    *(v442 + 12) = 0xE000000000000000;
    *(v442 + 13) = 0;
    *(v442 + 14) = 0xE000000000000000;
    *(v442 + 15) = 0;
    *(v442 + 16) = 0xE000000000000000;
    *(v442 + 17) = 0;
    v443 = v442 + *(v405 + 60);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v637 + 7))(v442 + *(v405 + 64), 1, 1, v638);
    v444 = v406(v441, 1, v405);
    v445 = v442;
    v433 = v618;
    if (v444 != 1)
    {
      sub_1000114D4(v441, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v445 = v559;
    sub_1001FD72C(v441, v559, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v433, type metadata accessor for EscrowInformation.Metadata);
  v447 = *(v445 + 3);
  v446 = *(v445 + 4);

  sub_1001FD6CC(v445, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v448 = sub_100216964();

  [v640 setDeviceColor:v448];

  v449 = v558;
  sub_100019C6C(v641 + v643, v558, &unk_10029DAA0, &qword_10021E870);
  if (v411(v449, 1, v154) == 1)
  {
    v450 = v557;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v451 = *(v154 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v450 + v451) = qword_100298568;
    v452 = v411(v449, 1, v154);

    if (v452 != 1)
    {
      sub_1000114D4(v449, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v450 = v557;
    sub_1001FD72C(v449, v557, type metadata accessor for EscrowInformation.Metadata);
  }

  v453 = *(v450 + *(v154 + 20));
  v454 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v455 = v453 + v454;
  v456 = v564;
  sub_100019C6C(v455, v564, &qword_100298660, &qword_10021E878);
  if (v406(v456, 1, v405) == 1)
  {
    v457 = v563;
    *v563 = 0u;
    v457[1] = 0u;
    *(v457 + 4) = 0xE000000000000000;
    *(v457 + 5) = 0;
    *(v457 + 6) = 0xE000000000000000;
    *(v457 + 7) = 0;
    *(v457 + 8) = 0xE000000000000000;
    *(v457 + 9) = 0;
    *(v457 + 10) = 0xE000000000000000;
    *(v457 + 11) = 0;
    *(v457 + 12) = 0xE000000000000000;
    *(v457 + 13) = 0;
    *(v457 + 14) = 0xE000000000000000;
    *(v457 + 15) = 0;
    *(v457 + 16) = 0xE000000000000000;
    *(v457 + 17) = 0;
    v458 = v457 + *(v405 + 60);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v637 + 7))(v457 + *(v405 + 64), 1, 1, v638);
    if (v406(v456, 1, v405) != 1)
    {
      sub_1000114D4(v456, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v457 = v563;
    sub_1001FD72C(v456, v563, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v450, type metadata accessor for EscrowInformation.Metadata);
  v459 = *(v457 + 5);
  v460 = *(v457 + 6);

  sub_1001FD6CC(v457, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v461 = sub_100216964();

  [v640 setDeviceEnclosureColor:v461];

  v462 = v562;
  sub_100019C6C(v641 + v643, v562, &unk_10029DAA0, &qword_10021E870);
  if (v411(v462, 1, v154) == 1)
  {
    v463 = v561;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v464 = *(v154 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v463 + v464) = qword_100298568;
    v465 = v411(v462, 1, v154);

    if (v465 != 1)
    {
      sub_1000114D4(v462, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v463 = v561;
    sub_1001FD72C(v462, v561, type metadata accessor for EscrowInformation.Metadata);
  }

  v466 = *(v463 + *(v154 + 20));
  v467 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v468 = v567;
  sub_100019C6C(v466 + v467, v567, &qword_100298660, &qword_10021E878);
  if (v406(v468, 1, v405) == 1)
  {
    v469 = v566;
    *v566 = 0u;
    v469[1] = 0u;
    *(v469 + 4) = 0xE000000000000000;
    *(v469 + 5) = 0;
    *(v469 + 6) = 0xE000000000000000;
    *(v469 + 7) = 0;
    *(v469 + 8) = 0xE000000000000000;
    *(v469 + 9) = 0;
    *(v469 + 10) = 0xE000000000000000;
    *(v469 + 11) = 0;
    *(v469 + 12) = 0xE000000000000000;
    *(v469 + 13) = 0;
    *(v469 + 14) = 0xE000000000000000;
    *(v469 + 15) = 0;
    *(v469 + 16) = 0xE000000000000000;
    *(v469 + 17) = 0;
    v470 = v469 + *(v405 + 60);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v637 + 7))(v469 + *(v405 + 64), 1, 1, v638);
    if (v406(v468, 1, v405) != 1)
    {
      sub_1000114D4(v468, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v469 = v566;
    sub_1001FD72C(v468, v566, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v463, type metadata accessor for EscrowInformation.Metadata);
  v471 = v469;
  v472 = *(v469 + 7);
  v473 = *(v469 + 8);

  sub_1001FD6CC(v471, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v474 = sub_100216964();

  [v640 setDeviceMid:v474];

  v475 = v565;
  sub_100019C6C(v641 + v643, v565, &unk_10029DAA0, &qword_10021E870);
  if (v411(v475, 1, v154) == 1)
  {
    v476 = v622;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v477 = *(v154 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v476 + v477) = qword_100298568;
    v478 = v411(v475, 1, v154);

    if (v478 != 1)
    {
      sub_1000114D4(v475, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v476 = v622;
    sub_1001FD72C(v475, v622, type metadata accessor for EscrowInformation.Metadata);
  }

  v479 = *(v476 + *(v154 + 20));
  v480 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v481 = v571;
  sub_100019C6C(v479 + v480, v571, &qword_100298660, &qword_10021E878);
  if (v406(v481, 1, v405) == 1)
  {
    v482 = v570;
    *v570 = 0u;
    v482[1] = 0u;
    *(v482 + 4) = 0xE000000000000000;
    *(v482 + 5) = 0;
    *(v482 + 6) = 0xE000000000000000;
    *(v482 + 7) = 0;
    *(v482 + 8) = 0xE000000000000000;
    *(v482 + 9) = 0;
    *(v482 + 10) = 0xE000000000000000;
    *(v482 + 11) = 0;
    *(v482 + 12) = 0xE000000000000000;
    *(v482 + 13) = 0;
    *(v482 + 14) = 0xE000000000000000;
    *(v482 + 15) = 0;
    *(v482 + 16) = 0xE000000000000000;
    *(v482 + 17) = 0;
    v483 = v482 + *(v405 + 60);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v637 + 7))(v482 + *(v405 + 64), 1, 1, v638);
    if (v406(v481, 1, v405) != 1)
    {
      sub_1000114D4(v481, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v482 = v570;
    sub_1001FD72C(v481, v570, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v622, type metadata accessor for EscrowInformation.Metadata);
  v484 = *(v482 + 9);
  v485 = *(v482 + 10);

  sub_1001FD6CC(v482, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v486 = sub_100216964();

  [v640 setDeviceModel:v486];

  v487 = v569;
  sub_100019C6C(v641 + v643, v569, &unk_10029DAA0, &qword_10021E870);
  if (v411(v487, 1, v154) == 1)
  {
    v488 = v568;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v489 = *(v154 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v488 + v489) = qword_100298568;
    v490 = v411(v487, 1, v154);

    if (v490 != 1)
    {
      sub_1000114D4(v487, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v488 = v568;
    sub_1001FD72C(v487, v568, type metadata accessor for EscrowInformation.Metadata);
  }

  v491 = *(v488 + *(v154 + 20));
  v492 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v493 = v491 + v492;
  v494 = v574;
  sub_100019C6C(v493, v574, &qword_100298660, &qword_10021E878);
  if (v406(v494, 1, v405) == 1)
  {
    v495 = v573;
    *v573 = 0u;
    v495[1] = 0u;
    *(v495 + 4) = 0xE000000000000000;
    *(v495 + 5) = 0;
    *(v495 + 6) = 0xE000000000000000;
    *(v495 + 7) = 0;
    *(v495 + 8) = 0xE000000000000000;
    *(v495 + 9) = 0;
    *(v495 + 10) = 0xE000000000000000;
    *(v495 + 11) = 0;
    *(v495 + 12) = 0xE000000000000000;
    *(v495 + 13) = 0;
    *(v495 + 14) = 0xE000000000000000;
    *(v495 + 15) = 0;
    *(v495 + 16) = 0xE000000000000000;
    *(v495 + 17) = 0;
    v496 = v495 + *(v405 + 60);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v637 + 7))(v495 + *(v405 + 64), 1, 1, v638);
    if (v406(v494, 1, v405) != 1)
    {
      sub_1000114D4(v494, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v495 = v573;
    sub_1001FD72C(v494, v573, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v488, type metadata accessor for EscrowInformation.Metadata);
  v497 = *(v495 + 11);
  v498 = *(v495 + 12);

  sub_1001FD6CC(v495, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v499 = sub_100216964();

  [v640 setDeviceModelClass:v499];

  v500 = v572;
  sub_100019C6C(v641 + v643, v572, &unk_10029DAA0, &qword_10021E870);
  if (v411(v500, 1, v154) == 1)
  {
    v501 = v623;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v502 = *(v154 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v501 + v502) = qword_100298568;
    v503 = v411(v500, 1, v154);

    if (v503 != 1)
    {
      sub_1000114D4(v500, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v501 = v623;
    sub_1001FD72C(v500, v623, type metadata accessor for EscrowInformation.Metadata);
  }

  v504 = *(v501 + *(v154 + 20));
  v505 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v506 = v577;
  sub_100019C6C(v504 + v505, v577, &qword_100298660, &qword_10021E878);
  if (v406(v506, 1, v405) == 1)
  {
    v507 = v576;
    *v576 = 0u;
    v507[1] = 0u;
    *(v507 + 4) = 0xE000000000000000;
    *(v507 + 5) = 0;
    *(v507 + 6) = 0xE000000000000000;
    *(v507 + 7) = 0;
    *(v507 + 8) = 0xE000000000000000;
    *(v507 + 9) = 0;
    *(v507 + 10) = 0xE000000000000000;
    *(v507 + 11) = 0;
    *(v507 + 12) = 0xE000000000000000;
    *(v507 + 13) = 0;
    *(v507 + 14) = 0xE000000000000000;
    *(v507 + 15) = 0;
    *(v507 + 16) = 0xE000000000000000;
    *(v507 + 17) = 0;
    v508 = v507 + *(v405 + 60);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v637 + 7))(v507 + *(v405 + 64), 1, 1, v638);
    if (v406(v506, 1, v405) != 1)
    {
      sub_1000114D4(v506, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v507 = v576;
    sub_1001FD72C(v506, v576, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v623, type metadata accessor for EscrowInformation.Metadata);
  v509 = v507;
  v510 = *(v507 + 13);
  v511 = *(v507 + 14);

  sub_1001FD6CC(v509, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v512 = sub_100216964();

  [v640 setDeviceModelVersion:v512];

  v513 = v575;
  sub_100019C6C(v641 + v643, v575, &unk_10029DAA0, &qword_10021E870);
  if (v411(v513, 1, v154) == 1)
  {
    v514 = v624;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v515 = *(v154 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v514 + v515) = qword_100298568;
    v516 = v411(v513, 1, v154);

    if (v516 != 1)
    {
      sub_1000114D4(v513, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v514 = v624;
    sub_1001FD72C(v513, v624, type metadata accessor for EscrowInformation.Metadata);
  }

  v517 = *(v514 + *(v154 + 20));
  v518 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v519 = v517 + v518;
  v520 = v581;
  sub_100019C6C(v519, v581, &qword_100298660, &qword_10021E878);
  if (v406(v520, 1, v405) == 1)
  {
    v521 = v580;
    *v580 = 0u;
    v521[1] = 0u;
    *(v521 + 4) = 0xE000000000000000;
    *(v521 + 5) = 0;
    *(v521 + 6) = 0xE000000000000000;
    *(v521 + 7) = 0;
    *(v521 + 8) = 0xE000000000000000;
    *(v521 + 9) = 0;
    *(v521 + 10) = 0xE000000000000000;
    *(v521 + 11) = 0;
    *(v521 + 12) = 0xE000000000000000;
    *(v521 + 13) = 0;
    *(v521 + 14) = 0xE000000000000000;
    *(v521 + 15) = 0;
    *(v521 + 16) = 0xE000000000000000;
    *(v521 + 17) = 0;
    v522 = v521 + *(v405 + 60);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v637 + 7))(v521 + *(v405 + 64), 1, 1, v638);
    v523 = v521;
    if (v406(v520, 1, v405) != 1)
    {
      sub_1000114D4(v520, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v523 = v580;
    sub_1001FD72C(v520, v580, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v624, type metadata accessor for EscrowInformation.Metadata);
  v524 = *(v523 + 15);
  v525 = *(v523 + 16);

  sub_1001FD6CC(v523, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v526 = sub_100216964();

  [v640 setDeviceName:v526];

  v527 = v579;
  sub_100019C6C(v641 + v643, v579, &unk_10029DAA0, &qword_10021E870);
  if (v411(v527, 1, v154) == 1)
  {
    v528 = v578;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v529 = *(v154 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v528 + v529) = qword_100298568;
    v530 = v411(v527, 1, v154);

    if (v530 != 1)
    {
      sub_1000114D4(v527, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v528 = v578;
    sub_1001FD72C(v527, v578, type metadata accessor for EscrowInformation.Metadata);
  }

  v531 = *(v528 + *(v154 + 20));
  v532 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v533 = v531 + v532;
  v534 = v583;
  sub_100019C6C(v533, v583, &qword_100298660, &qword_10021E878);
  if (v406(v534, 1, v405) == 1)
  {
    v535 = v582;
    *v582 = 0u;
    v535[1] = 0u;
    *(v535 + 4) = 0xE000000000000000;
    *(v535 + 5) = 0;
    *(v535 + 6) = 0xE000000000000000;
    *(v535 + 7) = 0;
    *(v535 + 8) = 0xE000000000000000;
    *(v535 + 9) = 0;
    *(v535 + 10) = 0xE000000000000000;
    *(v535 + 11) = 0;
    *(v535 + 12) = 0xE000000000000000;
    *(v535 + 13) = 0;
    *(v535 + 14) = 0xE000000000000000;
    *(v535 + 15) = 0;
    *(v535 + 16) = 0xE000000000000000;
    *(v535 + 17) = 0;
    v536 = v535 + *(v405 + 60);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v637 + 7))(v535 + *(v405 + 64), 1, 1, v638);
    v537 = v406(v534, 1, v405);
    v538 = v639;
    if (v537 != 1)
    {
      sub_1000114D4(v534, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v535 = v582;
    sub_1001FD72C(v534, v582, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    v538 = v639;
  }

  sub_1001FD6CC(v528, type metadata accessor for EscrowInformation.Metadata);
  v539 = *(v535 + 17);
  sub_1001FD6CC(v535, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  if ((v539 & 0x8000000000000000) == 0)
  {
    v540 = v640;
    [v640 setDevicePlatform:v539];
    [v538 setClientMetadata:v540];
    if (qword_100297548 == -1)
    {
      goto LABEL_210;
    }

    goto LABEL_220;
  }

LABEL_219:
  __break(1u);
LABEL_220:
  swift_once();
LABEL_210:
  v541 = sub_100216774();
  sub_100002648(v541, qword_10029E7E0);
  v542 = v632;
  v543 = sub_100216754();
  v544 = sub_100216C54();

  if (os_log_type_enabled(v543, v544))
  {
    v545 = swift_slowAlloc();
    v546 = swift_slowAlloc();
    *v545 = 138543362;
    *(v545 + 4) = v542;
    *v546 = v542;
    v547 = v542;
    _os_log_impl(&_mh_execute_header, v543, v544, "setEscrowRecord saving new escrow record: %{public}@", v545, 0xCu);
    sub_1000114D4(v546, &qword_10029D580, &unk_10021CCC0);
  }

  v548 = (&off_100288EE8)[v554];
  v549 = *(v555 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  [v549 *v548];
}

id sub_1001FBCB8()
{
  v1 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v2 = [*(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) fullyViableEscrowRecords];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for EscrowRecordMO();
    sub_1001FC8B0();
    sub_100216BA4();
  }

  v4 = [*(v0 + v1) partiallyViableEscrowRecords];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for EscrowRecordMO();
    sub_1001FC8B0();
    sub_100216BA4();
  }

  v6 = objc_allocWithZone(TPCachedViableBottles);
  isa = sub_100216B14().super.isa;

  v8 = sub_100216B14().super.isa;

  v9 = [v6 initWithViableBottles:isa partialBottles:v8];

  return v9;
}

void sub_1001FBE54()
{
  v1 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v2 = [*(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) fullyViableEscrowRecords];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for EscrowRecordMO();
    sub_1001FC8B0();
    sub_100216BA4();
  }

  v4 = [*(v0 + v1) partiallyViableEscrowRecords];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for EscrowRecordMO();
    sub_1001FC8B0();
    sub_100216BA4();
  }

  v6 = [*(v0 + v1) legacyEscrowRecords];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for EscrowRecordMO();
    sub_1001FC8B0();
    sub_100216BA4();
  }
}

uint64_t sub_1001FC534()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_10029E7E0);
  sub_100002648(v0, qword_10029E7E0);
  return sub_100216764();
}

uint64_t sub_1001FC5B8(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_10010EEEC(0xD00000000000001ELL, 0x800000010023D900);
  if (a2)
  {
    if (qword_100297548 != -1)
    {
      swift_once();
    }

    v7 = sub_100216774();
    sub_100002648(v7, qword_10029E7E0);
    swift_errorRetain();
    v8 = sub_100216754();
    v9 = sub_100216C74();
    sub_1001ABC14(a1, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136446210;
      v20 = v11;
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v21._countAndFlagsBits = sub_100216994();
      sub_100216A14(v21);

      sub_1001ABC14(a1, 1);
      v12 = sub_100005FB0(0x203A726F727265, 0xE700000000000000, &v20);

      *(v10 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "fetchEscrowRecords failed with %{public}s", v10, 0xCu);
      sub_100006128(v11);
    }

    v13 = 0;
    v14 = a1;
  }

  else
  {
    if (qword_100297548 != -1)
    {
      swift_once();
    }

    v15 = sub_100216774();
    sub_100002648(v15, qword_10029E7E0);

    v16 = sub_100216754();
    v17 = sub_100216C54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134349056;
      *(v18 + 4) = *(a1 + 16);
      sub_1001ABC14(a1, 0);
      _os_log_impl(&_mh_execute_header, v16, v17, "fetchEscrowRecords succeeded with %{public}ld records", v18, 0xCu);
    }

    else
    {
      sub_1001ABC14(a1, 0);
    }

    v13 = a1;
    v14 = 0;
  }

  return a4(v13, v14);
}

unint64_t sub_1001FC8B0()
{
  result = qword_10029DA88;
  if (!qword_10029DA88)
  {
    type metadata accessor for EscrowRecordMO();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029DA88);
  }

  return result;
}

uint64_t sub_1001FC908(void *a1, unsigned __int8 a2)
{
  v4 = sub_100216384();
  v122 = *(v4 - 8);
  v5 = *(v122 + 64);
  v7 = __chkstk_darwin(v4, v6);
  v117 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7, v9);
  v118 = &v117 - v11;
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v117 - v14;
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v117 - v18;
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v117 - v22;
  __chkstk_darwin(v21, v24);
  v26 = &v117 - v25;
  v27 = [objc_allocWithZone(OTEscrowRecord) init];
  v28 = [objc_allocWithZone(OTEscrowRecordMetadata) init];
  v29 = [objc_allocWithZone(OTEscrowRecordMetadataClientMetadata) init];
  if (!v27)
  {

    return v27;
  }

  v120 = v4;
  v121 = v29;
  v119 = v27;
  v30 = v27;
  v31 = [a1 creationDate];
  if (v31)
  {
    v32 = v31;
    sub_100216344();

    v33 = v23;
    v34 = v120;
    (*(v122 + 32))(v26, v33, v120);
    result = sub_100216334();
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v36 <= -1.0)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v36 >= 1.84467441e19)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    [v30 setCreationDate:v36];
    (*(v122 + 8))(v26, v34);
  }

  v37 = [a1 label];
  if (v37)
  {
    v38 = v37;
    sub_100216974();
  }

  v39 = sub_100216964();

  [v30 setLabel:v39];

  result = [a1 remainingAttempts];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_79;
  }

  [v30 setRemainingAttempts:result];
  result = [a1 silentAttemptAllowed];
  if (result < 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  [v30 setSilentAttemptAllowed:result];
  [v30 setRecordStatus:{objc_msgSend(a1, "recordStatus") != 0}];
  v40 = [a1 federationID];
  if (v40)
  {
    v41 = v40;
    sub_100216974();
  }

  v42 = sub_100216964();

  [v30 setFederationId:v42];

  v43 = [a1 expectedFederationID];
  if (v43)
  {
    v44 = v43;
    sub_100216974();
  }

  v45 = v121;
  v46 = sub_100216964();

  [v30 setExpectedFederationId:v46];

  [v30 setRecordViability:a2];
  v47 = [a1 sosViability];
  if (v47 == 2)
  {
    v48 = 2;
  }

  else
  {
    v48 = v47 == 1;
  }

  [v30 setViabilityStatus:v48];
  if (!v28)
  {
    goto LABEL_76;
  }

  v49 = [a1 escrowMetadata];
  if (!v49)
  {
LABEL_75:
    v116 = v28;
    [v30 setEscrowInformationMetadata:v116];

LABEL_76:
    return v119;
  }

  v50 = v49;
  v51 = [v49 backupKeybagDigest];
  if (v51)
  {
    v52 = v51;
    v53 = sub_100216224();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0xC000000000000000;
  }

  isa = sub_100216204().super.isa;
  sub_100002BF0(v53, v55);
  [v28 setBackupKeybagDigest:isa];

  v57 = [v50 secureBackupTimestamp];
  v58 = v120;
  if (v57)
  {
    v59 = v57;
    sub_100216344();

    (*(v122 + 32))(v19, v15, v58);
    result = sub_100216334();
    if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (v60 <= -1.0)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    if (v60 >= 1.84467441e19)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    [v28 setSecureBackupTimestamp:v60];
    (*(v122 + 8))(v19, v58);
  }

  result = [v50 secureBackupUsesMultipleiCSCS];
  if (result < 0)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  [v28 setSecureBackupUsesMultipleIcscs:result];
  v61 = [v50 bottleID];
  if (v61)
  {
    v62 = v61;
    sub_100216974();
  }

  v63 = sub_100216964();

  [v28 setBottleId:v63];

  v64 = [v50 escrowedSPKI];
  if (v64)
  {
    v65 = v64;
    v66 = sub_100216224();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0xC000000000000000;
  }

  v69 = sub_100216204().super.isa;
  sub_100002BF0(v66, v68);
  [v28 setEscrowedSpki:v69];

  v70 = [v50 peerInfo];
  if (v70)
  {
    v71 = v70;
    v72 = sub_100216224();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 0xC000000000000000;
  }

  v75 = sub_100216204().super.isa;
  sub_100002BF0(v72, v74);
  [v28 setPeerInfo:v75];

  v76 = [v50 serial];
  if (v76)
  {
    v77 = v76;
    sub_100216974();
  }

  v78 = sub_100216964();

  [v28 setSerial:v78];

  v79 = [v50 build];
  if (v79)
  {
    v80 = v79;
    sub_100216974();
  }

  v45 = v121;
  v81 = sub_100216964();

  [v28 setBuild:v81];

  v82 = [v50 passcodeGen];
  if (v82)
  {
    v83 = v82;
    v84 = [objc_allocWithZone(OTEscrowRecordMetadataPasscodeGeneration) init];
    if (!v84)
    {
LABEL_46:

      goto LABEL_47;
    }

    v85 = v84;
    result = [v83 value];
    if ((result & 0x8000000000000000) == 0)
    {
      [v85 setValue:result];
      v86 = v85;
      [v28 setPasscodeGeneration:v86];

      goto LABEL_46;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_47:
  if (!v45)
  {
LABEL_74:
    [v28 setClientMetadata:v45];

    goto LABEL_75;
  }

  v87 = v45;
  v88 = [v50 clientMetadata];
  if (!v88)
  {
LABEL_73:

    goto LABEL_74;
  }

  v89 = v88;
  v90 = [v88 deviceMid];
  if (v90)
  {
    v91 = v90;
    sub_100216974();
  }

  v92 = sub_100216964();

  [v87 setDeviceMid:v92];

  v93 = [v89 deviceColor];
  if (v93)
  {
    v94 = v93;
    sub_100216974();
  }

  v95 = sub_100216964();

  [v87 setDeviceColor:v95];

  v96 = [v89 deviceModel];
  if (v96)
  {
    v97 = v96;
    sub_100216974();
  }

  v98 = sub_100216964();

  [v87 setDeviceModel:v98];

  v99 = [v89 deviceName];
  if (v99)
  {
    v100 = v99;
    sub_100216974();
  }

  v101 = sub_100216964();

  [v87 setDeviceName:v101];

  result = [v89 devicePlatform];
  if (result < 0)
  {
    goto LABEL_88;
  }

  [v87 setDevicePlatform:result];
  v102 = [v89 deviceModelClass];
  if (v102)
  {
    v103 = v102;
    sub_100216974();
  }

  v104 = sub_100216964();

  [v87 setDeviceModelClass:v104];

  v105 = [v89 deviceModelVersion];
  if (v105)
  {
    v106 = v105;
    sub_100216974();
  }

  v107 = sub_100216964();

  [v87 setDeviceModelVersion:v107];

  v108 = [v89 deviceEnclosureColor];
  if (v108)
  {
    v109 = v108;
    sub_100216974();
  }

  v45 = v121;
  v110 = sub_100216964();

  [v87 setDeviceEnclosureColor:v110];

  v111 = [v89 secureBackupMetadataTimestamp];
  if (!v111)
  {
LABEL_69:
    result = [v89 secureBackupUsesComplexPassphrase];
    if ((result & 0x8000000000000000) == 0)
    {
      [v87 setSecureBackupUsesComplexPassphrase:result];
      result = [v89 secureBackupUsesNumericPassphrase];
      if ((result & 0x8000000000000000) == 0)
      {
        [v87 setSecureBackupUsesNumericPassphrase:result];
        result = [v89 secureBackupNumericPassphraseLength];
        if ((result & 0x8000000000000000) == 0)
        {
          [v87 setSecureBackupNumericPassphraseLength:result];

          goto LABEL_73;
        }

        goto LABEL_91;
      }

LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v112 = v117;
  v113 = v111;
  sub_100216344();

  v114 = v118;
  (*(v122 + 32))(v118, v112, v120);
  result = sub_100216334();
  if ((*&v115 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v115 <= -1.0)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (v115 < 1.84467441e19)
  {
    [v87 setSecureBackupMetadataTimestamp:v115];
    (*(v122 + 8))(v114, v120);
    goto LABEL_69;
  }

LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_1001FD6CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001FD72C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001FD794()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_10029E7F8);
  sub_100002648(v0, qword_10029E7F8);
  return sub_100216764();
}

uint64_t sub_1001FD814(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, unint64_t a8)
{
  v16 = sub_100216074();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v201 = 0x4800000000;
  v202 = sub_100216044();
  sub_100200D60(&v201);
  if (!v8)
  {
    v189 = a3;
    v190 = a1;
    v192 = a2;
    v193 = a4;
    v194 = a6;
    v196 = a5;
    v20 = v201;
    v21 = v202;
    v22 = v202 | 0x4000000000000000;
    v23 = &v199[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_secret];
    *v23 = v201;
    v23[1] = v22;
    objc_allocWithZone(type metadata accessor for EscrowKeys());
    sub_100012558(v20, v21 | 0x4000000000000000);

    v24 = sub_1001F3968(v20, v21 | 0x4000000000000000, a7, a8);
    v188 = v23;
    v25 = OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowKeys;
    *&v199[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowKeys] = v24;
    v19 = [objc_allocWithZone(OTBottleContents) init];
    if (!v19)
    {
      v42 = v199;

      sub_100200A30();
      swift_allocError();
      *v104 = 3;
      swift_willThrow();

      v105 = 0;
      LODWORD(v51) = 0;
      v106 = v188;
      goto LABEL_25;
    }

    v26 = [objc_allocWithZone(OTPrivateKey) init];
    if (!v26)
    {

      sub_100200A30();
      swift_allocError();
      *v107 = 5;
      swift_willThrow();

      v105 = 0;
      LODWORD(v51) = 0;
      v19 = 0;
      v42 = v199;
      v106 = v188;
      goto LABEL_25;
    }

    v27 = v26;
    v186 = v19;
    v187 = v25;
    [v26 setKeyType:1];
    v28 = [v196 keyData];
    v29 = sub_100216224();
    v31 = v30;

    isa = sub_100216204().super.isa;
    sub_100002BF0(v29, v31);
    [v27 setKeyData:isa];

    v33 = [objc_allocWithZone(OTPrivateKey) init];
    if (!v33)
    {

      sub_100200A30();
      swift_allocError();
      *v108 = 5;
      swift_willThrow();

      v105 = 0;
      LODWORD(v51) = 0;
      v19 = 0;
      v42 = v199;
LABEL_24:
      v25 = v187;
      v106 = v188;
      goto LABEL_25;
    }

    v34 = v33;
    [v33 setKeyType:1];
    v35 = [v194 keyData];
    v36 = sub_100216224();
    v38 = v37;

    v39 = sub_100216204().super.isa;
    sub_100002BF0(v36, v38);
    [v34 setKeyData:v39];

    [v186 setPeerSigningPrivKey:v27];
    [v186 setPeerEncryptionPrivKey:v34];
    v40 = [v186 data];
    v41 = v34;
    v42 = v199;
    if (v40)
    {
      v184 = v27;
      v185 = v41;
      v43 = v40;
      v44 = sub_100216224();
      v46 = v45;

      v47 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(objc_opt_self(), "aes256BitSize")}];
      v48 = [objc_allocWithZone(_SFAuthenticatedEncryptionOperation) initWithKeySpecifier:v47];

      v49 = sub_100216204().super.isa;
      v50 = *(*&v199[v187] + OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_symmetricKey);
      v201 = 0;
      v51 = [v48 encrypt:v49 withKey:v50 error:&v201];

      v52 = v201;
      if (!v51)
      {
        v110 = v201;

        sub_100216154();

        swift_willThrow();

        sub_100002BF0(v44, v46);

        v105 = 0;
LABEL_23:
        v19 = 0;
        goto LABEL_24;
      }

      v183 = v46;
      objc_opt_self();
      v53 = swift_dynamicCastObjCClass();
      if (v53)
      {
        v171 = v53;
        v25 = v187;
        v54 = *(*&v199[v187] + OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_signingKey);
        v55 = v52;
        v180 = v51;
        v56 = [v54 publicKey];
        objc_opt_self();
        v172 = swift_dynamicCastObjCClass();
        if (!v172)
        {
          goto LABEL_47;
        }

        v178 = v56;
        v56 = [*(*&v199[v187] + OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_encryptionKey) publicKey];
        objc_opt_self();
        v177 = v56;
        v175 = v44;
        v181 = swift_dynamicCastObjCClass();
        if (!v181)
        {
          goto LABEL_47;
        }

        v57 = [v196 publicKey];
        objc_opt_self();
        v174 = swift_dynamicCastObjCClass();
        if (!v174 || (v179 = v48, v176 = v57, v57 = [v194 publicKey], objc_opt_self(), (v58 = swift_dynamicCastObjCClass()) == 0))
        {

          goto LABEL_50;
        }

        v59 = v58;
        v60 = [objc_allocWithZone(OTBottle) init];
        if (v60)
        {
          v61 = v60;
          v62 = sub_100216964();
          [v61 setPeerID:v62];

          v63 = sub_100216964();
          [v61 setBottleID:v63];

          v64 = [v172 encodeSubjectPublicKeyInfo];
          v65 = sub_100216224();
          v173 = v59;
          v67 = v66;

          v68 = sub_100216204().super.isa;
          sub_100002BF0(v65, v67);
          [v61 setEscrowedSigningSPKI:v68];

          v69 = [v181 encodeSubjectPublicKeyInfo];
          v70 = sub_100216224();
          v72 = v71;

          v73 = sub_100216204().super.isa;
          sub_100002BF0(v70, v72);
          [v61 setEscrowedEncryptionSPKI:v73];

          v74 = [v174 encodeSubjectPublicKeyInfo];
          v75 = sub_100216224();
          v77 = v76;

          v78 = sub_100216204().super.isa;
          sub_100002BF0(v75, v77);
          [v61 setPeerSigningSPKI:v78];

          v79 = [v173 encodeSubjectPublicKeyInfo];
          v80 = sub_100216224();
          v82 = v81;

          v83 = sub_100216204().super.isa;
          sub_100002BF0(v80, v82);
          [v61 setPeerEncryptionSPKI:v83];

          v84 = [objc_allocWithZone(OTAuthenticatedCiphertext) init];
          if (v84)
          {
            v182 = v84;
            v85 = [v171 ciphertext];
            v170 = v61;
            v86 = sub_100216224();
            v88 = v87;

            v89 = sub_100216204().super.isa;
            sub_100002BF0(v86, v88);
            [v182 setCiphertext:v89];

            v90 = [v171 authenticationCode];
            v91 = sub_100216224();
            v93 = v92;

            v94 = sub_100216204().super.isa;
            sub_100002BF0(v91, v93);
            [v182 setAuthenticationCode:v94];

            v95 = [v171 initializationVector];
            v96 = sub_100216224();
            v98 = v97;

            v99 = sub_100216204().super.isa;
            sub_100002BF0(v96, v98);
            [v182 setInitializationVector:v99];

            [v61 setContents:v182];
            v100 = &v199[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID];
            *v100 = v190;
            v100[1] = v192;
            v101 = &v199[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_bottleID];
            *v101 = v189;
            *(v101 + 1) = v193;
            v102 = objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
            swift_bridgeObjectRetain_n();

            v56 = v196;
            v103 = v194;
            v119 = sub_1000576E4(v190, v192, v56, v103);
            v191 = v56;
            v195 = v103;

            *&v199[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerKeys] = v119;
            v120 = [v61 data];
            if (v120)
            {
              v121 = v120;
              v122 = sub_100216224();
              v124 = v123;

              v125 = &v199[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents];
              *v125 = v122;
              v125[1] = v124;
              v197 = v125;
              v126 = [*(*&v199[v187] + OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_signingKey) publicKey];
              objc_opt_self();
              v189 = v126;
              v127 = swift_dynamicCastObjCClass();
              if (!v127)
              {
                while (1)
                {

LABEL_50:
                  sub_1002170E4();
                  __break(1u);
                }
              }

              v128 = v127;

              v129 = [v128 keyData];
              v130 = sub_100216224();
              v132 = v131;

              v133 = &v199[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningPublicKey];
              *v133 = v130;
              v133[1] = v132;
              v134 = [v128 encodeSubjectPublicKeyInfo];
              v135 = sub_100216224();
              v137 = v136;

              v138 = &v199[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningSPKI];
              *v138 = v135;
              v138[1] = v137;
              v139 = [v174 encodeSubjectPublicKeyInfo];
              v140 = sub_100216224();
              v142 = v141;

              v143 = &v199[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peersigningSPKI];
              *v143 = v140;
              v143[1] = v142;
              v144 = [objc_allocWithZone(_SFECKeySpecifier) initWithCurve:4];
              v145 = [objc_allocWithZone(_SFSHA384DigestOperation) init];
              v146 = [objc_allocWithZone(_SFEC_X962SigningOperation) initWithKeySpecifier:v144 digestOperation:v145];

              v147 = *v197;
              v148 = v197[1];
              sub_100012558(*v197, v148);
              v149 = sub_100216204().super.isa;
              sub_100002BF0(v147, v148);
              v150 = *(*&v199[v187] + OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_signingKey);
              v201 = 0;
              v151 = [v146 sign:v149 withKey:v150 error:&v201];

              if (v151)
              {
                v152 = v201;
                v153 = [v151 signature];
                v154 = sub_100216224();
                v156 = v155;

                v157 = &v199[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey];
                *v157 = v154;
                v157[1] = v156;
                v158 = *v197;
                v159 = v197[1];
                sub_100012558(*v197, v159);
                v160 = sub_100216204().super.isa;
                sub_100002BF0(v158, v159);
                v201 = 0;
                v161 = [v146 sign:v160 withKey:v191 error:&v201];

                if (v161)
                {
                  v162 = v201;
                  v163 = [v161 signature];
                  v164 = sub_100216224();
                  v166 = v165;

                  sub_100002BF0(v175, v183);

                  v167 = &v199[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingPeerKey];
                  *v167 = v164;
                  v167[1] = v166;
                  v200.receiver = v199;
                  v200.super_class = type metadata accessor for BottledPeer();
                  v19 = objc_msgSendSuper2(&v200, "init");

                  return v19;
                }

                v169 = v201;
                sub_100216154();

                swift_willThrow();

                sub_100002BF0(v175, v183);

                v105 = 1;
                LODWORD(v51) = 1;
                v19 = 1;
              }

              else
              {
                v168 = v201;
                sub_100216154();

                swift_willThrow();

                sub_100002BF0(v175, v183);

                v19 = 0;
                v105 = 1;
                LODWORD(v51) = 1;
              }

              goto LABEL_24;
            }

            __break(1u);
LABEL_47:

            goto LABEL_50;
          }

          sub_100200A30();
          swift_allocError();
          *v118 = 4;
          swift_willThrow();

          sub_100002BF0(v175, v183);
        }

        else
        {

          sub_100200A30();
          swift_allocError();
          *v117 = 3;
          swift_willThrow();

          sub_100002BF0(v175, v183);
        }

        v105 = 0;
        LODWORD(v51) = 0;
        v19 = 0;
        v106 = v188;
LABEL_25:

        sub_100002BF0(*v106, v106[1]);
        if (v105)
        {
          v113 = *&v42[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID + 8];

          v114 = *&v42[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_bottleID + 8];

          if ((v51 & 1) == 0)
          {
LABEL_27:
            if (!v19)
            {
              goto LABEL_34;
            }

            v115 = OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey;
LABEL_33:
            sub_100002BF0(*&v42[v115], *&v42[v115 + 8]);
            goto LABEL_34;
          }
        }

        else if (!v51)
        {
          goto LABEL_27;
        }

        if (v19)
        {
          sub_100002BF0(*&v42[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey], *&v42[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey + 8]);
        }

        sub_100002BF0(*&v42[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningPublicKey], *&v42[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningPublicKey + 8]);
        sub_100002BF0(*&v42[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningSPKI], *&v42[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningSPKI + 8]);
        sub_100002BF0(*&v42[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peersigningSPKI], *&v42[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peersigningSPKI + 8]);
        v115 = OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents;
        goto LABEL_33;
      }

      v111 = v52;

      sub_100200A30();
      swift_allocError();
      *v112 = 4;
      swift_willThrow();

      sub_100002BF0(v44, v46);
    }

    else
    {

      sub_100200A30();
      swift_allocError();
      *v109 = 3;
      swift_willThrow();
    }

    v105 = 0;
    LODWORD(v51) = 0;
    goto LABEL_23;
  }

  v19 = v202;

LABEL_34:
  type metadata accessor for BottledPeer();
  swift_deallocPartialClassInstance();
  return v19;
}

char *sub_1001FEE00(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  v16 = v10 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_secret;
  *v16 = a3;
  *(v16 + 8) = a4;
  objc_allocWithZone(type metadata accessor for EscrowKeys());
  sub_100012558(a3, a4);
  sub_100012558(a3, a4);

  v17 = sub_1001F3968(a3, a4, a5, a6);
  if (v11)
  {
    sub_100002BF0(a9, a10);
    sub_100002BF0(a7, a8);

    sub_100002BF0(a3, a4);
    sub_100002BF0(a1, a2);
    sub_100002BF0(*v16, *(v16 + 8));
    v18 = v212;
LABEL_49:
    type metadata accessor for BottledPeer();
    swift_deallocPartialClassInstance();
    return v18;
  }

  v206 = a3;
  v207 = a4;
  v209 = OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowKeys;
  v210 = v16;
  v18 = v212;
  *&v212[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowKeys] = v17;
  [*&v17[OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_signingKey] publicKey];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  v20 = v19;
  if (!v19)
  {

    swift_unknownObjectRelease();
    if (qword_100297550 != -1)
    {
      swift_once();
    }

    v37 = sub_100216774();
    sub_100002648(v37, qword_10029E7F8);
    v38 = sub_100216754();
    v39 = sub_100216C54();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "escrow key not an SFECPublicKey?", v40, 2u);
    }

    sub_100200A30();
    swift_allocError();
    *v41 = 3;
    swift_willThrow();
    sub_100002BF0(a9, a10);
    sub_100002BF0(a7, a8);
    sub_100002BF0(a3, a4);
    sub_100002BF0(a1, a2);
    goto LABEL_15;
  }

  v205 = v19;
  v21 = [v19 encodeSubjectPublicKeyInfo];
  v22 = sub_100216224();
  v24 = v23;

  v25 = &v212[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningSPKI];
  *v25 = v22;
  v25[1] = v24;
  v26 = objc_allocWithZone(OTBottle);
  sub_100012558(a1, a2);
  isa = sub_100216204().super.isa;
  sub_100002BF0(a1, a2);
  v28 = [v26 initWithData:isa];

  if (!v28)
  {

    v45 = v210;
    if (qword_100297550 != -1)
    {
      swift_once();
    }

    v46 = sub_100216774();
    sub_100002648(v46, qword_10029E7F8);
    v47 = sub_100216754();
    v48 = sub_100216C54();
    v20 = v205;
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Unable to deserialize bottle", v49, 2u);
      v45 = v210;
    }

    sub_100200A30();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
    sub_100002BF0(a9, a10);
    sub_100002BF0(a7, a8);
    sub_100002BF0(v206, a4);
    sub_100002BF0(a1, a2);
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v29 = [v28 escrowedSigningSPKI];
  v204 = v28;
  v201 = v25;
  if (!v29)
  {
    v31 = 0;
    v34 = *v25;
    v35 = v25[1];
    v33 = 0xF000000000000000;
LABEL_22:
    if (v35 >> 60 == 15)
    {
      sub_100012558(v34, v35);
      sub_10004CD18(v31, v33);
      goto LABEL_24;
    }

LABEL_34:
    sub_100012558(v34, v35);

    sub_10004CD18(v31, v33);
    sub_10004CD18(v34, v35);
    goto LABEL_35;
  }

  v30 = v29;
  v31 = sub_100216224();
  v33 = v32;

  v34 = *v25;
  v35 = v25[1];
  if (v33 >> 60 == 15)
  {
    goto LABEL_22;
  }

  if (v35 >> 60 == 15)
  {
    goto LABEL_34;
  }

  sub_100012558(v34, v35);
  sub_100012558(v34, v35);
  sub_1000602D0(v31, v33);
  v36 = sub_100052F18(v31, v33, v34, v35);
  sub_10004CD18(v34, v35);
  sub_100002BF0(v34, v35);
  sub_10004CD18(v31, v33);
  sub_10004CD18(v31, v33);
  if ((v36 & 1) == 0)
  {

LABEL_35:
    v45 = v210;
    v20 = v205;
    if (qword_100297550 != -1)
    {
      swift_once();
    }

    v92 = sub_100216774();
    sub_100002648(v92, qword_10029E7F8);
    v93 = sub_100216754();
    v94 = sub_100216C54();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Bottled SPKI does not match re-created SPKI", v95, 2u);
      v18 = v212;
    }

    sub_100200A30();
    swift_allocError();
    *v96 = 8;
    swift_willThrow();
    sub_100002BF0(a9, a10);
    sub_100002BF0(a7, a8);
    sub_100002BF0(v206, a4);
    sub_100002BF0(a1, a2);
    swift_unknownObjectRelease();
    v97 = v204;
    goto LABEL_40;
  }

LABEL_24:
  v51 = [objc_allocWithZone(_SFECKeySpecifier) initWithCurve:4];
  v52 = [objc_allocWithZone(_SFSHA384DigestOperation) init];
  v203 = [objc_allocWithZone(_SFEC_X962SigningOperation) initWithKeySpecifier:v51 digestOperation:v52];

  v53 = objc_allocWithZone(_SFSignedData);
  sub_100012558(a1, a2);
  sub_100012558(a7, a8);
  v54 = sub_100216204().super.isa;
  v55 = sub_100216204().super.isa;
  v56 = [v53 initWithData:v54 signature:v55];

  sub_100002BF0(a7, a8);
  sub_100002BF0(a1, a2);
  v217 = 0;
  swift_unknownObjectRetain();
  v200 = v56;
  v20 = v205;
  v57 = [v203 verify:v56 withKey:v205 error:&v217];
  v58 = v217;
  if (!v57)
  {
    v102 = v58;

    swift_unknownObjectRelease();
    sub_100216154();

    swift_willThrow();
    sub_100002BF0(a9, a10);
    sub_100002BF0(a7, a8);
    sub_100002BF0(v206, a4);
    sub_100002BF0(a1, a2);
    swift_unknownObjectRelease();
LABEL_15:
    v42 = 0;
    v43 = 0;
    LODWORD(v44) = 0;
    v45 = v210;
    goto LABEL_42;
  }

  v59 = sub_100216224();
  sub_100002BF0(v59, v60);

  v61 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(objc_opt_self(), "aes256BitSize")}];
  v62 = [objc_allocWithZone(_SFAuthenticatedEncryptionOperation) initWithKeySpecifier:v61];

  result = [v28 contents];
  if (!result)
  {
    __break(1u);
    goto LABEL_101;
  }

  v64 = result;
  result = [result ciphertext];
  if (!result)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v65 = result;
  v66 = sub_100216224();
  v68 = v67;

  result = [v64 authenticationCode];
  if (!result)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v69 = result;
  v199 = v62;
  v70 = sub_100216224();
  v72 = v71;

  v198 = v64;
  result = [v64 initializationVector];
  if (!result)
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v73 = result;
  v74 = sub_100216224();
  v76 = v75;

  v77 = objc_allocWithZone(_SFAuthenticatedCiphertext);
  v196 = v68;
  v78 = sub_100216204().super.isa;
  v194 = v66;
  v79 = v72;
  v80 = v70;
  v81 = sub_100216204().super.isa;
  v82 = sub_100216204().super.isa;
  v83 = [v77 initWithCiphertext:v78 authenticationCode:v81 initializationVector:v82];

  sub_100002BF0(v74, v76);
  sub_100002BF0(v80, v79);

  sub_100002BF0(v194, v196);
  v84 = *(*&v212[v209] + OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_symmetricKey);
  v217 = 0;
  v85 = [v199 decrypt:v83 withKey:v84 error:&v217];
  v86 = v217;
  if (!v85)
  {
    v44 = v86;

    swift_unknownObjectRelease();
    sub_100216154();

    swift_willThrow();
    sub_100002BF0(a9, a10);
    sub_100002BF0(a7, a8);
    sub_100002BF0(v206, v207);
    sub_100002BF0(a1, a2);
    swift_unknownObjectRelease();

    v42 = 0;
    v43 = 0;
    LODWORD(v44) = 0;
LABEL_58:
    v45 = v210;
LABEL_59:
    v20 = v205;
    goto LABEL_42;
  }

  v195 = v83;
  v197 = sub_100216224();
  v88 = v87;

  v89 = v88 >> 62;
  v45 = v210;
  v20 = v205;
  if ((v88 >> 62) > 1)
  {
    v90 = a7;
    v91 = a9;
    if (v89 != 2)
    {
      goto LABEL_64;
    }

    v103 = *(v197 + 16);
    v104 = *(v197 + 24);
LABEL_63:
    if (v103 != v104)
    {
      goto LABEL_65;
    }

LABEL_64:

    swift_unknownObjectRelease();
    sub_100200A30();
    swift_allocError();
    *v105 = 1;
    swift_willThrow();
    sub_100002BF0(v91, a10);
    sub_100002BF0(v90, a8);
    sub_100002BF0(v206, v207);
    sub_100002BF0(a1, a2);
    sub_100002BF0(v197, v88);
    swift_unknownObjectRelease();

    v97 = v83;
LABEL_40:

LABEL_41:
    v42 = 0;
    v43 = 0;
    LODWORD(v44) = 0;
    goto LABEL_42;
  }

  v90 = a7;
  v91 = a9;
  if (v89)
  {
    v103 = v197;
    v104 = v197 >> 32;
    goto LABEL_63;
  }

  if ((v88 & 0xFF000000000000) == 0)
  {
    goto LABEL_64;
  }

LABEL_65:
  v106 = objc_allocWithZone(OTBottleContents);
  sub_100012558(v197, v88);
  v107 = sub_100216204().super.isa;
  sub_100002BF0(v197, v88);
  v44 = [v106 initWithData:v107];

  v193 = v44;
  if (!v44)
  {

    swift_unknownObjectRelease();
    sub_100200A30();
    swift_allocError();
    *v127 = 0;
    swift_willThrow();
    sub_100002BF0(a9, a10);
    sub_100002BF0(a7, a8);
    sub_100002BF0(v206, v207);
    sub_100002BF0(a1, a2);
    sub_100002BF0(v197, v88);
    swift_unknownObjectRelease();

    v42 = 0;
    v43 = 0;
    goto LABEL_42;
  }

  result = [v204 peerID];
  if (!result)
  {
    goto LABEL_104;
  }

  v108 = result;
  v109 = sub_100216974();
  v111 = v110;

  v112 = &v212[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID];
  *v112 = v109;
  v112[1] = v111;
  result = [v204 bottleID];
  if (!result)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v113 = result;
  v114 = sub_100216974();
  v116 = v115;

  v117 = &v212[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_bottleID];
  *v117 = v114;
  v117[1] = v116;
  v118 = v112[1];
  v191 = *v112;

  result = [v193 peerSigningPrivKey];
  if (!result)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v119 = result;
  v217 = 0;
  v120 = [result asECKeyPair:&v217];

  if (!v120)
  {
    v128 = v217;

    swift_unknownObjectRelease();
    sub_100216154();

    swift_willThrow();
    sub_100002BF0(v197, v88);

    sub_100002BF0(a9, a10);
    sub_100002BF0(a7, a8);
    sub_100002BF0(v206, v207);
    sub_100002BF0(a1, a2);
    swift_unknownObjectRelease();

    v43 = 0;
    LODWORD(v44) = 0;
    v42 = 1;
    goto LABEL_59;
  }

  v121 = v217;
  result = [v193 peerEncryptionPrivKey];
  if (!result)
  {
    goto LABEL_107;
  }

  v122 = result;
  v217 = 0;
  v123 = [result asECKeyPair:&v217];

  v124 = v217;
  if (!v123)
  {
    v129 = v217;

    swift_unknownObjectRelease();
    sub_100216154();

    swift_willThrow();
    sub_100002BF0(v197, v88);

    sub_100002BF0(a9, a10);
    sub_100002BF0(a7, a8);
    sub_100002BF0(v206, v207);
    sub_100002BF0(a1, a2);
    swift_unknownObjectRelease();

    v43 = 0;
    LODWORD(v44) = 0;
    v42 = 1;
    goto LABEL_58;
  }

  objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
  v125 = v124;
  v126 = sub_1000576E4(v191, v118, v120, v123);
  v190 = OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerKeys;
  *&v212[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerKeys] = v126;
  v130 = &v212[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents];
  *v130 = a1;
  v130[1] = a2;
  sub_100012558(a1, a2);
  result = [v204 peerSigningSPKI];
  if (!result)
  {
    goto LABEL_108;
  }

  v131 = result;
  v188 = v130;
  v132 = sub_100216224();
  v134 = v133;

  v135 = &v212[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peersigningSPKI];
  *v135 = v132;
  v135[1] = v134;
  result = [v204 peerSigningSPKI];
  if (!result)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v136 = result;
  v137 = sub_100216224();
  v139 = v138;

  v140 = sub_100216204().super.isa;
  v141 = objc_opt_self();
  v192 = [v141 keyWithSubjectPublicKeyInfo:v140];

  sub_100002BF0(v137, v139);
  result = [v204 peerEncryptionSPKI];
  if (result)
  {
    v142 = result;

    v143 = sub_100216224();
    v145 = v144;

    v146 = sub_100216204().super.isa;
    v208 = [v141 keyWithSubjectPublicKeyInfo:v146];

    sub_100002BF0(v143, v145);
    v147 = [*(*&v212[v190] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey) publicKey];
    if (v147)
    {
      v148 = v147;
      v45 = v210;
      v20 = v205;
      v149 = a10;
      v150 = v192;
      if (v192)
      {
        sub_100200D14();
        v151 = v192;
        v152 = sub_100216DC4();

        v150 = v192;
        if ((v152 & 1) == 0)
        {
          goto LABEL_89;
        }

LABEL_84:
        v153 = [*(*&v212[v190] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey) publicKey];
        v154 = v203;
        if (v153)
        {
          v155 = v153;
          if (v208)
          {
            sub_100200D14();
            v156 = v208;
            v157 = sub_100216DC4();

            v154 = v203;
            if ((v157 & 1) == 0)
            {
              goto LABEL_95;
            }

            goto LABEL_91;
          }

          v154 = v203;
        }

        else if (!v208)
        {
LABEL_91:
          v159 = [v20 encodeSubjectPublicKeyInfo];
          v160 = sub_100216224();
          v162 = v161;

          v163 = *v201;
          v164 = v201[1];
          *v201 = v160;
          v201[1] = v162;
          sub_100002BF0(v163, v164);
          v165 = &v212[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingPeerKey];
          *v165 = a9;
          v165[1] = v149;
          v166 = &v212[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey];
          *v166 = a7;
          v166[1] = a8;
          sub_100012558(a7, a8);
          sub_100012558(a9, v149);
          v167 = [v20 keyData];
          swift_unknownObjectRelease();
          v168 = sub_100216224();
          v170 = v169;

          v171 = &v212[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningPublicKey];
          *v171 = v168;
          v171[1] = v170;
          v172 = *v189;
          v173 = v189[1];
          v174 = objc_allocWithZone(_SFSignedData);
          sub_100012558(a9, v149);
          sub_100012558(v172, v173);
          v175 = sub_100216204().super.isa;
          v176 = sub_100216204().super.isa;
          v177 = [v174 initWithData:v175 signature:v176];

          sub_100002BF0(a9, a10);
          sub_100002BF0(v172, v173);
          v178 = *(*&v212[v190] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicSigningKey);
          if (v178)
          {
            v217 = 0;
            v202 = v178;
            v179 = [v203 verify:v177 withKey:? error:?];
            v180 = v217;
            if (v179)
            {
              v181 = sub_100216224();
              v183 = v182;
              sub_100002BF0(v197, v88);
              swift_unknownObjectRelease();

              sub_100002BF0(v181, v183);
              v216.receiver = v212;
              v216.super_class = type metadata accessor for BottledPeer();
              v18 = objc_msgSendSuper2(&v216, "init");
              sub_100002BF0(a9, a10);
              sub_100002BF0(a7, a8);
              sub_100002BF0(v206, v207);
              sub_100002BF0(a1, a2);
              return v18;
            }

            v187 = v180;
            sub_100216154();

            swift_willThrow();
            sub_100002BF0(v197, v88);

            sub_100002BF0(a9, a10);
            sub_100002BF0(a7, a8);
            sub_100002BF0(v206, v207);
            sub_100002BF0(a1, a2);
            swift_unknownObjectRelease();

            v186 = v202;
          }

          else
          {
            sub_100200A30();
            swift_allocError();
            *v185 = 2;
            swift_willThrow();
            sub_100002BF0(a9, a10);
            sub_100002BF0(a7, a8);
            sub_100002BF0(v206, v207);
            sub_100002BF0(a1, a2);

            sub_100002BF0(v197, v88);
            swift_unknownObjectRelease();

            v186 = v195;
          }

          v42 = 1;
          v43 = 1;
          LODWORD(v44) = 1;
          goto LABEL_58;
        }

LABEL_95:
        swift_unknownObjectRelease();
        sub_100200A30();
        swift_allocError();
        *v184 = 2;
        swift_willThrow();
        sub_100002BF0(a9, v149);
        sub_100002BF0(a7, a8);
        sub_100002BF0(v206, v207);
        sub_100002BF0(a1, a2);

        sub_100002BF0(v197, v88);
        swift_unknownObjectRelease();

        goto LABEL_96;
      }
    }

    else
    {
      v45 = v210;
      v20 = v205;
      v149 = a10;
      v150 = v192;
      if (!v192)
      {
        goto LABEL_84;
      }
    }

LABEL_89:
    swift_unknownObjectRelease();
    sub_100200A30();
    swift_allocError();
    *v158 = 2;
    swift_willThrow();
    sub_100002BF0(a9, v149);
    sub_100002BF0(a7, a8);
    sub_100002BF0(v206, v207);
    sub_100002BF0(a1, a2);

    sub_100002BF0(v197, v88);
    swift_unknownObjectRelease();

LABEL_96:
    LODWORD(v44) = 0;
    v42 = 1;
    v43 = 1;
LABEL_42:

    sub_100002BF0(*v45, *(v45 + 8));
    if (v42)
    {
      v98 = *&v18[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID + 8];

      v99 = *&v18[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_bottleID + 8];

      if ((v43 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (!v43)
    {
LABEL_44:
      v100 = 0;
      v101 = &off_10029E000;
      if (!v44)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v100 = 1;
    v101 = &off_10029E000;
    if ((v44 & 1) == 0)
    {
LABEL_46:
      if (v20)
      {
        sub_100002BF0(*(v101[266] + v18), *(v101[266] + v18 + 8));
        if ((v100 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      else if (!v100)
      {
        goto LABEL_49;
      }

      sub_100002BF0(*&v18[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peersigningSPKI], *&v18[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peersigningSPKI + 8]);
      sub_100002BF0(*&v18[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents], *&v18[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents + 8]);
      goto LABEL_49;
    }

LABEL_45:
    sub_100002BF0(*&v18[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey], *&v18[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey + 8]);
    sub_100002BF0(*&v18[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingPeerKey], *&v18[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingPeerKey + 8]);
    sub_100002BF0(*&v18[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningPublicKey], *&v18[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningPublicKey + 8]);
    goto LABEL_46;
  }

LABEL_110:
  __break(1u);
  return result;
}

id sub_1002008D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BottledPeer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100200A30()
{
  result = qword_10029E890;
  if (!qword_10029E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E890);
  }

  return result;
}

uint64_t sub_100200A84(uint64_t a1)
{
  v2 = sub_100200CC0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100200AC0(uint64_t a1)
{
  v2 = sub_100200CC0();

  return Error<>._code.getter(a1, v2);
}

void *sub_100200AFC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = "t bottle contents";
    v6 = "failed to create bottle";
    v7 = 0xD000000000000017;
    if (a1 == 2)
    {
      v7 = 0xD000000000000031;
    }

    else
    {
      v6 = " authenticated ciphertext";
    }

    if (a1)
    {
      v5 = "keys do not match";
    }

    if (a1 <= 1u)
    {
      v3 = 0xD000000000000021;
    }

    else
    {
      v3 = v7;
    }

    if (a1 <= 1u)
    {
      v4 = v5;
    }

    else
    {
      v4 = v6;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v3 = 0xD000000000000029;
    }

    else
    {
      v3 = 0xD00000000000001CLL;
    }

    if (a1 == 4)
    {
      v4 = "failed to create private key";
    }

    else
    {
      v4 = "failed to create escrow keys";
    }
  }

  else
  {
    v1 = "the bottle contents";
    v2 = 0xD000000000000018;
    if (a1 != 7)
    {
      v2 = 0xD000000000000043;
      v1 = "I";
    }

    if (a1 == 6)
    {
      v3 = 0xD00000000000001CLL;
    }

    else
    {
      v3 = v2;
    }

    if (a1 == 6)
    {
      v4 = "failed to create entropy";
    }

    else
    {
      v4 = v1;
    }
  }

  v8 = v4 | 0x8000000000000000;
  v9 = sub_100216974();
  v11 = v10;
  v16 = &type metadata for String;
  *&v15 = v3;
  *(&v15 + 1) = v8;
  sub_1000125AC(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100185894(v14, v9, v11, isUniquelyReferenced_nonNull_native);

  return &_swiftEmptyDictionarySingleton;
}

unint64_t sub_100200CC0()
{
  result = qword_10029E898;
  if (!qword_10029E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E898);
  }

  return result;
}

unint64_t sub_100200D14()
{
  result = qword_10029E8A0;
  if (!qword_10029E8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10029E8A0);
  }

  return result;
}

void sub_100200D60(int *a1)
{
  sub_1002161B4();
  v2 = *a1;
  v3 = a1[1];
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(a1 + 1);

  v5 = sub_100216034();
  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = sub_100216064();
  v8 = v2 - v7;
  if (__OFSUB__(v2, v7))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v3 - v2;
  v10 = sub_100216054();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (SecRandomCopyBytes(kSecRandomDefault, v11, (v6 + v8)))
  {
    sub_100200A30();
    swift_allocError();
    *v12 = 7;
    swift_willThrow();
  }
}

uint64_t sub_100200E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [objc_allocWithZone(_SFECKeySpecifier) initWithCurve:4];
  v7 = [objc_allocWithZone(_SFSHA384DigestOperation) init];
  v8 = [objc_allocWithZone(_SFEC_X962SigningOperation) initWithKeySpecifier:v6 digestOperation:v7];

  v9 = objc_allocWithZone(_SFSignedData);
  isa = sub_100216204().super.isa;
  v11 = sub_100216204().super.isa;
  v12 = [v9 initWithData:isa signature:v11];

  v20 = 0;
  v13 = [v8 verify:v12 withKey:a5 error:&v20];
  v14 = v20;
  if (v13)
  {
    v15 = sub_100216224();
    v17 = v16;

    sub_100002BF0(v15, v17);
  }

  else
  {
    v18 = v14;
    sub_100216154();

    swift_willThrow();
  }

  return 1;
}

uint64_t getEnumTagSinglePayload for BottledPeer.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BottledPeer.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10020115C()
{
  result = qword_10029E8A8;
  if (!qword_10029E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E8A8);
  }

  return result;
}

void sub_1002011B0(void *a1, void *a2)
{
  v3 = v2;
  if (qword_100297558 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  sub_100002648(v6, qword_10029E8B0);
  v7 = sub_100216754();
  v8 = sub_100216C64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "onqueueRemoveDuplicateVouchers start", v9, 2u);
  }

  v10 = objc_autoreleasePoolPush();
  sub_100201A60(a1, a2, v3, &v11);
  objc_autoreleasePoolPop(v10);
}

uint64_t sub_1002012E4()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_10029E8B0);
  sub_100002648(v0, qword_10029E8B0);
  return sub_100216764();
}

void sub_100201360(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = a4;
  v8 = a3;
  v10 = sub_10019CE9C(a1, a2, a3, a4);
  if (v5)
  {
    goto LABEL_2;
  }

  if (!v10)
  {
    if (qword_100297558 != -1)
    {
      swift_once();
    }

    v27 = sub_100216774();
    sub_100002648(v27, qword_10029E8B0);

    v28 = sub_100216754();
    v29 = sub_100216C74();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_100005FB0(v8, v7, &v46);
      _os_log_impl(&_mh_execute_header, v28, v29, "Could not find peerMO for beneficiary %{public}s", v30, 0xCu);
      sub_100006128(v31);
    }

    if (a5 >> 62)
    {
      v32 = sub_1002170F4();
    }

    else
    {
      v32 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = a1;
    if (!v32)
    {
LABEL_44:

      return;
    }

    v8 = 0;
    while (1)
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v33 = sub_100217014();
      }

      else
      {
        if (v8 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v33 = *(a5 + 8 * v8 + 32);
      }

      v34 = v33;
      v35 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_55;
      }

      [v7 deleteObject:v33];

      ++v8;
      if (v35 == v32)
      {
        goto LABEL_44;
      }
    }
  }

  v45 = v7;
  v44 = v8;
  if (a5 >> 62)
  {
    v43 = v10;
    v18 = sub_1002170F4();
    v10 = v43;
  }

  else
  {
    v18 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v10;
  if (v18)
  {
    v20 = 0;
    v8 = a5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v21 = sub_100217014();
      }

      else
      {
        if (v20 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v21 = *(a5 + 8 * v20 + 32);
      }

      v22 = v21;
      v7 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        break;
      }

      [v19 addVouchersObject:v21];

      ++v20;
      if (v7 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_18:

  v46 = 0;
  if (![a1 save:&v46])
  {
    v36 = v46;
    sub_100216154();

    swift_willThrow();
    if (qword_100297558 != -1)
    {
      swift_once();
    }

    v37 = sub_100216774();
    sub_100002648(v37, qword_10029E8B0);
    swift_errorRetain();
    v38 = sub_100216754();
    v39 = sub_100216C74();

    v8 = v44;
    v7 = v45;
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138543362;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&_mh_execute_header, v38, v39, "voucher cleanup unable to save %{public}@", v40, 0xCu);
      sub_10005707C(v41);
    }

    swift_willThrow();
LABEL_2:
    if (qword_100297558 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_59;
  }

  v23 = v46;
  v7 = a1;
  if (v18)
  {
    v8 = 0;
    while (1)
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v24 = sub_100217014();
      }

      else
      {
        if (v8 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v24 = *(a5 + 8 * v8 + 32);
      }

      v25 = v24;
      v26 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (([v24 hasChanges] & 1) == 0)
      {
        [v7 refreshObject:v25 mergeChanges:0];
      }

      ++v8;
      if (v26 == v18)
      {
        goto LABEL_50;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_3:
    v11 = sub_100216774();
    sub_100002648(v11, qword_10029E8B0);

    swift_errorRetain();
    v12 = sub_100216754();
    v13 = sub_100216C74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v46 = v16;
      *v14 = 136446466;
      *(v14 + 4) = sub_100005FB0(v8, v7, &v46);
      *(v14 + 12) = 2112;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v17;
      *v15 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to move vouchers for beneficiary %{public}s): %@", v14, 0x16u);
      sub_10005707C(v15);

      sub_100006128(v16);
    }

    else
    {
    }

    return;
  }

LABEL_50:

  if (![v19 hasChanges])
  {
    [v7 refreshObject:v19 mergeChanges:0];
  }
}

void sub_100201A60(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = objc_allocWithZone(NSFetchRequest);
  v10 = sub_100216964();
  v11 = [v9 initWithEntityName:v10];

  sub_100006174();
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v12 = swift_allocObject();
  v33 = xmmword_10021D600;
  *(v12 + 16) = xmmword_10021D600;
  *(v12 + 56) = type metadata accessor for ContainerMO();
  *(v12 + 64) = sub_100006208(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v12 + 32) = a1;
  v13 = a1;
  v14 = sub_100216C34();
  [v11 setPredicate:v14];

  sub_10001148C(&qword_10029D150, &qword_100226560);
  v15 = swift_allocObject();
  *(v15 + 16) = v33;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = 0x444972656570;
  *(v15 + 40) = 0xE600000000000000;
  isa = sub_100216B14().super.isa;

  [v11 setPropertiesToFetch:isa];

  [v11 setFetchBatchSize:10];
  v42 = 0;
  v38 = &v42;
  v39 = a3;
  v40 = v13;
  v41 = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v35 = sub_1000063FC;
  v36 = v17;
  v18 = a2;
  sub_10010994C(v11, sub_100005E50, v37, sub_1000062DC, v34);

  if (v4)
  {

    *a4 = v4;
  }

  else
  {
    if (v42 == 1)
    {
      if (qword_100297558 != -1)
      {
        swift_once();
      }

      v19 = sub_100216774();
      *&v33 = sub_100002648(v19, qword_10029E8B0);
      v20 = sub_100216754();
      v21 = sub_100216C94();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "voucher cleanup: have to iterate again", v22, 2u);
      }

      v42 = 0;
      __chkstk_darwin(v23, v24);
      v32[2] = &v42;
      v32[3] = a3;
      v32[4] = v13;
      v32[5] = v18;
      v25 = swift_allocObject();
      *(v25 + 16) = v18;
      v31[2] = sub_100201F3C;
      v31[3] = __chkstk_darwin(v25, v26);
      v27 = v18;
      sub_10010994C(v11, sub_100005E38, v32, sub_100201FA0, v31);

      if (v42 == 1)
      {
        v28 = sub_100216754();
        v29 = sub_100216C74();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "voucher cleanup: Unexpectedly have to iterate again??", v30, 2u);
        }
      }
    }

    [v18 refreshAllObjects];
  }
}

BOOL _sSo15TPPolicyVersionC18TrustedPeersHelperE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  v4 = [a1 versionNumber];
  if (v4 == [a2 versionNumber])
  {
    v5 = [a1 policyHash];
    v6 = sub_100216974();
    v8 = v7;

    v9 = [a2 policyHash];
    v10 = sub_100216974();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {

      return 0;
    }

    else
    {
      v14 = sub_1002171A4();

      return v14 & 1;
    }
  }

  else
  {
    v16 = [a1 versionNumber];
    return v16 < [a2 versionNumber];
  }
}

unint64_t sub_100202100()
{
  result = qword_10029E8E0;
  if (!qword_10029E8E0)
  {
    sub_1000570E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E8E0);
  }

  return result;
}

id VoucherMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id BottleMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BottleMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id BottleMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BottleMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static BottleMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100202334@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for BottleMO();
  result = sub_100216FF4();
  *a1 = result;
  return result;
}

id ContainerMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContainerMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id ContainerMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainerMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static ContainerMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1002024F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ContainerMO();
  result = sub_100216FF4();
  *a1 = result;
  return result;
}

id CustodianRecoveryKeyMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CustodianRecoveryKeyMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CustodianRecoveryKeyMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianRecoveryKeyMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CustodianRecoveryKeyMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1002026BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CustodianRecoveryKeyMO();
  result = sub_100216FF4();
  *a1 = result;
  return result;
}

id EscrowClientMetadataMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for EscrowClientMetadataMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id EscrowClientMetadataMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EscrowClientMetadataMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static EscrowClientMetadataMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100202880@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for EscrowClientMetadataMO();
  result = sub_100216FF4();
  *a1 = result;
  return result;
}

id EscrowMetadataMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for EscrowMetadataMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id EscrowMetadataMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EscrowMetadataMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static EscrowMetadataMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100202A4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for EscrowMetadataMO();
  result = sub_100216FF4();
  *a1 = result;
  return result;
}

id EscrowRecordMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for EscrowRecordMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id EscrowRecordMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EscrowRecordMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static EscrowRecordMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100202C14@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for EscrowRecordMO();
  result = sub_100216FF4();
  *a1 = result;
  return result;
}

id MachineMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MachineMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id MachineMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MachineMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static MachineMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100202DD4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MachineMO();
  result = sub_100216FF4();
  *a1 = result;
  return result;
}

id PasscodeGen.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PasscodeGen();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id PasscodeGen.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PasscodeGen();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static PasscodeGen.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100202F9C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PasscodeGen();
  result = sub_100216FF4();
  *a1 = result;
  return result;
}

id PeerMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PeerMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id PeerMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static PeerMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1002030D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PeerMO();
  result = sub_100216FF4();
  *a1 = result;
  return result;
}

id PolicyMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PolicyMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id PolicyMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PolicyMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static PolicyMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100203294@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PolicyMO();
  result = sub_100216FF4();
  *a1 = result;
  return result;
}

id RecoveryVoucherMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for RecoveryVoucherMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id RecoveryVoucherMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoveryVoucherMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static RecoveryVoucherMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100203460@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for RecoveryVoucherMO();
  result = sub_100216FF4();
  *a1 = result;
  return result;
}

id VoucherMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for VoucherMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id VoucherMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoucherMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static VoucherMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1002035A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for VoucherMO();
  result = sub_100216FF4();
  *a1 = result;
  return result;
}

void sub_1002037A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002037BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002037D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 userInfo];
  obj = [v4 objectForKeyedSubscript:@"CKRetryAfter"];

  v5 = obj;
  if (obj)
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 40))
    {
      [obj doubleValue];
      v8 = v7;
      [*(*(*(a1 + 32) + 8) + 40) doubleValue];
      v5 = obj;
      if (v8 >= v9)
      {
        goto LABEL_6;
      }

      v6 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v6 + 40), obj);
    v5 = obj;
  }

LABEL_6:
}

uint64_t sub_1002069B0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = (&off_100289058)[v13];
        v15 = PBReaderReadData();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id TrustedPeersHelperSetupProtocol(void *a1)
{
  v1 = a1;
  if (qword_1002B02B8 != -1)
  {
    dispatch_once(&qword_1002B02B8, &stru_100289070);
  }

  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v33 count:2];
  v23 = [NSSet setWithArray:v2];

  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v32 count:2];
  v4 = [NSSet setWithArray:v3];

  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v31 count:2];
  v24 = [NSSet setWithArray:v5];

  v21 = [NSSet setWithObject:objc_opt_class()];
  v22 = [NSSet setWithObject:objc_opt_class()];
  v19 = [NSSet setWithObject:objc_opt_class()];
  v18 = [NSSet setWithObject:objc_opt_class()];
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v6 = [NSArray arrayWithObjects:v30 count:2];
  v17 = [NSSet setWithArray:v6];

  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v29[2] = objc_opt_class();
  v29[3] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v29 count:4];
  v20 = [NSSet setWithArray:v7];

  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v8 = [NSArray arrayWithObjects:v28 count:2];
  v16 = [NSSet setWithArray:v8];

  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v9 = [NSArray arrayWithObjects:v27 count:2];
  v15 = [NSSet setWithArray:v9];

  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v10 = [NSArray arrayWithObjects:v26 count:2];
  v14 = [NSSet setWithArray:v10];

  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v11 = [NSArray arrayWithObjects:v25 count:2];
  v13 = [NSSet setWithArray:v11];

  [v1 setXPCType:&_xpc_type_fd forSelector:"dumpWithSpecificUser:fileDescriptor:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:qword_1002B02B0 forSelector:"dumpWithSpecificUser:fileDescriptor:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"honorIDMSListChangesForSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"octagonPeerIDGivenBottleIDWithSpecificUser:bottleID:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"trustedDeviceNamesByPeerIDWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"departByDistrustingSelfWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"distrustPeerIDsWithSpecificUser:peerIDs:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"dropPeerIDsWithSpecificUser:peerIDs:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"trustStatusWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"resetWithSpecificUser:resetReason:idmsTargetContext:idmsCuttlefishPassword:notifyIdMS:internalAccount:demoAccount:isGuitarfish:accountIsW:accountType:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"performCKServerUnreadableDataRemovalWithSpecificUser:isGuitarfish:accountIsW:internalAccount:demoAccount:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"localResetWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"setAllowedMachineIDsWithSpecificUser:allowedMachineIDs:userInitiatedRemovals:evictedRemovals:unknownReasonRemovals:honorIDMSListChanges:version:flowID:deviceSessionID:canSendMetrics:altDSID:trustedDeviceHash:deletedDeviceHash:trustedDevicesUpdateTimestamp:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"markTrustedDeviceListFetchFailed:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchAllowedMachineIDsWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchEgoEpochWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"prepareWithSpecificUser:epoch:machineID:bottleSalt:bottleID:modelID:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:setting:signingPrivKeyPersistentRef:encPrivKeyPersistentRef:reply:" argumentIndex:6 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"preflightVouchWithBottleWithSpecificUser:bottleID:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:3 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"preflightVouchWithRecoveryKeyWithSpecificUser:recoveryKey:salt:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:3 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"preflightPreapprovedJoinWithSpecificUser:preapprovedKeys:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:3 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"setPreapprovedKeysWithSpecificUser:preapprovedKeys:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchViableBottlesWithSpecificUser:source:flowID:deviceSessionID:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchViableEscrowRecordsWithSpecificUser:source:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchEscrowContentsWithSpecificUser:reply:" argumentIndex:3 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchPolicyDocumentsWithSpecificUser:versions:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchRecoverableTLKSharesWithSpecificUser:peerID:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchCurrentPolicyWithSpecificUser:modelIDOverride:isInheritedAccount:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"setRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"removeCustodianRecoveryKeyWithSpecificUser:uuid:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"getSupportAppInfoWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"resetAccountCDPContentsWithSpecificUser:idmsTargetContext:idmsCuttlefishPassword:notifyIdMS:internalAccount:demoAccount:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"removeEscrowCacheWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchAccountSettingsWithSpecificUser:forceFetch:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"isRecoveryKeySet:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"removeRecoveryKey:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"performATOPRVActionsWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"testSemaphoreWithSpecificUser:arg:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"preflightRecoverOctagonUsingRecoveryKey:recoveryKey:salt:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchTrustedPeerCountWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchTrustedFullPeerCountWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"octagonContainsDistrustedRecoveryKeysWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchCurrentItemWithSpecificUser:items:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:v20 forSelector:"fetchAccountSettingsWithSpecificUser:forceFetch:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v24 forSelector:"fetchRecoverableTLKSharesWithSpecificUser:peerID:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v23 forSelector:"establishWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v4 forSelector:"establishWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:2 ofReply:0];
  [v1 setClasses:v24 forSelector:"establishWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:v23 forSelector:"joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:3 ofReply:0];
  [v1 setClasses:v4 forSelector:"joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:4 ofReply:0];
  [v1 setClasses:v24 forSelector:"joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:v23 forSelector:"attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v4 forSelector:"attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:2 ofReply:0];
  [v1 setClasses:v24 forSelector:"attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:v23 forSelector:"vouchWithSpecificUser:peerID:permanentInfo:permanentInfoSig:stableInfo:stableInfoSig:ckksKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:6 ofReply:0];
  [v1 setClasses:v4 forSelector:"vouchWithBottleWithSpecificUser:bottleID:entropy:bottleSalt:tlkShares:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:4 ofReply:0];
  [v1 setClasses:v4 forSelector:"vouchWithBottleWithSpecificUser:bottleID:entropy:bottleSalt:tlkShares:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:v23 forSelector:"setRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:reply:" argumentIndex:3 ofReply:0];
  [v1 setClasses:v24 forSelector:"setRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v23 forSelector:"createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:" argumentIndex:3 ofReply:0];
  [v1 setClasses:v24 forSelector:"createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v4 forSelector:"vouchWithRecoveryKeyWithSpecificUser:recoveryKey:salt:tlkShares:reply:" argumentIndex:3 ofReply:0];
  [v1 setClasses:v4 forSelector:"vouchWithRecoveryKeyWithSpecificUser:recoveryKey:salt:tlkShares:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:v4 forSelector:"vouchWithCustodianRecoveryKeyWithSpecificUser:crk:tlkShares:reply:" argumentIndex:2 ofReply:0];
  [v1 setClasses:v4 forSelector:"vouchWithRerollWithSpecificUser:oldPeerID:tlkShares:reply:" argumentIndex:2 ofReply:0];
  [v1 setClasses:v24 forSelector:"prepareInheritancePeerWithSpecificUser:epoch:machineID:bottleSalt:bottleID:modelID:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:signingPrivKeyPersistentRef:encPrivKeyPersistentRef:crk:reply:" argumentIndex:7 ofReply:1];
  [v1 setClasses:v4 forSelector:"vouchWithCustodianRecoveryKeyWithSpecificUser:crk:tlkShares:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:v4 forSelector:"recoverTLKSharesForInheritorWithSpecificUser:crk:tlkShares:reply:" argumentIndex:2 ofReply:0];
  [v1 setClasses:v4 forSelector:"recoverTLKSharesForInheritorWithSpecificUser:crk:tlkShares:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v22 forSelector:"createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:v22 forSelector:"preflightVouchWithCustodianRecoveryKeyWithSpecificUser:crk:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v22 forSelector:"vouchWithCustodianRecoveryKeyWithSpecificUser:crk:tlkShares:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v22 forSelector:"findCustodianRecoveryKeyWithSpecificUser:uuid:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v19 forSelector:"requestHealthCheckWithSpecificUser:requiresEscrowCheck:repair:danglingPeerCleanup:caesarPeerCleanup:updateIdMS:knownFederations:flowID:deviceSessionID:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v18 forSelector:"requestEscrowCheckWithSpecificUser:requiresEscrowCheck:passcodeGeneration:knownFederations:isBackgroundCheck:flowID:deviceSessionID:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v21 forSelector:"updateWithSpecificUser:forceRefetch:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:walrusSetting:webAccess:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v21 forSelector:"fetchTrustStateWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v17 forSelector:"fetchTrustStateWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:v23 forSelector:"updateTLKsWithSpecificUser:ckksKeys:tlkShares:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v4 forSelector:"updateTLKsWithSpecificUser:ckksKeys:tlkShares:reply:" argumentIndex:2 ofReply:0];
  [v1 setClasses:v24 forSelector:"updateTLKsWithSpecificUser:ckksKeys:tlkShares:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v14 forSelector:"fetchCurrentItemWithSpecificUser:items:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v13 forSelector:"fetchCurrentItemWithSpecificUser:items:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v24 forSelector:"fetchCurrentItemWithSpecificUser:items:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:v16 forSelector:"fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v15 forSelector:"fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v24 forSelector:"fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:" argumentIndex:1 ofReply:1];

  return v1;
}

void sub_10020A538(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 buf)
{
  if (a2 == 1)
  {
    v37 = objc_begin_catch(a1);
    v38 = secLogObjForScope();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v37;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "TrustedPeersHelperSetupProtocol failed, continuing, but you might crash later: %@", &buf, 0xCu);
    }

    v39 = v37;
    objc_exception_throw(v37);
  }

  _Unwind_Resume(a1);
}

void sub_10020A610(id a1)
{
  v1 = CKAcceptableValueClasses();
  v2 = [NSMutableSet setWithSet:v1];
  v3 = qword_1002B02B0;
  qword_1002B02B0 = v2;

  v4 = qword_1002B02B0;
  v5 = +[SecXPCHelper safeErrorClasses];
  [v4 unionSet:v5];
}

id SecCKKSHostOSVersion()
{
  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[14] = v0;
  v13 = v0;
  v12[12] = v0;
  v12[13] = v0;
  v12[10] = v0;
  v12[11] = v0;
  v12[8] = v0;
  v12[9] = v0;
  v12[6] = v0;
  v12[7] = v0;
  v12[4] = v0;
  v12[5] = v0;
  v12[2] = v0;
  v12[3] = v0;
  v12[0] = v0;
  v12[1] = v0;
  v9 = 256;
  v1 = sysctlbyname("kern.osrelease", v12, &v9, 0, 0);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[14] = v2;
  v11 = v2;
  v10[12] = v2;
  v10[13] = v2;
  v10[10] = v2;
  v10[11] = v2;
  v10[8] = v2;
  v10[9] = v2;
  v10[6] = v2;
  v10[7] = v2;
  v10[4] = v2;
  v10[5] = v2;
  v10[2] = v2;
  v10[3] = v2;
  v10[0] = v2;
  v10[1] = v2;
  v8 = 256;
  if (sysctlbyname("kern.osversion", v10, &v8, 0, 0) | v1 || (HIBYTE(v13) = 0, HIBYTE(v11) = 0, [NSString stringWithFormat:@"%s (%s)", v12, v10], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = +[NSProcessInfo processInfo];
    v4 = [v3 operatingSystemVersionString];

    v5 = [v4 stringByReplacingOccurrencesOfString:@"Version" withString:&stru_10028A1A8];
  }

  v6 = [NSString stringWithFormat:@"%@ %@", @"iphone", v5];

  return v6;
}

uint64_t sub_10020DB78(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_10020F5C8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10020F740;
  v19 = sub_10020F750;
  v5 = &_os_log_disabled;
  v20 = &_os_log_disabled;
  if (qword_1002B02C8 != -1)
  {
    dispatch_once(&qword_1002B02C8, &stru_1002890D0);
  }

  v6 = qword_1002B02C0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020F758;
  block[3] = &unk_1002890F8;
  v12 = v4;
  v13 = v3;
  v14 = &v15;
  v7 = v3;
  v8 = v4;
  dispatch_sync(v6, block);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t sub_10020F740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10020F758(void *a1)
{
  if (!qword_1002B02D0)
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = qword_1002B02D0;
    qword_1002B02D0 = v2;
  }

  v4 = a1[5];
  if (a1[4])
  {
    v5 = [v4 stringByAppendingFormat:@"-%@", a1[4]];
  }

  else
  {
    v5 = v4;
  }

  v13 = v5;
  v6 = [qword_1002B02D0 objectForKeyedSubscript:v5];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(a1[6] + 8) + 40))
  {
    v9 = v13;
    v10 = os_log_create("com.apple.security.ckks", [v13 cStringUsingEncoding:4]);
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [qword_1002B02D0 setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:v13];
  }
}

void sub_10020F86C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("ckks-logger", v3);
  v2 = qword_1002B02C0;
  qword_1002B02C0 = v1;
}

void sub_100215E14(id a1)
{
  byte_1002B02D8 = _os_feature_enabled_impl();
  v1 = secLogObjForScope();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_1002B02D8)
    {
      v2 = "enabled";
    }

    else
    {
      v2 = "disabled";
    }

    v3 = 136315138;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SeparateUserKeychain set via feature flag to %s", &v3, 0xCu);
  }
}

CFURLRef SecCopyURLForFileInUserScopedKeychainDirectory(uint64_t a1)
{
  if (qword_1002B02E0 != -1)
  {
    dispatch_once(&qword_1002B02E0, &stru_100289128);
  }

  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", byte_1002B02D8);
  v2 = SecCopyBaseFilesURL();
  if (a1)
  {
    Copy = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@", @"Library/Keychains", a1);
  }

  else
  {
    Copy = CFStringCreateCopy(kCFAllocatorDefault, @"Library/Keychains");
  }

  v4 = Copy;
  if (v2 && Copy)
  {
    v5 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v2, Copy, a1 == 0);
    CFRelease(v4);
LABEL_12:
    CFRelease(v2);
    return v5;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  v5 = 0;
  if (v2)
  {
    goto LABEL_12;
  }

  return v5;
}