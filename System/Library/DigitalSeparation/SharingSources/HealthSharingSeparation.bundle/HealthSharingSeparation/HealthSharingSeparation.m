void sub_DE8(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 sharingEntryStore];
    v5 = [v4 sharingEntries];
    v6 = [v3 _outgoingSharingEntriesFromEntries:v5];
    v7 = [v6 hk_map:&stru_4178];

    v8 = [v7 count];
    v9 = *(a1 + 40);
    if (v8)
    {
      v10 = [[HealthDigitalSeparationSharedResource alloc] initWithDigitalSeparationEntries:v7];
      v14 = v10;
      v11 = [NSArray arrayWithObjects:&v14 count:1];
      (*(v9 + 16))(v9, v11, 0);
    }

    else
    {
      (*(v9 + 16))(v9, &__NSArray0__struct, 0);
    }
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = *(*(a1 + 40) + 16);

    v13();
  }
}

id sub_F80(id a1, HKSummarySharingEntry *a2)
{
  v2 = a2;
  v3 = [[HealthDigitalSeparationEntry alloc] initWithSharingEntry:v2];

  return v3;
}

uint64_t sub_1550(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1568(uint64_t a1, char a2, void *a3)
{
  v9 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(*(a1 + 40) + 8);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    if (!v8)
    {
      objc_storeStrong(v7, a3);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

id sub_160C(id a1, HKSummarySharingEntry *a2)
{
  v2 = a2;
  if ([(HKSummarySharingEntry *)v2 direction]|| [(HKSummarySharingEntry *)v2 status]!= &dword_0 + 1 && [(HKSummarySharingEntry *)v2 status])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}