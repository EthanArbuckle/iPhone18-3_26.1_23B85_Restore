void sub_1000010B8(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v28 = a3;
  v29 = objc_alloc_init(NSMutableDictionary);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [*(a1 + 32) requests];
  v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    v8 = @"json-payload";
    v25 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        v11 = [*(a1 + 32) requests];
        v12 = [v11 objectForKeyedSubscript:v10];

        v13 = [*(a1 + 40) objectForKeyedSubscript:v10];

        if (v13)
        {
          v14 = [*(a1 + 56) wrapError:v28];
          v15 = [v14 objectForKeyedSubscript:v8];
          [v29 setObject:v15 forKeyedSubscript:v10];
        }

        else
        {
          v14 = [v12 propertyName];
          v16 = *(a1 + 56);
          v15 = [v26 objectForKeyedSubscript:v14];
          v17 = [v16 wrapValue:v15 forProperty:v14];
          [v17 objectForKeyedSubscript:v8];
          v18 = v6;
          v20 = v19 = v8;
          [v29 setObject:v20 forKeyedSubscript:v10];

          v8 = v19;
          v6 = v18;

          v7 = v25;
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v23 = [v29 copy];
  v24 = [v22 wrapBatchResponse:v23];
  (*(v21 + 16))(v21, v24, v28);
}

void sub_100001570(void *a1, void *a2, void *a3)
{
  v6 = a1[5];
  v5 = a1[6];
  v7 = a1[4];
  v8 = a3;
  v10 = [a2 objectForKeyedSubscript:v7];
  v9 = [v5 wrapValue:v10 forProperty:a1[4]];
  (*(v6 + 16))(v6, v9, v8);
}

void sub_100001C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001C94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001CAC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:a2];
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100001D38(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:a2];
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_100001DC4(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 56));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, v4, "engagement:fetchProperties", &unk_100003266, v6, 2u);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
  }

  return result;
}

Class sub_1000024DC()
{
  if (qword_100008598 != -1)
  {
    sub_100002568();
  }

  result = objc_getClass("FHSearchSuggestionController");
  qword_100008588 = result;
  off_100008460 = sub_100002530;
  return result;
}