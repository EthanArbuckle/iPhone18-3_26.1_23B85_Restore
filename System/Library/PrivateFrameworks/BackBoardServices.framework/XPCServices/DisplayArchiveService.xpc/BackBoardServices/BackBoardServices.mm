int main(int argc, const char **argv, const char **envp)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000011B8;
  v6[3] = &unk_100010380;
  v6[4] = objc_opt_new();
  [BSServiceConnectionListener listenerWithConfigurator:v6];
  [objc_claimAutoreleasedReturnValue() activate];
  v3 = +[BSServicesConfiguration activateXPCService];
  sub_1000011B8(v3, v4);
  return result;
}

void sub_1000011B8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"XPCService"];
  [v3 setService:@"DisplayArchive"];
  [v3 setDelegate:*(a1 + 32)];
}

void sub_100001924(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(*(a1 + 32) + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001A5C;
  v10[3] = &unk_100010460;
  v4 = v2;
  v11 = v4;
  [v3 bs_each:v10];
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001B28;
  v7[3] = &unk_1000104A8;
  v8 = v4;
  v9 = v5;
  v6 = v4;
  [v9 appendBodySectionWithName:@"contextsByPID" multilinePrefix:0 block:v7];
}

void sub_100001A5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a3 pid]);
  v6 = [*(a1 + 32) objectForKey:?];
  if (v6)
  {
    v7 = v6;
    [v6 addObject:v5];
  }

  else
  {
    v7 = [NSMutableSet setWithObject:v5];

    [*(a1 + 32) setObject:v7 forKey:v8];
  }
}

void sub_100001B28(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 sortedArrayUsingSelector:?];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v16 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [*(a1 + 32) objectForKey:v7];
        v10 = [v9 allObjects];
        v11 = [v10 sortedArrayUsingSelector:"compare:"];
        v12 = [v11 bs_map:&stru_100010480];
        v13 = [v12 componentsJoinedByString:{@", "}];
        v14 = [v7 description];
        [v8 appendString:v13 withName:v14];
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

void sub_1000021E0(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v27])
  {
    v9 = [NSString stringWithFormat:@"duplicate entry for %@ in %@", v27, *(a1 + 40)];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(*(a1 + 72));
      v11 = *(a1 + 48);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = *(a1 + 48);
      *buf = 138544642;
      v29 = v10;
      v30 = 2114;
      v31 = v13;
      v32 = 2048;
      v33 = v14;
      v34 = 2114;
      v35 = @"DASParsing.m";
      v36 = 1024;
      v37 = 157;
      v38 = 2114;
      v39 = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000023F8);
  }

  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v27 identifier]);
  v7 = [*(a1 + 56) objectForKey:v6];

  if (v7)
  {
    v15 = [NSString stringWithFormat:@"duplicate entry for contextIDNumber %@ in %@", v6, *(a1 + 40)];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(*(a1 + 72));
      v17 = *(a1 + 48);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = *(a1 + 48);
      *buf = 138544642;
      v29 = v16;
      v30 = 2114;
      v31 = v19;
      v32 = 2048;
      v33 = v20;
      v34 = 2114;
      v35 = @"DASParsing.m";
      v36 = 1024;
      v37 = 160;
      v38 = 2114;
      v39 = v15;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000024F0);
  }

  v8 = [*(a1 + 64) objectForKey:v6];

  if (v8)
  {
    v21 = [NSString stringWithFormat:@"duplicate entry for contextIDNumber %@ in %@", v6, *(a1 + 40)];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(*(a1 + 72));
      v23 = *(a1 + 48);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = *(a1 + 48);
      *buf = 138544642;
      v29 = v22;
      v30 = 2114;
      v31 = v25;
      v32 = 2048;
      v33 = v26;
      v34 = 2114;
      v35 = @"DASParsing.m";
      v36 = 1024;
      v37 = 161;
      v38 = 2114;
      v39 = v21;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000025E8);
  }

  [*(a1 + 56) setObject:v27 forKey:v6];
  [*(a1 + 64) setObject:v5 forKey:v6];
  [*(a1 + 32) addObject:v27];
}

void sub_100003258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000032BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000032D4(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 40);
  if (v2)
  {
    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v3 = [*(a1 + 32) objectForKey:?];

      if (v3)
      {
        v9 = [NSString stringWithFormat:@"cannot be more than one %@ group", *(*(*(a1 + 64) + 8) + 40)];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v10 = NSStringFromSelector(*(a1 + 80));
          v11 = *(a1 + 40);
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = *(a1 + 40);
          *buf = 138544642;
          v23 = v10;
          v24 = 2114;
          v25 = v13;
          v26 = 2048;
          v27 = v14;
          v28 = 2114;
          v29 = @"DASParsing.m";
          v30 = 1024;
          v31 = 406;
          v32 = 2114;
          v33 = v9;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v9 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x100003510);
      }

      [*(a1 + 48) addObject:*(*(*(a1 + 64) + 8) + 40)];
      v4 = *(a1 + 32);
      v5 = [*(*(*(a1 + 56) + 8) + 40) copy];
      v6 = *(*(*(a1 + 64) + 8) + 40);
      v21 = v5;
      [v4 setObject:? forKey:?];
    }

    else
    {
      if (*(*(*(a1 + 72) + 8) + 40))
      {
        v15 = [NSString stringWithFormat:@"cannot be more than one unattached group"];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v16 = NSStringFromSelector(*(a1 + 80));
          v17 = *(a1 + 40);
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = *(a1 + 40);
          *buf = 138544642;
          v23 = v16;
          v24 = 2114;
          v25 = v19;
          v26 = 2048;
          v27 = v20;
          v28 = 2114;
          v29 = @"DASParsing.m";
          v30 = 1024;
          v31 = 410;
          v32 = 2114;
          v33 = v15;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v15 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x100003600);
      }

      v7 = [v2 copy];
      v8 = *(*(a1 + 72) + 8);
      v21 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }
}

void sub_100003608(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  if ([v4 count] >= 2)
  {
    v40 = [NSString stringWithFormat:@"we can't match more than one display entry per line"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(*(a1 + 104));
      v42 = *(a1 + 40);
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = *(a1 + 40);
      *buf = 138544642;
      *v89 = v41;
      *&v89[8] = 2114;
      *v90 = v44;
      *&v90[8] = 2048;
      *v91 = v45;
      *&v91[8] = 2114;
      *&v91[10] = @"DASParsing.m";
      v92 = 1024;
      v93 = 417;
      v94 = 2114;
      v95 = v40;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v40 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100003C10);
  }

  v5 = [v4 firstObject];
  if (v5)
  {
    (*(*(a1 + 80) + 16))();
    v6 = [v5 rangeWithName:@"displayName"];
    v8 = [v3 substringWithRange:{v6, v7}];
    v9 = [v8 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

    v10 = sub_100005B8C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *v89 = v9;
      *&v89[8] = 2112;
      *v90 = v3;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "matched display '%@' in '%@'", buf, 0x16u);
    }

    if (![v9 length])
    {
      v52 = [NSString stringWithFormat:@"must have a valid displayName"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v53 = NSStringFromSelector(*(a1 + 104));
        v54 = *(a1 + 40);
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        v57 = *(a1 + 40);
        *buf = 138544642;
        *v89 = v53;
        *&v89[8] = 2114;
        *v90 = v56;
        *&v90[8] = 2048;
        *v91 = v57;
        *&v91[8] = 2114;
        *&v91[10] = @"DASParsing.m";
        v92 = 1024;
        v93 = 425;
        v94 = 2114;
        v95 = v52;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v52 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x100003DF0);
    }

    v11 = [v9 isEqualToString:@"Unattached"];
    v12 = *(*(a1 + 88) + 8);
    if (v11)
    {
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;
    }

    else
    {
      objc_storeStrong((v12 + 40), v9);
      [*(a1 + 48) setObject:v3 forKey:v9];
    }

    v14 = +[NSMutableOrderedSet orderedSet];
    v15 = *(*(a1 + 96) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = [*(a1 + 56) matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  if ([v17 count] >= 2)
  {
    v46 = [NSString stringWithFormat:@"we can't match more than one contextMatches entry per line"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(*(a1 + 104));
      v48 = *(a1 + 40);
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = *(a1 + 40);
      *buf = 138544642;
      *v89 = v47;
      *&v89[8] = 2114;
      *v90 = v50;
      *&v90[8] = 2048;
      *v91 = v51;
      *&v91[8] = 2114;
      *&v91[10] = @"DASParsing.m";
      v92 = 1024;
      v93 = 436;
      v94 = 2114;
      v95 = v46;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v46 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100003D00);
  }

  v18 = [v17 firstObject];
  v19 = v18;
  if (v18)
  {
    if (!*(*(*(a1 + 96) + 8) + 40))
    {
      v58 = [NSString stringWithFormat:@"context matches must be preceeded by a display match :\n%@", *(*(a1 + 40) + 48)];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v59 = NSStringFromSelector(*(a1 + 104));
        v60 = *(a1 + 40);
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        v63 = *(a1 + 40);
        *buf = 138544642;
        *v89 = v59;
        *&v89[8] = 2114;
        *v90 = v62;
        *&v90[8] = 2048;
        *v91 = v63;
        *&v91[8] = 2114;
        *&v91[10] = @"DASParsing.m";
        v92 = 1024;
        v93 = 439;
        v94 = 2114;
        v95 = v58;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v58 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x100003EECLL);
    }

    v20 = [v18 rangeWithName:@"contextID"];
    v22 = [v3 substringWithRange:{v20, v21}];
    if (![v22 length])
    {
      v64 = [NSString stringWithFormat:@"must have a valid contextID : %@ from '%@'", v22, v3];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v65 = NSStringFromSelector(*(a1 + 104));
        v66 = *(a1 + 40);
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        v69 = *(a1 + 40);
        *buf = 138544642;
        *v89 = v65;
        *&v89[8] = 2114;
        *v90 = v68;
        *&v90[8] = 2048;
        *v91 = v69;
        *&v91[8] = 2114;
        *&v91[10] = @"DASParsing.m";
        v92 = 1024;
        v93 = 442;
        v94 = 2114;
        v95 = v64;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v64 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x100003FE0);
    }

    v23 = v22;
    if (![v23 length])
    {
      v70 = [NSString stringWithFormat:@"must have a valid hex string -> %@", v23];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v71 = [NSString stringWithUTF8String:"NSNumber * _Nonnull uint32NumberFromHexString(NSString *__strong _Nonnull)"];
        *buf = 138544130;
        *v89 = v71;
        *&v89[8] = 2114;
        *v90 = @"DASParsing.m";
        *&v90[8] = 1024;
        *v91 = 340;
        *&v91[4] = 2114;
        *&v91[6] = v70;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      [v70 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1000040ACLL);
    }

    v24 = [v23 lowercaseString];
    v25 = 0;
    if ([v24 length])
    {
      v26 = 0;
      do
      {
        v27 = 16 * v25;
        v28 = [v24 characterAtIndex:v26];
        if ((v28 - 48) > 9)
        {
          if ((v28 - 97) > 5)
          {
            v86 = [NSString stringWithFormat:@"unknown character %c", v28];
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v87 = [NSString stringWithUTF8String:"NSNumber * _Nonnull uint32NumberFromHexString(NSString *__strong _Nonnull)"];
              *buf = 138544130;
              *v89 = v87;
              *&v89[8] = 2114;
              *v90 = @"DASParsing.m";
              *&v90[8] = 1024;
              *v91 = 351;
              *&v91[4] = 2114;
              *&v91[6] = v86;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
            }

            [v86 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x100004430);
          }

          v25 = (v27 + v28 - 87);
        }

        else
        {
          v25 = (v28 + v27 - 48);
        }

        ++v26;
      }

      while (v26 < [v24 length]);
    }

    v29 = [NSNumber numberWithUnsignedInt:v25];
    v30 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%x", [v29 unsignedIntValue]);
    if (([v30 isEqualToString:v23] & 1) == 0)
    {
      v72 = [NSString stringWithFormat:@"parsed is not equivalent to original : parsed=%@ original=%@", v30, v23];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v73 = [NSString stringWithUTF8String:"NSNumber * _Nonnull uint32NumberFromHexString(NSString *__strong _Nonnull)"];
        *buf = 138544130;
        *v89 = v73;
        *&v89[8] = 2114;
        *v90 = @"DASParsing.m";
        *&v90[8] = 1024;
        *v91 = 356;
        *&v91[4] = 2114;
        *&v91[6] = v72;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      [v72 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x100004178);
    }

    if (!v29)
    {
      v74 = [NSString stringWithFormat:@"failed to parse contextID %@ from '%@'", v23, v3];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v75 = NSStringFromSelector(*(a1 + 104));
        v76 = *(a1 + 40);
        v77 = objc_opt_class();
        v78 = NSStringFromClass(v77);
        v79 = *(a1 + 40);
        *buf = 138544642;
        *v89 = v75;
        *&v89[8] = 2114;
        *v90 = v78;
        *&v90[8] = 2048;
        *v91 = v79;
        *&v91[8] = 2114;
        *&v91[10] = @"DASParsing.m";
        v92 = 1024;
        v93 = 444;
        v94 = 2114;
        v95 = v74;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v74 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x10000426CLL);
    }

    v31 = [v19 rangeWithName:@"pid"];
    v33 = [v3 substringWithRange:{v31, v32}];
    v34 = [v33 intValue];

    if (v34 <= 0)
    {
      v80 = [NSString stringWithFormat:@"must have a valid pid : %i from '%@'", v34, v3];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v81 = NSStringFromSelector(*(a1 + 104));
        v82 = *(a1 + 40);
        v83 = objc_opt_class();
        v84 = NSStringFromClass(v83);
        v85 = *(a1 + 40);
        *buf = 138544642;
        *v89 = v81;
        *&v89[8] = 2114;
        *v90 = v84;
        *&v90[8] = 2048;
        *v91 = v85;
        *&v91[8] = 2114;
        *&v91[10] = @"DASParsing.m";
        v92 = 1024;
        v93 = 448;
        v94 = 2114;
        v95 = v80;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v80 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x100004360);
    }

    v35 = sub_100005B8C();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v39 = [v29 unsignedIntValue];
      *buf = 67109634;
      *v89 = v39;
      *&v89[4] = 1024;
      *&v89[6] = v34;
      *v90 = 2112;
      *&v90[2] = v3;
      _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "matched context %x for pid %i from '%@'", buf, 0x18u);
    }

    [*(*(*(a1 + 96) + 8) + 40) addObject:v29];
    v36 = -[DASContextInfo _initWithIdentifier:pid:raw:]([DASContextInfo alloc], "_initWithIdentifier:pid:raw:", [v29 unsignedIntValue], v34, v3);
    [*(a1 + 64) setObject:v36 forKey:v29];

LABEL_28:
    goto LABEL_30;
  }

  if (!v5 && [v3 length])
  {
    v37 = sub_100005B8C();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v89 = v3;
      _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "failed to find any match in '%@'", buf, 0xCu);
    }

    v38 = *(a1 + 72);
    v23 = [NSString stringWithFormat:@"failed to find any match in '%@'", v3];
    [v38 addObject:v23];
    goto LABEL_28;
  }

LABEL_30:
}

void sub_100004504(int8x16_t *a1)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000046C0;
  v13[3] = &unk_1000104A8;
  v7 = a1[2];
  v14 = vextq_s8(v7, v7, 8uLL);
  [v7.i64[0] appendBodySectionWithName:@"displays" multilinePrefix:0 block:v13];
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1[2].i64[1] + 24);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004840;
  v11[3] = &unk_100010460;
  v4 = v2;
  v12 = v4;
  [v3 bs_each:v11];
  v5 = a1[2].i64[0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000490C;
  v8[3] = &unk_1000104A8;
  v9 = v4;
  v10 = v5;
  v6 = v4;
  [v10 appendBodySectionWithName:@"contextsByPID" multilinePrefix:0 block:v8];
  [a1[2].i64[0] appendArraySection:*(a1[2].i64[1] + 40) withName:@"parseErrors" skipIfEmpty:1];
}

void sub_1000046C0(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = *(*(a1 + 32) + 16);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [v6 attachedContexts];
        v9 = [v8 array];
        v10 = [v9 bs_map:&stru_1000104C8];
        v11 = [v10 componentsJoinedByString:{@", "}];
        v12 = [v6 name];
        [v7 appendString:v11 withName:v12];
      }

      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }
}

void sub_100004840(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a3 pid]);
  v6 = [*(a1 + 32) objectForKey:?];
  if (v6)
  {
    v7 = v6;
    [v6 addObject:v5];
  }

  else
  {
    v7 = [NSMutableSet setWithObject:v5];

    [*(a1 + 32) setObject:v7 forKey:v8];
  }
}

void sub_10000490C(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 sortedArrayUsingSelector:?];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v16 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [*(a1 + 32) objectForKey:v7];
        v10 = [v9 allObjects];
        v11 = [v10 sortedArrayUsingSelector:"compare:"];
        v12 = [v11 bs_map:&stru_1000104E8];
        v13 = [v12 componentsJoinedByString:{@", "}];
        v14 = [v7 description];
        [v8 appendString:v13 withName:v14];
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

void sub_100005064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100005084(uint64_t a1)
{
  v2 = sub_1000050D4();
  result = dlsym(v2, "CARenderServerGetClientPort");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100015190 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000050D4()
{
  v4[0] = 0;
  if (!qword_100015180)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100005278;
    v4[4] = &unk_1000108F8;
    v4[5] = v4;
    v5 = off_100010558;
    v6 = 0;
    qword_100015180 = _sl_dlopen();
  }

  v0 = qword_100015180;
  if (!qword_100015180)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *QuartzCoreLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"DASParsing.m" lineNumber:24 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100005228(uint64_t a1)
{
  v2 = sub_1000050D4();
  v3 = dlsym(v2, "CARenderClientGetArchivedLayerTree");
  off_100015040 = v3;

  return (v3)(a1);
}

uint64_t sub_100005278(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100015180 = result;
  return result;
}

void sub_100005B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100005B3C(uint64_t a1)
{
  v2 = sub_1000050D4();
  result = dlsym(v2, "CARenderServerGetInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100015188 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100005B8C()
{
  if (qword_1000151A0 != -1)
  {
    dispatch_once(&qword_1000151A0, &stru_100010570);
  }

  v1 = qword_100015198;

  return v1;
}

void sub_100005BE0(id a1)
{
  qword_100015198 = os_log_create("com.apple.BackBoard", "DisplayArchive");

  _objc_release_x1();
}

void sub_100005C4C(id a1)
{
  v2[0] = *off_1000105D0;
  v2[1] = *&off_1000105E0;
  v1 = sub_100005CC8();
  class_addProperty(v1, "UICALayerRenderID", v2, 2u);
}

id sub_100005CC8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000151B8;
  v7 = qword_1000151B8;
  if (!qword_1000151B8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100005DA8;
    v3[3] = &unk_100010920;
    v3[4] = &v4;
    sub_100005DA8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100005D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005DA8(uint64_t a1)
{
  sub_100005E70();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CALayer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000151B8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getCALayerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DASProcessor.m" lineNumber:26 description:{@"Unable to find class %s", "CALayer"}];

    __break(1u);
  }
}

void *sub_100005E70()
{
  v4[0] = 0;
  if (!qword_1000151B0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100005FC4;
    v4[4] = &unk_1000108F8;
    v4[5] = v4;
    v5 = off_1000108E0;
    v6 = 0;
    qword_1000151B0 = _sl_dlopen();
  }

  v0 = qword_1000151B0;
  if (!qword_1000151B0)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *QuartzCoreLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"DASProcessor.m" lineNumber:24 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100005FC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000151B0 = result;
  return result;
}

void sub_10000627C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v5 = [v3 attachedContexts];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000638C;
  v8[3] = &unk_100010708;
  v6 = a1[4];
  v9 = a1[5];
  v10 = v3;
  v11 = a1[4];
  v12 = a1[6];
  v7 = v3;
  sub_100006C6C(v4, v5, v6, 0, v8);
}

void sub_10000638C(uint64_t a1, void *a2, void *a3)
{
  v60 = a2;
  v4 = a3;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v77 objects:v90 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v78;
    v65 = v4;
    do
    {
      v8 = 0;
      v67 = v6;
      do
      {
        if (*v78 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v77 + 1) + 8 * v8);
        v10 = [v4 objectForKey:v9];
        if ([v10 count] >= 2)
        {
          v11 = [v10 count];
          v12 = sub_100005B8C();
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          if (v11 == 2)
          {
            if (v13)
            {
              v14 = [v9 unsignedIntValue];
              *buf = 67109120;
              *v82 = v14;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "skipped context %x because it was already processed", buf, 8u);
            }

            +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"skipped context %x because it was already processed", [v9 unsignedIntValue], v59);
          }

          else
          {
            if (v13)
            {
              v15 = [v9 unsignedIntValue];
              v16 = [v10 count];
              *buf = 67109376;
              *v82 = v15;
              *&v82[4] = 2048;
              *&v82[6] = v16 - 1;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "skipped context %x because it was already processed (%lux)", buf, 0x12u);
            }

            +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"skipped context %x because it was already processed (%lux)", [v9 unsignedIntValue], objc_msgSend(v10, "count") - 1);
          }
          v17 = ;
          [*(a1 + 32) addObject:v17];
          v18 = sub_100005B8C();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

          if (v19)
          {
            v20 = [v10 objectAtIndex:0];
            v21 = sub_100008B98(v20);
            sub_100008C90(v21, &stru_1000107F8);

            if ([v10 count] >= 2)
            {
              v22 = 1;
              do
              {
                v23 = [v10 objectAtIndex:v22];
                v24 = sub_100008B98(v23);
                v76[0] = _NSConcreteStackBlock;
                v76[1] = 3221225472;
                v76[2] = sub_100008E5C;
                v76[3] = &unk_100010658;
                v76[4] = v22;
                sub_100008C90(v24, v76);

                ++v22;
              }

              while (v22 < [v10 count]);
            }
          }

          v4 = v65;
          v6 = v67;
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v77 objects:v90 count:16];
    }

    while (v6);
  }

  v25 = sub_100005B8C();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);

  if (v26)
  {
    v27 = sub_100005B8C();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v57 = [*(a1 + 40) name];
      *buf = 138412290;
      *v82 = v57;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "final layer tree for %@", buf, 0xCu);
    }

    sub_100008F28(v60, &stru_100010818);
  }

  [sub_100007224() begin];
  v28 = +[NSMutableDictionary dictionary];
  v29 = [*(a1 + 48) contexts];
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_100009164;
  v73[3] = &unk_1000106A0;
  v61 = v4;
  v74 = v61;
  v30 = v28;
  v75 = v30;
  [v29 bs_each:v73];

  +[NSMutableArray array];
  v68 = v66 = v30;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v31 = [v30 allKeys];
  v32 = [v31 sortedArrayUsingSelector:"compare:"];

  obj = v32;
  v33 = [v32 countByEnumeratingWithState:&v69 objects:v89 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v70;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v70 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v69 + 1) + 8 * i);
        v87[0] = @"pid";
        v87[1] = @"contextIDs";
        v88[0] = v37;
        v38 = [v30 objectForKey:?];
        v39 = [v38 allObjects];
        v40 = [v39 sortedArrayUsingSelector:"compare:"];
        v41 = [v40 bs_map:&stru_100010838];
        v88[1] = v41;
        v42 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:2];
        [v68 addObject:v42];
      }

      v34 = [obj countByEnumeratingWithState:&v69 objects:v89 count:16];
    }

    while (v34);
  }

  v85[0] = @"Display";
  v83[0] = @"name";
  obja = [*(a1 + 40) name];
  v83[1] = @"attachedContexts";
  v84[0] = obja;
  v43 = [*(a1 + 40) attachedContexts];
  v44 = [v43 array];
  v45 = [v44 bs_map:&stru_100010878];
  v46 = [v45 sortedArrayUsingSelector:"compare:"];
  v47 = [v46 bs_map:&stru_100010898];
  v84[1] = v47;
  v48 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:2];
  v86[0] = v48;
  v85[1] = @"ContextIDsByPID";
  v49 = [v68 copy];
  v86[1] = v49;
  v85[2] = @"ParseErrors";
  v50 = [*(a1 + 32) copy];
  v86[2] = v50;
  v51 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:3];

  off_100015110(1);
  off_100015118(1);
  v52 = off_100015108(v60, v51);
  v53 = sub_100005B8C();
  v54 = v53;
  if (v52)
  {
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      v56 = [*(a1 + 40) name];
      *buf = 138412546;
      *v82 = v56;
      *&v82[8] = 2112;
      *&v82[10] = v51;
      _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "archived display '%@' with info:\n%@", buf, 0x16u);
    }

    v55 = *(a1 + 56);
    v54 = [*(a1 + 40) name];
    [v55 setObject:v52 forKey:v54];
  }

  else if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    v58 = [*(a1 + 40) name];
    *buf = 138412290;
    *v82 = v58;
    _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "failed to create archive of display '%@'", buf, 0xCu);
  }

  [sub_100007224() commit];
}

void sub_100006C6C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v37 = a1;
  v9 = a2;
  v38 = a3;
  v39 = a4;
  v36 = a5;
  if (!v9)
  {
    v32 = +[NSAssertionHandler currentHandler];
    v33 = [NSString stringWithUTF8String:"void processRootContexts(NSString *__strong, NSOrderedSet<DASContextInfo *> *__strong, __strong id<DASContextArchiveProvider>, __strong DASContextLayerProcessor, void (^__strong)(CALayer *__strong, NSMapTable<NSNumber *, NSMutableArray<CALayer *> *> *__strong))"];
    [v32 handleFailureInFunction:v33 file:@"DASProcessor.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"rootContexts"}];
  }

  [sub_100007224() begin];
  context = objc_autoreleasePoolPush();
  v41 = [sub_100005CC8() layer];
  *buf = 0;
  *&v58 = buf;
  *(&v58 + 1) = 0x2050000000;
  v10 = qword_1000151D0;
  v59 = qword_1000151D0;
  if (!qword_1000151D0)
  {
    v46 = _NSConcreteStackBlock;
    v47 = 3221225472;
    v48 = sub_100007304;
    v49 = &unk_100010920;
    v50 = buf;
    sub_100007304(&v46);
    v10 = *(v58 + 24);
  }

  v11 = v10;
  _Block_object_dispose(buf, 8);
  v35 = [v10 localContext];
  [v35 setLayer:v41];
  v12 = +[NSMapTable strongToStrongObjectsMapTable];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (v13)
  {
    v16 = *v53;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v53 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v52 + 1) + 8 * i);
        v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v18 identifier]);
        v20 = [v12 objectForKey:v19];

        if (v20)
        {
          [v20 addObject:v41];
        }

        else
        {
          v20 = [NSMutableArray arrayWithObject:v41];
          v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v18 identifier]);
          [v12 setObject:v20 forKey:v21];

          v46 = 0;
          v47 = &v46;
          v48 = 0x3032000000;
          v49 = sub_1000073CC;
          v50 = sub_1000073F8;
          v51 = 0;
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_100007400;
          v42[3] = &unk_100010948;
          v43 = v12;
          v22 = v39;
          v44 = v22;
          v45 = &v46;
          v23 = objc_retainBlock(v42);
          v24 = objc_retainBlock(v23);
          v25 = *(v47 + 40);
          *(v47 + 40) = v24;

          v26 = sub_100007FB8(v18, v38, v22, *(v47 + 40));
          v27 = *(v47 + 40);
          *(v47 + 40) = 0;

          if (v26)
          {
            [v41 addSublayer:v26];
            [v26 frame];
            if (width < v28)
            {
              width = v28;
            }

            if (height < v29)
            {
              height = v29;
            }
          }

          else
          {
            v30 = sub_100005B8C();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = [v18 identifier];
              *buf = 67109378;
              *&buf[4] = v31;
              LOWORD(v58) = 2112;
              *(&v58 + 2) = v37;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "no root layer found in context %x while processing for %@", buf, 0x12u);
            }
          }

          _Block_object_dispose(&v46, 8);
        }
      }

      v13 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v13);
  }

  [v41 setFrame:{CGRectZero.origin.x, CGRectZero.origin.y, width, height}];
  if (v36)
  {
    v36[2](v36, v41, v12);
  }

  objc_autoreleasePoolPop(context);
  [sub_100007224() commit];
}

id sub_100007224()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000151C8;
  v7 = qword_1000151C8;
  if (!qword_1000151C8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100008AD0;
    v3[3] = &unk_100010920;
    v3[4] = &v4;
    sub_100008AD0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000072EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007304(uint64_t a1)
{
  sub_100005E70();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CAContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000151D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getCAContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DASProcessor.m" lineNumber:25 description:{@"Unable to find class %s", "CAContext"}];

    __break(1u);
  }
}

id sub_1000073CC(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100007400(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v88 = v4;
  if (!v4)
  {
    v77 = v5;
    v78 = +[NSAssertionHandler currentHandler];
    v79 = [NSString stringWithUTF8String:"void processRootContexts(NSString *__strong, NSOrderedSet<DASContextInfo *> *__strong, __strong id<DASContextArchiveProvider>, __strong DASContextLayerProcessor, void (^__strong)(CALayer *__strong, NSMapTable<NSNumber *, NSMutableArray<CALayer *> *> *__strong))_block_invoke"];
    [v78 handleFailureInFunction:v79 file:@"DASProcessor.m" lineNumber:228 description:{@"Invalid parameter not satisfying: %@", @"layer"}];

    v5 = v77;
  }

  v85 = v5;
  if (!v5)
  {
    v80 = +[NSAssertionHandler currentHandler];
    v81 = [NSString stringWithUTF8String:"void processRootContexts(NSString *__strong, NSOrderedSet<DASContextInfo *> *__strong, __strong id<DASContextArchiveProvider>, __strong DASContextLayerProcessor, void (^__strong)(CALayer *__strong, NSMapTable<NSNumber *, NSMutableArray<CALayer *> *> *__strong))_block_invoke"];
    [v80 handleFailureInFunction:v81 file:@"DASProcessor.m" lineNumber:229 description:{@"Invalid parameter not satisfying: %@", @"contextArchiveProvider"}];
  }

  v109 = 0;
  v110 = &v109;
  v111 = 0x2050000000;
  v6 = qword_1000151D8;
  v112 = qword_1000151D8;
  if (!qword_1000151D8)
  {
    *buf = _NSConcreteStackBlock;
    v119 = 3221225472;
    v120 = sub_100008648;
    v121 = &unk_100010920;
    v122 = &v109;
    sub_100008648(buf);
    v6 = v110[3];
  }

  v7 = v6;
  _Block_object_dispose(&v109, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v88 contextId];
    v9 = *(a1 + 32);
    v10 = [NSNumber numberWithUnsignedInt:v8];
    obj = [v9 objectForKey:v10];

    if (obj)
    {
      [obj addObject:v88];
    }

    else
    {
      obj = [NSMutableArray arrayWithObject:v88];
      v57 = *(a1 + 32);
      v58 = [NSNumber numberWithUnsignedInt:v8];
      [v57 setObject:obj forKey:v58];

      v59 = [v85 contextWithIdentifier:{objc_msgSend(v88, "contextId")}];
      v60 = v59;
      if (v59)
      {
        v61 = sub_100007FB8(v59, v85, *(a1 + 40), *(*(*(a1 + 48) + 8) + 40));
        if (v61)
        {
          [v88 addSublayer:v61];
        }

        else
        {
          v76 = sub_100005B8C();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v8;
            _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "no hosted layers found for %x", buf, 8u);
          }

          v61 = 0;
        }
      }

      else
      {
        v61 = sub_100005B8C();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v8;
          _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "server didn't know about hosted layers for %x", buf, 8u);
        }
      }
    }

    goto LABEL_90;
  }

  v109 = 0;
  v110 = &v109;
  v111 = 0x2050000000;
  v11 = qword_1000151F0;
  v112 = qword_1000151F0;
  if (!qword_1000151F0)
  {
    *buf = _NSConcreteStackBlock;
    v119 = 3221225472;
    v120 = sub_100008710;
    v121 = &unk_100010920;
    v122 = &v109;
    sub_100008710(buf);
    v11 = v110[3];
  }

  v12 = v11;
  _Block_object_dispose(&v109, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v88 sourceLayer];
    v14 = v13 == 0;

    if (v14)
    {
      v62 = [v88 sourceContextId];
      v63 = [v88 sourceLayerRenderId];
      if (v62)
      {
        v64 = v63;
        if (v63)
        {
          v65 = [v88 context];
          v66 = v62 == [v65 contextId];

          if (!v66)
          {
            v67 = [v85 contextWithIdentifier:v62];
            if (v67)
            {
              v68 = *(a1 + 32);
              v69 = [NSNumber numberWithUnsignedInt:v62];
              v70 = [v68 objectForKey:v69];

              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v71 = v70;
              v72 = [v71 countByEnumeratingWithState:&v105 objects:v117 count:16];
              v73 = v71;
              if (v72)
              {
                v74 = *v106;
                while (2)
                {
                  for (i = 0; i != v72; i = i + 1)
                  {
                    if (*v106 != v74)
                    {
                      objc_enumerationMutation(v71);
                    }

                    v73 = sub_1000087D8(*(*(&v105 + 1) + 8 * i), v64);
                    if (v73)
                    {

                      [v88 setSourceLayer:v73];
                      goto LABEL_92;
                    }
                  }

                  v72 = [v71 countByEnumeratingWithState:&v105 objects:v117 count:16];
                  if (v72)
                  {
                    continue;
                  }

                  break;
                }

                v73 = v71;
              }

LABEL_92:
            }
          }
        }
      }
    }
  }

  [v88 animationKeys];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  obj = v102 = 0u;
  v87 = [obj countByEnumeratingWithState:&v101 objects:v116 count:16];
  if (v87)
  {
    v86 = *v102;
    do
    {
      for (j = 0; j != v87; j = j + 1)
      {
        if (*v102 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v101 + 1) + 8 * j);
        v17 = [v88 animationForKey:v16];
        v109 = 0;
        v110 = &v109;
        v111 = 0x2050000000;
        v18 = qword_1000151F8;
        v112 = qword_1000151F8;
        if (!qword_1000151F8)
        {
          *buf = _NSConcreteStackBlock;
          v119 = 3221225472;
          v120 = sub_100008940;
          v121 = &unk_100010920;
          v122 = &v109;
          sub_100008940(buf);
          v18 = v110[3];
        }

        v19 = v18;
        _Block_object_dispose(&v109, 8);
        if (objc_opt_isKindOfClass())
        {
          v20 = v17;
          v21 = [v20 sourceLayer];
          v22 = v21 == 0;

          if (!v22)
          {
            goto LABEL_56;
          }

          v23 = [v20 sourceContextId];
          v24 = [v20 sourceLayerRenderId];
          if (!v23)
          {
            goto LABEL_56;
          }

          v25 = v24;
          if (!v24)
          {
            goto LABEL_56;
          }

          v26 = [v88 context];
          v27 = v23 == [v26 contextId];

          if (v27)
          {
            goto LABEL_56;
          }

          v82 = [v85 contextWithIdentifier:v23];
          v28 = v82;
          if (!v82)
          {
            goto LABEL_55;
          }

          v29 = *(a1 + 32);
          v30 = [NSNumber numberWithUnsignedInt:v23];
          v31 = [v29 objectForKey:v30];

          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v32 = v31;
          v33 = [v32 countByEnumeratingWithState:&v97 objects:v115 count:16];
          if (v33)
          {
            v34 = *v98;
LABEL_29:
            v35 = 0;
            while (1)
            {
              if (*v98 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v36 = sub_1000087D8(*(*(&v97 + 1) + 8 * v35), v25);
              if (v36)
              {
                goto LABEL_53;
              }

              if (v33 == ++v35)
              {
                v33 = [v32 countByEnumeratingWithState:&v97 objects:v115 count:16];
                if (v33)
                {
                  goto LABEL_29;
                }

                goto LABEL_52;
              }
            }
          }

          goto LABEL_52;
        }

        v109 = 0;
        v110 = &v109;
        v111 = 0x2050000000;
        v37 = qword_100015200;
        v112 = qword_100015200;
        if (!qword_100015200)
        {
          *buf = _NSConcreteStackBlock;
          v119 = 3221225472;
          v120 = sub_100008A08;
          v121 = &unk_100010920;
          v122 = &v109;
          sub_100008A08(buf);
          v37 = v110[3];
        }

        v38 = v37;
        _Block_object_dispose(&v109, 8);
        if (objc_opt_isKindOfClass())
        {
          v20 = v17;
          v39 = [v20 sourceLayer];
          v40 = v39 == 0;

          if (!v40)
          {
            goto LABEL_56;
          }

          v41 = [v20 sourceContextId];
          v42 = [v20 sourceLayerRenderId];
          if (!v41)
          {
            goto LABEL_56;
          }

          v43 = v42;
          if (!v42)
          {
            goto LABEL_56;
          }

          v44 = [v88 context];
          v45 = v41 == [v44 contextId];

          if (v45)
          {
            goto LABEL_56;
          }

          v82 = [v85 contextWithIdentifier:v41];
          v28 = v82;
          if (!v82)
          {
            goto LABEL_55;
          }

          v46 = *(a1 + 32);
          v47 = [NSNumber numberWithUnsignedInt:v41];
          v48 = [v46 objectForKey:v47];

          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v32 = v48;
          v49 = [v32 countByEnumeratingWithState:&v93 objects:v114 count:16];
          if (v49)
          {
            v50 = *v94;
LABEL_46:
            v51 = 0;
            while (1)
            {
              if (*v94 != v50)
              {
                objc_enumerationMutation(v32);
              }

              v36 = sub_1000087D8(*(*(&v93 + 1) + 8 * v51), v43);
              if (v36)
              {
                break;
              }

              if (v49 == ++v51)
              {
                v49 = [v32 countByEnumeratingWithState:&v93 objects:v114 count:16];
                if (v49)
                {
                  goto LABEL_46;
                }

                goto LABEL_52;
              }
            }

LABEL_53:

            v20 = [v17 copy];
            [v20 setSourceLayer:v36];
            [v88 addAnimation:v20 forKey:v16];
LABEL_54:

            v28 = v82;
LABEL_55:

LABEL_56:
            goto LABEL_57;
          }

LABEL_52:
          v36 = v32;
          goto LABEL_54;
        }

LABEL_57:
      }

      v87 = [obj countByEnumeratingWithState:&v101 objects:v116 count:16];
    }

    while (v87);
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v52 = [v88 sublayers];
    v53 = [v52 countByEnumeratingWithState:&v89 objects:v113 count:16];
    if (v53)
    {
      v54 = *v90;
      do
      {
        for (k = 0; k != v53; k = k + 1)
        {
          if (*v90 != v54)
          {
            objc_enumerationMutation(v52);
          }

          v56 = *(*(&v89 + 1) + 8 * k);
          (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
        }

        v53 = [v52 countByEnumeratingWithState:&v89 objects:v113 count:16];
      }

      while (v53);
    }
  }

LABEL_90:
}

id sub_100007FB8(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = +[NSAssertionHandler currentHandler];
    v29 = [NSString stringWithUTF8String:"CALayer *layersForContextUsingArchiveProvider(DASContextInfo *__strong, __strong id<DASContextArchiveProvider>, __strong DASContextLayerProcessor, __strong DASLayerWalker)"];
    [v28 handleFailureInFunction:v29 file:@"DASProcessor.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"contextInfo"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v30 = +[NSAssertionHandler currentHandler];
  v31 = [NSString stringWithUTF8String:"CALayer *layersForContextUsingArchiveProvider(DASContextInfo *__strong, __strong id<DASContextArchiveProvider>, __strong DASContextLayerProcessor, __strong DASLayerWalker)"];
  [v30 handleFailureInFunction:v31 file:@"DASProcessor.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"contextArchiveProvider"}];

LABEL_3:
  context = objc_autoreleasePoolPush();
  v11 = [v8 archiveOfContext:v7];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v36 = v7;
    if (!v7)
    {
      v32 = +[NSAssertionHandler currentHandler];
      v33 = [NSString stringWithUTF8String:"CALayer *layersFromArchiveOfContextInfo(NSData *__strong, DASContextInfo *__strong)"];
      [v32 handleFailureInFunction:v33 file:@"DASProcessor.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"contextInfo"}];
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v14 = qword_1000151E0;
    v41 = qword_1000151E0;
    if (!qword_1000151E0)
    {
      *buf = _NSConcreteStackBlock;
      *&v43 = 3221225472;
      *(&v43 + 1) = sub_100008530;
      v44 = &unk_100010920;
      v45 = &v38;
      sub_100008530(buf);
      v14 = v39[3];
    }

    v15 = v14;
    _Block_object_dispose(&v38, 8);
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v16 = qword_1000151E8;
    v41 = qword_1000151E8;
    if (!qword_1000151E8)
    {
      *buf = _NSConcreteStackBlock;
      *&v43 = 3221225472;
      *(&v43 + 1) = sub_1000085F8;
      v44 = &unk_100010920;
      v45 = &v38;
      v17 = sub_100005E70();
      v18 = dlsym(v17, "kCAPackageTypeArchive");
      *(v45[1] + 3) = v18;
      qword_1000151E8 = *(v45[1] + 3);
      v16 = v39[3];
    }

    _Block_object_dispose(&v38, 8);
    if (!v16)
    {
      v34 = +[NSAssertionHandler currentHandler];
      v35 = [NSString stringWithUTF8String:"CAPackageType getkCAPackageTypeArchive(void)"];
      [v34 handleFailureInFunction:v35 file:@"DASProcessor.m" lineNumber:34 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v19 = *v16;
    v38 = 0;
    v20 = v19;
    v21 = [v14 packageWithData:v13 type:v20 options:0 error:&v38];
    v22 = v38;

    if (v22)
    {
      v23 = sub_100005B8C();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v27 = [v36 identifier];
        *buf = 67109378;
        *&buf[4] = v27;
        LOWORD(v43) = 2112;
        *(&v43 + 2) = v22;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to create package from context %x with error=%@", buf, 0x12u);
      }
    }

    v24 = [v21 rootLayer];

    if (v24)
    {
      if (v9)
      {
        v9[2](v9, v36, v24);
      }

      if (v10)
      {
        v10[2](v10, v24, v8);
      }
    }
  }

  else
  {
    v25 = sub_100005B8C();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = [v7 identifier];
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "could not retrieve archive of context %x", buf, 8u);
    }

    v24 = 0;
  }

  objc_autoreleasePoolPop(context);

  return v24;
}

void sub_10000850C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008530(uint64_t a1)
{
  sub_100005E70();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CAPackage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000151E0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getCAPackageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DASProcessor.m" lineNumber:30 description:{@"Unable to find class %s", "CAPackage"}];

    __break(1u);
  }
}

void *sub_1000085F8(uint64_t a1)
{
  v2 = sub_100005E70();
  result = dlsym(v2, "kCAPackageTypeArchive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000151E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100008648(uint64_t a1)
{
  sub_100005E70();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CALayerHost");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000151D8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getCALayerHostClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DASProcessor.m" lineNumber:27 description:{@"Unable to find class %s", "CALayerHost"}];

    __break(1u);
  }
}

void sub_100008710(uint64_t a1)
{
  sub_100005E70();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CAPortalLayer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000151F0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getCAPortalLayerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DASProcessor.m" lineNumber:31 description:{@"Unable to find class %s", "CAPortalLayer"}];

    __break(1u);
  }
}

id sub_1000087D8(void *a1, id a2)
{
  v3 = a1;
  v4 = [v3 valueForKey:@"UICALayerRenderID"];
  v5 = [v4 unsignedLongValue];

  if (v5 == a2)
  {
    v6 = v3;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v3 sublayers];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = sub_1000087D8(*(*(&v14 + 1) + 8 * i), a2);
          if (v12)
          {
            v6 = v12;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_13:
  }

  return v6;
}

void sub_100008940(uint64_t a1)
{
  sub_100005E70();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CAMatchMoveAnimation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000151F8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getCAMatchMoveAnimationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DASProcessor.m" lineNumber:28 description:{@"Unable to find class %s", "CAMatchMoveAnimation"}];

    __break(1u);
  }
}

void sub_100008A08(uint64_t a1)
{
  sub_100005E70();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CAMatchPropertyAnimation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100015200 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getCAMatchPropertyAnimationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DASProcessor.m" lineNumber:29 description:{@"Unable to find class %s", "CAMatchPropertyAnimation"}];

    __break(1u);
  }
}

void sub_100008AD0(uint64_t a1)
{
  sub_100005E70();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CATransaction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000151C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getCATransactionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DASProcessor.m" lineNumber:32 description:{@"Unable to find class %s", "CATransaction"}];

    __break(1u);
  }
}

id sub_100008B98(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"NSMutableArray<CALayer *> *ancestoryOfLayer(CALayer *__strong, BOOL)"];
    [v5 handleFailureInFunction:v6 file:@"DASProcessor.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"layer"}];
  }

  v2 = +[NSMutableArray array];
  if (v1)
  {
    do
    {
      [v2 insertObject:v1 atIndex:0];
      v3 = [v1 superlayer];

      v1 = v3;
    }

    while (v3);
  }

  return v2;
}

void sub_100008C90(void *a1, void *a2)
{
  v13 = a1;
  v3 = a2;
  v4 = v13;
  if (v13)
  {
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = +[NSAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"void layerPathDescription(NSArray<CALayer *> *__strong, __strong DASLoggerBlock)"];
    [v9 handleFailureInFunction:v10 file:@"DASProcessor.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"path"}];

    v4 = 0;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"void layerPathDescription(NSArray<CALayer *> *__strong, __strong DASLoggerBlock)"];
  [v11 handleFailureInFunction:v12 file:@"DASProcessor.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"logger"}];

  v4 = v13;
LABEL_3:
  if ([v4 count])
  {
    v5 = 0;
    do
    {
      v6 = objc_autoreleasePoolPush();
      v7 = +[NSMutableString string];
      v8 = [v13 objectAtIndex:v5];
      sub_1000095C4(v8, v7, v5);

      v3[2](v3, v7);
      objc_autoreleasePoolPop(v6);
      ++v5;
    }

    while ([v13 count] > v5);
  }
}

void sub_100008E5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005B8C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "skp%lu: %@", &v6, 0x16u);
  }
}

void sub_100008F28(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v12 = +[NSAssertionHandler currentHandler];
    v13 = [NSString stringWithUTF8String:"void recursiveLayerDescription(CALayer *__strong, __strong DASLoggerBlock)"];
    [v12 handleFailureInFunction:v13 file:@"DASProcessor.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"layer"}];

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = +[NSAssertionHandler currentHandler];
    v15 = [NSString stringWithUTF8String:"void recursiveLayerDescription(CALayer *__strong, __strong DASLoggerBlock)"];
    [v14 handleFailureInFunction:v15 file:@"DASProcessor.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"logger"}];

    goto LABEL_3;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = objc_autoreleasePoolPush();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000073CC;
  v23 = sub_1000073F8;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100009454;
  v16[3] = &unk_100010970;
  v7 = v5;
  v17 = v7;
  v18 = &v19;
  v8 = objc_retainBlock(v16);
  v9 = objc_retainBlock(v8);
  v10 = v20[5];
  v20[5] = v9;

  (v8[2])(v8, v3, 0);
  v11 = v20[5];
  v20[5] = 0;

  _Block_object_dispose(&v19, 8);
  objc_autoreleasePoolPop(v6);
}

void sub_10000914C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009164(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v8 identifier]);
  v4 = [*(a1 + 32) objectForKey:v3];

  if (v4)
  {
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 pid]);
    v6 = [*(a1 + 40) objectForKey:v5];
    if (v6)
    {
      v7 = v6;
      [v6 addObject:v3];
    }

    else
    {
      v7 = [NSMutableSet setWithObject:v3];
      [*(a1 + 40) setObject:v7 forKey:v5];
    }
  }
}

uint64_t sub_100009264(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_100005E70();
  off_100015108 = dlsym(v4, "CAEncodeLayerTreeWithInfo");
  v5 = (off_100015108)(v3, a2);

  return v5;
}

_BYTE *sub_1000092C0(char a1)
{
  v2 = sub_100005E70();
  result = dlsym(v2, "CALayerEncodeAllAnimations");
  qword_100015210 = result;
  off_100015118 = sub_100009310;
  *result = a1;
  return result;
}

_BYTE *sub_100009320(char a1)
{
  v2 = sub_100005E70();
  result = dlsym(v2, "CAEncodeBackingStores");
  qword_100015208 = result;
  off_100015110 = sub_100009370;
  *result = a1;
  return result;
}

NSNumber *__cdecl sub_1000093C8(id a1, DASContextInfo *a2)
{
  v2 = [(DASContextInfo *)a2 identifier];

  return [NSNumber numberWithUnsignedInt:v2];
}

void sub_100009454(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = +[NSMutableString string];
  sub_1000095C4(v5, v7, a3);
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v6);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v5 sublayers];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

void sub_1000095C4(void *a1, void *a2, int a3)
{
  v14 = a1;
  v5 = a2;
  if (v14)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"void appendLevelDescription(CALayer *__strong, NSMutableString *__strong, int)"];
    [v10 handleFailureInFunction:v11 file:@"DASProcessor.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"layer"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"void appendLevelDescription(CALayer *__strong, NSMutableString *__strong, int)"];
  [v12 handleFailureInFunction:v13 file:@"DASProcessor.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"info"}];

LABEL_3:
  if ([v5 length])
  {
    [v5 appendString:@"\n"];
  }

  if (a3)
  {
    v6 = 1;
    do
    {
      [v5 appendString:@"\t| "];
      ++v6;
    }

    while (v6 <= a3);
  }

  v7 = [v14 debugDescription];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"-desc was nil!-";
  }

  [v5 appendString:v9];
}

void sub_100009770(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_100005B8C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "final: %@", &v4, 0xCu);
  }
}

void sub_100009820(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_100005B8C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "prsd: %@", &v4, 0xCu);
  }
}

void sub_100009A94(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a2 pid]);
  [v2 addObject:v3];
}

void sub_100009B00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [RBSAssertion alloc];
  v5 = [NSString stringWithFormat:@"DumpDisplay: naming %@", v3];
  v6 = +[RBSTarget targetWithPid:](RBSTarget, "targetWithPid:", [v3 unsignedIntValue]);
  v7 = [RBSDomainAttribute attributeWithDomain:@"com.apple.displayarchive" name:@"RenderClientProcessing"];
  v15 = v7;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = [v4 initWithExplanation:v5 target:v6 attributes:v8];

  v12 = 0;
  [v9 acquireWithError:&v12];
  v10 = v12;
  if (v10)
  {
    v11 = sub_100005B8C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "error acquiring assertion to name pid %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) addObject:v9];
}

void sub_100009CC8(id a1, NSNumber *a2)
{
  v3 = [NSString stringWithFormat:@"NameLayerTree-%i", [(NSNumber *)a2 unsignedIntValue]];
  v2 = v3;
  notify_post([v3 UTF8String]);
}

void sub_10000A3FC(uint64_t a1, void *a2, void *a3)
{
  v58 = a2;
  v4 = a3;
  v61 = +[NSMutableArray array];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v75 objects:v88 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v76;
    v63 = *v76;
    do
    {
      v9 = 0;
      v65 = v7;
      do
      {
        if (*v76 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v75 + 1) + 8 * v9);
        v11 = [v5 objectForKey:v10];
        if ([v11 count] >= 2)
        {
          v12 = v5;
          v13 = [v11 count];
          v14 = sub_100005B8C();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (v13 == 2)
          {
            if (v15)
            {
              v16 = [v10 unsignedIntValue];
              *buf = 67109120;
              *v80 = v16;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "skipped context %x because it was already processed", buf, 8u);
            }

            +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"skipped context %x because it was already processed", [v10 unsignedIntValue], v57);
          }

          else
          {
            if (v15)
            {
              v17 = [v10 unsignedIntValue];
              v18 = [v11 count];
              *buf = 67109376;
              *v80 = v17;
              *&v80[4] = 2048;
              *&v80[6] = v18 - 1;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "skipped context %x because it was already processed (%lux)", buf, 0x12u);
            }

            +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"skipped context %x because it was already processed (%lux)", [v10 unsignedIntValue], objc_msgSend(v11, "count") - 1);
          }
          v19 = ;
          [v61 addObject:v19];
          v20 = sub_100005B8C();
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

          if (v21)
          {
            v22 = [v11 objectAtIndex:0];
            v23 = sub_100008B98(v22);
            sub_100008C90(v23, &stru_100010638);

            if ([v11 count] >= 2)
            {
              v24 = 1;
              do
              {
                v25 = [v11 objectAtIndex:v24];
                v26 = sub_100008B98(v25);
                v74[0] = _NSConcreteStackBlock;
                v74[1] = 3221225472;
                v74[2] = sub_10000AC8C;
                v74[3] = &unk_100010658;
                v74[4] = v24;
                sub_100008C90(v26, v74);

                ++v24;
              }

              while (v24 < [v11 count]);
            }
          }

          v5 = v12;
          v8 = v63;
          v7 = v65;
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v75 objects:v88 count:16];
    }

    while (v7);
  }

  v27 = sub_100005B8C();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);

  if (v28)
  {
    v29 = sub_100005B8C();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v55 = *(a1 + 32);
      *buf = 138412290;
      *v80 = v55;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "final layer tree for %@", buf, 0xCu);
    }

    sub_100008F28(v58, &stru_100010678);
  }

  [sub_100007224() begin];
  v30 = +[NSMutableDictionary dictionary];
  v31 = [*(a1 + 40) contexts];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10000AD58;
  v71[3] = &unk_1000106A0;
  v60 = v5;
  v72 = v60;
  v32 = v30;
  v73 = v32;
  [v31 bs_each:v71];

  +[NSMutableArray array];
  v66 = v64 = v32;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v33 = [v32 allKeys];
  v34 = [v33 sortedArrayUsingSelector:"compare:"];

  obj = v34;
  v35 = [v34 countByEnumeratingWithState:&v67 objects:v87 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v68;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v68 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v67 + 1) + 8 * i);
        v85[0] = @"pid";
        v85[1] = @"contextIDs";
        v86[0] = v39;
        v40 = [v32 objectForKey:?];
        v41 = [v40 allObjects];
        v42 = [v41 sortedArrayUsingSelector:"compare:"];
        v43 = [v42 bs_map:&stru_1000106E0];
        v86[1] = v43;
        v44 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:2];
        [v66 addObject:v44];
      }

      v36 = [obj countByEnumeratingWithState:&v67 objects:v87 count:16];
    }

    while (v36);
  }

  v83[0] = @"Root";
  v81[0] = @"pid";
  v45 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) pid]);
  v81[1] = @"contextID";
  v82[0] = v45;
  v46 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) identifier]);
  v82[1] = v46;
  v47 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:2];
  v84[0] = v47;
  v83[1] = @"ContextIDsByPID";
  v48 = [v66 copy];
  v84[1] = v48;
  v83[2] = @"ParseErrors";
  v49 = [v61 copy];
  v84[2] = v49;
  v50 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:3];

  off_100015110(1);
  off_100015118(1);
  v51 = off_100015108(v58, v50);
  v52 = sub_100005B8C();
  v53 = v52;
  if (v51)
  {
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v54 = *(a1 + 32);
      *buf = 138412546;
      *v80 = v54;
      *&v80[8] = 2112;
      *&v80[10] = v50;
      _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "archived '%@' with info:\n%@", buf, 0x16u);
    }

    [*(a1 + 48) setObject:v51 forKey:*(a1 + 56)];
  }

  else
  {
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v56 = *(a1 + 32);
      *buf = 138412290;
      *v80 = v56;
      _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "failed to create archive of '%@'", buf, 0xCu);
    }
  }

  [sub_100007224() commit];
}

void sub_10000AC8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005B8C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "skp%lu: %@", &v6, 0x16u);
  }
}

void sub_10000AD58(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v8 identifier]);
  v4 = [*(a1 + 32) objectForKey:v3];

  if (v4)
  {
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 pid]);
    v6 = [*(a1 + 40) objectForKey:v5];
    if (v6)
    {
      v7 = v6;
      [v6 addObject:v3];
    }

    else
    {
      v7 = [NSMutableSet setWithObject:v3];
      [*(a1 + 40) setObject:v7 forKey:v5];
    }
  }
}

void sub_10000AEA0(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_100005B8C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "final: %@", &v4, 0xCu);
  }
}

void sub_10000AF50(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_100005B8C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "prsd: %@", &v4, 0xCu);
  }
}

void sub_10000B12C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_1000151C0;
  v7 = off_1000151C0;
  if (!off_1000151C0)
  {
    v1 = sub_100005E70();
    v5[3] = dlsym(v1, "CARenderServerGetServerPort");
    off_1000151C0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0(0);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"mach_port_t soft_CARenderServerGetServerPort(const char *)"];
    [v2 handleFailureInFunction:v3 file:@"DASProcessor.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10000B26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10000B284(uint64_t a1)
{
  v2 = sub_100005E70();
  result = dlsym(v2, "CARenderServerGetServerPort");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000151C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}