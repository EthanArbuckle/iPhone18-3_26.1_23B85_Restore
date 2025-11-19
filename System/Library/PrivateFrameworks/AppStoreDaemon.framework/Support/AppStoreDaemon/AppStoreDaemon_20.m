uint64_t sub_1002288EC(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_10022886C(a1);

    if (v2)
    {
      v3 = +[NSDate date];
      v4 = [v3 dateByAddingTimeInterval:-2592000.0];

      v5 = sub_10022886C(v1);
      v1 = [v4 compare:v5] != -1;
    }

    else
    {
      return 1;
    }
  }

  return v1;
}

PurchaseHistoryItemsRequestContext *sub_1002289D8(uint64_t a1, void *a2, void *a3, int64_t a4, void *a5, void *a6, unint64_t a7)
{
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = a2;
  objc_opt_self();
  v16 = [PurchaseHistoryItemsRequestContext alloc];
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  if (v16)
  {
    v25.receiver = v16;
    v25.super_class = PurchaseHistoryItemsRequestContext;
    v16 = objc_msgSendSuper2(&v25, "init");
    if (v16)
    {
      v21 = [v17 copy];
      knownApps = v16->_knownApps;
      v16->_knownApps = v21;

      objc_storeStrong(&v16->_revision, a3);
      v16->_accountID = a4;
      objc_storeStrong(&v16->_requestingAccount, a5);
      objc_storeStrong(&v16->_clientInfo, a6);
      v16->_purchaseHistoryContext = a7;
    }
  }

  return v16;
}

id sub_100228B7C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  v42 = +[NSMutableArray array];
  if ([v4 count] != 2)
  {
    goto LABEL_40;
  }

  if (!a3)
  {
    v5 = sub_1002380D8(v4, @"os-version");
    goto LABEL_7;
  }

  if (a3 != 1)
  {
    goto LABEL_40;
  }

  v5 = sub_1002380D8(v4, @"osVersion");
  if (!sub_100238058(v4, @"osVersion"))
  {
LABEL_7:
    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_8;
  }

  v5 = &stru_100529300;
LABEL_8:
  if (![(__CFString *)v5 length])
  {

    v5 = 0;
  }

  v6 = sub_100237778(v4, @"devices");
  v41 = v4;
  if (v6 || (sub_100237778(v4, @"targets"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
  }

  else
  {
    v38 = sub_1002380D8(v4, @"device");
    v39 = v38;
    if (v38)
    {
      v51 = v38;
      v7 = [NSArray arrayWithObjects:&v51 count:1];
    }

    else
    {
      v7 = 0;
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v40 = v7;
  v8 = sub_100396CC8(v7);
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    v12 = NSComparisonPredicate_ptr;
    p_info = &OBJC_METACLASS___SQLiteSchema.info;
    v14 = &classRef_UPPManifestAsset;
    v43 = *v46;
    do
    {
      v15 = 0;
      v44 = v10;
      do
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v16 = [v12[237] arrayWithObjects:{*(*(&v45 + 1) + 8 * v15), v5, 0, v40}];
        v17 = objc_alloc((p_info + 241));
        v18 = v16;
        if (!v17)
        {
          goto LABEL_33;
        }

        v19 = v14[79];
        v49.receiver = v17;
        v49.super_class = v19;
        v20 = objc_msgSendSuper2(&v49, "init");
        if (!v20)
        {
          goto LABEL_33;
        }

        v21 = v20;
        if ([v18 count] == 1)
        {
          v22 = 0;
        }

        else
        {
          if ([v18 count] != 2)
          {
            goto LABEL_25;
          }

          v22 = 1;
        }

        *(v21 + 3) = v22;
        v23 = [v18 copy];
        v24 = *(v21 + 1);
        *(v21 + 1) = v23;

LABEL_25:
        v25 = [*(v21 + 1) count];
        v26 = *(v21 + 3);
        if (v26 == 1)
        {
          if (v25 != 2)
          {
            goto LABEL_32;
          }
        }

        else if (v26 || v25 != 1)
        {
LABEL_32:

LABEL_33:
          v21 = 0;
          goto LABEL_37;
        }

        v27 = v5;
        v28 = p_info;
        v29 = v12;
        v30 = v27;
        v31 = v8;
        v32 = [*(v21 + 1) objectAtIndexedSubscript:0];
        v33 = [v32 lowercaseString];
        v34 = [v33 isEqualToString:@"universal"];

        if (v34)
        {
          p_info = v28;
          v35 = sub_100228FDC();

          v21 = v35;
          v12 = v29;
          if (!v35)
          {
            goto LABEL_36;
          }
        }

        else
        {

          v12 = v29;
          p_info = v28;
        }

        [v42 addObject:v21];
LABEL_36:
        v8 = v31;
        v5 = v30;
        v11 = v43;
        v10 = v44;
        v14 = &classRef_UPPManifestAsset;
LABEL_37:

        v15 = v15 + 1;
      }

      while (v10 != v15);
      v10 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v10);
  }

  v4 = v41;
LABEL_40:
  v36 = [v42 copy];

  return v36;
}

id *sub_100228F7C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100229018([VariantDescriptor alloc], v2);

  return v3;
}

VariantDescriptor *sub_100228FDC()
{
  objc_opt_self();
  v0 = objc_alloc_init(VariantDescriptor);
  v0->_universal = 1;

  return v0;
}

id *sub_100229018(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = VariantDescriptor;
    a1 = objc_msgSendSuper2(&v15, "init");
    if (a1)
    {
      v4 = [v3 componentsSeparatedByString:@":"];
      if ([v4 count] == 1)
      {
        a1[3] = 0;
        v5 = v4;
      }

      else
      {
        if ([v4 count] < 2 || (objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v7 = objc_claimAutoreleasedReturnValue(), a1[3] = objc_msgSend(v7, "integerValue"), v7, a1[3] != 1))
        {
LABEL_9:
          v8 = [a1[1] count];
          v9 = a1[3];
          if (v9 == 1)
          {
            if (v8 == 2)
            {
LABEL_12:
              v10 = [a1[1] objectAtIndexedSubscript:0];
              v11 = [v10 lowercaseString];
              v12 = [v11 isEqualToString:@"universal"];

              if (!v12)
              {
LABEL_17:

                goto LABEL_18;
              }

              v13 = sub_100228FDC();
LABEL_16:

              a1 = v13;
              goto LABEL_17;
            }
          }

          else if (!v9 && v8 == 1)
          {
            goto LABEL_12;
          }

          v13 = 0;
          goto LABEL_16;
        }

        v5 = [v4 subarrayWithRange:{1, objc_msgSend(v4, "count") - 1}];
      }

      v6 = a1[1];
      a1[1] = v5;

      goto LABEL_9;
    }
  }

LABEL_18:

  return a1;
}

void *sub_1002291AC(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[1] count];
    v3 = v1[3];
    if (v3 != 1)
    {
      if (!v3 && v2 == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }

    if (v2 != 2)
    {
LABEL_12:
      v1 = 0;
      goto LABEL_13;
    }

    v4 = sub_1002292E8(v1);
    if (!v4 || v4[1] || v4[2])
    {
    }

    else
    {
      v10 = v4[3];

      if (!v10)
      {
LABEL_5:
        v1 = sub_10022936C(v1, 0, 0);
        goto LABEL_13;
      }
    }

    v5 = v1[3];
    v6 = sub_10022936C(v1, 0, 0);
    v7 = sub_1002292E8(v1);
    v8 = [OSVersion description]_0(v7);
    v1 = [NSString stringWithFormat:@"%ld:%@:%@", v5, v6, v8];
  }

LABEL_13:

  return v1;
}

id sub_1002292E8(uint64_t a1)
{
  if (a1 && (*(a1 + 16) & 1) == 0)
  {
    v2 = sub_10022936C(a1, 1uLL, 1uLL);
    if (v2)
    {
      v3 = sub_10021036C([OSVersion alloc], v2);
    }

    else
    {
      v3 = sub_100210304();
    }

    v1 = v3;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_10022936C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (*(a1 + 24) >= a3)
  {
    if ([*(a1 + 8) count] <= a2)
    {
      v4 = 0;
    }

    else
    {
      v4 = [*(a1 + 8) objectAtIndexedSubscript:a2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *sub_1002293E8(__CFString *a1)
{
  if (a1)
  {
    if (a1->data)
    {
      a1 = @"Universal";

      return a1;
    }

    a1 = sub_10022936C(a1, 0, 0);
  }

  return a1;
}

id sub_100229440(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = v2;
  v4 = objc_opt_self();
  v5 = sub_1003BBF50();
  v6 = sub_10022955C(v4, v5, v3);

  return v6;
}

id sub_1002294E0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = sub_10022955C(VariantDescriptor, v5, v4);

  return v6;
}

__CFString *sub_10022955C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (v5)
  {
    v6 = [v5 count];
    v7 = 0;
    if (v4 && v6)
    {
      v38 = v5;
      v8 = v5;
      v39 = v4;
      v9 = v4;
      objc_opt_self();
      v10 = [v9 productVariants];
      v11 = [OSVersion alloc];
      v12 = [v9 productVersion];
      v13 = sub_10021036C(v11, v12);

      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100229AE4;
      v52[3] = &unk_10051DE28;
      v53 = v10;
      v54 = v13;
      v14 = v13;
      v15 = v10;
      v16 = sub_10036FDEC(v8, v52);
      v17 = [v16 sortedArrayUsingComparator:&stru_10051DE68];

      v35 = v8;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v18 = [v9 productVariants];
      v36 = [v18 countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v36)
      {
        v19 = *v49;
        v37 = v17;
        v34 = *v49;
        do
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v49 != v19)
            {
              objc_enumerationMutation(v18);
            }

            v21 = *(*(&v48 + 1) + 8 * i);
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v22 = [v17 reverseObjectEnumerator];
            v23 = [v22 countByEnumeratingWithState:&v44 objects:v56 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v45;
              while (2)
              {
                for (j = 0; j != v24; j = j + 1)
                {
                  if (*v45 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v44 + 1) + 8 * j);
                  v28 = sub_1002293E8(v27);
                  v29 = [v28 isEqualToString:v21];

                  if (v29)
                  {
                    v7 = v27;

                    v5 = v38;
                    v4 = v39;
                    v17 = v37;
                    goto LABEL_33;
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v44 objects:v56 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            v17 = v37;
            v19 = v34;
          }

          v36 = [v18 countByEnumeratingWithState:&v48 objects:v57 count:16];
        }

        while (v36);
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v18 = v35;
      v7 = [v18 countByEnumeratingWithState:&v40 objects:v55 count:16];
      if (v7)
      {
        v30 = *v41;
        v5 = v38;
        v4 = v39;
        while (2)
        {
          for (k = 0; k != v7; k = (k + 1))
          {
            if (*v41 != v30)
            {
              objc_enumerationMutation(v18);
            }

            v32 = *(*(&v40 + 1) + 8 * k);
            if (v32 && (v32[16] & 1) != 0)
            {
              v7 = v32;
              goto LABEL_33;
            }
          }

          v7 = [v18 countByEnumeratingWithState:&v40 objects:v55 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v5 = v38;
        v4 = v39;
      }

LABEL_33:
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10022994C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3[16] == *(a1 + 16) && *(v3 + 3) == *(a1 + 24))
    {
      v5 = *(v3 + 1);
      if (v5 == *(a1 + 8))
      {
        a1 = 1;
      }

      else
      {
        a1 = [v5 isEqual:?];
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

__CFString *sub_100229AE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = sub_1002293E8(v3);
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = sub_1002292E8(v3);
    v7 = sub_10021054C(v6, *(a1 + 40));

    if (v7 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v3;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

int64_t sub_100229B7C(id a1, VariantDescriptor *a2, VariantDescriptor *a3)
{
  v4 = a3;
  v5 = sub_1002292E8(a2);
  v6 = sub_1002292E8(v4);

  v7 = sub_10021054C(v5, v6);
  return v7;
}

id sub_100229BF8(void *a1)
{
  if (a1)
  {
    CC_SHA256([a1 bytes], objc_msgSend(a1, "length"), md);
    v1 = [NSMutableString stringWithCapacity:64];
    for (i = 0; i != 32; ++i)
    {
      [v1 appendFormat:@"%02x", md[i]];
    }

    v3 = [v1 copy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100229CF0(void *a1)
{
  if (a1)
  {
    v1 = sub_100229BF8(a1);
    if ([v1 length] <= 8)
    {
      v2 = v1;
    }

    else
    {
      v2 = [v1 substringToIndex:8];
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100229D64(void *a1)
{
  if (a1)
  {
    v2 = [a1 bytes];
    v3 = [a1 length];
    v4 = 0;
    if (v2)
    {
      v5 = v3;
      if (v3)
      {
        v6 = [[NSMutableData alloc] initWithLength:v3];
        memset(&v10.avail_in, 0, 104);
        v10.avail_in = v5;
        v10.avail_out = v5;
        v10.next_out = [v6 mutableBytes];
        if (v6 && !deflateInit2_(&v10, -1, 8, 31, 8, 0, "1.2.12", 112) && (v7 = deflate(&v10, 4), v8 = deflateEnd(&v10), v7 == 1))
        {
          v4 = 0;
          if (!v8 && v5 == v10.total_in)
          {
            [v6 setLength:v10.total_out];
            v4 = v6;
          }
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *sub_100229EEC(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = [a1 init];
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 4, a3);
      v9 = objc_alloc_init(TaskQueue);
      v10 = a1[5];
      a1[5] = v9;
    }
  }

  return a1;
}

void sub_10022A0E0(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock_with_options();
  v4 = [v3 copy];

  v5 = *(a1 + 56);
  *(a1 + 56) = v4;

  os_unfair_lock_unlock((a1 + 16));
}

void sub_10022A4EC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v5 = v3;
  if (v2)
  {
    if (v3)
    {
      v6 = v3[24];
      v7 = (*(v3 + 170) - 1) < 2;
      v19 = objc_getProperty(v3, v4, 32, 1);
      if (v6)
      {
        v8 = sub_1003D0F60(*(v2 + 8));

        if (v8)
        {
          v9 = sub_1003D0F60(*(v2 + 8));
          v25 = v9;
          v10 = 1;
          v11 = [NSArray arrayWithObjects:&v25 count:1];
          sub_10022A0E0(v2, v11);
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v19 = 0;
      v10 = 0;
      v7 = 0;
    }

    v12 = sub_1003D0F60(*(v2 + 8));
    v13 = [NSString stringWithFormat:@"Migrating VPP SINF completed"];
    [AITransactionLog logStep:13 byParty:3 phase:2 success:v7 forBundleID:v12 description:v13];

    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v2 + 24);
      *buf = 138412802;
      *&buf[4] = v15;
      v21 = 1024;
      v22 = v10;
      v23 = 1024;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Completed with result: %d SINF migrated: %d", buf, 0x18u);
    }

    if (v7)
    {
      v16 = sub_1003D0F60(*(v2 + 8));

      if (v16)
      {
        v17 = sub_1003D0F60(*(v2 + 8));
        *buf = v17;
        v18 = [NSArray arrayWithObjects:buf count:1];
        sub_10022A0E0(v2, v18);
      }
    }

    else if (!v19)
    {
      v19 = ASDErrorWithTitleAndMessage();
    }
  }

  else
  {
    v19 = 0;
  }

  (*(v1 + 16))(v1, v19);
}

id *sub_10022B118(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = ContentRestoreTask;
    v11 = objc_msgSendSuper2(&v13, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 5, a3);
      objc_storeStrong(a1 + 6, a2);
      objc_storeStrong(a1 + 7, a4);
    }
  }

  return a1;
}

void *sub_10022C0D0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = SQLiteConnection;
    a1 = objc_msgSendSuper2(&v12, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[8];
      a1[8] = v4;

      v6 = +[NSMapTable strongToStrongObjectsMapTable];
      v7 = a1[4];
      a1[4] = v6;

      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("com.apple.appstored.SQLiteConnection.AfterTransactionBlocks", v8);
      v10 = a1[7];
      a1[7] = v9;
    }
  }

  return a1;
}

uint64_t sub_10022C29C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
      sub_10022D40C(result);
      if (sqlite3_close(*(v1 + 16)))
      {
        return 0;
      }

      else
      {
        v2 = *(v1 + 8);
        *(v1 + 8) = 0;

        *(v1 + 16) = 0;
        *(v1 + 40) = 0;
        result = 1;
        *(v1 + 48) = 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_10022C30C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = v3;
    if (*(a1 + 40))
    {
      if (!*(a1 + 8))
      {
        v4 = objc_alloc_init(NSMutableArray);
        v5 = *(a1 + 8);
        *(a1 + 8) = v4;
      }

      v6 = [v9 copy];
      v7 = *(a1 + 8);
      v8 = objc_retainBlock(v6);
      [v7 addObject:v8];
    }

    else
    {
      v3[2](v3);
    }

    v3 = v9;
  }
}

void sub_10022C3C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v11[0] = 0;
    v7 = sub_10022C5F4(a1, v5, v11);
    v8 = v11[0];
    v9 = sub_1002D20B0([SQLitePreparedStatement alloc], *(a1 + 16), v5);
    if (v9)
    {
      [*(a1 + 32) setObject:v7 forKey:v9];
    }

    if (v7)
    {
      v10 = sub_10021479C([SQLiteQueryResults alloc], v7);
    }

    else
    {
      v10 = 0;
    }

    v6[2](v6, v10, v8);
    sub_100303840(v7);
    if (v9)
    {
      [*(a1 + 32) removeObjectForKey:v9];
    }
  }
}

id sub_10022C5F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (sub_10022C9DC(a1))
  {
    v14 = 0;
    v6 = v5;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_10022D8C0;
    v20 = sub_10022D8D0;
    v21 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10022D8D8;
    v15[3] = &unk_10051DF08;
    v15[5] = &v16;
    v15[6] = [v6 UTF8String];
    v15[4] = a1;
    sub_10022D01C(a1, &v14, v15);
    v7 = v17[5];
    _Block_object_dispose(&v16, 8);

    v8 = v14;
    if (v7)
    {
      v9 = *(a1 + 64);
      if (v9 && *(v9 + 8) == 1 && (sub_10030388C(v7) & 1) == 0)
      {
        v11 = [NSError errorWithDomain:@"SQLiteErrorDomain" code:-7701 userInfo:0];

        sub_100303840(v7);
        v10 = 0;
        v8 = v11;
      }

      else
      {
        v10 = v7;
      }
    }

    else
    {
      v10 = 0;
    }

    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = [NSError errorWithDomain:@"SQLiteErrorDomain" code:-7700 userInfo:0];
    v10 = 0;
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  if (!v10)
  {
    v12 = v8;
    *a3 = v8;
  }

LABEL_14:

  return v10;
}

void sub_10022C7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10022C810(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_18;
  }

  v20 = 0;
  v8 = a2;
  v9 = sub_10022C5F4(a1, v8, &v20);
  v10 = v20;
  v11 = sub_1002D20B0([SQLitePreparedStatement alloc], *(a1 + 16), v8);

  if (v11)
  {
    [*(a1 + 32) setObject:v9 forKey:v11];
  }

  if (v9)
  {
    if (v7)
    {
      v7[2](v7, v9);
    }

    v19 = v10;
    v12 = v9;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10022D53C;
    v21[3] = &unk_10051DEE0;
    v13 = v12;
    v22 = v13;
    v14 = sub_10022D01C(a1, &v19, v21);
    if (v14)
    {
      v15 = v13[2];
      if (v15)
      {
        sqlite3_reset(v15);
      }
    }

    v16 = v19;
    sub_100303840(v13);
    if (v11)
    {
      [*(a1 + 32) removeObjectForKey:v11];
    }

    v10 = v16;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v14 = 0;
  if (a3)
  {
LABEL_15:
    if ((v14 & 1) == 0)
    {
      v17 = v10;
      *a3 = v10;
    }
  }

LABEL_17:

LABEL_18:
  return v14;
}

BOOL sub_10022C9DC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 1;
  if (!*(a1 + 16))
  {
    db = 0;
    v3 = 1;
    while (1)
    {
      v4 = sub_1002DCA30(&db, *(a1 + 64));
      v2 = v4 == 0;
      if (!v4)
      {
        break;
      }

      if (v4 <= 0x1Au && ((1 << v4) & 0x4000C02) != 0)
      {
        v6 = v3 & sub_10022D544(a1);
        v3 = 0;
        if (v6)
        {
          continue;
        }
      }

      return v2;
    }

    v7 = db;
    *(a1 + 16) = db;
    sqlite3_create_function(v7, "timestamp", 0, 1, 0, sub_10022D87C, 0, 0);
  }

  return v2;
}

uint64_t sub_10022CAC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"-" withString:&stru_100529300];
    v7 = [NSString stringWithFormat:@"SP_%@", v6];

    v8 = [NSString stringWithFormat:@"SAVEPOINT %@", v7];
    LODWORD(v5) = sub_10022C810(a1, v8, 0, 0);

    if (v5)
    {
      if (v3[2](v3))
      {
        v9 = [NSString stringWithFormat:@"RELEASE SAVEPOINT %@", v7];
        a1 = sub_10022C810(a1, v9, 0, 0);

LABEL_7:
        goto LABEL_8;
      }

      v10 = [NSString stringWithFormat:@"ROLLBACK TRANSACTION TO SAVEPOINT %@", v7];
      sub_10022C810(a1, v10, 0, 0);
    }

    a1 = 0;
    goto LABEL_7;
  }

LABEL_8:

  return a1;
}

void sub_10022CC88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 40);
    if (v4 < 1)
    {
      if (!sub_10022C810(a1, @"BEGIN DEFERRED TRANSACTION", 0, 0))
      {
        goto LABEL_12;
      }

      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
    }

    else
    {
      *(a1 + 40) = v4 + 1;
    }

    os_variant_has_internal_content();
    v5 = v3[2](v3);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48) | v5 ^ 1;
    *(a1 + 48) = v7 & 1;
    *(a1 + 40) = --v6;
    if (!v6)
    {
      if (v7)
      {
        v8 = @"ROLLBACK TRANSACTION";
      }

      else
      {
        v8 = @"COMMIT TRANSACTION";
      }

      sub_10022C810(a1, v8, 0, 0);
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = [v9 copy];
        v11 = *(a1 + 8);
        *(a1 + 8) = 0;

        v12 = *(a1 + 56);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10022D788;
        v14[3] = &unk_10051AF98;
        v15 = v10;
        v13 = v10;
        dispatch_async(v12, v14);
      }
    }
  }

LABEL_12:
}

uint64_t sub_10022CED0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10022CFC0;
    v6[3] = &unk_10051DEB8;
    v7 = v3;
    v8 = &v9;
    sub_10022C3C4(a1, @"SELECT name FROM sqlite_master where name = ?", v6);
    LOBYTE(a1) = *(v10 + 24);

    _Block_object_dispose(&v9, 8);
  }

  return a1 & 1;
}

void sub_10022CFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10022CFC0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  LOBYTE(v3) = sub_100214AEC(v4);

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

uint64_t sub_10022D01C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
    v15 = 0;
    goto LABEL_31;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = objc_autoreleasePoolPush();
    buf[0] = 0;
    v9 = v5[2](v5, buf);
    if (v9 <= 9u)
    {
      if (v9 - 5 >= 2)
      {
        if (!v9)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      if (v6 >= 10)
      {
        v13 = [NSError errorWithDomain:@"SQLiteErrorDomain" code:-7702 userInfo:0];
        goto LABEL_24;
      }

      usleep(0xF4240u);
      ++v6;
      goto LABEL_10;
    }

    if (v9 <= 0x63u)
    {
      break;
    }

    if (v9 != 100)
    {
      if (v9 == 101)
      {
LABEL_26:
        v11 = 0;
        v7 = 1;
LABEL_27:
        objc_autoreleasePoolPop(v8);
        if (!a2)
        {
          goto LABEL_30;
        }

        goto LABEL_28;
      }

LABEL_23:
      v13 = sub_1002DC5C4(v9);
LABEL_24:
      v11 = v13;
      goto LABEL_27;
    }

    v7 = 1;
LABEL_10:
    v10 = buf[0];
    objc_autoreleasePoolPop(v8);
    if (v10)
    {
      v11 = 0;
      if (!a2)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }
  }

  if (v9 != 10)
  {
    if (v9 == 11 || v9 == 26)
    {
      v11 = sub_1002DC5C4(v9);
      objc_autoreleasePoolPop(v8);
      sub_10022D544(a1);
      if (!a2)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v11 = sub_1002DC5C4(v9);
  objc_autoreleasePoolPop(v8);
  v17 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v21 = objc_opt_class();
    v22 = *(a1 + 64);
    v24 = v21;
    if (v22)
    {
      Property = objc_getProperty(v22, v23, 24, 1);
    }

    else
    {
      Property = 0;
    }

    v26 = Property;
    *buf = 138412546;
    v38 = v21;
    v39 = 2114;
    v40 = v26;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@]: Reopening database after IO error: %{public}@", buf, 0x16u);
  }

  v18 = *(a1 + 8);
  v19 = v18;
  v20 = *(a1 + 40);
  if (sub_10022C29C(a1) && sub_10022C9DC(a1))
  {
    if (v20)
    {
      if (sqlite3_exec(*(a1 + 16), "BEGIN DEFERRED TRANSACTION", 0, 0, 0))
      {
        goto LABEL_37;
      }

      objc_storeStrong((a1 + 8), v18);
      *(a1 + 40) = v20;
      *(a1 + 48) = 1;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v28 = objc_opt_respondsToSelector();

    if (v28)
    {
      v29 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = *(a1 + 64);
        v34 = v31;
        if (v32)
        {
          v35 = objc_getProperty(v32, v33, 24, 1);
        }

        else
        {
          v35 = 0;
        }

        v36 = v35;
        *buf = 138412546;
        v38 = v31;
        v39 = 2114;
        v40 = v36;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%@]: Asking delegate to reset database after reopen: %{public}@", buf, 0x16u);
      }

      v30 = objc_loadWeakRetained((a1 + 24));
      [v30 connectionNeedsResetForReopen:a1];
    }
  }

  else
  {
LABEL_37:
    sub_10022D544(a1);
  }

  if (!a2)
  {
    goto LABEL_30;
  }

LABEL_28:
  if ((v7 & 1) == 0)
  {
    v14 = v11;
    *a2 = v11;
  }

LABEL_30:

  v15 = v7;
LABEL_31:

  return v15;
}

sqlite3_stmt *sub_10022D40C(sqlite3_stmt *result)
{
  if (result)
  {
    v1 = result;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(result + 4) objectEnumerator];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          sub_100303840(*(*(&v8 + 1) + 8 * v6));
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    [*(v1 + 4) removeAllObjects];
    result = sqlite3_next_stmt(*(v1 + 2), 0);
    if (result)
    {
      v7 = result;
      do
      {
        sqlite3_finalize(v7);
        result = sqlite3_next_stmt(*(v1 + 2), v7);
        v7 = result;
      }

      while (result);
    }
  }

  return result;
}

id sub_10022D544(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = *(a1 + 64);
      v16 = v13;
      if (v14)
      {
        Property = objc_getProperty(v14, v15, 24, 1);
      }

      else
      {
        Property = 0;
      }

      v18 = Property;
      v25 = 138412546;
      v26 = v13;
      v27 = 2114;
      v28 = v18;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@]: Asking delegate to reset database after corruption: %{public}@", &v25, 0x16u);
    }

    v5 = objc_loadWeakRetained((a1 + 24));
    v6 = [v5 connectionNeedsResetForCorruption:a1];
LABEL_11:
    v8 = v6;

    return v8;
  }

  v7 = *(a1 + 64);
  if (!v7 || (*(v7 + 8) & 1) == 0)
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = *(a1 + 64);
      v22 = v19;
      if (v20)
      {
        v23 = objc_getProperty(v20, v21, 24, 1);
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      v25 = 138412546;
      v26 = v19;
      v27 = 2114;
      v28 = v24;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@]: Deleting database after corruption: %{public}@", &v25, 0x16u);
    }

    v11 = *(a1 + 64);
    if (v11)
    {
      v11 = objc_getProperty(v11, v10, 24, 1);
    }

    v5 = v11;
    sub_10022C29C(a1);
    v6 = sub_1002DC91C(v5, 0);
    goto LABEL_11;
  }

  return 0;
}

void sub_10022D788(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_10022D87C(sqlite3_context *a1)
{
  +[NSDate timeIntervalSinceReferenceDate];

  sqlite3_result_int64(a1, v2);
}

uint64_t sub_10022D8C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10022D8D8(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), *(a1 + 48), -1, &ppStmt, 0);
  if (v2 - 100 < 2 || v2 == 0)
  {
    v4 = [SQLiteStatement alloc];
    v5 = sub_1003037B4(&v4->super.isa, ppStmt, *(a1 + 32));
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    sqlite3_finalize(ppStmt);
  }

  return v2;
}

id sub_10022D9D8(void *a1)
{
  if (a1)
  {
    v1 = sub_10022DA38(a1);
    v2 = [v1 objectForKeyedSubscript:@"AnalyticsEventAction"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10022DA38(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"com.apple.appstored.AnalyticsEvent"];

  return v2;
}

void sub_10022DA8C(void *a1, void *a2)
{
  v10 = a2;
  if (a1)
  {
    v3 = sub_10022DA38(a1);
    v4 = [v3 mutableCopy];

    if (!v4)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
    }

    v5 = [v10 copy];
    [v4 setObject:v5 forKeyedSubscript:@"AnalyticsEventAction"];

    v6 = v4;
    v7 = [a1 userInfo];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    v9 = [v6 copy];
    [v8 setObject:v9 forKeyedSubscript:@"com.apple.appstored.AnalyticsEvent"];

    [a1 setUserInfo:v8];
  }
}

uint64_t sub_10022DBA4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if ([v7 count])
    {
      v9 = sub_100402F34([v7 count]);
      v10 = [NSString stringWithFormat:@"DELETE FROM purchase_history_apps WHERE purchaser_dsid = ? AND locker_item_id IN (%@)", v9];;

      v11 = *(a1 + 8);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10022DCE0;
      v14[3] = &unk_10051B0C8;
      v15 = v8;
      v16 = v7;
      v12 = sub_10022C810(v11, v10, a4, v14);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_10022DCE0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNumber:*(a1 + 32) atPosition:1];
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10022DD88;
  v6[3] = &unk_10051B0A0;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

uint64_t sub_10022DD98(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v64 = a3;
  if (a1)
  {
    if ([v5 count])
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v5;
      v6 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v6)
      {
        v7 = v6;
        v63 = *v66;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v66 != v63)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v65 + 1) + 8 * i);
            v10 = objc_alloc_init(NSMutableDictionary);
            v11 = [v9 appIconArtworkURLString];
            [v10 setObject:v11 forKeyedSubscript:@"app_icon_artwork_url"];

            v12 = [v9 appIconArtworkToken];
            [v10 setObject:v12 forKeyedSubscript:@"app_icon_artwork_token"];

            v13 = [v9 appIconCompatibleArtworkURLString];
            [v10 setObject:v13 forKeyedSubscript:@"app_icon_compatible_artwork_url"];

            v14 = [v9 bundleID];
            [v10 setObject:v14 forKeyedSubscript:@"bundle_id"];

            v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 contentRatingFlags]);
            [v10 setObject:v15 forKeyedSubscript:@"content_rating_flags"];

            v16 = [v9 circularAppIconArtworkURLString];
            [v10 setObject:v16 forKeyedSubscript:@"circular_app_icon_artwork_url"];

            v17 = [v9 circularAppIconArtworkToken];
            [v10 setObject:v17 forKeyedSubscript:@"circular_app_icon_artwork_token"];

            v18 = [v9 circularAppIconCompatibleArtworkURLString];
            [v10 setObject:v18 forKeyedSubscript:@"circular_app_icon_compatible_artwork_url"];

            v19 = [v9 circularIconURLString];
            [v10 setObject:v19 forKeyedSubscript:@"circular_icon_url"];

            v20 = [v9 datePurchased];
            [v10 setObject:v20 forKeyedSubscript:@"date_purchased"];

            v21 = [v9 developerName];
            [v10 setObject:v21 forKeyedSubscript:@"developer_name"];

            v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isFamilyShared]);
            [v10 setObject:v22 forKeyedSubscript:@"family_shared"];

            v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isFirstParty]);
            [v10 setObject:v23 forKeyedSubscript:@"first_party"];

            v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 currentlyOptedInForMacOSEligibility]);
            [v10 setObject:v24 forKeyedSubscript:@"is_ios_binary_macos_available"];

            v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 currentlyOptedInForXROSEligibility]);
            [v10 setObject:v25 forKeyedSubscript:@"currently_opted_in_for_ros_eligibility"];

            v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 optedInForMacOSEligibility]);
            [v10 setObject:v26 forKeyedSubscript:@"is_ios_binary_macos_compatible"];

            v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 optedInForXROSEligibility]);
            [v10 setObject:v27 forKeyedSubscript:@"opted_in_for_ros_eligibility"];

            v28 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 hasMessagesExtension]);
            [v10 setObject:v28 forKeyedSubscript:@"has_messages_extension"];

            v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isHidden]);
            [v10 setObject:v29 forKeyedSubscript:@"hidden"];

            v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isHiddenFromSpringboard]);
            [v10 setObject:v30 forKeyedSubscript:@"hidden_from_springboard"];

            v31 = [v9 iconURLString];
            [v10 setObject:v31 forKeyedSubscript:@"icon_url_template"];

            v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 is32BitOnly]);
            [v10 setObject:v32 forKeyedSubscript:@"is_32_bit_only"];

            v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isEligibleForGamesApp]);
            [v10 setObject:v33 forKeyedSubscript:@"is_eligible_for_games_app"];

            v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isPreorder]);
            [v10 setObject:v34 forKeyedSubscript:@"is_preorder"];

            v35 = [v9 longTitle];
            [v10 setObject:v35 forKeyedSubscript:@"long_title"];

            v36 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 mediaKind]);
            [v10 setObject:v36 forKeyedSubscript:@"media_kind"];

            v37 = [v9 ovalIconURLString];
            [v10 setObject:v37 forKeyedSubscript:@"oval_icon_url_template"];

            v38 = [v9 preflightPackageURL];
            [v10 setObject:v38 forKeyedSubscript:@"preflight_package_url"];

            v39 = [v9 productURL];
            [v10 setObject:v39 forKeyedSubscript:@"product_url"];

            [v10 setObject:v64 forKeyedSubscript:@"purchaser_dsid"];
            v40 = [v9 redownloadParams];
            [v10 setObject:v40 forKeyedSubscript:@"redownload_params"];

            v41 = [v9 requiredCapabilities];
            [v10 setObject:v41 forKeyedSubscript:@"required_capabilities"];

            v42 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 storeItemID]);
            [v10 setObject:v42 forKeyedSubscript:@"store_item_id"];

            v43 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 supportsIPad]);
            [v10 setObject:v43 forKeyedSubscript:@"supports_ipad"];

            v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 supportsIPhone]);
            [v10 setObject:v44 forKeyedSubscript:@"supports_iphone"];

            v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 supportsMac]);
            [v10 setObject:v45 forKeyedSubscript:@"supports_mac"];

            v46 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 supportsRealityDevice]);
            [v10 setObject:v46 forKeyedSubscript:@"supports_reality_device"];

            v47 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 purchaseToken]);
            [v10 setObject:v47 forKeyedSubscript:@"purchase_token"];

            v48 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 lockerItemID]);
            [v10 setObject:v48 forKeyedSubscript:@"locker_item_id"];

            v49 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 genreID]);
            [v10 setObject:v49 forKeyedSubscript:@"genre_id"];

            v50 = [v9 genreName];
            [v10 setObject:v50 forKeyedSubscript:@"genre_name"];

            v51 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 watchAppDeliveredIniOSApp]);
            [v10 setObject:v51 forKeyedSubscript:@"watch_app_delivered_in_ios_app"];

            v52 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 watchAppRunsIndependently]);
            [v10 setObject:v52 forKeyedSubscript:@"watch_app_runs_independently"];

            v53 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 watchOnly]);
            [v10 setObject:v53 forKeyedSubscript:@"watch_app_watch_only"];

            v54 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 supportsLayeredImage]);
            [v10 setObject:v54 forKeyedSubscript:@"supports_layered_image"];

            v55 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 hasP3]);
            [v10 setObject:v55 forKeyedSubscript:@"has_p3"];

            v56 = [v9 title];
            [v10 setObject:v56 forKeyedSubscript:@"title"];

            v57 = [PurchaseHistoryAppEntity alloc];
            v58 = [a1 connection];
            v59 = [(SQLiteEntity *)v57 initWithPropertyValues:v10 onConnection:v58];

            LODWORD(v58) = [(SQLiteEntity *)v59 existsInDatabase];
            if (!v58)
            {
              v60 = 0;
              goto LABEL_15;
            }
          }

          v7 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }

        v60 = 1;
      }

      else
      {
        v60 = 1;
      }

LABEL_15:
    }

    else
    {
      v60 = 1;
    }
  }

  else
  {
    v60 = 0;
  }

  return v60;
}

uint64_t sub_10022E964(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 connection];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10022EA38;
    v9[3] = &unk_10051B0F0;
    v10 = v5;
    v7 = sub_10022C810(v6, @"DELETE FROM purchase_history_apps WHERE purchaser_dsid = ?;", a3, v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *sub_10022EA48(void *result, void *a2, void *a3, void *a4)
{
  if (result)
  {
    v6 = result;
    v7 = a3;
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%i", [a2 intValue]);
    v9 = sub_100301CF0(PurchaseHistoryDatabaseSession, v7);

    v10 = sub_10022EB04(v6, v8, v9, a4);
    return v10;
  }

  return result;
}

uint64_t sub_10022EB04(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [a1 connection];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10022ED4C;
  v14[3] = &unk_10051B0C8;
  v10 = v7;
  v15 = v10;
  v11 = v8;
  v16 = v11;
  v12 = sub_10022C810(v9, @"INSERT OR REPLACE INTO purchase_history_db_properties (value, key) VALUES (?, ?);", a4, v14);

  return v12;
}

void *sub_10022EBFC(void *result, void *a2, void *a3, void *a4)
{
  if (result)
  {
    v6 = result;
    v7 = a3;
    [a2 timeIntervalSince1970];
    v8 = [NSNumber numberWithDouble:?];
    v9 = sub_1003C1DB4(PurchaseHistoryDatabaseSession, v7);

    v10 = sub_10022EB04(v6, v8, v9, a4);
    return v10;
  }

  return result;
}

void *sub_10022ECA4(void *result, void *a2, void *a3, void *a4)
{
  if (result)
  {
    v6 = result;
    v7 = a3;
    [a2 timeIntervalSince1970];
    v8 = [NSNumber numberWithDouble:?];
    v9 = sub_100301AA4(PurchaseHistoryDatabaseSession, v7);

    v10 = sub_10022EB04(v6, v8, v9, a4);
    return v10;
  }

  return result;
}

void sub_10022ED4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_100402CF4(v4, 1, v3);
  [v4 bindString:*(a1 + 40) atPosition:2];
}

ExpiredUpdateRecoveryTask *sub_10022F9A4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(ExpiredUpdateRecoveryTask);
  *(&v3->_itemID + 2) = [v2 persistentID];
  v4 = sub_100340328(v2, @"bundle_id");
  v5 = *(&v3->super._finished + 1);
  *(&v3->super._finished + 1) = v4;

  BYTE2(v3->_logCode) = sub_1003402E8(v2, @"update_type") != 1;
  v6 = sub_100340154(v2, @"item_id");
  v7 = *(&v3->_externalID + 2);
  *(&v3->_externalID + 2) = v6;

  v8 = sub_1003403A0(v2, @"external_id");
  v9 = *(&v3->_bundleID + 2);
  *(&v3->_bundleID + 2) = v8;

  v10 = sub_100340328(v2, @"log_code");

  v11 = *(&v3->_installID + 2);
  *(&v3->_installID + 2) = v10;

  return v3;
}

void sub_10022FD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10022FDA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10022FDC0(uint64_t a1, void *a2)
{
  v3 = sub_10040522C(a2, *(*(a1 + 32) + 42));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10022FE20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v4)
    {
      v6 = [v3 purchaseInfoForUpdateUserInitiated:*(v4 + 82) bag:a2];
      v7 = [NSNumber numberWithLongLong:*(v4 + 66)];
      [v6 setRefreshInstallID:v7];

      [v6 setBundleID:*(v4 + 42)];
      [v6 setExternalID:*(v4 + 50)];
      [v6 setIsRecoveryForExpiredUrl:1];
      [v6 setItemID:*(v4 + 58)];
      [v6 setLogCode:*(v4 + 74)];
      [v6 setMetricsType:&off_100547398];
      [v6 updateGeneratedProperties];
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v6 logKey];
        LODWORD(v13) = 138412290;
        *(&v13 + 4) = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Initiating re-purchase for expired update", &v13, 0xCu);
      }

      v10 = sub_1001DFF60();
      *&v13 = _NSConcreteStackBlock;
      *(&v13 + 1) = 3221225472;
      v14 = sub_1002300A8;
      v15 = &unk_10051DF58;
      v16 = v6;
      v17 = v4;
      v18 = v5;
      v11 = v6;
      sub_1001E065C(v10, v11, &v13);
    }
  }

  else
  {
    v12 = *(*(a1 + 40) + 16);

    v12();
  }
}

void sub_1002300A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 items];
  v7 = [v6 firstObject];

  v8 = [v7 success];
  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) logKey];
      *v15 = 138412290;
      *&v15[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Successfully re-purchased expired update", v15, 0xCu);
    }

    v12 = *(a1 + 40);
    v10 = [*(a1 + 32) logKey];
    if (v12)
    {
      v13 = sub_1003C27BC();
      *v15 = _NSConcreteStackBlock;
      *&v15[8] = 3221225472;
      *&v15[16] = sub_1002302D8;
      v16 = &unk_10051CA38;
      v17 = v12;
      v18 = v10;
      [v13 modifyUsingTransaction:v15];
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v14 = [*(a1 + 32) logKey];
    *v15 = 138412546;
    *&v15[4] = v14;
    *&v15[12] = 2114;
    *&v15[14] = v5;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@] Failed to re-purchase expired update error: %{public}@", v15, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t sub_1002302D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AppInstallEntity alloc];
  v5 = *(*(a1 + 32) + 66);
  v6 = [v3 connection];

  v7 = [(SQLiteEntity *)v4 initWithPersistentID:v5 onConnection:v6];
  v8 = sub_100294554(v7);
  v9 = sub_1003B68DC(v8);

  if (v9)
  {
    sub_1003B69B0(v8, 0);
    sub_1002945E4(v7, v8);
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Successfully cleared the optimal download window", &v13, 0xCu);
    }
  }

  return 1;
}

void sub_100230778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002307A4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [ApplicationProxy proxyForBundleID:*(*(&v8 + 1) + 8 * v6), v8];
        if ([*(a1 + 40) isCandidateAppProxy:v7 isMetadataLookup:0])
        {
          ++*(*(*(a1 + 48) + 8) + 24);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1002308D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = sub_100355E58();
    sub_10035A684(v7, @"Install", 1, v5, &stru_10051DFA0);
  }

  else
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logKey];
      v9 = 138412546;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Unable to sbsync due to failed bag load: %{public}@", &v9, 0x16u);
    }
  }
}

void sub_100230C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100230C84(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) isCandidateAppProxy:a2 isMetadataLookup:0];
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

void sub_100230CE0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 32);
    v7 = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = *(a1 + 32);
      *(a1 + 32) = v5;

      v4 = *(a1 + 32);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

uint64_t sub_100231000(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v15 = PBReaderReadString();
          v16 = 8;
LABEL_30:
          v14 = *(a1 + v16);
          *(a1 + v16) = v15;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadString();
          v16 = 24;
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 16;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(TFImageUpload);
          sub_100230CE0(a1, v14);
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !sub_1001D5788(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002313E4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

void sub_1002313FC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_100231414(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

id *sub_1002317B0(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = RequestProxy;
    v10 = objc_msgSendSuper2(&v12, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 1, v7);
      objc_storeStrong(a1 + 2, a4);
      objc_storeStrong(a1 + 3, a3);
    }
  }

  return a1;
}

uint64_t sub_1002319A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100231AFC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

BOOL sub_100231C80(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = v2 != 0;
  if (!v2)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Impression is missing advertised app id", v13, 2u);
    }
  }

  if (!a1[2])
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Impression is missing ad network id", v13, 2u);
    }

    v3 = 0;
  }

  if (!a1[5])
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Impression is missing impression id", v13, 2u);
    }

    v3 = 0;
  }

  if (!a1[6])
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Impression is missing source app adam id", v13, 2u);
    }

    v3 = 0;
  }

  if (!a1[7])
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Impression is missing timestamp", v13, 2u);
    }

    v3 = 0;
  }

  if (!a1[9])
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Impression is missing signature", v13, 2u);
    }

    v3 = 0;
  }

  if (!a1[10])
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Impression is missing SKAdNetwork version", v13, 2u);
    }

    v3 = 0;
  }

  if (!a1[11])
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Impression is missing source app bundle id", v13, 2u);
    }

    return 0;
  }

  return v3;
}

unint64_t *sub_100231F7C(unint64_t *a1)
{
  if (a1)
  {
    v2 = a1;
    if (sub_1002C68FC(a1[1]))
    {
      if (sub_1002C68FC(v2[6]))
      {
        a1 = v2[10];
        if (!a1)
        {
LABEL_14:
          v1 = vars8;
          goto LABEL_15;
        }

        v3 = a1;
        v4 = ASDInstallAttributionVersionCreateFromString();

        if (v4)
        {
          a1 = 0;
          goto LABEL_14;
        }

        v8 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v9 = 0;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Version is not a valid SKAN version.", v9, 2u);
        }
      }

      else
      {
        v6 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v10 = 0;
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Source app ID is not a valid integer value.", v10, 2u);
        }
      }
    }

    else
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Advertised app ID is not a valid integer value.", buf, 2u);
      }
    }

    a1 = ASDErrorWithDescription();
    goto LABEL_14;
  }

LABEL_15:

  return a1;
}

id sub_100232138(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  objc_opt_self();
  if (!v8)
  {
    goto LABEL_45;
  }

  v46 = 0;
  v11 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v46];
  v12 = v11;
  if (!v11)
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v49 = v8;
      v50 = 2114;
      v51 = v46;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "SKAdNetwork: Did not find installed app %{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v13 = [v11 appClipMetadata];

  if (v13)
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v49 = v8;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "SKAdNetwork: API not available for App Clips: %{public}@", buf, 0xCu);
    }

LABEL_9:

    v15 = ASDErrorWithDescription();
LABEL_10:

    goto LABEL_46;
  }

  v16 = [v12 URL];
  v17 = [v16 URLByAppendingPathComponent:@"Info.plist"];

  v18 = [[NSDictionary alloc] initWithContentsOfURL:v17 error:&v46];
  if (!v18)
  {
    v31 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v49 = v8;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "SKAdNetwork: Did not find Info.plist for app: %{public}@", buf, 0xCu);
    }

    v15 = ASDErrorWithDescription();

    goto LABEL_10;
  }

  v19 = v18;
  v20 = [v18 objectForKeyedSubscript:@"SKAdNetworkItems"];
  objc_opt_class();
  v41 = v20;
  if (objc_opt_isKindOfClass())
  {
    v38 = a4;
    v39 = v9;
    v40 = v19;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v22)
    {
      v15 = v22;
      v23 = *v43;
LABEL_15:
      v24 = 0;
      while (1)
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v42 + 1) + 8 * v24);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = sub_1002380D8(v25, @"SKAdNetworkIdentifier");
          if (v26)
          {
            v27 = v26;
            if ([v26 isEqualToString:v10])
            {

              v33 = sub_1003D5D34();
              v30 = 1;
              if (!v38)
              {
                goto LABEL_42;
              }

              v9 = v39;
              v19 = v40;
              if (v33)
              {
                goto LABEL_44;
              }

              v34 = [v39 longLongValue];
              v15 = [v12 iTunesMetadata];
              v35 = [v15 storeItemIdentifier];

              if (v34 != v35)
              {
                v37 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v49 = v8;
                  v50 = 2114;
                  v51 = v39;
                  _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "SKAdNetwork: App: %{public}@ did not match source app adam id: %{public}@", buf, 0x16u);
                }

                v15 = ASDErrorWithDescription();
                v30 = 0;
              }

              goto LABEL_43;
            }
          }

          else
          {
            v28 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v49 = v8;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "SKAdNetwork: Found non-string SKAdNetworkIdentifier in Info.plist for app: %{public}@", buf, 0xCu);
            }

            v27 = 0;
          }
        }

        else
        {
          v27 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v49 = v8;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "SKAdNetwork: Found non-dictionary SKAdNetworkItem in Info.plist for app: %{public}@", buf, 0xCu);
          }
        }

        if (v15 == ++v24)
        {
          v15 = [v21 countByEnumeratingWithState:&v42 objects:v47 count:16];
          if (v15)
          {
            goto LABEL_15;
          }

          break;
        }
      }
    }

    v29 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v49 = v8;
      v50 = 2112;
      v51 = v10;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "SKAdNetwork: App: %{public}@ did not have ad network: %@ in Info.plist", buf, 0x16u);
    }

    v15 = ASDErrorWithDescription();
    v30 = 0;
LABEL_42:
    v9 = v39;
LABEL_43:
    v19 = v40;
  }

  else
  {
    v32 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v49 = v8;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "SKAdNetwork: Did not find ad network items array in Info.plist for app: %{public}@", buf, 0xCu);
    }

    v15 = ASDErrorWithDescription();
    v30 = 0;
  }

LABEL_44:

  if (v30)
  {
LABEL_45:
    v15 = 0;
  }

LABEL_46:

  return v15;
}

void sub_100232810(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v15 = a2;
  v8 = a4;
  v9 = a5;
  objc_opt_self();
  if (v9)
  {
    v10 = objc_opt_new();
    [v10 setObject:v15 forKeyedSubscript:@"adNetworkID"];
    [v10 setObject:v8 forKeyedSubscript:@"skanVersion"];
    v11 = [NSNumber numberWithInteger:a3];
    [v10 setObject:v11 forKeyedSubscript:@"boundedImpressionType"];

    v12 = [v9 code] - 1200;
    if (v12 > 0x1E)
    {
      v13 = 12;
    }

    else
    {
      v13 = qword_10044BA38[v12];
    }

    v14 = [NSNumber numberWithInteger:v13];
    [v10 setObject:v14 forKeyedSubscript:@"boundedFailureType"];

    sub_1003F25C4(Analytics, v10, 14);
  }
}

void sub_100232960(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  objc_opt_self();
  v9 = objc_opt_new();
  [v9 setObject:v7 forKeyedSubscript:@"adNetworkID"];

  [v9 setObject:v6 forKeyedSubscript:@"skanVersion"];
  v8 = [NSNumber numberWithInteger:a3];
  [v9 setObject:v8 forKeyedSubscript:@"boundedImpressionType"];

  sub_1003F25C4(Analytics, v9, 2);
}

void sub_100232A44(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = a2;
  objc_opt_self();
  v12 = objc_opt_new();
  [v12 setObject:v9 forKeyedSubscript:@"adNetworkID"];

  [v12 setObject:v8 forKeyedSubscript:@"skanVersion"];
  v10 = [NSNumber numberWithInteger:a3];
  [v12 setObject:v10 forKeyedSubscript:@"boundedImpressionType"];

  v11 = [NSNumber numberWithInteger:a5];
  [v12 setObject:v11 forKeyedSubscript:@"boundedFailureType"];

  sub_1003F25C4(Analytics, v12, 3);
}

void sub_100232B60(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_100232B70(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

void sub_100232B80(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void sub_100232B90(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

void sub_100232BA0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

void sub_100232BB0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_100232BC0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_100232BD0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

void sub_100232BE0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

void sub_100232BF0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

id sub_100232CA4(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v5[0] = a2;
  v5[1] = 0;
  v3 = [[NSUUID alloc] initWithUUIDBytes:v5];

  return v3;
}

void *sub_100232D24(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v75.receiver = a1;
    v75.super_class = ClipDownloadData;
    v7 = objc_msgSendSuper2(&v75, "init");
    if (v7)
    {
      v8 = sub_100237D58(v5, @"attributes");
      if (v8)
      {
        v83[0] = @"appContentRatingsBySystem";
        v83[1] = @"appsApple";
        v9 = [NSArray arrayWithObjects:v83 count:2];
        v10 = sub_100396BB8(v9);
        v11 = sub_100237DCC(v8, v10);

        if (v11)
        {
          v12 = sub_1002380D8(v11, @"name");
          v13 = v7[7];
          v7[7] = v12;

          v14 = sub_10023790C(v11, @"rank");
          v15 = v7[8];
          v7[8] = v14;
        }

        v16 = sub_1002380D8(v8, @"appName");
        v17 = v7[2];
        v7[2] = v16;

        v18 = sub_1002380D8(v8, @"artistName");
        v19 = v7[3];
        v7[3] = v18;

        v82[0] = @"platformAttributes";
        v82[1] = @"ios";
        v20 = [NSArray arrayWithObjects:v82 count:2];
        v21 = sub_100396BB8(v20);
        v22 = sub_100237DCC(v8, v21);

        if (v22)
        {
          v23 = sub_1002380D8(v22, @"bundleId");
          v24 = v7[4];
          v7[4] = v23;

          v25 = sub_10023790C(v22, @"externalVersionId");
          v26 = v7[5];
          v7[5] = v25;

          v27 = sub_1002380D8(v22, @"appBundleId");
          v28 = v7[6];
          v7[6] = v27;

          v29 = sub_100237778(v22, @"variantsInfo");
          if (v29)
          {
            v65 = v22;
            v66 = v11;
            v67 = v5;
            v68 = v8;
            v30 = v6;
            v64 = v29;
            v31 = v29;
            objc_opt_self();
            v70 = objc_alloc_init(NSMutableDictionary);
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v63 = v31;
            v32 = sub_100396BF0(v31);
            v33 = [v32 countByEnumeratingWithState:&v76 objects:v84 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v77;
              do
              {
                v36 = 0;
                do
                {
                  if (*v77 != v35)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = sub_1001C27FC([ClipDownloadVariant alloc], *(*(&v76 + 1) + 8 * v36));
                  v39 = v37;
                  if (v37)
                  {
                    v40 = objc_getProperty(v37, v38, 40, 1);
                    v41 = v40;
                    if (v40 && [v40 count])
                    {
                      v42 = sub_1002294E0(VariantDescriptor, v30, v41);
                      if (v42)
                      {
                        [v70 setObject:v39 forKeyedSubscript:v42];
                      }
                    }
                  }

                  else
                  {
                    v41 = 0;
                  }

                  v36 = v36 + 1;
                }

                while (v34 != v36);
                v43 = [v32 countByEnumeratingWithState:&v76 objects:v84 count:16];
                v34 = v43;
              }

              while (v43);
            }

            v44 = [v70 allKeys];
            v45 = sub_1002294E0(VariantDescriptor, v30, v44);

            v46 = v45;
            if (v45)
            {
              v47 = [v70 objectForKeyedSubscript:v45];
            }

            else
            {
              v47 = 0;
            }

            v5 = v67;
            v8 = v68;
            v11 = v66;

            v48 = v45;
            v49 = v7[9];
            v7[9] = v47;

            v50 = v7[10];
            v7[10] = v48;

            v29 = v64;
            v22 = v65;
          }
        }
      }

      v51 = sub_100237D58(v5, @"relationships");
      if (v51)
      {
        v69 = v8;
        v81[0] = @"app";
        v81[1] = @"data";
        v52 = [NSArray arrayWithObjects:v81 count:2];
        v53 = sub_100396BB8(v52);
        v54 = sub_100237838(v51, v53);

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v55 = sub_100396BF0(v54);
        v56 = [v55 countByEnumeratingWithState:&v71 objects:v80 count:16];
        if (v56)
        {
          v57 = v56;
          v58 = *v72;
          do
          {
            for (i = 0; i != v57; i = i + 1)
            {
              if (*v72 != v58)
              {
                objc_enumerationMutation(v55);
              }

              v60 = sub_1002380D8(*(*(&v71 + 1) + 8 * i), @"id");
              v61 = v7[1];
              v7[1] = v60;
            }

            v57 = [v55 countByEnumeratingWithState:&v71 objects:v80 count:16];
          }

          while (v57);
        }

        v8 = v69;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *sub_1002332F8(void *a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = [a2 dictionary];
    v7 = sub_100232D24(v3, v6, v5);

    v3 = v7;
  }

  return v3;
}

id sub_1002334B0(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 16, 1);
  }

  return result;
}

id sub_1002335E8()
{
  objc_opt_self();
  if (qword_1005AA860 != -1)
  {
    dispatch_once(&qword_1005AA860, &stru_10051E010);
  }

  v0 = qword_1005AA858;

  return v0;
}

void sub_100233640(id a1)
{
  v1 = objc_alloc_init(AppStoreService);
  v2 = qword_1005AA858;
  qword_1005AA858 = v1;
}

id sub_1002338F0(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_100003B90();
    v2 = [v1 processInfo];
    v3 = [v2 bundleIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id *sub_100234758(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = PurchaseHistoryUpdateRequest;
    v11 = objc_msgSendSuper2(&v13, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a4);
      objc_storeWeak(a1 + 5, v9);
    }
  }

  return a1;
}

void sub_100234810(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4 && *(v4 + 8))
    {
      v5 = [*(a1 + 8) URLForKey:@"purchase-daap/base-url"];
      if (v5 && (v6 = v5, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"databases/%ld/update", [*(a1 + 8) integerForKey:@"purchase-daap/database-id" defaultValue:101]), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "URLByAppendingPathComponent:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, v8))
      {
        v9 = 0;
      }

      else
      {
        v10 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v33 = objc_opt_class();
          v34 = 2114;
          v35 = 0;
          v29 = v33;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@]: Failed to construct request URL error: %{public}@", buf, 0x16u);
        }

        v9 = sub_1002358D4(2, 0);
        v8 = 0;
      }

      v11 = v9;
      if (!v8)
      {
        v16 = sub_1002358D4(2, v11);
        v3[2](v3, 0, v16);
LABEL_27:

        goto LABEL_28;
      }

      v13 = [PurchaseHistoryUpdateDAAPRequestEncoder alloc];
      Property = *(a1 + 16);
      if (Property)
      {
        Property = objc_getProperty(Property, v12, 32, 1);
      }

      v15 = Property;
      v16 = sub_1001FB440(&v13->super.isa, v15);

      v18 = sub_100363298([DAAPURLRequest alloc], v16, v8);
      v19 = *(a1 + 16);
      if (v19)
      {
        v19 = objc_getProperty(v19, v17, 16, 1);
      }

      v21 = v19;
      if (v18)
      {
        objc_setProperty_atomic(v18, v20, v21, 32);
      }

      v23 = *(a1 + 16);
      if (v23)
      {
        v24 = v23[1];
        if (!v18)
        {
LABEL_20:
          if (v23)
          {
            v23 = objc_getProperty(v23, v22, 24, 1);
          }

          v26 = v23;
          if (v18)
          {
            objc_setProperty_atomic(v18, v25, v26, 48);
          }

          v27 = *(a1 + 8);
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_100234B78;
          v30[3] = &unk_10051DCA0;
          v30[4] = a1;
          v31 = v3;
          sub_10036368C(v18, a1, v27, v30);

          goto LABEL_27;
        }
      }

      else
      {
        v24 = 0;
        if (!v18)
        {
          goto LABEL_20;
        }
      }

      v18[5] = v24;
      v23 = *(a1 + 16);
      goto LABEL_20;
    }

    v28 = sub_1002358D4(4, 0);
    v3[2](v3, 0, v28);
  }

LABEL_28:
}

void sub_100234B78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    if ((*(*(a1 + 32) + 36) & 1) != 0 || [v6 code] != 301 || (objc_msgSend(v7, "userInfo"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", AMSErrorUserInfoKeyStatusCode), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "integerValue"), v11, v10, v12 != 401))
    {
      v20 = *(a1 + 40);
      v8 = sub_1002358D4(0, v7);
      (*(v20 + 16))(v20, 0, v8);
      goto LABEL_16;
    }

    *(*(a1 + 32) + 36) = 1;
    v8 = objc_alloc_init(AMSAuthenticateOptions);
    [v8 setAuthenticationType:0];
    v13 = *(*(a1 + 32) + 16);
    if (!v13 || *(v13 + 40) != 1)
    {
      [v8 setAuthenticationType:1];
    }

    v15 = [AMSAuthenticateRequest alloc];
    Property = *(*(a1 + 32) + 16);
    if (Property)
    {
      Property = objc_getProperty(Property, v14, 16, 1);
    }

    v17 = Property;
    v18 = [v15 initWithAccount:v17 options:v8];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100234DC8;
    v21[3] = &unk_10051E040;
    v19 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v19;
    sub_100312610(InteractiveRequestPresenter, v18, v21);

LABEL_15:
    goto LABEL_16;
  }

  v8 = [v5 data];
  v9 = *(a1 + 40);
  if (!v8)
  {
    v18 = sub_1002358D4(0, 0);
    (*(v9 + 16))(v9, 0, v18);
    goto LABEL_15;
  }

  (*(v9 + 16))(v9, v8, 0);
LABEL_16:
}

void sub_100234DC8(uint64_t a1, void *a2, void *a3)
{
  v22 = a3;
  v5 = [a2 account];
  v6 = v5;
  if (v5 && ([v5 ams_DSID], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    Property = *(*(a1 + 32) + 16);
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 32, 1);
    }

    v11 = Property;
    v12 = *(*(a1 + 32) + 16);
    if (v12)
    {
      v13 = v12[1];
      v12 = objc_getProperty(v12, v10, 24, 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = v12;
    v15 = *(*(a1 + 32) + 16);
    if (v15)
    {
      v16 = *(v15 + 40);
    }

    else
    {
      v16 = 0;
    }

    v17 = sub_100382D88(PurchaseHistoryUpdateRequestContext, v11, v13, v6, v14, v16);

    v18 = *(a1 + 32);
    v19 = *(v18 + 16);
    *(v18 + 16) = v17;
    v20 = v17;

    sub_100234810(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    v21 = *(a1 + 40);
    v20 = sub_1002358D4(4, v22);
    (*(v21 + 16))(v21, 0, v20);
  }
}

void sub_100235240(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      Property = *(*(a1 + 32) + 16);
      if (Property)
      {
        Property = objc_getProperty(Property, v8, 16, 1);
      }

      v15 = Property;
      v16 = [v15 hashedDescription];
      v17 = 138543618;
      v18 = v16;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Errored out for auth challenge to:%{public}@ with error:%@", &v17, 0x16u);
    }
  }

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(*(a1 + 32) + 16);
    if (v11)
    {
      v11 = objc_getProperty(v11, v10, 16, 1);
    }

    v12 = v11;
    v13 = [v12 hashedDescription];
    v17 = 138543362;
    v18 = v13;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Received response to authentication challenge for %{public}@", &v17, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100235400(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      Property = *(*(a1 + 32) + 16);
      if (Property)
      {
        Property = objc_getProperty(Property, v8, 16, 1);
      }

      v10 = Property;
      v11 = [v10 hashedDescription];
      v12 = 138543618;
      v13 = v11;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Internal auth failed for %{public}@ with error: %{public}@", &v12, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100235694(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Error in dialog task: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

id sub_1002357E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v7 = NSUnderlyingErrorKey;
    v3 = ASDErrorWithSafeUserInfo();
    v8 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSError errorWithDomain:@"PurchaseHistoryErrorDomain" code:a1 userInfo:v4];

  return v5;
}

id sub_1002358D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v7 = NSUnderlyingErrorKey;
    v3 = ASDErrorWithSafeUserInfo();
    v8 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSError errorWithDomain:@"PurchaseHistoryRequestOperationErrorDomain" code:a1 userInfo:v4];

  return v5;
}

id sub_100235B6C(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_10023E0F8(a1, @"localized_display_names");
    v3 = sub_10023E0F8(v1, @"primary_locale");
    v1 = [ASDBetaAppDisplayNames displayNameWithLocalizedNames:v2 andPrimaryLocale:v3];
  }

  return v1;
}

id sub_100235C00(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_10023E0F8(a1, @"bundle_id");
    v3 = sub_10023E0F8(a1, @"bundle_version");
    v4 = sub_10023E0F8(a1, @"expiration_date");
    v5 = sub_10023E604(a1, @"platform");
    v6 = sub_10023E0F8(a1, @"bundle_short_version");
    v7 = v6;
    if (v2)
    {
      v8 = v3 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || v4 == 0 || v6 == 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = objc_opt_new();
      v24 = [ASDBetaAppVersion versionWithBundleID:v2 bundleVersion:v3 platform:v5 andShortVersion:v7];
      [v11 setVersion:v24];
      [v11 setExpirationDate:v4];
      v23 = sub_10023E0F8(a1, @"email");
      [v11 setTesterEmail:v23];
      v12 = sub_10023E0F8(a1, @"has_shared_screenshot_feedback");
      v13 = [v12 BOOLValue];

      [v11 setSharedFeedback:v13];
      v14 = sub_10023E0F8(a1, @"feedback_enabled");
      v15 = [v14 BOOLValue];

      [v11 setFeedbackEnabled:v15];
      [v11 setIconNeedsMask:{sub_10023E4DC(a1, @"icon_needs_mask"}];
      v16 = sub_10023E0F8(a1, @"icon_url_template");
      [v11 setIconURLTemplate:v16];
      v17 = sub_10023E0F8(a1, @"last_seen_date");
      [v11 setLastWelcomeScreenViewDate:v17];
      v18 = sub_10023E0F8(a1, @"launch_screen_enabled");
      v19 = [v18 BOOLValue];

      [v11 setLaunchScreenEnabled:v19];
      v20 = sub_100235B6C(a1);
      [v11 setDisplayNames:v20];

      v21 = sub_10023E0F8(a1, @"what_to_test");
      [v11 setLocalizedTestNotes:v21];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void *sub_100235EC8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = URLRequest;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

void sub_100235F3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v5 = sub_1002361E0([URLRequestEncoder alloc], *(a1 + 8));
    v6 = *(a1 + 8);
    if (!v6 || (v7 = objc_getProperty(v6, v4, 104, 1)) == 0)
    {
      v7 = sub_10033D0FC(*(a1 + 8));
    }

    v8 = sub_10033D330(*(a1 + 8));
    v9 = sub_10033D554(*(a1 + 8));
    v10 = [v5 requestWithMethod:v8 URL:v9 parameters:v7];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1002360DC;
    v14[3] = &unk_10051E090;
    v14[4] = a1;
    v11 = [v10 thenWithBlock:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100236158;
    v12[3] = &unk_10051E0B8;
    v13 = v3;
    [v11 addFinishBlock:v12];
  }
}

id sub_1002360DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001C73A4();
  v5 = sub_1001C74B8(v4, *(*(a1 + 32) + 8), v3);

  return v5;
}

void sub_100236158(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = ASDErrorWithSafeUserInfo();
  (*(v2 + 16))(v2, v3, v4);
}

uint64_t *sub_1002361E0(uint64_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[BagService appstoredService];
    v5 = [v4 amsBag];
    v18.receiver = a1;
    v18.super_class = URLRequestEncoder;
    a1 = objc_msgSendSuper2(&v18, "initWithBag:", v5);

    if (a1)
    {
      v6 = [v3 copy];
      v7 = a1[1];
      a1[1] = v6;

      [a1 setMescalType:1];
      v8 = sub_10033C8AC(a1[1]);
      [a1 setAccount:v8];

      v9 = sub_10033CA88(a1[1]);
      if (!v9)
      {
        v9 = sub_10000479C();
      }

      [a1 setClientInfo:v9];
      v10 = sub_10033D554(a1[1]);

      if (v10)
      {
        [a1 setUrlKnownToBeTrusted:sub_10033D788(a1[1])];
      }

      [a1 setCompressRequestBody:sub_10033CC4C(a1[1])];
      v11 = sub_10033D0FC(a1[1]);

      if (v11)
      {
        v12 = a1[1];
        if (v12)
        {
          v12 = *(v12 + 88);
        }

        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        [a1 setRequestEncoding:v13];
      }

      v14 = sub_10033CDE4(a1[1]);
      v15 = v14;
      if (v14)
      {
        v16 = [v14 description];
        [a1 setLogUUID:v16];
      }
    }
  }

  return a1;
}

char *sub_100236744(char *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a1)
  {
    v8 = [a1 init];
    a1 = v8;
    if (v8)
    {
      objc_storeStrong((v8 + 50), a4);
      *(a1 + 90) = [v6 persistentID];
      v9 = sub_100340328(v6, @"bundle_id");
      v10 = *(a1 + 58);
      *(a1 + 58) = v9;

      v11 = sub_100340328(v6, @"vendor_name");
      v12 = *(a1 + 138);
      *(a1 + 138) = v11;

      a1[130] = sub_100294244(v6) ^ 1;
      v13 = sub_100340154(v6, @"item_id");
      v14 = *(a1 + 82);
      *(a1 + 82) = v13;

      v15 = sub_1003403A0(v6, @"external_id");
      v16 = *(a1 + 74);
      *(a1 + 74) = v15;

      v17 = sub_100340328(v6, @"log_code");
      v18 = *(a1 + 106);
      *(a1 + 106) = v17;

      *(a1 + 42) = sub_1003402E8(v6, @"account_id");
      *(a1 + 122) = sub_1003402E8(v6, @"software_platform");
      v19 = sub_100340328(v6, @"client_id");
      v20 = *(a1 + 66);
      *(a1 + 66) = v19;

      v21 = sub_1003402E8(v6, @"recovery_count");
      *(a1 + 114) = (v21 & ~(v21 >> 63)) + 1;
    }
  }

  return a1;
}

void sub_100236BB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(a1 + 32) + 98);
      v8 = 138412546;
      v9 = v6;
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@] Cannot start recovery re-purchase: %{public}@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 98);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Started recovery re-purchase", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100236CF8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    v8 = a3;
    v9 = a2;
    v10 = [[PurchaseInfo alloc] initWithBag:v8];

    v11 = [NSNumber numberWithUnsignedInteger:*(a1 + 114)];
    [(PurchaseInfo *)v10 setRecoveryCount:v11];

    v12 = [AMSBuyParams buyParamsWithString:v9];

    [(PurchaseInfo *)v10 setBuyParams:v12];
    [(PurchaseInfo *)v10 setBundleID:*(a1 + 58)];
    [(PurchaseInfo *)v10 setExternalID:*(a1 + 74)];
    [(PurchaseInfo *)v10 setItemID:*(a1 + 82)];
    [(PurchaseInfo *)v10 setLogCode:*(a1 + 106)];
    [(PurchaseInfo *)v10 setMetricsType:&off_1005473B0];
    v13 = [[AMSProcessInfo alloc] initWithBundleIdentifier:*(a1 + 66)];
    [(PurchaseInfo *)v10 setClientInfo:v13];

    [(PurchaseInfo *)v10 setPurchaseType:0];
    v14 = [[LSApplicationRecord alloc] initWithBundleIdentifier:*(a1 + 58) allowPlaceholder:0 error:0];
    if (v14)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    [(PurchaseInfo *)v10 setCoordinatorIntent:v15];
    if (*(a1 + 130) == 1)
    {
      [(PurchaseInfo *)v10 setPriority:0];
      [(PurchaseInfo *)v10 setCoordinatorImportance:2];
    }

    else
    {
      [(PurchaseInfo *)v10 setPriority:-2];
      [(PurchaseInfo *)v10 setCoordinatorImportance:1];
      [(PurchaseInfo *)v10 setDiscretionary:1];
      [(PurchaseInfo *)v10 setSuppressDialogs:1];
      [(PurchaseInfo *)v10 setSuppressEvaluatorDialogs:1];
      v16 = [(PurchaseInfo *)v10 buyParams];
      [v16 setObject:@"1" forKeyedSubscript:AMSBuyParamPropertyIsBackground];
    }

    [(PurchaseInfo *)v10 setExpectedSoftwarePlatform:*(a1 + 122)];
    [(PurchaseInfo *)v10 updateGeneratedProperties];
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(PurchaseInfo *)v10 logKey];
      *buf = 138412290;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Initiating re-purchase for failed install", buf, 0xCu);
    }

    v19 = sub_1001DFF60();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1002370A0;
    v21[3] = &unk_10051E130;
    v22 = v10;
    v23 = v7;
    v20 = v10;
    sub_1001E065C(v19, v20, v21);
  }
}

void sub_100237070(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100236CF8(*(a1 + 32), *(a1 + 40), a2, *(a1 + 48));
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1002370A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 items];
  v7 = [v6 firstObject];

  v8 = [v7 success];
  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) logKey];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Successfully to re-purchased failed install", &v15, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) logKey];
      v15 = 138412546;
      v16 = v14;
      v17 = 2114;
      v18 = v5;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@] Failed to re-purchase failed install error: %{public}@", &v15, 0x16u);
    }

    v12 = *(a1 + 40);
    v13 = [v7 error];
    (*(v12 + 16))(v12, v13);
  }
}

id sub_10023731C()
{
  objc_opt_self();
  v2[0] = @"bundle_id";
  v2[1] = @"clip_affiliate_token";
  v2[2] = @"clip_campaign";
  v2[3] = @"clip_campaign_token";
  v2[4] = @"clip_provider_token";
  v2[5] = @"clip_ref_source";
  v2[6] = @"clip_ref_type";
  v2[7] = @"clip_third_party_with_no_app_referrer";
  v0 = [NSArray arrayWithObjects:v2 count:8];

  return v0;
}

id sub_1002373EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v6 = [v4 rangeOfString:@"." options:4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v9 = [WeakRetained objectForKeyedSubscript:v7];

    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    goto LABEL_24;
  }

  v12 = v6;
  v13 = [v5 substringToIndex:v6];
  v14 = &selRef_deviceManagementPolicyDidChange_;
  v15 = [*(a1 + 16) objectForKeyedSubscript:v13];
  if (!v15)
  {
    v15 = objc_loadWeakRetained((a1 + 8));
    [v13 componentsSeparatedByString:@"."];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v37 = 0u;
    v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v32 = a1;
      v33 = v5;
      v21 = *v35;
      v22 = 1;
      while (2)
      {
        v23 = 0;
        v24 = v15;
        do
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v25 = *(*(&v34 + 1) + 8 * v23);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v15 = [v24 objectForKeyedSubscript:v25];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v11 = 0;
            v5 = v33;
            goto LABEL_23;
          }

          v22 &= isKindOfClass ^ 1;
          v23 = v23 + 1;
          v24 = v15;
        }

        while (v20 != v23);
        v20 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      v5 = v33;
      a1 = v32;
      v14 = &selRef_deviceManagementPolicyDidChange_;
      if ((v22 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }

    v28 = *(a1 + *(v14 + 778));
    if (!v28)
    {
      v29 = [[NSMutableDictionary alloc] initWithCapacity:5];
      v30 = *(v14 + 778);
      v31 = *(a1 + v30);
      *(a1 + v30) = v29;

      v28 = *(a1 + *(v14 + 778));
    }

    [v28 setObject:v15 forKeyedSubscript:v13];
LABEL_31:
  }

  v16 = [v5 substringFromIndex:v12 + 1];
  v17 = [v15 objectForKeyedSubscript:v16];

  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v11 = v18;
LABEL_23:

LABEL_24:

  return v11;
}

id sub_100237778(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    objc_opt_class();
    v2 = sub_1002377EC(v2);
  }

  return v2;
}

void *sub_1002377EC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:?];
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

id sub_100237838(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 _tcr_associatedReader];
    v5 = objc_opt_class();
    v2 = sub_1002373EC(v4, v5, v3);
  }

  return v2;
}

id sub_1002378BC(void *a1, void *a2, id a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = sub_10023790C(a1, a2);
  v5 = v4;
  if (v4)
  {
    a3 = [v4 BOOLValue];
  }

  return a3;
}

id sub_10023790C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_opt_class();
    v4 = sub_1002377EC(a1);
    if (!v4)
    {
      objc_opt_class();
      v5 = sub_1002377EC(a1);
      if (v5)
      {
        v6 = objc_alloc_init(NSNumberFormatter);
        [v6 setNumberStyle:1];
        v4 = [v6 numberFromString:v5];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1002379EC(void *a1, void *a2, id a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = sub_100237A3C(a1, a2);
  v5 = v4;
  if (v4)
  {
    a3 = [v4 BOOLValue];
  }

  return a3;
}

id sub_100237A3C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 _tcr_associatedReader];
    v5 = objc_opt_class();
    v6 = sub_1002373EC(v4, v5, v3);
    if (!v6)
    {
      v7 = objc_opt_class();
      v8 = sub_1002373EC(v4, v7, v3);
      if (v8)
      {
        v9 = objc_alloc_init(NSNumberFormatter);
        [v9 setNumberStyle:1];
        v6 = [v9 numberFromString:v8];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100237B38(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_opt_class();
    v4 = sub_1002377EC(a1);
    if (!v4)
    {
      objc_opt_class();
      v5 = sub_1002377EC(a1);
      if (v5)
      {
        v4 = [[NSData alloc] initWithBase64EncodedString:v5 options:0];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100237C00(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 _tcr_associatedReader];
    v5 = objc_opt_class();
    v6 = sub_1002373EC(v4, v5, v3);
    if (!v6)
    {
      v7 = objc_opt_class();
      v8 = sub_1002373EC(v4, v7, v3);
      if (v8)
      {
        v6 = [[NSData alloc] initWithBase64EncodedString:v8 options:0];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100237CE4(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    objc_opt_class();
    v2 = sub_1002377EC(v2);
  }

  return v2;
}

id sub_100237D58(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    objc_opt_class();
    v2 = sub_1002377EC(v2);
  }

  return v2;
}

id sub_100237DCC(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 _tcr_associatedReader];
    v5 = objc_opt_class();
    v2 = sub_1002373EC(v4, v5, v3);
  }

  return v2;
}

double sub_100237E50(void *a1, void *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = sub_10023790C(a1, a2);
  [v2 floatValue];
  v4 = v3;

  LODWORD(result) = v4;
  return result;
}

id sub_100237E9C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_opt_class();
    v4 = sub_1002377EC(a1);
    if (!v4)
    {
      objc_opt_class();
      v5 = sub_1002377EC(a1);
      if (v5)
      {
        v8 = 0;
        v6 = [NSScanner scannerWithString:v5];
        v4 = 0;
        if ([v6 scanInteger:&v8])
        {
          v4 = [NSNumber numberWithInteger:v8];
        }
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100237FA0(void *a1, void *a2, id a3)
{
  v5 = a2;
  if (a1)
  {
    objc_opt_class();
    v6 = sub_1002377EC(a1);
    if (!v6)
    {
      objc_opt_class();
      v6 = sub_1002377EC(a1);
    }

    if (objc_opt_respondsToSelector())
    {
      a3 = [v6 integerValue];
    }
  }

  else
  {
    a3 = 0;
  }

  return a3;
}

BOOL sub_100238058(_BOOL8 a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    objc_opt_class();
    v4 = sub_1002377EC(v2);

    v5 = +[NSNull null];
    v2 = v4 == v5;
  }

  return v2;
}

id sub_1002380D8(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    objc_opt_class();
    v2 = sub_1002377EC(v2);
  }

  return v2;
}

id sub_10023814C(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 _tcr_associatedReader];
    v5 = objc_opt_class();
    v2 = sub_1002373EC(v4, v5, v3);
  }

  return v2;
}

id sub_1002381D0(id result, void *a2)
{
  if (result)
  {
    v2 = sub_10023790C(result, a2);
    v3 = [v2 unsignedLongLongValue];

    return v3;
  }

  return result;
}

id sub_100238210(void *a1, void *a2)
{
  if (a1)
  {
    v2 = sub_1002380D8(a1, a2);
    if (v2)
    {
      v3 = [NSURL URLWithString:v2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10023836C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  network_usage_policy_create_client();
  v3 = dispatch_semaphore_create(0);
  [@"com.apple.AppStore" UTF8String];
  v4 = v2;
  v5 = v3;
  network_use_flow = perform_first_network_use_flow();
  if (network_use_flow)
  {
    v7 = network_use_flow;
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v4;
      v15 = 1024;
      v16 = v7;
      v10 = v12;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to present first usage dialog for: %{public}@ error: %d", buf, 0x1Cu);
    }
  }

  else
  {
    v9 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v5, v9);
  }

  network_usage_policy_destroy_client();
}

intptr_t sub_10023854C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = *(a1 + 32);
      v8 = 138543618;
      v9 = v4;
      v10 = 2114;
      v11 = v5;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Presenting first usage dialog for: %{public}@", &v8, 0x16u);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

PurchaseInfo *sub_10023862C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    v7 = 0;
    goto LABEL_37;
  }

  v6 = a3;
  v7 = [[PurchaseInfo alloc] initWithBag:v6];

  [(PurchaseInfo *)v7 setRequestToken:v5];
  [(PurchaseInfo *)v7 setPurchase:a1];
  v8 = [a1 presentingSceneBundleIdentifier];
  [(PurchaseInfo *)v7 setPresentingSceneBundleIdentifier:v8];

  v9 = [a1 presentingSceneIdentifier];
  [(PurchaseInfo *)v7 setPresentingSceneIdentifier:v9];

  -[PurchaseInfo setShouldAskForRatingException:](v7, "setShouldAskForRatingException:", [a1 shouldAskForRatingException]);
  -[PurchaseInfo setAgeRatingValue:](v7, "setAgeRatingValue:", [a1 ageRatingValue]);
  -[PurchaseInfo setForceAskToBuyReason:](v7, "setForceAskToBuyReason:", [a1 forceAskToBuyReason]);
  v10 = [AMSBuyParams alloc];
  v11 = [a1 buyParameters];
  v12 = [v10 initWithString:v11];
  [(PurchaseInfo *)v7 setBuyParams:v12];

  v13 = [a1 remoteDownloadIdentifiers];
  if ([v13 count])
  {
    v14 = [v13 componentsJoinedByString:{@", "}];
    v15 = [(PurchaseInfo *)v7 buyParams];
    [v15 setParameter:v14 forKey:@"remoteDownloadIdentifiers"];

    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(PurchaseInfo *)v7 buyParams];
      v58 = 138477827;
      v59 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "buyParams after setting remoteDownloadIdentifiers = %{private}@", &v58, 0xCu);
    }
  }

  v18 = [a1 metricsOverlay];
  [(PurchaseInfo *)v7 setMetricsOverlay:v18];

  v19 = [a1 performanceMetricsOverlay];
  [(PurchaseInfo *)v7 setPerformanceMetricsOverlay:v19];

  if ([a1 isDSIDLess])
  {
    v20 = 1;
  }

  else
  {
    v21 = [a1 bagKey];
    if (v21)
    {
      v22 = [a1 bagKey];
      v20 = [v22 isEqualToString:@"downloadProduct"];
    }

    else
    {
      v20 = 0;
    }
  }

  -[PurchaseInfo setRequireUniversal:](v7, "setRequireUniversal:", [a1 installUniversalVariant]);
  v23 = [a1 bundleID];
  [(PurchaseInfo *)v7 setBundleID:v23];

  v24 = [a1 vendorName];
  [(PurchaseInfo *)v7 setVendorName:v24];

  v25 = [a1 itemName];
  [(PurchaseInfo *)v7 setItemName:v25];

  if ([a1 isUpdate])
  {
    [(PurchaseInfo *)v7 setPurchaseType:4];
    [(PurchaseInfo *)v7 setLogCode:@"UPD"];
    if ([a1 isBackgroundUpdate])
    {
      [(PurchaseInfo *)v7 setDiscretionary:1];
      [(PurchaseInfo *)v7 setUpdateType:1];
      v26 = &off_1005473C8;
    }

    else
    {
      [(PurchaseInfo *)v7 setUpdateType:2];
      v26 = &off_1005473E0;
    }
  }

  else
  {
    if (!v20)
    {
      [(PurchaseInfo *)v7 setPurchaseType:0];
      v54 = [(PurchaseInfo *)v7 buyParams];
      v55 = [v54 parameterForKey:AMSBuyParamPropertyPricingParameters];
      v56 = [v55 isEqualToString:@"GAME"];

      if (v56)
      {
        [(PurchaseInfo *)v7 setArcade:1];
        v57 = @"ABY";
      }

      else
      {
        v57 = @"BUY";
      }

      [(PurchaseInfo *)v7 setLogCode:v57];
      if (v5)
      {
        goto LABEL_19;
      }

LABEL_46:
      Property = 0;
      goto LABEL_20;
    }

    [(PurchaseInfo *)v7 setPurchaseType:2];
    [(PurchaseInfo *)v7 setLogCode:@"DIS"];
    v26 = &off_1005473F8;
  }

  [(PurchaseInfo *)v7 setMetricsType:v26];
  if (!v5)
  {
    goto LABEL_46;
  }

LABEL_19:
  Property = objc_getProperty(v5, v27, 24, 1);
LABEL_20:
  v29 = Property;
  [(PurchaseInfo *)v7 setExternalID:v29];

  v30 = [a1 accountIdentifier];
  v31 = v30;
  if (v30 && ([v30 isEqualToNumber:&off_100547410] & 1) == 0)
  {
    v32 = +[ACAccountStore ams_sharedAccountStore];
    v33 = [v32 ams_iTunesAccountWithDSID:v31];
    [(PurchaseInfo *)v7 setAccount:v33];
  }

  v34 = [a1 affiliateIdentifier];

  if (v34)
  {
    v35 = [(PurchaseInfo *)v7 buyParams];
    [v35 setParameter:AMSBuyParamPropertyAffiliateId forKey:AMSBuyParamPropertyAffiliateId];
  }

  v36 = [a1 itemID];
  [(PurchaseInfo *)v7 setItemID:v36];

  v37 = [(PurchaseInfo *)v7 itemID];

  if (!v37)
  {
    v38 = [(PurchaseInfo *)v7 buyParams];
    v39 = sub_1003B346C(v38, AMSBuyParamPropertyItemId);
    [(PurchaseInfo *)v7 setItemID:v39];
  }

  v40 = v5;
  v41 = [a1 clientID];

  if (!v41)
  {
    v44 = [v40 processInfo];
    if (v44)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v42 = [AMSProcessInfo alloc];
  v43 = [a1 clientID];
  v44 = [v42 initWithBundleIdentifier:v43];

  if (!v44)
  {
LABEL_29:
    v44 = sub_10000479C();
  }

LABEL_30:

  [(PurchaseInfo *)v7 setClientInfo:v44];
  v45 = [(PurchaseInfo *)v7 clientInfo];
  v46 = [v45 bundleIdentifier];
  v47 = [v46 isEqual:@"com.apple.AppStoreDaemon.ASDAskPermissionExtension"];

  if (v47)
  {
    v48 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v58) = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Updating to use interactive dialogs", &v58, 2u);
    }

    [(PurchaseInfo *)v7 setUseLocalAuthAndInteractiveDialogs:1];
  }

  v49 = [a1 additionalHeaders];
  v50 = [v49 copy];
  [(PurchaseInfo *)v7 setAdditionalHeaders:v50];

  if ([a1 forceWatchInstall])
  {
    [(PurchaseInfo *)v7 setAutoInstallOverride:2];
  }

  [a1 softwarePlatform];
  [(PurchaseInfo *)v7 setExpectedSoftwarePlatform:1];
  -[PurchaseInfo setPurchaseOnly:](v7, "setPurchaseOnly:", [a1 createsJobs] ^ 1);
  v51 = [a1 appCapabilities];
  v52 = [v51 copy];
  [(PurchaseInfo *)v7 setAppCapabilities:v52];

  [(PurchaseInfo *)v7 updateGeneratedProperties];
LABEL_37:

  return v7;
}

id sub_100239460(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 completeWithError:a2];
  }

  else
  {
    return [v2 completeWithSuccess];
  }
}

_BYTE *sub_1002394D0(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    [result willChangeValueForKey:@"isFinished"];
    [v1 willChangeValueForKey:@"isExecuting"];
    [v1 lock];
    v1[40] = 0;
    v1[41] = 1;
    [v1 unlock];
    [v1 didChangeValueForKey:@"isExecuting"];

    return [v1 didChangeValueForKey:@"isFinished"];
  }

  return result;
}

void sub_100239660(id a1, int64_t a2, int64_t *a3, id *a4)
{
  if (a2 <= 13999)
  {
    if (!a2)
    {
      v4 = &stru_10051E1D8;
LABEL_12:
      v5 = 19000;
      goto LABEL_13;
    }

    if (a2 != 13005)
    {
      return;
    }

    v4 = &stru_10051E1F8;
    v5 = 14000;
  }

  else
  {
    switch(a2)
    {
      case 14000:
        v4 = &stru_10051E218;
        v5 = 15000;
        break;
      case 15000:
        v4 = &stru_10051E238;
        v5 = 15001;
        break;
      case 15001:
        v4 = &stru_10051E258;
        goto LABEL_12;
      default:
        return;
    }
  }

LABEL_13:
  *a3 = v5;
  v6 = *a4;
  *a4 = v4;
}

void sub_1002396FC(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"CREATE TABLE IF NOT EXISTS beta_app_info (pid INTEGER PRIMARY KEY, bundle_id TEXT, bundle_version TEXT, bundle_short_version TEXT, email TEXT, expiration_date DATETIME,feedback_enabled INTEGER, has_shared_screenshot_feedback INTEGER, icon_needs_mask INTEGER default 0, icon_url_template TEXT, last_seen_date DATETIME, launch_screen_enabled INTEGER, localized_display_names JSON, platform INTEGER DEFAULT 0, primary_locale TEXT, seen_count INTEGER, what_to_test JSON);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS beta_app_feedback (pid INTEGER PRIMARY KEY, account_dsid INTEGER NOT NULL, attempt_count INTEGER DEFAULT 0, app_version BLOB, beta_build_group_id TEXT, feedback BLOB, is_app_clip INTEGER DEFAULT 0, log_key TEXT, next_retry_date DATETIME, pending_image_uploads BLOB, state INTEGER, successful_image_uploads BLOB, item_id INTEGER DEFAULT 0);", 1, 0);
    v2 = v3;
  }
}

void sub_100239764(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE beta_app_feedback ADD COLUMN is_app_clip INTEGER;", 1, 0);
  }
}

void sub_100239788(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE beta_app_info ADD COLUMN platform INTEGER;", 1, 0);
  }
}

void sub_1002397AC(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE beta_app_feedback ADD COLUMN beta_build_group_id TEXT;", 1, 0);
  }
}

void sub_1002397D0(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE beta_app_info ADD COLUMN icon_needs_mask INTEGER DEFAULT 0;", 1, 0);
  }
}

void *sub_1002397F4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = PushConnectionMessageHistory;
    a1 = objc_msgSendSuper2(&v15, "init");
    if (a1)
    {
      objc_initWeak(&location, a1);
      v6 = objc_alloc_init(UnfairLock);
      v7 = a1[2];
      a1[2] = v6;

      v8 = [NSMutableArray arrayWithCapacity:11];
      v9 = a1[3];
      a1[3] = v8;

      v10 = dispatch_get_global_queue(21, 0);
      objc_copyWeak(v13, &location);
      v12 = v5;
      v13[1] = a3;
      a1[1] = os_state_add_handler();

      objc_destroyWeak(v13);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

_DWORD *sub_10023995C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_1002810F4(LogPushConnection, *(a1 + 32), WeakRetained[4]);
    v4 = WeakRetained[2];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100239A80;
    v9[3] = &unk_10051B570;
    v10 = WeakRetained;
    v5 = v3;
    v11 = v5;
    sub_100379C5C(v4, v9);
    v6 = *(a1 + 48);
    if (v6 == 2 || v6 == 1)
    {
      v7 = sub_100396684(v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100239A80(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) description];
        sub_100284E8C(v7, v8);

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100239BE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100239C8C;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    sub_100379C5C(v5, v6);
  }
}

id sub_100239C8C(uint64_t a1)
{
  [*(*(a1 + 32) + 24) insertObject:*(a1 + 40) atIndex:0];
  result = [*(*(a1 + 32) + 24) count];
  if (result >= 0xB)
  {
    v3 = *(*(a1 + 32) + 24);

    return [v3 removeLastObject];
  }

  return result;
}

char *sub_100239D44(char *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  if (a1)
  {
    v9 = sub_1002EA968(a1, a3, a4);
    v10 = v9;
    if (v9)
    {
      objc_storeStrong((v9 + 58), a2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_100239F5C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && !v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v7;
    v13 = v10;
    if (v11)
    {
      if ([v12 statusCode] == 200)
      {
        v14 = [v12 allHeaderFields];
        v15 = [v14 objectForKeyedSubscript:@"x-icloud-versionid"];

        if (v15)
        {
          v16 = objc_opt_new();
          v17 = *(v11 + 58);
          if (v17)
          {
            v17 = v17[3];
          }

          v18 = v17;
          v19 = [v18 absoluteString];
          sub_1001D59F8(v16, v19);

          sub_1001D5A10(v16, v15);
          v20 = *(v11 + 66);
          *(v11 + 66) = v16;

          v13[2](v13, 0);
        }

        else
        {
          v26 = *(v11 + 58);
          if (v26)
          {
            v26 = v26[3];
          }

          v27 = v26;
          v28 = *(v11 + 42);
          v29 = sub_10020272C(v28);
          v30 = [v29 appVersion];
          v31 = [NSString stringWithFormat:@"Successfully uploaded image to %@ for %@ but failed to find the versionid header", v27, v30];

          v32 = ASDErrorWithDescription();
          (v13)[2](v13, v32);

          v15 = 0;
        }
      }

      else
      {
        v22 = *(v11 + 42);
        v23 = sub_10020272C(v22);
        v24 = [v23 appVersion];
        v15 = [NSString stringWithFormat:@"Failed to upload the image for %@", v24];

        [v12 statusCode];
        v25 = ASDErrorWithDescription();
        (v13)[2](v13, v25);
      }
    }
  }

  else
  {
    v21 = *(a1 + 40);
    v12 = ASDErrorWithSafeUserInfo();
    (*(v21 + 16))(v21, v12);
  }
}

id sub_10023A2DC()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023A380;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AA870 != -1)
  {
    dispatch_once(&qword_1005AA870, block);
  }

  v0 = qword_1005AA868;

  return v0;
}

void sub_10023A380(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AA868;
  qword_1005AA868 = v1;
}

void sub_10023A63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10023A6B8(uint64_t a1)
{
  if (a1)
  {
    v1 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Synchronizing shared defaults to watch.", &v4, 0xCu);
    }

    v2 = objc_opt_new();
    v3 = sub_10023A7AC();
    [v2 synchronizeUserDefaultsDomain:@"com.apple.appstored" keys:v3];
  }
}

id sub_10023A7AC()
{
  objc_opt_self();
  v3[0] = @"ForceAppDRMMode";
  v3[1] = @"CellularSettings";
  v3[2] = @"ActiveCompanionSim";
  v0 = [NSArray arrayWithObjects:v3 count:3];
  v1 = [NSSet setWithArray:v0];

  return v1;
}

void sub_10023A870(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"WatchSettingsManagerSettingsChangedExternallyNotification" object:0];
}

void sub_10023A8C4(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received a notification that preferences have changed externally.", &v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Received notification that settings changed externally.", &v6, 0xCu);
    }

    dispatch_async(WeakRetained[1], &stru_10051E2C8);
  }
}

void *sub_10023AB14(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = ArcadeAppLaunchEvent;
    v10 = objc_msgSendSuper2(&v13, "init");
    a1 = v10;
    if (v10)
    {
      sub_10023E000(v10, v7, @"bundle_id");
      sub_10023E000(a1, v8, @"source_bundle_id");
      v11 = +[NSDate now];
      sub_10023E000(a1, v11, @"timestamp");

      if (v9)
      {
        sub_10023E000(a1, v9, @"payload");
      }
    }
  }

  return a1;
}

id sub_10023AC10(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_10023AC48(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"source_bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_10023AC80(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"payload");
    v1 = vars8;
  }

  return a1;
}

id sub_10023ACB8(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E590(a1, @"timestamp");
    v1 = vars8;
  }

  return a1;
}

id sub_10023ADE8()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023AE8C;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AA878 != -1)
  {
    dispatch_once(&qword_1005AA878, block);
  }

  v0 = qword_1005AA880;

  return v0;
}

void sub_10023AE8C()
{
  if (os_variant_has_internal_content() && (objc_opt_self(), sub_1003D4754()))
  {
    v0 = sub_1003E4A78();
  }

  else
  {
    v0 = sub_100261E14();
  }

  v1 = qword_1005AA880;
  qword_1005AA880 = v0;
}

uint64_t sub_10023AF14(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 208), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023AF64(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;

  v6 = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
}

void sub_10023AFBC(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 208), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023B04C(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 224), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023B09C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 224), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023B12C(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 240), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023B17C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 240), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023B20C(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 256), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023B25C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 256), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023B2EC(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 272), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023B33C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 272), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023B3CC(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 288), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023B41C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 288), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023B4AC(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 304), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023B4FC(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 304), src, sub_10023AF64);
  }

  else
  {
  }
}

void sub_10023B58C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 320), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023B61C(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 336), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023B66C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 336), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023B6FC(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 352), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023B74C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 352), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023B7DC(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 368), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023B82C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 368), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023B8BC(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 384), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023B90C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 384), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023B99C(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 400), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023B9EC(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 400), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023BA7C(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 416), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023BACC(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 416), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023BB5C(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 432), sub_10000455C);
    return v1;
  }

  return result;
}

uint64_t sub_10023BBAC(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 448), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023BBFC(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 448), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023BC8C(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 464), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023BCDC(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 464), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023BD6C(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 480), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023BDBC(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 480), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023BE4C(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 496), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023BE9C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 496), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023BF2C(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 512), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023BF7C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 512), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023C00C(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 528), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023C05C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 528), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023C0EC(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 544), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023C13C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 544), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023C1CC(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 560), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023C21C(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 560), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023C2AC(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 576), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023C2FC(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 576), src, sub_10023AF64);
  }

  else
  {
  }
}

uint64_t sub_10023C38C(uint64_t result)
{
  if (result)
  {
    objc_copyCppObjectAtomic(&v1, (result + 592), sub_10000455C);
    return v1;
  }

  return result;
}

void sub_10023C3DC(uint64_t a1, void *a2, void *a3)
{
  src[0] = a2;
  src[1] = a3;
  if (a1)
  {
    objc_copyCppObjectAtomic((a1 + 592), src, sub_10023AF64);
  }

  else
  {
  }
}

void sub_10023C754(id a1)
{
  v1 = objc_alloc_init(DeviceStateMonitor);
  v2 = qword_1005AA888;
  qword_1005AA888 = v1;
}

void sub_10023CA14(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = sub_10023D458(*(a1 + 32), @"Migration");
    v4 = ASDLogHandleForCategory();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Device] Data migration already completed", buf, 2u);
      }

      v2[20] = 1;
    }

    else
    {
      if (v5)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Device] Waiting for data migration to complete", buf, 2u);
      }

      v6 = dispatch_get_global_queue(21, 0);
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_10023D8D0;
      v26 = &unk_10051AF98;
      v27[0] = v2;
      dispatch_async(v6, &v23);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      *(v7 + 16) = -1;
      objc_initWeak(buf, v7);
      v8 = *(v7 + 8);
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_1000066D4;
      v26 = &unk_10051DDD0;
      objc_copyWeak(v27, buf);
      v9 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v7 + 16), v8, &v23);
      if (v9)
      {
        v10 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v29 = 67109120;
          v30 = v9;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[Device] Registration for device lock status notification failed: %u", v29, 8u);
        }
      }

      else
      {
        sub_100006720(v7);
      }

      objc_destroyWeak(v27);
      objc_destroyWeak(buf);
    }
  }

  v11 = +[LAEnvironment currentUser];
  v13 = *(a1 + 32);
  v12 = (a1 + 32);
  [v11 addObserver:v13];

  v14 = +[LAEnvironment currentUser];
  v15 = [v14 state];
  v16 = [v15 biometry];
  *(*v12 + 22) = [v16 isLockedOut];

  v17 = *v12;
  if (*v12)
  {
    v18 = +[NSNotificationCenter defaultCenter];
    v19 = BYSetupAssistantFinishedDarwinNotification;
    [v18 addObserver:v17 selector:"_handleSetupAssistantNotification:" name:BYSetupAssistantFinishedDarwinNotification object:0];
    if ((BYSetupAssistantNeedsToRun() & 1) == 0)
    {
      [v18 removeObserver:v17 name:v19 object:0];
      *(v17 + 24) = 1;
      v20 = ASDLogHandleForCategory();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

      if (v21)
      {
        v22 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v23) = 0;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[Device] Setup assistant is already completed", &v23, 2u);
        }
      }
    }
  }
}

void sub_10023CDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10023CF04(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v3 + 22) != v4)
  {
    v13 = v1;
    v14 = v2;
    *(v3 + 22) = v4;
    v6 = *(a1 + 40);
    v7 = ASDLogHandleForCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6 == 1)
    {
      if (v8)
      {
        v12 = 0;
        v9 = "[Device] Device entered bio lockout";
        v10 = &v12;
LABEL_9:
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v9, v10, 2u);
      }
    }

    else if (v8)
    {
      v11 = 0;
      v9 = "[Device] Device left bio lockout";
      v10 = &v11;
      goto LABEL_9;
    }

    sub_100006898(*(a1 + 32));
  }
}

uint64_t sub_10023CFD0(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10023D088;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_10023D0B0(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10023D168;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_10023D17C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  SessionTimeWindows = AKSIdentityGetSessionTimeWindows();
  if (SessionTimeWindows)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v3 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10023D09C;
    block[3] = &unk_10051B638;
    block[4] = a1;
    block[5] = &v8;
    dispatch_sync(v3, block);
    v4 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
    if (v4 != 1)
    {
      return 1;
    }

    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping duration check, device is in lockout", block, 2u);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = SessionTimeWindows ^ 1u;

  return v6;
}

uint64_t sub_10023D364(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10023D41C;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_10023D41C(uint64_t a1)
{
  result = sub_10023D458(*(a1 + 32), @"restoreFailures");
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10023D458(id result, void *a2)
{
  if (result)
  {
    v2 = a2;
    v3 = sub_1003D51A4();
    v4 = [v3 objectForKeyedSubscript:v2];

    objc_opt_class();
    v5 = sub_1001C09E4(v4);
    v6 = [v5 BOOLValue];

    return v6;
  }

  return result;
}

void sub_10023D4F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10023D594;
    v6[3] = &unk_10051B790;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

uint64_t sub_10023D594(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = sub_10023D458(*(a1 + 32), @"fsEntitlements");
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t sub_10023D5E0(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10023D698;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_10023D6AC(uint64_t a1)
{
  if (a1)
  {
    sub_10023D6C0(a1, @"fsEntitlements");
  }
}

void sub_10023D6C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10023D770;
  v6[3] = &unk_10051B570;
  v6[4] = a1;
  v5 = v3;
  v7 = v5;
  dispatch_async(v4, v6);
}

void sub_10023D75C(uint64_t a1)
{
  if (a1)
  {
    sub_10023D6C0(a1, @"restoreFailures");
  }
}

void sub_10023D77C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_1003D51A4();
    v5 = [v4 mutableCopy];

    v6 = [v5 objectForKeyedSubscript:v3];
    objc_opt_class();
    v7 = sub_1001C09E4(v6);
    v8 = [v7 BOOLValue];

    if ((v8 & 1) == 0)
    {
      [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:v3];
      sub_1003D51F0(AppDefaultsManager, v5);
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138543362;
        v11 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[Device] Marked once per boot complete for: %{public}@", &v10, 0xCu);
      }
    }
  }
}

void sub_10023D8D0(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = off_1005AA898;
  v11 = off_1005AA898;
  if (!off_1005AA898)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10023DC08;
    v7[3] = &unk_10051E318;
    v7[4] = &v8;
    sub_10023DC08(v7);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v5);
  }

  v2();
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023DA10;
  block[3] = &unk_10051AF98;
  block[4] = v3;
  dispatch_async(v4, block);
}

void sub_10023DA10(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Device] Data migration has now completed", v3, 2u);
  }

  *(*(a1 + 32) + 20) = 1;
  sub_10023D77C(*(a1 + 32), @"Migration");
  sub_100006898(*(a1 + 32));
}

void sub_10023DB18(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:BYSetupAssistantFinishedDarwinNotification object:0];
  *(*(a1 + 32) + 24) = 1;
  v3 = ASDLogHandleForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Device] Setup assistant has been completed", v6, 2u);
    }
  }

  sub_100006898(*(a1 + 32));
}

void *sub_10023DC08(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1005AA8A0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10023DD48;
    v5[4] = &unk_10051BD00;
    v5[5] = v5;
    v6 = off_10051E338;
    v7 = 0;
    qword_1005AA8A0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1005AA8A0;
    if (qword_1005AA8A0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1005AA8A0;
LABEL_5:
  result = dlsym(v2, "DMPerformMigrationIfNeeded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1005AA898 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10023DD48()
{
  result = _sl_dlopen();
  qword_1005AA8A0 = result;
  return result;
}

void sub_10023DF24(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 getValuesForProperties:?];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10023DFE4;
    v4[3] = &unk_10051D338;
    v4[4] = a1;
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
  }
}

id sub_10023DFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 16);
  if (a3)
  {
    return [v3 setObject:a3 forKey:a2];
  }

  else
  {
    return [v3 removeObjectForKey:a2];
  }
}

void sub_10023E000(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 16);
    if (v7)
    {
      [v6 setObject:v7 forKey:v5];
    }

    else
    {
      [v6 removeObjectForKey:v5];
    }
  }
}

void sub_10023E07C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 24);
    if (v7)
    {
      [v6 setObject:v7 forKey:v5];
    }

    else
    {
      [v6 removeObjectForKey:v5];
    }
  }
}

id sub_10023E0F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 16) objectForKeyedSubscript:v3];
    if (v4)
    {
      goto LABEL_12;
    }

    v5 = *(a1 + 32);
    if (v5 && ([v5 containsObject:v3] & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = [v6 databaseEntityClass];
      if (v7 == objc_opt_class())
      {
        NSStringFromClass(v6);
      }

      else
      {
        [v7 databaseTable];
      }
      v8 = ;
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v11 = 138543618;
        v12 = v8;
        v13 = 2114;
        v14 = v3;
        _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Memory entity loaded from entity missing property: %{public}@.%{public}@", &v11, 0x16u);
      }
    }
  }

  v4 = 0;
LABEL_12:

  return v4;
}

id *sub_10023E258(id *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = [a1[3] objectForKeyedSubscript:a2];
    v2 = vars8;
  }

  return a1;
}

uint64_t sub_10023E4DC(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = sub_10023E51C(result, a2);
    v3 = [v2 BOOLValue];

    return v3;
  }

  return result;
}

id sub_10023E51C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = sub_10023E0F8(a1, a2);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10023E590(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = sub_10023E0F8(a1, a2);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10023E604(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = sub_10023E51C(result, a2);
    v3 = [v2 integerValue];

    return v3;
  }

  return result;
}

id sub_10023E644(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = sub_10023E0F8(a1, a2);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10023E6B8(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = sub_10023E0F8(a1, a2);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10023E72C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = sub_10023E0F8(a1, a2);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10023E7A0(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = sub_10023E0F8(a1, a2);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

PurchaseHistoryHideShowRequestContext *sub_10023E8E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  objc_opt_self();
  v10 = [PurchaseHistoryHideShowRequestContext alloc];
  v11 = v9;
  v12 = v8;
  v13 = v7;
  if (v10)
  {
    v17.receiver = v10;
    v17.super_class = PurchaseHistoryHideShowRequestContext;
    v10 = objc_msgSendSuper2(&v17, "init");
    if (v10)
    {
      v14 = [v11 copy];
      items = v10->_items;
      v10->_items = v14;

      objc_storeStrong(&v10->_account, a3);
      objc_storeStrong(&v10->_clientInfo, a4);
    }
  }

  return v10;
}

id *sub_10023EA38(id *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = NSTemporaryDirectory();
    v5 = +[NSProcessInfo processInfo];
    v6 = [v5 globallyUniqueString];

    v7 = [NSString stringWithFormat:@"%@%@", v4, v6];
    v8 = v7;
    v15.receiver = v2;
    v15.super_class = ODRPreallocatedFile;
    v9 = objc_msgSendSuper2(&v15, "init");
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 6, v7);
      *(v10 + 1) = 0u;
      *(v10 + 3) = 0u;
      v10[1] = 0x300000002;
      v10[2] = 0;
      v10[3] = a2;
      v11 = open([v8 UTF8String], 514, 0);
      *(v10 + 10) = v11;
      if (!v11)
      {
        v14 = *__error();
        v12 = @"Failed to create preallocation file with error %d.";
        goto LABEL_7;
      }

      if (fcntl(v11, 42, v10 + 1) == -1)
      {
        close(*(v10 + 10));
        v12 = @"Failed to preallocate file.";
LABEL_7:
        [NSException raise:@"ODRPreallocatedFileException" format:v12, v14];
      }
    }

    v2 = v10;
  }

  return v2;
}

uint64_t start()
{
  _set_user_dir_suffix();
  v0 = dispatch_get_global_queue(25, 0);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v0);

  dispatch_source_set_event_handler(v1, &stru_10051E350);
  dispatch_activate(v1);
  v2 = dispatch_get_global_queue(21, 0);
  dispatch_async(v2, &stru_10051E370);

  CFRunLoopRun();
  return 0;
}

void sub_10023ECC8(id a1)
{
  v1 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Received SIGTERM, stopping appstored", v2, 2u);
  }

  exit(0);
}

void sub_10023ED2C(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = sub_10037F164();
  sub_10037F38C(v2);

  objc_autoreleasePoolPop(v1);
}

void sub_10023EDE4(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v4 = objc_opt_self();
  v5 = sub_10023EE60(v4, a3);
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 8);
    if (v7)
    {
      [*(v7 + 8) addOperation:v8];
    }
  }
}

id sub_10023EE60(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  if (qword_1005AA8B8 != -1)
  {
    dispatch_once(&qword_1005AA8B8, &stru_10051E390);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10023F134;
  v11 = sub_10023F144;
  v12 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023F14C;
  block[3] = &unk_10051E3B8;
  block[4] = &v7;
  block[5] = a2;
  block[6] = v3;
  dispatch_sync(qword_1005AA8A8, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_10023EF88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = objc_opt_self();
  v8 = sub_10023EE60(v7, a3);
  sub_10023F004(v8, v6, a4);
}

void sub_10023F004(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 8);
    v7 = a2;
    v5 = a2;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    if (v4)
    {
      [*(v4 + 8) addOperations:v6 waitUntilFinished:{a3, v7}];
    }
  }
}

void sub_10023F0B0(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.ondemandresources.ODRTaskQueue.managementQueue", v1);
  v3 = qword_1005AA8A8;
  qword_1005AA8A8 = v2;

  v4 = [[NSMutableDictionary alloc] initWithCapacity:5];
  v5 = qword_1005AA8B0;
  qword_1005AA8B0 = v4;
}

uint64_t sub_10023F134(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10023F14C(uint64_t a1)
{
  v2 = qword_1005AA8B0;
  v3 = [NSNumber numberWithInteger:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = objc_alloc_init(ODRTaskQueue);
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(a1 + 40);
    v11 = *(*(*(a1 + 32) + 8) + 40);
    objc_opt_self();
    v12 = __ROR8__(v10 - 9, 3);
    if (v12 > 3)
    {
      v13 = "default";
    }

    else
    {
      v13 = off_10051E3D8[v12];
    }

    v14 = [NSString stringWithFormat:@"com.apple.ondemandresources.ODRTaskQueue.%sQueue", v13];
    if (v11)
    {
      v15 = *(v11 + 8);
      if (v15)
      {
        [*(v15 + 8) setName:v14];
      }
    }

    v16 = *(*(*(a1 + 32) + 8) + 40);
    if (v16)
    {
      v17 = *(v16 + 8);
      if (v17)
      {
        [*(v17 + 8) setQualityOfService:*(a1 + 40)];
        v16 = *(*(*(a1 + 32) + 8) + 40);
      }
    }

    v18 = qword_1005AA8B0;
    v19 = [NSNumber numberWithInteger:*(a1 + 40)];
    [v18 setObject:v16 forKeyedSubscript:v19];
  }
}

XPCServiceBroker *sub_10023F308(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [XPCServiceBroker alloc];
  v7 = [[NSXPCListener alloc] initWithMachServiceName:v4];

  v8 = v5;
  v9 = v7;
  if (v6)
  {
    v16.receiver = v6;
    v16.super_class = XPCServiceBroker;
    v6 = objc_msgSendSuper2(&v16, "init");
    if (v6)
    {
      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_create("com.apple.appstored.XPCServiceBroker", v10);
      dispatchQueue = v6->_dispatchQueue;
      v6->_dispatchQueue = v11;

      v13 = objc_opt_new();
      activeClients = v6->_activeClients;
      v6->_activeClients = v13;

      objc_storeStrong(&v6->_catalog, a2);
      objc_storeStrong(&v6->_listener, v7);
      [(NSXPCListener *)v6->_listener setDelegate:v6];
      [(NSXPCListener *)v6->_listener resume];
      notify_post(ASDServiceBrokerAvailableNotification);
    }
  }

  return v6;
}

void sub_10023F630(uint64_t a1)
{
  sub_1002A8F84(*(a1 + 32));
  v2 = sub_100003984();
  sub_1003B87F0(v2, *(a1 + 32));

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v4 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10023F6EC;
  v6[3] = &unk_10051B570;
  v6[4] = v4;
  v7 = v3;
  dispatch_async(v5, v6);
}

id sub_10023F760()
{
  objc_opt_self();
  v2[0] = @"app_adam_id";
  v2[1] = @"ad_network_id";
  v2[2] = @"campaign_id";
  v2[3] = @"source_identifier";
  v2[4] = @"impression_id";
  v2[5] = @"web_impression_id";
  v2[6] = @"timestamp";
  v2[7] = @"attribution_signature";
  v2[8] = @"source_app_adam_id";
  v2[9] = @"source_domain";
  v2[10] = @"fidelity_type";
  v2[11] = @"version";
  v2[12] = @"local_timestamp";
  v2[13] = @"interaction_type";
  v2[14] = @"environment";
  v2[15] = @"private_browsing_session_id";
  v0 = [NSArray arrayWithObjects:v2 count:16];

  return v0;
}

void sub_10023FA14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ASDErrorWithSafeUserInfo();
  (*(v1 + 16))(v1, v2);
}

id *sub_10023FA74(id *a1)
{
  if (a1)
  {
    a1 = [a1[5] lowercaseString];
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_10023FAA8(uint64_t result)
{
  if (result)
  {
    if (*(result + 88))
    {
      return ASDInstallAttributionVersionCreateFromString();
    }

    else
    {
      return 100;
    }
  }

  return result;
}

id sub_10023FAC0(void *a1)
{
  if (a1)
  {
    a1 = sub_10023FAF4(a1, 0);
    v1 = vars8;
  }

  return a1;
}

id sub_10023FAF4(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_opt_new();
    [v4 setObject:v3 forKeyedSubscript:@"id"];

    [v4 setObject:*(a1 + 16) forKeyedSubscript:@"ad-network-id"];
    v5 = @"campaign-id";
    if (*(a1 + 88))
    {
      v6 = ASDInstallAttributionVersionCreateFromString();
      v7 = 24;
      if (v6 > 399)
      {
        v7 = 32;
        v5 = @"source-identifier";
      }
    }

    else
    {
      v7 = 24;
    }

    v8 = [NSNumber numberWithInteger:*(a1 + v7)];
    [v4 setObject:v8 forKeyedSubscript:v5];

    [v4 setObject:*(a1 + 8) forKeyedSubscript:@"adam-id"];
    v9 = [*(a1 + 40) lowercaseString];
    [v4 setObject:v9 forKeyedSubscript:@"impression-id"];

    [v4 setObject:*(a1 + 48) forKeyedSubscript:@"web-impression-id"];
    [v4 setObject:*(a1 + 80) forKeyedSubscript:@"signature"];
    [v4 setObject:*(a1 + 56) forKeyedSubscript:@"origin-adam-id"];
    [v4 setObject:*(a1 + 64) forKeyedSubscript:@"source-domain"];
    [v4 setObject:*(a1 + 72) forKeyedSubscript:@"timestamp"];
    [v4 setObject:*(a1 + 88) forKeyedSubscript:@"version"];
    v10 = [NSNumber numberWithInteger:*(a1 + 104)];
    [v4 setObject:v10 forKeyedSubscript:@"fidelity-type"];

    [v4 setObject:*(a1 + 112) forKeyedSubscript:@"interaction-type"];
    [v4 setObject:*(a1 + 120) forKeyedSubscript:@"environment"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10023FCF4(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_10023FD00(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t sub_10023FD0C(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

id sub_10023FD18(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    [v2 setObject:*(a1 + 16) forKeyedSubscript:@"ad-network-id"];
    v3 = @"campaign-id";
    if (*(a1 + 88))
    {
      v4 = ASDInstallAttributionVersionCreateFromString();
      v5 = 24;
      if (v4 > 399)
      {
        v5 = 32;
        v3 = @"source-identifier";
      }
    }

    else
    {
      v5 = 24;
    }

    v6 = [NSNumber numberWithInteger:*(a1 + v5)];
    [v2 setObject:v6 forKeyedSubscript:v3];

    [v2 setObject:*(a1 + 8) forKeyedSubscript:@"adam-id"];
    v7 = [*(a1 + 40) lowercaseString];
    [v2 setObject:v7 forKeyedSubscript:@"impression-id"];

    [v2 setObject:*(a1 + 48) forKeyedSubscript:@"web-impression-id"];
    [v2 setObject:*(a1 + 80) forKeyedSubscript:@"signature"];
    [v2 setObject:*(a1 + 56) forKeyedSubscript:@"origin-adam-id"];
    [v2 setObject:*(a1 + 64) forKeyedSubscript:@"source-domain"];
    [v2 setObject:*(a1 + 72) forKeyedSubscript:@"timestamp"];
    [v2 setObject:*(a1 + 88) forKeyedSubscript:@"version"];
    v8 = [NSNumber numberWithInteger:*(a1 + 104)];
    [v2 setObject:v8 forKeyedSubscript:@"fidelity-type"];

    [v2 setObject:*(a1 + 112) forKeyedSubscript:@"interaction-type"];
    [v2 setObject:*(a1 + 120) forKeyedSubscript:@"environment"];
    [v2 setObject:*(a1 + 96) forKeyedSubscript:@"local-timestamp"];
    [v2 setObject:*(a1 + 128) forKeyedSubscript:@"private-browsing-session-id"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *sub_10023FF1C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v4 = [v2 objectForKeyedSubscript:@"signature"];
  sub_100232BD0(v3, v4);

  v5 = sub_100237E9C(v2, @"source_identifier");
  v6 = [v5 integerValue];
  if (v3)
  {
    v3[4] = v6;
  }

  v7 = sub_100237E9C(v2, @"itunes_item_id");
  sub_100232B60(v3, v7);

  v8 = [v2 objectForKeyedSubscript:@"ad_network_id"];
  sub_100232B70(v3, v8);

  v9 = [v2 objectForKeyedSubscript:@"nonce"];
  sub_100232B80(v3, v9);

  v10 = [v2 objectForKeyedSubscript:@"timestamp"];
  sub_100232BC0(v3, v10);

  v11 = [v2 objectForKeyedSubscript:@"source_domain"];
  sub_100232BB0(v3, v11);

  v12 = [v2 objectForKeyedSubscript:@"version"];
  sub_100232BE0(v3, v12);

  if (v3)
  {
    v3[13] = 1;
  }

  sub_100240104(v3, ASDInstallAttributionInteractionTypeClick);
  v13 = [_TtC9appstored21SKANEnvironmentHelper environmentForParams:v3];
  sub_100240114(v3, v13);

  return v3;
}

void sub_100240104(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

void sub_100240114(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 120), a2);
  }
}

uint64_t sub_100240124(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        v4 = [*(v1 + 40) lowercaseString];
        if (v4)
        {
          v5 = *(v1 + 48);
          if (v5)
          {
            v6 = *(v1 + 72);
            v1 = v6 && *(v1 + 64) && *(v1 + 88) != 0;
          }

          else
          {
            v1 = 0;
          }
        }

        else
        {
          v1 = 0;
        }
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

void sub_1002401FC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

void sub_10024020C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 128), a2);
  }
}

ODRContentHash *sub_1002402E4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 objectForKeyedSubscript:@"strategy"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 objectForKeyedSubscript:@"label"];
  }

  v6 = v5;

  v7 = [v2 objectForKeyedSubscript:@"hash"];
  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v8 = objc_alloc_init(ODRContentHash);
    v10 = v8;
    if (v8)
    {
      objc_setProperty_atomic_copy(v8, v9, v6, 16);
      objc_setProperty_atomic_copy(v10, v11, v7, 8);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void *sub_1002403E8(void *a1)
{
  if (a1)
  {
    v3[0] = @"strategy";
    v3[1] = @"digest";
    v1 = a1[1];
    v4[0] = a1[2];
    v4[1] = v1;
    a1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  }

  return a1;
}

id sub_1002404C0()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100240564;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AA8D8 != -1)
  {
    dispatch_once(&qword_1005AA8D8, block);
  }

  v0 = qword_1005AA8D0;

  return v0;
}

void sub_100240564(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AA8D0;
  qword_1005AA8D0 = v1;
}

void *sub_1002406D8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10024081C;
    v17 = sub_10024082C;
    v18 = 0;
    v7 = a1[5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100240834;
    v9[3] = &unk_10051D2E8;
    v9[4] = a1;
    v10 = v5;
    v11 = v6;
    v12 = &v13;
    dispatch_sync(v7, v9);
    a1 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

uint64_t sub_10024081C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100240834(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = 0;
  v4 = sub_100240960(v2, v3, &v12);
  v5 = v12;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ error getting display names for bundleID %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v7 = sub_100240A2C(*(a1 + 32), v4, *(a1 + 48));
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

id sub_100240960(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v4 = a2;
    v9 = 0;
    v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v9];

    v6 = v9;
    if (v6)
    {
      ASDErrorWithSafeUserInfo();
      *a3 = v7 = 0;
    }

    else
    {
      v7 = sub_1002465C4(v5, a3);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *sub_100240A2C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_10024081C;
    v16 = sub_10024082C;
    v17 = 0;
    v7 = a1[4];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10024601C;
    v9[3] = &unk_10051E488;
    v11 = &v12;
    v10 = v5;
    [v7 readUsingSession:v9];
    a1 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  return a1;
}

void sub_100240B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100240B70(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10024081C;
    v17 = sub_10024082C;
    v18 = 0;
    v7 = a1[5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100240CB4;
    v9[3] = &unk_10051D2E8;
    v9[4] = a1;
    v10 = v5;
    v11 = v6;
    v12 = &v13;
    dispatch_sync(v7, v9);
    a1 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

void sub_100240CB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = 0;
  v4 = sub_100240DE0(v2, v3, &v12);
  v5 = v12;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ error getting display names for bundleURL %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v7 = sub_100240A2C(*(a1 + 32), v4, *(a1 + 48));
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

id sub_100240DE0(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v4 = a2;
    v9 = 0;
    v5 = [[LSApplicationRecord alloc] initWithURL:v4 allowPlaceholder:0 error:&v9];

    v6 = v9;
    if (v6)
    {
      ASDErrorWithSafeUserInfo();
      *a3 = v7 = 0;
    }

    else
    {
      v7 = sub_1002465C4(v5, a3);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *sub_100240EAC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10024081C;
    v17 = sub_10024082C;
    v18 = 0;
    v7 = a1[5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100240FF0;
    v9[3] = &unk_10051D2E8;
    v9[4] = a1;
    v10 = v5;
    v11 = v6;
    v12 = &v13;
    dispatch_sync(v7, v9);
    a1 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

void sub_100240FF0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v13 = 0;
  v4 = sub_100240960(v2, v3, &v13);
  v5 = v13;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      v7 = a1[6];
      *buf = 138543874;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ error getting email address for bundleID %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v9 = *(a1[4] + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10024115C;
    v10[3] = &unk_10051E488;
    v12 = a1[7];
    v11 = v4;
    [v9 readUsingSession:v10];
    v6 = v11;
  }
}

void sub_10024115C(uint64_t a1, id a2)
{
  v3 = sub_1003963A0(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void *sub_1002411B0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10024081C;
    v17 = sub_10024082C;
    v18 = 0;
    v7 = a1[5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002412F4;
    v9[3] = &unk_10051D2E8;
    v9[4] = a1;
    v10 = v5;
    v11 = v6;
    v12 = &v13;
    dispatch_sync(v7, v9);
    a1 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

void sub_1002412F4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v13 = 0;
  v4 = sub_100240DE0(v2, v3, &v13);
  v5 = v13;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      v7 = a1[6];
      *buf = 138543874;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ error getting email address for bundleURL %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v9 = *(a1[4] + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100241460;
    v10[3] = &unk_10051E488;
    v12 = a1[7];
    v11 = v4;
    [v9 readUsingSession:v10];
    v6 = v11;
  }
}

void sub_100241460(uint64_t a1, id a2)
{
  v3 = sub_1003963A0(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1002414B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002415A4;
    v11[3] = &unk_10051C7A8;
    v11[4] = a1;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_1002415A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v17 = 0;
  v4 = sub_100240960(v2, v3, &v17);
  v5 = v17;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      *buf = 138543874;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      *&buf[22] = 2114;
      v19 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ error getting feedback metadata for bundleID %{public}@: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = sub_10024081C;
    v20 = sub_10024082C;
    v21 = 0;
    v7 = *(*(a1 + 32) + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100241810;
    v14[3] = &unk_10051E488;
    v16 = buf;
    v15 = v4;
    [v7 readUsingSession:v14];
    v8 = *(*(a1 + 32) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100241864;
    block[3] = &unk_10051E4B0;
    v12 = *(a1 + 56);
    v13 = buf;
    dispatch_async(v8, block);

    _Block_object_dispose(buf, 8);
  }
}

void sub_1002417F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100241810(uint64_t a1, id a2)
{
  v3 = sub_100395C4C(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100241884(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100241974;
    v11[3] = &unk_10051C7A8;
    v11[4] = a1;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_100241974(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v17 = 0;
  v4 = sub_100240DE0(v2, v3, &v17);
  v5 = v17;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      *buf = 138543874;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      *&buf[22] = 2114;
      v19 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ error getting feedback metadata for bundleURL %{public}@: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = sub_10024081C;
    v20 = sub_10024082C;
    v21 = 0;
    v7 = *(*(a1 + 32) + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100241BE0;
    v14[3] = &unk_10051E488;
    v16 = buf;
    v15 = v4;
    [v7 readUsingSession:v14];
    v8 = *(*(a1 + 32) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100241C34;
    block[3] = &unk_10051E4B0;
    v12 = *(a1 + 56);
    v13 = buf;
    dispatch_async(v8, block);

    _Block_object_dispose(buf, 8);
  }
}

void sub_100241BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100241BE0(uint64_t a1, id a2)
{
  v3 = sub_100395C4C(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100241C54(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100241D44;
    v11[3] = &unk_10051C7A8;
    v11[4] = a1;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_100241D44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v21 = 0;
  v4 = sub_100240960(v2, v3, &v21);
  v5 = v21;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138543874;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      *&buf[22] = 2114;
      v23 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ error getting launch info for bundleID %{public}@: %{public}@", buf, 0x20u);
    }

    v7 = *(*(a1 + 32) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100242018;
    block[3] = &unk_10051B790;
    v20 = *(a1 + 56);
    v19 = v5;
    dispatch_async(v7, block);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = sub_10024081C;
    v24 = sub_10024082C;
    v25 = 0;
    v8 = *(*(a1 + 32) + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100242030;
    v15[3] = &unk_10051E488;
    v17 = buf;
    v16 = v4;
    [v8 readUsingSession:v15];
    v9 = *(*(a1 + 32) + 24);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100242084;
    v12[3] = &unk_10051E4B0;
    v13 = *(a1 + 56);
    v14 = buf;
    dispatch_async(v9, v12);

    _Block_object_dispose(buf, 8);
  }
}

void sub_100242030(uint64_t a1, id a2)
{
  v3 = sub_100395EAC(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1002420A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100242194;
    v11[3] = &unk_10051C7A8;
    v11[4] = a1;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_100242194(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v21 = 0;
  v4 = sub_100240DE0(v2, v3, &v21);
  v5 = v21;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138543874;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      *&buf[22] = 2114;
      v23 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ error getting launch info for bundleURL %{public}@: %{public}@", buf, 0x20u);
    }

    v7 = *(*(a1 + 32) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100242468;
    block[3] = &unk_10051B790;
    v20 = *(a1 + 56);
    v19 = v5;
    dispatch_async(v7, block);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = sub_10024081C;
    v24 = sub_10024082C;
    v25 = 0;
    v8 = *(*(a1 + 32) + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100242480;
    v15[3] = &unk_10051E488;
    v17 = buf;
    v16 = v4;
    [v8 readUsingSession:v15];
    v9 = *(*(a1 + 32) + 24);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1002424D4;
    v12[3] = &unk_10051E4B0;
    v13 = *(a1 + 56);
    v14 = buf;
    dispatch_async(v9, v12);

    _Block_object_dispose(buf, 8);
  }
}

void sub_100242480(uint64_t a1, id a2)
{
  v3 = sub_100395EAC(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1002424F4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a1)
  {
    v8 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002425BC;
    block[3] = &unk_10051C078;
    block[4] = a1;
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, block);
  }
}

void sub_1002425BC(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_10024081C;
  v10[4] = sub_10024082C;
  v11 = 0;
  v2 = *(*(a1 + 32) + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100242730;
  v7[3] = &unk_10051E488;
  v9 = v10;
  v8 = *(a1 + 40);
  [v2 readUsingSession:v7];
  v3 = *(*(a1 + 32) + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100242784;
  v4[3] = &unk_10051E4B0;
  v5 = *(a1 + 48);
  v6 = v10;
  dispatch_async(v3, v4);

  _Block_object_dispose(v10, 8);
}

void sub_100242718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100242730(uint64_t a1, uint64_t a2)
{
  v3 = sub_100395F88(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_1002427A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002428A4;
    v9[3] = &unk_10051D2E8;
    v9[4] = a1;
    v10 = v5;
    v11 = v6;
    v12 = &v13;
    dispatch_sync(v7, v9);
    LOBYTE(a1) = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  return a1 & 1;
}

void sub_1002428A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = sub_100240960(v2, v3, &v9);
  v5 = v9;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 138543874;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ error checking feedback enabled state for bundleID %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = sub_1002429C4(*(a1 + 32), v4, *(a1 + 48));
  }
}

uint64_t sub_1002429C4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    a1 = a1[4];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100246588;
    v8[3] = &unk_10051E488;
    v10 = &v11;
    v9 = v5;
    [a1 readUsingSession:v8];
    LOBYTE(a1) = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  return a1 & 1;
}

void sub_100242AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100242AC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100242BC4;
    v9[3] = &unk_10051D2E8;
    v9[4] = a1;
    v10 = v5;
    v11 = v6;
    v12 = &v13;
    dispatch_sync(v7, v9);
    LOBYTE(a1) = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  return a1 & 1;
}

void sub_100242BC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = sub_100240DE0(v2, v3, &v9);
  v5 = v9;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 138543874;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ error checking feedback enabled state for bundleURL %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = sub_1002429C4(*(a1 + 32), v4, *(a1 + 48));
  }
}

uint64_t sub_100242CE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100242DE4;
    v9[3] = &unk_10051D2E8;
    v9[4] = a1;
    v10 = v5;
    v11 = v6;
    v12 = &v13;
    dispatch_sync(v7, v9);
    LOBYTE(a1) = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  return a1 & 1;
}

void sub_100242DE4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v13 = 0;
  v4 = sub_100240960(v2, v3, &v13);
  v5 = v13;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      v7 = a1[6];
      *buf = 138543874;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ error checking launch screen enabled state for bundleID %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v9 = *(a1[4] + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100242F50;
    v10[3] = &unk_10051E488;
    v12 = a1[7];
    v11 = v4;
    [v9 readUsingSession:v10];
    v6 = v11;
  }
}

id sub_100242F50(uint64_t a1, void *a2)
{
  result = sub_1003965BC(a2, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100242F8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10024308C;
    v9[3] = &unk_10051D2E8;
    v9[4] = a1;
    v10 = v5;
    v11 = v6;
    v12 = &v13;
    dispatch_sync(v7, v9);
    LOBYTE(a1) = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  return a1 & 1;
}

void sub_10024308C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v13 = 0;
  v4 = sub_100240DE0(v2, v3, &v13);
  v5 = v13;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      v7 = a1[6];
      *buf = 138543874;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ error checking launch screen enabled state for bundleURL %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v9 = *(a1[4] + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002431F8;
    v10[3] = &unk_10051E488;
    v12 = a1[7];
    v11 = v4;
    [v9 readUsingSession:v10];
    v6 = v11;
  }
}

id sub_1002431F8(uint64_t a1, void *a2)
{
  result = sub_1003965BC(a2, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}