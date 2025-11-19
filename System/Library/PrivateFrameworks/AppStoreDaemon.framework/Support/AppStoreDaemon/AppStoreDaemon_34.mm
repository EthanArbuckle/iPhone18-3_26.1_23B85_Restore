void sub_10039A888(uint64_t a1)
{
  v2 = sub_10039C864(*(a1 + 32));
  if (v2)
  {
    v6 = v2;
    v3 = sub_1003C21D0([ODRBundleTagManifest alloc], v2, *(a1 + 48));
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    if (!*(a1 + 48))
    {
      goto LABEL_6;
    }

    v6 = 0;
    **(a1 + 48) = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:115 userInfo:0];
  }

  v2 = v6;
LABEL_6:
}

void sub_10039A940(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v3;
  if (!v2)
  {
    goto LABEL_12;
  }

  v5 = *(v2 + 24);
  v6 = sub_10039A6A0(v3);
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (!*(v2 + 24))
    {
LABEL_13:
      LOBYTE(v8) = 0;
      goto LABEL_22;
    }

    v8 = sub_10039A6A0(v4);
    if (!v8)
    {
LABEL_22:

      goto LABEL_23;
    }

    v9 = *(v2 + 24);
    v10 = sub_10039A6A0(v4);
    LOBYTE(v9) = [v9 isEqual:v10];

    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v11 = *(v2 + 40);
  v12 = sub_10039ADC0(v4);
  v7 = v12;
  if (v11 == v12)
  {

    goto LABEL_15;
  }

  if (!*(v2 + 40))
  {
    goto LABEL_13;
  }

  v8 = sub_10039ADC0(v4);
  if (!v8)
  {
    goto LABEL_22;
  }

  v13 = *(v2 + 40);
  v14 = sub_10039ADC0(v4);
  LOBYTE(v13) = [v13 isEqual:v14];

  if (v13)
  {
LABEL_15:
    v7 = sub_10039B79C(v2);
    v15 = sub_10039B79C(v4);
    v16 = v15;
    if (v7 == v15)
    {
      goto LABEL_19;
    }

    LOBYTE(v8) = 0;
    if (!v7 || !v15)
    {
      goto LABEL_21;
    }

    if ([v7 isEqual:v15])
    {
LABEL_19:
      LOBYTE(v8) = 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_12:
  LOBYTE(v8) = 0;
LABEL_23:

  *(*(*(a1 + 48) + 8) + 24) = v8;
}

id sub_10039AAE4(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10039A5A8;
    v9 = sub_10039A5B8;
    v10 = 0;
    v1 = *(a1 + 56);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10039ABE0;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10039ABE0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10039AC2C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10039AC78(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10039A5A8;
    v9 = sub_10039A5B8;
    v10 = 0;
    v1 = *(a1 + 56);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10039AD74;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10039AD74(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10039ADC0(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10039A5A8;
    v9 = sub_10039A5B8;
    v10 = 0;
    v1 = *(a1 + 56);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10039AEBC;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10039AEBC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10039AF14(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10039A5A8;
    v9 = sub_10039A5B8;
    v10 = 0;
    v1 = *(a1 + 56);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10039B010;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10039B010(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10039B05C(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10039A5A8;
    v9 = sub_10039A5B8;
    v10 = 0;
    v1 = *(a1 + 56);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10039B158;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10039B158(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_10039B1A4(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 1;
    v1 = *(a1 + 56);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10039B260;
    v4[3] = &unk_10051EEF0;
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

void sub_10039B260(uint64_t a1)
{
  v2 = sub_10039C864(*(a1 + 32));
  if (v2)
  {
    v5 = v2;
    v3 = +[NSFileManager defaultManager];
    v4 = [v5 path];
    *(*(*(a1 + 40) + 8) + 24) = [v3 fileExistsAtPath:v4];

    v2 = v5;
  }
}

uint64_t sub_10039B2FC(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 56);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10039B3B4;
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

uint64_t sub_10039B3C8(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 56);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10039B480;
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

uint64_t sub_10039B494(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 56);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10039B54C;
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

uint64_t sub_10039B560(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 56);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10039B618;
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

uint64_t sub_10039B618(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    LOBYTE(v1) = v1[3] && v1[1] && v1[8] != 0;
  }

  *(*(*(result + 40) + 8) + 24) = v1;
  return result;
}

id sub_10039B654(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10039A5A8;
    v9 = sub_10039A5B8;
    v10 = 0;
    v1 = *(a1 + 56);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10039B750;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10039B750(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10039B79C(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10039A5A8;
    v9 = sub_10039A5B8;
    v10 = 0;
    v1 = *(a1 + 56);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10039B898;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10039B898(uint64_t a1)
{
  v5 = sub_10039B8FC(*(a1 + 32));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void *sub_10039B8FC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (a1[11])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_30:
        a1 = v2[11];
        v1 = vars8;
        goto LABEL_31;
      }
    }

    v3 = objc_alloc_init(NSMutableArray);
    if (v2[3] && v2[1] && v2[8])
    {
      if (*(v2 + 73))
      {
        v4 = "V";
      }

      else
      {
        v4 = "";
      }

      v5 = [NSString stringWithFormat:@"adamID = %@%s", v2[1], v4];
      [v3 addObject:v5];

      if (!v2[8])
      {
        goto LABEL_24;
      }

      if (*(v2 + 16))
      {
        v6 = "B";
      }

      else
      {
        v6 = "";
      }

      [NSString stringWithFormat:@"versionID = %@%s", v2[8], v6];
    }

    else
    {
      if (v2[6])
      {
        v7 = [NSString stringWithFormat:@"version = %@", v2[6]];
        [v3 addObject:v7];
      }

      if (v2[4])
      {
        v8 = [NSString stringWithFormat:@"shortVersion = %@", v2[4]];
        [v3 addObject:v8];
      }

      v9 = sub_10039C7D0(v2);
      if (v9)
      {
        v10 = +[NSFileManager defaultManager];
        v11 = [v9 path];
        v12 = [v10 attributesOfItemAtPath:v11 error:0];

        v13 = [v12 fileModificationDate];
      }

      else
      {
        v13 = +[NSDate date];
      }

      [v13 timeIntervalSinceReferenceDate];
      v15 = v14;

      [NSString stringWithFormat:@"modified = %.0f", v15, v22];
    }
    v16 = ;
    [v3 addObject:v16];

LABEL_24:
    if (v2[10])
    {
      v17 = [NSString stringWithFormat:@"variantID = %@", v2[10]];
      [v3 addObject:v17];
    }

    if ([v3 count])
    {
      v18 = [v3 componentsJoinedByString:@" "];;
      v19 = [NSString stringWithFormat:@"{%@}", v18];
      v20 = v2[11];
      v2[11] = v19;
    }

    else
    {
      v18 = v2[11];
      v2[11] = 0;
    }

    goto LABEL_30;
  }

LABEL_31:

  return a1;
}

void sub_10039BCC8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = *(a1 + 8);
    v6 = a2;
    v7 = [v5 copyWithZone:a3];
    v8 = v6[1];
    v6[1] = v7;

    *(v6 + 16) = *(a1 + 16);
    v9 = [*(a1 + 24) copyWithZone:a3];
    v10 = v6[3];
    v6[3] = v9;

    v11 = [*(a1 + 32) copyWithZone:a3];
    v12 = v6[4];
    v6[4] = v11;

    v13 = [*(a1 + 40) copyWithZone:a3];
    v14 = v6[5];
    v6[5] = v13;

    v15 = [*(a1 + 48) copyWithZone:a3];
    v16 = v6[6];
    v6[6] = v15;

    v17 = [*(a1 + 64) copyWithZone:a3];
    v18 = v6[8];
    v6[8] = v17;

    *(v6 + 72) = *(a1 + 72);
    *(v6 + 73) = *(a1 + 73);
    v19 = [*(a1 + 80) copyWithZone:a3];
    v20 = v6[10];
    v6[10] = v19;
  }
}

void sub_10039BFAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      v4 = v2[1];
      if (v4)
      {
        v5 = v2[8];
        if (v5)
        {
          [NSString stringWithFormat:@"{bundleID = %@; adamID = %@; versionID = %@; variantID = %@}", v3, v4, v5, v2[10]];
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    v3 = MEMORY[0x18];
  }

  [NSString stringWithFormat:@"{bundleID = %@; version = %@; shortVersion = %@; variantID = %@}", v3, v2[6], v2[4], v2[10]];
  v6 = LABEL_8:;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10039C114(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(v2 + 24) hash];
    v4 = [*(v2 + 40) hash] ^ v3;
    v5 = sub_10039B8FC(v2);
    v6 = v4 ^ [v5 hash];
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
}

void sub_10039C2A4(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 copy];
    v4 = *(a1 + 56);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10039C9D0;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    v5 = v3;
    dispatch_barrier_async(v4, v6);
  }
}

void sub_10039C348(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 copy];
    v4 = *(a1 + 56);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10039C9DC;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    v5 = v3;
    dispatch_barrier_async(v4, v6);
  }
}

void sub_10039C3EC(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 copy];
    v4 = *(a1 + 56);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10039CA14;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    v5 = v3;
    dispatch_barrier_async(v4, v6);
  }
}

void sub_10039C490(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 copy];
    v4 = *(a1 + 56);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10039C9B4;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    v5 = v3;
    dispatch_barrier_async(v4, v6);
  }
}

void sub_10039C534(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10039CA04;
    v3[3] = &unk_10051C8F8;
    v3[4] = a1;
    v4 = a2;
    dispatch_barrier_async(v2, v3);
  }
}

void sub_10039C5B4(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10039C9C0;
    v3[3] = &unk_10051C8F8;
    v3[4] = a1;
    v4 = a2;
    dispatch_barrier_async(v2, v3);
  }
}

void sub_10039C634(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 copy];
    v4 = *(a1 + 56);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10039C9E8;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    v5 = v3;
    dispatch_barrier_async(v4, v6);
  }
}

void sub_10039C6D8(id a1)
{
  v5 = 0;
  v1 = [NSDataDetector dataDetectorWithTypes:32 error:&v5];
  v2 = v5;
  v3 = qword_1005AADD0;
  qword_1005AADD0 = v1;

  if (!qword_1005AADD0)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to create URL data detector.  Error: %{public}@", buf, 0xCu);
    }
  }
}

void *sub_10039C7D0(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[12];
    if (!v3)
    {
      v4 = sub_10039A474(a1);
      v5 = [v4 URLByAppendingPathComponent:@"AssetPackManifest"];
      v6 = [v5 URLByAppendingPathExtension:@"plist"];
      v7 = v2[12];
      v2[12] = v6;

      v3 = v2[12];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void *sub_10039C864(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[13];
    if (!v3)
    {
      v4 = sub_10039A474(a1);
      v5 = [v4 URLByAppendingPathComponent:@"OnDemandResources"];
      v6 = [v5 URLByAppendingPathExtension:@"plist"];
      v7 = v2[13];
      v2[13] = v6;

      v3 = v2[13];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void sub_10039CAE8(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = [a2 style];
  if (v5 == 2)
  {
    v6 = 2;
  }

  else
  {
    if (v5 != 1)
    {
      return;
    }

    v6 = 1;
  }

  if (a3 <= 2)
  {
    v7 = **(&off_100526470 + a3);
    v8 = *(a1 + 32);
    v9 = [NSNumber numberWithUnsignedInt:v6];

    CFDictionarySetValue(v8, v7, v9);
  }
}

void sub_10039D0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10039D73C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ refreshUpdateCountWithCompletionBlock completed", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10039DDC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 32, 1);
    }

    v10 = Property;
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] reloadFromServerInBackgroundWithCompletionBlock completed", &v11, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10039E388(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] updateAllWithJobResults completed", &v10, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10039E648(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ updateAllWithOrder completed", &v10, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10039EBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_10039EC0C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Connection interrupted for pid: %i", v4, 8u);
  }
}

void sub_10039ECBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 48);
    v8 = 67109120;
    LODWORD(v9) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Connection invalidated from pid: %i", &v8, 8u);
  }

  v6 = v3;
  if (WeakRetained)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Client %{public}@ disconnected", &v8, 0xCu);
    }
  }
}

Class sub_10039EDF4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1005AADE8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10039EF48;
    v4[4] = &unk_10051BD00;
    v4[5] = v4;
    v5 = off_100526520;
    v6 = 0;
    qword_1005AADE8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1005AADE8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_DASScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1005AADE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10039EF48()
{
  result = _sl_dlopen();
  qword_1005AADE8 = result;
  return result;
}

void *sub_10039EFBC(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = HandleInvalidReceiptTask;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong((v5 + 42), a2);
    }
  }

  return a1;
}

void sub_10039F5A8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
    return;
  }

  v5 = [a2 selectedActionIdentifier];
  v6 = [v5 isEqualToString:@"InvalidReceiptPromptOKAction"];

  if (v6)
  {
    if (*(a1 + 32))
    {
      v7 = +[LSApplicationWorkspace defaultWorkspace];
      v8 = *(a1 + 32);
      v14 = 0;
      [v7 openURL:v8 withOptions:0 error:&v14];
      v9 = v14;

      if (v9)
      {
LABEL_8:
        v10 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v16 = v9;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Encountered error opening store. Error: %{public}@", buf, 0xCu);
        }

        v11 = *(a1 + 40);
        v12 = ASDErrorWithSafeUserInfo();
        (*(v11 + 16))(v11, v12);

        goto LABEL_16;
      }
    }

    else
    {
      v9 = ASDErrorWithDescription();
      if (v9)
      {
        goto LABEL_8;
      }
    }

    (*(*(a1 + 40) + 16))();
LABEL_16:

    return;
  }

  v13 = *(*(a1 + 40) + 16);

  v13();
}

id *sub_1003A00EC(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = AppLedgerInstallItem;
    v17 = objc_msgSendSuper2(&v20, "init");
    a1 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 1, a2);
      a1[2] = a3;
      objc_storeStrong(a1 + 3, a4);
      objc_storeStrong(a1 + 4, a5);
      objc_storeStrong(a1 + 5, a6);
      a1[6] = a7;
    }
  }

  return a1;
}

const __CFString *sub_1003A01E4(const __CFString *result)
{
  if (result)
  {
    data = result->data;
    result = @"unknown";
    if (data > 69)
    {
      v2 = @"factoryClaim";
      v3 = @"marketplace";
      if (data != 90)
      {
        v3 = @"unknown";
      }

      if (data != 80)
      {
        v2 = v3;
      }

      if (data == 70)
      {
        return @"systemInstall";
      }

      else
      {
        return v2;
      }
    }

    else
    {
      switch(data)
      {
        case 10:
          result = @"clipBuy";
          break;
        case 11:
          result = @"storeBuy";
          break;
        case 12:
          result = @"storeCodeRedemption";
          break;
        case 13:
          result = @"storePreorder";
          break;
        case 14:
          result = @"storePromotion";
          break;
        case 15:
          result = @"storeQueue";
          break;
        case 16:
          result = @"storeRedownload";
          break;
        case 17:
          result = @"storeRestore";
          break;
        case 18:
          result = @"storeUpdate";
          break;
        case 19:
          result = @"storeUpdateAutomatic";
          break;
        case 20:
          result = @"betaInstall";
          break;
        case 21:
          result = @"betaUpdate";
          break;
        case 22:
          result = @"betaWatchSync";
          break;
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 34:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 42:
        case 43:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
        case 58:
        case 59:
          return result;
        case 30:
          result = @"deviceManagedInstall";
          break;
        case 31:
          result = @"deviceManagedUpdate";
          break;
        case 32:
          result = @"UserManagedInstall";
          break;
        case 33:
          result = @"userManagedUpdate";
          break;
        case 40:
          result = @"tvProviderBuy";
          break;
        case 41:
          result = @"tvProviderUpdate";
          break;
        case 50:
          result = @"tvHomeScreenSync";
          break;
        case 60:
          result = @"watchRedownload";
          break;
        default:
          if (data == 1)
          {
            result = @"appReview";
          }

          break;
      }
    }
  }

  return result;
}

id sub_1003A040C(void *a1, void *a2)
{
  if (a1)
  {
    v4 = a1[7] + 2;
    if (v4 != 2 && a1[7] < 0xFFFFFFFFFFFFFFFELL)
    {
      v5 = 3;
    }

    else
    {
      v5 = qword_10044BD20[v4];
    }

    v6 = a1[5];
    if (v6 == 3)
    {
      if ((+[AMSDevice deviceIsAppleTV]& 1) != 0)
      {
        v9 = 1;
      }

      else
      {
        v9 = os_variant_has_internal_content() && os_variant_has_internal_content() && a1[2] == 2;
      }

      v6 = 3;
    }

    else
    {
      if (!v6)
      {
        v7 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          Property = objc_getProperty(a1, v8, 48, 1);
          _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "[%@] Invalid coordinator intent, treating as initiating instead", buf, 0xCu);
        }

        v6 = 1;
      }

      v9 = 1;
    }

    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_getProperty(a1, v11, 48, 1);
      v13 = sub_10024A660(v6);
      v14 = IXStringForCoordinatorImportance();
      *buf = 138412802;
      Property = v12;
      v31 = 2114;
      v32 = v13;
      v33 = 2114;
      v34 = v14;
    }

    v15 = 1;
    v17 = objc_getProperty(a1, v16, 8, 1);
    if (os_variant_has_internal_content())
    {
      v15 = a1[2];
    }

    v18 = sub_10024806C(IXAppInstallCoordinator, v17, v6, v5, v15, v9, a2);

    if (objc_getProperty(a1, v19, 24, 1))
    {
      v21 = objc_getProperty(a1, v20, 24, 1);
      v28 = 0;
      v22 = sub_100249CB4(v18, v21, &v28);
      v23 = v28;
      if ((v22 & 1) == 0)
      {
        v24 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_getProperty(a1, v25, 48, 1);
          *buf = 138412546;
          Property = v27;
          v31 = 2114;
          v32 = v23;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%@] Error setting the gizmo pairing ID: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void sub_1003A076C(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 8);
  }
}

uint64_t sub_1003A0780(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

CoordinatorBuilder *sub_1003A07F4(void *a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(CoordinatorBuilder);
    v4 = sub_100408EB0(a1);
    if (v2)
    {
      objc_setProperty_atomic(v2, v3, v4, 48);
    }

    v6 = sub_10023E0F8(a1, @"bundle_id");
    if (v2)
    {
      objc_setProperty_atomic(v2, v5, v6, 8);
    }

    v8 = sub_10023E6B8(a1, @"gizmo_pairing_id");
    if (v2)
    {
      objc_setProperty_atomic(v2, v7, v8, 24);
    }

    v9 = sub_10023E604(a1, @"coordinator_intent");
    if (v2)
    {
      v2->_intent = v9;
    }

    v10 = sub_10023E51C(a1, @"IFNULL(app_install.priority, 0)");
    if (!v10)
    {
      v11 = sub_10023E51C(a1, @"priority");
      if (v11)
      {
        v10 = v11;
      }

      else
      {
        v10 = &off_100548388;
      }
    }

    v12 = [v10 integerValue];
    if (v2)
    {
      v2->_priority = v12;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1003A0940()
{
  objc_opt_self();
  if (qword_1005AADF8 != -1)
  {
    dispatch_once(&qword_1005AADF8, &stru_100526538);
  }

  v0 = qword_1005AADF0;

  return v0;
}

void sub_1003A0998(id a1)
{
  v1 = objc_alloc_init(UpdatesService);
  v2 = qword_1005AADF0;
  qword_1005AADF0 = v1;
}

void sub_1003A0B08(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1003A0B98;
  v2[3] = &unk_100526560;
  v3 = *(a1 + 40);
  [v1 autoUpdateEnabled:v2];
}

uint64_t sub_1003A0C98(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = [*(a1 + 32) componentsJoinedByString:{@", "}];
    v5 = [*(a1 + 40) processInfo];
    v6 = [v5 bundleIdentifier];
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Compatibility updates for apps: [%{public}@] requested by client: %{public}@", &v7, 0x16u);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_1003A0E84(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 processInfo];
    v5 = [v4 bundleIdentifier];
    *buf = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ getManagedUpdates requested for client: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003A0FF4;
  v8[3] = &unk_1005264B8;
  v9 = v6;
  v10 = *(a1 + 48);
  [v7 getManagedUpdatesWithRequestToken:v9 replyHandler:v8];
}

void sub_1003A0FF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ getManagedUpdates completed successfully", &v11, 0xCu);
  }

  v9 = *(a1 + 40);
  v10 = ASDErrorWithSafeUserInfo();

  (*(v9 + 16))(v9, v6, v10);
}

void sub_1003A11EC(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [v3 processInfo];
    v6 = [v5 bundleIdentifier];
    *buf = 138543874;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ getUpdateMetadataForBundleID %{public}@ requested for client: %{public}@", buf, 0x20u);
  }

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 48) + 16);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003A1364;
  v9[3] = &unk_100526588;
  v10 = *(a1 + 32);
  v11 = *(a1 + 56);
  [v8 getUpdateMetadataForBundleID:v7 replyHandler:v9];
}

void sub_1003A1364(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ getUpdateMetadataForBundleID completed successfully", &v6, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1003A1508(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 processInfo];
    v5 = [v4 bundleIdentifier];
    *buf = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ getUpdates requested for client: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003A1678;
  v8[3] = &unk_1005265B0;
  v9 = v6;
  v10 = *(a1 + 48);
  [v7 getUpdatesWithRequestToken:v9 replyHandler:v8];
}

void sub_1003A1678(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ getUpdates completed successfully", &v6, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1003A181C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 processInfo];
    v5 = [v4 bundleIdentifier];
    *buf = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ refreshUpdateCount requested for client: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003A198C;
  v8[3] = &unk_100526490;
  v9 = v6;
  v10 = *(a1 + 48);
  [v7 refreshUpdateCountWithRequestToken:v9 replyHandler:v8];
}

void sub_1003A198C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = ASDLogHandleForCategory();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ refreshUpdateCount completed with error: %{public}@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ refreshUpdateCount completed successfully", &v12, 0xCu);
  }

  v10 = *(a1 + 40);
  v11 = ASDErrorWithSafeUserInfo();
  (*(v10 + 16))(v10, a2, v11);
}

void sub_1003A1BB4(void *a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[7];
    v5 = [v3 processInfo];
    v6 = [v5 bundleIdentifier];
    *buf = 138543874;
    v18 = v3;
    v19 = 2050;
    v20 = v4;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ refreshUpdateForApp %{public}lld requested by client: %{public}@", buf, 0x20u);
  }

  v7 = a1[4];
  v8 = *(a1[5] + 16);
  v9 = a1[7];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003A1D40;
  v13[3] = &unk_1005265D8;
  v10 = v7;
  v12 = a1[6];
  v11 = a1[7];
  v14 = v10;
  v16 = v11;
  v15 = v12;
  [v8 refreshUpdateForApp:v9 token:v10 replyHandler:v13];
}

void sub_1003A1D40(void *a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[4];
      v7 = a1[6];
      v12 = 138543874;
      v13 = v6;
      v14 = 2050;
      v15 = v7;
      v16 = 2114;
      v17 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ refreshUpdateForApp %{public}lld completed with error: %{public}@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[6];
    v12 = 138543618;
    v13 = v8;
    v14 = 2050;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ refreshUpdateForApp %{public}lld completed successfully", &v12, 0x16u);
  }

  v10 = a1[5];
  v11 = ASDErrorWithSafeUserInfo();
  (*(v10 + 16))(v10, v11);
}

void sub_1003A1F74(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 processInfo];
    v5 = [v4 bundleIdentifier];
    *buf = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ reloadFromServer requested for client: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003A20E4;
  v8[3] = &unk_1005264B8;
  v9 = v6;
  v10 = *(a1 + 48);
  [v7 reloadFromServerWithRequestToken:v9 replyHandler:v8];
}

void sub_1003A20E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ reloadFromServer completed with error: %{public}@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v13 = 138543362;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ reloadFromServer completed successfully", &v13, 0xCu);
  }

  v11 = *(a1 + 40);
  v12 = ASDErrorWithSafeUserInfo();
  (*(v11 + 16))(v11, v6, v12);
}

void sub_1003A230C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 processInfo];
    v5 = [v4 bundleIdentifier];
    *buf = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ reloadManagedUpdates requested for client: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003A247C;
  v8[3] = &unk_1005264B8;
  v9 = v6;
  v10 = *(a1 + 48);
  [v7 reloadManagedUpdatesWithRequestToken:v9 replyHandler:v8];
}

void sub_1003A247C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ reloadManagedUpdates completed successfully", &v11, 0xCu);
  }

  v9 = *(a1 + 40);
  v10 = ASDErrorWithSafeUserInfo();

  (*(v9 + 16))(v9, v6, v10);
}

void sub_1003A2754(uint64_t a1)
{
  v6 = [*(a1 + 32) bundleIdentifier];
  if (v6)
  {
    v2 = [[_TtC9appstored38PreinstalledAppUpdateAuthorizationTask alloc] initWithBundleID:v6 logKey:*(a1 + 40) processHandle:*(a1 + 32) completion:*(a1 + 48)];
    v3 = +[_TtC9appstored38PreinstalledAppUpdateAuthorizationTask taskQueue];
    v4 = v3;
    if (v3)
    {
      [*(v3 + 8) addOperation:v2];
    }
  }

  else
  {
    v5 = *(a1 + 48);
    v2 = ASDErrorWithDescription();
    (*(v5 + 16))(v5, v2);
  }
}

void sub_1003A290C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = *(a1 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003A29CC;
  v4[3] = &unk_10051FAA0;
  v5 = *(a1 + 40);
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v2 setAutoUpdateEnabled:v3 withReplyHandler:v4];
}

uint64_t sub_1003A29CC(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) processInfo];
    v4 = [v3 bundleIdentifier];
    v5 = v4;
    v6 = @"Disabled";
    if (*(a1 + 48))
    {
      v6 = @"Enabled";
    }

    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ Updated should perform automatic updates: %@", &v8, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1003A2BD0(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 processInfo];
    v5 = [v4 bundleIdentifier];
    *buf = 138543618;
    v13 = v3;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Update all requested with client: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 16);
  v8 = *(a1 + 48);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003A2D48;
  v9[3] = &unk_1005264E0;
  v10 = v6;
  v11 = *(a1 + 56);
  [v7 updateAllWithOrder:v8 requestToken:v10 replyHandler:v9];
}

void sub_1003A2D48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v7;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ updateAllWithOrder completed with error: %{public}@", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ updateAllWithOrder completed successfully", &v15, 0xCu);
  }

  v13 = *(a1 + 40);
  v14 = ASDErrorWithSafeUserInfo();
  (*(v13 + 16))(v13, a2, v8, v14);
}

void sub_1003A2F7C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 processInfo];
    v5 = [v4 bundleIdentifier];
    *buf = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ reloadFromServerInBackgroundWithCompletionBlock requested for client: %{public}@", buf, 0x16u);
  }

  v6 = +[UpdatesManager sharedManager];
  v7 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003A3100;
  v8[3] = &unk_1005264B8;
  v9 = v7;
  v10 = *(a1 + 40);
  [v6 reloadFromServerInBackgroundWithToken:v9 completionBlock:v8];
}

void sub_1003A3100(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ reloadFromServerInBackgroundWithCompletionBlock completed with error: %{public}@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v13 = 138543362;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ reloadFromServerInBackgroundWithCompletionBlock completed successfully", &v13, 0xCu);
  }

  v11 = *(a1 + 40);
  v12 = ASDErrorWithSafeUserInfo();
  (*(v11 + 16))(v11, v6, v12);
}

uint64_t sub_1003A3324(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 processInfo];
    v5 = [v4 bundleIdentifier];
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ shouldUseModernUpdatesWithReplyHandler requested for client: %{public}@", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), +[UpdatesManager shouldUseModernUpdates]);
}

void sub_1003A3504(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 processInfo];
    v5 = [v4 bundleIdentifier];
    *buf = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ getUpdateMetricsEventsWithReplyHandler requested for client: %{public}@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003A36A0;
  v9[3] = &unk_100521F68;
  v10 = *(a1 + 48);
  v6 = objc_retainBlock(v9);
  LOBYTE(v8) = 0;
  v7 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:0 requestToken:*(a1 + 32) logKey:0 callbackHandler:v6 includeMetrics:1 isVPPLookup:0 userInitiated:v8 targetedItemID:0];
  [*(*(a1 + 40) + 16) getUpdatesWithContext:v7];
}

void sub_1003A36A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableArray);
  if (v5)
  {
    v17 = a1;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v14 = [ASDUpdateMetricsEvent alloc];
          v15 = [v13 metrics];
          v16 = [v14 initWithDictionary:v15];

          [v7 addObject:v16];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    a1 = v17;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1003A3B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1003A3B24(uint64_t a1)
{
  if (a1)
  {
    v1 = +[NSXPCConnection currentConnection];
    v2 = [XPCClient clientIDForConnection:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

Class sub_1003A436C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1005AAE08)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1003A44C0;
    v4[4] = &unk_10051BD00;
    v4[5] = v4;
    v5 = off_100526628;
    v6 = 0;
    qword_1005AAE08 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1005AAE08)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_DASScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1005AAE00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1003A44C0()
{
  result = _sl_dlopen();
  qword_1005AAE08 = result;
  return result;
}

id *sub_1003A4534(id *a1, void *a2, void *a3, double a4)
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = RequestThrottle;
    v10 = objc_msgSendSuper2(&v15, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      *(a1 + 2) = a4;
      if (a4 <= 2.22044605e-16)
      {
        sub_100349320(v9);
      }

      else
      {
        objc_storeStrong(a1 + 3, a3);
        v11 = [a1[1] now];
        v12 = a1[3];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1003A4674;
        v16[3] = &unk_100526648;
        v17 = v11;
        v18 = a1;
        v13 = v11;
        sub_100349574(v12, v16);
      }
    }
  }

  return a1;
}

uint64_t sub_1003A4674(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100387988(v3, *(a1 + 32));
  if (v4 < 0.0 || v4 >= *(*(a1 + 40) + 16))
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v8 = objc_getProperty(v3, v7, 24, 1);
        Property = objc_getProperty(v3, v9, 16, 1);
        v11 = v8;
      }

      else
      {
        v8 = 0;
        v11 = 0;
        Property = 0;
      }

      v12 = Property;
      v14 = 138543874;
      v15 = v8;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Throttle: Discarding expired record for %{public}@ / %{public}@ (%.0f seconds)", &v14, 0x20u);
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_1003A47E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = v7;
    objc_opt_self();
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1003A4DCC;
    v21 = &unk_100526670;
    v22 = &v16;
    sub_100342BCC(v10, buf);
    v11 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);

    v12 = ASDLogHandleForCategory();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v13)
      {
        *buf = 138543874;
        *&buf[4] = v8;
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 2114;
        v21 = v10;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Throttle: Permitting further requests for %{public}@ / %{public}@: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      if (v13)
      {
        *buf = 138543874;
        *&buf[4] = v8;
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 2114;
        v21 = v10;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Throttle: Blocking further requests for %{public}@ / %{public}@: %{public}@", buf, 0x20u);
      }

      v14 = [RequestThrottleRecord alloc];
      v15 = [*(a1 + 8) now];
      v12 = sub_1003878A4(&v14->super.isa, v15, v10, v8, v9);

      sub_10034908C(*(a1 + 24), v12);
    }
  }
}

void sub_1003A4A48(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && sub_100349288(*(a1 + 24), v3))
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Throttle: Unblocking further requests for %{public}@", &v5, 0xCu);
    }
  }
}

uint64_t sub_1003A4B10(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    a4 = 0;
    goto LABEL_23;
  }

  if (*(a1 + 16) >= 2.22044605e-16)
  {
    v9 = sub_1003494EC(*(a1 + 24), v7);
    v10 = v9;
    if (v9 && sub_1003879EC(v9, v8))
    {
      v11 = [*(a1 + 8) now];
      v12 = sub_100387988(v10, v11);

      if (v12 >= 0.0 && v12 < *(a1 + 16))
      {
        v13 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 16) - v12;
          *buf = 138543618;
          v21 = v7;
          v22 = 2048;
          v23 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Throttle: Blocking request for %{public}@ will unblock after %.0f seconds", buf, 0x16u);
        }

        if (!a4)
        {
          goto LABEL_22;
        }

        v15 = [NSString stringWithFormat:@"Throttling request for %.0f seconds", *(a1 + 16) - v12];
        v17 = objc_getProperty(v10, v16, 8, 1);
        *a4 = ASDErrorWithUnderlyingErrorAndDescription();

        a4 = 0;
        goto LABEL_20;
      }

      if (sub_100349288(*(a1 + 24), v7))
      {
        v15 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v21 = v7;
          v18 = "Throttle: Unblocking requests after expiry for %{public}@";
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else if (sub_100349288(*(a1 + 24), v7))
    {
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v7;
        v18 = "Throttle: Unblocking requests for new version of %{public}@";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
      }

LABEL_19:
      a4 = 1;
LABEL_20:

LABEL_22:
      goto LABEL_23;
    }

    a4 = 1;
    goto LABEL_22;
  }

  a4 = 1;
LABEL_23:

  return a4;
}

BOOL sub_1003A4DCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:AMSErrorDomain];

  if (!v5)
  {
    v7 = [v3 domain];

    v8 = [v7 isEqualToString:NSURLErrorDomain];
    if (!v8)
    {
      return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
    }

LABEL_6:
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
  }

  v6 = [v3 code];

  if (v6 == 203 || v6 == 206)
  {
    goto LABEL_6;
  }

  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

id sub_1003A4EE0()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A4F84;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AAE18 != -1)
  {
    dispatch_once(&qword_1005AAE18, block);
  }

  v0 = qword_1005AAE10;

  return v0;
}

void sub_1003A4F84(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v2 = [InstallAttributionDatabaseStore alloc];
  v22 = sub_1001C0DF0();
  v3 = sub_1001C0FB8(v22);
  v4 = [(SQLiteDatabaseStore *)v2 initWithDatabase:v3];
  v5 = sub_1001DA8BC();
  v6 = v4;
  v7 = v5;
  if (v1)
  {
    v23.receiver = v1;
    v23.super_class = InstallAttributionManager;
    v8 = objc_msgSendSuper2(&v23, "init");
    v1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, v5);
      objc_storeStrong(v1 + 2, v4);
      v9 = objc_alloc_init(TaskQueue);
      v10 = v1[3];
      v1[3] = v9;

      v11 = v1[3];
      if (v11)
      {
        [v11[1] setName:@"com.apple.appstored.InstallAttributionManagerTaskQueue"];
      }

      v12 = objc_opt_new();
      v13 = v1[4];
      v1[4] = v12;

      v14 = objc_opt_new();
      v15 = v1[5];
      v1[5] = v14;

      v16 = objc_opt_new();
      v17 = v1[7];
      v1[7] = v16;

      v18 = objc_alloc_init(UnfairLock);
      v19 = v1[6];
      v1[6] = v18;

      sub_1003A51DC(v1);
      v20 = v1[2];
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1003B2AB0;
      v24[3] = &unk_100526C08;
      v24[4] = &v25;
      [v20 readUsingSession:v24];
      if (*(v26 + 24) == 1)
      {
        sub_1003A9058();
      }

      _Block_object_dispose(&v25, 8);
    }
  }

  v21 = qword_1005AAE10;
  qword_1005AAE10 = v1;
}

void sub_1003A51C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003A51DC(uint64_t a1)
{
  if (a1)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_1003A6CC0;
    v43 = sub_1003A6CD0;
    v44 = 0;
    v1 = *(a1 + 16);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1003AF748;
    v38[3] = &unk_100526C08;
    v38[4] = &v39;
    [v1 readUsingSession:v38];
    v2 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v3 = v40[5];
    v4 = [v3 countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v4)
    {
      v5 = *v35;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v35 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v34 + 1) + 8 * i);
          if (v7)
          {
            v7 = v7[22];
          }

          v8 = v7;
          v9 = [_TtC9appstored21SKANEnvironmentHelper shouldUseDevelopmentSettingsForEnvironment:v8];

          if (v9)
          {
            v10 = @"development";
          }

          else
          {
            v10 = @"production";
          }

          v11 = v10;
          [v2 addObject:v11];
        }

        v4 = [v3 countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v4);
    }

    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Registering pingback transmission tasks for environments: %{public}@", &buf, 0xCu);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v2;
    v13 = [obj countByEnumeratingWithState:&v30 objects:v46 count:16];
    if (v13)
    {
      v29 = *v31;
      v28 = XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY;
      v27 = XPC_ACTIVITY_RANDOM_INITIAL_DELAY;
      do
      {
        v14 = 0;
        do
        {
          if (*v31 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v30 + 1) + 8 * v14);
          objc_opt_self();
          v16 = [_TtC9appstored21SKANEnvironmentHelper pingbackDelayOverrideForEnvironment:v15];
          if ([v15 isEqualToString:@"production"])
          {
            v17 = &XPC_ACTIVITY_INTERVAL_1_HOUR;
            v18 = @"com.apple.appstored.InstallAttributionManager.PingbackRetry";
            v19 = 1200;
            v20 = 86400;
LABEL_25:
            v21 = *v17;
            v22 = xpc_dictionary_create(0, 0, 0);
            xpc_dictionary_set_int64(v22, XPC_ACTIVITY_INTERVAL, v20);
            xpc_dictionary_set_int64(v22, XPC_ACTIVITY_GRACE_PERIOD, v21);
            xpc_dictionary_set_string(v22, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
            xpc_dictionary_set_BOOL(v22, v28, 1);
            xpc_dictionary_set_int64(v22, v27, v19);
            v23 = [(__CFString *)v18 UTF8String];
            *&buf = _NSConcreteStackBlock;
            *(&buf + 1) = 3221225472;
            v49 = sub_1003AF794;
            v50 = &unk_10051BC98;
            v51 = v22;
            v52 = v15;
            v24 = v22;
            xpc_activity_register(v23, XPC_ACTIVITY_CHECK_IN, &buf);

            goto LABEL_26;
          }

          if (v16)
          {
            v20 = [v16 integerValue];
            v17 = &XPC_ACTIVITY_INTERVAL_1_MIN;
            v18 = @"com.apple.appstored.InstallAttributionManager.PingbackRetry.Development";
            v19 = 20;
            goto LABEL_25;
          }

          v24 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *v45 = 0;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Invalid configuration for registering postback retry task", v45, 2u);
          }

LABEL_26:

          v14 = v14 + 1;
        }

        while (v13 != v14);
        v25 = [obj countByEnumeratingWithState:&v30 objects:v46 count:16];
        v13 = v25;
      }

      while (v25);
    }

    _Block_object_dispose(&v39, 8);
  }
}

id sub_1003A575C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (_os_feature_enabled_impl())
  {
    v3 = [v2 BOOLForKey:@"skadnetwork-use-ut" defaultValue:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1003A57CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[BagService appstoredService];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003A58A8;
    v8[3] = &unk_10051C340;
    v8[4] = a1;
    v9 = v5;
    v10 = v6;
    [v7 bagWithCompletionHandler:v8];
  }
}

void sub_1003A58A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v106 = a2;
  v6 = v4;
  if (v3)
  {
    if (v5)
    {
      v7 = v5[1];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v105 = [v8 longLongValue];

    if (sub_1003A575C(InstallAttributionManager, v106) && (!v5 ? (v9 = 0) : (v9 = v5[1]), v10 = v9, v11 = sub_1003A66D8(v3, v10), v10, v11))
    {
      v12 = ASDErrorWithDescription();
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Rejecting impression after buy", buf, 2u);
      }

      if (v6)
      {
        v6[2](v6, v12);
      }

      v14 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
      if (v5)
      {
        v15 = v5[2];
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v17 = +[_TtC9appstored12SkannerEvent adTypeApp];
      v18 = +[_TtC9appstored12SkannerEvent interactionTypeView];
      if (v5)
      {
        v19 = v5[10];
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      v21 = [_TtC9appstored12SkannerEvent impressionWithResult:v14 adNetworkID:v16 adType:v17 interactionType:v18 version:v20 error:v12];

      v22 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
      [v22 logEvent:v21 forAdvertisedAppAdamID:v105 completionHandler:&stru_100526690];
    }

    else if (sub_100231C80(v5))
    {
      if (v5 && (v23 = v5[10]) != 0 && (v24 = v23, v25 = ASDInstallAttributionVersionCreateFromString(), v24, v25 > 201))
      {
        v104 = sub_100231F7C(v5);
        if (v104)
        {
          if (v6)
          {
            v6[2](v6, v104);
          }

          v26 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
          v27 = v5[2];
          v28 = +[_TtC9appstored12SkannerEvent adTypeApp];
          v29 = +[_TtC9appstored12SkannerEvent interactionTypeView];
          v30 = v5[10];
          v31 = [_TtC9appstored12SkannerEvent impressionWithResult:v26 adNetworkID:v27 adType:v28 interactionType:v29 version:v30 error:v104];

          v32 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
          [v32 logEvent:v31 forAdvertisedAppAdamID:v105 completionHandler:&stru_1005266F0];
        }

        else
        {
          v60 = v5[11];
          v61 = v5[6];
          v62 = v5[10];
          v63 = v5[2];
          v102 = sub_100232138(InstallAttributionImpression, v60, v61, v62, v63);

          if (v102)
          {
            v64 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v102;
              _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Impression is misconfigured. Not adding. Error: %{public}@", buf, 0xCu);
            }

            if (v6)
            {
              v6[2](v6, 0);
            }

            v65 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
            v66 = v5[2];
            v67 = +[_TtC9appstored12SkannerEvent adTypeApp];
            v68 = +[_TtC9appstored12SkannerEvent interactionTypeView];
            v69 = v5[10];
            v103 = [_TtC9appstored12SkannerEvent impressionWithResult:v65 adNetworkID:v66 adType:v67 interactionType:v68 version:v69 error:v102];

            v70 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
            [v70 logEvent:v103 forAdvertisedAppAdamID:v105 completionHandler:&stru_100526710];
          }

          else
          {
            v71 = v5[10];
            if (v71 && ASDInstallAttributionVersionCreateFromString() > 399)
            {
              v103 = sub_1003A67D0(v3, v5[4]);
            }

            else
            {
              v103 = sub_1003A69D0(v3, v5[3]);
            }

            if (v103)
            {
              v72 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v103;
                _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Error adding impression to DB: %{public}@", buf, 0xCu);
              }

              if (v6)
              {
                v73 = sub_1003A6B88(v103);
                v6[2](v6, v73);
              }

              v74 = v5[2];
              v75 = v5[10];
              sub_100232810(InstallAttributionImpression, v74, 0, v75, v103);

              v76 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
              v77 = v5[2];
              v78 = +[_TtC9appstored12SkannerEvent adTypeApp];
              v79 = +[_TtC9appstored12SkannerEvent interactionTypeView];
              v80 = v5[10];
              v81 = [_TtC9appstored12SkannerEvent impressionWithResult:v76 adNetworkID:v77 adType:v78 interactionType:v79 version:v80 error:v103];

              v82 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
              [v82 logEvent:v81 forAdvertisedAppAdamID:v105 completionHandler:&stru_100526730];
            }

            else
            {
              v120 = 0;
              v121 = &v120;
              v122 = 0x2020000000;
              v123 = 0;
              v87 = *(v3 + 16);
              v117[0] = _NSConcreteStackBlock;
              v117[1] = 3221225472;
              v117[2] = sub_1003A6C38;
              v117[3] = &unk_10051EDB8;
              v119 = &v120;
              v88 = v5;
              v118 = v88;
              [v87 readUsingSession:v117];
              if (*(v121 + 24) == 1)
              {
                v89 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
                {
                  v90 = v5[6];
                  *buf = 138543362;
                  *&buf[4] = v90;
                  _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "Found prior impression. Overwriting with new impression for source app:%{public}@", buf, 0xCu);
                }
              }

              v111 = 0;
              v112 = &v111;
              v113 = 0x3032000000;
              v114 = sub_1003A6CC0;
              v115 = sub_1003A6CD0;
              v116 = 0;
              v107 = 0;
              v108 = &v107;
              v109 = 0x2020000000;
              v110 = 0;
              v91 = *(v3 + 16);
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              *&buf[16] = sub_1003A6CD8;
              v125 = &unk_10051EE08;
              v127 = &v107;
              v126 = v88;
              v128 = &v111;
              [v91 modifyUsingTransaction:buf];
              if ((v108[3] & 1) == 0)
              {
                if (!v112[5])
                {
                  v92 = ASDErrorWithDescription();
                  v93 = v112[5];
                  v112[5] = v92;
                }

                v94 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
                v95 = v5[2];
                v96 = +[_TtC9appstored12SkannerEvent adTypeApp];
                v97 = +[_TtC9appstored12SkannerEvent interactionTypeView];
                v98 = v5[10];
                v99 = [_TtC9appstored12SkannerEvent impressionWithResult:v94 adNetworkID:v95 adType:v96 interactionType:v97 version:v98 error:v112[5]];

                v100 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
                [v100 logEvent:v99 forAdvertisedAppAdamID:v105 completionHandler:&stru_100526750];
              }

              if (v6)
              {
                v101 = sub_1003A6B88(v112[5]);
                v6[2](v6, v101);
              }

              _Block_object_dispose(&v107, 8);
              _Block_object_dispose(&v111, 8);

              _Block_object_dispose(&v120, 8);
              v103 = 0;
            }
          }
        }
      }

      else
      {
        v46 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          if (v5)
          {
            v83 = v5[11];
            v84 = v5[6];
            v85 = v83;
          }

          else
          {
            v83 = 0;
            v85 = 0;
            v84 = 0;
          }

          v86 = v84;
          *buf = 138543618;
          *&buf[4] = v83;
          *&buf[12] = 2114;
          *&buf[14] = v86;
          _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Start impression called by source app bundle ID:%{public}@, adam ID:%{public}@ with incorrect version number", buf, 0x16u);
        }

        v47 = ASDErrorWithDescription();
        if (v6)
        {
          v6[2](v6, v47);
        }

        if (v5)
        {
          v48 = v5[2];
          v49 = v5[10];
        }

        else
        {
          v48 = 0;
          v49 = 0;
        }

        v50 = v49;
        sub_100232810(InstallAttributionImpression, v48, 0, v50, v47);

        v51 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
        if (v5)
        {
          v52 = v5[2];
        }

        else
        {
          v52 = 0;
        }

        v53 = v52;
        v54 = +[_TtC9appstored12SkannerEvent adTypeApp];
        v55 = +[_TtC9appstored12SkannerEvent interactionTypeView];
        if (v5)
        {
          v56 = v5[10];
        }

        else
        {
          v56 = 0;
        }

        v57 = v56;
        v58 = [_TtC9appstored12SkannerEvent impressionWithResult:v51 adNetworkID:v53 adType:v54 interactionType:v55 version:v57 error:v47];

        v59 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
        [v59 logEvent:v58 forAdvertisedAppAdamID:v105 completionHandler:&stru_1005266D0];
      }
    }

    else
    {
      v33 = ASDErrorWithDescription();
      if (v6)
      {
        v6[2](v6, v33);
      }

      if (v5)
      {
        v34 = v5[2];
        v35 = v5[10];
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

      v36 = v35;
      sub_100232810(InstallAttributionImpression, v34, 0, v36, v33);

      v37 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
      if (v5)
      {
        v38 = v5[2];
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;
      v40 = +[_TtC9appstored12SkannerEvent adTypeApp];
      v41 = +[_TtC9appstored12SkannerEvent interactionTypeView];
      if (v5)
      {
        v42 = v5[10];
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;
      v44 = [_TtC9appstored12SkannerEvent impressionWithResult:v37 adNetworkID:v39 adType:v40 interactionType:v41 version:v43 error:v33];

      v45 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
      [v45 logEvent:v44 forAdvertisedAppAdamID:v105 completionHandler:&stru_1005266B0];
    }
  }
}

uint64_t sub_1003A66D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = *(a1 + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003B307C;
  v8[3] = &unk_10051EDB8;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v4 readUsingSession:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_1003A67A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1003A67D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1003B198C();
    v4 = [v3 integerForKey:@"install-attribution-max-source-identifier"];

    if (!v4)
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to get install attribution source identifier limit from bag", &v10, 2u);
      }

      v4 = &off_1005483D0;
    }

    if ([v4 integerValue] <= a2)
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [v4 integerValue];
        v10 = 134349312;
        v11 = a2;
        v12 = 2050;
        v13 = v9;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Source identifier %{public}ld larger than maximum %{public}ld", &v10, 0x16u);
      }
    }

    else
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        v6 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Source identifier smaller than 0", &v10, 2u);
      }
    }

    v6 = ASDErrorWithDescription();
    goto LABEL_15;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

id sub_1003A69D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1003B198C();
    v4 = [v3 integerForKey:@"install-attribution-max-campaign-id"];

    if (!v4)
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to get install attribution campaign limit from bag", v11, 2u);
      }

      v4 = &off_1005483B8;
    }

    if ([v4 integerValue] >= a2)
    {
      if (a2 > 0)
      {
        v7 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Campaign id smaller than 1", v9, 2u);
      }
    }

    else
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Campaign id larger than maximum", buf, 2u);
      }
    }

    v7 = ASDErrorWithDescription();
    goto LABEL_15;
  }

  v7 = 0;
LABEL_16:

  return v7;
}

id sub_1003A6B88(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v4 = [v1 domain];
    v5 = [v4 isEqualToString:ASDErrorDomain];

    if (v5)
    {
      ASDErrorWithSafeUserInfo();
    }

    else
    {
      ASDErrorWithDescription();
    }
    v3 = ;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1003A6C38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3)
  {
    v5 = *(v3 + 48);
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  v6 = sub_1003C5868(v4, v7);

  *(*(*(a1 + 40) + 8) + 24) = v6;
}

uint64_t sub_1003A6CC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1003A6CD8(uint64_t a1, _BOOL8 a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = sub_1003181E8(a2, *(a1 + 32));
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_1003A6D58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[BagService appstoredService];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003A6E34;
    v8[3] = &unk_10051C340;
    v8[4] = a1;
    v9 = v5;
    v10 = v6;
    [v7 bagWithCompletionHandler:v8];
  }
}

void sub_1003A6E34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v106 = a2;
  v6 = v4;
  if (v3)
  {
    if (v5)
    {
      v7 = v5[1];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v105 = [v8 longLongValue];

    if (sub_1003A575C(InstallAttributionManager, v106) && (!v5 ? (v9 = 0) : (v9 = v5[1]), v10 = v9, v11 = sub_1003A66D8(v3, v10), v10, v11))
    {
      v12 = ASDErrorWithDescription();
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Rejecting impression after buy", buf, 2u);
      }

      if (v6)
      {
        v6[2](v6, v12);
      }

      v14 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
      if (v5)
      {
        v15 = v5[2];
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v17 = +[_TtC9appstored12SkannerEvent adTypeApp];
      v18 = +[_TtC9appstored12SkannerEvent interactionTypeView];
      if (v5)
      {
        v19 = v5[10];
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      v21 = [_TtC9appstored12SkannerEvent impressionWithResult:v14 adNetworkID:v16 adType:v17 interactionType:v18 version:v20 error:v12];

      v22 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
      [v22 logEvent:v21 forAdvertisedAppAdamID:v105 completionHandler:&stru_100526770];
    }

    else if (sub_100231C80(v5))
    {
      if (v5 && (v23 = v5[10]) != 0 && (v24 = v23, v25 = ASDInstallAttributionVersionCreateFromString(), v24, v25 > 201))
      {
        v104 = sub_100231F7C(v5);
        if (v104)
        {
          if (v6)
          {
            v6[2](v6, v104);
          }

          v26 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
          v27 = v5[2];
          v28 = +[_TtC9appstored12SkannerEvent adTypeApp];
          v29 = +[_TtC9appstored12SkannerEvent interactionTypeView];
          v30 = v5[10];
          v31 = [_TtC9appstored12SkannerEvent impressionWithResult:v26 adNetworkID:v27 adType:v28 interactionType:v29 version:v30 error:v104];

          v32 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
          [v32 logEvent:v31 forAdvertisedAppAdamID:v105 completionHandler:&stru_1005267D0];
        }

        else
        {
          v46 = v5[11];
          v47 = v5[6];
          v48 = v5[10];
          v49 = v5[2];
          v101 = sub_100232138(InstallAttributionImpression, v46, v47, v48, v49);

          if (v101)
          {
            v50 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v101;
              _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Impression is misconfigured. Not adding. Error: %{public}@", buf, 0xCu);
            }

            if (v6)
            {
              v6[2](v6, 0);
            }

            v51 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
            v52 = v5[2];
            v53 = +[_TtC9appstored12SkannerEvent adTypeApp];
            v54 = +[_TtC9appstored12SkannerEvent interactionTypeView];
            v55 = v5[10];
            v102 = [_TtC9appstored12SkannerEvent impressionWithResult:v51 adNetworkID:v52 adType:v53 interactionType:v54 version:v55 error:v101];

            v56 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
            [v56 logEvent:v102 forAdvertisedAppAdamID:v105 completionHandler:&stru_1005267F0];
          }

          else
          {
            v57 = v5[10];
            if (v57 && ASDInstallAttributionVersionCreateFromString() > 399)
            {
              v102 = sub_1003A67D0(v3, v5[4]);
            }

            else
            {
              v102 = sub_1003A69D0(v3, v5[3]);
            }

            if (v102)
            {
              v58 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v102;
                _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Error finalizing impression: %{public}@", buf, 0xCu);
              }

              if (v6)
              {
                v59 = sub_1003A6B88(v102);
                v6[2](v6, v59);
              }

              v60 = v5[2];
              v61 = v5[10];
              sub_100232810(InstallAttributionImpression, v60, 0, v61, v102);

              v62 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
              v63 = v5[2];
              v64 = +[_TtC9appstored12SkannerEvent adTypeApp];
              v65 = +[_TtC9appstored12SkannerEvent interactionTypeView];
              v66 = v5[10];
              v67 = [_TtC9appstored12SkannerEvent impressionWithResult:v62 adNetworkID:v63 adType:v64 interactionType:v65 version:v66 error:v102];

              v68 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
              [v68 logEvent:v67 forAdvertisedAppAdamID:v105 completionHandler:&stru_100526810];
            }

            else
            {
              v109 = 0;
              v110 = &v109;
              v111 = 0x3032000000;
              v112 = sub_1003A6CC0;
              v113 = sub_1003A6CD0;
              v114 = 0;
              v107[0] = 0;
              v107[1] = v107;
              v107[2] = 0x2020000000;
              v108 = 0;
              v69 = *(v3 + 16);
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              *&buf[16] = sub_1003A7BE0;
              v116 = &unk_10051EE08;
              v118 = v107;
              v100 = v5;
              v117 = v100;
              v119 = &v109;
              [v69 modifyUsingTransaction:buf];
              v70 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
              v71 = v5[2];
              v72 = +[_TtC9appstored12SkannerEvent adTypeApp];
              v73 = +[_TtC9appstored12SkannerEvent interactionTypeView];
              v74 = v5[10];
              v103 = [_TtC9appstored12SkannerEvent impressionWithResult:v70 adNetworkID:v71 adType:v72 interactionType:v73 version:v74 error:v110[5]];

              v75 = v110[5];
              v76 = v5[2];
              if (v75)
              {
                v77 = v5[10];
                sub_100232810(InstallAttributionImpression, v76, 0, v77, v110[5]);

                v78 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
                [v78 logEvent:v103 forAdvertisedAppAdamID:v105 completionHandler:&stru_100526850];
              }

              else
              {
                v79 = v100[12] != 0;
                v80 = v5[10];
                sub_100232960(InstallAttributionImpression, v76, v79, v80);

                v78 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
                [v78 startStoryIfNeededWith:v103 forAdvertisedAppAdamID:v105 completionHandler:&stru_100526830];
              }

              if (v6)
              {
                v81 = sub_1003A6B88(v110[5]);
                v6[2](v6, v81);
              }

              _Block_object_dispose(v107, 8);
              _Block_object_dispose(&v109, 8);

              v102 = 0;
            }
          }
        }
      }

      else
      {
        v82 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          if (v5)
          {
            v96 = v5[11];
            v97 = v5[6];
            v98 = v96;
          }

          else
          {
            v96 = 0;
            v98 = 0;
            v97 = 0;
          }

          v99 = v97;
          *buf = 138543618;
          *&buf[4] = v96;
          *&buf[12] = 2114;
          *&buf[14] = v99;
          _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "End impression called by source app bundle ID:%{public}@, adam ID:%{public}@ with incorrect version number", buf, 0x16u);
        }

        v83 = ASDErrorWithDescription();
        if (v6)
        {
          v6[2](v6, v83);
        }

        if (v5)
        {
          v84 = v5[2];
          v85 = v5[10];
        }

        else
        {
          v84 = 0;
          v85 = 0;
        }

        v86 = v85;
        sub_100232810(InstallAttributionImpression, v84, 0, v86, v83);

        v87 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
        if (v5)
        {
          v88 = v5[2];
        }

        else
        {
          v88 = 0;
        }

        v89 = v88;
        v90 = +[_TtC9appstored12SkannerEvent adTypeApp];
        v91 = +[_TtC9appstored12SkannerEvent interactionTypeView];
        if (v5)
        {
          v92 = v5[10];
        }

        else
        {
          v92 = 0;
        }

        v93 = v92;
        v94 = [_TtC9appstored12SkannerEvent impressionWithResult:v87 adNetworkID:v89 adType:v90 interactionType:v91 version:v93 error:v83];

        v95 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
        [v95 logEvent:v94 forAdvertisedAppAdamID:v105 completionHandler:&stru_1005267B0];
      }
    }

    else
    {
      v33 = ASDErrorWithDescription();
      if (v6)
      {
        v6[2](v6, v33);
      }

      if (v5)
      {
        v34 = v5[2];
        v35 = v5[10];
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

      v36 = v35;
      sub_100232810(InstallAttributionImpression, v34, 0, v36, v33);

      v37 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
      if (v5)
      {
        v38 = v5[2];
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;
      v40 = +[_TtC9appstored12SkannerEvent adTypeApp];
      v41 = +[_TtC9appstored12SkannerEvent interactionTypeView];
      if (v5)
      {
        v42 = v5[10];
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;
      v44 = [_TtC9appstored12SkannerEvent impressionWithResult:v37 adNetworkID:v39 adType:v40 interactionType:v41 version:v43 error:v33];

      v45 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
      [v45 logEvent:v44 forAdvertisedAppAdamID:v105 completionHandler:&stru_100526790];
    }
  }
}

void sub_1003A7B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A7BE0(void *a1, void *a2)
{
  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = sub_100318568(a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
  return *(*(a1[5] + 8) + 24);
}

void *sub_1003A7C64(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_1003A6CC0;
    v32 = sub_1003A6CD0;
    v33 = 0;
    v7 = a1[2];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1003A7F08;
    v25[3] = &unk_10051EDB8;
    v27 = &v28;
    v8 = v5;
    v26 = v8;
    [v7 readUsingSession:v25];
    if ([v6 BOOLForKey:@"skadnetwork-allow-stub-impressions" defaultValue:0])
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = sub_1003A6CC0;
      v23 = sub_1003A6CD0;
      v24 = 0;
      v9 = a1[2];
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_1003A7F88;
      v16 = &unk_10051EDB8;
      v18 = &v19;
      v17 = v8;
      [v9 readUsingSession:&v13];
      v10 = v20[5];
      if (v10)
      {
        if ([v10 count])
        {
          [v29[5] addObjectsFromArray:v20[5]];
          [v29[5] sortUsingComparator:&stru_100526898];
          if ([v29[5] count] >= 7)
          {
            v11 = [v29[5] count];
            [v29[5] removeObjectsInRange:{6, v11 - 6}];
          }
        }
      }

      _Block_object_dispose(&v19, 8);
    }

    a1 = v29[5];

    _Block_object_dispose(&v28, 8);
  }

  return a1;
}

void sub_1003A7ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1003A7F08(uint64_t a1, void *a2)
{
  v6 = sub_1003C6568(a2, *(a1 + 32));
  v3 = [NSMutableArray arrayWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1003A7F88(uint64_t a1, void *a2)
{
  v3 = sub_1003C5914(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

int64_t sub_1003A7FDC(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = sub_1001C09E4(v5);
  objc_opt_class();
  v7 = sub_1001C09E4(v5);

  if (v6)
  {
    v8 = v6 + 12;
LABEL_5:
    v9 = *v8;
    goto LABEL_6;
  }

  if (v7)
  {
    v8 = v7 + 6;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:
  objc_opt_class();
  v10 = sub_1001C09E4(v4);
  objc_opt_class();
  v11 = sub_1001C09E4(v4);

  if (v10)
  {
    v12 = v10 + 12;
  }

  else
  {
    if (!v11)
    {
      v13 = 0;
      goto LABEL_11;
    }

    v12 = v11 + 6;
  }

  v13 = *v12;
LABEL_11:
  v14 = [v13 compare:v9];

  return v14;
}

void *sub_1003A8124(void *a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a2;
  v120 = a3;
  v121 = a5;
  if (!a1)
  {
    goto LABEL_26;
  }

  if (v9)
  {
    v10 = *(v9 + 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v119 = [v11 longLongValue];

  if (!sub_1003A575C(InstallAttributionManager, v121) || (!v9 ? (v12 = 0) : (v12 = *(v9 + 1)), v13 = v12, v14 = sub_1003A66D8(a1, v13), v13, !v14))
  {
    *v126 = 0;
    v127 = v126;
    v128 = 0x3032000000;
    v129 = sub_1003A6CC0;
    v130 = sub_1003A6CD0;
    v131 = 0;
    if (v9)
    {
      v25 = *(v9 + 7);
      v26 = *(v9 + 11);
      v27 = *(v9 + 2);
    }

    else
    {
      v26 = 0;
      v25 = 0;
      v27 = 0;
    }

    v28 = v27;
    v29 = sub_100232138(InstallAttributionImpression, v120, v25, v26, v28);

    if (v29)
    {
      v30 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v29;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error adding params to DB: %{public}@", &buf, 0xCu);
      }

      v31 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
      if (v9)
      {
        v32 = *(v9 + 2);
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;
      v34 = +[_TtC9appstored12SkannerEvent adTypeApp];
      if (v9)
      {
        v35 = *(v9 + 14);
        v36 = *(v9 + 11);
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      v37 = v36;
      v38 = [_TtC9appstored12SkannerEvent impressionWithResult:v31 adNetworkID:v33 adType:v34 interactionType:v35 version:v37 error:v29];

      v39 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
      [v39 logEvent:v38 forAdvertisedAppAdamID:v119 completionHandler:&stru_1005268D8];

      a1 = v29;
LABEL_25:

      _Block_object_dispose(v126, 8);
      goto LABEL_26;
    }

    if (v9)
    {
      v41 = *(v9 + 14);
    }

    else
    {
      v41 = 0;
    }

    v38 = v41;
    v42 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v38;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Received params with interaction type: %{public}@", &buf, 0xCu);
    }

    if (([v38 isEqualToString:ASDInstallAttributionInteractionTypeView] & 1) == 0 && (objc_msgSend(v38, "isEqualToString:", ASDInstallAttributionInteractionTypeClick) & 1) == 0)
    {
      v58 = ASDErrorWithDescription();
      v59 = *(v127 + 5);
      *(v127 + 5) = v58;

      v60 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v70 = *(v127 + 5);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v70;
        _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Error adding params to DB: %{public}@", &buf, 0xCu);
      }

      v61 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
      if (v9)
      {
        v62 = *(v9 + 2);
      }

      else
      {
        v62 = 0;
      }

      v63 = v62;
      v64 = +[_TtC9appstored12SkannerEvent adTypeApp];
      if (v9)
      {
        v65 = *(v9 + 14);
        v66 = *(v9 + 11);
      }

      else
      {
        v65 = 0;
        v66 = 0;
      }

      v67 = v66;
      v68 = [_TtC9appstored12SkannerEvent impressionWithResult:v61 adNetworkID:v63 adType:v64 interactionType:v65 version:v67 error:*(v127 + 5)];

      v69 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
      [v69 logEvent:v68 forAdvertisedAppAdamID:v119 completionHandler:&stru_1005268F8];

      a1 = *(v127 + 5);
      goto LABEL_25;
    }

    if (v9)
    {
      v43 = *(v9 + 11);
      if (v43)
      {
        v44 = v43;
        v45 = ASDInstallAttributionVersionCreateFromString() > 399;

        if (v45)
        {
          v46 = sub_1003A67D0(a1, *(v9 + 4));
          v47 = *(v127 + 5);
          *(v127 + 5) = v46;

          if (*(v127 + 5))
          {
            v48 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v71 = *(v127 + 5);
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v71;
              _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Error adding params to DB: %{public}@", &buf, 0xCu);
            }

            v49 = *(v9 + 2);
            v50 = *(v9 + 11);
            sub_100232810(InstallAttributionImpression, v49, 1, v50, *(v127 + 5));

            v51 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
            v52 = *(v9 + 2);
            v53 = +[_TtC9appstored12SkannerEvent adTypeApp];
            v54 = *(v9 + 14);
            v55 = *(v9 + 11);
            v56 = [_TtC9appstored12SkannerEvent impressionWithResult:v51 adNetworkID:v52 adType:v53 interactionType:v54 version:v55 error:*(v127 + 5)];

            v57 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
            [v57 logEvent:v56 forAdvertisedAppAdamID:v119 completionHandler:&stru_100526918];

            a1 = *(v127 + 5);
            goto LABEL_25;
          }

LABEL_73:
          *&buf = 0;
          *(&buf + 1) = &buf;
          v137 = 0x2020000000;
          v138 = 0;
          v88 = a1[2];
          v122[0] = _NSConcreteStackBlock;
          v122[1] = 3221225472;
          v122[2] = sub_1003A8FD8;
          v122[3] = &unk_10051EE08;
          p_buf = &buf;
          v89 = v9;
          v123 = v89;
          v125 = v126;
          [v88 modifyUsingTransaction:v122];
          if (*(*(&buf + 1) + 24) == 1)
          {
            v90 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              if (v9)
              {
                v91 = v89[1];
                v92 = v89[7];
              }

              else
              {
                v91 = 0;
                v92 = 0;
              }

              v93 = v92;
              *v132 = 138543618;
              v133 = v91;
              v134 = 2114;
              v135 = v93;
              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Successfully added install attribution params to the database for app adamID: %{public}@ from source app adamID: %{public}@", v132, 0x16u);
            }

            if (v9)
            {
              v94 = v89[2];
              v95 = v89[11];
            }

            else
            {
              v94 = 0;
              v95 = 0;
            }

            v96 = v95;
            sub_100232960(InstallAttributionImpression, v94, 1, v96);

            v118 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
            if (v9)
            {
              v97 = v89[2];
            }

            else
            {
              v97 = 0;
            }

            v98 = v97;
            v99 = +[_TtC9appstored12SkannerEvent adTypeApp];
            if (v9)
            {
              v100 = v89[14];
              v101 = v89[11];
            }

            else
            {
              v100 = 0;
              v101 = 0;
            }

            v102 = v101;
            v103 = [_TtC9appstored12SkannerEvent impressionWithResult:v118 adNetworkID:v98 adType:v99 interactionType:v100 version:v102 error:0];

            v104 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
            [v104 startStoryIfNeededWith:v103 forAdvertisedAppAdamID:v119 completionHandler:&stru_100526958];

            sub_1003A9058();
          }

          else
          {
            if (!*(v127 + 5))
            {
              v105 = ASDErrorWithDescription();
              v106 = *(v127 + 5);
              *(v127 + 5) = v105;
            }

            v107 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
            {
              v116 = *(v127 + 5);
              *v132 = 138543362;
              v133 = v116;
              _os_log_error_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "Error adding params to DB: %{public}@", v132, 0xCu);
            }

            v108 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
            if (v9)
            {
              v109 = v89[2];
            }

            else
            {
              v109 = 0;
            }

            v110 = v109;
            v111 = +[_TtC9appstored12SkannerEvent adTypeApp];
            if (v9)
            {
              v112 = v89[14];
              v113 = v89[11];
            }

            else
            {
              v112 = 0;
              v113 = 0;
            }

            v114 = v113;
            v103 = [_TtC9appstored12SkannerEvent impressionWithResult:v108 adNetworkID:v110 adType:v111 interactionType:v112 version:v114 error:*(v127 + 5)];

            v115 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
            [v115 logEvent:v103 forAdvertisedAppAdamID:v119 completionHandler:&stru_100526978];
          }

          a1 = *(v127 + 5);
          _Block_object_dispose(&buf, 8);
          goto LABEL_25;
        }
      }

      if (a4)
      {
        goto LABEL_73;
      }

      v72 = *(v9 + 3);
    }

    else
    {
      if (a4)
      {
        goto LABEL_73;
      }

      v72 = 0;
    }

    v73 = sub_1003A69D0(a1, v72);
    v74 = *(v127 + 5);
    *(v127 + 5) = v73;

    if (*(v127 + 5))
    {
      v75 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v117 = *(v127 + 5);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v117;
        _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "Error adding params to DB: %{public}@", &buf, 0xCu);
      }

      if (v9)
      {
        v76 = *(v9 + 2);
        v77 = *(v9 + 11);
      }

      else
      {
        v76 = 0;
        v77 = 0;
      }

      v78 = v77;
      sub_100232810(InstallAttributionImpression, v76, 1, v78, *(v127 + 5));

      v79 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
      if (v9)
      {
        v80 = *(v9 + 2);
      }

      else
      {
        v80 = 0;
      }

      v81 = v80;
      v82 = +[_TtC9appstored12SkannerEvent adTypeApp];
      if (v9)
      {
        v83 = *(v9 + 14);
        v84 = *(v9 + 11);
      }

      else
      {
        v83 = 0;
        v84 = 0;
      }

      v85 = v84;
      v86 = [_TtC9appstored12SkannerEvent impressionWithResult:v79 adNetworkID:v81 adType:v82 interactionType:v83 version:v85 error:*(v127 + 5)];

      v87 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
      [v87 logEvent:v86 forAdvertisedAppAdamID:v119 completionHandler:&stru_100526938];

      a1 = *(v127 + 5);
      goto LABEL_25;
    }

    goto LABEL_73;
  }

  a1 = ASDErrorWithDescription();
  v15 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *v126 = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Rejecting impression after buy", v126, 2u);
  }

  v16 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
  if (v9)
  {
    v17 = *(v9 + 2);
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = +[_TtC9appstored12SkannerEvent adTypeApp];
  if (v9)
  {
    v20 = *(v9 + 14);
    v21 = *(v9 + 11);
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v22 = v21;
  v23 = [_TtC9appstored12SkannerEvent impressionWithResult:v16 adNetworkID:v18 adType:v19 interactionType:v20 version:v22 error:a1];

  v24 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
  [v24 logEvent:v23 forAdvertisedAppAdamID:v119 completionHandler:&stru_1005268B8];

LABEL_26:

  return a1;
}

void sub_1003A8F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A8FD8(void *a1, _BOOL8 a2)
{
  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = sub_10031989C(a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
  return *(*(a1[5] + 8) + 24);
}

void sub_1003A9058()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, 604800);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  v1 = [@"com.apple.appstored.InstallAttributionManager.CleanDatabase" UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1003B23E0;
  handler[3] = &unk_10051BE18;
  v4 = v0;
  v2 = v0;
  xpc_activity_register(v1, XPC_ACTIVITY_CHECK_IN, handler);
}

uint64_t sub_1003A9180(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = sub_10031A62C(a2, *(a1 + 32));
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return *(*(*(a1 + 40) + 8) + 24);
}

void *sub_1003A91FC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (sub_1003A575C(InstallAttributionManager, v6) && (!v5 ? (v7 = 0) : (v7 = v5[1]), v8 = v7, v9 = sub_1003A66D8(a1, v8), v8, v9))
    {
      a1 = ASDErrorWithDescription();
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Rejecting impression after buy", buf, 2u);
      }
    }

    else
    {
      v11 = v5;
      v12 = [[FetchWebImpressionTask alloc] initWithWebParams:v11];
      objc_initWeak(location, v12);
      *buf = _NSConcreteStackBlock;
      v36 = 3221225472;
      v37 = sub_1003A9A1C;
      v38 = &unk_100521310;
      objc_copyWeak(&v40, location);
      v13 = v11;
      v39 = v13;
      [(FetchWebImpressionTask *)v12 setCompletionBlock:buf];
      v14 = a1[3];
      if (v14)
      {
        [*(v14 + 8) addOperation:v12];
      }

      objc_destroyWeak(&v40);
      objc_destroyWeak(location);

      *buf = 0;
      v36 = buf;
      v37 = 0x2020000000;
      LOBYTE(v38) = 0;
      v15 = a1[2];
      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_1003A9660;
      v32 = &unk_100520AB0;
      v34 = buf;
      v16 = v13;
      v33 = v16;
      [v15 modifyUsingTransaction:&v29];
      if (*(v36 + 24))
      {
        a1 = 0;
      }

      else
      {
        v17 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          if (v16)
          {
            v27 = v16[3];
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;
          LODWORD(location[0]) = 138543362;
          *(location + 4) = v28;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "SKAdNetwork: Could not add web params:%{public}@", location, 0xCu);
        }

        a1 = ASDErrorWithDescription();
        v18 = [_TtC9appstored12SkannerEvent resultTypeFinalized:v29];
        if (v16)
        {
          v19 = v16[2];
          v20 = v16[5];
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }

        v21 = v20;
        v22 = [_TtC9appstored12SkannerEvent webImpressionWithResult:v18 adNetworkRegistrableDomain:v19 version:v21 error:a1];

        v23 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
        if (v16)
        {
          v24 = v16[1];
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;
        [v23 logEvent:v22 forAdvertisedAppAdamID:objc_msgSend(v25 completionHandler:{"longLongValue"), &stru_100526998}];
      }

      _Block_object_dispose(buf, 8);
    }
  }

  return a1;
}

uint64_t sub_1003A96AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = *(a1 + 16);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1003A97E8;
      v10[3] = &unk_100526878;
      v11 = v5;
      [v7 modifyUsingTransaction:v10];

      a1 = 1;
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "SKAdNetwork: Missing private browsing session id to delete", buf, 2u);
      }

      if (a3)
      {
        ASDErrorWithDescription();
        *a3 = a1 = 0;
      }

      else
      {
        a1 = 0;
      }
    }
  }

  return a1;
}

uint64_t sub_1003A97E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_10031A590(v4, v3);
  sub_10031AD08(v4, *(a1 + 32));

  return 1;
}

id sub_1003A9838(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3 || (v5 = v3[1], v6 = [v5 longLongValue], v5, v6 <= 0))
    {
      v15 = ASDErrorWithDescription();
      goto LABEL_16;
    }

    v7 = [NSUUID alloc];
    v8 = [v4[5] lowercaseString];
    v9 = [v7 initWithUUIDString:v8];

    if (!v9 || (v10 = v4[8], v11 = sub_1002C52B0(v10), v10, (v11 & 1) == 0))
    {
      v15 = ASDErrorWithDescription();
LABEL_15:

      goto LABEL_16;
    }

    v12 = sub_1003A67D0(a1, v4[4]);
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v16 = v4[11];
      if (v16)
      {
        v17 = v16;
        v18 = v4[11];
        v19 = ASDInstallAttributionVersionCreateFromString();

        if (v19 > 399)
        {
          v15 = 0;
          goto LABEL_14;
        }
      }

      v14 = ASDErrorWithDescription();
    }

    v15 = v14;
LABEL_14:

    goto LABEL_15;
  }

  v15 = 0;
LABEL_16:

  return v15;
}

void sub_1003A9A1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained webImpression];
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;

  if (v6)
  {
    if (WeakRetained)
    {
      v8 = objc_getProperty(WeakRetained, v7, 32, 1);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    goto LABEL_7;
  }

  if (!v4)
  {
    v9 = ASDErrorWithDescription();
LABEL_7:
    v10 = v9;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:
  v11 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
  v12 = ASDLogHandleForCategory();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (WeakRetained)
      {
        v30 = objc_getProperty(WeakRetained, v14, 32, 1);
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;
      v32 = 138543362;
      v33 = v31;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "SKAdNetwork: Could not fetch web impression:%{public}@", &v32, 0xCu);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v15 = v15[2];
    }

    v16 = v15;
    v17 = *(a1 + 32);
    if (v17)
    {
      v17 = v17[5];
    }

    v18 = v17;
    v19 = [_TtC9appstored12SkannerEvent webImpressionWithResult:v11 adNetworkRegistrableDomain:v16 version:v18 error:v10];

    v20 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
    v21 = *(a1 + 32);
    if (v21)
    {
      v21 = v21[1];
    }

    v22 = v21;
    [v20 logEvent:v19 forAdvertisedAppAdamID:objc_msgSend(v22 completionHandler:{"longLongValue"), &stru_1005269B8}];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "SKAdNetwork: Web impression fetched successfully", &v32, 2u);
    }

    if (v4)
    {
      v23 = *(v4 + 16);
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = +[_TtC9appstored12SkannerEvent adTypeWeb];
    if (v4)
    {
      v26 = *(v4 + 112);
      v27 = *(v4 + 88);
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v28 = v27;
    v19 = [_TtC9appstored12SkannerEvent impressionWithResult:v11 adNetworkID:v24 adType:v25 interactionType:v26 version:v28 error:0];

    v20 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
    if (v4)
    {
      v29 = *(v4 + 8);
    }

    else
    {
      v29 = 0;
    }

    v22 = v29;
    [v20 startStoryIfNeededWith:v19 forAdvertisedAppAdamID:objc_msgSend(v22 completionHandler:{"longLongValue"), &stru_1005269D8}];
  }
}

id sub_1003A9D90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_1003A6CC0;
    v29 = sub_1003A6CD0;
    v30 = 0;
    v5 = *(a1 + 16);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1003AA0E0;
    v22[3] = &unk_10051EDB8;
    v24 = &v25;
    v23 = v3;
    [v5 readUsingSession:v22];
    v6 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v26[5];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v33 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = sub_10023FD18(*(*(&v18 + 1) + 8 * i));
          [v6 addObject:v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v33 count:16];
      }

      while (v8);
    }

    if ([NSJSONSerialization isValidJSONObject:v6])
    {
      v17 = 0;
      v12 = [NSJSONSerialization dataWithJSONObject:v6 options:0 error:&v17];
      v13 = v17;
      if (v13)
      {
        v14 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16 = [v13 localizedDescription];
          *buf = 138412290;
          v32 = v16;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error while fetching impressions %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not fetch impressions", buf, 2u);
      }

      v12 = 0;
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1003AA0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003AA0E0(uint64_t a1, void *a2)
{
  v3 = sub_1003C6568(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_1003AA134(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v132 = v5;
  v133 = a3;
  v143 = a1;
  if (a1)
  {
    v6 = objc_opt_new();
    v159 = 0;
    v134 = [NSJSONSerialization JSONObjectWithData:v5 options:4 error:&v159];
    v7 = v159;
    if (v7)
    {
      v8 = v7;
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v81 = [v8 localizedDescription];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v81;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Encountered error when storing postbacks %@", &buf, 0xCu);
      }

      v10 = v8;
LABEL_172:

      goto LABEL_173;
    }

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v11 = v134;
    v12 = [v11 countByEnumeratingWithState:&v155 objects:v183 count:16];
    if (v12)
    {
      v13 = *v156;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v156 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = sub_10024B378(InstallAttributionPingback, *(*(&v155 + 1) + 8 * i));
          if (v15)
          {
            [v6 addObject:v15];
          }

          else
          {
            v16 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Encountered error when storing postbacks", &buf, 2u);
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v155 objects:v183 count:16];
      }

      while (v12);
    }

    v17 = [v6 firstObject];
    v18 = v17;
    if (v17)
    {
      v19 = *(v17 + 16);
    }

    else
    {
      v19 = 0;
    }

    v135 = v19;

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v20 = v6;
    v21 = [v20 countByEnumeratingWithState:&v151 objects:v182 count:16];
    if (v21)
    {
      v22 = *v152;
      while (2)
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v152 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v151 + 1) + 8 * j);
          if (v24)
          {
            v24 = v24[2];
          }

          v25 = v24;
          v26 = [v25 isEqualToNumber:v135];

          if (!v26)
          {

            v77 = ASDErrorWithDescription();
            v78 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Mismatched postbacks. Will not store.", &buf, 2u);
            }

            v10 = v77;
            goto LABEL_171;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v151 objects:v182 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v147 = 0;
    v148 = &v147;
    v149 = 0x2020000000;
    v150 = 0;
    v27 = *(v143 + 16);
    v144[0] = _NSConcreteStackBlock;
    v144[1] = 3221225472;
    v144[2] = sub_1003ABB28;
    v144[3] = &unk_100526A00;
    v130 = v135;
    v145 = v130;
    v146 = &v147;
    [v27 readUsingSession:v144];
    if ((v148[3] & 1) == 0)
    {
      v79 = ASDErrorWithDescription();
      v80 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "No history found for conversion. Will not store.", &buf, 2u);
      }

      v10 = v79;
LABEL_170:

      _Block_object_dispose(&v147, 8);
LABEL_171:

      goto LABEL_172;
    }

    v28 = v20;
    v128 = v133;
    v131 = v28;
    if (![v28 count])
    {
      oslog = ASDLogHandleForCategory();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "SKAdNetwork Multi: Attempting to add zero pingbacks to DB", &buf, 2u);
      }

      goto LABEL_165;
    }

    v29 = [v28 firstObject];
    oslog = v29;
    v30 = v29;
    if (v29)
    {
      v30 = *(v29 + 16);
    }

    v31 = v30;
    v32 = *(v143 + 16);
    v175[0] = _NSConcreteStackBlock;
    v175[1] = 3221225472;
    v175[2] = sub_1003AD1FC;
    v175[3] = &unk_100526878;
    v127 = v31;
    v176 = v127;
    [v32 modifyUsingTransaction:v175];
    v33 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v131 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "SKAdNetwork Multi: Adding %lu pingbacks to the DB", &buf, 0xCu);
    }

    v136 = objc_opt_new();
    v139 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
    v138 = +[_TtC9appstored12SkannerEvent postbackTypeRealized];
    v140 = objc_opt_new();
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    obj = v131;
    v35 = [obj countByEnumeratingWithState:&v171 objects:&buf count:16];
    if (v35)
    {
      v142 = 0;
      v141 = *v172;
      do
      {
        v36 = 0;
        do
        {
          if (*v172 != v141)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v171 + 1) + 8 * v36);
          if (v37)
          {
            v38 = *(v37 + 16);
          }

          else
          {
            v38 = 0;
          }

          v39 = *(v143 + 32);
          v40 = v38;
          v41 = [v39 objectForKey:v40];

          if (v41)
          {
            v42 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *v184 = 138412290;
              *&v184[4] = v41;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%@] Multi: Adding pingback.", v184, 0xCu);
            }
          }

          if (v37)
          {
            if (*(v37 + 13) == 1)
            {
              if (v142)
              {
                v142 = 1;
              }

              else
              {
                v43 = *(v37 + 136);
                if (v43)
                {
                  v44 = ASDInstallAttributionVersionCreateFromString() < 400;
                }

                else
                {
                  v44 = 1;
                }

                v142 = v44;
              }

              [v136 addObject:v37];
            }

            v45 = *(v37 + 2);
          }

          else
          {
            v45 = 0;
          }

          v46 = *(v143 + 32);
          v47 = v45;
          v48 = [v46 objectForKey:v47];

          if (v48)
          {
            v49 = v48;
          }

          else
          {
            v49 = &stru_100529300;
          }

          *v190 = 0;
          *&v190[8] = v190;
          *&v191 = 0x3032000000;
          *(&v191 + 1) = sub_1003A6CC0;
          *&v192 = sub_1003A6CD0;
          *(&v192 + 1) = 0;
          v160 = 0;
          v161 = &v160;
          v162 = 0x2020000000;
          LOBYTE(v163) = 0;
          v50 = *(v143 + 16);
          *v184 = _NSConcreteStackBlock;
          *&v184[8] = 3221225472;
          *&v184[16] = sub_1003AD180;
          v185 = &unk_10051EE08;
          p_buf = &v160;
          v51 = v37;
          v186 = v51;
          v188 = v190;
          [v50 modifyUsingTransaction:v184];
          if (*(v161 + 24) == 1)
          {
            v52 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              if (v37)
              {
                v53 = *(v51 + 2);
              }

              else
              {
                v53 = 0;
              }

              v54 = v53;
              *v194 = 138412546;
              *&v194[4] = v49;
              *&v194[12] = 2114;
              *&v194[14] = v54;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[%@] Successfully inserted pingback into database for app adamID: %{public}@", v194, 0x16u);
            }

            sub_1003A9058();
          }

          else if (!*(*&v190[8] + 40))
          {
            v55 = ASDErrorWithDescription();
            v56 = *(*&v190[8] + 40);
            *(*&v190[8] + 40) = v55;
          }

          if (v37 && (v57 = *(v51 + 4)) != 0 && (v58 = v57, v59 = *(v51 + 17), v60 = v59 == 0, v59, v58, !v60))
          {
            sub_10024D0AC(v51, *(v161 + 24));
          }

          else
          {
            v61 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              if (v37)
              {
                v69 = *(v51 + 14);
              }

              else
              {
                v69 = 0;
              }

              v70 = v69;
              *v194 = 138412546;
              *&v194[4] = v49;
              *&v194[12] = 2114;
              *&v194[14] = v70;
              _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "[%@] Could not send analytics event for pingback creation since adNetworkId is missing. URL is %{public}@", v194, 0x16u);
            }
          }

          v62 = *(*&v190[8] + 40);
          if (v62)
          {
            v63 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              v68 = *(*&v190[8] + 40);
              *v194 = 138412546;
              *&v194[4] = v49;
              *&v194[12] = 2114;
              *&v194[14] = v68;
              _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "[%@] Error adding pingback to DB: %{public}@", v194, 0x16u);
            }

            v62 = *(*&v190[8] + 40);
          }

          v64 = v62;

          _Block_object_dispose(&v160, 8);
          _Block_object_dispose(v190, 8);

          if (v64)
          {
            if (v37)
            {
              v65 = *(v51 + 21);
            }

            else
            {
              v65 = 0;
            }

            v66 = [NSNumber numberWithInteger:v65];
            v67 = [_TtC9appstored12SkannerEvent conversionWithResult:v139 postbackType:v138 postbackSequenceIndex:v66 error:v64];
            [v140 addObject:v67];
          }

          v36 = v36 + 1;
        }

        while (v35 != v36);
        v71 = [obj countByEnumeratingWithState:&v171 objects:&buf count:16];
        v35 = v71;
      }

      while (v71);

      if ((v142 & 1) == 0 || [v136 count] < 2)
      {
LABEL_99:
        if (!sub_1003A575C(InstallAttributionManager, v128))
        {
          v82 = sub_10036FF4C(v136, &stru_100526B50);
          v83 = [NSMutableArray arrayWithArray:v82];

          if ([v83 count] && sub_1003AD290())
          {
            v177 = 0;
            v178 = &v177;
            v179 = 0x2020000000;
            v180 = 0;
            *v194 = 0;
            *&v194[8] = v194;
            *&v194[16] = 0x3032000000;
            v195 = sub_1003A6CC0;
            v196 = sub_1003A6CD0;
            v197 = 0;
            *v190 = 0u;
            v191 = 0u;
            v192 = 0u;
            v193 = 0u;
            v84 = v83;
            v85 = [v84 countByEnumeratingWithState:v190 objects:v184 count:16];
            if (v85)
            {
              v86 = *v191;
              do
              {
                for (k = 0; k != v85; k = k + 1)
                {
                  if (*v191 != v86)
                  {
                    objc_enumerationMutation(v84);
                  }

                  v88 = *(*&v190[8] + 8 * k);
                  v89 = *(v143 + 16);
                  v160 = _NSConcreteStackBlock;
                  v161 = 3221225472;
                  v162 = sub_1003AD308;
                  v163 = &unk_10051EE08;
                  v164 = v88;
                  v165 = &v177;
                  v166 = v194;
                  [v89 modifyUsingTransaction:&v160];
                }

                v85 = [v84 countByEnumeratingWithState:v190 objects:v184 count:16];
              }

              while (v85);
            }

            _Block_object_dispose(v194, 8);
            _Block_object_dispose(&v177, 8);
          }

          goto LABEL_161;
        }

        v167 = 0;
        v168 = &v167;
        v169 = 0x2020000000;
        v170 = 0;
        *v194 = 0;
        *&v194[8] = v194;
        *&v194[16] = 0x3032000000;
        v195 = sub_1003A6CC0;
        v196 = sub_1003A6CD0;
        v197 = 0;
        v74 = *(v143 + 16);
        *v190 = _NSConcreteStackBlock;
        *&v190[8] = 3221225472;
        *&v191 = sub_1003AD20C;
        *(&v191 + 1) = &unk_10051EE08;
        *(&v192 + 1) = &v167;
        v75 = v127;
        *&v192 = v75;
        *&v193 = v194;
        [v74 modifyUsingTransaction:v190];
        if (v168[3])
        {
          v76 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *v184 = 138543362;
            *&v184[4] = v75;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Imprinting complete for app: %{public}@", v184, 0xCu);
          }
        }

        else
        {
          v90 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            *v184 = 138543362;
            *&v184[4] = v75;
            _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "Could not imprint ghost for app: %{public}@", v184, 0xCu);
          }

          if (*(*&v194[8] + 40))
          {
LABEL_127:
            v92 = [_TtC9appstored12SkannerEvent conversionWithResult:v139 postbackType:v138 postbackSequenceIndex:0 error:?];
            [v140 addObject:v92];

LABEL_128:
            v93 = v75;
            if (sub_1003AD290())
            {
              v94 = sub_1003D5DC4();
              v95 = v94 == 0;

              if (v95)
              {
                v99 = [LSApplicationRecord alloc];
                v100 = [v93 longLongValue];
                v181 = 0;
                v101 = [v99 initWithStoreItemIdentifier:v100 error:&v181];
                v102 = v181;
                if (!v101)
                {
                  v97 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                  {
                    *v184 = 138543362;
                    *&v184[4] = v102;
                    _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to get app record with error: %{public}@", v184, 0xCu);
                  }

                  goto LABEL_154;
                }

                v97 = sub_100268548(v101);
              }

              else
              {
                v96 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                {
                  *v184 = 0;
                  _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Overriding developer postback URL", v184, 2u);
                }

                v97 = sub_1003D5DC4();
              }

              if (v97)
              {
                v103 = sub_1002C5338(v97);
                if (v103)
                {
                  v104 = sub_10024C53C(InstallAttributionPingback, v103);
                  v160 = 0;
                  v161 = &v160;
                  v162 = 0x3032000000;
                  v163 = sub_1003A6CC0;
                  v164 = sub_1003A6CD0;
                  v165 = 0;
                  v177 = 0;
                  v178 = &v177;
                  v179 = 0x2020000000;
                  v180 = 1;
                  v105 = *(v143 + 16);
                  *v184 = _NSConcreteStackBlock;
                  *&v184[8] = 3221225472;
                  *&v184[16] = sub_1003AD478;
                  v185 = &unk_100526BB8;
                  v106 = v93;
                  v186 = v106;
                  v107 = v104;
                  p_buf = v107;
                  v188 = &v177;
                  v189 = &v160;
                  [v105 modifyUsingTransaction:v184];
                  if ((v178[3] & 1) == 0)
                  {
                    if (!*(v161 + 40))
                    {
                      v108 = ASDErrorWithDescription();
                      v109 = *(v161 + 40);
                      *(v161 + 40) = v108;
                    }

                    v110 = ASDLogHandleForCategory();
                    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                    {
                      v126 = *(v161 + 40);
                      *v204 = 138543618;
                      v205 = v106;
                      v206 = 2114;
                      v207 = v126;
                      _os_log_error_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "Failed to add developer postbacks to database for app: %{public}@ with error: %{public}@", v204, 0x16u);
                    }
                  }

                  v102 = *(v161 + 40);

                  _Block_object_dispose(&v177, 8);
                  _Block_object_dispose(&v160, 8);
                }

                else
                {
                  v111 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                  {
                    *v184 = 0;
                    _os_log_error_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "Failed to get ETLD from developer URL", v184, 2u);
                  }

                  v102 = ASDErrorWithDescription();
                }

                goto LABEL_154;
              }

              v97 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
              {
                *v184 = 0;
                v98 = "No URL found for developer postbacks. Not cloning postbacks";
                goto LABEL_148;
              }
            }

            else
            {
              v97 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
              {
                *v184 = 0;
                v98 = "Sending developer postbacks is disabled, not cloning";
LABEL_148:
                _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, v98, v184, 2u);
              }
            }

            v102 = 0;
LABEL_154:

            if (v102)
            {
              v112 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
              {
                *v184 = 138543618;
                *&v184[4] = v93;
                *&v184[12] = 2114;
                *&v184[14] = v102;
                _os_log_error_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "Failed to clone developer postbacks for app: %{public}@ with error: %{public}@", v184, 0x16u);
              }

              v113 = [_TtC9appstored12SkannerEvent conversionWithResult:v139 postbackType:v138 postbackSequenceIndex:0 error:v102];
              [v140 addObject:v113];
            }

            else
            {
              v113 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
              {
                *v184 = 138543362;
                *&v184[4] = v93;
                _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Cloning developer postbacks complete for app: %{public}@", v184, 0xCu);
              }
            }

            _Block_object_dispose(v194, 8);
            _Block_object_dispose(&v167, 8);
LABEL_161:
            if ([v140 count])
            {
              v114 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
              [v114 logEvents:v140 forAdvertisedAppAdamID:objc_msgSend(v127 completionHandler:{"longLongValue"), &stru_100526B70}];

              sub_1003AD388(v143, v127);
            }

            else
            {
              v115 = [_TtC9appstored12SkannerEvent conversionWithResult:v139 postbackType:v138 postbackSequenceIndex:0 error:0];
              v116 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
              [v116 logEvent:v115 forAdvertisedAppAdamID:objc_msgSend(v127 completionHandler:{"longLongValue"), &stru_100526B90}];
            }

LABEL_165:
            v117 = v130;
            *&buf = 0;
            *(&buf + 1) = &buf;
            v199 = 0x3032000000;
            v200 = sub_1003A6CC0;
            v201 = sub_1003A6CD0;
            v202 = 0;
            v118 = *(v143 + 16);
            *v184 = _NSConcreteStackBlock;
            *&v184[8] = 3221225472;
            *&v184[16] = sub_1003AD128;
            v185 = &unk_100526B10;
            v119 = v117;
            v186 = v119;
            p_buf = &buf;
            [v118 modifyUsingTransaction:v184];
            v120 = *(*(&buf + 1) + 40);

            _Block_object_dispose(&buf, 8);
            v121 = v119;
            *&v171 = 0;
            *(&v171 + 1) = &v171;
            *&v172 = 0x2020000000;
            BYTE8(v172) = 0;
            *v184 = 0;
            *&v184[8] = v184;
            *&v184[16] = 0x3032000000;
            v185 = sub_1003A6CC0;
            v186 = sub_1003A6CD0;
            p_buf = 0;
            v122 = *(v143 + 16);
            *&buf = _NSConcreteStackBlock;
            *(&buf + 1) = 3221225472;
            v199 = sub_1003A9180;
            v200 = &unk_10051EE08;
            v202 = &v171;
            v123 = v121;
            v201 = v123;
            v203 = v184;
            [v122 modifyUsingTransaction:&buf];
            if (*(*&v184[8] + 40))
            {
              v124 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
              {
                *v190 = 138543362;
                *&v190[4] = v123;
                _os_log_error_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "SKAdNetwork: Could not remove params for app:%{public}@", v190, 0xCu);
              }
            }

            _Block_object_dispose(v184, 8);
            _Block_object_dispose(&v171, 8);

            sub_1003A51DC(v143);
            v10 = 0;
            goto LABEL_170;
          }

          v91 = ASDErrorWithDescription();
          v76 = *(*&v194[8] + 40);
          *(*&v194[8] + 40) = v91;
        }

        if (!*(*&v194[8] + 40))
        {
          goto LABEL_128;
        }

        goto LABEL_127;
      }

      v72 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *v184 = 0;
        _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Internal inconsistency: Invalid number of winning pingbacks", v184, 2u);
      }

      obj = ASDErrorWithDescription();
      v73 = [_TtC9appstored12SkannerEvent conversionWithResult:v139 postbackType:v138 postbackSequenceIndex:0 error:obj];
      [v140 addObject:v73];
    }

    goto LABEL_99;
  }

  v10 = 0;
LABEL_173:

  return v10;
}

void sub_1003ABA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&STACK[0x430], 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_1003ABB28(uint64_t a1, void *a2)
{
  v3 = sub_1003C8EE4(a2, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = v3 != 0;
}

id sub_1003ABB80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_1003A6CC0;
    v27 = sub_1003A6CD0;
    v28 = 0;
    v5 = *(a1 + 48);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1003ABE2C;
    v20[3] = &unk_10051AE98;
    v22 = &v23;
    v20[4] = a1;
    v6 = v3;
    v21 = v6;
    sub_100379C5C(v5, v20);
    v7 = +[_TtC9appstored26SKANPersistentTokenHandler generateRandomPrivateInput];
    v8 = [[_TtC9appstored26SKANPersistentTokenHandler alloc] initWithRandomPrivateInput:v7];
    v9 = v24[5];
    v24[5] = v8;

    v10 = [v24[5] tryGenerateBlindedElement];
    v11 = objc_opt_new();
    v12 = [v10 blindedElement];
    [v11 setObject:v12 forKeyedSubscript:@"blinded-element"];

    v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 timestamp]);
    [v11 setObject:v13 forKeyedSubscript:@"timestamp"];

    v14 = objc_opt_new();
    [v14 setObject:v11 forKeyedSubscript:@"token-info"];
    v15 = *(a1 + 48);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1003ABEA0;
    v17[3] = &unk_10051AEC0;
    v17[4] = a1;
    v18 = v6;
    v19 = &v23;
    sub_100379C5C(v15, v17);

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_1003ABE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003ABE2C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[7];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKeyedSubscript:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id sub_1003ABEA0(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[7];
  }

  return [v1 setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:a1[5]];
}

void sub_1003ABEC4(__int128 *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v88 = a3;
  v91 = a4;
  v90 = a5;
  if (a1)
  {
    v10 = ASDLogHandleForCategory();
    v11 = v10;
    if (!v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Received nil app adam ID while handling purchase completion", buf, 2u);
      }

      goto LABEL_78;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handling purchase completion for app: %{public}@", buf, 0xCu);
    }

    v12 = v91;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = ASDErrorWithDescription();
      v17 = v15;
      v89 = 0;
LABEL_15:

      v11 = v15;
      v19 = +[_TtC9appstored12SkannerEvent resultTypeTokenReceived];
      v20 = +[_TtC9appstored12SkannerEvent destinationCommerce];
      v87 = [_TtC9appstored12SkannerEvent requestWithResult:v19 destination:v20 responseCode:v90 postback:0 error:v11];

      v21 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
      [v21 logEvent:v87 forAdvertisedAppAdamID:objc_msgSend(v9 synchronizeWithSnout:"longLongValue") completionHandler:{1, &stru_100526A20}];

      if (v89)
      {
        v105 = 0;
        v106 = &v105;
        v107 = 0x2020000000;
        v108 = 0;
        v101 = 0;
        v102 = &v101;
        v103 = 0x2020000000;
        v104 = 0;
        v22 = a1[2];
        v97[0] = _NSConcreteStackBlock;
        v97[1] = 3221225472;
        v97[2] = sub_1003ACFD0;
        v97[3] = &unk_100526D90;
        v99 = &v105;
        v23 = v9;
        v98 = v23;
        v100 = &v101;
        [v22 readUsingSession:v97];
        v24 = v106[3];
        if (v24 < 1)
        {
          v26 = 0;
        }

        else
        {
          if (v102[3] == v24)
          {
            v25 = off_100525580;
          }

          else
          {
            v25 = &off_100525588;
          }

          v26 = *v25;
        }

        v28 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = v23;
          *&buf[12] = 2114;
          *&buf[14] = v26;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Determined environment for app %{public}@: %{public}@", buf, 0x16u);
        }

        v29 = v23;
        v85 = v89;
        v86 = v26;
        *&v121 = 0;
        *(&v121 + 1) = &v121;
        v122 = 0x3032000000;
        v123 = sub_1003A6CC0;
        v124 = sub_1003A6CD0;
        v125 = 0;
        v30 = a1[6];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1003AD098;
        v117 = &unk_10051AE98;
        v120 = &v121;
        v118 = a1;
        v31 = v29;
        v119 = v31;
        sub_100379C5C(v30, buf);
        if (*(*(&v121 + 1) + 40))
        {
          v32 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(*(&v121 + 1) + 40) timestamp]);
            LODWORD(v111) = 138412290;
            *(&v111 + 4) = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Finalization timestamp %@", &v111, 0xCu);
          }

          v34 = [NSMutableDictionary dictionaryWithDictionary:v85];
          v35 = v34;
          if (v34)
          {
            v36 = sub_1002378BC(v34, @"redownload", 0);
          }

          else
          {
            v36 = 0;
          }

          v37 = objc_opt_new();
          [v37 setTimestamp:{objc_msgSend(*(*(&v121 + 1) + 40), "timestamp")}];
          [v37 setAppAdamId:{objc_msgSend(v31, "unsignedLongLongValue")}];
          [v37 setIsRedownload:v36];
          v38 = sub_1002380D8(v35, @"certificate");
          if (v38)
          {
            v39 = [v37 data];
            v40 = *(*(&v121 + 1) + 40);
            v110 = 0;
            v82 = v39;
            v41 = [v40 tryFinalizeWithPublicData:? finalizationDict:? pubCertString:? error:?];
            v42 = v110;
            v83 = v41;
            v81 = v42;
            if (v41)
            {
              v43 = [v41 base64EncodedStringWithOptions:0];
              if (v43)
              {
                v80 = [*(*(&v121 + 1) + 40) blindedData];
                if (v80)
                {
                  v84 = objc_opt_new();
                  [v84 setObject:v31 forKeyedSubscript:@"item-identifier"];
                  v44 = [v80 privateInput];
                  [v84 setObject:v44 forKeyedSubscript:@"private-input"];

                  [v84 setObject:v43 forKeyedSubscript:@"prf-client"];
                  [v84 setObject:v38 forKeyedSubscript:@"certificate"];
                  v45 = [NSNumber numberWithBool:v36];
                  [v84 setObject:v45 forKeyedSubscript:@"is-redownload"];

                  v46 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(*(&v121 + 1) + 40) timestamp]);
                  [v84 setObject:v46 forKeyedSubscript:@"timestamp"];

                  if ([NSJSONSerialization isValidJSONObject:v84])
                  {
                    v109 = 0;
                    v79 = [NSJSONSerialization dataWithJSONObject:v84 options:4 error:&v109];
                    v78 = v109;
                    if (v79)
                    {
                      +[SKANTokenHandoff handoffTokenWithTokenData:advertisedItemID:environment:](_TtC9appstored16SKANTokenHandoff, "handoffTokenWithTokenData:advertisedItemID:environment:", v79, [v31 unsignedLongLongValue], v86);
                    }

                    else
                    {
                      v51 = ASDLogHandleForCategory();
                      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                      {
                        LOWORD(v111) = 0;
                        _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to hand token off, serialization failed.", &v111, 2u);
                      }
                    }

                    v52 = a1[6];
                    *&v111 = _NSConcreteStackBlock;
                    *(&v111 + 1) = 3221225472;
                    v112 = sub_1003AD10C;
                    v113 = &unk_10051B570;
                    v114 = a1;
                    v115 = v31;
                    sub_100379C5C(v52, &v111);
                    v47 = v78;
                  }

                  else
                  {
                    v47 = ASDErrorWithDescription();
                  }

                  v50 = v80;
                }

                else
                {
                  v49 = ASDErrorWithDescription();
                  v50 = 0;
                  v47 = v49;
                }
              }

              else
              {
                v47 = ASDErrorWithDescription();
              }
            }

            else
            {
              v47 = v42;
            }
          }

          else
          {
            v47 = ASDErrorWithDescription();
          }
        }

        else
        {
          v47 = ASDErrorWithDescription();
        }

        _Block_object_dispose(&v121, 8);
        if (v47)
        {
          v53 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v31;
            *&buf[12] = 2114;
            *&buf[14] = v47;
            _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Finalization failed for app %{public}@ with error: %{public}@", buf, 0x16u);
          }

          v54 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
          v55 = +[_TtC9appstored12SkannerEvent postbackTypePending];
          v56 = [_TtC9appstored12SkannerEvent conversionWithResult:v54 postbackType:v55 postbackSequenceIndex:0 error:v47];

          v57 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
          [v57 logEvent:v56 forAdvertisedAppAdamID:objc_msgSend(v31 synchronizeWithSnout:"longLongValue") completionHandler:{1, &stru_100526A40}];
        }

        else
        {
          v58 = v31;
          *&v121 = 0;
          *(&v121 + 1) = &v121;
          v122 = 0x2020000000;
          LOBYTE(v123) = 0;
          v59 = a1[2];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1003AF4F0;
          v117 = &unk_100520AB0;
          v119 = &v121;
          v60 = v58;
          v118 = v60;
          [v59 modifyUsingTransaction:buf];
          if (*(*(&v121 + 1) + 24))
          {
            v47 = 0;
          }

          else
          {
            v47 = ASDErrorWithDescription();
          }

          _Block_object_dispose(&v121, 8);
          if (v47)
          {
            v61 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = v60;
              *&buf[12] = 2114;
              *&buf[14] = v47;
              _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "Failed to clean postbacks from app %{public}@ with error: %{public}@", buf, 0x16u);
            }

            v62 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
            v63 = +[_TtC9appstored12SkannerEvent postbackTypePending];
            v64 = [_TtC9appstored12SkannerEvent conversionWithResult:v62 postbackType:v63 postbackSequenceIndex:0 error:v47];

            v65 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
            [v65 logEvent:v64 forAdvertisedAppAdamID:objc_msgSend(v60 completionHandler:{"longLongValue"), &stru_100526A60}];
          }

          if (v86)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(v117) = 0;
            v66 = a1[2];
            v92[0] = _NSConcreteStackBlock;
            v92[1] = 3221225472;
            v92[2] = sub_1003AD040;
            v92[3] = &unk_100526A88;
            v96 = buf;
            v67 = v60;
            v93 = v67;
            v94 = v86;
            v95 = v88;
            [v66 modifyUsingTransaction:v92];
            if (*(*&buf[8] + 24) == 1)
            {
              v68 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v121) = 138543362;
                *(&v121 + 4) = v67;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Pending postback created for app %{public}@", &v121, 0xCu);
              }

              v69 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
              v70 = +[_TtC9appstored12SkannerEvent postbackTypePending];
              v71 = [_TtC9appstored12SkannerEvent conversionWithResult:v69 postbackType:v70 postbackSequenceIndex:0 error:0];

              v72 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
              [v72 logEvent:v71 forAdvertisedAppAdamID:objc_msgSend(v67 completionHandler:{"longLongValue"), &stru_100526AA8}];
            }

            else
            {
              v74 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v121) = 138543362;
                *(&v121 + 4) = v67;
                _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "Pending postback creation failed for app %{public}@", &v121, 0xCu);
              }

              v75 = +[_TtC9appstored12SkannerEvent resultTypeFinalized];
              v76 = +[_TtC9appstored12SkannerEvent postbackTypePending];
              v77 = ASDErrorWithDescription();
              v71 = [_TtC9appstored12SkannerEvent conversionWithResult:v75 postbackType:v76 postbackSequenceIndex:0 error:v77];

              v72 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
              [v72 logEvent:v71 forAdvertisedAppAdamID:objc_msgSend(v67 completionHandler:{"longLongValue"), &stru_100526AC8}];
            }

            _Block_object_dispose(buf, 8);
          }

          else
          {
            v73 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
            [v73 completeStoryForAdvertisedAppAdamID:objc_msgSend(v60 completionHandler:{"longLongValue"), &stru_100526AE8}];
          }
        }

        _Block_object_dispose(&v101, 8);
        _Block_object_dispose(&v105, 8);
        v11 = v47;
      }

      else
      {
        v27 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v11;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not parse info from dictionary: %{public}@", buf, 0xCu);
        }
      }

LABEL_78:
      goto LABEL_79;
    }

    v13 = sub_1002380D8(v12, @"error");
    if (v13)
    {
      v14 = [NSString stringWithFormat:@"Error found in ad network response: %@", v13];
      v15 = ASDErrorWithDescription();
      v16 = v15;
    }

    else
    {
      v18 = sub_100237D58(v12, @"token-info");
      if (v18)
      {
        v14 = v18;
        v15 = 0;
        v89 = v14;
        goto LABEL_14;
      }

      v15 = ASDErrorWithDescription();
      v48 = v15;
      v14 = 0;
    }

    v89 = 0;
LABEL_14:

    goto LABEL_15;
  }

LABEL_79:
}

void sub_1003ACF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose((v43 - 176), 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_1003ACFD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = sub_1003C6370(v4, v3);
  v5 = sub_1003C641C(v4, *(a1 + 32));

  *(*(*(a1 + 48) + 8) + 24) = v5;
}

void sub_1003AD098(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[7];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKeyedSubscript:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id sub_1003AD10C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[7];
  }

  return [v1 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

id sub_1003AD128(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = sub_10031EF14(a2, v3, &obj);
  objc_storeStrong((v4 + 40), obj);
  return v5;
}

uint64_t sub_1003AD180(void *a1, void *a2)
{
  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = sub_10031AE40(a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
  return *(*(a1[5] + 8) + 24);
}

uint64_t sub_1003AD20C(void *a1, void *a2)
{
  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = sub_10031E0C4(a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
  return *(*(a1[5] + 8) + 24);
}

id sub_1003AD290()
{
  v0 = sub_1003D5D88();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 BOOLValue];
  }

  else
  {
    v3 = sub_1003B198C();
    v2 = [v3 BOOLForKey:@"install-attribution-should-send-dev-pingback" defaultValue:0];
  }

  return v2;
}

uint64_t sub_1003AD308(uint64_t a1, _BOOL8 a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = sub_10031B98C(a2, *(a1 + 32));
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_1003AD388(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = *(a1 + 16);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1003B2FC8;
      v8[3] = &unk_100526DF8;
      v9 = v3;
      [v5 readUsingSession:v8];
      v6 = v9;
    }

    else
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Received nil app adam ID while checking if story for app is complete", v7, 2u);
      }
    }
  }
}

uint64_t sub_1003AD478(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1003C7364(v3, *(a1 + 32));
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        if (v11 && *(v11 + 13) == 1 && sub_10024C650(*(*(&v28 + 1) + 8 * v10)))
        {
          sub_100240104(v11, *(a1 + 40));
          *(v11 + 14) = 1;
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(a1 + 48) + 8);
        if (*(v17 + 24) == 1)
        {
          v18 = *(*(&v24 + 1) + 8 * v16);
          v19 = *(*(a1 + 56) + 8);
          obj = *(v19 + 40);
          v20 = sub_10031AE40(v3, v18, &obj);
          objc_storeStrong((v19 + 40), obj);
          v17 = *(*(a1 + 48) + 8);
        }

        else
        {
          v20 = 0;
        }

        *(v17 + 24) = v20;
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  v21 = *(*(*(a1 + 48) + 8) + 24);
  return v21;
}

void sub_1003AD6C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_1003A6CC0;
    v42 = sub_1003A6CD0;
    v43 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 1;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v10 = *(a1 + 16);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1003ADA3C;
    v27[3] = &unk_10051EDB8;
    v29 = &v30;
    v11 = v7;
    v28 = v11;
    [v10 readUsingSession:v27];
    if (*(v31 + 24) == 1)
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Pingback has already been registered, ignoring call to registered: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v13 = *(a1 + 16);
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_1003ADA78;
      v22 = &unk_100526BB8;
      v14 = v11;
      v23 = v14;
      v15 = v9;
      v24 = v15;
      v25 = &v38;
      v26 = &v34;
      [v13 modifyUsingTransaction:&v19];
      if (*(v35 + 24) == 1)
      {
        sub_1003A51DC(a1);
      }

      if ((sub_1003A575C(InstallAttributionManager, v15) & 1) == 0)
      {
        sub_1003ADBFC(a1, v8, v14);
      }

      if ((v35[3] & 1) == 0 && !v39[5])
      {
        v16 = ASDErrorWithDescription();
        v17 = v39[5];
        v39[5] = v16;
      }

      v18 = [_TtC9appstored12SkannerEvent resultTypeRegister:v19];
      sub_1003ADD2C(a1, v14, v18, v39[5]);

      v12 = v23;
    }

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
  }
}

void sub_1003ADA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1003ADA3C(uint64_t a1, _BOOL8 a2)
{
  result = sub_1003C8CB8(a2, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1003ADA78(uint64_t a1, uint64_t a2)
{
  if (a2 && (sub_10031C110(a2, 0, @"none", *(a1 + 32), 0, *(a1 + 40)) & 1) != 0)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registered pingback for app: %{public}@", buf, 0xCu);
    }

    v5 = 1;
  }

  else
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543874;
      v11 = v9;
      v12 = 2114;
      v13 = 0;
      v14 = 1024;
      v15 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error setting install attribution pingback registered for app: %{public}@, error: %{public}@, result: %i", buf, 0x1Cu);
    }

    v5 = 0;
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  *(*(*(a1 + 56) + 8) + 24) = v5;
  return v5;
}

void sub_1003ADBFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_1003A6CC0;
  v12[4] = sub_1003A6CD0;
  v13 = sub_1002C5338(v5);
  v7 = *(a1 + 16);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003AE534;
  v9[3] = &unk_100520AB0;
  v11 = v12;
  v8 = v6;
  v10 = v8;
  [v7 modifyUsingTransaction:v9];

  _Block_object_dispose(v12, 8);
}

void sub_1003ADD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003ADD2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1003A6CC0;
  v28 = sub_1003A6CD0;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1003A6CC0;
  v22 = sub_1003A6CD0;
  v23 = 0;
  v10 = *(a1 + 16);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003B2ED4;
  v14[3] = &unk_100526D90;
  v11 = v7;
  v15 = v11;
  v16 = &v24;
  v17 = &v18;
  [v10 readUsingSession:v14];
  v12 = [_TtC9appstored12SkannerEvent conversionWithResult:v8 postbackType:v25[5] postbackSequenceIndex:v19[5] error:v9];
  v13 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
  [v13 logEvent:v12 forAdvertisedAppAdamID:objc_msgSend(v11 completionHandler:{"longLongValue"), &stru_100526DB0}];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
}

void sub_1003ADEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1003ADF24(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6, void *a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v33 = a5;
  v18 = a7;
  v19 = a8;
  if (a1)
  {
    v20 = ASDErrorWithDescription();
    if (sub_1002C68FC(v15))
    {
      v21 = [v15 integerValue];
      if (v21 < 0x40)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v47 = 0x3032000000;
        v48 = sub_1003A6CC0;
        v49 = sub_1003A6CD0;
        v50 = 0;
        v42 = 0;
        v43 = &v42;
        v44 = 0x2020000000;
        v45 = 1;
        v32 = v15;
        v25 = *(a1 + 16);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1003AE398;
        v34[3] = &unk_100526BE0;
        v40 = v21;
        v35 = v16;
        v26 = v17;
        v36 = v26;
        v41 = a6;
        v27 = v18;
        v37 = v27;
        p_buf = &buf;
        v39 = &v42;
        v28 = v25;
        v15 = v32;
        [v28 modifyUsingTransaction:v34];
        if (*(v43 + 24) == 1)
        {
          sub_1003A51DC(a1);
        }

        if ((sub_1003A575C(InstallAttributionManager, v27) & 1) == 0)
        {
          sub_1003ADBFC(a1, v33, v26);
        }

        if ((v43[3] & 1) == 0 && !*(*(&buf + 1) + 40))
        {
          v29 = ASDErrorWithDescription();
          v30 = *(*(&buf + 1) + 40);
          *(*(&buf + 1) + 40) = v29;
        }

        v31 = [_TtC9appstored12SkannerEvent resultTypeUpdate:v32];
        sub_1003ADD2C(a1, v26, v31, *(*(&buf + 1) + 40));

        if (v19)
        {
          v19[2](v19, *(*(&buf + 1) + 40));
        }

        _Block_object_dispose(&v42, 8);
        _Block_object_dispose(&buf, 8);

        goto LABEL_24;
      }

      v22 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v17;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Attempted to set invalid conversion value for app adamID: %{public}@, aborting.", &buf, 0xCu);
      }

      if (v19)
      {
        (v19)[2](v19, v20);
      }
    }

    else
    {
      v24 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v17;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Attempted to set invalid type for conversion value for app adamID: %{public}@, aborting.", &buf, 0xCu);
      }

      if (v19)
      {
        (v19)[2](v19, v20);
      }
    }

    v23 = +[_TtC9appstored12SkannerEvent resultTypeUpdate];
    sub_1003ADD2C(a1, v17, v23, v20);

LABEL_24:
  }
}

void sub_1003AE36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003AE398(uint64_t a1, uint64_t a2)
{
  v3 = sub_10031C110(a2, *(a1 + 72), *(a1 + 32), *(a1 + 40), *(a1 + 80), *(a1 + 48));
  v4 = 0;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      *buf = 138543874;
      v16 = v14;
      v17 = 2114;
      v18 = v5;
      v19 = 1024;
      v20 = v3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error updating install attribution pingback for app: %{public}@, error: %{public}@, result: %i", buf, 0x1Cu);
    }
  }

  if (v3)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138543362;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updated conversion value for app: %{public}@", buf, 0xCu);
    }
  }

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  *(*(*(a1 + 64) + 8) + 24) = v3;
  return v3;
}

uint64_t sub_1003AE534(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    sub_10024C53C(InstallAttributionPingback, v4);
  }

  else
  {
    sub_1003D5DC4();
  }
  v5 = ;
  if (v5)
  {
    v6 = sub_10031D934(v3, v5, *(a1 + 32));
    v7 = 0;
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        *buf = 138543874;
        v17 = v15;
        v18 = 2114;
        v19 = v8;
        v20 = 1024;
        v21 = v6;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error setting developer pingback domain for app: %{public}@, error: %{public}@, result: %i", buf, 0x1Cu);
      }
    }

    if (v6)
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 138543362;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Developer pingback domain set for app: %{public}@", buf, 0xCu);
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v8 = 0;
  }

  return v13;
}

uint64_t sub_1003AE708(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = sub_1003A6CC0;
    v14[4] = sub_1003A6CD0;
    v15 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    a1 = a1[2];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003AE858;
    v6[3] = &unk_10051EE08;
    v8 = &v10;
    v7 = v3;
    v9 = v14;
    [a1 modifyUsingTransaction:v6];
    LOBYTE(a1) = *(v11 + 24);

    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(v14, 8);
  }

  return a1 & 1;
}

void sub_1003AE834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003AE858(void *a1, void *a2)
{
  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = sub_10031AE40(a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
  v7 = *(*(a1[5] + 8) + 24);
  v8 = ASDLogHandleForCategory();
  v9 = v8;
  if (v7 == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully added test postback", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = *(*(a1[6] + 8) + 40);
    *buf = 138543362;
    v14 = v11;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to add test postback with error: %{public}@", buf, 0xCu);
  }

  return *(*(a1[5] + 8) + 24);
}

void *sub_1003AE9B0(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_1003A6CC0;
    v23 = sub_1003A6CD0;
    v24 = 0;
    v5 = a1[2];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1003AEBF8;
    v16[3] = &unk_10051EDB8;
    v18 = &v19;
    v17 = v3;
    [v5 readUsingSession:v16];
    a1 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v20[5];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v25 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = sub_10024C170(InstallAttributionPingback, *(*(&v12 + 1) + 8 * i));
          if (v10)
          {
            [a1 addObject:{v10, v12}];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v25 count:16];
      }

      while (v7);
    }

    _Block_object_dispose(&v19, 8);
  }

  return a1;
}

void sub_1003AEBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003AEBF8(uint64_t a1, id a2)
{
  v3 = sub_1003C707C(a2, *(a1 + 32), 0);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_1003AEC50(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = sub_1003A6CC0;
    v14[4] = sub_1003A6CD0;
    v15 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    a1 = a1[2];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003AEDA0;
    v6[3] = &unk_10051EE08;
    v8 = &v10;
    v7 = v3;
    v9 = v14;
    [a1 modifyUsingTransaction:v6];
    LOBYTE(a1) = *(v11 + 24);

    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(v14, 8);
  }

  return a1 & 1;
}

void sub_1003AED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003AEDA0(uint64_t *a1, void *a2)
{
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = sub_10031ADA4(a2, a1[4]);
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
  return *(*(a1[5] + 8) + 24);
}

void sub_1003AEE1C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = sub_1003A4EE0();
        v9 = v7;
        v10 = v9;
        if (v8)
        {
          v11 = v8[2];
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_1003B2BC0;
          v17[3] = &unk_100526878;
          v18 = v9;
          [v11 modifyUsingTransaction:v17];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }
}

void sub_1003AEFC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v22 = v6;
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        v15 = [v14 mutableCopy];
        v16 = [v14 objectForKeyedSubscript:@"sourceDomain"];
        v17 = [v14 objectForKeyedSubscript:@"sourceAppId"];
        v18 = v17;
        if (v16)
        {
          [v15 setObject:0 forKeyedSubscript:@"sourceAppId"];
          if ((sub_1002C52B0(v16) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else if (([v17 integerValue] & 0x8000000000000000) != 0)
        {
LABEL_14:
          v19 = ASDErrorWithDescription();

          v7 = v22;
          if (!v19)
          {
            goto LABEL_18;
          }

          v20 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v29 = v19;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Test postback source configuration failed with error: %{public}@", buf, 0xCu);
          }

          (*(v22 + 2))(v22, 0, v19);
          goto LABEL_21;
        }

        [v8 addObject:v15];

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v7 = v22;
LABEL_18:
    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Test postback source configuration succeeded", buf, 2u);
    }

    (v7)[2](v7, v8, 0);
LABEL_21:
    v5 = v23;
  }
}

void sub_1003AF2D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003AF36C;
    v6[3] = &unk_100526878;
    v7 = v3;
    [v5 modifyUsingTransaction:v6];
  }
}

id sub_1003AF36C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3)
  {
    v5 = *(v3 + 48);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    LOBYTE(v7) = *(v7 + 14);
  }

  v8 = sub_10031BFD4(v4, v6, v7 & 1);

  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (!v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v14 = v14[2];
    }

    v12 = v14;
    v15 = 138543618;
    v16 = v12;
    v17 = 1024;
    v18 = 0;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error removing install attribution pingback for app: %{public}@, result: %i", &v15, 0x12u);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      v11 = v11[2];
    }

    v12 = v11;
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removed pingback for app: %{public}@", &v15, 0xCu);
LABEL_10:
  }

LABEL_12:

  return v8;
}

void sub_1003AF538(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003AF5D4;
    v6[3] = &unk_100526878;
    v7 = v3;
    [v5 modifyUsingTransaction:v6];
  }
}

id sub_1003AF5D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3)
  {
    v5 = *(v3 + 48);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = sub_10031CA98(v4, v6);

  v8 = ASDLogHandleForCategory();
  v9 = v8;
  if (!v7)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v13 = v13[2];
    }

    v11 = v13;
    v14 = 138543618;
    v15 = v11;
    v16 = 1024;
    v17 = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error incrementing pingback retry count for app: %{public}@, result: %i", &v14, 0x12u);
    goto LABEL_8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = v10[2];
    }

    v11 = v10;
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Incremented pingback retry count for app: %{public}@", &v14, 0xCu);
LABEL_8:
  }

LABEL_10:

  return v7;
}

void sub_1003AF748(uint64_t a1, id a2)
{
  v3 = sub_1003C7EC4(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1003AF794(uint64_t a1, void *a2)
{
  activity = a2;
  state = xpc_activity_get_state(activity);
  if (state != 2)
  {
    v4 = state;
    if (!state)
    {
      v5 = xpc_activity_copy_criteria(activity);
      if (!v5)
      {
        v6 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting criteria for install attribution pingback retry task", &buf, 2u);
        }

        xpc_activity_set_criteria(activity, *(a1 + 32));
        v5 = 0;
      }

      goto LABEL_114;
    }

    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v4;
      v26 = "Unknown state: %d when processing install attribution pingback retry task";
      v27 = v5;
      v28 = 8;
LABEL_113:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, &buf, v28);
      goto LABEL_114;
    }

    goto LABEL_114;
  }

  v94 = sub_1003A4EE0(InstallAttributionManager);
  v7 = *(a1 + 40);
  v80 = activity;
  v82 = v7;
  if (v94)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v82;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending mature pingbacks for environment: %{public}@", &buf, 0xCu);
    }

    v93 = [v82 isEqualToString:@"development"];
    v9 = @"com.apple.appstored.InstallAttributionManager.PingbackRetry";
    if (v93)
    {
      v9 = @"com.apple.appstored.InstallAttributionManager.PingbackRetry.Development";
    }

    v79 = v9;
    if (v93 && ![_TtC9appstored21SKANEnvironmentHelper shouldUseDevelopmentSettingsForEnvironment:v82])
    {
      v31 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Developer mode is not enabled for development pingback transmission, unregistering task", &buf, 2u);
      }

      xpc_activity_unregister([@"com.apple.appstored.InstallAttributionManager.PingbackRetry.Development" UTF8String]);
      goto LABEL_109;
    }

    v10 = sub_1003B198C();
    v87 = [v10 integerForKey:@"install-attribution-max-ping-back-attempts" defaultValue:10];

    v11 = [NSMutableSet setWithObject:v82];
    if ([v82 isEqual:@"production"])
    {
      [v11 addObject:@"development"];
    }

    v115 = 0;
    v116 = &v115;
    v117 = 0x3032000000;
    v118 = sub_1003A6CC0;
    v119 = sub_1003A6CD0;
    v120 = 0;
    v12 = v94[2];
    v112[0] = _NSConcreteStackBlock;
    v112[1] = 3221225472;
    v112[2] = sub_1003B19E0;
    v112[3] = &unk_10051EDB8;
    v114 = &v115;
    v78 = v11;
    v113 = v78;
    [v12 readUsingSession:v112];
    if (![v116[5] count])
    {
      v29 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "No registered pingbacks found. Unregistering pingback retry task.", &buf, 2u);
      }

      v30 = v79;
      xpc_activity_unregister([(__CFString *)v79 UTF8String]);
      goto LABEL_108;
    }

    v106 = 0;
    v107 = &v106;
    v108 = 0x3032000000;
    v109 = sub_1003A6CC0;
    v110 = sub_1003A6CD0;
    v111 = 0;
    v13 = v94[2];
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_1003B1A34;
    v103[3] = &unk_10051EDB8;
    v105 = &v106;
    v104 = v78;
    [v13 readUsingSession:v103];
    group = dispatch_group_create();
    v76 = [NSSet setWithObjects:@"Accept-Language", 0];
    v14 = [_TtC9appstored21SKANEnvironmentHelper shouldUseProxyOverrideForEnvironment:v82];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 BOOLValue];

      if (v16)
      {
LABEL_19:
        v17 = sub_1003B198C();
        v18 = [v17 URLForKey:@"install-attribution-postback-proxy-url"];

        if (v18)
        {
          v19 = [v18 host];
          v20 = [v18 port];
          v124 = @"HTTPEnable";
          v125 = @"HTTPSEnable";
          *&buf = &off_1005483A0;
          *(&buf + 1) = &off_1005483A0;
          v126 = kCFStreamPropertyHTTPProxyPort;
          v127 = kCFStreamPropertyHTTPSProxyPort;
          v136 = v20;
          v137 = v20;
          v21 = [NSDictionary dictionaryWithObjects:&buf forKeys:&v124 count:4];
          v22 = v21;
          if (v19)
          {
            v23 = [v21 mutableCopy];
            [v23 setObject:v19 forKeyedSubscript:kCFStreamPropertyHTTPProxyHost];
            [v23 setObject:v19 forKeyedSubscript:kCFStreamPropertyHTTPSProxyHost];
            v24 = [v23 copy];

            v22 = v24;
          }

          v25 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
          [v25 setConnectionProxyDictionary:v22];
          [v25 set_preventsSystemHTTPProxyAuthentication:1];
          [v25 set_requiresSecureHTTPSProxyConnection:1];
          v77 = v25;
        }

        else
        {
          v19 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not get install attribution postback proxy URL from the bag", &buf, 2u);
          }

          v77 = 0;
        }

        if (v77)
        {
          v81 = 1;
          goto LABEL_43;
        }

        v38 = ASDErrorWithDescription();
        v75 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v38;
          _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "Aborting sending postback since proxy URL could not be found in the bag %{public}@", &buf, 0xCu);
        }

        goto LABEL_107;
      }
    }

    else
    {
      v32 = sub_1003B198C();
      v33 = [v32 stringForKey:@"install-attribution-should-use-proxy"];
      v34 = v33;
      v35 = @"false";
      if (v33)
      {
        v35 = v33;
      }

      v36 = v35;

      v37 = [(__CFString *)v36 isEqualToString:@"true"];
      if (v37)
      {
        goto LABEL_19;
      }
    }

    v77 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    if (v77)
    {
      v81 = 0;
LABEL_43:
      [v77 set_suppressedAutoAddedHTTPHeaders:v76];
      v39 = [NSURLSession sessionWithConfiguration:v77 delegate:v94 delegateQueue:0];
      if (v39)
      {
        v86 = v39;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        obj = v107[5];
        v40 = [obj countByEnumeratingWithState:&v99 objects:&buf count:16];
        if (!v40)
        {
          goto LABEL_100;
        }

        v95 = *v100;
        while (1)
        {
          v96 = v40;
          for (i = 0; i != v96; i = i + 1)
          {
            if (*v100 != v95)
            {
              objc_enumerationMutation(obj);
            }

            v42 = *(*(&v99 + 1) + 8 * i);
            if (v42)
            {
              v43 = *(v42 + 16);
            }

            else
            {
              v43 = 0;
            }

            v44 = v43;
            v45 = [v44 longLongValue];

            v97 = +[_TtC9appstored12SkannerEvent resultTypeTransmission];
            if (v42 && *(v42 + 14) == 1)
            {
              v46 = +[_TtC9appstored12SkannerEvent destinationDeveloper];
            }

            else
            {
              v46 = +[_TtC9appstored12SkannerEvent destinationAdNetwork];
              if (!v42)
              {
                goto LABEL_58;
              }
            }

            if (*(v42 + 120) < 1 || ((v93 | sub_10024C5C0(v42)) & 1) != 0)
            {
LABEL_58:
              v47 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                *block = 0;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Processing mature pingbacks", block, 2u);
              }

              if (v42)
              {
                v48 = *(v42 + 16);
              }

              else
              {
                v48 = 0;
              }

              v49 = v48;
              v50 = [v49 copy];

              if (v42)
              {
                v51 = *(v42 + 112);
              }

              else
              {
                v51 = 0;
              }

              v52 = v51;
              v53 = [NSURL URLWithString:v52];

              if (!v53 || (!v42 ? (v54 = 0) : (v54 = *(v42 + 112)), v55 = v54, v56 = [v55 length] == 0, v55, v56))
              {
                if (v42)
                {
                  v63 = *(v42 + 112);
                }

                else
                {
                  v63 = 0;
                }

                v64 = v63;
                v57 = ASDErrorWithDescription();

                v65 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  *block = 138543362;
                  *&block[4] = v57;
                  _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Aborting sending postback since postback URL is invalid %{public}@", block, 0xCu);
                }

                sub_1003AF2D0(v94, v42);
                v59 = [_TtC9appstored12SkannerEvent requestWithResult:v97 destination:v46 responseCode:0 postback:v42 error:v57];
                v58 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
                [v58 logEvent:v59 forAdvertisedAppAdamID:v45 completionHandler:&stru_100526C98];
                goto LABEL_91;
              }

              v57 = sub_10024C680(v42);
              sub_10024CAA8(v42);
              v98 = 0;
              v58 = [NSJSONSerialization dataWithJSONObject:v57 options:1 error:&v98];
              v59 = v98;
              if (v59)
              {
                v60 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  *block = 138543618;
                  *&block[4] = v50;
                  *&block[12] = 2114;
                  *&block[14] = v59;
                  _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Install attribution pingback serialization for app: %{public}@ failed with error: %{public}@", block, 0x16u);
                }

                sub_1003AF2D0(v94, v42);
                v61 = [_TtC9appstored12SkannerEvent requestWithResult:v97 destination:v46 responseCode:0 postback:v42 error:v59];
                v62 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
                [v62 logEvent:v61 forAdvertisedAppAdamID:v45 completionHandler:&stru_100526CB8];
LABEL_90:

LABEL_91:
                goto LABEL_92;
              }

              v61 = [[NSMutableURLRequest alloc] initWithURL:v53 cachePolicy:1 timeoutInterval:60.0];
              [v61 setHTTPMethod:@"POST"];
              [v61 setHTTPBody:v58];
              [v61 setValue:@"App Store" forHTTPHeaderField:@"User-Agent"];
              [v61 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
              v91 = sub_1003B1AF0(v53);
              if (v91)
              {
                v67 = sub_1003B1AF0(v53);
                [v61 setValue:v67 forHTTPHeaderField:@"Proxy-Authorization"];

                goto LABEL_86;
              }

              if (v81)
              {
                v89 = ASDErrorWithDescription();
                log = ASDLogHandleForCategory();
                if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                {
                  *block = 0;
                  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Proxy auth header generation failed. Skipping this postback.", block, 2u);
                }

                sub_1003AF538(v94, v42);
                loga = [_TtC9appstored12SkannerEvent requestWithResult:v97 destination:v46 responseCode:0 postback:v42 error:v89];
                v68 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
                [v68 logEvent:loga forAdvertisedAppAdamID:v45 completionHandler:&stru_100526CD8];

                v69 = v89;
              }

              else
              {
LABEL_86:
                if (v42)
                {
                  v70 = *(v42 + 120) + 1;
                }

                else
                {
                  v70 = 1;
                }

                v90 = v70 >= v87;
                dispatch_group_enter(group);
                v124 = _NSConcreteStackBlock;
                v125 = 3221225472;
                v126 = sub_1003B1F58;
                v127 = &unk_100526D40;
                v128 = v50;
                v129 = v97;
                v130 = v46;
                v131 = v42;
                v134 = v90;
                v132 = v94;
                v133 = group;
                v71 = [v86 dataTaskWithRequest:v61 completionHandler:&v124];
                [v71 resume];

                v69 = v128;
              }

              v62 = v91;
              goto LABEL_90;
            }

            v50 = ASDErrorWithDescription();
            v66 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              v72 = *(v42 + 16);
              *block = 138543618;
              *&block[4] = v72;
              *&block[12] = 2112;
              *&block[14] = v50;
              _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Last retry happened too recently, skipping pingback for app:%{public}@ error:%@", block, 0x16u);
            }

            v53 = [_TtC9appstored12SkannerEvent requestWithResult:v97 destination:v46 responseCode:0 postback:v42 error:v50];
            v57 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
            [v57 logEvent:v53 forAdvertisedAppAdamID:v45 completionHandler:&stru_100526C78];
LABEL_92:
          }

          v40 = [obj countByEnumeratingWithState:&v99 objects:&buf count:16];
          if (!v40)
          {
LABEL_100:

            v73 = dispatch_get_global_queue(0, 0);
            *block = _NSConcreteStackBlock;
            *&block[8] = 3221225472;
            *&block[16] = sub_1003B2364;
            v122 = &unk_10051AF98;
            v123 = v80;
            dispatch_group_notify(group, v73, block);

            v38 = v86;
            goto LABEL_107;
          }
        }
      }

      v74 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "Failed to initialize url session", &buf, 2u);
      }

      v38 = v77;
      goto LABEL_107;
    }

    v38 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Error in creating URLSessionConfig", &buf, 2u);
    }

LABEL_107:

    _Block_object_dispose(&v106, 8);
LABEL_108:

    _Block_object_dispose(&v115, 8);
LABEL_109:
  }

  if (!xpc_activity_set_state(v80, 4))
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v26 = "Could not set state of the install attribution pingback retry task activity to XPC_ACTIVITY_STATE_CONTINUE";
      v27 = v5;
      v28 = 2;
      goto LABEL_113;
    }

LABEL_114:
  }
}

void sub_1003B091C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_1003B09D4(uint64_t a1, void *a2, void *a3)
{
  v35 = a2;
  v34 = a3;
  v42 = a1;
  if (a1)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending test postbacks", buf, 2u);
    }

    v36 = objc_opt_new();
    *buf = 0;
    v80 = buf;
    v81 = 0x3032000000;
    v82 = sub_1003A6CC0;
    v83 = sub_1003A6CD0;
    v84 = 0;
    v6 = *(a1 + 16);
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_1003B1584;
    v76[3] = &unk_10051EDB8;
    v78 = buf;
    v39 = v35;
    v77 = v39;
    [v6 readUsingSession:v76];
    if (![*(v80 + 5) count])
    {
      group = ASDErrorWithDescription();
      v29 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "No test postbacks found.", v68, 2u);
      }

      [v36 setObject:@"failure" forKeyedSubscript:@"status"];
      [v36 setObject:group forKeyedSubscript:@"error"];
      if (v34)
      {
        v34[2]();
      }

      goto LABEL_50;
    }

    group = dispatch_group_create();
    v33 = [NSSet setWithObjects:@"Accept-Language", 0];
    v7 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    v8 = v7;
    if (v7)
    {
      [v7 set_suppressedAutoAddedHTTPHeaders:v33];
      v37 = [NSURLSession sessionWithConfiguration:v8 delegate:a1 delegateQueue:0];
      if (v37)
      {
        v74[0] = 0;
        v74[1] = v74;
        v74[2] = 0x2020000000;
        v75 = 1;
        [v36 setObject:@"success" forKeyedSubscript:@"status"];
        *v68 = 0;
        v69 = v68;
        v70 = 0x3032000000;
        v71 = sub_1003A6CC0;
        v72 = sub_1003A6CD0;
        v73 = objc_opt_new();
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        obj = *(v80 + 5);
        v9 = [obj countByEnumeratingWithState:&v64 objects:v87 count:16];
        if (v9)
        {
          v41 = *v65;
          do
          {
            v43 = v9;
            for (i = 0; i != v43; i = i + 1)
            {
              if (*v65 != v41)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v64 + 1) + 8 * i);
              v12 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *v85 = 0;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Processing test postback", v85, 2u);
              }

              v13 = objc_opt_new();
              if (v11)
              {
                v14 = v11[6];
              }

              else
              {
                v14 = 0;
              }

              v15 = v14;
              [v13 setObject:v15 forKeyedSubscript:@"transaction-id"];

              if (v11)
              {
                v16 = v11[14];
              }

              else
              {
                v16 = 0;
              }

              v17 = v16;
              v18 = [NSURL URLWithString:v17];

              if (v18)
              {
                v19 = sub_10024C680(v11);
                v63 = 0;
                v20 = [NSJSONSerialization dataWithJSONObject:v19 options:1 error:&v63];
                v21 = v63;
                if (v21)
                {
                  v22 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    *v85 = 138543618;
                    *&v85[4] = v39;
                    *&v85[12] = 2114;
                    *&v85[14] = v21;
                    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "SKAN test postback serialization for app: %{public}@ failed with error: %{public}@", v85, 0x16u);
                  }

                  [v13 setObject:@"failure" forKeyedSubscript:@"status"];
                  [v13 setObject:v21 forKeyedSubscript:@"error"];
                  [*(v69 + 5) addObject:v13];
                  sub_1003AF2D0(v42, v11);
                }

                else
                {
                  v26 = [[NSMutableURLRequest alloc] initWithURL:v18 cachePolicy:1 timeoutInterval:60.0];
                  [v26 setHTTPMethod:@"POST"];
                  [v26 setHTTPBody:v20];
                  [v26 setValue:@"App Store" forHTTPHeaderField:@"User-Agent"];
                  [v26 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
                  *v85 = 0;
                  *&v85[8] = v85;
                  *&v85[16] = 0x2020000000;
                  v86 = 0;
                  dispatch_group_enter(group);
                  v49[0] = _NSConcreteStackBlock;
                  v49[1] = 3221225472;
                  v49[2] = sub_1003B15DC;
                  v49[3] = &unk_100526C30;
                  v50 = v39;
                  v51 = v13;
                  v52 = @"status";
                  v53 = @"failure";
                  v54 = @"error";
                  v55 = @"raw-http-response";
                  v56 = v42;
                  v60 = v68;
                  v57 = v11;
                  v61 = v85;
                  v58 = group;
                  v59 = @"success";
                  v62 = v74;
                  v27 = [v37 dataTaskWithRequest:v26 completionHandler:v49];
                  [v27 resume];

                  _Block_object_dispose(v85, 8);
                }
              }

              else
              {
                if (v11)
                {
                  v23 = v11[14];
                }

                else
                {
                  v23 = 0;
                }

                v24 = v23;
                v19 = ASDErrorWithDescription();

                v25 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *v85 = 138543362;
                  *&v85[4] = v19;
                  _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Aborting sending test postback since URL is invalid %{public}@", v85, 0xCu);
                }

                [v13 setObject:@"failure" forKeyedSubscript:@"status"];
                [v13 setObject:v19 forKeyedSubscript:@"error"];
                [*(v69 + 5) addObject:v13];
                sub_1003AF2D0(v42, v11);
              }
            }

            v9 = [obj countByEnumeratingWithState:&v64 objects:v87 count:16];
          }

          while (v9);
        }

        v28 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1003B1928;
        block[3] = &unk_100526C58;
        v47 = v34;
        v45 = v36;
        v46 = @"responses";
        v48 = v68;
        dispatch_group_notify(group, v28, block);

        _Block_object_dispose(v68, 8);
        _Block_object_dispose(v74, 8);
        goto LABEL_49;
      }

      v37 = ASDErrorWithDescription();
      v32 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *v68 = 0;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Error in creating URLSession for SKAN test", v68, 2u);
      }

      [v36 setObject:@"failure" forKeyedSubscript:@"status"];
      v31 = v34;
      [v36 setObject:v37 forKeyedSubscript:@"error"];
      if (!v34)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v37 = ASDErrorWithDescription();
      v30 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *v68 = 0;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error in creating URLSessionConfig for SKAN test", v68, 2u);
      }

      [v36 setObject:@"failure" forKeyedSubscript:@"status"];
      v31 = v34;
      [v36 setObject:v37 forKeyedSubscript:@"error"];
      if (!v34)
      {
        goto LABEL_49;
      }
    }

    (v31[2])(v31, v36);
LABEL_49:

LABEL_50:
    _Block_object_dispose(buf, 8);
  }
}

void sub_1003B1584(uint64_t a1, id a2)
{
  v3 = sub_1003C707C(a2, *(a1 + 32), 1);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1003B15DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v20 = 138543618;
      v21 = v19;
      v22 = 2114;
      v23 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Test postback for app: %{public}@ failed with error: %{public}@", &v20, 0x16u);
    }

    [*(a1 + 40) setObject:*(a1 + 56) forKeyedSubscript:*(a1 + 48)];
    v11 = ASDErrorWithSafeUserInfo();
    [*(a1 + 40) setObject:v11 forKeyedSubscript:*(a1 + 64)];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v8 && (isKindOfClass & 1) != 0)
    {
      [*(a1 + 40) setObject:v8 forKeyedSubscript:*(a1 + 72)];
    }

    [*(*(*(a1 + 112) + 8) + 40) addObject:*(a1 + 40)];
    sub_1003AF2D0(*(a1 + 80), *(a1 + 88));
    *(*(*(a1 + 120) + 8) + 24) = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    if (v11)
    {
      [*(a1 + 40) setObject:v11 forKeyedSubscript:*(a1 + 72)];
    }

    v15 = [v11 statusCode];
    v16 = ASDLogHandleForCategory();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15 != 200)
    {
      if (v17)
      {
        v20 = 134349056;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending test postback failed with HTTP error code: %{public}ld", &v20, 0xCu);
      }

      v18 = [NSError errorWithDomain:NSURLErrorDomain code:v15 userInfo:0];
      [*(a1 + 40) setObject:*(a1 + 56) forKeyedSubscript:*(a1 + 48)];
      [*(a1 + 40) setObject:v18 forKeyedSubscript:*(a1 + 64)];
      [*(*(*(a1 + 112) + 8) + 40) addObject:*(a1 + 40)];
      *(*(*(a1 + 120) + 8) + 24) = 0;
      sub_1003AF2D0(*(a1 + 80), *(a1 + 88));
      dispatch_group_leave(*(a1 + 96));

      goto LABEL_9;
    }

    if (v17)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Test postback sent successfully", &v20, 2u);
    }

    [*(a1 + 40) setObject:*(a1 + 104) forKeyedSubscript:*(a1 + 48)];
    [*(*(*(a1 + 112) + 8) + 40) addObject:*(a1 + 40)];
    *(*(*(a1 + 120) + 8) + 24) = 1;
    sub_1003AF2D0(*(a1 + 80), *(a1 + 88));
LABEL_8:
    dispatch_group_leave(*(a1 + 96));
LABEL_9:
  }

  v13 = *(*(a1 + 128) + 8);
  if (*(v13 + 24) == 1)
  {
    v14 = *(*(*(a1 + 120) + 8) + 24);
  }

  else
  {
    v14 = 0;
  }

  *(v13 + 24) = v14 & 1;
}

uint64_t sub_1003B1928(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    [*(result + 32) setObject:*(*(*(result + 56) + 8) + 40) forKeyedSubscript:*(result + 40)];
    v2 = *(*(v1 + 48) + 16);

    return v2();
  }

  return result;
}

id sub_1003B198C()
{
  v0 = +[BagService appstoredService];
  v1 = [v0 lastBag];

  return v1;
}

void sub_1003B19E0(uint64_t a1, id a2)
{
  v3 = sub_1003C7F38(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1003B1A34(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = +[NSDate date];
  v4 = sub_1003C8188(v3, v8, *(a1 + 32));

  v5 = [NSMutableArray arrayWithArray:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id sub_1003B1AF0(void *a1)
{
  v1 = a1;
  v2 = ASDErrorWithDescription();
  v3 = [v1 absoluteString];

  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v6 = [NSString stringWithFormat:@"%@%@;%f", @"App Store", v3, v5];;

  v7 = [v6 stringByRemovingPercentEncoding];

  if (v7)
  {
    v8 = [v7 dataUsingEncoding:4];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 base64EncodedStringWithOptions:0];
      if ([v10 length])
      {
        v24 = v2;
        v11 = +[BagService appstoredService];
        v12 = [v11 amsBag];
        v25 = 0;
        v13 = [AMSMescal signatureFromData:v9 type:1 bag:v12 error:&v25];
        v14 = v25;

        if (v14)
        {
          v15 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = v14;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Problem with generating mescal signature %@", buf, 0xCu);
          }

          v16 = 0;
        }

        else
        {
          v15 = [v13 base64EncodedStringWithOptions:0];
          v17 = [NSString stringWithFormat:@"%@:%@", v10, v15];
          v18 = [v17 dataUsingEncoding:4];
          v16 = [v18 base64EncodedStringWithOptions:0];
        }

        v2 = v24;
      }

      else
      {
        v14 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v2;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to generate signature %@", buf, 0xCu);
        }

        v16 = 0;
      }
    }

    else
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v2;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to generate signature %@", buf, 0xCu);
      }

      v16 = 0;
    }
  }

  else
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v2;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to generate signature %@", buf, 0xCu);
    }

    v16 = 0;
  }

  v19 = [NSString stringWithFormat:@"Basic %@", v16];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = [v1 absoluteString];
      *buf = 138543362;
      v27 = v23;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to generate proxy header for URL:%{public}@", buf, 0xCu);
    }
  }

  return v19;
}

void sub_1003B1F58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a1 + 32);
      *v42 = 138543618;
      *&v42[4] = v41;
      *&v42[12] = 2114;
      *&v42[14] = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Install attribution pingback for app: %{public}@ failed with error: %{public}@", v42, 0x16u);
    }

    v11 = [_TtC9appstored12SkannerEvent requestWithResult:*(a1 + 40) destination:*(a1 + 48) responseCode:0 postback:*(a1 + 56) error:v9];
    v12 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
    v13 = *(a1 + 56);
    if (v13)
    {
      v13 = v13[2];
    }

    v14 = v13;
    [v12 logEvent:v11 forAdvertisedAppAdamID:objc_msgSend(v14 completionHandler:{"longLongValue"), &stru_100526CF8}];

    v16 = *(a1 + 56);
    v15 = *(a1 + 64);
    if (*(a1 + 80) != 1)
    {
      sub_1003AF538(v15, v16);
LABEL_28:

      goto LABEL_29;
    }

    sub_1003AF2D0(v15, v16);

LABEL_23:
    v32 = +[NSDate date];
    [v32 timeIntervalSince1970];
    v34 = v33;
    v35 = *(a1 + 56);
    if (v35)
    {
      v35 = v35[13];
    }

    v36 = v35;
    [v36 doubleValue];
    v11 = [NSNumber numberWithDouble:-(v37 - v34 * 1000.0)];

    sub_10024CF08(*(a1 + 56), v9 == 0, v11);
    v38 = *(a1 + 56);
    v39 = *(a1 + 64);
    if (v38)
    {
      v38 = v38[2];
    }

    v40 = v38;
    sub_1003AD388(v39, v40);

    goto LABEL_28;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v24 = ASDErrorWithDescription();
    v25 = [_TtC9appstored12SkannerEvent requestWithResult:*(a1 + 40) destination:*(a1 + 48) responseCode:0 postback:*(a1 + 56) error:v24];

    if (!v25)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v18 = [v8 statusCode];
  v19 = ASDLogHandleForCategory();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18 == 200)
  {
    if (!v20)
    {
      goto LABEL_18;
    }

    *v42 = 0;
    v21 = "Pingback sent successfully";
    v22 = v19;
    v23 = 2;
  }

  else
  {
    if (!v20)
    {
      goto LABEL_18;
    }

    *v42 = 134349056;
    *&v42[4] = v18;
    v21 = "Sending pingback failed with HTTP error code: %{public}ld";
    v22 = v19;
    v23 = 12;
  }

  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, v42, v23);
LABEL_18:

  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v28 = [NSNumber numberWithInteger:v18];
  v25 = [_TtC9appstored12SkannerEvent requestWithResult:v26 destination:v27 responseCode:v28 postback:*(a1 + 56) error:0];

  sub_1003AF2D0(*(a1 + 64), *(a1 + 56));
  if (!v25)
  {
    goto LABEL_22;
  }

LABEL_19:
  v29 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
  v30 = *(a1 + 56);
  if (v30)
  {
    v30 = v30[2];
  }

  v31 = v30;
  [v29 logEvent:v25 forAdvertisedAppAdamID:objc_msgSend(v31 completionHandler:{"longLongValue"), &stru_100526D18}];

LABEL_22:
  if (isKindOfClass)
  {
    goto LABEL_23;
  }

LABEL_29:
  dispatch_group_leave(*(a1 + 72));
}

void sub_1003B2364(uint64_t a1)
{
  if (!xpc_activity_set_state(*(a1 + 32), 5))
  {
    v1 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Could not set state of the install attribution pingback retry task activity to XPC_ACTIVITY_STATE_DONE", v2, 2u);
    }
  }
}

void sub_1003B23E0(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    v5 = state;
    if (!state)
    {
      v6 = xpc_activity_copy_criteria(v3);
      if (!v6)
      {
        v7 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting criteria for Install Attribution clean params task", buf, 2u);
        }

        xpc_activity_set_criteria(v3, *(a1 + 32));
        v6 = 0;
      }

      goto LABEL_20;
    }

    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      v35 = "Unknown state: %d when processing Install Attribution clean params task";
      v36 = v6;
      v37 = 8;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v8 = sub_1003A4EE0(InstallAttributionManager);
  if (v8)
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Running Install Attribution clean params task", buf, 2u);
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v10 = v8[2];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1003B2AE4;
    v39[3] = &unk_100526C08;
    v39[4] = &v40;
    [v10 readUsingSession:v39];
    if (v41[3])
    {
      v11 = sub_1003B198C();
      v12 = [v11 integerForKey:@"install-attribution-max-impressions-age" defaultValue:1];
      v13 = [v11 integerForKey:@"install-attribution-max-web-impression-age-days" defaultValue:1];
      v14 = [v11 integerForKey:@"install-attribution-max-lo-fi-params-age" defaultValue:1];
      v15 = [v11 integerForKey:@"install-attribution-max-cache-age" defaultValue:3];
      v16 = [v11 integerForKey:@"install-attribution-max-pingback-cache-age" defaultValue:6];
      v17 = [v11 integerForKey:@"skadnetwork-max-ghostback-age" defaultValue:6];
      v38 = [v11 integerForKey:@"skadnetwork-max-token-age" defaultValue:1];
      v18 = [NSDate dateWithTimeIntervalSinceNow:(-86400 * v12)];
      v19 = v8[2];
      *buf = _NSConcreteStackBlock;
      v45 = 3221225472;
      v46 = sub_1003B2BD0;
      v47 = &unk_100526878;
      v20 = v18;
      v48 = v20;
      [v19 modifyUsingTransaction:buf];

      v21 = [NSDate dateWithTimeIntervalSinceNow:(-86400 * v13)];
      v22 = v8[2];
      *buf = _NSConcreteStackBlock;
      v45 = 3221225472;
      v46 = sub_1003B2C5C;
      v47 = &unk_100526878;
      v23 = v21;
      v48 = v23;
      [v22 modifyUsingTransaction:buf];

      v24 = [NSDate dateWithTimeIntervalSinceNow:(-86400 * v14)];
      sub_1003B2B18(v8, v24, 1);

      v25 = [NSDate dateWithTimeIntervalSinceNow:(-86400 * v15)];
      sub_1003B2B18(v8, v25, 0);

      v26 = [NSDate dateWithTimeIntervalSinceNow:(-86400 * v16)];
      v27 = v8[2];
      *buf = _NSConcreteStackBlock;
      v45 = 3221225472;
      v46 = sub_1003B2DD0;
      v47 = &unk_100526878;
      v28 = v26;
      v48 = v28;
      [v27 modifyUsingTransaction:buf];

      v29 = [NSDate dateWithTimeIntervalSinceNow:(-86400 * v17)];
      v30 = v8[2];
      *buf = _NSConcreteStackBlock;
      v45 = 3221225472;
      v46 = sub_1003B2EB4;
      v47 = &unk_100526878;
      v31 = v29;
      v48 = v31;
      [v30 modifyUsingTransaction:buf];

      v32 = [NSDate dateWithTimeIntervalSinceNow:(-86400 * v38)];
      v33 = v8[2];
      *buf = _NSConcreteStackBlock;
      v45 = 3221225472;
      v46 = sub_1003B2EC4;
      v47 = &unk_100526878;
      v34 = v32;
      v48 = v34;
      [v33 modifyUsingTransaction:buf];
    }

    else
    {
      xpc_activity_unregister([@"com.apple.appstored.InstallAttributionManager.CleanDatabase" UTF8String]);
    }

    _Block_object_dispose(&v40, 8);
  }

  if (!xpc_activity_set_state(v3, 5))
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v35 = "Could not set state of the Install Attribution clean params task activity to XPC_ACTIVITY_STATE_DONE";
      v36 = v6;
      v37 = 2;
      goto LABEL_19;
    }

LABEL_20:
  }
}

void sub_1003B2A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1003B2AB0(uint64_t a1, _BOOL8 a2)
{
  result = sub_1003C5740(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

BOOL sub_1003B2AE4(uint64_t a1, _BOOL8 a2)
{
  result = sub_1003C5740(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1003B2B18(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = *(a1 + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003B2CE8;
  v8[3] = &unk_100526D68;
  v7 = v5;
  v9 = v7;
  v10 = a3;
  [v6 modifyUsingTransaction:v8];
}

id sub_1003B2BD0(uint64_t a1, void *a2)
{
  v2 = sub_100319EF4(a2, *(a1 + 32));
  if ((v2 & 1) == 0)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error removing install attribution impressions.", v5, 2u);
    }
  }

  return v2;
}

id sub_1003B2C5C(uint64_t a1, void *a2)
{
  v2 = sub_10031A4B8(a2, *(a1 + 32));
  if ((v2 & 1) == 0)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error removing web impressions.", v5, 2u);
    }
  }

  return v2;
}