void sub_2940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2958(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2970(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = [a2 identifier];
  v5 = [*(a1 + 32) objectForKeyedSubscript:?];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a3 = 1;
  }
}

void sub_3060(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    if ([v3 count] == &dword_0 + 1)
    {
      v4 = [v3 anyObject];
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) spokenPhrase];
        v7 = [v4 uniqueID];
        v18 = 138412546;
        v19 = v6;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Matched phrase %@ to car (%@).", &v18, 0x16u);
      }

      v8 = [v4 localizedDescription];
      v9 = [INSpeakableString alloc];
      v10 = [v4 uniqueID];
      v11 = [v9 initWithVocabularyIdentifier:v10 spokenPhrase:v8 pronunciationHint:0];

      v12 = [INSpeakableStringResolutionResult successWithResolvedString:v11];
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) spokenPhrase];
        v18 = 138412290;
        v19 = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Multiple cars matched phrase %@. Disambiguate.", &v18, 0xCu);
      }

      v16 = [v3 pk_setByApplyingBlock:&stru_1CFDA0];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v16;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Disambiguating car names: %@.", &v18, 0xCu);
      }

      v17 = [v16 allObjects];
      v12 = [INSpeakableStringResolutionResult disambiguationWithStringsToDisambiguate:v17];
    }
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Can't find a car that match the spoken phrase, fail later on.", &v18, 2u);
    }

    v12 = +[INSpeakableStringResolutionResult notRequired];
  }

  (*(*(a1 + 40) + 16))();
}

INSpeakableString *__cdecl sub_336C(id a1, PKSecureElementPass *a2)
{
  v2 = a2;
  v3 = [(PKSecureElementPass *)v2 localizedDescription];
  v4 = [INSpeakableString alloc];
  v5 = [(PKSecureElementPass *)v2 uniqueID];

  v6 = [v4 initWithVocabularyIdentifier:v5 spokenPhrase:v3 pronunciationHint:0];

  return v6;
}

void sub_3F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  objc_destroyWeak((v35 + 80));
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v36 - 176), 8);
  objc_destroyWeak((v36 - 224));
  _Unwind_Resume(a1);
}

void sub_3F60(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Invalidating session.", buf, 2u);
    }

    [v5 invalidateSessionWithCompletion:0];
  }

  if (*(a1 + 32))
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_406C;
    v7[3] = &unk_1CFDF0;
    v8 = *(a1 + 32);
    v9 = a2;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_4084(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_41B8;
    block[3] = &unk_1CFE68;
    block[4] = WeakRetained;
    v15 = *(a1 + 48);
    v11 = v5;
    v12 = v6;
    v16 = *(a1 + 64);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    dispatch_async(v9, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_41B8(uint64_t a1)
{
  v2 = 1;
  atomic_compare_exchange_strong((*(*(a1 + 72) + 8) + 24), &v2, 0);
  if (v2 != 1)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    dispatch_source_cancel(*(*(*(a1 + 80) + 8) + 40));
  }

  if (!*(a1 + 40) || *(a1 + 48) || (v5 = atomic_load((*(a1 + 32) + 16)), (v5 & 1) != 0))
  {
    v6 = *(*(a1 + 64) + 16);

    v6();
  }

  else
  {
    [PKContactlessInterfaceSessionDefaultBehavior attachDefaultBehaviorToSession:*(a1 + 40)];
    v7 = [*(*(*(a1 + 88) + 8) + 40) devicePrimaryContactlessPaymentApplication];
    if ([*(a1 + 40) activatePaymentApplication:v7 forPaymentPass:*(*(*(a1 + 88) + 8) + 40)])
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Successfully activated car applet.", buf, 2u);
      }

      v9 = *(a1 + 40);
      v10 = *(*(*(a1 + 96) + 8) + 40);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_43C0;
      v13[3] = &unk_1CFE40;
      v11 = *(a1 + 56);
      v15 = *(a1 + 64);
      v14 = *(a1 + 40);
      [v9 sendRKEFunction:v10 action:v11 withAuthorization:0 completion:v13];
    }

    else
    {
      v12 = *(a1 + 40);
      (*(*(a1 + 64) + 16))();
    }
  }
}

void sub_43D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: 10 seconds elapsed, time session out.", v3, 2u);
    }

    [WeakRetained[3] invalidateSessionWithCompletion:0];
  }
}

void sub_4A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  objc_destroyWeak((v35 + 80));
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v36 - 176), 8);
  objc_destroyWeak((v36 - 224));
  _Unwind_Resume(a1);
}

void sub_4A98(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Invalidating session.", buf, 2u);
    }

    [v5 invalidateSessionWithCompletion:0];
  }

  if (*(a1 + 32))
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_4BA4;
    v7[3] = &unk_1CFDF0;
    v8 = *(a1 + 32);
    v9 = a2;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_4BBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4CF0;
    block[3] = &unk_1CFE68;
    block[4] = WeakRetained;
    v15 = *(a1 + 48);
    v11 = v5;
    v12 = v6;
    v16 = *(a1 + 64);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    dispatch_async(v9, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_4CF0(uint64_t a1)
{
  v2 = 1;
  atomic_compare_exchange_strong((*(*(a1 + 72) + 8) + 24), &v2, 0);
  if (v2 != 1)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    dispatch_source_cancel(*(*(*(a1 + 80) + 8) + 40));
  }

  if (!*(a1 + 40) || *(a1 + 48) || (v5 = atomic_load((*(a1 + 32) + 16)), (v5 & 1) != 0))
  {
    v6 = *(*(a1 + 64) + 16);

    v6();
  }

  else
  {
    [PKContactlessInterfaceSessionDefaultBehavior attachDefaultBehaviorToSession:*(a1 + 40)];
    v7 = [*(*(*(a1 + 88) + 8) + 40) devicePrimaryContactlessPaymentApplication];
    if ([*(a1 + 40) activatePaymentApplication:v7 forPaymentPass:*(*(*(a1 + 88) + 8) + 40)])
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Successfully activated car applet.", buf, 2u);
      }

      v9 = *(a1 + 40);
      v10 = *(*(*(a1 + 96) + 8) + 40);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_4EF8;
      v13[3] = &unk_1CFE40;
      v11 = *(a1 + 56);
      v15 = *(a1 + 64);
      v14 = *(a1 + 40);
      [v9 sendRKEFunction:v10 action:v11 withAuthorization:0 completion:v13];
    }

    else
    {
      v12 = *(a1 + 40);
      (*(*(a1 + 64) + 16))();
    }
  }
}

void sub_4F0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: 10 seconds elapsed, time session out.", v3, 2u);
    }

    [WeakRetained[3] invalidateSessionWithCompletion:0];
  }
}

uint64_t sub_5040(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_5094(a1, a2);
}

uint64_t sub_5094(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_51F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_52F0()
{
  v0 = sub_16A104();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t variable initialization expression of CarCommandsDirectInvocationIntent.confirmationResponse@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_169004();

  return sub_5370(a1, 1, 1, v2);
}

uint64_t type metadata accessor for CarCommandsChangeStationCATsSimple()
{
  result = qword_1E59D0;
  if (!qword_1E59D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_546C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_5488@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_54BC(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_54CC@<X0>(_BYTE *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

_DWORD *sub_5510@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void sub_5538(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_556C();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_5574()
{
  v1 = sub_5B3C();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_559C@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of CarCommandsDirectInvocationIntent.payload();
  *a1 = result;
  return result;
}

uint64_t sub_55D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_3976C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_5600@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_39748(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_5630@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_39780(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_5668@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_39764(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_569C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_39760(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_56E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_39774(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_5758(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_57A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5810(uint64_t a1)
{
  v2 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_58F0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_5984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3776C();
  *a1 = result;
  return result;
}

uint64_t sub_59F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CarCommandsAppResolutionCATs()
{
  result = qword_1E5F10;
  if (!qword_1E5F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5BD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_5C28(a1, a2);
}

uint64_t sub_5C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_16A084();
  (*(v5 + 8))(a2, v4);
  sub_5810(a1);
  return v12;
}

uint64_t sub_5D94()
{
  v0 = sub_16A0A4();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_5DF4()
{
  sub_16A6F4();
}

uint64_t sub_5E64()
{
  sub_16A6F4();
}

uint64_t sub_5F38()
{
  sub_16A6F4();
}

uint64_t sub_5FAC()
{
  sub_16A6F4();
}

uint64_t sub_6004()
{
  sub_16A6F4();
}

uint64_t sub_6080(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_A0C4();
  }

  else
  {
    sub_9FA4();
  }

  sub_16A6F4();
}

uint64_t sub_6108(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_A148();
    sub_A0A8();
  }

  else
  {
    sub_A160();
  }

  sub_16A6F4();
}

uint64_t sub_618C()
{
  sub_16A6F4();
}

uint64_t sub_627C(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_A1EC();
  }

  sub_16A6F4();
}

uint64_t sub_631C()
{
  sub_16A6F4();
}

uint64_t sub_642C()
{
  sub_A178();
  switch(v0)
  {
    case 1:
      sub_A0FC();
      break;
    case 3:
      sub_9F90();
      break;
    case 4:
      sub_9FEC();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_6504(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_A000();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_65AC()
{
  sub_16A6F4();
}

uint64_t sub_6650(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 11:
      sub_A000();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_6808(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_A214();
  }

  else
  {
    sub_9F90();
  }

  sub_16A6F4();
}

uint64_t sub_6894()
{
  sub_16A6F4();
}

uint64_t sub_68F8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_9FB8();
      break;
    case 2:
      sub_9FEC();
      break;
    case 5:
      sub_9F1C();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_69D4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_9FB8();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_6A9C()
{
  sub_16A6F4();
}

uint64_t sub_6B10(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
      break;
    case 2:
    case 4:
      sub_9FA4();
      break;
    case 5:
      sub_9F1C();
      break;
    default:
      sub_9FB8();
      break;
  }

  sub_16A6F4();
}

uint64_t sub_6C08(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      sub_9FB8();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_6D28()
{
  sub_A178();
  switch(v0)
  {
    case 2:
      sub_A0FC();
      break;
    case 3:
      sub_9F90();
      break;
    case 4:
      sub_9FEC();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_6DE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_16A6F4();
}

uint64_t sub_6E40(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_A214();
  }

  else
  {
    sub_A0E0();
  }

  sub_16A6F4();
}

uint64_t sub_6EB4()
{
  sub_16A6F4();
}

uint64_t sub_6F68()
{
  sub_16A6F4();
}

uint64_t sub_6FC4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      sub_9FB8();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_70A8()
{
  sub_A190();
  switch(v0)
  {
    case 3:
      sub_9F7C();
      break;
    case 12:
      sub_9F1C();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_7228()
{
  sub_16A6F4();
}

uint64_t sub_7290()
{
  sub_A190();
  switch(v0)
  {
    case 1:
      sub_9F7C();
      break;
    case 3:
      sub_9F1C();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_7318()
{
  sub_16A6F4();
}

uint64_t sub_7398()
{
  sub_9EF4();
  switch(v0)
  {
    case 2:
      sub_9FDC();
      break;
    case 3:
    case 4:
      sub_9FB8();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_7460()
{
  sub_9EF4();
  switch(v0)
  {
    case 1:
      sub_9FDC();
      break;
    case 2:
      sub_A234();
      break;
    case 3:
    case 4:
      sub_9FB8();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_752C()
{
  sub_9EF4();
  switch(v0)
  {
    case 1:
      sub_9FB8();
      break;
    case 2:
      sub_9FDC();
      break;
    case 3:
      sub_9FB8();
      sub_A1A8();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_75E0(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_9F34();
  }

  sub_16A6F4();
}

uint64_t sub_7670()
{
  sub_9EF4();
  switch(v0)
  {
    case 3:
      sub_A234();
      sub_A000();
      break;
    case 4:
      sub_9FDC();
      sub_A000();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_775C(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_9F7C();
  }

  sub_16A6F4();
}

uint64_t sub_77C8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
      sub_9F1C();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_7880()
{
  sub_16A6F4();
}

Swift::Int sub_79F8()
{
  sub_A05C();
  if (!v0)
  {
    sub_9F7C();
  }

  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_7AA8(uint64_t a1, char a2)
{
  sub_16AF14();
  if (!a2)
  {
    sub_9F34();
  }

  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_7BA4()
{
  sub_A05C();
  sub_16A6F4();

  return sub_16AF54();
}

Swift::Int sub_7C30()
{
  sub_A05C();
  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_7CCC()
{
  sub_A05C();
  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_7D44()
{
  sub_A05C();
  if (v0)
  {
    sub_A214();
  }

  else
  {
    sub_A0E0();
  }

  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_7E4C()
{
  sub_A05C();
  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_7EF4()
{
  sub_A05C();
  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_7F74()
{
  sub_A05C();
  if (v0)
  {
    sub_A214();
  }

  else
  {
    sub_9F90();
  }

  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_807C()
{
  sub_A05C();
  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_8170(uint64_t a1, unsigned __int8 a2)
{
  sub_16AF14();
  sub_16AF24(a2);
  return sub_16AF54();
}

Swift::Int sub_81B4()
{
  sub_A05C();
  if (!v0)
  {
    sub_A1EC();
  }

  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_8230()
{
  sub_A05C();
  sub_16AF34(v0);
  return sub_16AF54();
}

Swift::Int sub_8284(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_16AF14();
  a3(v6, a2);
  return sub_16AF54();
}

Swift::Int sub_82E8()
{
  sub_A05C();
  if (v0)
  {
    sub_A148();
    sub_A0A8();
  }

  else
  {
    sub_A160();
  }

  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_8360()
{
  sub_A05C();
  if (v0)
  {
    sub_A0C4();
  }

  else
  {
    sub_9FA4();
  }

  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_83E8()
{
  sub_A05C();
  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_8454()
{
  sub_A05C();
  sub_16A6F4();

  return sub_16AF54();
}

Swift::Int sub_84C0()
{
  sub_16AF14();
  sub_16A6F4();
  return sub_16AF54();
}

Swift::Int sub_850C()
{
  sub_A05C();
  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_859C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_16AF14();
  a3(a2);
  sub_16A6F4();

  return sub_16AF54();
}

Swift::Int sub_8604()
{
  sub_A05C();
  sub_A074();

  return sub_16AF54();
}

Swift::Int sub_8690(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_16AF14();
  a3(a2);
  return sub_16AF54();
}

void sub_86E4(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v209 = a2;
  v212 = a3;
  v4 = sub_169004();
  v5 = sub_9F48(v4);
  v200 = v6;
  v201 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_A138();
  v199 = v10 - v9;
  v11 = sub_1693D4();
  v12 = sub_9F48(v11);
  v208 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_A128();
  v203 = v16 - v17;
  __chkstk_darwin(v18);
  v210 = &v198 - v19;
  v202 = type metadata accessor for LocalizedMeasurementUnitProvider();
  v20 = *(*(v202 - 8) + 64);
  __chkstk_darwin(v202);
  sub_A138();
  v204 = v22 - v21;
  v23 = sub_169414();
  v206 = sub_9F48(v23);
  v207 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v206);
  sub_A128();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  v205 = &v198 - v31;
  v32 = sub_5758(&qword_1E5F60, &qword_16D388);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v198 - v34;
  v36 = sub_169D24();
  v37 = sub_9F48(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v37);
  sub_A128();
  v44 = v42 - v43;
  __chkstk_darwin(v45);
  v47 = &v198 - v46;
  v48 = sub_1693E4();
  v49 = sub_9F48(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  __chkstk_darwin(v49);
  sub_A138();
  v56 = v55 - v54;
  v57 = *(v51 + 16);
  v211 = a1;
  v58 = a1;
  v60 = v59;
  v57(v56, v58, v59);
  v61 = (*(v51 + 88))(v56, v60);
  if (v61 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v62 = sub_A118();
    v63(v62);
    (*(v39 + 32))(v47, v56, v36);
    v210 = v47;
    sub_169D14();
    v64 = sub_169974();
    v65 = v39;
    if (sub_9E2C(v35, 1, v64) == 1)
    {
      sub_9E54(v35);
LABEL_4:
      sub_9F6C();
      sub_16ACF4(36);
      sub_A020();
      v216._countAndFlagsBits = 0xD000000000000021;
      v216._object = 0x800000000017F680;
      sub_16A744(v216);
      sub_A08C();
      sub_A248();
      v66 = v214;
      v67 = v215;
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v68 = sub_16A584();
      sub_9DA0(v68, qword_1E65C0);
      sub_16A9A4();
      sub_9F5C();
      sub_386D8(v69, v70, v71, v72, v73, v74, 28, v66, v67);

      (*(v39 + 8))(v210, v36);
      goto LABEL_7;
    }

    v93 = sub_169954();
    v95 = v94;
    (*(*(v64 - 8) + 8))(v35, v64);
    if (v93 == 0x616D6D6F43726163 && v95 == 0xEB0000000073646ELL)
    {

      v98 = v209;
    }

    else
    {
      v97 = sub_16AE54();

      v98 = v209;
      if ((v97 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v130 = v210;
    (*(v39 + 16))(v44, v210, v36);
    v131 = type metadata accessor for CarCommandsNLv3Intent();
    v132 = *(v131 + 48);
    v133 = *(v131 + 52);
    swift_allocObject();
    v134 = sub_E7DB8(v44);
    if (*(v98 + 16))
    {
      sub_E6024();
      sub_9FC4();
      if ((sub_9B58(v135, v98, v136) & 1) == 0)
      {
        sub_9F6C();
        sub_16ACF4(53);
        sub_A020();
        v220._countAndFlagsBits = 0xD000000000000022;
        v220._object = 0x800000000017F650;
        sub_16A744(v220);
        sub_9DD8();
        v221._countAndFlagsBits = sub_16A924();
        sub_16A744(v221);

        sub_A02C();
        sub_A08C();
        sub_A248();
        v154 = v214;
        if (qword_1E58E8 != -1)
        {
          sub_9ED4();
        }

        v155 = sub_16A584();
        sub_9DA0(v155, qword_1E65C0);
        sub_16A9A4();
        sub_A1D8();
        sub_9F5C();
        sub_386D8(v156, v157, v158, v159, v160, v161, 37, v154, v198);

        (*(v65 + 8))(v210, v36);
        goto LABEL_7;
      }
    }

    v137 = v212;
    v212[3] = v131;
    v137[4] = &off_1D9080;
    *v137 = v134;
    (*(v65 + 8))(v130, v36);
    return;
  }

  if (v61 == enum case for Parse.directInvocation(_:))
  {
    v75 = sub_A118();
    v76(v75);
    v77 = v208;
    v78 = v210;
    (*(v208 + 32))();
    v79 = v11;
    v80 = sub_1693B4();
    v82 = sub_FD1A8(v80, v81);
    if (v82 != 7)
    {
      v117 = v82;
      v118 = type metadata accessor for CarCommandsDirectInvocationIntent();
      v119 = v203;
      (*(v77 + 16))(v203, v78, v11);
      v120 = sub_14C76C(v117, v119);
      v211 = "dsNLIntentFactory.swift";
      sub_9F6C();
      sub_16ACF4(63);
      sub_A020();
      v217._countAndFlagsBits = 0xD00000000000002ALL;
      v217._object = 0x800000000017F5D0;
      sub_16A744(v217);
      v213 = v120;
      sub_16AD84();
      v218._countAndFlagsBits = 0xD000000000000011;
      v218._object = 0x800000000017F600;
      sub_16A744(v218);
      LOBYTE(v213) = v117;
      sub_16AD84();
      v121 = v214;
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v122 = sub_16A584();
      sub_9DA0(v122, qword_1E65C0);
      sub_16A9A4();
      sub_A1D8();
      sub_9F5C();
      sub_386D8(v123, v124, v125, v126, v127, v128, 59, v121, v198);

      v129 = v212;
      v212[3] = v118;
      v129[4] = &off_1DA5E0;
      *v129 = v120;
      (*(v77 + 8))(v210, v79);
      return;
    }

    v83 = sub_1693B4();
    v85 = v84;
    v86 = sub_168A94();
    v87 = [v86 identifier];

    v88 = sub_16A664();
    v90 = v89;

    if (v88 == v83 && v90 == v85)
    {
    }

    else
    {
      v92 = sub_A1B4();

      if ((v92 & 1) == 0)
      {
        v171 = sub_168A84();
        v172 = [v171 identifier];

        v173 = sub_16A664();
        v175 = v174;

        if (v173 == v83 && v175 == v85)
        {
        }

        else
        {
          v177 = sub_A1B4();

          if ((v177 & 1) == 0)
          {
            sub_9F6C();
            sub_16ACF4(75);
            sub_A020();
            v223._countAndFlagsBits = 0xD00000000000002BLL;
            v223._object = 0x800000000017F580;
            sub_16A744(v223);
            sub_16AD84();
            v224._countAndFlagsBits = 0xD00000000000001ELL;
            v224._object = 0x800000000017F5B0;
            sub_16A744(v224);
            v179 = v214;
            v178 = v215;
            if (qword_1E58E8 != -1)
            {
              sub_9ED4();
            }

            v180 = sub_16A584();
            sub_9DA0(v180, qword_1E65C0);
            sub_16A9A4();
            sub_9F5C();
            sub_386D8(v181, v182, v183, v184, v185, v186, 69, v179, v178);

            (*(v77 + 8))(v78, v79);
            goto LABEL_7;
          }
        }

        v147 = type metadata accessor for CarCommandsDirectInvocationIntent();
        v148 = &enum case for ConfirmationResponse.rejected(_:);
        goto LABEL_39;
      }
    }

    v147 = type metadata accessor for CarCommandsDirectInvocationIntent();
    v148 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_39:
    v150 = v199;
    v149 = v200;
    v151 = v201;
    (*(v200 + 104))(v199, *v148, v201);
    v152 = sub_14C9DC(v150);
    (*(v149 + 8))(v150, v151);
    v153 = v212;
    v212[3] = v147;
    v153[4] = &off_1DA5E0;
    *v153 = v152;
    (*(v77 + 8))(v78, v79);
    return;
  }

  if (v61 == enum case for Parse.uso(_:))
  {
    v99 = sub_A118();
    v100(v99);
    v102 = v206;
    v101 = v207;
    v103 = v205;
    (*(v207 + 32))(v205, v56, v206);
    (*(v101 + 16))(v29, v103, v102);
    v104 = v204;
    sub_168444();
    sub_169EB4();
    sub_169EA4();
    sub_169E94();

    v105 = v104 + *(v202 + 20);
    sub_169ED4();

    v106 = type metadata accessor for CarCommandsNLv4Intent();
    v107 = *(v106 + 48);
    v108 = *(v106 + 52);
    swift_allocObject();
    v109 = sub_8A460(v29, v104);
    if (v109)
    {
      v110 = v109;
      v111 = v209;
      if (!*(v209 + 16) || (sub_89438(), sub_9FC4(), (sub_9B58(v112, v111, v113) & 1) != 0))
      {
        v114 = v212;
        v212[3] = v106;
        v114[4] = &off_1D6698;
        *v114 = v110;
        v115 = sub_A200();
        v116(v115);
        return;
      }

      sub_9F6C();
      sub_16ACF4(53);
      sub_A020();
      v225._countAndFlagsBits = 0xD000000000000022;
      v225._object = 0x800000000017F650;
      sub_16A744(v225);
      sub_9DD8();
      v226._countAndFlagsBits = sub_16A924();
      sub_16A744(v226);

      sub_A02C();
      sub_A08C();
      sub_A248();
      v187 = v214;
      v188 = v215;
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v189 = sub_16A584();
      sub_9DA0(v189, qword_1E65C0);
      sub_16A9A4();
      sub_9F5C();
      sub_386D8(v190, v191, v192, v193, v194, v195, 51, v187, v188);
    }

    else
    {
      sub_9F6C();
      sub_16ACF4(36);
      sub_A020();
      v222._countAndFlagsBits = 0xD000000000000022;
      v222._object = 0x800000000017F620;
      sub_16A744(v222);
      sub_16AD84();
      v163 = v214;
      v162 = v215;
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v164 = sub_16A584();
      sub_9DA0(v164, qword_1E65C0);
      sub_16A9A4();
      sub_9F5C();
      sub_386D8(v165, v166, v167, v168, v169, v170, 44, v163, v162);
    }

    v196 = sub_A200();
    v197(v196);
LABEL_7:
    sub_A220();
    return;
  }

  sub_9F6C();
  sub_16ACF4(19);
  sub_A020();
  v219._countAndFlagsBits = 0xD000000000000010;
  v219._object = 0x800000000017F560;
  sub_16A744(v219);
  sub_A08C();
  sub_A248();
  v138 = v214;
  v139 = v215;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v140 = sub_16A584();
  sub_9DA0(v140, qword_1E65C0);
  sub_16A9A4();
  sub_9F5C();
  sub_386D8(v141, v142, v143, v144, v145, v146, 73, v138, v139);

  sub_A220();
  (*(v51 + 8))(v56, v60);
}

uint64_t sub_96FC(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_41;
  }

  v4 = *(a2 + 40);
  sub_16AF14();
  sub_82B98(a1);
  sub_16A6F4();

  v5 = sub_16AF54();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xE600000000000000;
      v10 = 0x64656B636F6CLL;
      switch(*(*(a2 + 48) + v7))
      {
        case 1:
          v9 = 0xE800000000000000;
          v11 = 0x696873616C66;
          goto LABEL_12;
        case 2:
          v10 = 0x746E656C6973;
          break;
        case 3:
          v9 = 0xE800000000000000;
          v11 = 0x69646E756F73;
LABEL_12:
          v10 = v11 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
          break;
        case 4:
          v9 = 0xE800000000000000;
          v10 = 0x64656B636F6C6E75;
          break;
        case 5:
          v9 = 0xE400000000000000;
          v10 = 1802658160;
          break;
        case 6:
          v9 = 0xE700000000000000;
          v10 = 0x6E776F6E6B6E75;
          break;
        case 7:
          v10 = 0x61635F7075746573;
          v9 = 0xED000079616C7072;
          break;
        case 8:
          v9 = 0xE300000000000000;
          v10 = 7827308;
          break;
        case 9:
          v9 = 0xE400000000000000;
          v10 = 1751607656;
          break;
        case 0xA:
          sub_A1A8();
          v10 = v13 + 1;
          v9 = 0x800000000017E3D0;
          break;
        case 0xB:
          sub_A1A8();
          v10 = v12 + 3;
          v9 = 0x800000000017E3F0;
          break;
        case 0xC:
          v10 = 0x697461676976616ELL;
          v9 = 0xEE006574754D6E6FLL;
          break;
        case 0xD:
          v10 = 0xD000000000000010;
          v9 = 0x800000000017E420;
          break;
        default:
          break;
      }

      v14 = 0xE600000000000000;
      v15 = 0x64656B636F6CLL;
      switch(a1)
      {
        case 1:
          v14 = 0xE800000000000000;
          v16 = 0x696873616C66;
          goto LABEL_27;
        case 2:
          v15 = 0x746E656C6973;
          break;
        case 3:
          v14 = 0xE800000000000000;
          v16 = 0x69646E756F73;
LABEL_27:
          v15 = v16 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
          break;
        case 4:
          v14 = 0xE800000000000000;
          v15 = 0x64656B636F6C6E75;
          break;
        case 5:
          v14 = 0xE400000000000000;
          v15 = 1802658160;
          break;
        case 6:
          v14 = 0xE700000000000000;
          v15 = 0x6E776F6E6B6E75;
          break;
        case 7:
          v15 = 0x61635F7075746573;
          v14 = 0xED000079616C7072;
          break;
        case 8:
          v14 = 0xE300000000000000;
          v15 = 7827308;
          break;
        case 9:
          v14 = 0xE400000000000000;
          v15 = 1751607656;
          break;
        case 10:
          sub_A1A8();
          v15 = v18 + 1;
          v14 = 0x800000000017E3D0;
          break;
        case 11:
          sub_A1A8();
          v15 = v17 + 3;
          v14 = 0x800000000017E3F0;
          break;
        case 12:
          v15 = 0x697461676976616ELL;
          v14 = 0xEE006574754D6E6FLL;
          break;
        case 13:
          v15 = 0xD000000000000010;
          v14 = 0x800000000017E420;
          break;
        default:
          break;
      }

      if (v10 == v15 && v9 == v14)
      {
        break;
      }

      v20 = sub_16AE54();

      if ((v20 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v20 & 1;
    }

    v20 = 1;
  }

  else
  {
LABEL_41:
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_9B58(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v6 = *(a2 + 40);
  sub_16AF14();
  a3(a1);
  sub_16A6F4();

  v7 = sub_16AF54();
  v8 = ~(-1 << *(a2 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a2 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3)(*(*(a2 + 48) + v9));
    v14 = v13;
    if (v12 == (a3)(a1) && v14 == v15)
    {

      return 1;
    }

    v17 = sub_16AE54();

    v7 = v9 + 1;
  }

  while ((v17 & 1) == 0);
  return v11;
}

BOOL sub_9CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_16AF14();
  sub_16A6F4();
  v7 = sub_16AF54();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_16AE54();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_9DA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_9DD8()
{
  result = qword_1E5F68;
  if (!qword_1E5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E5F68);
  }

  return result;
}

uint64_t sub_9E54(uint64_t a1)
{
  v2 = sub_5758(&qword_1E5F60, &qword_16D388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9ED4()
{

  return swift_once();
}

void sub_A020()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

void sub_A02C()
{
  v1._countAndFlagsBits = 0x617020726F662022;
  v1._object = 0xEE0022203A657372;

  sub_16A744(v1);
}

uint64_t sub_A05C()
{

  return sub_16AF14();
}

uint64_t sub_A074()
{

  return sub_16A6F4();
}

uint64_t sub_A08C()
{
  v2 = *(v0 - 120);

  return sub_16AD84();
}

uint64_t sub_A1B4()
{

  return sub_16AE54();
}

double sub_A220()
{
  v1 = *(v0 - 112);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

void sub_A248()
{
  v1._countAndFlagsBits = 34;
  v1._object = 0xE100000000000000;

  sub_16A744(v1);
}

uint64_t sub_A2A8()
{
  sub_D2DC();
  v1[38] = v2;
  v1[39] = v0;
  v1[37] = v3;
  v4 = sub_5758(&qword_1E5F78, &unk_16D400);
  sub_D414(v4);
  v6 = *(v5 + 64);
  v1[40] = sub_D3C8();
  v7 = sub_168B74();
  sub_D414(v7);
  v9 = *(v8 + 64);
  v1[41] = sub_D3C8();
  v10 = sub_1691E4();
  v1[42] = v10;
  v11 = *(v10 - 8);
  v1[43] = v11;
  v12 = *(v11 + 64);
  v1[44] = sub_D3C8();
  v13 = sub_16A164();
  sub_D414(v13);
  v15 = *(v14 + 64);
  v1[45] = sub_D3C8();
  v16 = type metadata accessor for NeedsDisambiguationParameters(0);
  v1[46] = v16;
  sub_D414(v16);
  v18 = *(v17 + 64);
  v1[47] = sub_D3C8();
  v19 = sub_168E14();
  v1[48] = v19;
  v20 = *(v19 - 8);
  v1[49] = v20;
  v21 = *(v20 + 64);
  v1[50] = sub_D3C8();
  v22 = sub_D388();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_D440();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = (*(**(v24 + 312) + 264))();
  v28 = 0x800000000017F8A0;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v29 = 0xD00000000000001FLL;
  v30 = sub_16A584();
  sub_9DA0(v30, qword_1E65C0);
  v64 = sub_16A9A4();
  *(v24 + 256) = 0xD00000000000009BLL;
  *(v24 + 264) = 0x800000000017F6D0;
  *(v24 + 272) = 47;
  *(v24 + 280) = 0xE100000000000000;
  sub_D030();
  v31 = sub_16AB34();
  v32 = sub_15AE4(v31);
  v34 = v33;

  if (v34)
  {
    a12 = v32;
    a13 = v34;
    v65._countAndFlagsBits = 32;
    v65._object = 0xE100000000000000;
    sub_16A744(v65);
    v66._countAndFlagsBits = 0xD00000000000001FLL;
    v66._object = 0x800000000017F8A0;
    sub_16A744(v66);
    v29 = a12;
    v28 = a13;
  }

  a12 = 58;
  a13 = 0xE100000000000000;
  *(v24 + 288) = 34;
  v67._countAndFlagsBits = sub_16AE24();
  sub_16A744(v67);

  v68._countAndFlagsBits = a12;
  v68._object = a13;
  sub_16A744(v68);

  v35._countAndFlagsBits = sub_378D0(v27);
  if (v35._object)
  {
    a12 = 32;
    a13 = 0xE100000000000000;
    sub_16A744(v35);

    v69._countAndFlagsBits = a12;
    v69._object = a13;
    sub_16A744(v69);
  }

  v36 = sub_16A574();
  if (os_log_type_enabled(v36, v64))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    a12 = v38;
    *v37 = 136315138;
    v39 = sub_15BC8(v29, v28, &a12);

    *(v37 + 4) = v39;
    _os_log_impl(&dword_0, v36, v64, "%s", v37, 0xCu);
    sub_D13C(v38);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v41 = *(v24 + 400);
  v43 = *(v24 + 304);
  v42 = *(v24 + 312);
  (*(*v42 + 216))(v40);
  sub_12AF64(v43, (v24 + 16));
  v44 = sub_D13C((v24 + 16));
  (*(*v42 + 240))(v44);
  v45 = *sub_D084((v24 + 56), *(v24 + 80));
  LOBYTE(v45) = sub_11B5C0();
  sub_D13C((v24 + 56));
  if (v45)
  {
    v46 = *(v24 + 312);
    type metadata accessor for DisambiguationSnippetFactory();
    (*(*v46 + 288))();
    swift_task_alloc();
    sub_D3E0();
    *(v24 + 408) = v47;
    *v47 = v48;
    v47[1] = sub_A924;
    v49 = *(v24 + 400);
    v50 = *(v24 + 296);
    v51 = *(v24 + 304);
    sub_D2C0();

    return sub_CF988();
  }

  else
  {
    v55 = *(v24 + 368);
    v54 = *(v24 + 376);
    v56 = *(v24 + 360);
    v57 = sub_11A408(*(v24 + 304), 1);
    v58 = *(v55 + 20);
    v59 = sub_16A0C4();
    sub_5370(v54 + v58, 1, 1, v59);
    sub_5370(v54 + *(v55 + 24), 1, 1, v59);
    *v54 = v57;
    type metadata accessor for CarCommandsCATPatternsExecutor(0);
    sub_16A154();
    *(v24 + 424) = sub_16A094();
    v60 = swift_task_alloc();
    *(v24 + 432) = v60;
    *v60 = v24;
    v60[1] = sub_AAD4;
    v61 = *(v24 + 376);
    sub_D2C0();

    return sub_156E34(v62);
  }
}

uint64_t sub_A924()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 416) = v0;

  sub_D13C((v3 + 216));
  if (v0)
  {
    v9 = sub_B058;
  }

  else
  {
    v9 = sub_AA2C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_AA2C()
{
  sub_D3A4();
  (*(v0[49] + 8))(v0[50], v0[48]);
  sub_D45C();

  sub_D37C();

  return v1();
}

uint64_t sub_AAD4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *(v4 + 424);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v10 + 440) = v9;
  *(v10 + 448) = v0;

  if (v0)
  {
    v11 = sub_B100;
  }

  else
  {
    v11 = sub_ABF4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_ABF4()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];
  sub_D364();
  (*(v8 + 288))();
  sub_168B54();
  sub_169164();
  sub_1691A4();
  sub_1691C4();
  (*(v2 + 16))(v6, v1, v3);
  sub_5370(v6, 0, 1, v3);
  sub_1691B4();
  v9 = v0[21];
  sub_D084(v0 + 17, v0[20]);
  v10 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  swift_task_alloc();
  sub_D3E0();
  v0[57] = v11;
  *v11 = v12;
  v11[1] = sub_AD7C;
  v13 = v0[55];
  v14 = v0[44];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v0 + 22);
}

uint64_t sub_AD7C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 464) = v0;

  if (v0)
  {
    v9 = sub_AF78;
  }

  else
  {
    v9 = sub_AE7C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_AE7C()
{
  sub_D3A4();
  v1 = *(v0 + 440);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 296);
  (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
  sub_D124((v0 + 176), v0 + 96);
  sub_D13C((v0 + 136));

  sub_D0C8(v5);
  (*(v3 + 8))(v2, v4);
  sub_D124((v0 + 96), v6);
  sub_D45C();

  sub_D37C();

  return v7();
}

uint64_t sub_AF78()
{
  sub_D3A4();
  v1 = v0[55];
  v3 = v0[49];
  v2 = v0[50];
  v5 = v0[47];
  v4 = v0[48];
  (*(v0[43] + 8))(v0[44], v0[42]);
  sub_D13C(v0 + 17);

  sub_D0C8(v5);
  (*(v3 + 8))(v2, v4);
  v6 = v0[58];
  sub_D318();

  sub_D37C();

  return v7();
}

uint64_t sub_B058()
{
  sub_D3A4();
  (*(v0[49] + 8))(v0[50], v0[48]);
  v1 = v0[52];
  sub_D318();

  sub_D37C();

  return v2();
}

uint64_t sub_B100()
{
  sub_D3A4();
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  sub_D0C8(v0[47]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[56];
  sub_D318();

  sub_D37C();

  return v5();
}

uint64_t sub_B1B4()
{
  v1 = sub_1693E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v0 + 264);
  v75[3] = *v0 + 264;
  v76 = v0;
  v75[2] = v7;
  v75[1] = v7(v4);
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_16ACF4(30);
  v85._countAndFlagsBits = 0xD00000000000001CLL;
  v85._object = 0x800000000017F8F0;
  sub_16A744(v85);
  sub_169384();
  sub_16AD84();
  v8 = *(v2 + 8);
  v8(v6, v1);
  v9 = v81;
  v10 = v82;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  sub_16A9A4();
  sub_D370();
  sub_386D8(v12, v13, v14, v15, v16, v17, 56, v9, v10);

  sub_169384();
  sub_86E4(v6, &_swiftEmptySetSingleton, v77);
  v8(v6, v1);
  if (!v77[3])
  {
    sub_D188(v77, &qword_1E5F80, &unk_16E7E0);
    v78 = 0u;
    v79 = 0u;
    v80 = 0;
    goto LABEL_13;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E5F98, &unk_16D420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    goto LABEL_13;
  }

  if (!*(&v79 + 1))
  {
LABEL_13:
    sub_D188(&v78, &qword_1E5F88, &unk_16D410);
    sub_D398();
    v32();
    sub_9FB8();
    sub_16A9A4();
    sub_D264();
    sub_D370();
    sub_386D8(v33, v34, v35, v36, v37, v38, 59, v39, v75[0]);
    sub_D47C();
    return sub_169204();
  }

  sub_D124(&v78, &v81);
  v18 = v83;
  v19 = v84;
  sub_D084(&v81, v83);
  if ((*(v19 + 24))(v18, v19) & 1) != 0 || (v20 = v83, v21 = v84, sub_D084(&v81, v83), ((*(v21 + 40))(v20, v21)))
  {
    sub_D398();
    v22();
    sub_9FB8();
    sub_16A9A4();
    sub_D264();
    sub_D370();
    sub_386D8(v23, v24, v25, v26, v27, v28, 64, v29, v75[0]);
    sub_D47C();
    v30 = sub_1691F4();
  }

  else
  {
    v42 = v83;
    v41 = v84;
    sub_D084(&v81, v83);
    sub_D400();
    v44 = v43(v42);
    if (v45)
    {
      v46 = v44 == 0xD000000000000012 && v45 == 0x800000000017F6B0;
      if (v46 || (sub_16AE54() & 1) != 0)
      {

        sub_D398();
        v47();
        sub_9FB8();
        sub_16A9A4();
        sub_D370();
        sub_386D8(v48, v49, v50, v51, v52, v53, 70, v54, v41);
        sub_D47C();
        sub_16A1C4();
      }

      else
      {
        sub_D398();
        v63();
        *&v78 = 0;
        *(&v78 + 1) = 0xE000000000000000;
        sub_16ACF4(29);

        sub_D434();
        *&v78 = 0xD00000000000001BLL;
        *(&v78 + 1) = v64;
        v65 = v83;
        sub_D084(&v81, v83);
        sub_D400();
        v77[0] = v66(v65);
        v77[1] = v67;
        sub_5758(&qword_1E5FA0, &qword_172DD0);
        v86._countAndFlagsBits = sub_16A694();
        sub_16A744(v86);

        v68 = v78;
        sub_16A9A4();
        sub_D370();
        sub_386D8(v69, v70, v71, v72, v73, v74, 73, v68, *(&v68 + 1));

        sub_169224();
        sub_16A1C4();
      }

      sub_16A1A4();
      v31 = sub_169214();

      goto LABEL_10;
    }

    sub_D398();
    v55();
    sub_9FB8();
    sub_16A9A4();
    sub_D264();
    sub_D370();
    sub_386D8(v56, v57, v58, v59, v60, v61, 78, v62, v75[0]);
    sub_D47C();
    v30 = sub_169204();
  }

  v31 = v30;
LABEL_10:
  sub_D13C(&v81);
  return v31;
}

uint64_t sub_B838()
{
  sub_D364();
  v1 = (*(v0 + 264))();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, v1, 0xD00000000000009BLL, 0x800000000017F6D0, 0xD000000000000021, 0x800000000017F850, 83, 0xD000000000000015, 0x800000000017F880);
  sub_1690F4();
  return sub_1690D4();
}

uint64_t sub_B950()
{
  v1 = *(v0 + 16);
  sub_D364();
  v3 = (*(v2 + 264))();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  v5 = sub_16A9A4();
  sub_386D8(v5, v3, 0xD00000000000009BLL, 0x800000000017F6D0, 0xD00000000000001CLL, 0x800000000017F7F0, 88, 0xD000000000000013, 0x800000000017F810);
  type metadata accessor for CarCommandsError();
  sub_D1E8(&qword_1E92F0, type metadata accessor for CarCommandsError);
  swift_allocError();
  sub_D434();
  *v6 = 0xD000000000000013;
  v6[1] = v7;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_D37C();

  return v8();
}

uint64_t sub_BB40(uint64_t a1, void *a2)
{
  sub_5758(&qword_1E5F70, &unk_16F3F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_16D3A0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000000017F6B0;
  *(inited + 48) = 0x6C7070612E6D6F63;
  *(inited + 56) = 0xEF64737361702E65;
  v28 = a1;
  v29 = a2;
  v27 = &v28;
  v6 = sub_100D74(sub_D010, v26, inited);
  swift_setDeallocating();
  v7 = sub_EFFB0();
  v8 = (*(*v2 + 264))(v7);
  if (v6)
  {
    sub_9FB8();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v9 = sub_16A584();
    sub_9DA0(v9, qword_1E65C0);
    sub_16A9A4();
    sub_D3EC();
    sub_386D8(v10, v8, v11, v12, v13, v14, 101, 0xD000000000000037, a2);
    sub_168FB4();
    sub_16A1C4();
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_16ACF4(29);

    sub_D434();
    v28 = 0xD00000000000001ALL;
    v29 = v15;
    v30._countAndFlagsBits = a1;
    v30._object = a2;
    sub_16A744(v30);
    v31._countAndFlagsBits = 46;
    v31._object = 0xE100000000000000;
    sub_16A744(v31);
    v16 = v28;
    v17 = v29;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    sub_16A9A4();
    sub_D3EC();
    sub_386D8(v19, v8, v20, v21, v22, v23, 104, v16, v17);

    sub_168FB4();
    sub_16A1C4();
  }

  sub_16A1A4();
  v24 = sub_168FA4();

  return v24;
}

uint64_t sub_BE1C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return sub_D2B0();
}

uint64_t sub_BE34()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v0[9] = swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  v4 = sub_16A694();
  v6 = v5;
  v0[14] = v4;
  v0[15] = v5;
  (*(*v2 + 360))();
  v7 = sub_D084(v0 + 2, v0[5]);
  sub_10B184(&off_1D1838);
  v9 = v8;
  v0[16] = v8;
  v10 = *v7;
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_BF7C;

  return sub_49B14(v4, v6, v9);
}

uint64_t sub_BF7C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v2 = v1;
  v4 = *(v3 + 136);
  v5 = *(v3 + 128);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  *(v9 + 144) = v8;

  v10 = sub_D388();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_C080()
{
  v0[10] = v0[18];
  v1 = v0 + 10;
  v3 = v0[14];
  v2 = v0[15];
  sub_D13C(v0 + 2);
  v4 = sub_F2E00();
  v0[7] = v3;
  v0[8] = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 7;
  LOBYTE(v3) = sub_100D74(sub_D234, v5, v4);

  if (v3)
  {
    sub_F3020();
    sub_16A7B4();
    if (*(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v1 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_16A7F4();
    }

    sub_16A814();
  }

  else
  {
    v1 = v0 + 18;
  }

  v6 = *v1;
  v0[19] = *v1;
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_C204;
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[11];

  return sub_C320(v6);
}

uint64_t sub_C204()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v2 = v1;
  v4 = *(v3 + 160);
  v5 = *(v3 + 152);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  *(v9 + 168) = v8;

  v10 = sub_D388();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_C320(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = sub_168ED4();
  v2[30] = v3;
  v4 = *(v3 - 8);
  v2[31] = v4;
  v5 = *(v4 + 64) + 15;
  v2[32] = swift_task_alloc();
  v6 = sub_168EF4();
  v2[33] = v6;
  v7 = *(v6 - 8);
  v2[34] = v7;
  v8 = *(v7 + 64) + 15;
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_C43C, 0, 0);
}

uint64_t sub_C820()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 360);
  v3 = *(v1 + 352);
  v4 = *v0;
  sub_D254();
  *v5 = v4;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

unint64_t sub_D030()
{
  result = qword_1E9300;
  if (!qword_1E9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9300);
  }

  return result;
}

void *sub_D084(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_D0C8(uint64_t a1)
{
  v2 = type metadata accessor for NeedsDisambiguationParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D124(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_D13C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_D188(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5758(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_D1E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_D2E8(os_log_type_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_386D8(a1, v10, a3, v12 | 0x8000000000000000, 0xD00000000000001ALL, (v11 | 0x8000000000000000), 135, v9, a9);
}

uint64_t sub_D318()
{
  v2 = v0[50];
  v3 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[40];
  v6 = v0[41];
}

void sub_D338()
{

  sub_16ACF4(33);
}

uint64_t sub_D37C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_D398()
{
  v1 = *(v0 - 232);
  v2 = *(v0 - 224);
  v3 = *(v0 - 240);
}

void sub_D3B0()
{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[32];
}

uint64_t sub_D3C8()
{

  return swift_task_alloc();
}

uint64_t sub_D45C()
{
  v2 = v0[50];
  v3 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[40];
  v6 = v0[41];
}

uint64_t sub_D47C()
{

  return sub_169224();
}

uint64_t sub_D494()
{
}

uint64_t sub_D4FC@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v48 = sub_5758(&qword_1E6048, &qword_16D890);
  v2 = sub_10AFC(v48);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10B64();
  v47 = v5;
  v7 = __chkstk_darwin(v6);
  v45 = &v44 - v8;
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  v11 = sub_1693E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10B64();
  v46 = v14;
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v49 = v1;
  v18 = *(v1 + 176);
  v52 = "confirmed";
  v53 = "user responded: ";
  sub_1693A4();
  sub_10AB4();
  sub_10958(v19, v20);
  v21 = sub_16AE24();
  v23 = v22;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v24 = sub_16A584();
  sub_9DA0(v24, qword_1E65C0);
  sub_16A9A4();
  sub_10B78();
  sub_386D8(v25, v18, v26, v27, 0xD000000000000016, v28, 33, v21, v23);

  sub_169384();
  sub_10C440(v10);
  v29 = *(v12 + 8);
  v29(v17, v11);
  v30 = sub_169004();
  v51 = v10;
  if (sub_9E2C(v10, 1, v30) == 1)
  {
    goto LABEL_4;
  }

  v44 = v11;
  v39 = v51;
  v40 = v45;
  sub_109F8(v51, v45);
  v41 = *(v30 - 8);
  v42 = (*(v41 + 88))(v40, v30);
  if (v42 == enum case for ConfirmationResponse.confirmed(_:))
  {
    *(v49 + qword_1F0A50) = 1;
LABEL_9:
    sub_168C64();
    return sub_109A0(v39, &qword_1E6048, &qword_16D890);
  }

  if (v42 == enum case for ConfirmationResponse.rejected(_:))
  {
    *(v49 + qword_1F0A50) = 0;
    goto LABEL_9;
  }

  (*(v41 + 8))(v40, v30);
  v11 = v44;
LABEL_4:
  v31 = *(v49 + 176);
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_16ACF4(38);

  v54 = 0xD00000000000001BLL;
  v55 = 0x800000000017FD70;
  v32 = v46;
  sub_169384();
  sub_10C440(v47);
  v29(v32, v11);
  v56._countAndFlagsBits = sub_16A694();
  sub_16A744(v56);

  v57._countAndFlagsBits = 0x65726F6E6749202ELL;
  v57._object = 0xE900000000000064;
  sub_16A744(v57);
  v33 = v54;
  v34 = v55;
  sub_16A9A4();
  sub_10B78();
  sub_386D8(v35, v31, v36, v37, 0xD000000000000016, v38, 42, v33, v34);

  sub_168C74();
  v39 = v51;
  return sub_109A0(v39, &qword_1E6048, &qword_16D890);
}

uint64_t sub_D99C()
{
  sub_D2DC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_5758(&qword_1E6048, &qword_16D890);
  sub_D414(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_DA24()
{
  v1 = v0[3];
  v2 = *(v0[4] + 176);
  sub_16ACF4(18);

  sub_1693A4();
  sub_10AB4();
  sub_10958(v3, v4);
  v17._countAndFlagsBits = sub_16AE24();
  sub_16A744(v17);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  sub_386D8(v9, v2, 0xD00000000000008BLL, 0x800000000017FAE0, 0xD000000000000024, 0x800000000017FD00, 48, 0xD000000000000010, 0x800000000017FD30);

  v10 = *(v6 + qword_1F0A50);
  v11 = sub_169004();
  sub_10AFC(v11);
  v13 = &enum case for ConfirmationResponse.confirmed(_:);
  if (!v10)
  {
    v13 = &enum case for ConfirmationResponse.rejected(_:);
  }

  (*(v12 + 104))(v5, *v13, v11);
  sub_5370(v5, 0, 1, v11);
  sub_169374();

  sub_D37C();

  return v14();
}

uint64_t sub_DC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_D2B0();
}

uint64_t sub_DDA0()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_D37C();

  return v5();
}

uint64_t sub_DE80()
{
  sub_D2DC();
  *(v1 + 264) = v2;
  *(v1 + 272) = v0;
  *(v1 + 448) = v3;
  *(v1 + 256) = v4;
  v5 = sub_168E64();
  *(v1 + 280) = v5;
  sub_10AEC(v5);
  *(v1 + 288) = v6;
  v8 = *(v7 + 64);
  *(v1 + 296) = sub_D3C8();
  v9 = sub_168E14();
  *(v1 + 304) = v9;
  sub_10AEC(v9);
  *(v1 + 312) = v10;
  v12 = *(v11 + 64);
  *(v1 + 320) = sub_D3C8();
  v13 = sub_168454();
  *(v1 + 328) = v13;
  sub_10AEC(v13);
  *(v1 + 336) = v14;
  v16 = *(v15 + 64);
  *(v1 + 344) = sub_D3C8();
  v17 = sub_5758(&qword_1E6040, &unk_16D620);
  sub_D414(v17);
  v19 = *(v18 + 64) + 15;
  *(v1 + 352) = swift_task_alloc();
  *(v1 + 360) = swift_task_alloc();
  v20 = sub_D388();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_E004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = v12[45];
  v15 = v12[42];
  v14 = v12[43];
  v16 = v12[41];
  v17 = v12[33];
  v18 = v12[34];
  v19 = sub_16A1E4();
  sub_5370(v13, 1, 1, v19);
  v20 = sub_169074();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();

  sub_169064();
  sub_10824(v18 + 96, (v12 + 2));
  v23 = v12[6];
  sub_D084(v12 + 2, v12[5]);
  sub_168AD4();
  sub_169054();
  v25 = v24;

  v26 = *(v15 + 8);
  v27 = sub_10B58();
  v28(v27);
  sub_D13C(v12 + 2);
  if (v25)
  {
    v30 = v12[44];
    v29 = v12[45];
    v31 = v12[33];
    sub_11F3A4();
    sub_16A1D4();
    sub_109A0(v29, &qword_1E6040, &unk_16D620);
    sub_5370(v30, 0, 1, v19);
    sub_108E8(v30, v29);
  }

  v32 = v12[40];
  v33 = v12[33];
  sub_12B25C();
  sub_10824(v18 + 96, (v12 + 7));
  v34 = async function pointer to static TCCTemplates.promptToEnableApp(appDisplayInfo:deviceState:)[1];
  swift_task_alloc();
  sub_D3E0();
  v12[46] = v35;
  *v35 = v36;
  v35[1] = sub_E1D8;
  v37 = v12[45];
  v38 = v12[37];
  sub_10B0C();

  return static TCCTemplates.promptToEnableApp(appDisplayInfo:deviceState:)(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_E1D8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 368);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 376) = v0;

  sub_109A0(v3 + 56, &qword_1E6030, &unk_173620);
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_E2E8()
{
  sub_D2DC();
  sub_10824(*(v0 + 272) + 96, v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  *v1 = v0;
  v1[1] = sub_E38C;
  v2 = *(v0 + 448);

  return sub_4DC30(v2, v0 + 96);
}

uint64_t sub_E38C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 384);
  *v4 = *v1;
  v3[49] = v7;
  v3[50] = v0;

  sub_D13C(v3 + 12);
  sub_10B4C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_E494()
{
  sub_10BC0();
  sub_D3A4();
  v1 = v0[45];
  (*(v0[39] + 8))(v0[40], v0[38]);
  sub_109A0(v1, &qword_1E6040, &unk_16D620);
  v2 = v0[47];
  sub_10ACC();

  sub_D37C();
  sub_10BD4();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_E548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = sub_11B48C(v12[49]);
  v14 = v12[49];
  if (v13)
  {
    v15 = v14 & 0xC000000000000001;
    sub_1487EC(0, (v14 & 0xC000000000000001) == 0, v14);
    if (v15)
    {
      v61 = v12[49];
      v16 = sub_16AD04();
      v62 = v12[49];
    }

    else
    {
      v16 = *(v12[49] + 32);
    }

    v12[51] = v16;

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_10824(v12[34] + 96, (v12 + 17));
      v17 = v12[21];
      sub_D084(v12 + 17, v12[20]);
      sub_10B58();
      v18 = sub_168B24();
      sub_D13C(v12 + 17);
      v19 = v12[34] + 96;
      if (v18)
      {
        sub_10824(v19, (v12 + 27));
        swift_task_alloc();
        sub_D3E0();
        v12[52] = v20;
        *v20 = v21;
        v20[1] = sub_E8A0;
        v22 = v12[45];
        v23 = v12[40];
        v24 = v12[37];
        v25 = v12[34];
        v26 = v12[32];
        sub_10B0C();

        return sub_EE0C();
      }

      else
      {
        sub_10824(v19, (v12 + 22));
        swift_task_alloc();
        sub_D3E0();
        v12[54] = v54;
        *v54 = v55;
        v54[1] = sub_EA84;
        v56 = v12[40];
        v57 = v12[37];
        v58 = v12[34];
        v59 = v12[32];
        sub_10B0C();

        return sub_F3A4();
      }
    }
  }

  else
  {
    v29 = v12[49];
  }

  v30 = v12[45];
  v32 = v12[39];
  v31 = v12[40];
  v34 = v12[37];
  v33 = v12[38];
  v35 = v12[35];
  v36 = v12[36];
  type metadata accessor for CarCommandsError();
  sub_10958(&qword_1E92F0, type metadata accessor for CarCommandsError);
  swift_allocError();
  *v37 = 0x7463657078656E55;
  v37[1] = 0xEF77656976206465;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  (*(v36 + 8))(v34, v35);
  v38 = *(v32 + 8);
  v39 = sub_10B98();
  v40(v39);
  sub_109A0(v30, &qword_1E6040, &unk_16D620);
  v42 = v12[44];
  v41 = v12[45];
  v43 = v12[43];
  v44 = v12[40];
  v45 = v12[37];

  sub_D37C();
  sub_10B0C();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

uint64_t sub_E8A0()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 416);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 424) = v0;

  sub_D13C((v3 + 216));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_E9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 352);
  v14 = *(v12 + 360);
  v15 = *(v12 + 344);
  v17 = *(v12 + 312);
  v16 = *(v12 + 320);
  v19 = *(v12 + 296);
  v18 = *(v12 + 304);
  v20 = *(v12 + 280);
  v21 = *(v12 + 288);

  (*(v21 + 8))(v19, v20);
  v22 = *(v17 + 8);
  v23 = sub_10B98();
  v24(v23);
  sub_109A0(v14, &qword_1E6040, &unk_16D620);

  sub_D37C();
  sub_10B0C();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_EA84()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 432);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 440) = v0;

  sub_D13C((v3 + 176));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_EB84()
{
  sub_10BC0();
  sub_D3A4();
  v1 = v0[45];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  (*(v0[36] + 8))(v0[37], v0[35]);
  (*(v3 + 8))(v2, v4);
  sub_109A0(v1, &qword_1E6040, &unk_16D620);
  v5 = v0[50];
  sub_10ACC();

  sub_D37C();
  sub_10BD4();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_EC54()
{
  sub_10B28();
  v6 = *(v5 + 8);
  v7 = sub_10B98();
  v8(v7);
  (*(v4 + 8))(v0, v2);
  sub_109A0(v1, &qword_1E6040, &unk_16D620);
  v9 = *(v3 + 424);
  sub_10ACC();

  sub_D37C();

  return v10();
}

uint64_t sub_ED30()
{
  sub_10B28();
  v6 = *(v5 + 8);
  v7 = sub_10B98();
  v8(v7);
  (*(v4 + 8))(v0, v2);
  sub_109A0(v1, &qword_1E6040, &unk_16D620);
  v9 = *(v3 + 440);
  sub_10ACC();

  sub_D37C();

  return v10();
}

uint64_t sub_EE0C()
{
  sub_D2DC();
  v3 = v2;
  v1[7] = v4;
  v1[8] = v0;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v2;
  v1[4] = v7;
  v1[2] = v8;
  v9 = async function pointer to static TCCTemplates.promptToEnableAppSnippetTitle(appDisplayInfo:)[1];
  v10 = swift_task_alloc();
  v1[9] = v10;
  *v10 = v1;
  v10[1] = sub_EEB0;

  return static TCCTemplates.promptToEnableAppSnippetTitle(appDisplayInfo:)(v3);
}

uint64_t sub_EEB0()
{
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  *v4 = *v1;
  v3[10] = v8;
  v3[11] = v9;

  if (v0)
  {
    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    v12 = async function pointer to static TCCTemplates.promptToEnableAppSnippetSubtitle(appDisplayInfo:)[1];
    v13 = swift_task_alloc();
    v3[12] = v13;
    *v13 = v7;
    v13[1] = sub_F020;
    v14 = v3[3];

    return static TCCTemplates.promptToEnableAppSnippetSubtitle(appDisplayInfo:)(v14);
  }
}

uint64_t sub_F020()
{
  sub_10BC0();
  sub_D3A4();
  v3 = v2;
  v5 = v4;
  sub_D358();
  v7 = v6;
  sub_10AA4();
  *v8 = v7;
  v10 = *(v9 + 96);
  v11 = *v1;
  sub_D254();
  *v12 = v11;
  v7[13] = v0;

  if (!v0)
  {
    v7[14] = v3;
    v7[15] = v5;
  }

  sub_10B4C();
  sub_10BD4();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_F130()
{
  sub_D2DC();
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);
  sub_D37C();

  return v3();
}

uint64_t sub_F18C()
{
  sub_10BC0();
  sub_D3A4();
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[4];
  [v5 setStyle:SAUIConfirmationViewStyleSYSTEMValue];

  v6 = sub_16A644();

  [v5 setTitle:v6];

  v7 = sub_16A644();

  [v5 setSubtitle:v7];

  swift_task_alloc();
  sub_D3E0();
  v0[16] = v8;
  *v8 = v9;
  v8[1] = sub_F2C4;
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[4];
  v15 = v0[2];
  sub_10BD4();

  return sub_F3A4();
}

uint64_t sub_F2C4()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 128);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_D37C();

  return v5();
}

uint64_t sub_F3A4()
{
  sub_D2DC();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v7 = sub_5758(&qword_1E5F78, &unk_16D400);
  sub_D414(v7);
  v9 = *(v8 + 64);
  v1[13] = sub_D3C8();
  v10 = sub_D388();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_F430()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v22 = *(v0 + 96);
  v6 = *(v0 + 56);
  v7 = v2[4];
  sub_D084(v2, v2[3]);
  v8 = sub_168B24();
  sub_168E44((v8 & 1) == 0);
  v9 = v2[4];
  sub_D084(v2, v2[3]);
  sub_168AF4();
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_16D440;
  *(v10 + 32) = v4;
  v11 = sub_168E14();
  sub_10AFC(v11);
  (*(v12 + 16))(v1, v3, v11);
  sub_5370(v1, 0, 1, v11);
  v13 = sub_169434();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v6[3] = v13;
  v6[4] = &protocol witness table for AceOutput;
  sub_10888(v6);
  v14 = v4;
  sub_168D14();

  sub_109A0(v0 + 16, &qword_1E6038, &unk_16D610);
  sub_109A0(v1, &qword_1E5F78, &unk_16D400);
  v15 = *(v22 + 176);
  sub_16ACF4(28);

  v16 = [v14 description];
  sub_16A664();

  v24._countAndFlagsBits = sub_10B58();
  sub_16A744(v24);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v17 = *(v0 + 104);
  v18 = sub_16A584();
  sub_9DA0(v18, qword_1E65C0);
  v19 = sub_16A9A4();
  sub_386D8(v19, v15, 0xD00000000000008BLL, 0x800000000017FAE0, 0xD000000000000054, 0x800000000017FC30, 93, 0xD00000000000001ALL, 0x800000000017FC90);

  sub_D37C();

  return v20();
}

uint64_t sub_F748(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_F890(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_F9D8()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_D37C();

  return v5();
}

uint64_t sub_FAB8()
{
  sub_D2DC();
  v1[22] = v2;
  v1[23] = v0;
  v3 = sub_5758(&qword_1E5F78, &unk_16D400);
  sub_D414(v3);
  v5 = *(v4 + 64);
  v1[24] = sub_D3C8();
  v6 = sub_168E64();
  v1[25] = v6;
  sub_10AEC(v6);
  v1[26] = v7;
  v9 = *(v8 + 64);
  v1[27] = sub_D3C8();
  v10 = sub_D388();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_FB88()
{
  sub_D2DC();
  sub_10824(v0[23] + 96, (v0 + 2));
  v1 = async function pointer to static TCCTemplates.confirmationRejected(deviceState:)[1];
  swift_task_alloc();
  sub_D3E0();
  v0[28] = v2;
  *v2 = v3;
  v2[1] = sub_FC2C;
  v4 = v0[27];

  return static TCCTemplates.confirmationRejected(deviceState:)(v4, v0 + 2);
}

uint64_t sub_FC2C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 232) = v0;

  sub_109A0(v3 + 16, &qword_1E6030, &unk_173620);
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_FD3C()
{
  sub_10B8C();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  sub_10824(v5 + 96, v0 + 56);
  sub_10824(v5 + 96, v0 + 96);
  v7 = *(v0 + 128);
  sub_D084((v0 + 96), *(v0 + 120));
  sub_168AF4();
  v8 = sub_168E14();
  sub_5370(v3, 1, 1, v8);
  v9 = sub_169434();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v6[3] = v9;
  v6[4] = &protocol witness table for AceOutput;
  sub_10888(v6);
  sub_168D04();
  sub_109A0(v0 + 136, &qword_1E6038, &unk_16D610);
  sub_109A0(v3, &qword_1E5F78, &unk_16D400);
  sub_D13C((v0 + 56));
  v10 = *(v2 + 8);
  v11 = sub_10B58();
  v12(v11);
  sub_D13C((v0 + 96));

  sub_D37C();

  return v13();
}

uint64_t sub_FED8()
{
  sub_D2DC();
  v1 = v0[27];
  v2 = v0[24];

  sub_D37C();
  v4 = v0[29];

  return v3();
}

uint64_t *sub_FF50()
{
  v0 = sub_3D044();
  sub_D13C((v0 + qword_1F0A58));
  return v0;
}

uint64_t sub_FF88()
{
  v0 = sub_FF50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1001C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_D99C();
}

uint64_t sub_100C8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10A9C;

  return sub_F748(a1);
}

uint64_t sub_10164(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10A9C;

  return sub_F890(a1);
}

uint64_t sub_10200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a5 + 416);
  v16 = *(a5 + 424);
  v17 = type metadata accessor for CommonClientTCCAcceptanceFlowStrategy();
  *v14 = v6;
  v14[1] = sub_10A9C;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v17, a6);
}

uint64_t sub_102E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1039C;

  return sub_DC4C(a1, a2, a3);
}

uint64_t sub_1039C()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_D37C();

  return v5();
}

uint64_t sub_1047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 416);
  v14 = *(a4 + 424);
  v15 = type metadata accessor for CommonClientTCCAcceptanceFlowStrategy();
  *v12 = v5;
  v12[1] = sub_10A9C;

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(a1, a2, a3, v15, a5);
}

uint64_t sub_1055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 416);
  v14 = *(a4 + 424);
  v15 = type metadata accessor for CommonClientTCCAcceptanceFlowStrategy();
  *v12 = v5;
  v12[1] = sub_10A9C;

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)(a1, a2, a3, v15, a5);
}

uint64_t sub_1063C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 416);
  v14 = *(a4 + 424);
  v15 = type metadata accessor for CommonClientTCCAcceptanceFlowStrategy();
  *v12 = v5;
  v12[1] = sub_10A9C;

  return RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)(a1, a2, a3, v15, a5);
}

uint64_t sub_1071C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 416);
  v14 = *(a4 + 424);
  v15 = type metadata accessor for CommonClientTCCAcceptanceFlowStrategy();
  *v12 = v5;
  v12[1] = sub_10A9C;

  return RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(a1, a2, a3, v15, a5);
}

uint64_t sub_10824(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10888(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_108E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6040, &unk_16D620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_109A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5758(a2, a3);
  sub_10AFC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_109F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6048, &qword_16D890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10ACC()
{
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  v5 = v0[40];
  v6 = v0[37];
}

void sub_10B28()
{
  v2 = v0[51];
  v3 = v0[45];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[35];
  v9 = v0[36];
}

uint64_t SetCarRadioStationIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return sub_D2B0();
}

uint64_t sub_10C0C()
{
  v1 = v0[26];
  sub_16ACF4(18);

  v2 = [v1 description];
  v3 = sub_16A664();
  v5 = v4;

  v15._countAndFlagsBits = v3;
  v15._object = v5;
  sub_16A744(v15);

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v6 = v0[27];
  v7 = sub_16A584();
  v0[28] = sub_9DA0(v7, qword_1E65C0);
  sub_16A9A4();
  sub_1207C();
  sub_386D8(v8, 0x400uLL, 0xD00000000000009FLL, 0x800000000017FD90, v9, v10, 21, 0xD000000000000010, 0x800000000017FE30);

  v11 = *sub_D084((v6 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SetCarRadioStationIntentHandler_service), *(v6 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SetCarRadioStationIntentHandler_service + 24));
  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_10DE4;

  return sub_13AB58((v0 + 2), 0);
}

uint64_t sub_10DE4()
{
  sub_D2DC();
  sub_D358();
  v3 = *(v2 + 232);
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 240) = v0;

  if (v0)
  {
    v7 = sub_11118;
  }

  else
  {
    v7 = sub_10EE8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10EE8()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_D084(v0 + 2, v1);
  v3 = *(v2 + 56);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_11014;

  return (v7)(v0 + 12, v1, v2);
}

uint64_t sub_11014()
{
  sub_D2DC();
  sub_D358();
  v3 = *(v2 + 248);
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 256) = v0;

  if (v0)
  {
    v7 = sub_115F0;
  }

  else
  {
    v7 = sub_111E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_11118()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  swift_errorRetain();
  sub_16A9A4();
  sub_120CC();
  sub_12138();
  v15 = v3;
  sub_1207C();
  sub_120A0(v4, v5, v6, v7, v8, v9, v10, v11, v15);

  sub_16A444();
  sub_1211C();
  sub_12150();
  v12 = sub_120EC();

  return v13(v12);
}

uint64_t sub_111E0()
{
  if (*(v0 + 120))
  {
    v2 = *(v0 + 208);
    sub_D124((v0 + 96), v0 + 56);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    sub_D084((v0 + 56), v3);
    *(v0 + 160) = sub_16A3D4();
    *(v0 + 168) = &off_1D72D0;
    *(v0 + 136) = v2;
    v5 = *(v4 + 8);
    v6 = v2;
    v19 = (v5 + *v5);
    v7 = v5[1];
    v8 = swift_task_alloc();
    *(v0 + 264) = v8;
    *v8 = v0;
    v8[1] = sub_11468;

    return v19(v0 + 136, v3, v4);
  }

  else
  {
    sub_11CC0(v0 + 96);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    *v10 = 0xD000000000000032;
    v10[1] = 0x800000000017FE50;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D13C((v0 + 16));
    v11 = *(v0 + 224);
    swift_errorRetain();
    sub_16A9A4();
    sub_120CC();
    sub_12138();
    v18 = v12;
    sub_1207C();
    sub_386D8(v1, 0x400uLL, 0xD00000000000009FLL, 0x800000000017FD90, v13, v14, 32, v15, v18);

    sub_16A444();
    sub_1211C();
    sub_12150();
    v16 = sub_120EC();

    return v17(v16);
  }
}

uint64_t sub_11468()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 264);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 272) = v0;

  if (v0)
  {
    v7 = sub_116C0;
  }

  else
  {
    sub_D13C((v3 + 136));
    v7 = sub_11574;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_11574()
{
  sub_D2DC();
  sub_D13C(v0 + 7);
  sub_D13C(v0 + 2);
  sub_16A444();
  v1 = sub_16A434();
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_115F0()
{
  sub_D13C(v0 + 2);
  v1 = v0[32];
  v2 = v0[28];
  swift_errorRetain();
  sub_16A9A4();
  sub_120CC();
  sub_12138();
  v15 = v3;
  sub_1207C();
  sub_120A0(v4, v5, v6, v7, v8, v9, v10, v11, v15);

  sub_16A444();
  sub_1211C();
  sub_12150();
  v12 = sub_120EC();

  return v13(v12);
}

uint64_t sub_116C0()
{
  sub_D13C(v0 + 17);
  sub_D13C(v0 + 7);
  sub_D13C(v0 + 2);
  v1 = v0[34];
  v2 = v0[28];
  swift_errorRetain();
  sub_16A9A4();
  sub_120CC();
  sub_12138();
  v15 = v3;
  sub_1207C();
  sub_120A0(v4, v5, v6, v7, v8, v9, v10, v11, v15);

  sub_16A444();
  sub_1211C();
  sub_12150();
  v12 = sub_120EC();

  return v13(v12);
}

uint64_t sub_117C0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_11884;

  return SetCarRadioStationIntentHandler.handle(intent:)(v6);
}

uint64_t sub_11884(void *a1)
{
  sub_D358();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v1;
  sub_D254();
  *v9 = v8;

  (v5)[2](v5, a1);
  _Block_release(v5);

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_119F0()
{
  sub_D2DC();
  v1 = [*(v0 + 16) frequency];
  if (v1)
  {
  }

  else
  {
    sub_11D80(*(v0 + 16));
    if (v2)
    {
    }
  }

  sub_16A444();
  v3 = sub_16A434();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_11AC4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_132CA0(a6, v10);
}

uint64_t sub_11B48(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_12070;

  return SetCarRadioStationIntentHandler.confirm(intent:)(v6);
}

id SEGetSignalActivationStatusIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetCarRadioStationIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarRadioStationIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_11CC0(uint64_t a1)
{
  v2 = sub_5758(&qword_1E6060, &unk_1752B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_11D28()
{
  result = qword_1E92F0;
  if (!qword_1E92F0)
  {
    type metadata accessor for CarCommandsError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E92F0);
  }

  return result;
}

uint64_t sub_11D80(void *a1)
{
  v1 = [a1 channel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16A664();

  return v3;
}

uint64_t sub_11E0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_11EA8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_11EF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_11F8C()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

void sub_120A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_386D8(v9, 0x400uLL, 0xD00000000000009FLL, v10 | 0x8000000000000000, a5, a6, 32, a8, a9);
}

uint64_t sub_120CC()
{

  return swift_getErrorValue();
}

uint64_t sub_120FC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1211C()
{

  return sub_16A434();
}

uint64_t sub_12138()
{
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[24];

  return sub_16AEB4();
}

uint64_t sub_12150()
{
}

uint64_t getEnumTagSinglePayload for NLTirePosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NLTirePosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x122CCLL);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_12318(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_12348@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_12318(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_12374@<X0>(uint64_t *a1@<X8>)
{
  result = sub_12328(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_123A4()
{
  result = qword_1E6090;
  if (!qword_1E6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6090);
  }

  return result;
}

uint64_t sub_123F8()
{
  sub_D2DC();
  v1[297] = v0;
  v1[291] = v2;
  v1[285] = v3;
  v4 = sub_168E14();
  v1[303] = v4;
  sub_10AEC(v4);
  v1[309] = v5;
  v7 = *(v6 + 64);
  v1[315] = sub_D3C8();
  v8 = *(*(sub_16A164() - 8) + 64);
  v1[321] = sub_D3C8();
  v9 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10AEC(v9);
  v1[327] = v10;
  v1[333] = *(v11 + 64);
  v1[339] = swift_task_alloc();
  v1[345] = swift_task_alloc();
  v12 = sub_D388();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_12538()
{
  v42 = v0;
  v2 = *(v0[297] + 176);
  v3 = 0x8000000000180280;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v4 = 0xD00000000000002DLL;
  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v40 = sub_16A9A4();
  v0[265] = 0xD000000000000097;
  v0[266] = 0x80000000001801E0;
  v0[267] = 47;
  v0[268] = 0xE100000000000000;
  sub_D030();
  v6 = sub_16AB34();
  sub_15AE4(v6);
  sub_16950();
  if (v1)
  {
    v44._countAndFlagsBits = 32;
    v44._object = 0xE100000000000000;
    sub_16A744(v44);
    v45._countAndFlagsBits = 0xD00000000000002DLL;
    v45._object = 0x8000000000180280;
    sub_16A744(v45);
    v4 = (v0 + 265);
    v3 = v1;
  }

  v41._countAndFlagsBits = 58;
  v41._object = 0xE100000000000000;
  v0[273] = 21;
  v46._countAndFlagsBits = sub_16AE24();
  sub_16A744(v46);

  sub_16A744(v41);

  v7._countAndFlagsBits = sub_378D0(v2);
  if (v7._object)
  {
    v41._countAndFlagsBits = 32;
    v41._object = 0xE100000000000000;
    sub_16A744(v7);

    v47._countAndFlagsBits = 32;
    v47._object = 0xE100000000000000;
    sub_16A744(v47);
  }

  v8 = sub_16A574();
  if (os_log_type_enabled(v8, v40))
  {
    v9 = sub_16B54();
    v10 = swift_slowAlloc();
    v41._countAndFlagsBits = v10;
    *v9 = 136315138;
    v11 = sub_15BC8(v4, v3, &v41._countAndFlagsBits);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_0, v8, v40, "%s", v9, 0xCu);
    sub_D13C(v10);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v12 = v0[291];
  sub_5758(&qword_1E62D8, &qword_16D898);
  v13 = sub_1690A4();
  v0[351] = v13;
  v14 = [v13 carName];
  if (v14)
  {
    v15 = v14;
    v16 = v0[345];
    sub_99C94();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = v0[345];
  v19 = sub_16A0C4();
  sub_5370(v18, v17, 1, v19);
  v20 = [v13 enabled];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 BOOLValue];
  }

  else
  {
    v22 = 0;
  }

  v23 = v0[291];
  v24 = sub_1690A4();
  v25 = [v24 isSetCarActivationStatusRequest];

  if (v25)
  {
    v26 = [v25 BOOLValue];
  }

  else
  {
    v26 = 0;
  }

  v27 = v0[345];
  v28 = v0[339];
  v29 = v0[333];
  v30 = v0[327];
  v31 = v0[321];
  v32 = v0[315];
  type metadata accessor for CarCommandsSetClimateStatusCATsSimple();
  sub_16A154();
  v33 = sub_16A0F4();
  v0[357] = v33;
  sub_16198(v27, v28);
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = swift_allocObject();
  v0[363] = v35;
  *(v35 + 16) = v26;
  *(v35 + 24) = v33;
  sub_16304(v28, v35 + v34);
  *(v35 + v34 + v29) = v22;

  sub_16484(0, &qword_1E6308, DialogExecutionResult_ptr);
  swift_asyncLet_begin();
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v36 = sub_16A0F4();
  v0[364] = v36;
  v37 = swift_allocObject();
  v0[365] = v37;
  *(v37 + 16) = v22;
  *(v37 + 24) = v36;

  swift_asyncLet_begin();

  swift_asyncLet_begin();
  sub_12C0B0();
  sub_F38BC();
  sub_168D84();
  v38 = sub_166D8();

  return _swift_asyncLet_get_throwing(v38);
}

uint64_t sub_12AAC()
{
  sub_D2DC();
  v1[366] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_13104, 0, 0);
  }

  else
  {
    v2 = v1[279];
    v1[367] = v2;
    v3 = v2;

    return _swift_asyncLet_get_throwing(v1 + 162);
  }
}

uint64_t sub_12B58()
{
  sub_D2DC();
  *(v1 + 2944) = v0;
  if (v0)
  {

    v2 = sub_D388();

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {
    *(v1 + 2952) = *(v1 + 2168);
    *(v1 + 2960) = *(v1 + 2176);

    v5 = sub_166C8();

    return _swift_asyncLet_get_throwing(v5);
  }
}

uint64_t sub_12C04()
{
  sub_D2DC();
  v1[371] = v0;
  if (v0)
  {
    v2 = v1[370];
    v3 = v1[367];

    v4 = sub_134BC;
  }

  else
  {
    v1[372] = type metadata accessor for ConfirmationSnippetFactory();
    v4 = sub_12C94;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_12C94()
{
  sub_1696C();
  v1 = v0[297];
  v2 = v0[269];
  v0[373] = v0[270];
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 247));

  v3 = swift_task_alloc();
  v0[374] = v3;
  *v3 = v0;
  v3[1] = sub_12D88;
  v4 = v0[372];
  v5 = v0[370];
  v6 = v0[369];
  v7 = v0[367];
  v8 = v0[315];
  v9 = v0[285];

  return sub_14A94C();
}

uint64_t sub_12D88()
{
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = v5[374];
  v7 = v5[373];
  v8 = v5[370];
  v9 = v5[367];
  v10 = *v1;
  sub_D254();
  *v11 = v10;
  *(v3 + 3000) = v0;

  sub_D13C((v3 + 1976));

  if (v0)
  {
    v12 = sub_13698;
  }

  else
  {
    v12 = sub_12EF4;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_12EF4()
{
  sub_D2DC();
  v0 = sub_166B4();
  v1(v0);
  v2 = sub_166C8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_12FA4()
{
  sub_D2DC();
  v1 = *(v0 + 2912);

  v2 = sub_166D8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_13018()
{
  v1 = *(v0 + 2920);
  v2 = *(v0 + 2912);
  v3 = *(v0 + 2904);
  v4 = *(v0 + 2856);
  v5 = *(v0 + 2760);
  v6 = *(v0 + 2712);
  v7 = *(v0 + 2568);
  v8 = *(v0 + 2520);

  sub_D188(v5, &qword_1E6300, &qword_16ECE0);

  sub_1677C();

  return v9();
}

uint64_t sub_13104()
{
  sub_D2DC();
  v0 = sub_166B4();
  v1(v0);
  v2 = sub_166C8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_131B4()
{
  sub_D2DC();
  v1 = *(v0 + 2912);

  v2 = sub_166D8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_13228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v14 = *(v12 + 2928);
  sub_16670();

  sub_D188(v13, &qword_1E6300, &qword_16ECE0);

  sub_D37C();
  sub_10B0C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_132E0()
{
  sub_D2DC();
  v0 = sub_166B4();
  v1(v0);
  v2 = sub_166C8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_13390()
{
  sub_D2DC();
  v1 = *(v0 + 2912);

  v2 = sub_166D8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_13404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v14 = *(v12 + 2944);
  sub_16670();

  sub_D188(v13, &qword_1E6300, &qword_16ECE0);

  sub_D37C();
  sub_10B0C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_134BC()
{
  sub_D2DC();
  v0 = sub_166B4();
  v1(v0);
  v2 = sub_166C8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_1356C()
{
  sub_D2DC();
  v1 = *(v0 + 2912);

  v2 = sub_166D8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_135E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v14 = *(v12 + 2968);
  sub_16670();

  sub_D188(v13, &qword_1E6300, &qword_16ECE0);

  sub_D37C();
  sub_10B0C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_13698()
{
  sub_D2DC();
  v0 = sub_166B4();
  v1(v0);
  v2 = sub_166C8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_13748()
{
  sub_D2DC();
  v1 = *(v0 + 2912);

  v2 = sub_166D8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_137BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v14 = *(v12 + 3000);
  sub_16670();

  sub_D188(v13, &qword_1E6300, &qword_16ECE0);

  sub_D37C();
  sub_10B0C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_13874(uint64_t a1, char a2)
{
  v2[8] = a1;
  if (a2)
  {
    v3 = swift_task_alloc();
    v2[9] = v3;
    *v3 = v2;
    v3[1] = sub_13990;

    return sub_AE100();
  }

  else
  {
    v5 = swift_task_alloc();
    v2[10] = v5;
    *v5 = v2;
    v5[1] = sub_13AAC;

    return sub_ADBAC();
  }
}

uint64_t sub_13990()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  sub_16B08(v4);
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  if (v0)
  {
    sub_D37C();

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_13AA4, 0, 0);
  }
}

uint64_t sub_13AAC()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  sub_16AF4(v4);
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  if (v0)
  {
    sub_D37C();

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_13BC0, 0, 0);
  }
}

uint64_t sub_13BC8(uint64_t a1, char a2)
{
  v2[8] = a1;
  if (a2)
  {
    v3 = swift_task_alloc();
    v2[9] = v3;
    *v3 = v2;
    v3[1] = sub_13CC4;

    return sub_DEB48();
  }

  else
  {
    v5 = swift_task_alloc();
    v2[10] = v5;
    *v5 = v2;
    v5[1] = sub_13E44;

    return sub_DEA20();
  }
}

uint64_t sub_13CC4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  sub_16B08(v4);
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  if (v0)
  {
    sub_D37C();

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_13DD8, 0, 0);
  }
}

uint64_t sub_13DD8()
{
  sub_1696C();
  v3 = *(v2 + 24);
  v4 = *(v2 + 64);
  sub_16A134();
  sub_16AA0();
  *v4 = v0;
  v4[1] = v1;
  sub_1677C();

  return v5();
}

uint64_t sub_13E44()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  sub_16AF4(v4);
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  if (v0)
  {
    sub_D37C();

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_13F58, 0, 0);
  }
}

uint64_t sub_13F58()
{
  sub_1696C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 64);
  sub_16A134();
  sub_16AA0();
  *v4 = v0;
  v4[1] = v1;
  sub_1677C();

  return v5();
}

uint64_t sub_13FC4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_14058;

  return sub_DD4F0();
}

uint64_t sub_14058()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_D254();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;

    return _swift_task_switch(sub_14190, 0, 0);
  }
}

uint64_t sub_14190()
{
  sub_1696C();
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  sub_16A134();
  sub_16AA0();
  *v4 = v0;
  v4[1] = v1;
  sub_1677C();

  return v5();
}

uint64_t sub_14220()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin41SetClimateStatusConfirmIntentFlowStrategy_commonPatterns));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy()
{
  result = qword_1E60C0;
  if (!qword_1E60C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_14330()
{
  v0 = sub_1693E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v25[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_169384();
  sub_86E4(v4, &_swiftEmptySetSingleton, v25);
  (*(v1 + 8))(v4, v0);
  if (v25[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1E5F98, &unk_16D420);
    if (swift_dynamicCast())
    {
      if (*(&v27 + 1))
      {
        sub_D250(&v26, v29);
        v5 = v30;
        v6 = v31;
        sub_D084(v29, v30);
        if ((*(v6 + 32))(v5, v6))
        {
          sub_168C64();
        }

        else
        {
          if (qword_1E58E8 != -1)
          {
            sub_9ED4();
          }

          v16 = sub_16A584();
          sub_9DA0(v16, qword_1E65C0);
          sub_16A9A4();
          sub_16824();
          sub_386D8(v17, v18, v19, v20, v21, v22, 29, v23, v24);
          sub_168C54();
        }

        return sub_D13C(v29);
      }
    }

    else
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
    }
  }

  else
  {
    sub_D188(v25, &qword_1E5F80, &unk_16E7E0);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
  }

  sub_D188(&v26, &qword_1E5F88, &unk_16D410);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v7 = sub_16A584();
  sub_9DA0(v7, qword_1E65C0);
  sub_16A9A4();
  sub_16824();
  sub_386D8(v8, v9, v10, v11, v12, v13, 24, v14, v24);
  return sub_168C74();
}

uint64_t sub_14624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = *(*(sub_5758(&qword_1E6048, &qword_16D890) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v6 = sub_1693E4();
  v4[27] = v6;
  v7 = *(v6 - 8);
  v4[28] = v7;
  v8 = *(v7 + 64) + 15;
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_14720, 0, 0);
}

uint64_t sub_14B48()
{
  sub_D2DC();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = *(*(sub_5758(&qword_1E6048, &qword_16D890) - 8) + 64);
  v1[26] = sub_D3C8();
  v6 = sub_1693E4();
  v1[27] = v6;
  sub_10AEC(v6);
  v1[28] = v7;
  v9 = *(v8 + 64);
  v1[29] = sub_D3C8();
  v10 = sub_D388();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_15048()
{
  sub_D2DC();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = *(*(sub_5758(&qword_1E6048, &qword_16D890) - 8) + 64);
  v1[26] = sub_D3C8();
  v6 = sub_1693E4();
  v1[27] = v6;
  sub_10AEC(v6);
  v1[28] = v7;
  v9 = *(v8 + 64);
  v1[29] = sub_D3C8();
  v10 = sub_D388();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1557C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10A9C;

  return sub_14624(a1, a2, a3);
}

uint64_t sub_15648()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_123F8();
}

uint64_t sub_156F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t sub_157BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t sub_15884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t sub_1594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_1039C;

  return ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t sub_15A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy();
  *v11 = v5;
  v11[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)(a1, a2, a3, v12, a5);
}

uint64_t sub_15AE4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_15B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + v1 + 31);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_15B48(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_16A714();
  return sub_16A774();
}

uint64_t sub_15BC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_15C8C(v11, 0, 0, 1, a1, a2);
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
    sub_16138(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_D13C(v11);
  return v7;
}

unint64_t sub_15C8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_15D8C(a5, a6);
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
    result = sub_16AD24();
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

char *sub_15D8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_15DD8(a1, a2);
  sub_15EF0(&off_1D0010);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_15DD8(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_16A754())
  {
    result = sub_15FD4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_16ACD4();
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
          result = sub_16AD24();
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

uint64_t sub_15EF0(uint64_t result)
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

    result = sub_16044(result, v8, 1, v3);
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

void *sub_15FD4(uint64_t a1, uint64_t a2)
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

  sub_5758(&qword_1E62E0, &qword_16D8A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_16044(char *result, int64_t a2, char a3, char *a4)
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
    sub_5758(&qword_1E62E0, &qword_16D8A0);
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

uint64_t sub_16138(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_16198(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16208()
{
  v1 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10AEC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 24);

  v8 = sub_16A0C4();
  if (!sub_9E2C(v0 + v4, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v0 + v4, v8);
  }

  return _swift_deallocObject(v0, v6 + v4 + 1, v3 | 7);
}

uint64_t sub_16304(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_16374()
{
  v1 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10AEC(v1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v3 + 64));
  v7 = swift_task_alloc();
  v8 = sub_16998(v7);
  *v8 = v9;
  v10 = sub_16988(v8);

  return sub_13874(v10, v4);
}

uint64_t sub_16484(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_164C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_164FC()
{
  sub_1696C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_16998(v3);
  *v4 = v5;
  v6 = sub_16988(v4);

  return sub_13BC8(v6, v1);
}

uint64_t sub_16598()
{
  sub_D2DC();
  v0 = swift_task_alloc();
  v1 = sub_16998(v0);
  *v1 = v2;
  v3 = sub_16988(v1);

  return sub_13FC4(v3);
}

void sub_16670()
{
  v2 = v0[365];
  v3 = v0[364];
  v4 = v0[363];
  v5 = v0[357];
  v6 = v0[351];
  v7 = v0[345];
  v8 = v0[339];
  v9 = v0[321];
  v10 = v0[315];
}

uint64_t sub_166B4()
{
  result = v0[315];
  v2 = v0[303];
  v3 = *(v0[309] + 8);
  return result;
}

unint64_t sub_16720()
{
  v2[17] = v0 + 82;
  v2[18] = v1;
  v2[19] = 47;
  v2[20] = 0xE100000000000000;

  return sub_D030();
}

uint64_t sub_16748(uint64_t a1, uint64_t a2)
{
  v5 = v3[29];
  v6 = v3[22];
  v7 = v3[26];

  return sub_5370(v7, a2, 1, v2);
}

uint64_t sub_1677C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_167A0(Swift::String a1)
{

  sub_16A744(a1);
}

uint64_t sub_167C4()
{

  return swift_dynamicCast();
}

double sub_167FC()
{
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  return result;
}

double sub_16810()
{
  *(v0 + 88) = 0;
  result = 0.0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  return result;
}

uint64_t sub_16844()
{
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = v0[23];

  return sub_169384();
}

void sub_16864(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_16884(uint64_t a1)
{

  return ConfirmIntentAnswer.init(confirmationResponse:intent:)(v1, v2, a1);
}

uint64_t sub_168A4(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_15BC8(v6, v5, va);
}

void sub_168C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11._countAndFlagsBits = 0xD000000000000033;
  v11._object = a10;

  sub_16A744(v11);
}

void sub_168E4()
{
  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;

  sub_16A744(v1);
}

uint64_t sub_16904()
{

  return sub_16AB34();
}

uint64_t sub_16924()
{

  return swift_allocError();
}

uint64_t sub_16950()
{
}

uint64_t sub_169A8()
{

  return sub_16A9A4();
}

uint64_t sub_169C0()
{
  sub_D13C(v0);
}

void sub_16A04()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[23];
}

uint64_t sub_16A14()
{
  v2 = *(v0 + 192);

  return sub_D250((v0 + 56), v0 + 16);
}

uint64_t sub_16A30()
{

  return swift_slowAlloc();
}

void sub_16A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v15._countAndFlagsBits = a13;
  v15._object = a14;

  sub_16A744(v15);
}

void sub_16A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v15._countAndFlagsBits = a13;
  v15._object = a14;

  sub_16A744(v15);
}

uint64_t sub_16A84()
{

  return sub_16A584();
}

uint64_t sub_16AA0()
{
}

uint64_t sub_16ABC()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_16AD8()
{

  return sub_169384();
}

uint64_t sub_16AF4(uint64_t result)
{
  v1[5] = v3;
  v1[6] = result;
  v1[7] = v2;
  return result;
}

uint64_t sub_16B08(uint64_t result)
{
  v1[2] = v3;
  v1[3] = result;
  v1[4] = v2;
  return result;
}

uint64_t sub_16B54()
{

  return swift_slowAlloc();
}

uint64_t sub_16B74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_16BB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_16C38()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_16C68()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_16CA8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_16CD8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_16D08()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t sub_16D38()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t sub_16D78()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t sub_16F54(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2F924;

  return SESetClimateStatusIntentHandler.resolveEnabled(for:)(v6);
}

uint64_t SESetClimateStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_17028()
{
  sub_1696C();
  v1 = [*(v0 + 16) carName];
  *(v0 + 32) = v1;
  sub_3024C(&unk_16D9C0);
  v6 = v2;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_170EC;
  v4 = *(v0 + 24);

  return v6(v1, 9);
}

uint64_t sub_170EC()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_D254();
  *v5 = v4;

  v6 = sub_120EC();

  return v7(v6);
}

uint64_t sub_171E8(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return _swift_task_switch(sub_1720C, 0, 0);
}

uint64_t sub_1720C()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_29884(v6, v7, v8);
}

uint64_t sub_172F0()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 224);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_173D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = *(v17 + 216);
    sub_30D90();
    v20 = sub_31174();
    sub_2FF0C(v20);
    objc_opt_self();
    sub_2FFF0();
    v21 = sub_110574();
    sub_313B0(v21, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v31 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    v33 = *(v17 + 208);
    v32 = *(v17 + 216);
    if (v31)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v34 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v35 = sub_16A9A4();
      sub_2FE6C(v35);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SESetClimateStatusIntentHandler_carKeyService);
      v36 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174();
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SESetClimateStatusIntentHandler_carKeyService);
      v36 = sub_CCFA8();
    }

    *(v17 + 232) = v36;
    sub_3024C(dword_16DBD0);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_17604()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 240);
  *v4 = *v1;
  sub_312F0(v7);
  if (!v0)
  {
    v8 = *(v3 + 232);
  }

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_17704(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_1771C()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_29FB4(v6, v7, v8);
}

uint64_t sub_17800()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 224);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_178E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = *(v17 + 216);
    sub_30D90();
    v20 = sub_31174();
    sub_2FF0C(v20);
    objc_opt_self();
    sub_2FFF0();
    v21 = sub_110574();
    sub_313B0(v21, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v31 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    v33 = *(v17 + 208);
    v32 = *(v17 + 216);
    if (v31)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v34 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v35 = sub_16A9A4();
      sub_2FE6C(v35);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SEGetSignalActivationStatusIntentHandler_carKeyService);
      v36 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174();
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SEGetSignalActivationStatusIntentHandler_carKeyService);
      v36 = sub_CCFA8();
    }

    *(v17 + 232) = v36;
    sub_3024C(dword_16DBC0);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_17B1C(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_17B34()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2A5CC(v6, v7, v8);
}

uint64_t sub_17C18()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 224);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_17D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = *(v17 + 216);
    sub_30D90();
    v20 = sub_31174();
    sub_2FF0C(v20);
    objc_opt_self();
    sub_2FFF0();
    v21 = sub_110574();
    sub_313B0(v21, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v31 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    v33 = *(v17 + 208);
    v32 = *(v17 + 216);
    if (v31)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v34 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v35 = sub_16A9A4();
      sub_2FE6C(v35);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SESetCarLockStatusIntentHandler_carKeyService);
      v36 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174();
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SESetCarLockStatusIntentHandler_carKeyService);
      v36 = sub_CCFA8();
    }

    *(v17 + 232) = v36;
    sub_3024C(&unk_16DBA0);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_17F34(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_17F4C()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2ABE4(v6, v7, v8);
}

uint64_t sub_18030()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 224);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_18118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = *(v17 + 216);
    sub_30D90();
    v20 = sub_31174();
    sub_2FF0C(v20);
    objc_opt_self();
    sub_2FFF0();
    v21 = sub_110574();
    sub_313B0(v21, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v31 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    v33 = *(v17 + 208);
    v32 = *(v17 + 216);
    if (v31)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v34 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v35 = sub_16A9A4();
      sub_2FE6C(v35);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SESetTrunkStatusIntentHandler_carKeyService);
      v36 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174();
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SESetTrunkStatusIntentHandler_carKeyService);
      v36 = sub_CCFA8();
    }

    *(v17 + 232) = v36;
    sub_3024C(&unk_16DB78);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1834C(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_18364()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2B1FC(v6, v7, v8);
}

uint64_t sub_18448()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 224);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_18530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = *(v17 + 216);
    sub_30D90();
    v20 = sub_31174();
    sub_2FF0C(v20);
    objc_opt_self();
    sub_2FFF0();
    v21 = sub_110574();
    sub_313B0(v21, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v31 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    v33 = *(v17 + 208);
    v32 = *(v17 + 216);
    if (v31)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v34 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v35 = sub_16A9A4();
      sub_2FE6C(v35);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SEActivateSignalIntentHandler_carKeyService);
      v36 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174();
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SEActivateSignalIntentHandler_carKeyService);
      v36 = sub_CCFA8();
    }

    *(v17 + 232) = v36;
    sub_3024C(&unk_16DB50);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_18764()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 240);
  *v4 = *v1;
  sub_312F0(v7);
  if (!v0)
  {
    v8 = *(v3 + 232);
  }

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_18864()
{
  sub_30984();
  v3 = *(v0 + 248);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v14 = *(v0 + 216);
    v15 = *(v0 + 248);

    sub_31174();
    sub_3020C();
    sub_386D8(v16, v17, v18, v19, v20, v21, 40, v22, v1);
    sub_16484(0, &qword_1E6370, INSpeakableStringResolutionResult_ptr);
    v23 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_13:
    v23;
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    sub_93A6C(*(v0 + 248));

    v5 = *(v0 + 216);
    if (*(v0 + 160))
    {
      sub_D124((v0 + 136), v0 + 96);
      sub_309C4((v0 + 96), *(v0 + 120));
      v6 = sub_110574();
      sub_16ACF4(61);
      v49._countAndFlagsBits = 0xD000000000000024;
      v49._object = 0x8000000000180B00;
      sub_16A744(v49);
      v7 = [v6 description];
      sub_16A664();
      sub_31200();
      v50._countAndFlagsBits = v1;
      v50._object = v2;
      sub_16A744(v50);

      v51._countAndFlagsBits = 0xD000000000000017;
      v51._object = 0x8000000000180B30;
      sub_16A744(v51);
      sub_16A9A4();
      sub_3020C();
      sub_386D8(v8, v9, v10, v11, v12, v13, 49, 0, 0xE000000000000000);

      [objc_opt_self() successWithResolvedString:v6];

      sub_D13C((v0 + 96));
      goto LABEL_14;
    }

    sub_D188(v0 + 136, &qword_1E6358, &unk_16DA90);
    sub_16A9A4();
    sub_3020C();
    sub_386D8(v38, v39, v40, v41, v42, v43, 44, v44, 0x8000000000180AD0);
    sub_16484(0, &qword_1E6370, INSpeakableStringResolutionResult_ptr);
    v23 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_13;
  }

  v24 = *(v0 + 216);
  v25 = " no valid carkey";
  sub_16A9A4();
  sub_3020C();
  sub_386D8(v26, v27, v28, v29, v30, v31, 52, v32, 0x8000000000180A90);
  v33 = *(v3 + 16);
  if (v33)
  {
    v34 = (*(v0 + 248) + 32);
    do
    {
      sub_309C4(v34, v34[3]);
      v25 = sub_110574();
      sub_16A7B4();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_16A7F4();
      }

      sub_16A814();
      v34 += 5;
      --v33;
    }

    while (v33);
  }

  v35 = *(v0 + 248);

  objc_opt_self();
  sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
  sub_16A7C4();
  sub_310FC();
  v36 = sub_30B04();
  [v36 v37];

LABEL_14:
  v45 = sub_120EC();

  return v46(v45);
}

uint64_t sub_18E08(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_18E20()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2BE48(v6, v7, v8);
}

uint64_t sub_18F04()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 224);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_18FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = *(v17 + 216);
    sub_30D90();
    v20 = sub_31174();
    sub_2FF0C(v20);
    objc_opt_self();
    sub_2FFF0();
    v21 = sub_110574();
    sub_313B0(v21, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v31 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    v33 = *(v17 + 208);
    v32 = *(v17 + 216);
    if (v31)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v34 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v35 = sub_16A9A4();
      sub_2FE6C(v35);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEDeactivateSignalIntentHandler_carKeyService);
      v36 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174();
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEDeactivateSignalIntentHandler_carKeyService);
      v36 = sub_CCFA8();
    }

    *(v17 + 232) = v36;
    sub_3024C(&unk_16DB28);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_19220(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_19238()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2C460(v6, v7, v8);
}

uint64_t sub_1931C()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 224);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_19404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = *(v17 + 216);
    sub_30D90();
    v20 = sub_31174();
    sub_2FF0C(v20);
    objc_opt_self();
    sub_2FFF0();
    v21 = sub_110574();
    sub_313B0(v21, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v31 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    v33 = *(v17 + 208);
    v32 = *(v17 + 216);
    if (v31)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v34 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v35 = sub_16A9A4();
      sub_2FE6C(v35);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SEGetTrunkStatusIntentHandler_carKeyService);
      v36 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174();
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SEGetTrunkStatusIntentHandler_carKeyService);
      v36 = sub_CCFA8();
    }

    *(v17 + 232) = v36;
    sub_3024C(&unk_16DB00);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_19638(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_19650()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2CA78(v6, v7, v8);
}

uint64_t sub_19734()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 224);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = *(v17 + 216);
    sub_30D90();
    v20 = sub_31174();
    sub_2FF0C(v20);
    objc_opt_self();
    sub_2FFF0();
    v21 = sub_110574();
    sub_313B0(v21, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v31 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    v33 = *(v17 + 208);
    v32 = *(v17 + 216);
    if (v31)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v34 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v35 = sub_16A9A4();
      sub_2FE6C(v35);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEGetClimateStatusIntentHandler_carKeyService);
      v36 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174();
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEGetClimateStatusIntentHandler_carKeyService);
      v36 = sub_CCFA8();
    }

    *(v17 + 232) = v36;
    sub_3024C(&unk_16DAE0);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_19A50(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_19A68()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2D090(v6, v7, v8);
}

uint64_t sub_19B4C()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 224);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_19C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = *(v17 + 216);
    sub_30D90();
    v20 = sub_31174();
    sub_2FF0C(v20);
    objc_opt_self();
    sub_2FFF0();
    v21 = sub_110574();
    sub_313B0(v21, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v31 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    v33 = *(v17 + 208);
    v32 = *(v17 + 216);
    if (v31)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v34 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v35 = sub_16A9A4();
      sub_2FE6C(v35);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEGetCarLockStatusIntentHandler_carKeyService);
      v36 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174();
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEGetCarLockStatusIntentHandler_carKeyService);
      v36 = sub_CCFA8();
    }

    *(v17 + 232) = v36;
    sub_3024C(&unk_16DAB8);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_19E88(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_19F4C;

  return SESetClimateStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t sub_19F4C()
{
  sub_1696C();
  v2 = v1;
  sub_D358();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  sub_D254();
  *v9 = v8;

  (v5)[2](v5, v2);
  _Block_release(v5);

  sub_D37C();

  return v10();
}

uint64_t SESetClimateStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_1A0B0()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  sub_3024C(&unk_16D9D0);
  v6 = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1A178;
  v4 = *(v0 + 48);

  return v6(v1, 1, 0);
}

uint64_t sub_1A178()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *(v1 + 32) = v3;
  *(v1 + 24) = v4;
  *(v1 + 16) = v0;
  v6 = *(v5 + 64);
  v7 = *(v5 + 56);
  v8 = *v0;
  sub_D254();
  *v9 = v8;
  *(v11 + 72) = v10;

  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1A284()
{
  sub_D2DC();
  v1 = *(v0 + 72);
  sub_16A3F4();
  if (v1 <= 5)
  {
    v2 = qword_16DBE0[v1];
  }

  v3 = *(v0 + 32);
  sub_16A3E4();
  sub_30AEC();

  return v4();
}

uint64_t sub_1A308(uint64_t a1, char a2, char a3)
{
  *(v4 + 968) = v3;
  *(v4 + 1090) = a3;
  *(v4 + 1089) = a2;
  *(v4 + 960) = a1;
  return _swift_task_switch(sub_1A334, 0, 0);
}

uint64_t sub_1A818()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 992);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1AF48()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 1016);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1024) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1B040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FD74();
  sub_5758(&qword_1E6350, &unk_177CB0);
  v15 = sub_30F78();
  sub_2F9CC(v15, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  sub_304CC();
  sub_304AC();
  v16 = sub_30FC0();
  sub_30FD8(v16, "setUserInfo:");

  sub_30FA8(v17, v18, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v43 = v19 + *v19;
    v21 = *(v20 + 4);
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v43, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    sub_309A8();
    v34 = sub_31020();
    sub_2FA74(v34);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1B254()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 1032);
  *v2 = *v0;
  sub_312D8(v5);
  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1B338()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 1040);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1048) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1B430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FDD4();
  sub_5758(&qword_1E6350, &unk_177CB0);
  v15 = sub_30F78();
  sub_2F9CC(v15, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  sub_304CC();
  sub_304AC();
  v16 = sub_30FC0();
  sub_30FD8(v16, "setUserInfo:");

  sub_30FA8(v17, v18, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v43 = v19 + *v19;
    v21 = *(v20 + 4);
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v43, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    sub_309A8();
    v34 = sub_31020();
    sub_2FA74(v34);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1B644()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 1056);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1064) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1B73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FDA4();
  sub_5758(&qword_1E6350, &unk_177CB0);
  v15 = sub_30F78();
  sub_2F9CC(v15, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  sub_304CC();
  sub_304AC();
  v16 = sub_30FC0();
  sub_30FD8(v16, "setUserInfo:");

  sub_30FA8(v17, v18, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v43 = v19 + *v19;
    v21 = *(v20 + 4);
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v43, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    sub_309A8();
    v34 = sub_31020();
    sub_2FA74(v34);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1B950()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 1072);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1080) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FE04();
  sub_5758(&qword_1E6350, &unk_177CB0);
  v15 = sub_30F78();
  sub_2F9CC(v15, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  sub_304CC();
  sub_304AC();
  v16 = sub_30FC0();
  sub_30FD8(v16, "setUserInfo:");

  sub_30FA8(v17, v18, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v43 = v19 + *v19;
    v21 = *(v20 + 4);
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v43, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    sub_309A8();
    v34 = sub_31020();
    sub_2FA74(v34);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C168()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 992);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1CDA4()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 992);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1D9E0()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 992);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1E61C()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 992);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1F258()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 992);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1FE94()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 992);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_20870()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 1016);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1024) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_20968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FD74();
  sub_5758(&qword_1E6350, &unk_177CB0);
  v15 = sub_30F78();
  sub_2F9CC(v15, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  sub_304CC();
  sub_304AC();
  v16 = sub_30FC0();
  sub_30FD8(v16, "setUserInfo:");

  sub_30FA8(v17, v18, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v43 = v19 + *v19;
    v21 = *(v20 + 4);
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v43, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    sub_309A8();
    v34 = sub_31020();
    sub_2FA74(v34);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_20E28()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 1032);
  *v2 = *v0;
  sub_312D8(v5);
  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_21088()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 1040);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1048) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_21180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FDD4();
  sub_5758(&qword_1E6350, &unk_177CB0);
  v15 = sub_30F78();
  sub_2F9CC(v15, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  sub_304CC();
  sub_304AC();
  v16 = sub_30FC0();
  sub_30FD8(v16, "setUserInfo:");

  sub_30FA8(v17, v18, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v43 = v19 + *v19;
    v21 = *(v20 + 4);
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v43, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    sub_309A8();
    v34 = sub_31020();
    sub_2FA74(v34);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_21640()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 1056);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1064) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_21738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FDA4();
  sub_5758(&qword_1E6350, &unk_177CB0);
  v15 = sub_30F78();
  sub_2F9CC(v15, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  sub_304CC();
  sub_304AC();
  v16 = sub_30FC0();
  sub_30FD8(v16, "setUserInfo:");

  sub_30FA8(v17, v18, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v43 = v19 + *v19;
    v21 = *(v20 + 4);
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v43, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    sub_309A8();
    v34 = sub_31020();
    sub_2FA74(v34);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_21BF8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 1072);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1080) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_21CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FE04();
  sub_5758(&qword_1E6350, &unk_177CB0);
  v15 = sub_30F78();
  sub_2F9CC(v15, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  sub_304CC();
  sub_304AC();
  v16 = sub_30FC0();
  sub_30FD8(v16, "setUserInfo:");

  sub_30FA8(v17, v18, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v43 = v19 + *v19;
    v21 = *(v20 + 4);
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v43, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    sub_309A8();
    v34 = sub_31020();
    sub_2FA74(v34);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_226BC()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 992);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_232F8()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 992);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_23A48(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2F924;

  return SESetClimateStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SESetClimateStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_23B20()
{
  sub_D3A4();
  v2 = [*(v1 + 16) enabled];
  *(v1 + 32) = v2;
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = [v2 BOOLValue];
    v5 = [v3 carName];
    *(v1 + 40) = v5;
    sub_3024C(&unk_16D9E0);
    v13 = v6;
    v7 = swift_task_alloc();
    *(v1 + 48) = v7;
    *v7 = v1;
    v7[1] = sub_23D08;
    v8 = *(v1 + 24);

    return v13(v4, v5, 1);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_9FB8();
    v10 = sub_16A584();
    sub_30A14(v10, qword_1E65C0);
    v11 = sub_16A9A4();
    sub_386D8(v11, 0x24000uLL, 0xD0000000000000B9, 0x80000000001802B0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 47, 0xD000000000000019, v0);
    sub_16A3F4();
    sub_16A3E4();
    sub_30AEC();

    return v12();
  }
}

uint64_t sub_23D08()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  *(v9 + 64) = v8;
  *(v9 + 56) = v10;

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_23E0C()
{
  sub_1696C();
  v1 = *(v0 + 64);
  sub_16A3F4();
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  if (v1 <= 5)
  {
    v4 = qword_16DC10[v1];
  }

  sub_16A3E4();

  v5 = sub_120EC();

  return v6(v5);
}

uint64_t sub_23EA4(char a1, uint64_t a2, char a3)
{
  *(v4 + 912) = v3;
  *(v4 + 1025) = a3;
  *(v4 + 904) = a2;
  *(v4 + 1024) = a1;
  return _swift_task_switch(sub_23ED0, 0, 0);
}

uint64_t sub_246B0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 936);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 944) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_24A4C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 960);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 968) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_24B44()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 976);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 984) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_24EE0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 992);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1000) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_2527C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 1008);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1016) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_25618(char a1, uint64_t a2, char a3)
{
  *(v4 + 912) = v3;
  *(v4 + 1025) = a3;
  *(v4 + 904) = a2;
  *(v4 + 1024) = a1;
  return sub_D2B0();
}

uint64_t sub_25E1C(char a1, uint64_t a2, char a3)
{
  *(v4 + 912) = v3;
  *(v4 + 1025) = a3;
  *(v4 + 904) = a2;
  *(v4 + 1024) = a1;
  return sub_D2B0();
}

uint64_t sub_26620(char a1, uint64_t a2, char a3)
{
  *(v4 + 912) = v3;
  *(v4 + 1025) = a3;
  *(v4 + 904) = a2;
  *(v4 + 1024) = a1;
  return sub_D2B0();
}

uint64_t sub_26E24()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 936);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 944) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_274C8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 960);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 968) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_27A4C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 976);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 984) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_280F0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 992);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1000) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_28794()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 1008);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1016) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_28E38(char a1, uint64_t a2, char a3)
{
  *(v4 + 912) = v3;
  *(v4 + 1025) = a3;
  *(v4 + 904) = a2;
  *(v4 + 1024) = a1;
  return sub_D2B0();
}

uint64_t sub_2965C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  _Block_copy(aBlock);
  sub_30C04();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v6;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_132CA0(a6, v10);
}

uint64_t sub_296DC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2F924;

  return SESetClimateStatusIntentHandler.handle(intent:)(v6);
}

id SESetClimateStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SESetClimateStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_29824(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_29884(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_298AC, 0, 0);
}

uint64_t sub_298AC()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_299F0()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *(v6 + 104);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_29B10()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v2;
  sub_D254();
  *v9 = v8;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_29C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(dword_16DBD0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_29D60()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *(v5 + 152);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  sub_312C0(v10);

  if (v0)
  {
    v11 = *(v3 + 152);
  }

  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_29E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(dword_16DBD0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_29FB4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_29FDC, 0, 0);
}

uint64_t sub_29FDC()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_2A128()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *(v6 + 104);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2A248()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v2;
  sub_D254();
  *v9 = v8;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2A34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(dword_16DBC0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2A498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(dword_16DBC0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2A5CC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_2A5F4, 0, 0);
}

uint64_t sub_2A5F4()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_2A740()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *(v6 + 104);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2A860()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v2;
  sub_D254();
  *v9 = v8;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DBA0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2AAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DBA0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2ABE4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_2AC0C, 0, 0);
}

uint64_t sub_2AC0C()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_2AD58()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *(v6 + 104);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2AE78()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v2;
  sub_D254();
  *v9 = v8;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2AF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DB78);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2B0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DB78);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2B1FC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_2B224, 0, 0);
}

uint64_t sub_2B224()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}