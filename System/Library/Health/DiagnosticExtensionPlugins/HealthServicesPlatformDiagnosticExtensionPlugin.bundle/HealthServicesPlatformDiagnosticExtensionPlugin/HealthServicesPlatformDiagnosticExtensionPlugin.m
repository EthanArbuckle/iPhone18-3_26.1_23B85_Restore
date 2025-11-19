void sub_1210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_122C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_1244(uint64_t a1, void *a2)
{
  v3 = [a2 absoluteString];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

int64_t sub_17AC(id a1, HKOntologyShardRegistryEntry *a2, HKOntologyShardRegistryEntry *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(HKOntologyShardRegistryEntry *)v4 identifier];
  v7 = [(HKOntologyShardRegistryEntry *)v5 identifier];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [(HKOntologyShardRegistryEntry *)v4 schemaType];
    v10 = [(HKOntologyShardRegistryEntry *)v5 schemaType];
    v8 = [v9 compare:v10];

    if (!v8)
    {
      [(HKOntologyShardRegistryEntry *)v4 schemaVersion];
      [(HKOntologyShardRegistryEntry *)v5 schemaVersion];
      v8 = HKCompareIntegers();
    }
  }

  return v8;
}

uint64_t sub_1FBC(uint64_t a1)
{
  v2 = HDSQLiteColumnAsString();
  v3 = HDSQLiteColumnAsNumber();
  v4 = HDSQLiteColumnAsNumber();
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v3];
  }

  [v5 setObject:v4 forKeyedSubscript:v2];

  return 1;
}

uint64_t sub_24B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 slot]);
  [v2 setObject:v3 forKeyedSubscript:v4];

  return 1;
}

uint64_t sub_292C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v9[0] = a2;
  v9[1] = a3;
  v5 = a3;
  v6 = a2;
  v7 = [NSArray arrayWithObjects:v9 count:2];
  [v4 appendRow:v7];

  return 1;
}

void sub_2B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2B74(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_35D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_35F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}