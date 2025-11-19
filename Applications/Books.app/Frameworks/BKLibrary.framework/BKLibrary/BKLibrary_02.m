void sub_6C5E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v5 = [NSPredicate predicateWithFormat:@"asset == NULL AND (assetID != NULL OR temporaryAssetID != NULL)"];
  [v4 setPredicate:v5];

  [v4 setFetchBatchSize:32];
  v14 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v14];
  v7 = v14;
  if (v7)
  {
    v8 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_91B34();
    }
  }

  if ([v6 count])
  {
    [*(a1 + 32) p_updateAssetInMembers:v6 moc:v3];
    if ([v3 hasChanges])
    {
      v9 = [NSPredicate predicateWithFormat:@"self isKindOfClass: %@", objc_opt_class()];
      v10 = BKLibraryCollectionLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v3 updatedObjects];
        v12 = [v11 filteredSetUsingPredicate:v9];
        v13 = [v12 count];
        *buf = 134217984;
        v16 = v13;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Fixed asset link for %lu BKCollectionMembers.", buf, 0xCu);
      }
    }

    else
    {
      v9 = BKLibraryCollectionLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "No BKCollectionMembers with missing asset link have existing assets.", buf, 2u);
      }
    }
  }
}

void sub_6C8B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v5 = [NSPredicate predicateWithFormat:@"contentType == %@ AND isSupplementalContent == NO AND supplementalContentParent == NULL", &off_DE168];
  [v4 setPredicate:v5];

  [v4 setFetchBatchSize:32];
  [v4 setReturnsDistinctResults:1];
  v42 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v42];
  v7 = v42;
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v29 = a1;
    v31 = v6;
    v34 = objc_opt_new();
    v50[0] = kBKCollectionDefaultAll;
    v50[1] = kBKCollectionDefaultIDPDFs;
    v10 = [NSArray arrayWithObjects:v50 count:2];
    v11 = [NSSet setWithArray:v10];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0;
    v32 = v4;
    v33 = v3;
    v12 = [v3 executeFetchRequest:v4 error:&v37];
    v30 = v37;
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          v18 = [v17 collectionMembers];
          v19 = [v18 valueForKey:@"collectionID"];
          v20 = [v11 isSubsetOfSet:v19];

          if ((v20 & 1) == 0)
          {
            v21 = [v17 assetID];
            [v34 addObject:v21];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v38 objects:v49 count:16];
      }

      while (v14);
    }

    v22 = [v34 count];
    v23 = BKLibraryCollectionLog();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v22)
    {
      v6 = v31;
      if (v24)
      {
        v25 = [v34 count];
        v26 = [v31 count];
        v27 = [v34 description];
        *buf = 134218498;
        v44 = v25;
        v45 = 2048;
        v46 = v26;
        v47 = 2112;
        v48 = v27;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%lu out of %lu PDF assets don't have required BKCollectionMembers, resetting them now: %@", buf, 0x20u);
      }

      v28 = *(v29 + 32);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_6CCF4;
      v35[3] = &unk_D5528;
      v36 = v34;
      [v28 resetCollectionsForAssetIDs:v36 completion:v35];
      v23 = v36;
    }

    else
    {
      v6 = v31;
      if (v24)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "PDFs are in PDF Collection, same as All Collection", buf, 2u);
      }
    }

    v4 = v32;
    v3 = v33;
    v9 = v30;
  }

  else
  {
    v9 = v7;
    v34 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_91B9C(v9);
    }
  }
}

void sub_6CCF4(uint64_t a1)
{
  v2 = BKLibraryCollectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) count];
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Done resetting collections for %lu PDF assets", &v4, 0xCu);
  }
}

void sub_6D1F8(uint64_t a1)
{
  v2 = [*(a1 + 32) resetCollectionsChangeSet];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    v7 = [v3 resetCollectionsChangeSet];
    v5 = [v4 setByAddingObjectsFromSet:v7];
    [*(a1 + 32) setResetCollectionsChangeSet:v5];
  }

  else
  {
    v6 = *(a1 + 40);

    [v3 setResetCollectionsChangeSet:v6];
  }
}

id sub_6D574(uint64_t a1, void *a2)
{
  v3 = [a2 changedValues];
  v4 = [v3 allKeys];
  v5 = [NSSet setWithArray:v4];
  v6 = [v5 intersectsSet:*(a1 + 32)];

  return v6;
}

void sub_6EBB4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_91D00(a1);
    }
  }
}

void sub_6EFBC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_6EFDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_6EFE8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_6F01C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_6F064(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_6F078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_6F0C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6F134(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 4);
  v4 = *(a1 + 4);
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  v9 = sub_6FD30(*(a1 + 1), *(a2 + 1)) & (v8 == v6);
  if (v7 != v5)
  {
    v9 = 0;
  }

  if (v4 == v3)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6F1B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_70674(&unk_EF520, &qword_A6240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  if (a1)
  {
    v12 = sub_91FFC();
    v13 = [a1 BOOLForKey:v12];

    if (v13)
    {
      v14 = 1;
      goto LABEL_5;
    }
  }

  v44 = BRCBooksDefaultsKeyPriceTrackingEnabled;
  sub_70674(&qword_EF610, &qword_A5880);
  sub_91F6C();
  v14 = v43;
  if (a1)
  {
LABEL_5:
    v39 = sub_6F648();
    if (v39)
    {
      goto LABEL_9;
    }
  }

  v15 = sub_91F7C();

  v16 = &_swiftEmptyArrayStorage;
  if (v15)
  {
    v16 = v15;
  }

  v39 = v16;
  if (!a1)
  {
LABEL_10:
    v43 = BRCBooksDefaultsKeyPriceTrackingDealAbsoluteThreshold;
    sub_70674(&qword_EF610, &qword_A5880);
    sub_91F6C();
    if (v45)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = *&v44;
    }

    if (!a1)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_9:
  v17 = sub_8AA7C();
  if (v18)
  {
    goto LABEL_10;
  }

  v19 = *&v17;
LABEL_16:
  v20 = sub_8AA7C();
  if ((v21 & 1) == 0)
  {
    v22 = *&v20;
    goto LABEL_23;
  }

LABEL_17:
  v43 = BRCBooksDefaultsKeyPriceTrackingDealRelativeThreshold;
  sub_70674(&qword_EF610, &qword_A5880);
  sub_91F6C();
  if (v45)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = *&v44;
  }

  if (!a1)
  {
    goto LABEL_24;
  }

LABEL_23:
  v23 = sub_8AFB4();
  if (v24)
  {
LABEL_24:
    v43 = BRCBooksDefaultsKeyPriceTrackingCardLimit;
    sub_70674(&qword_EF610, &qword_A5880);
    sub_91F6C();
    if (v45)
    {
      v25 = 0;
    }

    else
    {
      v25 = v44;
    }

    goto LABEL_28;
  }

  v25 = v23;
LABEL_28:
  v26 = v39;
  v27 = v39[2];
  if (v27)
  {
    v36 = v25;
    v37 = v14;
    v38 = a2;
    v44 = &_swiftEmptyArrayStorage;
    sub_923AC();
    v28 = sub_705A0();
    v30 = *(v5 + 16);
    v29 = v5 + 16;
    v41 = v30;
    v42 = v28;
    v31 = v26 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v40 = *(v29 + 56);
    do
    {
      v32 = v41;
      v41(v11, v31, v4);
      v32(v9, v11, v4);
      sub_6FB8C(v9);
      (*(v29 - 8))(v11, v4);
      sub_9238C();
      v33 = v44[2];
      sub_923BC();
      sub_923CC();
      sub_9239C();
      v31 += v40;
      --v27;
    }

    while (v27);

    v35 = v44;
    a2 = v38;
    LOBYTE(v14) = v37;
    v25 = v36;
  }

  else
  {

    v35 = &_swiftEmptyArrayStorage;
  }

  *a2 = v14 & 1;
  *(a2 + 8) = v35;
  *(a2 + 16) = v19;
  *(a2 + 24) = v22;
  *(a2 + 32) = v25;
  return result;
}

void *sub_6F648()
{
  v1 = sub_70674(&unk_EF520, &qword_A6240);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v38 - v4;
  v6 = sub_9205C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_91FFC();
  v12 = [v0 stringForKey:v11];

  if (!v12)
  {
    return v12;
  }

  v13 = sub_9202C();
  v15 = v14;

  v44[0] = v13;
  v44[1] = v15;
  sub_706BC();
  if ((sub_9225C() & 1) == 0)
  {

    return 0;
  }

  sub_9204C();
  v16 = sub_9203C();
  v18 = v17;

  (*(v7 + 8))(v10, v6);
  if (v18 >> 60 == 15)
  {
LABEL_15:
    if (qword_EF270 != -1)
    {
      swift_once();
    }

    v33 = sub_91F0C();
    sub_70710(v33, qword_F07A8);
    v34 = sub_91EEC();
    v35 = sub_9227C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "Invalid 'update schedule steps' override value in user defaults", v36, 2u);
    }

    return 0;
  }

  v19 = objc_opt_self();
  isa = sub_91E1C().super.isa;
  v44[0] = 0;
  v21 = [v19 JSONObjectWithData:isa options:0 error:v44];

  if (!v21)
  {
    v32 = v44[0];
    sub_91E0C();

    swift_willThrow();
    sub_70748(v16, v18);

    goto LABEL_15;
  }

  v22 = v44[0];
  sub_922EC();
  swift_unknownObjectRelease();
  sub_70674(&qword_EF538, &qword_A5888);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_70748(v16, v18);
    goto LABEL_15;
  }

  v23 = v43;
  v24 = *(v43 + 16);
  if (v24)
  {
    v39 = v16;
    v40 = v18;
    v44[0] = &_swiftEmptyArrayStorage;
    sub_853CC(0, v24, 0);
    v12 = v44[0];
    v42 = v2 + 32;
    type metadata accessor for BooksDefaultsPriceTrackingUpdateScheduleStepsKey(0);
    v41 = v25;
    sub_7023C(&qword_EF540, type metadata accessor for BooksDefaultsPriceTrackingUpdateScheduleStepsKey);
    v26 = 32;
    do
    {
      v27 = v1;
      v28 = *(v23 + v26);

      sub_91F8C();
      v44[0] = v12;
      v30 = v12[2];
      v29 = v12[3];
      if (v30 >= v29 >> 1)
      {
        sub_853CC(v29 > 1, v30 + 1, 1);
        v12 = v44[0];
      }

      v12[2] = v30 + 1;
      v31 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v30;
      v1 = v27;
      (*(v2 + 32))(v31, v5, v27);
      v26 += 8;
      --v24;
    }

    while (v24);
    sub_70748(v39, v40);
  }

  else
  {

    sub_70748(v16, v18);
    return &_swiftEmptyArrayStorage;
  }

  return v12;
}

id sub_6FB8C(uint64_t a1)
{
  v2 = sub_70674(&unk_EF520, &qword_A6240);
  sub_91F6C();
  if (v10)
  {
    v3 = 0;
  }

  else
  {
    v3 = v9;
  }

  sub_91F6C();
  if (v10)
  {
    v4 = 0;
  }

  else
  {
    v4 = v9;
  }

  sub_91F6C();
  if (v10)
  {
    v5 = 0;
  }

  else
  {
    v5 = v9;
  }

  sub_91F6C();
  if (v10)
  {
    v6 = 0;
  }

  else
  {
    v6 = v9;
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDuration:v3 minUpdateInterval:v4 schedulerConfigIdealInterval:v5 schedulerConfigMinInterval:v6];
  (*(*(v2 - 8) + 8))(a1, v2);
  return v7;
}

uint64_t sub_6FD30(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_705A0();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_9235C();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_9235C();
LABEL_26:
        v17 = v16;
        v18 = sub_922DC();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_922DC();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_923EC();
  }

  result = sub_923EC();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_6FF74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_9202C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_6FFB4(uint64_t a1, id *a2)
{
  result = sub_9200C();
  *a2 = 0;
  return result;
}

uint64_t sub_7002C(uint64_t a1, id *a2)
{
  v3 = sub_9201C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_700AC@<X0>(void *a1@<X8>)
{
  sub_9202C();
  v2 = sub_91FFC();

  *a1 = v2;
  return result;
}

uint64_t sub_700F0(uint64_t a1)
{
  v2 = sub_7023C(&qword_EF450, type metadata accessor for BooksDefaultsKey);
  v3 = sub_7023C(&qword_EF458, type metadata accessor for BooksDefaultsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_7023C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_70284(uint64_t a1)
{
  v2 = sub_7023C(&qword_EF580, type metadata accessor for BooksDefaultsPriceTrackingUpdateScheduleStepsKey);
  v3 = sub_7023C(&qword_EF588, type metadata accessor for BooksDefaultsPriceTrackingUpdateScheduleStepsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_70340@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_91FFC();

  *a2 = v5;
  return result;
}

uint64_t sub_70388(uint64_t a1)
{
  v2 = sub_7023C(&qword_EF590, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_7023C(&qword_EF598, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_70450()
{
  v1 = *v0;
  sub_9202C();
  v2 = sub_920BC();

  return v2;
}

uint64_t sub_7048C()
{
  v1 = *v0;
  sub_9202C();
  sub_9208C();
}

Swift::Int sub_704E0()
{
  v1 = *v0;
  sub_9202C();
  sub_924CC();
  sub_9208C();
  v2 = sub_924DC();

  return v2;
}

unint64_t sub_705A0()
{
  result = qword_EF448;
  if (!qword_EF448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_EF448);
  }

  return result;
}

uint64_t sub_705EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_9202C();
  v6 = v5;
  if (v4 == sub_9202C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_9247C();
  }

  return v9 & 1;
}

uint64_t sub_70674(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_706BC()
{
  result = qword_EF530;
  if (!qword_EF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF530);
  }

  return result;
}

uint64_t sub_70710(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_70748(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_7075C(a1, a2);
  }

  return a1;
}

uint64_t sub_7075C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_709CC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_70A40(char a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 64) = a1;
  return _swift_task_switch(sub_70A64, 0, 0);
}

uint64_t sub_70A64()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_70B54;
    v4 = *(v0 + 64);

    return sub_799C4(v4);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_70B54()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_70C90()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_70D48, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_70D48()
{
  v1 = v0[6];
  v2 = *(v1 + 232);
  v0[7] = v2;
  v0[8] = *(v1 + 240);
  sub_7F440(v2);

  if (v2)
  {
    v7 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_70E94;

    return v7();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_70E94()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v6 = *v0;

  sub_78FF4(v3);
  v4 = *(v6 + 8);

  return v4();
}

void sub_70FC8(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v4 = sub_91F0C();
  sub_70710(v4, qword_F07A8);
  oslog = sub_91EEC();
  v5 = sub_9227C();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, oslog, v5, a3, v6, 2u);
  }
}

uint64_t sub_710D8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_71190, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_71190()
{
  v1 = *(*(v0 + 48) + 216);
  [v1 signal];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_71230()
{
  [*(v0 + 16) signal];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_71298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 4608) = v12;
  *(v8 + 4592) = v11;
  *(v8 + 4576) = v10;
  *(v8 + 4568) = a8;
  *(v8 + 4560) = a7;
  *(v8 + 4552) = a6;
  *(v8 + 4544) = a5;
  *(v8 + 4536) = a4;
  return _swift_task_switch(sub_712E0, 0, 0);
}

uint64_t sub_712E0()
{
  v19 = v0[576];
  v1 = v0[575];
  v2 = v0[574];
  v3 = v0[573];
  v4 = v0[572];
  v5 = v0[571];
  v6 = v0[570];
  v7 = v0[569];
  v8 = v0[568];
  v9 = v0[567];
  v10 = swift_task_alloc();
  v0[577] = v10;
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = v7;
  swift_asyncLet_begin();
  v11 = swift_task_alloc();
  v0[578] = v11;
  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v4;
  v11[5] = v8;
  v11[6] = v7;
  swift_asyncLet_begin();
  v12 = swift_task_alloc();
  v0[579] = v12;
  v12[2] = v3;
  v12[3] = v5;
  v12[4] = v4;
  v12[5] = v8;
  v12[6] = v7;
  swift_asyncLet_begin();
  v13 = swift_task_alloc();
  v0[580] = v13;
  v13[2] = v2;
  v13[3] = v5;
  v13[4] = v4;
  v13[5] = v8;
  v13[6] = v7;
  swift_asyncLet_begin();
  v14 = swift_task_alloc();
  v0[581] = v14;
  v14[2] = v2;
  v14[3] = v5;
  v14[4] = v4;
  v14[5] = v8;
  v14[6] = v7;
  swift_asyncLet_begin();
  v15 = swift_task_alloc();
  v0[582] = v15;
  v15[2] = v1;
  v15[3] = v5;
  v15[4] = v4;
  v15[5] = v8;
  v15[6] = v7;
  swift_asyncLet_begin();
  v16 = swift_task_alloc();
  v0[583] = v16;
  v16[2] = v19;
  v16[3] = v5;
  v16[4] = v4;
  v16[5] = v8;
  v16[6] = v7;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v17, sub_71558, v0 + 562);
}

uint64_t sub_71654()
{
  v1 = *(v0 + 4664);

  return _swift_asyncLet_finish(v0 + 3216);
}

uint64_t sub_716D8()
{
  v1 = *(v0 + 4656);

  return _swift_asyncLet_finish(v0 + 2576);
}

uint64_t sub_7175C()
{
  v1 = *(v0 + 4648);

  return _swift_asyncLet_finish(v0 + 1936);
}

uint64_t sub_717E0()
{
  v1 = *(v0 + 4640);

  return _swift_asyncLet_finish(v0 + 1296);
}

uint64_t sub_71864()
{
  v1 = *(v0 + 4632);

  return _swift_asyncLet_finish(v0 + 656);
}

uint64_t sub_718E8()
{
  v1 = *(v0 + 4624);

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_7196C()
{
  v1 = *(v0 + 4616);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_719CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[4] = a2;
  v5 = sub_70674(&qword_EF798, &qword_A5FC0);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_70674(&qword_EF7A0, &qword_A5FC8);
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_71B10, 0, 0);
}

uint64_t sub_71B10()
{
  v1 = [*(v0 + 32) stringForKey:BDSPriceTrackerCardList];
  if (v1)
  {
    v2 = v1;
    v3 = sub_9202C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 72);
  v11 = *(v0 + 32);
  sub_89D78();
  (*(v9 + 16))(v7, v6, v8);
  sub_7F3D0(&qword_EF7A8, &qword_EF7A0, &qword_A5FC8);
  sub_921EC();
  *(v0 + 112) = v3;
  *(v0 + 120) = v5;
  sub_7F3D0(&unk_EF7B0, &qword_EF798, &qword_A5FC0);
  v12 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *v13 = v0;
  v13[1] = sub_71CCC;
  v14 = *(v0 + 72);
  v15 = *(v0 + 56);

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 16, 0, 0);
}

uint64_t sub_71CCC()
{
  v2 = *(*v1 + 128);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_71DDC, 0, 0);
  }

  return result;
}

uint64_t sub_71DDC()
{
  v29 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v0[17] = v2;
  v0[18] = v1;
  v3 = v0[15];
  if (v1 == 1)
  {
    v4 = v0[12];
    v5 = v0[13];
    v6 = v0[10];
    v7 = v0[11];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v7 + 8))(v5, v6);

    v8 = v0[1];

    return v8();
  }

  if (v3)
  {
    if (v1)
    {
      v10 = v3 == v1 && v0[14] == v2;
      if (v10 || (v11 = v0[15], (sub_9247C() & 1) != 0))
      {
        sub_7F42C(v2, v1);
LABEL_15:
        sub_7F3D0(&unk_EF7B0, &qword_EF798, &qword_A5FC0);
        v12 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
        v13 = swift_task_alloc();
        v0[16] = v13;
        *v13 = v0;
        v13[1] = sub_71CCC;
        v14 = v0[9];
        v15 = v0[7];

        return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 2, 0, 0);
      }

      v16 = v0[15];
    }
  }

  else if (!v1)
  {
    sub_7F42C(v2, 0);
    v0[15] = 0;
    goto LABEL_15;
  }

  sub_7F418(v2, v1);
  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v17 = sub_91F0C();
  sub_70710(v17, qword_F07A8);

  v18 = sub_91EEC();
  v19 = sub_9228C();
  sub_7F42C(v2, v1);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315138;
    if (v1)
    {
      v22 = v1;
    }

    else
    {
      v2 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = sub_88FBC(v2, v22, &v28);

    *(v20 + 4) = v23;
    sub_7E6F0(v21);
  }

  v27 = (v0[5] + *v0[5]);
  v24 = *(v0[5] + 4);
  v25 = swift_task_alloc();
  v0[19] = v25;
  *v25 = v0;
  v25[1] = sub_721F8;
  v26 = v0[6];

  return v27();
}

uint64_t sub_721F8()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_722F4, 0, 0);
}

uint64_t sub_722F4()
{
  sub_7F42C(*(v0 + 136), *(v0 + 144));
  *(v0 + 112) = *(v0 + 136);
  sub_7F3D0(&unk_EF7B0, &qword_EF798, &qword_A5FC0);
  v1 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_71CCC;
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 16, 0, 0);
}

uint64_t sub_723E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = sub_70674(&qword_EF778, &qword_A5F88);
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = sub_70674(&qword_EF688, &qword_A5EA0);
  v6[10] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v12 = sub_70674(&qword_EF780, &qword_A5F90);
  v6[12] = v12;
  v13 = *(v12 - 8);
  v6[13] = v13;
  v14 = *(v13 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v15 = swift_task_alloc();
  v6[16] = v15;
  *v15 = v6;
  v15[1] = sub_725B0;

  return sub_730AC();
}

uint64_t sub_725B0(char a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 161) = a1;

  return _swift_task_switch(sub_726B0, 0, 0);
}

uint64_t sub_726B0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 16);
  sub_91FDC();
  sub_91F9C();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_A5FA8;
  *(v10 + 24) = v9;
  sub_7F3D0(&qword_EF6A8, &qword_EF688, &qword_A5EA0);
  sub_923DC();
  (*(v4 + 16))(v1, v2, v3);
  sub_7F3D0(&qword_EF788, &qword_EF780, &qword_A5F90);
  sub_921EC();
  *(v0 + 162) = *(v0 + 161);
  sub_7F3D0(&qword_EF790, &qword_EF778, &qword_A5F88);
  v11 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = sub_728EC;
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 160, 0, 0);
}

uint64_t sub_728EC()
{
  v2 = *(*v1 + 136);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_729FC, 0, 0);
  }

  return result;
}

uint64_t sub_729FC()
{
  v1 = *(v0 + 160);
  *(v0 + 163) = v1;
  if (v1 == 2)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 120);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v6 = *(v0 + 88);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    (*(v5 + 8))(v3, v4);

    v7 = *(v0 + 8);

    return v7();
  }

  else if (*(v0 + 162) == (v1 & 1))
  {
    sub_7F3D0(&qword_EF790, &qword_EF778, &qword_A5F88);
    v17 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v18 = swift_task_alloc();
    *(v0 + 136) = v18;
    *v18 = v0;
    v18[1] = sub_728EC;
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 160, 0, 0);
  }

  else
  {
    if (qword_EF270 != -1)
    {
      swift_once();
    }

    v9 = sub_91F0C();
    sub_70710(v9, qword_F07A8);
    v10 = sub_91EEC();
    v11 = sub_9228C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v1 & 1;
    }

    v13 = *(v0 + 24);

    v21 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v15[1] = sub_72D48;
    v16 = *(v0 + 32);

    return v21();
  }
}

uint64_t sub_72D48()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 40);
  v4 = *v0;

  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v1 + 152) = v6;
  *v6 = v4;
  v6[1] = sub_72EF8;
  v7 = *(v1 + 48);

  return v9();
}

uint64_t sub_72EF8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *v0;

  *(v1 + 162) = *(v1 + 163) & 1;
  sub_7F3D0(&qword_EF790, &qword_EF778, &qword_A5F88);
  v4 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v5 = swift_task_alloc();
  *(v1 + 136) = v5;
  *v5 = v3;
  v5[1] = sub_728EC;
  v6 = *(v1 + 72);
  v7 = *(v1 + 56);

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1 + 160, 0, 0);
}

uint64_t sub_730AC()
{
  v2 = *v0;
  v3 = async function pointer to dispatch thunk of BCCloudGlobalMetadataManaging.fetchBool(forKey:)[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_73190;

  return dispatch thunk of BCCloudGlobalMetadataManaging.fetchBool(forKey:)(0xD000000000000023, 0x80000000000B4FA0, v2, &protocol witness table for BCDefaultCloudGlobalMetadataManager);
}

uint64_t sub_73190(char a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_732CC, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_732CC()
{
  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_91F0C();
  sub_70710(v2, qword_F07A8);
  swift_errorRetain();
  v3 = sub_91EEC();
  v4 = sub_9227C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 24);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "[Metadata] Failed to get notificationsEnabled: %@", v7, 0xCu);
    sub_7F1C4(v8, &unk_EF670, &unk_A5DF0);
  }

  else
  {
    v10 = *(v0 + 24);
  }

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_73474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[25] = a3;
  v6[26] = a4;
  v6[24] = a2;
  v7 = sub_70674(&qword_EF750, &qword_A5F60);
  v6[29] = v7;
  v8 = *(v7 - 8);
  v6[30] = v8;
  v9 = *(v8 + 64) + 15;
  v6[31] = swift_task_alloc();
  v10 = sub_70674(&qword_EF758, &qword_A5F68);
  v6[32] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[33] = swift_task_alloc();
  v12 = sub_70674(&qword_EF760, &qword_A5F70);
  v6[34] = v12;
  v13 = *(v12 - 8);
  v6[35] = v13;
  v14 = *(v13 + 64) + 15;
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v15 = sub_70674(&qword_EF610, &qword_A5880);
  v6[38] = v15;
  v16 = *(v15 - 8);
  v6[39] = v16;
  v17 = *(v16 + 64) + 15;
  v6[40] = swift_task_alloc();

  return _swift_task_switch(sub_73660, 0, 0);
}

uint64_t sub_73660()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  v18 = *(v0 + 296);
  v19 = *(v0 + 272);
  v17 = *(v0 + 256);
  v20 = *(v0 + 288);
  v21 = *(v0 + 248);
  v6 = *(v0 + 192);
  v7 = sub_91F3C();
  sub_91F4C();
  sub_6F1B4(0, v0 + 16);
  (*(v1 + 8))(v2, v3);
  sub_91F5C();
  sub_793B4();
  *(v0 + 176) = v7;
  *(v0 + 184) = &protocol witness table for RCDataContainer;
  swift_getOpaqueTypeConformance2();
  sub_923DC();
  v8 = *(v0 + 24);
  v9 = *(v0 + 48);
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  LOBYTE(v7) = *(v0 + 16);
  (*(v4 + 16))(v20, v18, v19);
  sub_7F3D0(&qword_EF768, &qword_EF760, &qword_A5F70);

  sub_921EC();
  *(v0 + 352) = v8;
  *(v0 + 416) = v7 & 1;
  *(v0 + 336) = v10;
  *(v0 + 344) = v11;
  *(v0 + 328) = v9;
  sub_7F3D0(&qword_EF770, &qword_EF750, &qword_A5F60);
  v12 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v13 = swift_task_alloc();
  *(v0 + 360) = v13;
  *v13 = v0;
  v13[1] = sub_738E0;
  v14 = *(v0 + 248);
  v15 = *(v0 + 232);

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 96, 0, 0);
}

uint64_t sub_738E0()
{
  v2 = *(*v1 + 360);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_739F0, 0, 0);
  }

  return result;
}

uint64_t sub_739F0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 128);
  *(v0 + 368) = v1;
  *(v0 + 376) = v2;
  if (v1)
  {
    v3 = *(v0 + 416);
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    *(v0 + 384) = v4;
    *(v0 + 392) = v5;
    v6 = *(v0 + 96);
    *(v0 + 400) = v6;
    v7 = v6 & 1;
    *(v0 + 136) = v6 & 1;
    *(v0 + 144) = v1;
    *(v0 + 152) = v5;
    *(v0 + 160) = v4;
    *(v0 + 168) = v2;
    if (v3 == (v6 & 1) && (v25 = *(v0 + 336), v26 = *(v0 + 344), v27 = *(v0 + 328), (sub_6FD30(*(v0 + 352), v1) & 1) != 0) && v26 == v5 && v25 == v4 && v27 == v2)
    {

      sub_7F3D0(&qword_EF770, &qword_EF750, &qword_A5F60);
      v28 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v29 = swift_task_alloc();
      *(v0 + 360) = v29;
      *v29 = v0;
      v29[1] = sub_738E0;
      v30 = *(v0 + 248);
      v31 = *(v0 + 232);

      return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 96, 0, 0);
    }

    else
    {
      v8 = *(v0 + 352);

      *(v0 + 56) = v7;
      *(v0 + 64) = v1;
      *(v0 + 72) = v5;
      *(v0 + 80) = v4;
      *(v0 + 88) = v2;

      v9 = swift_task_alloc();
      *(v0 + 408) = v9;
      *v9 = v0;
      v9[1] = sub_73D00;
      v10 = *(v0 + 216);
      v11 = *(v0 + 224);
      v12 = *(v0 + 200);
      v13 = *(v0 + 208);

      return sub_73F9C((v0 + 56), v0 + 136, v12, v13, v10, v11);
    }
  }

  else
  {
    v15 = *(v0 + 352);
    v16 = *(v0 + 320);
    v18 = *(v0 + 288);
    v17 = *(v0 + 296);
    v19 = *(v0 + 272);
    v20 = *(v0 + 280);
    v32 = *(v0 + 264);
    v21 = *(v0 + 240);
    v22 = *(v0 + 248);
    v23 = *(v0 + 232);
    sub_79358(v0 + 16);
    (*(v21 + 8))(v22, v23);
    (*(v20 + 8))(v17, v19);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_73D00()
{
  v1 = *(*v0 + 408);
  v3 = *v0;

  return _swift_task_switch(sub_73DFC, 0, 0);
}

uint64_t sub_73DFC()
{
  v1 = *(v0 + 368);

  v2 = *(v0 + 400);
  v3 = *(v0 + 376);
  *(v0 + 352) = *(v0 + 368);
  *(v0 + 416) = v2 & 1;
  *(v0 + 336) = *(v0 + 384);
  *(v0 + 328) = v3;
  sub_7F3D0(&qword_EF770, &qword_EF750, &qword_A5F60);
  v4 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v5 = swift_task_alloc();
  *(v0 + 360) = v5;
  *v5 = v0;
  v5[1] = sub_738E0;
  v6 = *(v0 + 248);
  v7 = *(v0 + 232);

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 96, 0, 0);
}

uint64_t sub_73F04(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_73F24, 0, 0);
}

uint64_t sub_73F24()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_6F1B4(0, v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 48);
  *v1 = v3;
  *(v1 + 16) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_73F9C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 80) = *a1;
  *(v6 + 81) = *a2;
  *(v6 + 48) = *(a2 + 8);
  return _swift_task_switch(sub_73FD8, 0, 0);
}

uint64_t sub_73FD8()
{
  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v1 = sub_91F0C();
  v0[7] = sub_70710(v1, qword_F07A8);
  v2 = sub_91EEC();
  v3 = sub_9228C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
  }

  v5 = v0[2];

  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_74184;
  v8 = v0[3];

  return v10();
}

uint64_t sub_74184()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_74280, 0, 0);
}

uint64_t sub_74280()
{
  if (*(v0 + 81) == *(v0 + 80))
  {
    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 56);

    v3 = sub_91EEC();
    v4 = sub_9228C();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 48);
    if (v5)
    {
      v7 = *(v0 + 81);
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v7;
    }

    else
    {
      v11 = *(v0 + 48);
    }

    v15 = (*(v0 + 32) + **(v0 + 32));
    v12 = *(*(v0 + 32) + 4);
    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    *v13 = v0;
    v13[1] = sub_74460;
    v14 = *(v0 + 40);

    return v15();
  }
}

uint64_t sub_74460()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_74554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = sub_70674(&qword_EF728, &qword_A5F38);
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = sub_70674(&qword_EF700, &qword_A5F10);
  v6[10] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v12 = sub_70674(&qword_EF708, &qword_A5F18);
  v6[12] = v12;
  v13 = *(v12 - 8);
  v6[13] = v13;
  v14 = *(v13 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_746D8, 0, 0);
}

uint64_t sub_746D8()
{
  v1 = [*(v0 + 16) activeStoreAccount];
  v2 = v1;
  if (v1)
  {
  }

  v3 = v2 != 0;
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  v11 = *(v0 + 16);
  sub_750A8();
  sub_7F3D0(&qword_EF718, &qword_EF700, &qword_A5F10);
  sub_923DC();
  (*(v7 + 16))(v4, v5, v6);
  sub_7F3D0(&qword_EF720, &qword_EF708, &qword_A5F18);
  sub_921EC();
  *(v0 + 153) = v3;
  sub_7F3D0(&qword_EF730, &qword_EF728, &qword_A5F38);
  v12 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *v13 = v0;
  v13[1] = sub_748E8;
  v14 = *(v0 + 72);
  v15 = *(v0 + 56);

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 152, 0, 0);
}

uint64_t sub_748E8()
{
  v2 = *(*v1 + 128);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_749F8, 0, 0);
  }

  return result;
}

uint64_t sub_749F8()
{
  v1 = *(v0 + 152);
  *(v0 + 154) = v1;
  if (v1 == 2)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 120);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v6 = *(v0 + 88);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    (*(v5 + 8))(v3, v4);

    v7 = *(v0 + 8);

    return v7();
  }

  else if (*(v0 + 153) == (v1 & 1))
  {
    sub_7F3D0(&qword_EF730, &qword_EF728, &qword_A5F38);
    v17 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v18 = swift_task_alloc();
    *(v0 + 128) = v18;
    *v18 = v0;
    v18[1] = sub_748E8;
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 152, 0, 0);
  }

  else
  {
    if (qword_EF270 != -1)
    {
      swift_once();
    }

    v9 = sub_91F0C();
    sub_70710(v9, qword_F07A8);
    v10 = sub_91EEC();
    v11 = sub_9228C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v1 & 1;
    }

    v13 = *(v0 + 24);

    v21 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 136) = v15;
    *v15 = v0;
    v15[1] = sub_74D44;
    v16 = *(v0 + 32);

    return v21();
  }
}

uint64_t sub_74D44()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 40);
  v4 = *v0;

  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v1 + 144) = v6;
  *v6 = v4;
  v6[1] = sub_74EF4;
  v7 = *(v1 + 48);

  return v9();
}

uint64_t sub_74EF4()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *v0;

  *(v1 + 153) = *(v1 + 154) & 1;
  sub_7F3D0(&qword_EF730, &qword_EF728, &qword_A5F38);
  v4 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v5 = swift_task_alloc();
  *(v1 + 128) = v5;
  *v5 = v3;
  v5[1] = sub_748E8;
  v6 = *(v1 + 72);
  v7 = *(v1 + 56);

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1 + 152, 0, 0);
}

uint64_t sub_750A8()
{
  v1 = sub_70674(&qword_EF738, &unk_A5F40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - v4;
  v6 = sub_70674(&unk_EF740, &qword_A62E0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  sub_70674(&unk_EFA60, &qword_A5F50);
  (*(v2 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v1);
  sub_9219C();
  (*(v2 + 8))(v5, v1);
  v14 = v7[2];
  v14(v11, v13, v6);
  v15 = type metadata accessor for AccountsObserver();
  v16 = objc_allocWithZone(v15);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14(&v16[OBJC_IVAR____TtC9BKLibraryP33_05F439DD99DBF9E3F4595B1087281DC916AccountsObserver_continuation], v11, v6);
  v22.receiver = v16;
  v22.super_class = v15;
  v17 = objc_msgSendSuper2(&v22, "init");
  v18 = v7[1];
  v18(v11, v6);
  [v0 addObserver:v17 accountTypes:1];
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  *(v19 + 24) = v17;
  v20 = v0;
  sub_921AC();
  return (v18)(v13, v6);
}

uint64_t sub_75398(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_753BC, 0, 0);
}

uint64_t sub_753E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v7 = sub_70674(&qword_EF6F8, &qword_A5F08);
  v6[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v9 = sub_70674(&qword_EF700, &qword_A5F10);
  v6[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = sub_70674(&qword_EF708, &qword_A5F18);
  v6[12] = v11;
  v12 = *(v11 - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = sub_70674(&qword_EF710, &qword_A5F20);
  v6[15] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_75568, 0, 0);
}

uint64_t sub_75568()
{
  v1 = *(v0 + 128);
  v18 = *(v0 + 120);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v16 = *(v0 + 64);
  v8 = *(v0 + 24);
  v17 = [v8 isStoreAccountManagedAppleID];
  sub_750A8();
  *(swift_allocObject() + 16) = v8;
  sub_7F3D0(&qword_EF718, &qword_EF700, &qword_A5F10);
  v9 = v8;
  sub_923DC();
  sub_7F3D0(&qword_EF720, &qword_EF708, &qword_A5F18);
  sub_921FC();
  (*(v3 + 8))(v2, v4);
  (*(v3 + 16))(v2, v1, v4);
  sub_921EC();
  v10 = (v1 + *(v18 + 36));
  v11 = *v10;
  *(v0 + 136) = *v10;
  v12 = v10[1];
  *(v0 + 144) = v12;
  v13 = *(v16 + 40);
  *(v0 + 216) = v13;
  *(v7 + v13) = 2;
  v14 = (v7 + *(v16 + 36));
  *v14 = v11;
  v14[1] = v12;
  LOBYTE(v13) = *(v7 + v13);
  *(v0 + 224) = v17;
  *(v0 + 226) = v13;
  *(v0 + 225) = 2;

  return _swift_task_switch(sub_7579C, 0, 0);
}

uint64_t sub_7579C()
{
  v1 = *(v0 + 225);
  if (v1 == 2)
  {
    v2 = sub_70674(&qword_EF728, &qword_A5F38);
    v3 = sub_7F3D0(&qword_EF730, &qword_EF728, &qword_A5F38);
    v4 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_75948;
    v6 = *(v0 + 72);
    v7 = v0 + 221;
  }

  else
  {
    *(v0 + 220) = v1 & 1;
    v2 = sub_70674(&qword_EF728, &qword_A5F38);
    v3 = sub_7F3D0(&qword_EF730, &qword_EF728, &qword_A5F38);
    v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_75A6C;
    v10 = *(v0 + 72);
    v7 = v0 + 223;
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v2, v3);
}

uint64_t sub_75948()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    *(*(v2 + 72) + *(v2 + 216)) = *(v2 + 226);
    v4 = sub_768D4;
  }

  else
  {
    v4 = sub_765C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_75A6C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    *(*(v2 + 72) + *(v2 + 216)) = *(v2 + 226);
    v4 = sub_75CFC;
  }

  else
  {
    v4 = sub_75B90;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_75B90()
{
  v1 = *(v0 + 223);
  *(v0 + 227) = v1;
  if (v1 == 2)
  {
    *(*(v0 + 72) + *(v0 + 216)) = *(v0 + 226);

    return _swift_task_switch(sub_75F60, 0, 0);
  }

  else
  {
    v2 = *(v0 + 136);
    *(v0 + 222) = v1 & 1;
    v7 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 184) = v4;
    *v4 = v0;
    v4[1] = sub_75D20;
    v5 = *(v0 + 144);

    return v7(v0 + 220, v0 + 222);
  }
}

uint64_t sub_75D20(char a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 228) = a1;

  return _swift_task_switch(sub_75E20, 0, 0);
}

uint64_t sub_75E20()
{
  if (*(v0 + 228) == 1)
  {
    v1 = sub_70674(&qword_EF728, &qword_A5F38);
    v2 = sub_7F3D0(&qword_EF730, &qword_EF728, &qword_A5F38);
    v3 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    *v4 = v0;
    v4[1] = sub_75A6C;
    v5 = *(v0 + 72);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 223, v1, v2);
  }

  else
  {

    return _swift_task_switch(sub_76040, 0, 0);
  }
}

uint64_t sub_75F7C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];
  sub_7F1C4(v0[16], &qword_EF710, &qword_A5F20);
  sub_7F1C4(v3, &qword_EF6F8, &qword_A5F08);

  v4 = v0[1];

  return v4();
}

uint64_t sub_7605C()
{
  v1 = *(v0 + 227);
  *(v0 + 229) = v1;
  if (*(v0 + 224) == (v1 & 1))
  {
    *(v0 + 226) = v1;
    *(v0 + 225) = v1;

    return _swift_task_switch(sub_7579C, 0, 0);
  }

  else
  {
    if (qword_EF270 != -1)
    {
      swift_once();
    }

    v2 = sub_91F0C();
    sub_70710(v2, qword_F07A8);
    v3 = sub_91EEC();
    v4 = sub_9228C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1 & 1;
    }

    v6 = *(v0 + 32);

    v11 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = sub_76278;
    v9 = *(v0 + 40);

    return v11();
  }
}

uint64_t sub_76278()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 48);
  v4 = *v0;

  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v1 + 200) = v6;
  *v6 = v4;
  v6[1] = sub_76428;
  v7 = *(v1 + 56);

  return v9();
}

uint64_t sub_76428()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v5 = *v0;

  v3 = v1[229];
  v1[224] = v3 & 1;
  v1[226] = v3;
  v1[225] = v3;

  return _swift_task_switch(sub_7579C, 0, 0);
}

uint64_t sub_76538()
{
  *(v0 + 16) = *(v0 + 208);
  sub_70674(&qword_EF940, &qword_A61E0);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_76604()
{
  v1 = *(v0 + 230);
  if (v1 == 2)
  {
    *(*(v0 + 72) + *(v0 + 216)) = 2;
    v2 = *(v0 + 112);
    v3 = *(v0 + 88);
    v4 = *(v0 + 72);
    sub_7F1C4(*(v0 + 128), &qword_EF710, &qword_A5F20);
    sub_7F1C4(v4, &qword_EF6F8, &qword_A5F08);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 229) = v1;
    if (*(v0 + 224) == (v1 & 1))
    {
      *(v0 + 226) = v1;
      *(v0 + 225) = v1;

      return _swift_task_switch(sub_7579C, 0, 0);
    }

    else
    {
      if (qword_EF270 != -1)
      {
        swift_once();
      }

      v7 = sub_91F0C();
      sub_70710(v7, qword_F07A8);
      v8 = sub_91EEC();
      v9 = sub_9228C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 67109120;
        *(v10 + 4) = v1 & 1;
      }

      v11 = *(v0 + 32);

      v15 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 192) = v13;
      *v13 = v0;
      v13[1] = sub_76278;
      v14 = *(v0 + 40);

      return v15();
    }
  }
}

uint64_t sub_768F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = sub_70674(&qword_EF6C8, &qword_A5EE8);
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = sub_70674(&qword_EF6D0, &qword_A5EF0);
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_76A40, 0, 0);
}

uint64_t sub_76A40()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = [*(v0 + 16) isBookStoreAllowed];
  sub_77370();
  (*(v4 + 16))(v2, v1, v3);
  sub_7F3D0(&qword_EF6D8, &qword_EF6D0, &qword_A5EF0);
  sub_921EC();
  *(v0 + 137) = v6;
  sub_7F3D0(&qword_EF6E0, &qword_EF6C8, &qword_A5EE8);
  v7 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_76BC8;
  v9 = *(v0 + 72);
  v10 = *(v0 + 56);

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 136, 0, 0);
}

uint64_t sub_76BC8()
{
  v2 = *(*v1 + 112);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_76CD8, 0, 0);
  }

  return result;
}

uint64_t sub_76CD8()
{
  v1 = *(v0 + 136);
  *(v0 + 138) = v1;
  if (v1 == 2)
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 104);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    (*(v5 + 8))(v3, v4);

    v6 = *(v0 + 8);

    return v6();
  }

  else if (*(v0 + 137) == (v1 & 1))
  {
    sub_7F3D0(&qword_EF6E0, &qword_EF6C8, &qword_A5EE8);
    v16 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v17 = swift_task_alloc();
    *(v0 + 112) = v17;
    *v17 = v0;
    v17[1] = sub_76BC8;
    v18 = *(v0 + 72);
    v19 = *(v0 + 56);

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 136, 0, 0);
  }

  else
  {
    if (qword_EF270 != -1)
    {
      swift_once();
    }

    v8 = sub_91F0C();
    sub_70710(v8, qword_F07A8);
    v9 = sub_91EEC();
    v10 = sub_9228C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v1 & 1;
    }

    v12 = *(v0 + 24);

    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 120) = v14;
    *v14 = v0;
    v14[1] = sub_7700C;
    v15 = *(v0 + 32);

    return v20();
  }
}

uint64_t sub_7700C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 40);
  v4 = *v0;

  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v1 + 128) = v6;
  *v6 = v4;
  v6[1] = sub_771BC;
  v7 = *(v1 + 48);

  return v9();
}

uint64_t sub_771BC()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *v0;

  *(v1 + 137) = *(v1 + 138) & 1;
  sub_7F3D0(&qword_EF6E0, &qword_EF6C8, &qword_A5EE8);
  v4 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v5 = swift_task_alloc();
  *(v1 + 112) = v5;
  *v5 = v3;
  v5[1] = sub_76BC8;
  v6 = *(v1 + 72);
  v7 = *(v1 + 56);

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1 + 136, 0, 0);
}

uint64_t sub_77370()
{
  v1 = sub_70674(&qword_EF6E8, &qword_A5EF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21 - v4;
  v6 = sub_70674(&qword_EF6F0, &qword_A5F00);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  (*(v2 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v1);
  sub_9219C();
  (*(v2 + 8))(v5, v1);
  v14 = v7[2];
  v14(v11, v13, v6);
  v15 = type metadata accessor for RestrictionsObserver();
  v16 = objc_allocWithZone(v15);
  v14(&v16[OBJC_IVAR____TtC9BKLibraryP33_58FC24B0C0DE226ACFC9DF3CB0D6712B20RestrictionsObserver_continuation], v11, v6);
  v21.receiver = v16;
  v21.super_class = v15;
  v17 = objc_msgSendSuper2(&v21, "init");
  v18 = v7[1];
  v18(v11, v6);
  [v0 addObserver:v17];
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  *(v19 + 24) = v17;
  swift_unknownObjectRetain();
  sub_921AC();
  return (v18)(v13, v6);
}

uint64_t sub_7762C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v7 = sub_70674(&qword_EF680, &qword_A5E98);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_70674(&qword_EF688, &qword_A5EA0);
  v6[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = sub_70674(&qword_EF690, &qword_A5EA8);
  v6[13] = v12;
  v13 = *(v12 - 8);
  v6[14] = v13;
  v14 = *(v13 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v15 = swift_task_alloc();
  v6[17] = v15;
  *v15 = v6;
  v15[1] = sub_777E0;

  return sub_78430();
}

uint64_t sub_777E0(char a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 169) = a1;

  return _swift_task_switch(sub_778E0, 0, 0);
}

uint64_t sub_778E0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v18 = *(v0 + 88);
  v19 = *(v0 + 80);
  v6 = *(v0 + 24);
  v7 = [objc_opt_self() defaultCenter];
  v8 = [v6 backingBag];
  v9 = sub_922AC();
  swift_unknownObjectRelease();

  *(v0 + 16) = v9;
  sub_9229C();
  sub_7EE6C();
  sub_923DC();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = &unk_A5EC0;
  *(v11 + 24) = v10;
  v12 = v6;
  sub_70674(&qword_EF6A0, &qword_A5ED8);
  sub_7F3D0(&qword_EF6A8, &qword_EF688, &qword_A5EA0);
  sub_923DC();
  (*(v4 + 16))(v1, v2, v3);
  sub_7F3D0(&qword_EF6B0, &qword_EF690, &qword_A5EA8);
  sub_921EC();
  *(v0 + 170) = *(v0 + 169);
  sub_7F3D0(&qword_EF6B8, &qword_EF680, &qword_A5E98);
  v13 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = sub_77BD0;
  v15 = *(v0 + 80);
  v16 = *(v0 + 64);

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 168, 0, 0);
}

uint64_t sub_77BD0()
{
  v2 = *(*v1 + 144);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_77CE0, 0, 0);
  }

  return result;
}

uint64_t sub_77CE0()
{
  v29 = v0;
  v1 = *(v0 + 168);
  *(v0 + 171) = v1;
  if (v1 == 3)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    (*(v5 + 8))(v3, v4);

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 170);
  if (v9 == 2)
  {
    if (v1 == 2)
    {
      *(v0 + 170) = 2;
LABEL_27:
      sub_7F3D0(&qword_EF6B8, &qword_EF680, &qword_A5E98);
      v23 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v24 = swift_task_alloc();
      *(v0 + 144) = v24;
      *v24 = v0;
      v24[1] = sub_77BD0;
      v25 = *(v0 + 80);
      v26 = *(v0 + 64);

      return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 168, 0, 0);
    }
  }

  else if (v1 != 2 && ((v9 ^ v1) & 1) == 0)
  {
    goto LABEL_27;
  }

  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v10 = sub_91F0C();
  sub_70710(v10, qword_F07A8);
  v11 = sub_91EEC();
  v12 = sub_9228C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    v15 = 1702195828;
    if ((v1 & 1) == 0)
    {
      v15 = 0x65736C6166;
    }

    v16 = 0xE500000000000000;
    if (v1)
    {
      v16 = 0xE400000000000000;
    }

    if (v1 == 2)
    {
      v17 = 7104878;
    }

    else
    {
      v17 = v15;
    }

    if (v1 == 2)
    {
      v18 = 0xE300000000000000;
    }

    else
    {
      v18 = v16;
    }

    v19 = sub_88FBC(v17, v18, &v28);

    *(v13 + 4) = v19;
    sub_7E6F0(v14);
  }

  v27 = (*(v0 + 32) + **(v0 + 32));
  v20 = *(*(v0 + 32) + 4);
  v21 = swift_task_alloc();
  *(v0 + 152) = v21;
  *v21 = v0;
  v21[1] = sub_780D0;
  v22 = *(v0 + 40);

  return v27();
}

uint64_t sub_780D0()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 48);
  v4 = *v0;

  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v1 + 160) = v6;
  *v6 = v4;
  v6[1] = sub_78280;
  v7 = *(v1 + 56);

  return v9();
}

uint64_t sub_78280()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *v0;

  *(v1 + 170) = *(v1 + 171);
  sub_7F3D0(&qword_EF6B8, &qword_EF680, &qword_A5E98);
  v4 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v5 = swift_task_alloc();
  *(v1 + 144) = v5;
  *v5 = v3;
  v5[1] = sub_77BD0;
  v6 = *(v1 + 80);
  v7 = *(v1 + 64);

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1 + 168, 0, 0);
}

uint64_t sub_78450()
{
  v1 = [*(v0 + 160) isBooksStoreEnabled];
  *(v0 + 168) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_78588;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_70674(&qword_EF6C0, &qword_A5EE0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_7CBA4;
  *(v0 + 104) = &unk_D7DB8;
  *(v0 + 112) = v2;
  [v1 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_78588()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_78720;
  }

  else
  {
    v3 = sub_78698;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_78698()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = [v2 BOOLValue];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_78720()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v4 = sub_91F0C();
  sub_70710(v4, qword_F07A8);
  swift_errorRetain();
  v5 = sub_91EEC();
  v6 = sub_9227C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    sub_7F1C4(v10, &unk_EF670, &unk_A5DF0);
  }

  else
  {
    v12 = v0[22];
  }

  v13 = v0[1];

  return v13(2);
}

uint64_t sub_788D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_78964;

  return sub_78430();
}

uint64_t sub_78964(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_78A60(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_78B4C;

  return v7();
}

uint64_t sub_78B4C(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_78C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_70674(&qword_EF620, &qword_A5C38);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_7E7E0(a3, v27 - v11);
  v13 = sub_9218C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_7F1C4(v12, &qword_EF620, &qword_A5C38);
  }

  else
  {
    sub_9217C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_9212C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_9207C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t PriceTracker.deinit()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);

    sub_921DC();
  }

  sub_78FCC(v0 + 112);
  v2 = *(v0 + 128);
  swift_unknownObjectRelease();

  v3 = *(v0 + 152);
  swift_unknownObjectRelease();
  v4 = *(v0 + 168);
  swift_unknownObjectRelease();
  v5 = *(v0 + 184);
  swift_unknownObjectRelease();
  v6 = *(v0 + 192);
  swift_unknownObjectRelease();

  v7 = *(v0 + 224);

  v8 = *(v0 + 240);
  sub_78FF4(*(v0 + 232));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_78FF4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t PriceTracker.__deallocating_deinit()
{
  PriceTracker.deinit();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_79030(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 232);
  v4 = *(v2 + 240);
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;

  return sub_78FF4(v3);
}

uint64_t sub_7907C()
{
  v1[7] = v0;
  v2 = sub_70674(&qword_EF610, &qword_A5880);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_79148, v0, 0);
}

uint64_t sub_79148()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v4 + 168);
  v6 = *(v4 + 176);
  swift_getObjectType();
  sub_91F4C();
  sub_6F1B4(*(v4 + 136), v0 + 16);
  (*(v2 + 8))(v1, v3);
  sub_79358(v0 + 16);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_79240;
  v9 = *(v0 + 56);

  return sub_793FC(v7);
}

uint64_t sub_79240(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_79358(uint64_t a1)
{
  sub_793B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_793B4()
{
  if (!qword_EF618)
  {
    v0 = _s13PriceTrackingVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_EF618);
    }
  }
}

uint64_t sub_793FC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return _swift_task_switch(sub_79420, v1, 0);
}

uint64_t sub_79420()
{
  if (*(v0 + 32) != 1)
  {
    if (qword_EF270 != -1)
    {
      swift_once();
    }

    v7 = sub_91F0C();
    sub_70710(v7, qword_F07A8);
    v4 = sub_91EEC();
    v5 = sub_9228C();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_25;
    }

    v6 = "[PriceTracker] Disabled by remote config";
    goto LABEL_24;
  }

  v1 = *(*(v0 + 16) + 184);
  v2 = [v1 activeStoreAccount];
  if (!v2)
  {
    if (qword_EF270 != -1)
    {
      swift_once();
    }

    v8 = sub_91F0C();
    sub_70710(v8, qword_F07A8);
    v4 = sub_91EEC();
    v5 = sub_9228C();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_25;
    }

    v6 = "[PriceTracker] Not signed in to store account";
    goto LABEL_24;
  }

  if ([v1 isStoreAccountManagedAppleID])
  {
    if (qword_EF270 != -1)
    {
      swift_once();
    }

    v3 = sub_91F0C();
    sub_70710(v3, qword_F07A8);
    v4 = sub_91EEC();
    v5 = sub_9228C();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_25;
    }

    v6 = "[PriceTracker] Store account is managed";
LABEL_24:
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v4, v5, v6, v13, 2u);

LABEL_25:

    v14 = *(v0 + 8);

    return v14(0);
  }

  if (![*(*(v0 + 16) + 192) isBookStoreAllowed])
  {
    if (qword_EF270 != -1)
    {
      swift_once();
    }

    v12 = sub_91F0C();
    sub_70710(v12, qword_F07A8);
    v4 = sub_91EEC();
    v5 = sub_9228C();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_25;
    }

    v6 = "[PriceTracker] Book Store is restricted";
    goto LABEL_24;
  }

  v9 = *(*(v0 + 16) + 200);
  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_79768;

  return sub_78430();
}

uint64_t sub_79768(char a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 33) = a1;

  return _swift_task_switch(sub_79880, v3, 0);
}

uint64_t sub_79880()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    if (*(v2 + 208))
    {
LABEL_3:
      v3 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    *(v2 + 208) = v1 & 1;
    if (v1)
    {
      goto LABEL_3;
    }
  }

  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v4 = sub_91F0C();
  sub_70710(v4, qword_F07A8);
  v5 = sub_91EEC();
  v6 = sub_9228C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "[PriceTracker] Book Store is disabled by bag", v7, 2u);
  }

  v3 = 0;
LABEL_10:
  v8 = *(v0 + 8);

  return v8(v3);
}

uint64_t sub_799C4(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 200) = a1;
  return _swift_task_switch(sub_799E8, v1, 0);
}

uint64_t sub_799E8()
{
  if ((*(v0 + 200) & 1) == 0)
  {
    if (qword_EF270 != -1)
    {
      swift_once();
    }

    v1 = sub_91F0C();
    sub_70710(v1, qword_F07A8);
    v2 = sub_91EEC();
    v3 = sub_9228C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "[PriceTracker] [updateConfiguration] WARNING: Running without active background task", v4, 2u);
    }
  }

  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v5 = sub_91F0C();
  *(v0 + 152) = sub_70710(v5, qword_F07A8);
  v6 = sub_91EEC();
  v7 = sub_9228C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[PriceTracker] [updateConfiguration] Collecting...", v8, 2u);
  }

  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_79BF0;
  v10 = *(v0 + 144);

  return sub_7A30C();
}

uint64_t sub_79BF0(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_79D08, v3, 0);
}

uint64_t sub_79D08()
{
  v1 = v0[19];
  v2 = sub_91EEC();
  v3 = sub_9228C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "[PriceTracker] [updateConfiguration] Sending...", v4, 2u);
  }

  v5 = v0[21];
  v6 = v0[18];

  v7 = *(v6 + 128);
  if (v5)
  {
    v8 = v0[21];
    v9 = v8;
  }

  else
  {
    v9 = [objc_opt_self() disabledConfig];
    v8 = 0;
  }

  v0[22] = v8;
  v0[23] = v9;
  v0[2] = v0;
  v0[3] = sub_79EDC;
  v10 = swift_continuation_init();
  v0[17] = sub_70674(&qword_EF668, &qword_A5DE8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_7A260;
  v0[13] = &unk_D7CA0;
  v0[14] = v10;
  v11 = v8;
  [v7 priceTrackingSetConfiguration:v9 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_79EDC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  v4 = *(v1 + 144);
  if (v3)
  {
    v5 = sub_7A0EC;
  }

  else
  {
    v5 = sub_79FFC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_79FFC()
{
  v1 = *(v0 + 152);

  v2 = sub_91EEC();
  v3 = sub_9228C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v2, v3, "[PriceTracker] [updateConfiguration] Completed", v6, 2u);

    v7 = v2;
  }

  else
  {
    v7 = *(v0 + 176);
    v5 = v2;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_7A0EC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[19];
  swift_willThrow();

  swift_errorRetain();
  v5 = sub_91EEC();
  v6 = sub_9227C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v5, v6, "[PriceTracker] [updateConfiguration] Failed: %@", v9, 0xCu);
    sub_7F1C4(v10, &unk_EF670, &unk_A5DF0);
  }

  else
  {
    v12 = v0[24];
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_7A260(uint64_t a1, void *a2)
{
  v3 = sub_7E79C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_70674(&qword_EF940, &qword_A61E0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_7A30C()
{
  v1[12] = v0;
  v2 = sub_70674(&qword_EF610, &qword_A5880);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_7A3D8, v0, 0);
}

uint64_t sub_7A3D8()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v4 + 168);
  v6 = *(v4 + 176);
  swift_getObjectType();
  sub_91F4C();
  sub_6F1B4(*(v4 + 136), v0 + 16);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *v8 = v0;
  v8[1] = sub_7A4C8;
  v9 = *(v0 + 96);

  return sub_793FC(v7);
}

uint64_t sub_7A4C8(char a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_7A5E0, v3, 0);
}

uint64_t sub_7A5E0()
{
  if (*(v0 + 176) != 1)
  {
    sub_79358(v0 + 16);
    if (qword_EF270 != -1)
    {
      swift_once();
    }

    v9 = sub_91F0C();
    sub_70710(v9, qword_F07A8);
    v10 = sub_91EEC();
    v11 = sub_9228C();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_15;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "[PriceTracker] [configuration] Tracking is not enabled";
    goto LABEL_14;
  }

  v1 = *(v0 + 96);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v3 = *(*(v0 + 96) + 120);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v17 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *v7 = v0;
    v7[1] = sub_7A8BC;

    return v17(201, ObjectType, v3);
  }

  sub_79358(v0 + 16);
  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v14 = sub_91F0C();
  sub_70710(v14, qword_F07A8);
  v10 = sub_91EEC();
  v11 = sub_9227C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "[PriceTracker] [configuration] Missing library manager";
LABEL_14:
    _os_log_impl(&dword_0, v10, v11, v13, v12, 2u);
  }

LABEL_15:

  v15 = *(v0 + 120);

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_7A8BC(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_7A9D4, v3, 0);
}

uint64_t sub_7A9D4()
{
  v44 = v1;
  v3 = v1[19];
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v42 = v1[19];
    }

    v5 = sub_923EC();
  }

  else
  {
    v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  if (v5 <= 200)
  {
    v10 = v1[19];
    goto LABEL_45;
  }

  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v6 = sub_91F0C();
  sub_70710(v6, qword_F07A8);
  v7 = sub_91EEC();
  v8 = sub_9228C();
  if (os_log_type_enabled(v7, v8))
  {
    v0 = swift_slowAlloc();
    *v0 = 134217984;
    *(v0 + 4) = 200;
    _os_log_impl(&dword_0, v7, v8, "[PriceTracker] [configuration] Tracked item count exceeds limit %ld", v0, 0xCu);
  }

  if (v4)
  {
    v11 = v1[19];
    if (v3 < 0)
    {
      v7 = v1[19];
    }

    else
    {
      v7 = (v3 & 0xFFFFFFFFFFFFFF8);
    }

    v8 = sub_923EC();
    if (sub_923EC() < 0)
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v8 >= 0xC8)
    {
      v12 = 200;
    }

    else
    {
      v12 = v8;
    }

    if (v8 >= 0)
    {
      v2 = v12;
    }

    else
    {
      v2 = 200;
    }

    v9 = sub_923EC();
  }

  else
  {
    v9 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v9 >= 0xC8)
    {
      v2 = 200;
    }

    else
    {
      v2 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    }
  }

  if (v9 < v2)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v13 = v1[19];
  if ((v3 & 0xC000000000000001) == 0)
  {

    if (!v4)
    {
      goto LABEL_30;
    }

LABEL_33:
    v17 = v1[19];
    if (v3 < 0)
    {
      v18 = v1[19];
    }

    v7 = sub_923FC();
    v0 = v19;
    v8 = v20;
    v2 = v21;

    if ((v2 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_37:
    sub_9248C();
    swift_unknownObjectRetain_n();
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
      swift_unknownObjectRelease();
      v24 = &_swiftEmptyArrayStorage;
    }

    v25 = v24[2];

    if (!__OFSUB__(v2 >> 1, v8))
    {
      if (v25 == (v2 >> 1) - v8)
      {
        v10 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (!v10)
        {
          swift_unknownObjectRelease();
          v10 = &_swiftEmptyArrayStorage;
        }

        v26 = v1[19];
        goto LABEL_44;
      }

      goto LABEL_58;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    swift_unknownObjectRelease_n();
    goto LABEL_36;
  }

  if (v2)
  {
    sub_7E338(0, &unk_EF650, BDSDistributedPriceTrackingConfigItemID_ptr);
    v14 = 0;
    do
    {
      v15 = v1[19];
      v16 = v14 + 1;
      sub_9234C(v14);
      v14 = v16;
    }

    while (v2 != v16);
  }

  if (v4)
  {
    goto LABEL_33;
  }

LABEL_30:
  v8 = 0;
  v7 = (v3 & 0xFFFFFFFFFFFFFF8);
  v0 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v2 = (2 * v2) | 1;
  if (v2)
  {
    goto LABEL_37;
  }

LABEL_36:
  v22 = v1[19];
  sub_7E570(v7, v0, v8, v2);
  v10 = v23;
  swift_unknownObjectRelease();
LABEL_44:

LABEL_45:
  v1[20] = v10;
  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v27 = sub_91F0C();
  sub_70710(v27, qword_F07A8);
  v28 = sub_91EEC();
  v29 = sub_9228C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43 = v31;
    *v30 = 136315138;
    sub_7E338(0, &unk_EF650, BDSDistributedPriceTrackingConfigItemID_ptr);

    v32 = sub_920FC();
    v34 = v33;

    v35 = sub_88FBC(v32, v34, &v43);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_0, v28, v29, "[PriceTracker] [configuration] Tracked items: %s", v30, 0xCu);
    sub_7E6F0(v31);
  }

  v36 = v1[12];
  v38 = *(v36 + 152);
  v37 = *(v36 + 160);
  ObjectType = swift_getObjectType();
  v40 = swift_task_alloc();
  v1[21] = v40;
  *v40 = v1;
  v40[1] = sub_7AEB4;

  return sub_87D8C(ObjectType, v37);
}

uint64_t sub_7AEB4(char a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 177) = a1;

  return _swift_task_switch(sub_7AFCC, v3, 0);
}

uint64_t sub_7AFCC()
{
  v1 = *(v0 + 177);
  v2 = *(v0 + 160);
  v3 = *(v0 + 32);

  sub_7E2D4(v0 + 16, v0 + 56);
  v4.super.super.isa = sub_9220C().super.super.isa;
  v5 = *(v0 + 40);
  v6.super.super.isa = sub_9220C().super.super.isa;
  if (v1 == 1)
  {
    sub_8B874();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 136);
  v11 = *(v0 + 24);
  v12 = *(v0 + 48);
  isa = sub_9224C().super.super.isa;
  v14 = objc_allocWithZone(BDSDistributedPriceTrackingConfig);
  sub_7E338(0, &unk_EF650, BDSDistributedPriceTrackingConfigItemID_ptr);
  v15 = sub_920DC().super.isa;

  sub_7E338(0, &qword_EF448, BDSDistributedPriceTrackingConfigUpdateScheduleStep_ptr);
  v16 = sub_920DC().super.isa;
  sub_79358(v0 + 16);
  v17 = [v14 initWithItemIDs:v15 updateScheduleSteps:v16 dealAbsoluteThreshold:v4.super.super.isa dealRelativeThreshold:v6.super.super.isa notification:v8 cardLimit:isa];

  swift_unknownObjectRelease();
  sub_79358(v0 + 16);

  v18 = *(v0 + 120);

  v19 = *(v0 + 8);

  return v19(v17);
}

uint64_t sub_7B180()
{
  v1[7] = v0;
  v2 = sub_70674(&qword_EF610, &qword_A5880);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_7B24C, v0, 0);
}

uint64_t sub_7B24C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v4 + 168);
  v6 = *(v4 + 176);
  swift_getObjectType();
  sub_91F4C();
  sub_6F1B4(*(v4 + 136), v0 + 16);
  (*(v2 + 8))(v1, v3);
  sub_79358(v0 + 16);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_7B344;
  v9 = *(v0 + 56);

  return sub_793FC(v7);
}

uint64_t sub_7B344(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_7B45C, v3, 0);
}

uint64_t sub_7B45C()
{
  if (*(v0 + 96) == 1 && (v1 = [*(*(v0 + 56) + 144) stringForKey:BDSPriceTrackerCardList]) != 0)
  {
    v2 = v1;
    v3 = sub_9202C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = *(v0 + 80);

  v7 = *(v0 + 8);

  return v7(v3, v5);
}

uint64_t sub_7B544()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_7B5F4;

  return sub_87D8C(ObjectType, v2);
}

uint64_t sub_7B5F4(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_7B6F0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return _swift_task_switch(sub_7B714, v1, 0);
}

uint64_t sub_7B714()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_7B7CC;
  v6 = *(v0 + 32);

  return sub_88120(v6, ObjectType, v2);
}

uint64_t sub_7B7CC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_7B8C0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 136);
  v4 = sub_91FFC();
  LOBYTE(v3) = [v3 BOOLForKey:v4];

  *a2 = v3;
}

void sub_7B930(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 136);
  v4 = sub_91FFC();
  [v3 setBool:v2 forKey:v4];
}

id sub_7B9AC()
{
  v1 = *(v0 + 136);
  v2 = sub_91FFC();
  v3 = [v1 BOOLForKey:v2];

  return v3;
}

uint64_t sub_7BA2C()
{
  v1 = *(*(v0 + 16) + 136);
  v2 = sub_91FFC();
  [v1 setBool:1 forKey:v2];

  v3 = *(v0 + 8);

  return v3();
}

void PriceTracker.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void PriceTracker.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void *PriceTracker.__allocating_init(libraryManager:bdsPriceTracker:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return PriceTracker.init(libraryManager:bdsPriceTracker:)(a1, a2);
}

void *PriceTracker.init(libraryManager:bdsPriceTracker:)(void *a1, uint64_t a2)
{
  v66 = a2;
  v67 = a1;
  v2 = sub_70674(&qword_EF620, &qword_A5C38);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v64 = &v56 - v4;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = [objc_opt_self() books];
  v7 = [v6 userDefaults];

  sub_91FDC();
  v8 = sub_91FCC();
  sub_91F3C();
  v9 = sub_91F2C();
  v10 = [objc_opt_self() sharedProvider];
  v11 = [objc_opt_self() sharedInstance];
  v12 = [objc_opt_self() nonisolatedSharedApplication];
  v13 = [objc_opt_self() defaultBag];
  v14 = type metadata accessor for PriceTracker();
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v15 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 208) = 1;
  *(v15 + 216) = 0u;
  *(v15 + 232) = 0u;
  *(v15 + 120) = &off_D8030;
  swift_unknownObjectWeakAssign();
  *(v15 + 128) = v66;
  *(v15 + 136) = v5;
  *(v15 + 144) = v7;
  *(v15 + 152) = v8;
  v65 = v8;
  *(v15 + 160) = &protocol witness table for BCDefaultCloudGlobalMetadataManager;
  *(v15 + 168) = v9;
  *(v15 + 176) = &protocol witness table for RCDataContainer;
  *(v15 + 184) = v10;
  v59 = v11;
  *(v15 + 192) = v11;
  *(v15 + 200) = v13;
  v74.receiver = v15;
  v74.super_class = v14;
  swift_unknownObjectRetain();
  v63 = v5;
  v61 = v7;

  v62 = v9;
  v60 = v10;
  swift_unknownObjectRetain();
  v58 = v13;
  v16 = objc_msgSendSuper2(&v74, "init");
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0xD00000000000002FLL;
  v18[3] = 0x80000000000B4D80;
  v18[4] = v12;
  v18[5] = &unk_A5C48;
  v18[6] = v17;
  v56 = objc_allocWithZone(BUCoalescingCallBlock);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_7D100;
  *(v19 + 24) = v18;
  v72 = sub_7D498;
  v73 = v19;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_7D4C0;
  v71 = &unk_D7B00;
  v20 = _Block_copy(&aBlock);
  v21 = v16;
  v22 = v12;
  v23 = v21;
  v24 = v22;
  swift_retain_n();

  v25 = sub_91FFC();
  v72 = sub_70C64;
  v73 = 0;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_7D56C;
  v71 = &unk_D7B28;
  v26 = _Block_copy(&aBlock);

  v27 = [v56 initWithNotifyBlock:v20 notifyTimeout:20 blockDescription:v25 notifyTimeoutBlock:v26];
  _Block_release(v26);

  _Block_release(v20);
  [v27 setCoalescingDelay:10.0];

  v28 = v23[27];
  v23[27] = v27;

  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = 0xD000000000000027;
  v30[3] = 0x80000000000B4DE0;
  v30[4] = v24;
  v30[5] = &unk_A5C58;
  v30[6] = v29;
  v31 = objc_allocWithZone(BUCoalescingCallBlock);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_7F640;
  *(v32 + 24) = v30;
  v72 = sub_7F5F8;
  v73 = v32;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_7D4C0;
  v71 = &unk_D7BA0;
  v33 = _Block_copy(&aBlock);
  v34 = v24;
  v56 = v34;
  swift_retain_n();

  v35 = sub_91FFC();
  v72 = sub_70FBC;
  v73 = 0;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_7D56C;
  v71 = &unk_D7BC8;
  v36 = _Block_copy(&aBlock);

  v37 = [v31 initWithNotifyBlock:v33 notifyTimeout:5 blockDescription:v35 notifyTimeoutBlock:v36];
  _Block_release(v36);

  _Block_release(v33);
  [v37 setCoalescingDelay:0.25];

  v38 = swift_allocObject();
  v57 = v23;
  swift_weakInit();

  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  v40 = sub_9218C();
  v41 = v64;
  (*(*(v40 - 8) + 56))(v64, 1, 1, v40);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v43 = v61;
  v44 = v62;
  v42[4] = v61;
  v42[5] = &unk_A5C78;
  v45 = v65;
  v42[6] = v39;
  v42[7] = v45;
  v42[8] = &unk_A5C68;
  v42[9] = v38;
  v46 = v59;
  v47 = v60;
  v42[10] = v44;
  v42[11] = v47;
  v48 = v58;
  v42[12] = v46;
  v42[13] = v48;
  v61 = v43;

  v62 = v44;
  v49 = v47;
  swift_unknownObjectRetain();
  v50 = v48;
  swift_retain_n();
  v51 = v37;

  v52 = sub_78C5C(0, 0, v41, &unk_A5C90, v42);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_7F1C4(v41, &qword_EF620, &qword_A5C38);

  v53 = v57;
  v54 = v57[28];
  v57[28] = v52;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v53;
}

uint64_t sub_7C4FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7C534(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_7F628;

  return sub_70A40(a1, v1);
}

Swift::Void __swiftcall PriceTracker.objc_setNeedsConfigurationUpdate()()
{
  v1 = sub_70674(&qword_EF620, &qword_A5C38);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v7 - v3;
  v5 = sub_9218C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_7C7A8(0, 0, v4, &unk_A5CA0, v6);
}

uint64_t sub_7C73C()
{
  [*(*(v0 + 16) + 216) signal];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_70674(&qword_EF620, &qword_A5C38);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_7E7E0(a3, v27 - v11);
  v13 = sub_9218C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_7F1C4(v12, &qword_EF620, &qword_A5C38);
  }

  else
  {
    sub_9217C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_9212C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_9207C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_7F1C4(a3, &qword_EF620, &qword_A5C38);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_7F1C4(a3, &qword_EF620, &qword_A5C38);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_7CBA4(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_7E79C((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    sub_70674(&qword_EF940, &qword_A61E0);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_7CCA4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_7CDA0;

    return sub_730AC();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_7CDA0(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_7CEB8(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_78B4C;

  return v7();
}

uint64_t sub_7CFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_70674(&qword_EF620, &qword_A5C38);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v22 - v16;
  v18 = sub_9218C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = a6;
  v19[8] = a7;
  v19[9] = a1;
  v19[10] = a2;

  v20 = a5;

  sub_7C7A8(0, 0, v17, &unk_A5FD8, v19);
}

uint64_t sub_7D104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_7D138, 0, 0);
}

uint64_t sub_7D138()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_9233C(24);

  v14._countAndFlagsBits = v4;
  v14._object = v3;
  sub_9209C(v14);
  v5 = sub_91FFC();

  v6 = [v2 beginBackgroundTaskWithName:v5 expirationHandler:0];
  v0[9] = v6;

  v0[10] = UIBackgroundTaskInvalid;
  v7 = v6 != UIBackgroundTaskInvalid;
  v12 = (v1 + *v1);
  v8 = v1[1];
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_7D2D8;
  v10 = v0[6];

  return v12(v7);
}

uint64_t sub_7D2D8()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_7D3D4, 0, 0);
}

uint64_t sub_7D3D4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  (*(v0 + 56))();
  if (v2 != v1)
  {
    [*(v0 + 32) endBackgroundTask:*(v0 + 72)];
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_7D460()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7D498()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_7D4C0(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_7F488, v5);
}

uint64_t sub_7D554(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7D56C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_9202C();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_7D5D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_7D670;

  return sub_70C70(a1, v1);
}

uint64_t sub_7D670()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_7D768()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_7D7C0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_7F628;

  return sub_710B8(v0);
}

uint64_t sub_7D850()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_7F628;

  return sub_71210(v2);
}

uint64_t sub_7D8E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 96);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_7D95C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_7F628;

  return sub_71298(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_7DA6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7F628;

  return sub_7C71C(a1, v4, v5, v6);
}

uint64_t dispatch thunk of PriceTracker.featureEnabled.getter()
{
  v2 = *(&stru_108.reserved2 + (swift_isaMask & *v0));
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_7F630;

  return v6();
}

uint64_t dispatch thunk of PriceTracker.cardListString.getter()
{
  v2 = *(&stru_158.size + (swift_isaMask & *v0));
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_7DDCC;

  return v6();
}

uint64_t sub_7DDCC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of PriceTracker.notificationsEnabled.getter()
{
  v2 = *(&stru_158.offset + (swift_isaMask & *v0));
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_7F630;

  return v6();
}

uint64_t dispatch thunk of PriceTracker.setNotificationsEnabled(_:)(uint64_t a1)
{
  v4 = *(&stru_158.reloff + (swift_isaMask & *v1));
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7F628;

  return v8(a1);
}

uint64_t dispatch thunk of PriceTracker.didShowOptInAlert()()
{
  v2 = *&stru_1A8.segname[(swift_isaMask & *v0) - 8];
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_7F628;

  return v6();
}

uint64_t sub_7E294()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7E2D4(uint64_t a1, uint64_t a2)
{
  sub_793B4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7E338(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_7E380(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7E478;

  return v7(a1);
}

uint64_t sub_7E478()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_7E570(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_7E338(0, &unk_EF650, BDSDistributedPriceTrackingConfigItemID_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_70674(&qword_EF660, &qword_A5DE0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_7E664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_7E684, 0, 0);
}

uint64_t sub_7E684()
{
  v1 = *(v0 + 16);
  *v1 = [*(v0 + 24) isStoreAccountManagedAppleID];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_7E6F0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_7E740(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_7E79C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_7E7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_70674(&qword_EF620, &qword_A5C38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7E850(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7F628;

  return sub_7E380(a1, v5);
}

uint64_t sub_7E908(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7F628;

  return sub_719CC(a1, v4, v5, v6);
}

uint64_t sub_7E9BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7D670;

  return sub_723E4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_7EA84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7F628;

  return sub_73474(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_7EB4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7F628;

  return sub_74554(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_7EC14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7F628;

  return sub_753E0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_7ECDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7F628;

  return sub_768F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_7EDA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7F628;

  return sub_7762C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_7EE6C()
{
  result = qword_EF698;
  if (!qword_EF698)
  {
    sub_9229C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF698);
  }

  return result;
}

uint64_t sub_7EEC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7EEFC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_78964;

  return sub_788D4();
}

uint64_t sub_7EF90(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_7F628;

  return sub_78A60(a1, a2, v7);
}

uint64_t sub_7F058(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_7F0B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7F108(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7F628;

  return sub_7E664(a1, a2, v6);
}

uint64_t sub_7F1C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_70674(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_7F224()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7F278()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_78964;

  return sub_7CC84(v0);
}

uint64_t sub_7F308(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_7F628;

  return sub_7CEB8(a1, a2, v7);
}

uint64_t sub_7F3D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_7F058(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7F418(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_7F42C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_7F440(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_7F450()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7F498()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_7F4F0(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_7F628;

  return sub_7D104(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_7F644()
{
  v0 = sub_91F0C();
  sub_7F6C4(v0, qword_F07A8);
  sub_70710(v0, qword_F07A8);
  return sub_91EFC();
}

uint64_t *sub_7F6C4(uint64_t a1, uint64_t *a2)
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

uint64_t CollectionControllerMemberManagingAddRequest.storeID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKCollectionControllerMemberManagingAddRequest_storeID);
  v2 = *(v0 + OBJC_IVAR___BKCollectionControllerMemberManagingAddRequest_storeID + 8);

  return v1;
}

uint64_t CollectionControllerMemberManagingAddRequest.collectionID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKCollectionControllerMemberManagingAddRequest_collectionID);
  v2 = *(v0 + OBJC_IVAR___BKCollectionControllerMemberManagingAddRequest_collectionID + 8);

  return v1;
}

id CollectionControllerMemberManagingAddRequest.__allocating_init(storeID:collectionID:forceToTop:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___BKCollectionControllerMemberManagingAddRequest_storeID];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v11[OBJC_IVAR___BKCollectionControllerMemberManagingAddRequest_collectionID];
  *v13 = a3;
  v13[1] = a4;
  v11[OBJC_IVAR___BKCollectionControllerMemberManagingAddRequest_forceToTop] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, "init");
}

id CollectionControllerMemberManagingAddRequest.init(storeID:collectionID:forceToTop:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR___BKCollectionControllerMemberManagingAddRequest_storeID];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v5[OBJC_IVAR___BKCollectionControllerMemberManagingAddRequest_collectionID];
  *v13 = a3;
  v13[1] = a4;
  v5[OBJC_IVAR___BKCollectionControllerMemberManagingAddRequest_forceToTop] = a5;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

id CollectionControllerMemberManagingAddRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t CollectionControllerMemberManagingRemoveRequest.storeID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKCollectionControllerMemberManagingRemoveRequest_storeID);
  v2 = *(v0 + OBJC_IVAR___BKCollectionControllerMemberManagingRemoveRequest_storeID + 8);

  return v1;
}

uint64_t CollectionControllerMemberManagingRemoveRequest.collectionID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKCollectionControllerMemberManagingRemoveRequest_collectionID);
  v2 = *(v0 + OBJC_IVAR___BKCollectionControllerMemberManagingRemoveRequest_collectionID + 8);

  return v1;
}

id CollectionControllerMemberManagingRemoveRequest.__allocating_init(storeID:collectionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___BKCollectionControllerMemberManagingRemoveRequest_storeID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR___BKCollectionControllerMemberManagingRemoveRequest_collectionID];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, "init");
}

id CollectionControllerMemberManagingRemoveRequest.init(storeID:collectionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___BKCollectionControllerMemberManagingRemoveRequest_storeID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR___BKCollectionControllerMemberManagingRemoveRequest_collectionID];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t CollectionControllerMemberManagingModifyResponse.assetID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKCollectionControllerMemberManagingModifyResponse_assetID);
  v2 = *(v0 + OBJC_IVAR___BKCollectionControllerMemberManagingModifyResponse_assetID + 8);

  return v1;
}

id sub_7FD54(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_91FFC();

  return v6;
}

uint64_t CollectionControllerMemberManagingModifyResponse.collectionTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKCollectionControllerMemberManagingModifyResponse_collectionTitle);
  v2 = *(v0 + OBJC_IVAR___BKCollectionControllerMemberManagingModifyResponse_collectionTitle + 8);

  return v1;
}

id CollectionControllerMemberManagingModifyResponse.__allocating_init(assetID:assetContentType:collectionTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___BKCollectionControllerMemberManagingModifyResponse_assetID];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR___BKCollectionControllerMemberManagingModifyResponse_assetContentType] = a3;
  v13 = &v11[OBJC_IVAR___BKCollectionControllerMemberManagingModifyResponse_collectionTitle];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, "init");
}

id CollectionControllerMemberManagingModifyResponse.init(assetID:assetContentType:collectionTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR___BKCollectionControllerMemberManagingModifyResponse_assetID];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v5[OBJC_IVAR___BKCollectionControllerMemberManagingModifyResponse_assetContentType] = a3;
  v13 = &v5[OBJC_IVAR___BKCollectionControllerMemberManagingModifyResponse_collectionTitle];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

id _s9BKLibrary44CollectionControllerMemberManagingAddRequestCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_800FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + *a3 + 8);

  v7 = *(a1 + *a4 + 8);
}

uint64_t sub_801A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_801E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_80200(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t BKLibraryManager.libraryData(using:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_80264, 0, 0);
}

uint64_t sub_80264()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_91E4C();
  *v3 = v0;
  v3[1] = sub_80364;
  v5 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000013, 0x80000000000B5290, sub_806D0, v1, v4);
}

uint64_t sub_80364()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_804A0, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_804A0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_80504(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_70674(&unk_EF928, &qword_A6158);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_82468;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_80D24;
  aBlock[3] = &unk_D8008;
  v13 = _Block_copy(aBlock);
  v14 = a3;

  [a2 performBackgroundReadOnlyBlock:v13];
  _Block_release(v13);
}

void sub_806D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_91E4C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = sub_91FFC();
  v8 = [v6 initWithEntityName:v7];

  v9 = [objc_opt_self() predicateForLocalOrDownloadingOrImportingLibraryAssets];
  [v8 setPredicate:v9];

  [v8 setReturnsDistinctResults:1];
  sub_7E338(0, &qword_EF920, &off_D4AA8);
  v12[0] = &_swiftEmptyArrayStorage;
  v10 = sub_922CC();
  v11 = a3;
  sub_82510(v10, v11, v12);

  sub_91E3C();
  sub_70674(&unk_EF928, &qword_A6158);
  sub_9214C();
}

uint64_t sub_808EC(void **a1, void *a2, size_t *a3)
{
  v41 = a3;
  v39 = a2;
  v42 = sub_91E8C();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v42);
  v40 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v43 = v36 - v8;
  v44 = sub_91E2C();
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v44);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v36 - v14;
  v16 = *a1;
  v17 = [v16 permanentOrTemporaryAssetID];
  v18 = v17;
  v19 = v17;
  if (!v17)
  {
    sub_9202C();
    v19 = sub_91FFC();

    sub_9202C();
    v18 = sub_91FFC();
  }

  v20 = sub_9202C();
  v37 = v21;
  v38 = v20;
  v22 = v17;
  [v16 contentType];
  v36[3] = [v16 isSample];
  sub_91ECC();
  sub_91EBC();
  v23 = v39;
  v24 = [v39 contentPrivateIDForContentID:v19];

  if (v24)
  {
    sub_9202C();
  }

  v25 = [v23 contentUserIDForContentID:v18];

  if (v25)
  {
    sub_9202C();
  }

  (*(v9 + 16))(v13, v15, v44);
  v26 = v43;
  sub_91E7C();
  v27 = v40;
  v28 = v42;
  (*(v4 + 16))(v40, v26, v42);
  v29 = v41;
  v30 = *v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v29 = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_850C4(0, v30[2] + 1, 1, v30);
    *v29 = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  if (v33 >= v32 >> 1)
  {
    *v29 = sub_850C4(v32 > 1, v33 + 1, 1, v30);
  }

  (*(v4 + 8))(v43, v28);
  (*(v9 + 8))(v15, v44);
  v34 = *v29;
  *(v34 + 16) = v33 + 1;
  return (*(v4 + 32))(v34 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33, v27, v28);
}

void sub_80D24(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t BKLibraryManager.collectionSummaryData()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_80DAC, 0, 0);
}

uint64_t sub_80DAC()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_91EAC();
  *v4 = v0;
  v4[1] = sub_80EA8;
  v6 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000017, 0x80000000000B52B0, sub_81208, v2, v5);
}

uint64_t sub_80EA8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_80FE4, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_80FE4()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void sub_81048(uint64_t a1, void *a2)
{
  v4 = sub_70674(&qword_EF900, &unk_A6140);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_822C0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_80D24;
  aBlock[3] = &unk_D7FB8;
  v11 = _Block_copy(aBlock);
  v12 = a2;

  [v12 performBackgroundReadOnlyBlock:v11];
  _Block_release(v11);
}

uint64_t sub_81210(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_91EAC();
  v111 = *(v6 - 8);
  v7 = *(v111 + 64);
  v8 = __chkstk_darwin(v6);
  v110 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (&v99 - v10);
  v132 = sub_91E6C();
  v128 = *(v132 - 8);
  v12 = *(v128 + 64);
  v13 = __chkstk_darwin(v132);
  v131 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v130 = &v99 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v99 - v18;
  __chkstk_darwin(v17);
  v117 = &v99 - v20;
  v125 = sub_91F0C();
  v21 = *(v125 - 8);
  v22 = v21[8];
  __chkstk_darwin(v125);
  v129 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a2 collectionProvider];
  v133 = 0;
  v25 = [v24 defaultCollectionsInManagedObjectContext:a1 withError:&v133];
  v26 = v133;
  if (v25)
  {
    v27 = v25;
    v109 = a3;
    sub_70674(&qword_EF908, &qword_A6150);
    v28 = sub_920EC();
    v29 = v26;

    v133 = 0;
    v116 = a1;
    v30 = [v24 userCollectionsInManagedObjectContext:a1 withError:&v133];
    v31 = v133;
    if (v30)
    {
      v32 = v30;
      v127 = sub_920EC();
      v33 = v31;

      v35 = v28;
      v118 = v19;
      if (v28 >> 62)
      {
        goto LABEL_74;
      }

      v36 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
LABEL_5:
      v107 = v11;
      v108 = v6;
      v106 = v24;
      v121 = v35;
      if (v36)
      {
        v37 = 0;
        v126 = v35 & 0xC000000000000001;
        v119 = v35 & 0xFFFFFFFFFFFFFF8;
        v120 = 0;
        v124 = kBKCollectionDefaultAll;
        v115 = kBKCollectionDefaultIDFinished;
        v101 = "yManagedObjectContext8";
        v105 = "libraryData(using:)";
        v114 = (v128 + 16);
        v113 = v128 + 8;
        v123 = v21 + 1;
        v112 = v128 + 32;
        v11 = &_swiftEmptyArrayStorage;
        *&v34 = 136315394;
        v100 = v34;
        *&v34 = 136315650;
        v99 = v34;
        v122 = v36;
        while (1)
        {
          if (v126)
          {
            v38 = sub_9235C();
            v24 = (v37 + 1);
            if (__OFADD__(v37, 1))
            {
              goto LABEL_70;
            }
          }

          else
          {
            if (v37 >= *(v119 + 16))
            {
              goto LABEL_73;
            }

            v38 = *(v35 + 8 * v37 + 32);
            swift_unknownObjectRetain();
            v24 = (v37 + 1);
            if (__OFADD__(v37, 1))
            {
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              v36 = sub_923EC();
              goto LABEL_5;
            }
          }

          v39 = [v38 collectionID];
          if (v39)
          {
            v21 = v39;
            v40 = sub_9202C();
            v42 = v41;
            if (!BALog())
            {
              goto LABEL_78;
            }

            sub_91F1C();
            if (sub_9202C() == v40 && v43 == v42)
            {
            }

            else
            {
              v6 = sub_9247C();
              v35 = v121;

              if ((v6 & 1) == 0)
              {
                if (sub_9202C() == v40 && v44 == v42)
                {

                  goto LABEL_27;
                }

                v45 = sub_9247C();

                if (v45)
                {

LABEL_27:
                  v46 = v120;
                  v47 = objc_allocWithZone(NSFetchRequest);
                  v48 = sub_91FFC();
                  v49 = [v47 initWithEntityName:v48];

                  v50 = [objc_opt_self() predicateFor_All_Finished_LibraryAssets];
                  [v49 setPredicate:v50];

                  v51 = v49;
                  sub_7E338(0, &qword_EF920, &off_D4AA8);
                  sub_922BC();
                  if (v46)
                  {
                    swift_errorRetain();
                    v52 = sub_91EEC();
                    v53 = sub_9227C();

                    if (os_log_type_enabled(v52, v53))
                    {
                      v54 = swift_slowAlloc();
                      v120 = v46;
                      v55 = v54;
                      v56 = swift_slowAlloc();
                      v102 = v52;
                      v104 = v51;
                      v57 = v56;
                      v103 = swift_slowAlloc();
                      v133 = v103;
                      *v55 = v100;
                      *(v55 + 4) = sub_88FBC(0xD000000000000017, v105 | 0x8000000000000000, &v133);
                      *(v55 + 12) = 2112;
                      swift_errorRetain();
                      v58 = _swift_stdlib_bridgeErrorToNSError();
                      *(v55 + 14) = v58;
                      *v57 = v58;
                      v59 = v53;
                      v60 = v102;
                      _os_log_impl(&dword_0, v102, v59, "%s: error finding finished collection members: %@", v55, 0x16u);
                      sub_82358(v57);

                      sub_7E6F0(v103);

                      goto LABEL_40;
                    }

LABEL_39:

                    goto LABEL_40;
                  }

                  v120 = 0;

LABEL_41:
                  v73 = v117;
                }

                else
                {
                  v61 = objc_allocWithZone(NSFetchRequest);
                  v62 = sub_91FFC();
                  v63 = [v61 initWithEntityName:v62];

                  v64 = [objc_opt_self() predicateForCollectionMembersInCollectionID:v21 hideUnownedItems:0];
                  [v63 setPredicate:v64];

                  sub_7E338(0, &unk_EF910, off_D4AA0);
                  v104 = v63;
                  v65 = v120;
                  v66 = sub_922CC();
                  if (v65)
                  {

                    swift_errorRetain();
                    v67 = sub_91EEC();
                    v68 = sub_9227C();

                    if (!os_log_type_enabled(v67, v68))
                    {

                      goto LABEL_39;
                    }

                    v69 = swift_slowAlloc();
                    v70 = swift_slowAlloc();
                    LODWORD(v103) = v68;
                    v71 = v70;
                    v120 = swift_slowAlloc();
                    v133 = v120;
                    *v69 = v99;
                    *(v69 + 4) = sub_88FBC(0xD000000000000017, v105 | 0x8000000000000000, &v133);
                    *(v69 + 12) = 2080;
                    *(v69 + 14) = sub_88FBC(v40, v42, &v133);
                    *(v69 + 22) = 2112;
                    swift_errorRetain();
                    v72 = _swift_stdlib_bridgeErrorToNSError();
                    *(v69 + 24) = v72;
                    *v71 = v72;
                    _os_log_impl(&dword_0, v67, v103, "%s: error finding %s members: %@", v69, 0x20u);
                    sub_82358(v71);

                    swift_arrayDestroy();

LABEL_40:
                    v120 = 0;
                    goto LABEL_41;
                  }

                  v120 = 0;
                  v73 = v117;
                  if (v66 >> 62)
                  {
                    sub_923EC();
                  }

                  else
                  {
                    v74 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
                  }
                }

                sub_91E5C();

                (*v114)(v118, v73, v132);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v11 = sub_850EC(0, v11[2] + 1, 1, v11);
                }

                v36 = v122;
                v6 = v11[2];
                v75 = v11[3];
                v21 = (v6 + 1);
                if (v6 >= v75 >> 1)
                {
                  v11 = sub_850EC(v75 > 1, v6 + 1, 1, v11);
                }

                swift_unknownObjectRelease();
                v76 = v128;
                v77 = v73;
                v78 = v132;
                (*(v128 + 8))(v77, v132);
                (*v123)(v129, v125);
                v11[2] = v21;
                (*(v76 + 32))(v11 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v6, v118, v78);
                v35 = v121;
                goto LABEL_8;
              }
            }

            (*v123)(v129, v125);
            swift_unknownObjectRelease();

            v36 = v122;
          }

          else
          {
            swift_unknownObjectRelease();
          }

LABEL_8:
          ++v37;
          if (v24 == v36)
          {
            goto LABEL_51;
          }
        }
      }

      v11 = &_swiftEmptyArrayStorage;
LABEL_51:
      v6 = v127;
      if (v127 >> 62)
      {
        v129 = sub_923EC();
      }

      else
      {
        v129 = *(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8));
      }

      if (v129)
      {
        v35 = 0;
        v125 = v6 & 0xFFFFFFFFFFFFFF8;
        v126 = v6 & 0xC000000000000001;
        v24 = (v128 + 16);
        v124 = v128 + 8;
        while (1)
        {
          if (v126)
          {
            v84 = sub_9235C();
            v21 = (v35 + 1);
            if (__OFADD__(v35, 1))
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v35 >= *(v125 + 16))
            {
              goto LABEL_72;
            }

            v84 = *(v6 + 8 * v35 + 32);
            swift_unknownObjectRetain();
            v21 = (v35 + 1);
            if (__OFADD__(v35, 1))
            {
              goto LABEL_71;
            }
          }

          v85 = [v84 members];
          if (!v85)
          {
            break;
          }

          v86 = v85;
          v87 = sub_9221C();

          v88 = *(v87 + 16);

          v89 = [v84 collectionID];
          if (!v89)
          {
            goto LABEL_77;
          }

          v90 = v89;
          sub_9202C();

          v91 = v130;
          sub_91E5C();

          (*v24)(v131, v91, v132);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_850EC(0, v11[2] + 1, 1, v11);
          }

          v93 = v11[2];
          v92 = v11[3];
          if (v93 >= v92 >> 1)
          {
            v11 = sub_850EC(v92 > 1, v93 + 1, 1, v11);
          }

          swift_unknownObjectRelease();
          v94 = v128;
          v95 = v132;
          (*(v128 + 8))(v130, v132);
          v11[2] = v93 + 1;
          (*(v94 + 32))(v11 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v93, v131, v95);
          ++v35;
          v6 = v127;
          if (v21 == v129)
          {
            goto LABEL_69;
          }
        }

        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:

        __break(1u);
      }

LABEL_69:

      swift_bridgeObjectRelease_n();
      v96 = v107;
      sub_91E9C();
      v97 = v111;
      v98 = v108;
      (*(v111 + 16))(v110, v96, v108);
      sub_70674(&qword_EF900, &unk_A6140);
      sub_9214C();
      swift_unknownObjectRelease();
      return (*(v97 + 8))(v96, v98);
    }

    else
    {
      v82 = v133;
      v83 = sub_91E0C();

      swift_willThrow();
      v133 = v83;
      sub_70674(&qword_EF900, &unk_A6140);
      sub_9213C();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v79 = v133;
    v80 = sub_91E0C();

    swift_willThrow();
    v133 = v80;
    sub_70674(&qword_EF900, &unk_A6140);
    sub_9213C();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_821F0()
{
  v1 = sub_70674(&qword_EF900, &unk_A6140);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_822C0(uint64_t a1)
{
  v3 = *(sub_70674(&qword_EF900, &unk_A6140) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_81210(a1, v4, v5);
}

uint64_t sub_82340(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_82358(uint64_t a1)
{
  v2 = sub_70674(&unk_EF670, &unk_A5DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_823C0()
{
  v1 = sub_70674(&unk_EF928, &qword_A6158);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_82468(uint64_t a1)
{
  v3 = *(sub_70674(&unk_EF928, &qword_A6158) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_806D8(a1, v1 + v4, v5);
}

void sub_82510(unint64_t a1, void *a2, size_t *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_923EC())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_9235C();
      }

      else
      {
        if (v7 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_808EC(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_82618(uint64_t a1)
{
  *(v2 + 296) = v1;
  v4 = swift_task_alloc();
  *(v2 + 304) = v4;
  *v4 = v2;
  v4[1] = sub_826B0;

  return sub_82FAC(a1);
}

uint64_t sub_826B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v7 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v5 = sub_82E1C;
  }

  else
  {
    v5 = sub_827C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_827C4()
{
  v1 = *(v0 + 312);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = &_swiftEmptyArrayStorage;
  sub_84D64(*(v1 + 16));
  v2 = *(v1 + 16);
  *(v0 + 328) = v2;
  if (!v2)
  {
    goto LABEL_16;
  }

  *(v0 + 384) = 0;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 336) = 0u;
  v3 = *(v0 + 312);
  if (!*(v3 + 16))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    v22 = *(v0 + 312);

    v23 = *(v0 + 288);
    sub_83B20((v0 + 256));
    v24 = *(v0 + 8);

    return v24(v23);
  }

  v4 = 0;
  while (1)
  {
    v5 = v3 + 120 * v4;
    v6 = *(v5 + 96);
    v7 = *(v5 + 112);
    v8 = *(v5 + 128);
    *(v0 + 127) = *(v5 + 143);
    v9 = *(v5 + 32);
    v10 = *(v5 + 48);
    v11 = *(v5 + 80);
    *(v0 + 48) = *(v5 + 64);
    *(v0 + 64) = v11;
    *(v0 + 16) = v9;
    *(v0 + 32) = v10;
    *(v0 + 96) = v7;
    *(v0 + 112) = v8;
    *(v0 + 80) = v6;
    v12 = *(v0 + 130);
    v13 = *(v0 + 128);
    result = sub_852F0(v0 + 16, v0 + 136);
    if (v13 == 1)
    {
      break;
    }

    if (v13 != 6)
    {
      v18 = *(v0 + 336);
      v17 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_24;
      }

      *(v0 + 256) = v17;
      v16 = *(v0 + 344);
      goto LABEL_13;
    }

    if ((v12 & 1) == 0)
    {
      v25 = 1;
      goto LABEL_20;
    }

LABEL_9:
    v15 = *(v0 + 344);
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    *(v0 + 264) = v16;
    v17 = *(v0 + 336);
LABEL_13:
    v19 = *(v0 + 360);
    v20 = *(v0 + 328);
    v21 = *(v0 + 384) + 1;
    sub_85328(v0 + 16);
    if (v21 == v20)
    {
      goto LABEL_16;
    }

    v4 = *(v0 + 384) + 1;
    *(v0 + 352) = 0;
    *(v0 + 360) = v19;
    *(v0 + 336) = v17;
    *(v0 + 344) = v16;
    *(v0 + 376) = 0;
    *(v0 + 384) = v4;
    *(v0 + 368) = v4;
    v3 = *(v0 + 312);
    if (v4 >= *(v3 + 16))
    {
      goto LABEL_15;
    }
  }

  if (v12)
  {
    goto LABEL_9;
  }

  v25 = 0;
LABEL_20:
  *(v0 + 131) = v25;
  v26 = swift_task_alloc();
  *(v0 + 392) = v26;
  *v26 = v0;
  v26[1] = sub_829FC;
  v27 = *(v0 + 296);

  return sub_83CAC(v0 + 16);
}

uint64_t sub_829FC(char a1)
{
  v2 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 132) = a1;

  return _swift_task_switch(sub_82AFC, 0, 0);
}

uint64_t sub_82AFC()
{
  if (*(v1 + 132))
  {
    v3 = *(v1 + 360);
    v4 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      *(v1 + 272) = v4;
      v2 = *(v1 + 376);
      v5 = *(v1 + 344);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (*(v1 + 384) == *(v1 + 368) - *(v1 + 352) + 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = *(v1 + 376) + 1;
  v6 = *(v1 + 131);
  v8 = *(v1 + 48);
  v7 = *(v1 + 56);
  *(v1 + 280) = v2;
  v9 = objc_allocWithZone(BDSDistributedPriceTrackingConfigItemID);
  v10 = sub_91FFC();
  v11 = [v9 initWithAdamID:v10 isAudiobook:v6];

  if (v11)
  {
    v0 = v11;
    sub_920CC();
    if (*(&dword_10 + (*(v1 + 288) & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (*(v1 + 288) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
LABEL_7:
      v12 = *(v1 + 328);
      v13 = *(v1 + 384) + 1;
      sub_9211C();

      result = sub_85328(v1 + 16);
      if (v13 != v12)
      {
        v15 = *(v1 + 384) + 1;
        goto LABEL_13;
      }

LABEL_26:
      v32 = *(v1 + 312);

      v33 = *(v1 + 288);
      sub_83B20((v1 + 256));
      v34 = *(v1 + 8);

      return v34(v33);
    }

LABEL_12:
    sub_9210C();
    goto LABEL_7;
  }

  v4 = *(v1 + 360);
  v5 = *(v1 + 344);
LABEL_21:
  v28 = *(v1 + 336);
  while (1)
  {
    v30 = *(v1 + 328);
    v31 = *(v1 + 384) + 1;
    result = sub_85328(v1 + 16);
    if (v31 == v30)
    {
      goto LABEL_26;
    }

    v15 = *(v1 + 384) + 1;
    *(v1 + 360) = v4;
    *(v1 + 368) = v15;
    *(v1 + 344) = v5;
    *(v1 + 352) = v2;
    *(v1 + 336) = v28;
LABEL_13:
    *(v1 + 376) = v2;
    *(v1 + 384) = v15;
    v16 = *(v1 + 312);
    if (v15 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v17 = v16 + 120 * v15;
    v18 = *(v17 + 96);
    v19 = *(v17 + 112);
    v20 = *(v17 + 128);
    *(v1 + 127) = *(v17 + 143);
    v21 = *(v17 + 32);
    v22 = *(v17 + 48);
    v23 = *(v17 + 80);
    *(v1 + 48) = *(v17 + 64);
    *(v1 + 64) = v23;
    *(v1 + 16) = v21;
    *(v1 + 32) = v22;
    *(v1 + 96) = v19;
    *(v1 + 112) = v20;
    *(v1 + 80) = v18;
    v24 = *(v1 + 130);
    v25 = *(v1 + 128);
    result = sub_852F0(v1 + 16, v1 + 136);
    if (v25 == 1)
    {
      break;
    }

    if (v25 == 6)
    {
      if ((v24 & 1) == 0)
      {
        v26 = 1;
        goto LABEL_30;
      }

LABEL_19:
      v27 = *(v1 + 344);
      v5 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        *(v1 + 264) = v5;
        v4 = *(v1 + 360);
        goto LABEL_21;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    v29 = *(v1 + 336);
    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_35;
    }

    *(v1 + 256) = v28;
    v4 = *(v1 + 360);
    v5 = *(v1 + 344);
  }

  if (v24)
  {
    goto LABEL_19;
  }

  v26 = 0;
LABEL_30:
  *(v1 + 131) = v26;
  v35 = swift_task_alloc();
  *(v1 + 392) = v35;
  *v35 = v1;
  v35[1] = sub_829FC;
  v36 = *(v1 + 296);

  return sub_83CAC(v1 + 16);
}

uint64_t sub_82E1C()
{
  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = sub_91F0C();
  sub_70710(v2, qword_F07A8);
  swift_errorRetain();
  v3 = sub_91EEC();
  v4 = sub_9227C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 320);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v3, v4, "[WTR-members] Failed to get snapshots for price-tracking assets: %@", v6, 0xCu);
    sub_82358(v7);
  }

  v9 = *(v0 + 320);

  v10 = *(v0 + 8);

  return v10(&_swiftEmptyArrayStorage);
}

uint64_t sub_82FAC(uint64_t a1)
{
  *(v2 + 888) = v1;
  *(v2 + 880) = a1;
  return _swift_task_switch(sub_82FD0, 0, 0);
}

uint64_t sub_82FD0()
{
  v1 = v0[111];
  v2 = v0[110];
  v0[2] = v0;
  v0[7] = v0 + 108;
  v0[3] = sub_83100;
  v3 = swift_continuation_init();
  v0[107] = sub_70674(&qword_EF948, &qword_A61E8);
  v0[104] = v3;
  v0[100] = _NSConcreteStackBlock;
  v0[101] = 1107296256;
  v0[102] = sub_840B4;
  v0[103] = &unk_D8068;
  [v1 storeAssetIDsOfWantToReadWithLimit:v2 completion:v0 + 100];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_83100()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 896) = v2;
  if (v2)
  {
    v3 = sub_83A44;
  }

  else
  {
    v3 = sub_83210;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_83210()
{
  v1 = v0[111];
  v2 = v0[108];
  v0[113] = v2;
  v3 = swift_task_alloc();
  v0[114] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[115] = v5;
  v6 = sub_70674(&qword_EF950, &qword_A61F0);
  *v5 = v0;
  v5[1] = sub_83320;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 109, 0, 0, 0xD00000000000001BLL, 0x80000000000B5380, sub_853C4, v3, v6);
}

uint64_t sub_83320()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v7 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v4 = sub_83AB0;
  }

  else
  {
    v5 = *(v2 + 912);

    v4 = sub_8343C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8343C()
{
  v90 = v0;
  v1 = *(v0 + 872);
  v2 = sub_86F08(&_swiftEmptyArrayStorage);
  v87 = *(v1 + 2);
  if (v87)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (1)
    {
      if (v3 >= *(v1 + 2))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        swift_once();
        goto LABEL_34;
      }

      v18 = *v4;
      v19 = *(v4 + 1);
      v20 = *(v4 + 3);
      *(v0 + 112) = *(v4 + 2);
      *(v0 + 128) = v20;
      v21 = *(v4 + 4);
      v22 = *(v4 + 5);
      v23 = *(v4 + 6);
      *(v0 + 191) = *(v4 + 111);
      *(v0 + 160) = v22;
      *(v0 + 176) = v23;
      *(v0 + 144) = v21;
      *(v0 + 80) = v18;
      *(v0 + 96) = v19;
      v25 = *(v0 + 112);
      v24 = *(v0 + 120);
      sub_852F0(v0 + 80, v0 + 200);
      sub_852F0(v0 + 80, v0 + 320);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v2;
      v27 = sub_8C000(v25, v24);
      v29 = v2[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_46;
      }

      v33 = v28;
      if (v2[3] < v32)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v45 = v27;
      sub_86D20();
      v27 = v45;
      if (v33)
      {
LABEL_3:
        v2 = v89;
        v5 = v89[7] + 120 * v27;
        v6 = *(v5 + 48);
        v8 = *v5;
        v7 = *(v5 + 16);
        *(v0 + 472) = *(v5 + 32);
        *(v0 + 488) = v6;
        *(v0 + 440) = v8;
        *(v0 + 456) = v7;
        v10 = *(v5 + 80);
        v9 = *(v5 + 96);
        v11 = *(v5 + 64);
        *(v0 + 551) = *(v5 + 111);
        *(v0 + 520) = v10;
        *(v0 + 536) = v9;
        *(v0 + 504) = v11;
        v12 = *(v0 + 80);
        v13 = *(v0 + 96);
        v14 = *(v0 + 128);
        *(v5 + 32) = *(v0 + 112);
        *(v5 + 48) = v14;
        *v5 = v12;
        *(v5 + 16) = v13;
        v15 = *(v0 + 144);
        v16 = *(v0 + 160);
        v17 = *(v0 + 176);
        *(v5 + 111) = *(v0 + 191);
        *(v5 + 80) = v16;
        *(v5 + 96) = v17;
        *(v5 + 64) = v15;
        sub_85328(v0 + 440);
        sub_85328(v0 + 80);
        goto LABEL_4;
      }

LABEL_12:
      v2 = v89;
      v89[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v2[6] + 16 * v27);
      *v35 = v25;
      v35[1] = v24;
      v36 = v2[7] + 120 * v27;
      v37 = *(v0 + 191);
      v39 = *(v0 + 160);
      v38 = *(v0 + 176);
      *(v36 + 64) = *(v0 + 144);
      *(v36 + 80) = v39;
      *(v36 + 96) = v38;
      *(v36 + 111) = v37;
      v41 = *(v0 + 112);
      v40 = *(v0 + 128);
      v42 = *(v0 + 96);
      *v36 = *(v0 + 80);
      *(v36 + 16) = v42;
      *(v36 + 32) = v41;
      *(v36 + 48) = v40;

      sub_85328(v0 + 80);
      v43 = v2[2];
      v31 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v31)
      {
        goto LABEL_47;
      }

      v2[2] = v44;
LABEL_4:
      ++v3;
      v4 += 120;
      if (v87 == v3)
      {
        goto LABEL_16;
      }
    }

    sub_8699C(v32, isUniquelyReferenced_nonNull_native);
    v27 = sub_8C000(v25, v24);
    if ((v33 & 1) != (v34 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
    }

LABEL_11:
    if (v33)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_16:
  v46 = *(v0 + 904);

  v47 = *(v46 + 16);
  if (!v47)
  {
    v1 = &_swiftEmptyArrayStorage;
    goto LABEL_31;
  }

  v48 = 0;
  v49 = (v0 + 560);
  v50 = -v47;
  v51 = *(v0 + 904) + 40;
  v1 = &_swiftEmptyArrayStorage;
  v88 = v51;
  do
  {
    v52 = (v51 + 16 * v48++);
    while (1)
    {
      if ((v48 - 1) >= *(v46 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v2[2])
      {
        break;
      }

LABEL_19:
      ++v48;
      v52 += 2;
      if (v50 + v48 == 1)
      {
        goto LABEL_31;
      }
    }

    v54 = *(v52 - 1);
    v53 = *v52;

    v55 = sub_8C000(v54, v53);
    if ((v56 & 1) == 0)
    {

      goto LABEL_19;
    }

    v57 = v2[7] + 120 * v55;
    v58 = *v57;
    v59 = *(v57 + 16);
    v60 = *(v57 + 48);
    *(v0 + 592) = *(v57 + 32);
    *(v0 + 608) = v60;
    *v49 = v58;
    *(v0 + 576) = v59;
    v61 = *(v57 + 64);
    v62 = *(v57 + 80);
    v63 = *(v57 + 96);
    *(v0 + 671) = *(v57 + 111);
    *(v0 + 640) = v62;
    *(v0 + 656) = v63;
    *(v0 + 624) = v61;
    sub_852F0(v0 + 560, v0 + 680);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_84FA4(0, *(v1 + 2) + 1, 1, v1);
    }

    v51 = v88;
    v65 = *(v1 + 2);
    v64 = *(v1 + 3);
    if (v65 >= v64 >> 1)
    {
      v1 = sub_84FA4((v64 > 1), v65 + 1, 1, v1);
    }

    *(v1 + 2) = v65 + 1;
    v66 = &v1[120 * v65];
    v67 = *v49;
    v68 = *(v0 + 576);
    v69 = *(v0 + 608);
    *(v66 + 4) = *(v0 + 592);
    *(v66 + 5) = v69;
    *(v66 + 2) = v67;
    *(v66 + 3) = v68;
    v70 = *(v0 + 624);
    v71 = *(v0 + 640);
    v72 = *(v0 + 656);
    *(v66 + 143) = *(v0 + 671);
    *(v66 + 7) = v71;
    *(v66 + 8) = v72;
    *(v66 + 6) = v70;
  }

  while (v50 + v48);
LABEL_31:
  v73 = *(v0 + 904);
  if (*(v46 + 16) == *(v1 + 2))
  {
    v74 = *(v0 + 904);

    goto LABEL_41;
  }

  v75 = sub_870BC(*(v0 + 904));

  sub_8585C(v2, v75);

  if (qword_EF270 != -1)
  {
    goto LABEL_48;
  }

LABEL_34:
  v76 = sub_91F0C();
  sub_70710(v76, qword_F07A8);

  v77 = sub_91EEC();
  v78 = sub_9227C();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v89 = v80;
    *v79 = 136315138;
    v81 = sub_9222C();
    v83 = v82;

    v84 = sub_88FBC(v81, v83, &v89);

    *(v79 + 4) = v84;
    _os_log_impl(&dword_0, v77, v78, "[WTR-members] Missing snapshots for store IDs %s", v79, 0xCu);
    sub_7E6F0(v80);
  }

  else
  {
  }

LABEL_41:
  v85 = *(v0 + 8);

  return v85(v1);
}

uint64_t sub_83A44()
{
  v1 = *(v0 + 896);
  swift_willThrow();
  v2 = *(v0 + 896);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_83AB0()
{
  v1 = v0[114];
  v2 = v0[113];

  v3 = v0[116];
  v4 = v0[1];

  return v4();
}

void sub_83B20(uint64_t *a1)
{
  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v2 = sub_91F0C();
  sub_70710(v2, qword_F07A8);
  oslog = sub_91EEC();
  v3 = sub_9228C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    swift_beginAccess();
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v10 = sub_84E00();
    v12 = sub_88FBC(v10, v11, &v14);

    *(v4 + 4) = v12;
    _os_log_impl(&dword_0, oslog, v3, "[WTR-members] stats -> %{public}s", v4, 0xCu);
    sub_7E6F0(v5);
  }

  else
  {
  }
}

uint64_t sub_83CAC(uint64_t a1)
{
  *(v2 + 64) = v1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_83D44;

  return sub_84740(a1);
}

uint64_t sub_83D44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_84040;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_83E70;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_83E70()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = [*(v0 + 80) familyID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_9202C();
      v6 = v5;

      *(v0 + 16) = v4;
      *(v0 + 24) = v6;
      v7 = sub_9246C();
      sub_85358(v0 + 16);
    }

    else
    {
      v7 = 0;
    }

    v10 = [v1 purchasedDSID];
    if (v10)
    {
      v11 = v10;
      v12 = sub_9202C();
      v14 = v13;

      *(v0 + 32) = v12;
      *(v0 + 40) = v14;
      v8 = sub_9246C();
      sub_85358(v0 + 32);
    }

    else
    {
      v8 = 0;
    }

    v15 = [v1 downloadedDSID];
    if (v15)
    {
      v16 = v15;
      v17 = sub_9202C();
      v19 = v18;

      *(v0 + 48) = v17;
      *(v0 + 56) = v19;
      v9 = sub_9246C();
      sub_85358(v0 + 48);
    }

    else
    {
      v9 = 0;
    }

    v20 = *(v0 + 80);
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = 0;
  }

  v21 = [*(v0 + 64) isFamilyPurchaseWithFamilyID:v7 purchaserDSID:v8 downloaderDSID:v9];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_84040()
{
  v1 = [*(v0 + 64) isFamilyPurchaseWithFamilyID:0 purchaserDSID:0 downloaderDSID:0];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_840B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_7E79C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_70674(&qword_EF940, &qword_A61E0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_920EC();

    return _swift_continuation_throwingResume(v4);
  }
}

void sub_84190(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_70674(&unk_EF978, &qword_A6218);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  sub_84374(a3);
  isa = sub_920DC().super.isa;

  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_87260;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_846AC;
  aBlock[3] = &unk_D80B8;
  v14 = _Block_copy(aBlock);

  [a2 fetchLibraryAssetsFromStoreIDs:isa handler:v14];
  _Block_release(v14);
}

unint64_t *sub_84374(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = &_swiftEmptyArrayStorage;
    sub_853EC(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_853EC((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_876C8(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_84474(unint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_willThrow();
    swift_errorRetain();
    sub_70674(&unk_EF978, &qword_A6218);
    return sub_9213C();
  }

  if (a1)
  {
    if (a1 >> 62)
    {
LABEL_25:
      v4 = sub_923EC();
      if (v4)
      {
LABEL_6:
        v5 = 0;
        v6 = &_swiftEmptyArrayStorage;
        do
        {
          v7 = v5;
          while (1)
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v8 = sub_9235C();
              v5 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_23;
              }
            }

            else
            {
              if (v7 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_24;
              }

              v8 = *(a1 + 8 * v7 + 32);
              v5 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
LABEL_23:
                __break(1u);
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }
            }

            sub_87350(v8, v23);
            if (*(&v24 + 1))
            {
              break;
            }

            ++v7;
            if (v5 == v4)
            {
              goto LABEL_26;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_84FA4(0, *(v6 + 2) + 1, 1, v6);
          }

          v9 = *(v6 + 2);
          v10 = *(v6 + 3);
          v11 = v9 + 1;
          if (v9 >= v10 >> 1)
          {
            v14 = v6;
            v15 = *(v6 + 2);
            v16 = sub_84FA4((v10 > 1), v9 + 1, 1, v14);
            v9 = v15;
            v6 = v16;
          }

          v20 = v26;
          v21 = v27;
          *v22 = *v28;
          *&v22[15] = *&v28[15];
          v18 = v24;
          v19 = v25;
          v12 = v23[0];
          v17 = v23[1];
          *(v6 + 2) = v11;
          v13 = &v6[120 * v9];
          *(v13 + 4) = v18;
          *(v13 + 5) = v19;
          *(v13 + 3) = v17;
          *(v13 + 143) = *&v22[15];
          *(v13 + 7) = v21;
          *(v13 + 8) = *v22;
          *(v13 + 6) = v20;
          *(v13 + 2) = v12;
        }

        while (v5 != v4);
      }
    }

    else
    {
      v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (v4)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_26:
  sub_70674(&unk_EF978, &qword_A6218);
  return sub_9214C();
}

uint64_t sub_846AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_87304();
    v4 = sub_920EC();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_84740(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_84760, 0, 0);
}

uint64_t sub_84760()
{
  v1 = v0[19];
  if (v1[1])
  {
    v2 = *v1;
    v3 = sub_91FFC();
    v1 = v0[19];
  }

  else
  {
    v3 = 0;
  }

  v22 = v3;
  v0[21] = v3;
  if (v1[3])
  {
    v4 = v1[2];
    v5 = sub_91FFC();
    v1 = v0[19];
  }

  else
  {
    v5 = 0;
  }

  v21 = v5;
  v0[22] = v5;
  v6 = v1[4];
  v7 = v1[5];
  v8 = sub_91FFC();
  v0[23] = v8;
  if (v1[7])
  {
    v9 = *(v0[19] + 48);
    v10 = sub_91FFC();
  }

  else
  {
    v10 = 0;
  }

  v0[24] = v10;
  v11 = v0[19];
  if (v11[9])
  {
    v12 = v11[8];
    v13 = sub_91FFC();
    v11 = v0[19];
  }

  else
  {
    v13 = 0;
  }

  v0[25] = v13;
  if (v11[11])
  {
    v14 = v11[10];
    v15 = sub_91FFC();
    v11 = v0[19];
  }

  else
  {
    v15 = 0;
  }

  v0[26] = v15;
  if (v11[13])
  {
    v16 = v11[12];
    v17 = sub_91FFC();
  }

  else
  {
    v17 = 0;
  }

  v0[27] = v17;
  v18 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_84990;
  v19 = swift_continuation_init();
  v0[17] = sub_70674(&qword_EF938, &qword_A61D8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_84BF4;
  v0[13] = &unk_D8040;
  v0[14] = v19;
  [v18 assetAccountIdentifiersForAssetID:v22 path:v21 storeID:v8 purchasedDSID:v10 downloadedDSID:v13 familyID:v15 dataSourceID:v17 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_84990()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_84B48;
  }

  else
  {
    v3 = sub_84AA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_84AA0()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_84B48()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  swift_willThrow();

  v9 = v0[1];
  v10 = v0[28];

  return v9();
}

uint64_t sub_84BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_7E79C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_70674(&qword_EF940, &qword_A61E0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_84CD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_78964;

  return sub_82618(a1);
}

uint64_t sub_84D64(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_9236C();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_923EC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_84E00()
{
  sub_9233C(56);
  v1._countAndFlagsBits = 0x3A6465726F6E6769;
  v1._object = 0xE900000000000020;
  sub_9209C(v1);
  v2._countAndFlagsBits = sub_9245C();
  sub_9209C(v2);

  v3._countAndFlagsBits = 0x746365726964202CLL;
  v3._object = 0xEF203A64656E774FLL;
  sub_9209C(v3);
  v4._countAndFlagsBits = sub_9245C();
  sub_9209C(v4);

  v5._countAndFlagsBits = 0x796C696D6166202CLL;
  v5._object = 0xEF203A64656E774FLL;
  sub_9209C(v5);
  v6._countAndFlagsBits = sub_9245C();
  sub_9209C(v6);

  v7._countAndFlagsBits = 0x3A646E756F66202CLL;
  v7._object = 0xE900000000000020;
  sub_9209C(v7);
  v8._countAndFlagsBits = sub_9245C();
  sub_9209C(v8);

  return 0;
}

char *sub_84FA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_70674(&qword_EF960, &qword_A6200);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_85114(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_70674(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_853CC(size_t a1, int64_t a2, char a3)
{
  result = sub_8540C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_853EC(char *a1, int64_t a2, char a3)
{
  result = sub_855FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_8540C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_70674(&unk_EF9A0, &qword_A6238);
  v10 = *(sub_70674(&unk_EF520, &qword_A6240) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_70674(&unk_EF520, &qword_A6240) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_855FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_70674(&qword_EF988, &qword_A6220);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_8570C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_924CC();
  sub_9208C();
  v9 = sub_924DC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_9247C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_86488(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void *sub_8585C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
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
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
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
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    sub_924CC();

    sub_9208C();
    v24 = sub_924DC();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_9247C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_86264(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            sub_924CC();

            sub_9208C();
            v43 = sub_924DC();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_9247C() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_8602C(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_87154();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_85DCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_70674(&qword_EF958, &qword_A61F8);
  result = sub_9230C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_924CC();
      sub_9208C();
      result = sub_924DC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t *sub_8602C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
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
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_86264(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_924CC();

        sub_9208C();
        v20 = sub_924DC();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_9247C() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_86264(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_70674(&qword_EF958, &qword_A61F8);
  result = sub_9231C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    sub_924CC();

    sub_9208C();
    result = sub_924DC();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_86488(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_85DCC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_86608();
      goto LABEL_16;
    }

    sub_86764(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_924CC();
  sub_9208C();
  result = sub_924DC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_9247C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_924AC();
  __break(1u);
  return result;
}

void *sub_86608()
{
  v1 = v0;
  sub_70674(&qword_EF958, &qword_A61F8);
  v2 = *v0;
  v3 = sub_922FC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_86764(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_70674(&qword_EF958, &qword_A61F8);
  result = sub_9230C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_924CC();

      sub_9208C();
      result = sub_924DC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_8699C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_70674(&qword_EF968, &qword_A6208);
  v43 = a2;
  result = sub_9241C();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
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
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 120 * v22;
      if (v43)
      {
        v44 = *v26;
        v45 = *(v26 + 16);
        v49 = *(v26 + 32);
        v46 = *(v26 + 40);
        v47 = *(v26 + 48);
        v48 = *(v26 + 64);
        v50 = *(v26 + 80);
        v51 = *(v26 + 96);
        v52 = *(v26 + 112);
        v53 = *(v26 + 114);
      }

      else
      {
        v28 = *(v26 + 32);
        v27 = *(v26 + 48);
        v29 = *(v26 + 16);
        v55 = *v26;
        v56 = v29;
        v57 = v28;
        v31 = *(v26 + 80);
        v30 = *(v26 + 96);
        v32 = *(v26 + 64);
        *&v61[15] = *(v26 + 111);
        v60 = v31;
        *v61 = v30;
        v58 = v27;
        v59 = v32;
        v52 = *&v61[16];
        v53 = v61[18];
        v50 = v31;
        v51 = v30;
        v47 = v27;
        v48 = v32;
        v46 = *(&v57 + 1);
        v49 = v57;
        v44 = v55;
        v45 = v56;

        sub_852F0(&v55, v54);
      }

      v33 = *(v8 + 40);
      sub_924CC();
      sub_9208C();
      result = sub_924DC();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 120 * v16;
      *v18 = v44;
      *(v18 + 16) = v45;
      *(v18 + 32) = v49;
      *(v18 + 40) = v46;
      *(v18 + 48) = v47;
      *(v18 + 64) = v48;
      *(v18 + 80) = v50;
      *(v18 + 96) = v51;
      *(v18 + 112) = v52;
      *(v18 + 114) = v53;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}