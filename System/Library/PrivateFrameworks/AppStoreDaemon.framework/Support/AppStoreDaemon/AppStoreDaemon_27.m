uint64_t sub_1002D8550(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1002D865C(uint64_t a1, const char *a2)
{
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  if (v2)
  {
    Property = objc_getProperty(v2, a2, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = *(v3 + 16);

  return v6(v3, Property);
}

NSObject *sub_1002D86F0(NSObject *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_13;
  }

  v9.receiver = a1;
  v9.super_class = XDCDevice;
  v4 = [&v9 init];
  a1 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  sub_1002D88A0(v4, v3);
  if (!a1[1].isa)
  {
    v6 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      v5 = a1;
      a1 = 0;
LABEL_12:

      goto LABEL_13;
    }

    *buf = 138543362;
    v11 = v3;
    v7 = "Failed find matching device for: %{public}@";
LABEL_15:
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, buf, 0xCu);
    goto LABEL_11;
  }

  if (!a1[3].isa)
  {
    v6 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v11 = v3;
    v7 = "Failed to get destination identifier for: %{public}@";
    goto LABEL_15;
  }

  if ((BYTE2(a1[2].isa) & 1) == 0)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unsupported device: %{public}@", buf, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:

  return a1;
}

void sub_1002D88A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v12 = v3;
    v4 = [v3 isActive];
    if (v4)
    {
      LOBYTE(v4) = [v12 isLocallyPaired];
    }

    *(a1 + 16) = v4;
    *(a1 + 17) = [v12 isConnected];
    v5 = +[NRPairedDeviceRegistry sharedInstance];
    v6 = [v5 deviceForIDSDevice:v12];
    v7 = *(a1 + 8);
    *(a1 + 8) = v6;

    v8 = IDSCopyIDForDevice();
    v9 = *(a1 + 24);
    *(a1 + 24) = v8;

    *(a1 + 18) = [v12 serviceMinCompatibilityVersion] > 7;
    v10 = [v12 modelIdentifier];
    v11 = *(a1 + 32);
    *(a1 + 32) = v10;

    *(a1 + 19) = 0;
    v3 = v12;
  }
}

id *sub_1002D897C(id *a1)
{
  if (a1)
  {
    a1 = [a1[1] pairingID];
    v1 = vars8;
  }

  return a1;
}

id *sub_1002D89B0(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = [v1[1] valueForProperty:NRDevicePropertyProductType];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    [v2 setObject:v5 forKeyedSubscript:@"X-Apple-TA-Device"];
    v6 = [v1[1] valueForProperty:NRDevicePropertySystemVersion];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    [v2 setObject:v8 forKeyedSubscript:@"X-Apple-TA-OS-Version"];
    if ([v2 count])
    {
      v1 = [v2 copy];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

_BYTE *sub_1002D8BB4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [InstallTestFlightAppsTask alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002D8CA0;
  v8[3] = &unk_100521B98;
  v8[4] = v3;
  v5 = sub_10036FDEC(v2, v8);

  v6 = sub_1002D96D4(v4, v5);
  v6[48] = 1;

  return v6;
}

AppInstall *sub_1002D8CA0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(NSMutableDictionary);
  if (v2)
  {
    v4 = v2[9];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setObject:v5 forKeyedSubscript:@"bundle_id"];

  v6 = +[NSUUID UUID];
  [v3 setObject:v6 forKeyedSubscript:@"external_id"];

  v7 = sub_100305A04();
  if (v2)
  {
    if ((v2[26] & 8) != 0)
    {
      v8 = [NSNumber numberWithUnsignedLongLong:v2[4]];
      [v7 ams_setDSID:v8];
    }

    v9 = v2[6];
    if (v9)
    {
      v10 = v9;
      [v7 setUsername:v10];
    }

    v11 = v2[5];
    if (v11)
    {
      v12 = v11;
      [v7 ams_setAltDSID:v12];
    }
  }

  v13 = sub_1002DC3AC(ACAccountStore, v7);

  if (v13)
  {
    v14 = [v13 ams_DSID];
    [v3 setObject:v14 forKeyedSubscript:@"account_id"];

    v15 = [v13 ams_altDSID];
    [v3 setObject:v15 forKeyedSubscript:@"alt_dsid"];

    v16 = [v13 username];
    [v3 setObject:v16 forKeyedSubscript:@"apple_id"];
  }

  if (v2)
  {
    v17 = v2[7];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  if ([v18 length])
  {
    v19 = [NSURL URLWithString:v18];
    [v3 setObject:v19 forKeyedSubscript:@"artwork_url"];
  }

  v72 = v18;
  if (v2)
  {
    if ((v2[26] & 4) != 0)
    {
      v20 = [NSNumber numberWithUnsignedLongLong:v2[3]];
      [v3 setObject:v20 forKeyedSubscript:@"item_id"];
    }

    v21 = v2[12];
    [v3 setObject:v21 forKeyedSubscript:@"bundle_name"];

    v22 = v2[14];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"bundle_name"];
    v22 = 0;
  }

  v74 = v13;
  v23 = v22;
  if ([v23 length])
  {
    v24 = [NSURL URLWithString:v23];
    [v3 setObject:v24 forKeyedSubscript:@"messages_artwork_url"];
  }

  if (v2)
  {
    v25 = *(v2 + 200);
  }

  else
  {
    v25 = 0;
  }

  v26 = [NSNumber numberWithBool:v25 & 1, v23];
  [v3 setObject:v26 forKeyedSubscript:@"has_messages_extension"];

  if (v2)
  {
    v27 = [NSNumber numberWithBool:*(v2 + 205)];
    [v3 setObject:v27 forKeyedSubscript:@"launch_prohibited"];

    v28 = v2[21];
  }

  else
  {
    v69 = [NSNumber numberWithBool:0];
    [v3 setObject:v69 forKeyedSubscript:@"launch_prohibited"];

    v28 = 0;
  }

  v29 = v28;
  [v3 setObject:v29 forKeyedSubscript:@"storefront"];

  [v3 setObject:&off_100547C98 forKeyedSubscript:@"metrics_install_type"];
  [v3 setObject:&off_100547CB0 forKeyedSubscript:@"source_type"];
  [v3 setObject:&off_100547CC8 forKeyedSubscript:@"priority"];
  [v3 setObject:&off_100547CB0 forKeyedSubscript:@"bootstrapped"];
  [v3 setObject:@"TFB" forKeyedSubscript:@"log_code"];
  v30 = v2;
  objc_opt_self();
  v31 = objc_alloc_init(MIStoreMetadata);
  v32 = v31;
  if (v2)
  {
    v33 = v30[24];
    [v32 setArtistName:v33];

    [v32 setKind:@"software"];
    if ((v30[26] & 4) != 0)
    {
      v34 = [NSNumber numberWithUnsignedLongLong:v30[3]];
      [v32 setItemID:v34];
    }

    v35 = v30[12];
  }

  else
  {
    [v31 setArtistName:0];
    [v32 setKind:@"software"];
    v35 = 0;
  }

  v36 = v35;
  [v32 setItemName:v36];

  if (v2)
  {
    if ((v30[26] & 2) != 0)
    {
      v37 = [NSNumber numberWithUnsignedLongLong:v30[2]];
      [v32 setBetaExternalVersionIdentifier:v37];
    }

    v38 = v30[8];
    if (v38)
    {
      v39 = v38;
      [v32 setBetaBuildGroupID:v39];
    }

    v40 = v30[9];
    [v32 setSoftwareVersionBundleID:v40];

    [v32 setHasMessagesExtension:*(v30 + 200)];
    [v32 setLaunchProhibited:*(v30 + 205)];
    v41 = v30[20];
  }

  else
  {
    [v32 setSoftwareVersionBundleID:0];
    [v32 setHasMessagesExtension:0];
    [v32 setLaunchProhibited:0];
    v41 = 0;
  }

  v42 = v41;
  [v32 setStoreCohort:v42];

  if (v2)
  {
    v43 = v30[21];
    v44 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v43 integerValue]);
    [v32 setStorefront:v44];

    v45 = v30[16];
    if (v45 && v32)
    {
      sub_1003E3A60(v32, v45, 0);
    }
  }

  else
  {
    v70 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [0 integerValue]);
    [v32 setStorefront:v70];

    v45 = 0;
  }

  sub_1003E36D4(v32, 1);

  if (v13)
  {
    sub_1003E38F0(v32, v13);
  }

  v46 = sub_1003E364C(v32, 0);
  [v3 setObject:v46 forKeyedSubscript:@"store_metadata"];

  v47 = [(SQLiteMemoryEntity *)[AppInstall alloc] initWithPropertyValues:v3];
  v48 = sub_1003B6560();
  sub_100408FB4(v47, v48);

  v49 = v30;
  v73 = objc_opt_self();
  v50 = objc_alloc_init(NSMutableDictionary);
  v51 = v50;
  if (v2)
  {
    v52 = v49[15];
    [v51 setObject:v52 forKeyedSubscript:@"dp_info"];

    v53 = v49[16];
  }

  else
  {
    [v50 setObject:0 forKeyedSubscript:@"dp_info"];
    v53 = 0;
  }

  v54 = v53;
  [v51 setObject:v54 forKeyedSubscript:@"sinf"];

  if (v2)
  {
    v55 = v49[17];
  }

  else
  {
    v55 = 0;
  }

  v56 = v55;
  if ([v56 length])
  {
    v57 = [NSURL URLWithString:v56];
    [v51 setObject:v57 forKeyedSubscript:@"package_url"];
  }

  [v51 setObject:&off_100547CC8 forKeyedSubscript:@"package_type"];
  if (v2)
  {
    v58 = v49[23];
    [v51 setObject:v58 forKeyedSubscript:@"variant_id"];

    v59 = v49[18];
  }

  else
  {
    [v51 setObject:0 forKeyedSubscript:@"variant_id"];
    v59 = 0;
  }

  v60 = v59;
  v61 = [v60 count];

  if (v61)
  {
    if (v2)
    {
      v62 = v49[18];
    }

    else
    {
      v62 = 0;
    }

    v63 = v62;
    v64 = sub_1002DB5F0(v73, v63);
    [v51 setObject:v64 forKeyedSubscript:@"provisioning_profiles"];
  }

  v65 = [(SQLiteMemoryEntity *)[AppPackage alloc] initWithPropertyValues:v51];

  if (v65)
  {
    v75 = v65;
    v67 = [NSArray arrayWithObjects:&v75 count:1];
    if (v47)
    {
      objc_setProperty_atomic_copy(v47, v66, v67, 48);
    }
  }

  return v47;
}

void *sub_1002D96D4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = InstallTestFlightAppsTask;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[5];
      a1[5] = v4;
    }
  }

  return a1;
}

void *sub_1002D9750(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = v6 != 0;
  v11 = [InstallTestFlightAppsTask alloc];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1002D98AC;
  v19[3] = &unk_100521BC0;
  v22 = v9;
  v12 = v7;
  v23 = v6 != 0;
  v20 = v12;
  v21 = v6;
  v13 = v6;
  v14 = sub_10036FDEC(v8, v19);

  v15 = sub_1002D96D4(v11, v14);
  *(v15 + 48) = v10;
  v16 = v15[7];
  v15[7] = v12;
  v17 = v12;

  return v15;
}

AppInstall *sub_1002D98AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  objc_opt_self();
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [v6 processInfo];

  v9 = [v8 bundleIdentifier];
  [v7 setObject:v9 forKeyedSubscript:@"client_id"];

  v10 = [v5 bundleID];
  [v7 setObject:v10 forKeyedSubscript:@"bundle_id"];

  v11 = +[NSUUID UUID];
  [v7 setObject:v11 forKeyedSubscript:@"external_id"];

  v12 = [v5 bundleID];
  v13 = [ApplicationProxy proxyForBundleID:v12];

  v14 = &off_100547CF8;
  v109 = a1;
  if (v13 && ([*(v13 + 120) isPlaceholder] & 1) == 0)
  {
    v14 = &off_100547CE0;
  }

  [v7 setObject:v14 forKeyedSubscript:?];
  v15 = [v5 account];
  v16 = sub_1002DC3AC(ACAccountStore, v15);

  if (v16)
  {
    v17 = [v16 ams_DSID];
    [v7 setObject:v17 forKeyedSubscript:@"account_id"];

    v18 = [v16 ams_altDSID];
    [v7 setObject:v18 forKeyedSubscript:@"alt_dsid"];

    v19 = [v16 username];
    [v7 setObject:v19 forKeyedSubscript:@"apple_id"];
  }

  v20 = [v5 artworkURL];
  [v7 setObject:v20 forKeyedSubscript:@"artwork_url"];

  v21 = [v5 itemID];
  [v7 setObject:v21 forKeyedSubscript:@"item_id"];

  v22 = [v5 itemName];
  [v7 setObject:v22 forKeyedSubscript:@"bundle_name"];

  v23 = [v5 receipt];
  [v7 setObject:v23 forKeyedSubscript:@"receipt"];

  v24 = [v5 bundleVersion];
  [v7 setObject:v24 forKeyedSubscript:@"bundle_version"];

  [v5 softwarePlatform];
  v25 = [NSNumber numberWithInteger:1];
  [v7 setObject:v25 forKeyedSubscript:@"software_platform"];

  v26 = [v5 placeholderEntitlements];
  if (v26)
  {
    v110 = 0;
    v27 = [NSKeyedArchiver archivedDataWithRootObject:v26 requiringSecureCoding:1 error:&v110];
    v28 = v110;
    if (v27)
    {
      [v7 setObject:v27 forKeyedSubscript:@"placeholder_entitlements"];
    }

    else
    {
      v29 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v26;
        v112 = 2114;
        v113 = v28;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to encode placeholder entitlements: %{public}@ error: %{public}@", buf, 0x16u);
      }
    }
  }

  v30 = [v5 messagesArtworkURL];
  [v7 setObject:v30 forKeyedSubscript:@"messages_artwork_url"];

  v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 hasMessagesExtension]);
  [v7 setObject:v31 forKeyedSubscript:@"has_messages_extension"];

  v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isLaunchProhibited]);
  [v7 setObject:v32 forKeyedSubscript:@"launch_prohibited"];

  v33 = [v5 storeFront];
  [v7 setObject:v33 forKeyedSubscript:@"storefront"];

  if (v13 && ![*(v13 + 120) isPlaceholder])
  {
    v34 = &off_100547D10;
  }

  else
  {
    v34 = &off_100547D28;
  }

  [v7 setObject:v34 forKeyedSubscript:@"metrics_install_type"];
  [v7 setObject:&off_100547CB0 forKeyedSubscript:@"source_type"];
  [v7 setObject:&off_100547CB0 forKeyedSubscript:@"bootstrapped"];
  v107 = v26;
  if ([v5 userInitiated])
  {
    v35 = &off_10051D268;
    v36 = &off_100547D40;
    v37 = &off_1005200E0;
  }

  else
  {
    [v7 setObject:&off_100547CB0 forKeyedSubscript:@"automatic_type"];
    [v7 setObject:&off_100547D58 forKeyedSubscript:@"priority"];
    v35 = &off_10051D260;
    v36 = &__kCFBooleanTrue;
    v37 = &off_100520128;
  }

  [v7 setObject:v36 forKeyedSubscript:*v37];
  [v7 setObject:*v35 forKeyedSubscript:@"log_code"];
  v38 = v5;
  objc_opt_self();
  v39 = objc_alloc_init(MIStoreMetadata);
  v40 = [v38 vendorName];
  [v39 setArtistName:v40];

  [v39 setKind:@"software"];
  v41 = [v38 itemID];
  [v39 setItemID:v41];

  v42 = [v38 itemName];
  [v39 setItemName:v42];

  v43 = [v38 externalVersionIdentifier];
  [v39 setBetaExternalVersionIdentifier:v43];

  v44 = [v38 betaBuildGroupID];
  [v39 setBetaBuildGroupID:v44];

  v45 = [v38 bundleID];
  [v39 setSoftwareVersionBundleID:v45];

  [v39 setHasMessagesExtension:{objc_msgSend(v38, "hasMessagesExtension")}];
  [v39 setLaunchProhibited:{objc_msgSend(v38, "isLaunchProhibited")}];
  v46 = [v38 initialODRSize];
  [v39 setInitialODRSize:v46];

  [v39 setSourceApp:@"com.apple.TestFlight"];
  v47 = [v38 storeCohort];
  [v39 setStoreCohort:v47];

  v48 = [v38 storeFront];
  [v39 setStorefront:v48];

  v49 = [v38 packageSINF];
  if (v49 && v39)
  {
    sub_1003E3A60(v39, v49, 0);
  }

  v50 = [v38 genre];
  v51 = [v50 genre];
  [v39 setGenre:v51];

  v52 = [v38 genre];
  v53 = [v52 genreID];
  [v39 setGenreID:v53];

  v54 = [v38 subGenres];
  v55 = sub_10036FDEC(v54, &stru_100521C40);
  [v39 setSubGenres:v55];

  sub_1003E36D4(v39, 1);
  sub_1003E3854(v39, [v38 betaTesterType]);

  if (v16)
  {
    sub_1003E38F0(v39, v16);
  }

  v108 = v13;
  v56 = sub_1003E364C(v39, 0);
  [v7 setObject:v56 forKeyedSubscript:@"store_metadata"];

  v57 = [(SQLiteMemoryEntity *)[AppInstall alloc] initWithPropertyValues:v7];
  v58 = [v38 account];
  sub_10023E07C(v57, v58, @"account");

  v59 = sub_1003B6560();
  if (([v38 userInitiated] & 1) == 0)
  {
    sub_1003B6B78(v59, [v38 requiresPowerPluggedIn]);
  }

  sub_100408FB4(v57, v59);
  v60 = v38;
  v61 = objc_opt_self();
  v62 = objc_alloc_init(NSMutableDictionary);
  v63 = [v60 packageDPInfo];
  [v62 setObject:v63 forKeyedSubscript:@"dp_info"];

  v64 = [v60 packageSINF];
  [v62 setObject:v64 forKeyedSubscript:@"sinf"];

  v65 = [v60 initialODRSize];
  [v62 setObject:v65 forKeyedSubscript:@"initial_odr_size"];

  v66 = [v60 backgroundAssetMetadata];
  [v62 setObject:v66 forKeyedSubscript:@"background_asset_metadata"];

  v67 = [v60 packageURL];
  [v62 setObject:v67 forKeyedSubscript:@"package_url"];

  [v62 setObject:&off_100547CC8 forKeyedSubscript:@"package_type"];
  v68 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v60 packageCompression]);
  [v62 setObject:v68 forKeyedSubscript:@"compression"];

  v69 = [v60 packageSize];
  [v62 setObject:v69 forKeyedSubscript:@"bytes_total"];

  v70 = [v60 variantID];
  [v62 setObject:v70 forKeyedSubscript:@"variant_id"];

  v71 = [v60 provisioningProfiles];
  v72 = [v71 count];

  if (v72)
  {
    v73 = [v60 provisioningProfiles];
    v74 = sub_1002DB5F0(v61, v73);
    [v62 setObject:v74 forKeyedSubscript:@"provisioning_profiles"];
  }

  v75 = [v60 clearHashes];
  if (![v75 count])
  {
    goto LABEL_33;
  }

  v76 = [v60 chunkSize];
  v77 = [v76 integerValue];

  if (v77 < 1)
  {
    goto LABEL_34;
  }

  v78 = [v60 cryptHashes];
  [v62 setObject:v78 forKeyedSubscript:@"hash_array"];

  v79 = [v60 clearHashes];
  [v62 setObject:v79 forKeyedSubscript:@"clear_hash_array"];

  v80 = [v60 chunkSize];
  [v62 setObject:v80 forKeyedSubscript:@"hash_size"];

  if ([v60 hashType])
  {
    v75 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v60 hashType]);
    [v62 setObject:v75 forKeyedSubscript:@"hash_type"];
LABEL_33:

    goto LABEL_34;
  }

  [v62 setObject:&off_100547D40 forKeyedSubscript:@"hash_type"];
LABEL_34:
  [v62 setObject:&off_100547D40 forKeyedSubscript:@"archive_type"];
  v81 = [(SQLiteMemoryEntity *)[AppPackage alloc] initWithPropertyValues:v62];

  if (v81)
  {
    *buf = v81;
    v83 = [NSArray arrayWithObjects:buf count:1];
    if (v57)
    {
      objc_setProperty_atomic_copy(v57, v82, v83, 48);
    }
  }

  v84 = [v60 backgroundAssetMetadata];
  if (os_variant_has_internal_content())
  {
    v86 = [v60 bundleID];
    v87 = [BAApplicationConfigurationOverrides asd_overriddenDictionaryForBundleIdentifier:v86 startingDictionary:v84];

    v84 = v87;
  }

  if (v57)
  {
    objc_setProperty_nonatomic_copy(v57, v85, v84, 56);
  }

  v88 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
  {
    v89 = *(v109 + 32);
    v90 = [v60 bundleID];
    v91 = [v60 userInitiated];
    *buf = 138543874;
    *&buf[4] = v89;
    v112 = 2114;
    v113 = v90;
    v114 = 1024;
    LODWORD(v115) = v91;
    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting TestFlight installation for %{public}@ userInitiated = %{BOOL}d", buf, 0x1Cu);
  }

  v92 = [v60 token];

  if (v92)
  {
    v93 = [v60 token];
    sub_10023E000(v57, v93, @"install_verification_token");

    v94 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      v95 = *(v109 + 32);
      v96 = [v60 bundleID];
      v97 = [v60 token];
      *buf = 138543874;
      *&buf[4] = v95;
      v112 = 2114;
      v113 = v96;
      v114 = 2112;
      v115 = v97;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Including token: %@", buf, 0x20u);
    }
  }

  if (*(v109 + 56) == 1)
  {
    sub_10023E000(v57, &__kCFBooleanTrue, @"remote_install");
    v98 = sub_1002D897C(*(v109 + 40));
    sub_10023E000(v57, v98, @"gizmo_pairing_id");

    sub_10023E000(v57, &off_100547C68, @"coordinator_intent");
    v99 = [v60 companionBundleID];

    if (v99)
    {
      v100 = [v60 companionBundleID];
      sub_10023E000(v57, v100, @"companion_bundle_id");
    }

    else
    {
      v100 = [v60 itemID];
      if (v100)
      {
        v110 = 0;
        v101 = [[LSApplicationRecord alloc] initWithStoreItemIdentifier:objc_msgSend(v100 error:{"unsignedLongLongValue"), &v110}];
        v102 = [v101 bundleIdentifier];

        if (v102)
        {
          v103 = [v101 bundleIdentifier];
          sub_10023E000(v57, v103, @"companion_bundle_id");
        }

        else
        {
          v103 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            v105 = *(v109 + 32);
            v106 = [v60 bundleID];
            *buf = 138543874;
            *&buf[4] = v105;
            v112 = 2114;
            v113 = v106;
            v114 = 2114;
            v115 = v110;
            _os_log_error_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "[%{public}@] Received request to install %{public}@ remotely but we don't have a companion bundle ID for it. Error: %{public}@", buf, 0x20u);
          }
        }
      }
    }
  }

  return v57;
}

id sub_1002DA910(id *a1)
{
  if (a1)
  {
    [a1 lock];
    v2 = [a1[8] copy];
    [a1 unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1002DB55C(id a1, ASDTestFlightAppGenre *a2)
{
  v2 = a2;
  v3 = [MIStoreMetadataSubGenre alloc];
  v4 = [(ASDTestFlightAppGenre *)v2 genre];
  v5 = [(ASDTestFlightAppGenre *)v2 genreID];

  v6 = [v3 initWithGenre:v4 genreID:v5];

  return v6;
}

id sub_1002DB5F0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10036FDEC(v2, &stru_100521C80);

  return v3;
}

char *sub_1002DB6C4(char *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v18 = a6;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = PushRegisterTask;
    v16 = objc_msgSendSuper2(&v19, "init");
    a1 = v16;
    if (v16)
    {
      objc_storeStrong((v16 + 42), a2);
      objc_storeStrong((a1 + 50), a3);
      objc_storeStrong((a1 + 58), a4);
      objc_storeStrong((a1 + 66), a5);
      objc_storeStrong((a1 + 74), a6);
    }
  }

  return a1;
}

void sub_1002DBBC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v6)
    {
      v8 = a2;
      v9 = sub_10024A6D0();
      v10 = [v9 dataTaskPromiseWithRequest:v8];

      *&v15 = _NSConcreteStackBlock;
      *(&v15 + 1) = 3221225472;
      v16 = sub_1002DBDC4;
      v17 = &unk_100521150;
      v18 = v6;
      v19 = v7;
      [v10 resultWithCompletion:&v15];
    }
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1 + 32) + 74);
      LODWORD(v15) = 138412290;
      *(&v15 + 4) = v14;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@] Failed to create push register request.", &v15, 0xCu);
    }

    v12 = *(a1 + 40);
    if (v5)
    {
      (*(v12 + 16))(v12, v5);
    }

    else
    {
      objc_opt_self();
      v13 = ASDErrorWithDescription();
      (*(v12 + 16))(v12, v13);
    }
  }
}

void sub_1002DBDC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [v5 object];

    if (v8)
    {
      v9 = [v5 responseStatusCode];
      v10 = ASDLogHandleForCategory();
      v7 = v10;
      if (v9 == 200)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = *(*(a1 + 32) + 74);
          v17 = 138412290;
          v18 = v11;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%@] Successfully registered push token", &v17, 0xCu);
        }

        goto LABEL_4;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = *(*(a1 + 32) + 74);
        v17 = 138412546;
        v18 = v16;
        v19 = 2050;
        v20 = [v5 responseStatusCode];
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Failed register push token call with unknown error and status code: %{public}ld", &v17, 0x16u);
      }
    }

    else
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v15 = *(*(a1 + 32) + 74);
        v17 = 138412290;
        v18 = v15;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Did not receive response from register push call", &v17, 0xCu);
      }
    }

    v12 = *(a1 + 40);
    objc_opt_self();
    v13 = ASDErrorWithDescription();
    (*(v12 + 16))(v12, v13);

    goto LABEL_16;
  }

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v14 = *(*(a1 + 32) + 74);
    v17 = 138412546;
    v18 = v14;
    v19 = 2114;
    v20 = v6;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Failed register push token call with error: %{public}@", &v17, 0x16u);
  }

LABEL_4:

  (*(*(a1 + 40) + 16))();
LABEL_16:
}

id *sub_1002DC148(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (a1)
  {
    v10 = a2;
    v11 = [[NSString alloc] initWithFormat:v10 arguments:&a9];

    v12 = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v12, v13);
    v9 = sub_1002DC210(v9, v14);
  }

  return v9;
}

id *sub_1002DC210(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = DispatchQueue;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

id sub_1002DC288()
{
  objc_opt_self();
  if (qword_1005AAB38 != -1)
  {
    dispatch_once(&qword_1005AAB38, &stru_100521CC8);
  }

  v0 = qword_1005AAB40;

  return v0;
}

void sub_1002DC2E0(id a1)
{
  v1 = [DispatchQueue alloc];
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.appstored.DispatchQueue.default", v2);
  v4 = sub_1002DC210(&v1->super.isa, v3);

  v5 = qword_1005AAB40;
  qword_1005AAB40 = v4;
}

id *sub_1002DC370(id *a1)
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

void *sub_1002DC3AC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 ams_altDSID];
  v4 = [v2 ams_DSID];
  v5 = [v2 username];
  v6 = +[ACAccountStore ams_sharedAccountStore];
  v7 = [v6 ams_iTunesAccounts];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002DC50C;
  v16[3] = &unk_100521CF0;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = sub_10036FBC8(v7, v16);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v2;
  }

  v14 = v13;

  return v13;
}

uint64_t sub_1002DC50C(void *a1, void *a2)
{
  v4 = a2;
  v5 = [v4 ams_altDSID];
  if (([v5 isEqualToString:a1[4]] & 1) == 0)
  {
    v7 = a1[5];
    if (v7 && ([v4 ams_DSID], v2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v2, "isEqualToNumber:", a1[5]) & 1) != 0))
    {
      v6 = 1;
    }

    else
    {
      v8 = [v4 username];
      v6 = [v8 isEqualToString:a1[6]];

      if (!v7)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

id sub_1002DC5C4(int a1)
{
  if (a1 - 100 < 2 || a1 == 0)
  {
    v2 = 0;
  }

  else
  {
    v4 = sqlite3_errstr(a1);
    if (v4 && *v4)
    {
      v8 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithUTF8String:v4];
      v9 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    }

    else
    {
      v6 = 0;
    }

    v2 = [[NSError alloc] initWithDomain:@"SQLiteErrorDomain" code:a1 userInfo:v6];
  }

  return v2;
}

void sub_1002DC6E0(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  v6 = [v5 substringToIndex:8];

  v7 = sub_1002DC8B8(v3, 0);
  v8 = sub_1002DC8B8(v3, 1);
  v9 = +[NSFileManager defaultManager];
  v10 = [v7 stringByAppendingString:v6];
  v21 = 0;
  [v9 moveItemAtPath:v7 toPath:v10 error:&v21];
  v11 = v21;

  v12 = +[NSFileManager defaultManager];
  v13 = [v8 stringByAppendingString:v6];
  v20 = v11;
  [v12 moveItemAtPath:v8 toPath:v13 error:&v20];
  v14 = v20;

  v15 = +[NSFileManager defaultManager];
  v16 = [v3 stringByAppendingString:v6];
  v19 = v14;
  [v15 moveItemAtPath:v3 toPath:v16 error:&v19];

  v17 = v19;
  if (a2 && v17)
  {
    v18 = v17;
    *a2 = v17;
  }
}

id sub_1002DC8B8(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = @"-wal";
  }

  else
  {
    v5 = @"-shm";
  }

  v6 = [v3 stringByAppendingString:v5];

  return v6;
}

id sub_1002DC91C(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_alloc_init(NSFileManager);
  v5 = sub_1002DC8B8(v3, 0);
  v15 = 0;
  [v4 removeItemAtPath:v5 error:&v15];
  v6 = v15;

  v7 = sub_1002DC8B8(v3, 1);
  v14 = v6;
  [v4 removeItemAtPath:v7 error:&v14];
  v8 = v14;

  v13 = v8;
  v9 = [v4 removeItemAtPath:v3 error:&v13];

  v10 = v13;
  if (a2 && v10)
  {
    v11 = v10;
    *a2 = v10;
  }

  return v9;
}

uint64_t sub_1002DCA30(sqlite3 **a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  ppDb = 0;
  if (v3)
  {
    v6 = objc_getProperty(v3, v4, 24, 1);
    if (*(v5 + 8))
    {
      v7 = 2;
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = objc_alloc_init(NSFileManager);
  v9 = [v6 stringByDeletingLastPathComponent];
  [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];

  if (!v5)
  {
    v11 = 0;
    v7 = 6;
    goto LABEL_19;
  }

  v7 = 6;
LABEL_7:
  v10 = *(v5 + 5);
  if (v10)
  {
    v11 = v10;
    if ([v11 isEqualToString:NSFileProtectionNone])
    {
      v12 = 0x400000;
    }

    else if ([v11 isEqualToString:NSFileProtectionComplete])
    {
      v12 = 0x100000;
    }

    else if ([v11 isEqualToString:NSFileProtectionCompleteUnlessOpen])
    {
      v12 = 0x200000;
    }

    else if ([v11 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication])
    {
      v12 = 3145728;
    }

    else
    {
      v12 = 0;
    }

    v7 |= v12;
  }

  else
  {
    v11 = 0;
  }

LABEL_19:
  v13 = sqlite3_open_v2([v6 fileSystemRepresentation], &ppDb, v7, 0);
  if (v13)
  {
    v14 = v13;
    goto LABEL_44;
  }

  v15 = ppDb;
  v16 = v5;
  sqlite3_extended_result_codes(v15, 1);
  if (v5)
  {
    v17 = v16[4];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18)
  {
    v19 = v5 ? v16[4] : 0;
    v20 = v19;
    if (v20)
    {
      v21 = v20;
      v22 = sub_1003D44EC(AppDefaultsManager, v20);
      v23 = v22;
      if (v22 && [v22 length] == 16)
      {
        v24 = 0;
      }

      else
      {
        v36 = 0;
        v25 = sub_1002533D0(SQLiteKeychainHelper, v21, &v36);
        v24 = v36;

        if (v25 && [v25 length] == 16)
        {
          v23 = v25;
        }

        else
        {

          v26 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v38 = v21;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Generating new encryption key for identifier: %{public}@", buf, 0xCu);
          }

          CCRandomGenerateBytes(buf, 0x10uLL);
          v23 = [NSData dataWithBytes:buf length:16];

          v35 = 0;
          v27 = sub_1002535BC(SQLiteKeychainHelper, v23, v21, &v35);
          v24 = v35;
          if (!v27)
          {
            v28 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543618;
              v38 = v21;
              v39 = 2114;
              v40 = v24;
              _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "Unable to fetch/generate key with identifier: %{public}@ error: %{public}@", buf, 0x16u);
            }

            sub_1003D46A8(AppDefaultsManager, v23, v21);
          }
        }
      }

      [v23 bytes];
      [v23 length];
      v14 = sqlite3_key();

      if (v14)
      {
        goto LABEL_43;
      }
    }
  }

  v29 = sqlite3_exec(v15, "PRAGMA journal_mode=WAL", 0, 0, 0);
  if (v29)
  {
    v14 = v29;
LABEL_43:

    goto LABEL_44;
  }

  v31 = [NSString alloc];
  if (v5)
  {
    v32 = v16[2];
  }

  else
  {
    v32 = 0;
  }

  v33 = [v31 initWithFormat:@"PRAGMA cache_size=%ld", v32];
  v14 = sqlite3_exec(v15, [v33 UTF8String], 0, 0, 0);

  if (!v14)
  {
    *a1 = ppDb;
    goto LABEL_46;
  }

LABEL_44:
  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

LABEL_46:

  return v14;
}

id *sub_1002DCEF8(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v23.receiver = a1;
    v23.super_class = ClipURLSessionTask;
    v11 = objc_msgSendSuper2(&v23, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 2, a2);
      objc_storeStrong(a1 + 7, a4);
      v12 = [v9 dataTaskWithRequest:v8];
      v13 = a1[1];
      a1[1] = v12;

      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = a1[7];
        v16 = a1[1];
        v17 = [v8 URL];
        *buf = 138412802;
        v25 = v15;
        v26 = 2114;
        v27 = v16;
        v28 = 2114;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Created task: %{public}@ for URL: %{public}@ ", buf, 0x20u);
      }

      v18 = [NSProgress progressWithTotalUnitCount:0];
      v19 = a1[4];
      a1[4] = v18;

      v20 = objc_alloc_init(Promise);
      v21 = a1[5];
      a1[5] = v20;
    }
  }

  return a1;
}

id *sub_1002DD0B0(id *a1)
{
  if (a1)
  {
    a1 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1[1] taskIdentifier]);
    v1 = vars8;
  }

  return a1;
}

void sub_1002DD100(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    objc_setProperty_atomic(a1, v3, v4, 24);
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 8);
      v8 = 138412802;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Cancelled task: %{public}@ with reason: %{public}@", &v8, 0x20u);
    }

    [*(a1 + 8) cancel];
  }
}

id *sub_1002DD1F4(id *result)
{
  if (result)
  {
    v1 = result;
    [result[6] open];
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[7];
      v4 = v1[1];
      v5 = 138412546;
      v6 = v3;
      v7 = 2114;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@] Started task: %{public}@", &v5, 0x16u);
    }

    return [v1[1] resume];
  }

  return result;
}

id *sub_1002DD344(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = StreamingZipStreamConsumer;
    a1 = objc_msgSendSuper2(&v14, "init");
    if (a1)
    {
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("com.apple.appstored.StreamingZipStreamConsumer", v8);
      v10 = a1[1];
      a1[1] = v9;

      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a2);
      [a1[3] setDelegate:a1];
      [a1[3] open];
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = [a1[3] streamStatus];
        *buf = 134217984;
        v16 = v13;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "(SZStreamConsumer) Opened, upstream status %lu", buf, 0xCu);
      }
    }
  }

  return a1;
}

void sub_1002DD61C(void *a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    Property = objc_getProperty(a1, v3, 32, 1);
    if (Property)
    {
      Property[2](Property, v5);
    }
  }
}

id sub_1002DD688(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "(SZStreamConsumer) Finishing extractor stream", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002DD754;
  v6[3] = &unk_10051B5C0;
  v6[4] = v3;
  return [v4 finishStreamWithCompletionBlock:v6];
}

void sub_1002DD754(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "(SZStreamConsumer) Extractor stream finished, error = %@", &v7, 0xCu);
  }

  [*(*(a1 + 32) + 24) close];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;
}

void sub_1002DD830(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v28 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "(SZStreamConsumer) Reading available data", v28, 2u);
  }

  *v28 = 0;
  v29 = v28;
  v30 = 0x3032000000;
  v31 = sub_1002DDC0C;
  v32 = sub_1002DDC1C;
  v33 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = 0;
  *&v5 = 138543362;
  v23 = v5;
  while ([*(*(a1 + 32) + 24) hasBytesAvailable])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [[NSMutableData alloc] initWithLength:0x100000];
    v8 = *(*(a1 + 32) + 24);
    v9 = v7;
    v10 = [v7 mutableBytes];
    v11 = [v7 length];
    v12 = (v29 + 40);
    obj = *(v29 + 5);
    v13 = [v8 readBytes:v10 length:v11 error:&obj];
    objc_storeStrong(v12, obj);
    if (v13 < 1)
    {
      if (v13 < 0)
      {
        if (!*(v29 + 5))
        {
          v19 = ASDErrorWithDescription();
          v20 = *(v29 + 5);
          *(v29 + 5) = v19;
        }

        v21 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(v29 + 5);
          *buf = v23;
          v35 = v22;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "(SZStreamConsumer) Error occurred upstream: %{public}@", buf, 0xCu);
        }

        sub_1002DD61C(*(a1 + 32), *(v29 + 5));
        v17 = 0;
        goto LABEL_16;
      }

      if (++v4 != 3)
      {
        v17 = 1;
        goto LABEL_16;
      }

      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "(SZStreamConsumer) Looped 3 times but no more data was available", buf, 2u);
      }

      v17 = 0;
      v4 = 3;
    }

    else
    {
      [v7 setLength:v13];
      v14 = *(*(a1 + 32) + 16);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1002DDC24;
      v24[3] = &unk_100521D18;
      v26 = v28;
      v15 = v3;
      v25 = v15;
      [v14 supplyBytes:v7 withCompletionBlock:v24];
      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
      v16 = *(v29 + 5);
      if (v16)
      {
        sub_1002DD61C(*(a1 + 32), v16);
        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      v18 = v25;
    }

LABEL_16:
    objc_autoreleasePoolPop(v6);
    if ((v17 & 1) == 0)
    {
      break;
    }
  }

  _Block_object_dispose(v28, 8);
}

void sub_1002DDBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DDC0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002DDC24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "(SZStreamConsumer) Bytes supplied, error = %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

id *sub_1002DDD64(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = IAPInfoDAAPRequestEncoder;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

id sub_1002DE264()
{
  objc_opt_self();
  if (qword_1005AAB48 != -1)
  {
    dispatch_once(&qword_1005AAB48, &stru_100521D38);
  }

  v0 = qword_1005AAB50;

  return v0;
}

void sub_1002DE2BC(id a1)
{
  v1 = objc_alloc_init(Migrator);
  v2 = qword_1005AAB50;
  qword_1005AAB50 = v1;
}

void sub_1002DE3F4(uint64_t a1)
{
  v2 = sub_1002DE6F0();
  v3 = ASDLogHandleForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (!v2)
  {
    if (v4)
    {
      v8 = sub_1002546FC(*(*(a1 + 32) + 8));
      v9 = [v8 componentsJoinedByString:{@", "}];
      *buf = 138543362;
      v20[0] = v9;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Queuing up previously unfinished migrations: [%{public}@]", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = v10[1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1002DE768;
    v17[3] = &unk_100521D60;
    v18 = v10;
    sub_1002545E8(v11, v17);
    sub_1002DE938(*(a1 + 32));
    v6 = v18;
    goto LABEL_16;
  }

  if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Performing initial migration", buf, 2u);
  }

  sub_10025441C(*(*(a1 + 32) + 8));
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = sub_100006B78();
    if (sub_10023D5E0(v6) && sub_10023CFD0(v6))
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Bootstrap - Proceeding to migration", buf, 2u);
      }

      sub_1002DECE0(v5, 1uLL);
    }

    else
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sub_10023D5E0(v6);
        v14 = sub_10023CFD0(v6);
        *buf = 67109376;
        LODWORD(v20[0]) = v13;
        WORD2(v20[0]) = 1024;
        *(v20 + 6) = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bootstrap -  Creating observer to migrate when os setup is complete: %d migrator complete: %d", buf, 0xEu);
      }

      v15 = +[NSNotificationCenter defaultCenter];
      v16 = sub_100006B78();
      [v15 addObserver:v5 selector:"_handleMonitorStateDidChangeNotification:" name:@"DeviceStateDidChangeNotification" object:v16];
    }

LABEL_16:
  }
}

uint64_t sub_1002DE6F0()
{
  objc_opt_self();
  v0 = +[AMSDevice buildVersion];
  v1 = sub_1003D684C();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isEqualToString:v0] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void sub_1002DE768(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v9 = v3;
    if (v3)
    {
      v4 = v3[1];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    if ([v5 isEqualToString:@"AutomaticUpdates"])
    {
      v6 = off_1005063F0;
    }

    else if ([v5 isEqualToString:@"Miscellaneous"])
    {
      v6 = off_100506400;
    }

    else if ([v5 isEqualToString:@"Arcade"])
    {
      v6 = off_1005063E8;
    }

    else if ([v5 isEqualToString:@"DemotedApplications"])
    {
      v6 = off_100506410;
    }

    else if ([v5 isEqualToString:@"UpdateHistory"])
    {
      v6 = off_100506420;
    }

    else if ([v5 isEqualToString:@"ODR"])
    {
      v6 = off_100506408;
    }

    else if ([v5 isEqualToString:@"ValidateAppleIDs"])
    {
      v6 = off_100506428;
    }

    else if ([v5 isEqualToString:@"TestFlightFeedback"])
    {
      v6 = off_100506418;
    }

    else if ([v5 isEqualToString:@"Galette"])
    {
      v6 = off_1005063F8;
    }

    else
    {
      if (![v5 isEqualToString:@"DistributorID"])
      {
LABEL_26:

        v3 = v9;
        goto LABEL_27;
      }

      v6 = &off_100506488;
    }

    v7 = [objc_alloc(*v6) initWithConfiguration:v9];
    if (v7)
    {
      v8 = v7;
      sub_1002DFB28(v2, v7, 0);
    }

    goto LABEL_26;
  }

LABEL_27:
}

void sub_1002DE938(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100227468();
    v3 = [v2 isConnected];

    if (v3)
    {

      sub_1002DF354(a1);
    }

    else
    {
      v4 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Waiting for network before running migrations", v7, 2u);
      }

      v5 = +[NSNotificationCenter defaultCenter];
      v6 = sub_100227468();
      [v5 addObserver:a1 selector:"_handleNetworkStateDidChangeNotification:" name:@"NetworkStateDidChangeNotification" object:v6];
    }
  }
}

BOOL sub_1002DEAF8()
{
  objc_opt_self();
  v0 = objc_alloc_init(MigratorConfigurationStore);
  if (sub_1002DE6F0())
  {
    v1 = 1;
  }

  else if (v0)
  {
    v1 = [(NSMutableDictionary *)v0->_configuration count]!= 0;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

BOOL sub_1002DEB64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002DEC1C;
    block[3] = &unk_10051F4B0;
    v11 = a1;
    v12 = a2;
    v10 = v5;
    dispatch_async(v7, block);
  }

  return a1 != 0;
}

void sub_1002DEC1C(void *a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[6];
    v5 = 138543618;
    v6 = v3;
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Performing migration for clientID: %{public}@ migrationType: %ld", &v5, 0x16u);
  }

  sub_1002DECE0(a1[5], a1[6]);
}

void sub_1002DECE0(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v25 = sub_1003D684C();
  v26 = +[AMSDevice buildVersion];
  sub_1003D69E8(AppDefaultsManager, v26);
  sub_1003D68C4();
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v25;
    *&buf[12] = 2114;
    *&buf[14] = v26;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migrating from build: %{public}@ to build: %{public}@", buf, 0x16u);
  }

  ASDDebugLog();
  if (a2 != 1)
  {
    v10 = (a2 >> 1) & 1;
    v9 = (a2 >> 3) & 1;
    if ((a2 & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_18:
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Migrate from different device", buf, 2u);
    }

    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v5 = off_1005AAB58;
  v30 = off_1005AAB58;
  if (!off_1005AAB58)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1002DFC9C;
    v32 = &unk_10051E318;
    v33 = &v27;
    sub_1002DFC9C(buf);
    v5 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v5)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v8 = v5(v6, v7);
  LODWORD(v9) = (v8 >> 3) & 1;
  LODWORD(v10) = (v8 >> 1) & 1;
  if ((v8 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Restore from backup migration", buf, 2u);
  }

  if (v9)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v10)
  {
LABEL_13:
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Upgrade Migration", buf, 2u);
    }

    v13 = 1;
    goto LABEL_22;
  }

LABEL_21:
  v13 = 0;
LABEL_22:
  v15 = objc_alloc_init(MigratorMiscellaneousTask);
  sub_1002DFB28(a1, v15, 1);
  v16 = sub_1002E6908([MigratorPromotionTask alloc], &__NSArray0__struct, &__NSDictionary0__struct);
  sub_1002DFB28(a1, v16, 1);
  if (v13)
  {
    v17 = objc_alloc_init(MigratorAutoUpdateTask);
    sub_1002DFB28(a1, v17, 1);
    v18 = objc_alloc_init(MigratorUpdateHistoryTask);
    sub_1002DFB28(a1, v18, 1);
    v19 = objc_opt_new();
    sub_1002DFB28(a1, v19, 1);
    v20 = objc_alloc_init(MigratorODRTask);
    sub_1002DFB28(a1, v20, 1);
    v21 = objc_opt_new();
    sub_1002DFB28(a1, v21, 1);
    v22 = objc_opt_new();
    sub_1002DFB28(a1, v22, 1);
    v23 = objc_alloc_init(_TtC9appstored25MigratorDistributorIDTask);
    sub_1002DFB28(a1, v23, 1);
  }

  v24 = objc_alloc_init(MigratorArcadeTask);
  sub_1002DFB28(a1, v24, 1);
  sub_100254430(*(a1 + 8), 1);
  sub_1002DE938(a1);
}

void sub_1002DF178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002DF20C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_100227468();
    v9[0] = 67109120;
    v9[1] = [v3 isConnected];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Network changed. Connected: %d", v9, 8u);
  }

  v4 = sub_100227468();
  v5 = [v4 isConnected];

  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = *(a1 + 32);
    v8 = sub_100227468();
    [v6 removeObserver:v7 name:@"NetworkStateDidChangeNotification" object:v8];

    sub_1002DF354(*(a1 + 32));
  }
}

void sub_1002DF354(uint64_t a1)
{
  if (a1)
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempting to load bag", buf, 2u);
    }

    v3 = +[BagService appstoredService];
    v4 = *(a1 + 16);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1002DF728;
    v5[3] = &unk_100521D88;
    v5[4] = a1;
    [v3 upToDateBagOnQueue:v4 completionHandler:v5];
  }
}

void sub_1002DF4AC(uint64_t a1)
{
  v2 = sub_100006B78();
  if (sub_10023D5E0(v2) && sub_10023CFD0(v2) && sub_1002DE6F0())
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = *(a1 + 32);
    v5 = sub_100006B78();
    [v3 removeObserver:v4 name:@"DeviceStateDidChangeNotification" object:v5];

    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device state changed and ready to migrate.", &v12, 2u);
    }

    sub_1002DECE0(*(a1 + 32), 1uLL);
  }

  else
  {
    if (sub_1002DE6F0())
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109376;
        LODWORD(v13[0]) = sub_10023D5E0(v2);
        WORD2(v13[0]) = 1024;
        *(v13 + 6) = sub_10023CFD0(v2);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device state changed setup not ready for migrate. Setup complete: %d migrator complete: %d", &v12, 0xEu);
      }
    }

    else
    {
      v8 = +[NSNotificationCenter defaultCenter];
      v9 = *(a1 + 32);
      v10 = sub_100006B78();
      [v8 removeObserver:v9 name:@"DeviceStateDidChangeNotification" object:v10];

      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = +[AMSDevice buildVersion];
        v12 = 138543362;
        v13[0] = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device state changed setup fired after we have already performed a migration for build: %{public}@", &v12, 0xCu);
      }
    }
  }
}

void sub_1002DF728(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v48 = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Attempting migration anyway following bag load error: %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting migrations following bag load", buf, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v31 = v4;
    v8 = objc_alloc_init(TaskQueue);
    p_isa = &v8->super.isa;
    if (v8)
    {
      [(NSOperationQueue *)v8->_operationQueue setName:@"com.apple.appstored.MigrateQueue"];
    }

    v10 = [*(v7 + 24) copy];
    [*(v7 + 24) removeAllObjects];
    v11 = objc_alloc_init(NSMutableArray);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v36 objects:buf count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v36 + 1) + 8 * i) migratorType];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v36 objects:buf count:16];
      }

      while (v14);
    }

    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v11 count];
      v20 = [v11 componentsJoinedByString:{@", "}];
      *v43 = 134218242;
      v44 = v19;
      v45 = 2114;
      v46 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Performing %ld migration(s): [%{public}@]", v43, 0x16u);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = v12;
    v22 = [v21 countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v32 + 1) + 8 * j);
          v27 = [v26 migratorType];
          sub_100254868(*(v7 + 8), v27);
          v42 = v26;
          v28 = [NSArray arrayWithObjects:&v42 count:1];
          if (p_isa)
          {
            [p_isa[1] addOperations:v28 waitUntilFinished:1];
          }

          v29 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *v40 = 138543362;
            v41 = v27;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Migration complete for: %{public}@", v40, 0xCu);
          }

          v30 = *(v7 + 8);
          if (v30)
          {
            [v30[1] removeObjectForKey:v27];
            sub_100254430(v30, 1);
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v43 count:16];
      }

      while (v23);
    }

    v4 = v31;
  }
}

void sub_1002DFB28(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 8);
    v8 = [v5 copyConfiguration];
    sub_1002548DC(v7, v8);
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    v10 = objc_alloc_init(NSMutableArray);
    v11 = *(a1 + 24);
    *(a1 + 24) = v10;

    v9 = *(a1 + 24);
  }

  [v9 addObject:v6];
  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v6 migratorType];
    v14 = 138543362;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Queuing migration task: %{public}@", &v14, 0xCu);
  }
}

void *sub_1002DFC9C(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1005AAB60)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1002DFDDC;
    v5[4] = &unk_10051BD00;
    v5[5] = v5;
    v6 = off_100521DA8;
    v7 = 0;
    qword_1005AAB60 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1005AAB60;
    if (qword_1005AAB60)
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

  v2 = qword_1005AAB60;
LABEL_5:
  result = dlsym(v2, "DMGetUserDataDisposition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1005AAB58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1002DFDDC()
{
  result = _sl_dlopen();
  qword_1005AAB60 = result;
  return result;
}

void sub_1002DFE50(void *a1)
{
  if (a1)
  {
    if ([a1 isRemoteInstall])
    {
      v2 = [a1 device];
      v3 = sub_1002D89B0(v2);
    }

    else
    {
      v2 = sub_1003BBF50();
      v3 = [v2 copyThinningHeadersForPlatform:{objc_msgSend(a1, "expectedSoftwarePlatform")}];
    }

    v8 = v3;

    v4 = v8;
    if (v8)
    {
      v5 = [a1 additionalHeaders];
      v6 = [v5 mutableCopy];

      if (v6)
      {
        [v6 addEntriesFromDictionary:v8];
        v7 = [v6 copy];
        [a1 setAdditionalHeaders:v7];
      }

      else
      {
        [a1 setAdditionalHeaders:v8];
      }

      v4 = v8;
    }
  }
}

void sub_1002DFF54(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3 && ([v3[15] isPlaceholder] & 1) == 0)
    {
      v14 = sub_1003D2CD8(v4);
      if (!v14)
      {
LABEL_16:
        v14 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        v15 = [a1 logKey];
        *buf = 138412290;
        v19 = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@] Cannot determine vendor ID for purchase", buf, 0xCu);
LABEL_13:

LABEL_17:
        goto LABEL_18;
      }
    }

    else
    {
      v5 = [a1 vendorName];

      if (!v5)
      {
        goto LABEL_16;
      }

      v6 = [a1 bundleID];
      if (!v6)
      {
        v7 = [a1 vendorName];
        v8 = +[NSUUID UUID];
        v9 = [v8 UUIDString];
        v6 = [NSString stringWithFormat:@"xyz.%@.%@", v7, v9];

        v10 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v16 = [a1 logKey];
          v17 = [a1 vendorName];
          *buf = 138412802;
          v19 = v16;
          v20 = 2114;
          v21 = v6;
          v22 = 2114;
          v23 = v17;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%@] Creating temporary bundle identifier %{public}@ for vendor %{public}@", buf, 0x20u);
        }

        [a1 setTemporaryBundleID:v6];
      }

      v11 = +[LSApplicationWorkspace defaultWorkspace];
      v12 = [a1 vendorName];
      v13 = [v11 createDeviceIdentifierWithVendorName:v12 bundleIdentifier:v6];

      if (v13)
      {
        v14 = [v13 UUIDString];
        [a1 setGeneratedVendorID:1];
      }

      else
      {
        v14 = 0;
      }

      if (!v14)
      {
        goto LABEL_16;
      }
    }

    v15 = [a1 buyParams];
    [v15 setParameter:v14 forKey:AMSBuyParamPropertyVendorID];
    goto LABEL_13;
  }

LABEL_18:
}

id sub_1002E0230(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_self();
  v12 = objc_opt_new();
  v14 = v12;
  if (v12)
  {
    objc_setProperty_atomic_copy(v12, v13, v10, 248);
    v15 = sub_10039A6A0(v10);
    objc_setProperty_atomic_copy(v14, v16, v15, 104);
  }

  else
  {
    v15 = sub_10039A6A0(v10);
  }

  v18 = sub_100269134(v8);
  if (v14)
  {
    objc_setProperty_atomic_copy(v14, v17, v18, 112);
  }

  v19 = sub_1001FD93C(v8);
  v21 = sub_1002403E8(v19);
  if (v14)
  {
    objc_setProperty_atomic_copy(v14, v20, v21, 120);
  }

  v22 = sub_100280C74(v9);
  v24 = sub_1001FE63C(v8, v22);
  if (v14)
  {
    objc_setProperty_atomic_copy(v14, v23, v24, 136);
  }

  v25 = sub_1002692B0(v8);
  v26 = [v25 longLongValue];
  if (v14)
  {
    *(v14 + 18) = v26;
  }

  v27 = sub_1002691DC(v8);
  [v27 doubleValue];
  if (v14)
  {
    *(v14 + 22) = v28;
  }

  v29 = sub_100269550(v8);
  v30 = [v29 longLongValue];
  if (v14)
  {
    *(v14 + 19) = v30;
  }

  v31 = sub_100269B0C(v8);
  v33 = v31;
  if (v14)
  {
    objc_setProperty_atomic_copy(v14, v32, v31, 160);

    if (v9)
    {
      v34 = sub_10023E4DC(v9, @"is_store_based");
    }

    else
    {
      v34 = 0;
    }

    *(v14 + 83) = v34;
  }

  else
  {

    if (v9)
    {
      sub_10023E4DC(v9, @"is_store_based");
    }
  }

  v35 = sub_100269358(v8);
  v36 = [v35 BOOLValue];
  if (v14)
  {
    *(v14 + 84) = v36;
  }

  v37 = sub_10039A6A0(v10);
  v38 = sub_100269134(v8);
  v40 = [NSString stringWithFormat:@"%@-%@", v37, v38];
  if (v14)
  {
    objc_setProperty_atomic(v14, v39, v40, 240);
  }

  v41 = sub_100280BDC(v9);
  if (v14)
  {
    *(v14 + 85) = v41;
    *(v14 + 22) = 9;
    Property = objc_getProperty(v14, v42, 240, 1);
  }

  else
  {
    Property = 0;
  }

  v44 = [NSString stringWithFormat:@"com.apple.appstored.odrAssetDownload.%@", Property];
  v46 = [KeepAlive keepAliveWithName:v44];
  if (v14)
  {
    objc_setProperty_atomic(v14, v45, v46, 264);
  }

  v47 = [_TtC9appstored6LogKey alloc];
  if (v14)
  {
    v48 = *(v14 + 22);
  }

  else
  {
    v48 = 0.0;
  }

  objc_opt_self();
  v49 = @"ODR";
  if (v48 > 0.0)
  {
    v49 = @"ODP";
  }

  if (v48 == 1.0)
  {
    v49 = @"ODI";
  }

  v50 = v49;
  v51 = [v11 description];

  if (v14)
  {
    v53 = [(LogKey *)v47 initWithCode:v50 base:v51 ID:objc_getProperty(v14, v52, 112, 1)];
    objc_setProperty_atomic(v14, v54, v53, 184);

    if (*(v14 + 84))
    {
      v55 = sub_100269588(v8);
      objc_setProperty_atomic_copy(v14, v56, v55, 216);
      goto LABEL_44;
    }
  }

  else
  {
  }

  v55 = sub_10023E644(v8, @"source_url");
  v57 = [NSURL fileURLWithPath:v55];
  v59 = v57;
  if (!v14)
  {

    goto LABEL_56;
  }

  objc_setProperty_atomic_copy(v14, v58, v57, 216);

LABEL_44:
  if ([*(v14 + 27) isFileURL])
  {
    v60 = *(v14 + 27);
    v82 = 0;
    v61 = [v60 checkResourceIsReachableAndReturnError:&v82];
    v62 = v82;
    if ((v61 & 1) == 0)
    {
      v80 = v62;
      v81 = 0;
      v63 = *(v14 + 14);
      v64 = sub_10039A4BC(*(v14 + 31), &v81);
      v65 = v64;
      if (v64)
      {
        v66 = sub_100280EB0(v64, v63);
        v67 = *(v14 + 31);
        v68 = sub_100269588(v66);
        v69 = [v68 absoluteString];
        v70 = sub_10039A250(v67, v69, &v81);
      }

      else
      {
        v70 = 0;
      }

      v71 = v81;
      v72 = *(v14 + 27);
      *(v14 + 27) = v70;

      v73 = *(v14 + 27);
      v74 = ASDLogHandleForCategory();
      v75 = v74;
      if (v73)
      {
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v76 = *(v14 + 23);
          v77 = *(v14 + 27);
          *buf = 138412546;
          v84 = v76;
          v85 = 2114;
          v86 = v77;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "[%@] Resource was located at URL: %{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v79 = *(v14 + 23);
        *buf = 138412546;
        v84 = v79;
        v85 = 2114;
        v86 = v71;
        _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "[%@] Resource was not found with error: %{public}@", buf, 0x16u);
      }

      v62 = v80;
    }
  }

LABEL_56:

  return v14;
}

void sub_1002E0A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002E0A38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v3, 184, 1);
    }

    else
    {
      Property = 0;
    }

    v7 = 138412290;
    v8 = Property;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@] Received cancellation request.", &v7, 0xCu);
  }

  if (WeakRetained)
  {
    v6 = objc_getProperty(WeakRetained, v5, 96, 1);
  }

  else
  {
    v6 = 0;
  }

  [v6 cancel];
}

void sub_1002E0B28(uint64_t a1, void *a2)
{
  v7 = a2;
  if (a1)
  {
    [*(a1 + 40) lock];
    if (*(a1 + 8) == 1)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        sub_1002E0BFC(v7, v3);
      }

      else
      {
        if (v7)
        {
          v7[24] = *(a1 + 192);
        }

        sub_1002E0D48(v7);
      }
    }

    v4 = *(a1 + 16);
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = *(a1 + 16);
      *(a1 + 16) = v5;

      v4 = *(a1 + 16);
    }

    [v4 addObject:v7];
    if (v7 && (*(v7 + 82) & 1) != 0)
    {
      ++*(a1 + 48);
    }

    [*(a1 + 40) unlock];
  }
}

void sub_1002E0BFC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    [*(a1 + 40) lock];
    *(a1 + 8) = 1;
    objc_storeStrong((a1 + 24), a2);
    sub_1002E1178(a1, v4);
    [*(a1 + 256) finishWithError:v4];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(a1 + 16);
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          sub_1002E0BFC(*(*(&v10 + 1) + 8 * v9), v4);
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [*(a1 + 40) unlock];
  }
}

void sub_1002E0D48(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 40) lock];
    *(a1 + 8) = 1;
    v2 = objc_opt_new();
    v3 = [NSURL fileURLWithPath:*(a1 + 136) isDirectory:1];
    v5 = v3;
    if (v2)
    {
      objc_setProperty_atomic_copy(v2, v4, v3, 8);

      v6 = (a1 + 192);
      v2[2] = *(a1 + 192);
    }

    else
    {

      v6 = (a1 + 192);
    }

    sub_1002E1178(a1, 0);
    [*(a1 + 256) finishWithResult:v2];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = *(a1 + 16);
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (v12)
          {
            *(v12 + 192) = *v6;
          }

          sub_1002E0D48(v12);
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [*(a1 + 40) unlock];
  }
}

id sub_1002E0EE0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  [*(a1 + 40) lock];
  if (!*(a1 + 32))
  {
    if (*(a1 + 232) == 1)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x3032000000;
      v12 = sub_1002E1084;
      v13 = sub_1002E1094;
      v14 = 0;
      v4 = sub_1003C27BC();
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1002E109C;
      v8[3] = &unk_100521DC8;
      v8[4] = a1;
      v8[5] = &v9;
      [v4 readUsingSession:v8];

      v5 = (sub_1003B67D4(v10[5]) & 0xFFFFFFFFFFFFFFFDLL) == 1;
      _Block_object_dispose(&v9, 8);
    }

    else
    {
      v5 = 1;
    }

    v6 = [NSNumber numberWithBool:v5];
    v7 = *(a1 + 32);
    *(a1 + 32) = v6;

    [*(a1 + 40) unlock];
    return v5;
  }

  [*(a1 + 40) unlock];
  v2 = *(a1 + 32);

  return [v2 BOOLValue];
}

void sub_1002E106C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E1084(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002E109C(uint64_t a1, id a2)
{
  v6 = sub_1003E3D74(a2, *(*(a1 + 32) + 104));
  v3 = sub_100294554(v6);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id *sub_1002E1110(id *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    [result[5] lock];
    v4 = [NSNumber numberWithBool:a2];
    v5 = v3[4];
    v3[4] = v4;

    v6 = v3[5];

    return [v6 unlock];
  }

  return result;
}

void sub_1002E1178(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && *(a1 + 56))
  {
    v4 = ASDLogHandleForCategory();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 184);
        v8 = 138412546;
        v9 = v6;
        v10 = 2114;
        v11 = v3;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@]: Completing coordinator promise: %{public}@", &v8, 0x16u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 184);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@]: Completing coordinator promise", &v8, 0xCu);
    }

    [*(a1 + 56) setComplete:1];
  }
}

void *sub_1002E12A8(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_10029BD7C();
    v1 = [v2 stringByAppendingPathComponent:v1[14]];
  }

  return v1;
}

id sub_1002E1308(uint64_t a1)
{
  if (a1)
  {
    v2 = [SZExtractor alloc];
    v3 = sub_1002E12A8(a1);
    v4 = objc_opt_new();
    v5 = *(a1 + 160);
    if (v5)
    {
      v6 = [v5 objectForKeyedSubscript:@"hash_type"];
      if (v6)
      {
        v7 = [*(a1 + 160) objectForKeyedSubscript:@"bytes_to_hash"];
        v8 = [v7 integerValue];

        if (v8 >= 1)
        {
          v9 = [*(a1 + 160) objectForKeyedSubscript:@"hash_array"];
          if (v9)
          {
            v10 = [NSPropertyListSerialization propertyListWithData:v9 options:0 format:0 error:0];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 count])
            {
              [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:SZExtractorOptionsDenyInvalidSymlinks];
              [v4 setObject:v10 forKeyedSubscript:SZExtractorOptionsHashesArray];
              v11 = [NSNumber numberWithInteger:v8];
              [v4 setObject:v11 forKeyedSubscript:SZExtractorOptionsHashedChunkSize];

              v12 = [v6 integerValue];
              v13 = &SZExtractorHashTypeMD5;
              if (v12)
              {
                v13 = &SZExtractorHashTypeSHA1;
              }

              [v4 setObject:*v13 forKeyedSubscript:SZExtractorOptionsHashType];
            }
          }
        }
      }
    }

    v14 = [v4 copy];

    v15 = [v2 initWithPath:v3 options:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void *sub_1002E151C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[7];
    if (!v3)
    {
      v4 = [[IXPromisedOutOfBandTransfer alloc] initWithName:a1[14] client:1 diskSpaceNeeded:a1[19]];
      v5 = v2[7];
      v2[7] = v4;

      v3 = v2[7];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

id sub_1002E1588(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = v2;
    if (v2)
    {
      *(v2 + 24) = *(a1 + 88);
      *(v2 + 112) = *(a1 + 152);
    }

    v4 = +[NSUUID UUID];
    v6 = v4;
    if (v3)
    {
      objc_setProperty_atomic(v3, v5, v4, 120);

      *(v3 + 14) = *(a1 + 85);
    }

    else
    {
    }

    v7 = [NSNumber numberWithDouble:*(a1 + 176)];
    v9 = v7;
    if (v3)
    {
      objc_setProperty_atomic(v3, v8, v7, 136);

      objc_setProperty_atomic(v3, v10, *(a1 + 184), 152);
      v12 = (a1 + 80);
      *(v3 + 80) = *(a1 + 80);
      *(v3 + 64) = 2;
      v13 = 104;
      if (*(a1 + 232) == 1)
      {
        v13 = 168;
      }

      objc_setProperty_atomic(v3, v11, *(a1 + v13), 168);
      *(v3 + 9) = sub_1002E0EE0(a1);
      if (*(a1 + 83) == 1)
      {
        *(v3 + 192) = 7;
      }
    }

    else
    {

      v12 = (a1 + 80);
      sub_1002E0EE0(a1);
    }

    if (*v12)
    {
      v14 = 400;
    }

    else
    {
      v14 = 300;
    }

    v16 = [NSNumber numberWithLongLong:v14];
    if (v3)
    {
      objc_setProperty_atomic(v3, v15, v16, 208);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1002E1774(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 attributesOfItemAtPath:*(a1 + 136) error:0];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:NSFileType];
      v8 = [v7 isEqualToString:NSFileTypeSymbolicLink];
      v9 = v8;
      if (v8)
      {
        v10 = [v4 removeItemAtPath:*(a1 + 136) error:0];
        v11 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v25 = *(a1 + 184);
          *buf = 138412546;
          v32 = v25;
          v33 = 1024;
          LODWORD(v34) = v10;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@] Cleaning up symlink (success %d)....", buf, 0x12u);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    if ([v4 fileExistsAtPath:*(a1 + 136)])
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(a1 + 184);
        v24 = *(a1 + 136);
        *buf = 138412546;
        v32 = v23;
        v33 = 2114;
        v34 = v24;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%@] Simulated download path already existed. success(YES): %{public}@", buf, 0x16u);
      }

      v3[2](v3, 0);
    }

    else
    {
      v13 = sub_1002E1D14(*(a1 + 216));
      v14 = +[NSUserDefaults standardUserDefaults];
      v15 = [v14 integerForKey:@"ODRSimulatedDownloadsBandwidthKey"];

      *(a1 + 64) = 0;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1002E1AF4;
      v26[3] = &unk_100521DF0;
      v26[4] = a1;
      v27 = v4;
      v29 = 0;
      v30 = v9;
      v28 = v3;
      v16 = v26;
      v17 = dispatch_get_global_queue(21, 0);
      v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v17);
      if (v18)
      {
        v19 = v15 << 20;
        if (v15 < 1)
        {
          v19 = 20971520;
        }

        v20 = fmin(fmax((v13 / v19), 5.0), 10.0) / 100.0 * 1000000000.0;
        v21 = dispatch_time(0, v20);
        dispatch_source_set_timer(v18, v21, v20, 0x5F5E100uLL);
        dispatch_source_set_event_handler(v18, v16);
        dispatch_resume(v18);
      }

      v22 = *(a1 + 72);
      *(a1 + 72) = v18;
    }
  }
}

void sub_1002E1AF4(uint64_t a1)
{
  [*(*(a1 + 32) + 200) setCompletedUnitCount:(++*(*(a1 + 32) + 64) / 100.0 * 1000.0)];
  v2 = *(a1 + 32);
  if (*(v2 + 64) >= 0x64uLL)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(v2 + 72);
      *(v2 + 72) = 0;

      v2 = *(a1 + 32);
    }

    v5 = *(a1 + 40);
    v6 = [*(v2 + 216) path];
    v7 = *(*(a1 + 32) + 136);
    v16 = 0;
    v8 = [v5 copyItemAtPath:v6 toPath:v7 error:&v16];
    v9 = v16;

    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(*(a1 + 32) + 184);
      v13 = *(a1 + 56);
      v14 = *(a1 + 57);
      *buf = 138413058;
      v18 = v12;
      v19 = 1024;
      *v20 = v8;
      *&v20[4] = 1024;
      *&v20[6] = v13;
      v21 = 1024;
      v22 = v14;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%@] Simulated download success(%{BOOL}d): existed(%{BOOL}d) was symlink(%{BOOL}d)", buf, 0x1Eu);
    }

    if ((v8 & 1) == 0)
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = *(*(a1 + 32) + 184);
        *buf = 138412546;
        v18 = v15;
        v19 = 2114;
        *v20 = v9;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@] simulated download failed with error %{public}@", buf, 0x16u);
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

char *sub_1002E1D14(void *a1)
{
  v1 = a1;
  v22 = 0;
  v2 = +[NSFileManager defaultManager];
  v3 = [v1 path];
  v4 = [v2 fileExistsAtPath:v3 isDirectory:&v22];

  if (v4)
  {
    if (v22 == 1)
    {
      v5 = [NSArray arrayWithObjects:NSURLLocalizedNameKey, NSURLLocalizedTypeDescriptionKey, 0];
      v6 = +[NSFileManager defaultManager];
      v21 = 0;
      v7 = [v6 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:v5 options:4 error:&v21];
      v8 = v21;

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v18;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v12 += sub_1002E1D14(*(*(&v17 + 1) + 8 * i));
          }

          v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      v15 = v9;
    }

    else
    {
      v5 = +[NSFileManager defaultManager];
      v8 = [v1 path];
      v15 = [v5 attributesOfItemAtPath:v8 error:0];
      v9 = [v15 objectForKey:NSFileSize];
      v12 = [v9 unsignedIntegerValue];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_1002E20A4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1002E2108([StoreAsset alloc], v2, 1);

  return v3;
}

id sub_1002E2108(id a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_23;
  }

  v60.receiver = a1;
  v60.super_class = StoreAsset;
  v6 = objc_msgSendSuper2(&v60, "init");
  a1 = v6;
  if (!v6)
  {
    goto LABEL_23;
  }

  v6[2] = a3;
  v7 = v5;
  v8 = sub_1002380D8(v7, @"URL");
  v9 = *(a1 + 3);
  *(a1 + 3) = v8;

  *(a1 + 15) = 1;
  v10 = sub_100237D58(v7, @"asset-info");
  v11 = sub_10023790C(v10, @"file-size");
  v12 = *(a1 + 5);
  *(a1 + 5) = v11;

  v13 = sub_10023790C(v7, @"initialODRSize");
  v14 = *(a1 + 12);
  *(a1 + 12) = v13;

  v15 = sub_1002380D8(v7, @"algorithm");
  v16 = *(a1 + 7);
  *(a1 + 7) = v15;

  v17 = sub_10023790C(v7, @"uncompressedSize");
  v18 = *(a1 + 9);
  *(a1 + 9) = v17;

  v19 = sub_100237D58(v7, @"chunks");
  v20 = v19;
  if (v19)
  {
    v21 = sub_100237778(v19, @"clearHashes");
    v22 = sub_100396CC8(v21);
    v23 = [v22 allObjects];
    v24 = *(a1 + 6);
    *(a1 + 6) = v23;

    v25 = sub_100237778(v20, @"hashes");
    v26 = sub_100396CC8(v25);
    v27 = [v26 allObjects];
    v28 = *(a1 + 10);
    *(a1 + 10) = v27;

    v29 = sub_10023790C(v20, @"chunkSize");
    v30 = *(a1 + 14);
    *(a1 + 14) = v29;

    v31 = sub_1002380D8(v20, @"hashType");
    v32 = [v31 lowercaseString];

    if (v32)
    {
      if ([v32 isEqualToString:@"sha256"])
      {
        v33 = &off_100547D70;
LABEL_9:
        v34 = *(a1 + 11);
        *(a1 + 11) = v33;

        goto LABEL_10;
      }

      if ([v32 isEqualToString:@"sha1"])
      {
        v33 = &off_100547D88;
        goto LABEL_9;
      }
    }

LABEL_10:
    if (!*(a1 + 11))
    {
      *(a1 + 11) = &off_100547DA0;
    }
  }

  v35 = sub_1002380D8(v7, @"md5");
  v36 = *(a1 + 13);
  *(a1 + 13) = v35;

  v37 = sub_100237D58(v7, @"local-server-info");
  *(a1 + 8) = v37 != 0;

  if (v7)
  {
    v38 = sub_1002378BC(v7, @"isStreamable", 0);
  }

  else
  {
    v38 = 0;
  }

  *(a1 + 9) = v38;
  v39 = sub_100237778(v7, @"priorVariantIdentifiers");
  v40 = sub_100396CC8(v39);
  v41 = [v40 allObjects];
  v42 = *(a1 + 16);
  *(a1 + 16) = v41;

  v43 = sub_10023790C(v7, @"priorVersionExternalIdentifier");
  v44 = *(a1 + 17);
  *(a1 + 17) = v43;

  v45 = sub_100237778(v7, @"sinfs");
  if ([v45 count])
  {
    v46 = sub_1001C5944([StoreDRM alloc], v45);
    v47 = v46;
    if (v46)
    {
      v48 = sub_1001C5A34(v46, @"sinf");
      v49 = *(a1 + 18);
      *(a1 + 18) = v48;

      v50 = sub_1001C5A34(v47, @"dpInfo");
      v51 = *(a1 + 8);
      *(a1 + 8) = v50;
    }
  }

  else
  {
    v52 = sub_100237B38(v7, @"sinf");
    v47 = *(a1 + 18);
    *(a1 + 18) = v52;
  }

  v53 = sub_1002380D8(v7, @"variantId");
  v54 = *(a1 + 19);
  *(a1 + 19) = v53;

  if ([*(a1 + 19) length])
  {
    sub_100228F7C(VariantDescriptor, *(a1 + 19));
  }

  else
  {
    sub_100228FDC();
  }
  v55 = ;
  v56 = *(a1 + 20);
  *(a1 + 20) = v55;

  v57 = sub_100237D58(v7, @"backgroundAssetInfo");
  v58 = *(a1 + 4);
  *(a1 + 4) = v57;

LABEL_23:
  return a1;
}

void *sub_1002E257C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100237778(v2, @"deltaPackages");

  v4 = sub_100396BF0(v3);
  v5 = sub_1004024C4(v4, &stru_100521E10);

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  v7 = v6;

  return v6;
}

id sub_1002E261C(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = sub_1002E2108([StoreAsset alloc], v2, 3);

  return v3;
}

id sub_1002E2678(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  objc_opt_self();
  if (a3)
  {
    sub_100228FDC();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002E2788;
    v9 = v8[3] = &unk_100521E38;
    v5 = v9;
    v6 = sub_10036FBC8(v4, v8);
  }

  else
  {
    v6 = sub_10036FBC8(v4, &stru_100521E78);
    if (!v6)
    {
      v6 = [v4 firstObject];
    }
  }

  return v6;
}

uint64_t sub_1002E2788(uint64_t a1, id self)
{
  if (self)
  {
    Property = objc_getProperty(self, self, 160, 1);
  }

  else
  {
    Property = 0;
  }

  v4 = *(a1 + 32);

  return sub_10022994C(Property, v4);
}

BOOL sub_1002E27D8(id a1, StoreAsset *a2)
{
  v2 = 1;
  if (a2)
  {
    Property = objc_getProperty(a2, a2, 160, 1);
    if (Property)
    {
      v2 = Property[16] ^ 1;
    }
  }

  return v2 & 1;
}

id sub_1002E281C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a2;
  objc_opt_self();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002E2910;
  v13[3] = &unk_100521EA0;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = sub_10036FBC8(v8, v13);

  return v11;
}

uint64_t sub_1002E2910(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v3;
  if (a2)
  {
    if (([(__CFString *)v4 isEqualToNumber:*(a2 + 136)]& 1) != 0)
    {
      v6 = [(__CFString *)v5 length];
      v7 = *(a2 + 128);
      if (v6)
      {
        if (([v7 containsObject:v5] & 1) == 0)
        {
          v8 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v9 = [*(a2 + 128) componentsJoinedByString:{@", "}];
            v16 = 138543618;
            v17 = v9;
            v18 = 2114;
            v19 = v5;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[StoreAsset]: Rejecting delta - no applicable variants (%{public}@) for installed variant %{public}@", &v16, 0x16u);
          }

          goto LABEL_10;
        }

LABEL_14:
        v8 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a2 + 152);
          if (!v14)
          {
            v14 = @"Universal";
          }

          v16 = 138543618;
          v17 = v4;
          v18 = 2114;
          v19 = v14;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[StoreAsset]: Selected delta for version %{public}@ variant %{public}@", &v16, 0x16u);
        }

        a2 = 1;
        goto LABEL_19;
      }

      if (![v7 count])
      {
        goto LABEL_14;
      }

      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        v11 = "[StoreAsset]: Rejecting delta - installed app is universal";
        v12 = v8;
        v13 = 2;
        goto LABEL_9;
      }
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = *(a2 + 136);
        v16 = 138543618;
        v17 = v10;
        v18 = 2114;
        v19 = v4;
        v11 = "[StoreAsset]: Rejecting delta - version %{public}@ does not match installed version %{public}@";
        v12 = v8;
        v13 = 22;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, &v16, v13);
      }
    }

LABEL_10:
    a2 = 0;
LABEL_19:
  }

  return a2;
}

char *sub_1002E2EB8(char *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    Property = sub_1002820B4(v4);
    v8 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 32, 1);
    }

    v9 = Property;
    v13.receiver = a1;
    v13.super_class = PerformPurchaseTask;
    a1 = objc_msgSendSuper2(&v13, "initWithLogKey:", v9);

    if (a1)
    {
      objc_storeStrong((a1 + 42), a2);
      v10 = +[NSMutableDictionary dictionary];
      v11 = *(a1 + 66);
      *(a1 + 66) = v10;
    }
  }

  return a1;
}

id sub_1002E2F9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 58);
    if (!v4)
    {
      v5 = +[NSMutableDictionary dictionary];
      v6 = *(a1 + 58);
      *(a1 + 58) = v5;

      v4 = *(a1 + 58);
    }

    v7 = [v3 uniqueIdentifier];
    v8 = [v4 objectForKeyedSubscript:v7];

    if (!v8)
    {
      v8 = objc_opt_new();
      v9 = *(a1 + 58);
      v10 = [v3 uniqueIdentifier];
      [v9 setObject:v8 forKeyedSubscript:v10];

      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v3 logUUID];
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] Created interactive presenter", &v14, 0xCu);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1002E353C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logUUID];
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Failed authentication request with error %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002E3650(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) logUUID];
    *buf = 138543362;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished authentication request", buf, 0xCu);
  }

  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 40) logKey];
      v12 = *(a1 + 48);
      *buf = 138412802;
      v22 = v11;
      v23 = 2114;
      v24 = v12;
      v25 = 2114;
      v26 = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@] Client %{public}@ failed authentication request with error %{public}@", buf, 0x20u);
LABEL_8:
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) logUUID];
    *buf = 138543362;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Authentication request succeeded", buf, 0xCu);
    goto LABEL_8;
  }

  v13 = dispatch_get_global_queue(21, 0);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002E38B0;
  v17[3] = &unk_10051C230;
  v14 = *(a1 + 56);
  v19 = v6;
  v20 = v14;
  v18 = v5;
  v15 = v6;
  v16 = v5;
  sub_100005D90(v13, v17);
}

void sub_1002E3E08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logKey];
      v9 = 138412546;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Error sending dialog request: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002E3F1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logUUID];
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Interactive dialog request failed: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002E4030(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logKey];
      v9 = *(a1 + 40);
      v10 = 138412802;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Client %{public}@ failed dialog request with error %{public}@", &v10, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1002E44F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logUUID];
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Interactive engagement request failed: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002E4608(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logUUID];
      v9 = *(a1 + 40);
      v10 = 138543874;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Client %{public}@ failed enagement request with error %{public}@", &v10, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1002E5A20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 setDelegate:0];
  v4 = [v3 userInfo];

  v5 = sub_100237D58(v4, AMSErrorUserInfoKeyServerPayload);

  if (v5 && sub_1003BF514(v5))
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed purchase had a trigger queue check.", v8, 2u);
    }

    v7 = sub_1001DFF60();
    [v7 checkStoreQueue:1 withReason:3];
  }
}

uint64_t sub_1002E5B18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002E5B30(uint64_t a1, void *a2)
{
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v118 objects:v130 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v119;
    v100 = a1;
    v102 = *v119;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v119 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v118 + 1) + 8 * i);
        v8 = [v7 purchase];
        v9 = [v8 uniqueIdentifier];

        if (v9)
        {
          v109 = [*(*(a1 + 32) + 66) objectForKeyedSubscript:v9];
          if (v109)
          {
            v10 = [_TtC9appstored13MetricsBridge metricsFieldsFromResult:v7];
            v11 = [v10 mutableCopy];

            if (!v11)
            {
              v11 = objc_opt_new();
            }

            v12 = [v109 buyParams];
            v13 = [v12 parameterForKey:@"mtPageContext"];

            if (v13)
            {
              [v11 setObject:v13 forKeyedSubscript:@"pageContext"];
            }

            v106 = v13;
            v14 = [v109 buyParams];
            v15 = [v14 parameterForKey:@"extRefApp2"];

            if (v15)
            {
              [v11 setObject:v15 forKeyedSubscript:@"refApp"];
            }

            v105 = v15;
            v107 = v11;
            v108 = i;
            [v109 setQosMetricsFields:v11];
            -[NSObject setDidShowPaymentSheet:](v109, "setDidShowPaymentSheet:", [v7 didShowPaymentSheet]);
            v16 = [v7 finalizedBlindedData];
            [v109 setFinalizedBlindedData:v16];

            v17 = [v7 error];

            if (v17)
            {
              v18 = [v7 error];
              v19 = ASDErrorWithSafeUserInfo();
              v20 = [v109 account];
              v21 = [v20 ams_DSID];
              v22 = sub_1003BF384(StoreItemResponse, v19, v21);
              [v109 setItemResponse:v22];

              v23 = *(*(a1 + 32) + 42);
              v5 = v102;
              v24 = v107;
              i = v108;
              if (v23 && *(v23 + 24) == 1 && !*(*(*(a1 + 48) + 8) + 40))
              {
                v25 = [v7 error];
                v26 = *(*(a1 + 48) + 8);
                v27 = *(v26 + 40);
                *(v26 + 40) = v25;
                goto LABEL_77;
              }
            }

            else
            {
              if (*(*(*(a1 + 48) + 8) + 40))
              {
                v27 = ASDErrorWithSafeUserInfo();
                v29 = [v109 account];
                v30 = [v29 ams_DSID];
                v31 = sub_1003BF384(StoreItemResponse, v27, v30);
                [v109 setItemResponse:v31];

                v5 = v102;
                v24 = v107;
                i = v108;
              }

              else
              {
                v32 = [v7 responseDictionary];
                v33 = [v7 URLResponse];
                objc_opt_class();
                v34 = v33;
                v104 = v9;
                if (objc_opt_isKindOfClass())
                {
                  v35 = v34;
                }

                else
                {
                  v35 = 0;
                }

                v36 = v109;
                v37 = [v109 requireUniversal];
                v38 = [v109 bag];
                v39 = sub_1003BE8FC(StoreItemResponse, v32, v35, v37, v38);
                [v109 setItemResponse:v39];

                if (![v109 purchaseType])
                {
                  v40 = [v7 URLResponse];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    v42 = [v7 URLResponse];
                    v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v42 statusCode]);
                  }

                  else
                  {
                    v43 = 0;
                  }

                  Property = [v109 itemResponse];
                  v46 = Property;
                  if (Property)
                  {
                    Property = objc_getProperty(Property, v45, 120, 1);
                  }

                  v47 = Property;

                  v48 = sub_1003A4EE0();
                  v36 = v109;
                  v49 = [v109 itemID];
                  v50 = [v109 bundleID];
                  sub_1003ABEC4(v48, v49, v50, v47, v43);
                }

                v51 = [v36 temporaryBundleID];
                v9 = v104;
                if (v51)
                {
                  v52 = v51;
                  v53 = [v36 generatedVendorID];

                  if (v53)
                  {
                    v54 = +[LSApplicationWorkspace defaultWorkspace];
                    v114 = 0u;
                    v115 = 0u;
                    v116 = 0u;
                    v117 = 0u;
                    v55 = [v36 itemResponse];
                    v57 = v55;
                    v101 = v4;
                    if (v55)
                    {
                      v55 = objc_getProperty(v55, v56, 64, 1);
                    }

                    v58 = v55;

                    v59 = [v58 countByEnumeratingWithState:&v114 objects:v129 count:16];
                    if (v59)
                    {
                      v61 = v59;
                      v62 = *v115;
                      do
                      {
                        v63 = 0;
                        do
                        {
                          if (*v115 != v62)
                          {
                            objc_enumerationMutation(v58);
                          }

                          v64 = *(*(&v114 + 1) + 8 * v63);
                          if (v64)
                          {
                            v65 = objc_getProperty(*(*(&v114 + 1) + 8 * v63), v60, 96, 1);
                          }

                          else
                          {
                            v65 = 0;
                          }

                          v66 = v65;

                          if (v66)
                          {
                            v67 = ASDLogHandleForCategory();
                            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                            {
                              v73 = [v36 logKey];
                              v75 = [v36 vendorName];
                              if (v64)
                              {
                                v76 = objc_getProperty(v64, v74, 96, 1);
                              }

                              else
                              {
                                v76 = 0;
                              }

                              v77 = v76;
                              *buf = 138412802;
                              v124 = v73;
                              v125 = 2114;
                              v126 = v75;
                              v127 = 2114;
                              v128 = v77;
                              _os_log_debug_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "[%@] Creating device identifier for vendor %{public}@ and bundle %{public}@", buf, 0x20u);

                              v9 = v104;
                              v36 = v109;
                            }

                            v69 = [v36 vendorName];
                            if (v64)
                            {
                              v70 = objc_getProperty(v64, v68, 96, 1);
                            }

                            else
                            {
                              v70 = 0;
                            }

                            v71 = v70;
                            v72 = [v54 createDeviceIdentifierWithVendorName:v69 bundleIdentifier:v71];
                          }

                          v63 = v63 + 1;
                        }

                        while (v61 != v63);
                        v78 = [v58 countByEnumeratingWithState:&v114 objects:v129 count:16];
                        v61 = v78;
                      }

                      while (v78);
                    }

                    v79 = ASDLogHandleForCategory();
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
                    {
                      v97 = [v36 logKey];
                      v98 = [v36 vendorName];
                      v99 = [v36 temporaryBundleID];
                      *buf = 138412802;
                      v124 = v97;
                      v125 = 2114;
                      v126 = v98;
                      v127 = 2114;
                      v128 = v99;
                      _os_log_debug_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, "[%@] Removing temporary device identifier for vendor %{public}@ and bundle %{public}@", buf, 0x20u);
                    }

                    v80 = [v36 vendorName];
                    v81 = [v36 temporaryBundleID];
                    [v54 removeDeviceIdentifierForVendorName:v80 bundleIdentifier:v81];

                    [v36 setTemporaryBundleID:0];
                    a1 = v100;
                    v4 = v101;
                  }
                }

                v112 = 0u;
                v113 = 0u;
                v110 = 0u;
                v111 = 0u;
                v82 = [v36 itemResponse];
                v84 = v82;
                if (v82)
                {
                  v82 = objc_getProperty(v82, v83, 64, 1);
                }

                v24 = v107;
                v27 = v82;

                v85 = [v27 countByEnumeratingWithState:&v110 objects:v122 count:16];
                if (v85)
                {
                  v87 = v85;
                  v88 = v4;
                  v89 = *v111;
                  do
                  {
                    v90 = 0;
                    do
                    {
                      if (*v111 != v89)
                      {
                        objc_enumerationMutation(v27);
                      }

                      v91 = *(*(&v110 + 1) + 8 * v90);
                      if (v91)
                      {
                        v92 = objc_getProperty(*(*(&v110 + 1) + 8 * v90), v86, 352, 1);
                        if (v92)
                        {
                          v93 = +[_TtC9appstored23StoreKitExternalGateway shared];
                          v95 = objc_getProperty(v91, v94, 96, 1);
                          [v93 handleExternalPurchaseTokenInfoDictionary:v92 bundleID:v95];
                        }
                      }

                      else
                      {
                        v92 = 0;
                      }

                      v90 = v90 + 1;
                    }

                    while (v87 != v90);
                    v96 = [v27 countByEnumeratingWithState:&v110 objects:v122 count:16];
                    v87 = v96;
                  }

                  while (v96);
                  v4 = v88;
                  v5 = v102;
                  i = v108;
                  v9 = v104;
                }

                else
                {
                  v5 = v102;
                  i = v108;
                }
              }

LABEL_77:
            }

            v28 = v109;
            [v109 setPurchaseState:1];

            goto LABEL_79;
          }
        }

        v28 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "Purchase finished but it was not found in the batch so dropping the response on the floor", buf, 2u);
        }

LABEL_79:
      }

      v4 = [obj countByEnumeratingWithState:&v118 objects:v130 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) setDelegate:0];
}

void sub_1002E65C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ASDErrorWithSafeUserInfo();
  (*(v1 + 16))(v1, v2);
}

void sub_1002E6788(uint64_t a1, void *a2, void *a3)
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

void *sub_1002E6908(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = MigratorPromotionTask;
    a1 = objc_msgSendSuper2(&v12, "init");
    if (a1)
    {
      v7 = [v5 copy];
      v8 = a1[6];
      a1[6] = v7;

      v9 = [v6 copy];
      v10 = a1[7];
      a1[7] = v9;
    }
  }

  return a1;
}

char *sub_1002E6CB8(char *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = DetermineSizeForURLTask;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong((v8 + 58), a2);
      objc_storeStrong((a1 + 42), a3);
    }
  }

  return a1;
}

void sub_1002E6F8C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v22 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      v28 = *(v27 + 42);
      v29 = *(v27 + 58);
      *buf = 138412802;
      *&buf[4] = v28;
      v39 = 2114;
      v40 = v29;
      v41 = 2114;
      v42 = v9;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%@] Failed to find size for URL: %{public}@ error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v8;
    v13 = v10;
    if (v11)
    {
      if ([v12 statusCode] < 200 || objc_msgSend(v12, "statusCode") > 299)
      {
        v23 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v32 = *(v11 + 42);
          v33 = [v12 statusCode];
          v34 = *(v11 + 58);
          *buf = 138412802;
          *&buf[4] = v32;
          v39 = 2048;
          v40 = v33;
          v41 = 2114;
          v42 = v34;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%@] Invalid status: %ld for URL: %{public}@", buf, 0x20u);
        }

        v37 = NSDebugDescriptionErrorKey;
        v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Invalid response, status code: %ld", [v12 statusCode]);
        *buf = v24;
        v25 = [NSDictionary dictionaryWithObjects:buf forKeys:&v37 count:1];

        v26 = [NSError errorWithDomain:ASDErrorDomain code:507 userInfo:v25];
        v13[2](v13, v26);
      }

      else
      {
        v14 = [v12 expectedContentLength];
        v15 = ASDLogHandleForCategory();
        v16 = v15;
        if (v14 <= 0)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v35 = *(v11 + 42);
            v36 = *(v11 + 58);
            *buf = 138412802;
            *&buf[4] = v35;
            v39 = 2048;
            v40 = v14;
            v41 = 2114;
            v42 = v36;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%@] Invalid size: %lld for URL: %{public}@", buf, 0x20u);
          }

          v37 = NSDebugDescriptionErrorKey;
          *buf = @"Invalid response, expected content length unknown";
          v30 = [NSDictionary dictionaryWithObjects:buf forKeys:&v37 count:1];
          v31 = [NSError errorWithDomain:ASDErrorDomain code:507 userInfo:v30];
          v13[2](v13, v31);
        }

        else
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(v11 + 42);
            v18 = [v12 expectedContentLength];
            v19 = *(v11 + 58);
            *buf = 138412802;
            *&buf[4] = v17;
            v39 = 2048;
            v40 = v18;
            v41 = 2114;
            v42 = v19;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Found size: %lld for URL: %{public}@", buf, 0x20u);
          }

          v20 = [NSNumber numberWithLongLong:v14];
          v21 = *(v11 + 66);
          *(v11 + 66) = v20;

          v13[2](v13, 0);
        }
      }
    }
  }
}

char *sub_1002E7504(char *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [a1 init];
    a1 = v5;
    if (v5)
    {
      objc_storeStrong((v5 + 58), a2);
      v6 = sub_10023E6B8(v4, @"external_id");
      v7 = *(a1 + 42);
      *(a1 + 42) = v6;

      v8 = sub_100408EB0(v4);
      v9 = *(a1 + 74);
      *(a1 + 74) = v8;
    }
  }

  return a1;
}

void sub_1002E8368(uint64_t a1, void *a2)
{
  self = a2;
  objc_storeStrong((*(a1 + 32) + 106), a2);
  if (self && self[4] == 2)
  {
    v5 = *(a1 + 40);
    Property = objc_getProperty(self, v4, 16, 1);
    if (Property)
    {
      (*(v5 + 16))(v5, Property);
    }

    else
    {
      v7 = [NSError alloc];
      v8 = [v7 initWithDomain:ASDErrorDomain code:500 userInfo:0];
      (*(v5 + 16))(v5, v8);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

AppInstallImportResult *sub_1002E8464(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = objc_alloc_init(AppInstallImportResult);
  v9->_status = 2;
  coordinator = v9->_coordinator;
  v9->_coordinator = v6;
  v11 = v6;

  externalID = v9->_externalID;
  v9->_externalID = v7;
  v13 = v7;

  v14 = ASDErrorWithSafeUserInfo();

  error = v9->_error;
  v9->_error = v14;

  return v9;
}

void sub_1002E8538(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    if (a2 == 2)
    {
      v6 = *(a1 + 98);
      if (v6)
      {
        if (*(v6 + 32) >= 1)
        {
          v7 = sub_10023E604(*(a1 + 58), @"post_processing_state");
          v8 = *(a1 + 58);
          v9 = [NSNumber numberWithInteger:v7 | 1];
          sub_10023E000(v8, v9, @"post_processing_state");
        }
      }
    }

    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x4010000000;
    v21[3] = &unk_10049798A;
    v22 = 0u;
    v23 = 0u;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = sub_1002E8E9C;
    v19[4] = sub_1002E8EAC;
    v20 = 0;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_1002E8E9C;
    v17[4] = sub_1002E8EAC;
    v18 = 0;
    v10 = sub_1003C27BC();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1002E8EB4;
    v16[3] = &unk_10051C860;
    v16[4] = a1;
    v16[5] = v21;
    v16[6] = v19;
    v16[7] = v17;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002E90AC;
    v11[3] = &unk_100522030;
    v13 = v21;
    v14 = v19;
    v11[4] = a1;
    v12 = v5;
    v15 = v17;
    [v10 asyncModifyUsingTransaction:v16 completion:v11];

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(v19, 8);

    _Block_object_dispose(v21, 8);
  }
}

void sub_1002E87CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1002E8804(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [_TtC9appstored24BackgroundAssetRelayTask alloc];
    v8 = *(a1[4] + 58);
    if (v8)
    {
      v9 = *(v8 + 56);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = a1[4];
    v12 = *(v11 + 58);
    if (v12)
    {
      v13 = sub_10023E604(v12, @"source_type") == 2;
      v11 = a1[4];
    }

    else
    {
      v13 = 0;
    }

    v14 = [(BackgroundAssetRelayTask *)v7 initWithAppInstall:v8 metadata:v10 shouldSkipTransparencySheet:v13 requestToken:*(v11 + 90) bag:v5];

    v15 = +[_TtC9appstored24BackgroundAssetRelayTask taskQueue];
    v16 = v15;
    if (v15)
    {
      [*(v15 + 8) addOperation:v14];
    }

    v17 = +[_TtC9appstored24BackgroundAssetRelayTask taskQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1002E8A14;
    v24[3] = &unk_100521FB8;
    v18 = a1[4];
    v19 = a1[5];
    v25 = v14;
    v26 = v18;
    v28 = v19;
    v20 = v6;
    v21 = a1[6];
    v27 = v20;
    v29 = v21;
    v22 = v14;
    sub_100284D9C(v17, v24);
  }

  else
  {
    v23 = a1[5];
    v22 = sub_1002E8464(AppInstallImportResult, *(a1[4] + 66), *(a1[4] + 42), v6);
    (*(v23 + 16))(v23, v22);
  }
}

void sub_1002E8A14(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 32, 1);
  }

  v4 = Property;
  IsEqual = ASDErrorIsEqual();

  if (IsEqual)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = objc_getProperty(v7, v6, 32, 1);
    }

    v8 = v7;
    v9 = IXCreateUserPresentableError();

    v10 = *(*(a1 + 40) + 66);
    v38 = 0;
    [v10 cancelForReason:v9 client:1 error:&v38];
    v12 = v38;
    if (v12)
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v33 = sub_100408EB0(*(*(a1 + 40) + 58));
        v34 = *(*(a1 + 40) + 66);
        *buf = 138412802;
        v40 = v33;
        v41 = 2112;
        v42 = v34;
        v43 = 2114;
        v44 = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@] The coordinator “%@” couldn’t be canceled following a determination of insufficent space for essential assets: %{public}@", buf, 0x20u);
      }
    }

    v14 = *(a1 + 56);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(v16 + 66);
    v18 = *(v16 + 42);
    if (v15)
    {
      v15 = objc_getProperty(v15, v11, 32, 1);
    }

    v19 = v15;
    v20 = sub_1002E8464(AppInstallImportResult, v17, v18, v19);
    (*(v14 + 16))(v14, v20);
  }

  else
  {
    v21 = *(*(a1 + 40) + 58);
    if (v21)
    {
      v22 = sub_10023E604(v21, @"source_type") == 2;
      v21 = *(*(a1 + 40) + 58);
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_10040908C(v21);
    v24 = *(*(a1 + 40) + 58);
    if (v24)
    {
      v24 = v24[7];
    }

    v25 = v24;
    v12 = [BAAppStorePrepareDescriptor descriptorWithAppBundleIdentifier:v23 appStoreMetadata:v25 client:v22];

    [v12 setUserInitiated:*(*(a1 + 40) + 52)];
    v26 = sub_100408F24(*(*(a1 + 40) + 58));
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = sub_1003B6560();
    }

    v9 = v28;

    if ((sub_1003B6890(v9) & 2) != 0)
    {
      [v12 setCellularPolicy:3];
    }

    v19 = objc_alloc_init(BAAppStoreClient);
    v37 = 0;
    v29 = [v19 prepareForAppInstallWithDescriptor:v12 error:&v37];
    v20 = v37;
    v30 = ASDLogHandleForCategory();
    v31 = v30;
    if (v29)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = sub_100408EB0(*(*(a1 + 40) + 58));
        *buf = 138412290;
        v40 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%@] Sent prepare descriptor to Background Assets", buf, 0xCu);
      }

      sub_10023E000(*(*(a1 + 40) + 58), &__kCFBooleanTrue, @"has_background_assets_extension");
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v35 = sub_100408EB0(*(*(a1 + 40) + 58));
        v36 = *(a1 + 48);
        *buf = 138412546;
        v40 = v35;
        v41 = 2114;
        v42 = v36;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%@] Failed to send prepare descriptor to Background Assets: %{public}@", buf, 0x16u);
      }
    }

    sub_1002E8538(*(a1 + 40), *(a1 + 64), *(a1 + 56));
  }
}

uint64_t sub_1002E8E9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_1002E8EB4(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = a1[4];
  if (*(v5 + 52) == 1)
  {
    v6 = *(v5 + 50) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(v5 + 58);
  v8 = *(a1[6] + 8);
  v11 = *(v8 + 40);
  v10 = (v8 + 40);
  v9 = v11;
  obj = v11;
  if (v3)
  {
    sub_100207374(v3, v7, 0, v6 & 1, &obj, &v29);
    v9 = obj;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  objc_storeStrong(v10, v9);
  v12 = *(a1[5] + 8);
  v13 = v30;
  *(v12 + 32) = v29;
  *(v12 + 48) = v13;
  v14 = *(a1[5] + 8);
  v15 = *(v14 + 56);
  if (v15 == 2)
  {
    if (*(a1[4] + 52) != 1)
    {
      goto LABEL_10;
    }

    sub_10020894C(v4, *(v14 + 32));
    v15 = *(*(a1[5] + 8) + 56);
  }

  if (!v15)
  {
    v26 = 0;
    goto LABEL_12;
  }

LABEL_10:
  v16 = [AppInstallEntity alloc];
  v17 = *(*(a1[5] + 8) + 32);
  v18 = [v4 connection];
  v19 = [(SQLiteEntity *)v16 initWithPersistentID:v17 onConnection:v18];

  v20 = sub_100396F9C(v19);
  v21 = *(a1[7] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  v23 = sub_1003403A0(v19, @"external_id");
  v24 = a1[4];
  v25 = *(v24 + 42);
  *(v24 + 42) = v23;

  v26 = *(*(a1[5] + 8) + 56) != 0;
LABEL_12:

  return v26;
}

void sub_1002E90AC(void *a1)
{
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = a1[4];
    if (*(v4 + 52) == 1)
    {
      if (*(v4 + 50) == 1)
      {
        v5 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = sub_100408EB0(*(a1[4] + 58));
          v7 = sub_100408F24(*(a1[4] + 58));
          v8 = sub_1003B6718(v7);
          v9 = sub_100408F24(*(a1[4] + 58));
          *buf = 138412802;
          *&buf[4] = v6;
          *&buf[12] = 2048;
          *&buf[14] = v8;
          *&buf[22] = 2048;
          *&buf[24] = sub_1003B67D4(v9);
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Skip network review for a recovery from expired url. constrainedResult: %ld, expensiveResult: %ld", buf, 0x20u);
        }

        v2 = *(a1[6] + 8);
        v4 = a1[4];
        goto LABEL_11;
      }
    }

    else if (v3 == 2)
    {
LABEL_11:
      v13 = a1[5];
      v14 = *(v2 + 48);
      *buf = *(v2 + 32);
      *&buf[16] = v14;
      sub_1002E957C(v4, buf, v13);
      return;
    }

    v15 = sub_100408F24(*(v4 + 58));
    if (!v15)
    {
      v15 = sub_1003B6560();
    }

    v16 = *(a1[4] + 82);
    if (v16)
    {
      v17 = (*(v16 + 16))(v16, *(*(a1[6] + 8) + 56) == 2, v15);

      v15 = v17;
    }

    v18 = [_TtC9appstored23ReviewNetworkPolicyTask alloc];
    v19 = *(*(a1[8] + 8) + 40);
    v20 = a1[4];
    v21 = *(v20 + 51);
    v22 = *(v20 + 58);
    v23 = !v22 || !sub_10023E604(v22, @"update_type") || sub_1003D5FC8();
    v24 = [(ReviewNetworkPolicyTask *)v18 initWithDownload:v19 shouldSuppressDialogs:v21 shouldShowLaterButton:v23];
    v25 = a1[4];
    v26 = *(a1[7] + 8);
    obj = *(v26 + 40);
    v27 = [v25 runSubTask:v24 returningError:&obj];
    objc_storeStrong((v26 + 40), obj);
    if (v27)
    {
      [(ReviewNetworkPolicyTask *)v24 setValuesOnInstallPolicy:v15];
    }

    else
    {
      sub_1003B6764(v15, 4);
      sub_1003B6820(v15, 4);
      sub_1003B66A8(v15, 60);
    }

    sub_100408FB4(*(a1[4] + 58), v15);
    v28 = sub_1003C27BC();
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1002E9714;
    v37[3] = &unk_10051C888;
    v30 = a1[5];
    v29 = a1[6];
    v38 = v15;
    v39 = v29;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1002E9998;
    v34[3] = &unk_100522008;
    v34[4] = a1[4];
    v36 = v29;
    v35 = v30;
    v31 = v15;
    [v28 asyncModifyUsingTransaction:v37 completion:v34];
  }

  else
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v32 = sub_100408EB0(*(a1[4] + 58));
      v33 = *(*(a1[7] + 8) + 40);
      *buf = 138412546;
      *&buf[4] = v32;
      *&buf[12] = 2114;
      *&buf[14] = v33;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@] Database import failed with error: %{public}@", buf, 0x16u);
    }

    v11 = a1[5];
    v12 = sub_1002E8464(AppInstallImportResult, *(a1[4] + 66), *(a1[4] + 42), *(*(a1[7] + 8) + 40));
    (*(v11 + 16))(v11, v12);
  }
}

void sub_1002E957C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a2 + 24);
    v19 = v5;
    if (v6)
    {
      if (v6 == 2)
      {
        v7 = *(a1 + 66);
        v8 = *(a1 + 42);
        v9 = v7;
        v10 = v8;
        objc_opt_self();
        v11 = objc_alloc_init(AppInstallImportResult);
        p_isa = &v11->super.isa;
        v11->_status = 1;
      }

      else
      {
        v15 = *(a1 + 66);
        v16 = *(a1 + 42);
        v9 = v15;
        v10 = v16;
        objc_opt_self();
        v11 = objc_alloc_init(AppInstallImportResult);
        p_isa = &v11->super.isa;
        v11->_status = 0;
      }

      coordinator = v11->_coordinator;
      v11->_coordinator = v9;
      v14 = v9;

      v18 = p_isa[3];
      p_isa[3] = v10;
    }

    else
    {
      v13 = [NSError alloc];
      v14 = [v13 initWithDomain:ASDErrorDomain code:908 userInfo:0];
      p_isa = sub_1002E8464(AppInstallImportResult, *(a1 + 66), *(a1 + 42), v14);
    }

    v19[2](v19, p_isa);
    v5 = v19;
  }
}

uint64_t sub_1002E9714(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AppInstallEntity alloc];
  v5 = *(*(*(a1 + 40) + 8) + 32);
  v6 = [v3 connection];
  v7 = [(SQLiteEntity *)v4 initWithPersistentID:v5 onConnection:v6];

  if ([(SQLiteEntity *)v7 existsInDatabase])
  {
    sub_1002945E4(v7, *(a1 + 32));
    if (sub_1003B6718(*(a1 + 32)) == 2)
    {
      v8 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:

        *(*(*(a1 + 40) + 8) + 56) = 0;
        if (v3)
        {
          Property = objc_getProperty(v3, v11, 24, 1);
        }

        else
        {
          Property = 0;
        }

        v13 = Property;
        v14 = sub_1002953E0(v7, -30);
        sub_1002561F0(v13, v14);

        goto LABEL_12;
      }

      v9 = sub_10029430C(v7);
      v18 = 138412290;
      v19 = v9;
      v10 = "[%@] Explicitly denied for low data network - canceling installation";
    }

    else
    {
      if (!sub_1002942AC(v7) || sub_1003B67D4(*(a1 + 32)) != 2)
      {
        goto LABEL_12;
      }

      v8 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v9 = sub_10029430C(v7);
      v18 = 138412290;
      v19 = v9;
      v10 = "[%@] Explicitly denied update for expensive network - canceling installation";
    }

    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v18, 0xCu);

    goto LABEL_6;
  }

  v15 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v17 = *(*(*(a1 + 40) + 8) + 32);
    v18 = 134217984;
    v19 = v17;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%lld] Install no longer exists in database; assuming cleaned up elsewhere--possibly as a duplicate", &v18, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 56) = 2;
LABEL_12:

  return 1;
}

void sub_1002E9998(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[6] + 8);
  v3 = a1[4];
  v4 = *(v2 + 48);
  v5[0] = *(v2 + 32);
  v5[1] = v4;
  sub_1002E957C(v3, v5, v1);
}

void *sub_1002E9EE8(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = ODRSpaceReduction;
  v3 = objc_msgSendSuper2(&v10, "init");
  v4 = v3;
  if (v3)
  {
    v3[1] = a2;
    v5 = objc_alloc_init(NSMutableArray);
    v6 = v4[2];
    v4[2] = v5;

    if (a2 >= 1)
    {
      do
      {
        if (a2 >= 0x3200000)
        {
          v7 = 52428800;
        }

        else
        {
          v7 = a2;
        }

        a2 -= v7;
        v8 = sub_10023EA38([ODRPreallocatedFile alloc], v7);
        [v4[2] addObject:v8];
      }

      while (a2 > 0);
    }
  }

  return v4;
}

void *sub_1002E9FC4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = PushMessage;
    a1 = objc_msgSendSuper2(&v9, "init");
    if (a1)
    {
      v4 = sub_1003424DC(v3);
      v5 = a1[1];
      a1[1] = v4;

      v6 = sub_10034250C(v3);
      v7 = a1[2];
      a1[2] = v6;
    }
  }

  return a1;
}

void **sub_1002EA054(void **a1)
{
  if (a1)
  {
    a1 = sub_10023790C(a1[1], @"0");
    v1 = vars8;
  }

  return a1;
}

void **sub_1002EA090(void **result)
{
  if (result)
  {
    return sub_100237FA0(result[1], @"1", 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

id sub_1002EA0AC(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_100237D58(*(a1 + 8), @"aps");
    v2 = sub_1002380D8(v1, @"uuid");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void **sub_1002EA118(void **a1, void *a2)
{
  if (a1)
  {
    a1 = sub_10023790C(a1[1], a2);
    v2 = vars8;
  }

  return a1;
}

id *sub_1002EA14C(id *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = [a1[1] objectForKeyedSubscript:a2];
    v2 = vars8;
  }

  return a1;
}

unint64_t *sub_1002EA378(unint64_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = AppNetworkMonitor;
    a1 = objc_msgSendSuper2(&v15, "init");
    if (a1)
    {
      if (os_variant_has_internal_content() && (sub_100296A50(), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v5 = v4;
        *(a1 + 8) = 1;
        *(a1 + 10) = *(v4 + 9) & 1;
        *(a1 + 9) = *(v4 + 8) & 1;
        v6 = *(v4 + 16);
      }

      else
      {
        v5 = sub_1002B21A8(NWPath, v3);
        if (([v5 status] | 2) == 3)
        {
          *(a1 + 8) = 1;
          *(a1 + 10) = [v5 isExpensive];
          *(a1 + 9) = [v5 isConstrained];
          v6 = sub_1002B2260(v5);
        }

        else
        {
          v6 = 0;
          *(a1 + 4) = 0;
          *(a1 + 10) = 0;
        }
      }

      a1[2] = v6;

      v7 = *(a1 + 8);
      v8 = ASDLogHandleForCategory();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7 == 1)
      {
        if (v9)
        {
          v10 = *(a1 + 10);
          v11 = *(a1 + 9);
          v12 = a1[2];
          if (v12 >= 5)
          {
            v13 = [[NSString alloc] initWithFormat:@"unknown (%ld)", v12];
          }

          else
          {
            v13 = *(&off_100522050 + v12);
          }

          *buf = 138544130;
          v17 = v3;
          v18 = 1024;
          v19 = v10;
          v20 = 1024;
          v21 = v11;
          v22 = 2114;
          v23 = v13;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Network] Network available for '%{public}@' (expensive = %d, constrained = %d, interface = %{public}@)", buf, 0x22u);
        }
      }

      else if (v9)
      {
        *buf = 138543362;
        v17 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Network] Network unavailable for '%{public}@'", buf, 0xCu);
      }
    }
  }

  return a1;
}

uint64_t sub_1002EA684(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    *(a1 + 56) = 1;
    v6 = objc_alloc_init(NSMutableArray);
    v7 = *(a1 + 48);
    *(a1 + 48) = v6;

    [v5 acceptVisitor:a1 flags:1];
    v8 = *(a1 + 56);
    if (a3 && (*(a1 + 56) & 1) == 0)
    {
      if ([*(a1 + 48) count])
      {
        v9 = [*(a1 + 48) componentsJoinedByString:{@", "}];
      }

      else
      {
        v9 = @"Unknown validation error";
      }

      v10 = ASDErrorDomain;
      v13 = NSDebugDescriptionErrorKey;
      v14 = v9;
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *a3 = [NSError errorWithDomain:v10 code:507 userInfo:v11];

      v8 = *(a1 + 56);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

char *sub_1002EA968(char *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = TestFlightUploadSubTask;
    a1 = objc_msgSendSuper2(&v9, "init");
    objc_storeStrong((a1 + 42), a2);
    objc_storeStrong((a1 + 50), a3);
  }

  return a1;
}

void sub_1002EAA28(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v12 = [AMSURLRequestEncoder alloc];
    v13 = [*(a1 + 50) amsBag];
    v14 = [v12 initWithBag:v13];

    [v14 setRequestEncoding:1];
    [v14 setUrlKnownToBeTrusted:1];
    [v14 setMescalType:1];
    v15 = sub_1002026B0(*(a1 + 42));
    v16 = [v15 description];
    [v14 setLogUUID:v16];

    v17 = sub_100202490(*(a1 + 42));
    if (v17)
    {
      v18 = +[ACAccountStore ams_sharedAccountStore];
      v19 = [v18 ams_iTunesAccountWithDSID:v17];

      if (v19)
      {
        v20 = [v19 ams_DSID];

        if (v20)
        {
          [v14 setAccount:v19];
        }
      }
    }

    v21 = [v14 requestWithMethod:a2 URL:v9 parameters:v10];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1002EAC44;
    v22[3] = &unk_10051F1A0;
    v22[4] = a1;
    v23 = v9;
    v24 = v11;
    [v21 resultWithCompletion:v22];
  }
}

void sub_1002EAC44(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a2;
  v8 = a3;
  v9 = v4;
  v10 = v6;
  if (v5)
  {
    v11 = [v5 contentTypeHeaderValue];
    if (v11)
    {
      [v7 setValue:v11 forHTTPHeaderField:@"Content-Type"];
    }

    v12 = [v5 acceptHeaderValue];
    if (v12)
    {
      [v7 setValue:v12 forHTTPHeaderField:@"Accept"];
    }

    if (v8)
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v19 = *(v5 + 42);
        v20 = sub_1002026B0(v19);
        *v21 = 138412546;
        *&v21[4] = v20;
        *&v21[12] = 2114;
        *&v21[14] = v9;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@]: Failed to create a request with %{public}@", v21, 0x16u);
      }

      v14 = ASDErrorWithSafeUserInfo();
      v10[2](v10, 0, v14);
    }

    else
    {
      v14 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
      [v14 set_sourceApplicationBundleIdentifier:@"com.apple.AppStore"];
      v15 = sub_100265DEC();
      v16 = [*(v5 + 50) amsBag];
      [v14 ams_configureWithProcessInfo:v15 bag:v16];

      v17 = [[AMSURLSession alloc] initWithConfiguration:v14];
      v18 = [v17 dataTaskPromiseWithRequest:v7];
      *v21 = _NSConcreteStackBlock;
      *&v21[8] = 3221225472;
      *&v21[16] = sub_1002EAF00;
      v22 = &unk_10051E0B8;
      v23 = v10;
      [v18 resultWithCompletion:v21];
    }
  }
}

void sub_1002EAF00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v19 = v4;
  if (v4)
  {
    [v4 code];
    v5 = [v19 userInfo];
    v6 = [v5 objectForKeyedSubscript:AMSErrorUserInfoKeyStatusCode];

    if (v6)
    {
      [v6 integerValue];
    }

    v7 = [v19 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSLocalizedDescriptionKey];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v19 localizedDescription];
    }

    v11 = v10;

    v12 = [v19 userInfo];
    v13 = [v12 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v19 localizedFailureReason];
    }

    v16 = v15;

    v17 = *(a1 + 32);
    v18 = ASDErrorWithTitleAndMessage();
    (*(v17 + 16))(v17, 0, v18);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

char *sub_1002EB0AC(char *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [[NSURLComponents alloc] initWithURL:v3 resolvingAgainstBaseURL:0];
    v5 = [v4 queryItems];
    v6 = [v5 mutableCopy];

    if (!v6)
    {
      v6 = objc_opt_new();
    }

    v7 = [NSString stringWithFormat:@"%d", sub_1002024C8(*(a1 + 42))];
    v8 = [NSURLQueryItem queryItemWithName:@"attempt" value:v7];
    [v6 addObject:v8];

    if (os_variant_has_internal_content())
    {
      if (sub_1002EB28C(@"disableAuth"))
      {
        v9 = [NSURLQueryItem queryItemWithName:@"no_weak_token_auth" value:@"true"];
        [v6 addObject:v9];
      }

      if (sub_1002EB28C(@"disableMescal"))
      {
        v10 = [NSURLQueryItem queryItemWithName:@"no_mescal_auth" value:@"true"];
        [v6 addObject:v10];
      }
    }

    [v4 setQueryItems:v6];
    v11 = [v4 URL];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v3;
    }

    a1 = v13;
  }

  return a1;
}

id sub_1002EB28C(void *a1)
{
  v1 = a1;
  v2 = sub_1003D6BA0();
  v3 = [v2 objectForKeyedSubscript:v1];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1002EB36C()
{
  objc_opt_self();
  if (qword_1005AAB70 != -1)
  {
    dispatch_once(&qword_1005AAB70, &stru_100522078);
  }

  v0 = qword_1005AAB68;

  return v0;
}

void sub_1002EB3C4(id a1)
{
  v1 = objc_alloc_init(XDCService);
  v2 = qword_1005AAB68;
  qword_1005AAB68 = v1;
}

void sub_1002EB664(uint64_t a1)
{
  v3 = sub_1002B0154();
  v2 = [*(*(a1 + 32) + 16) devices];
  sub_1002B0C08(v3, v2);
}

void sub_1002EB6D8(uint64_t a1, void *a2, uint64_t a3, __int16 a4)
{
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    v9 = *(a1 + 8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002EB794;
    v10[3] = &unk_1005220A0;
    v12 = a1;
    v13 = a3;
    v11 = v7;
    v14 = a4;
    dispatch_async(v9, v10);
  }
}

void sub_1002EB794(uint64_t a1)
{
  v4 = objc_alloc_init(XDCMessageHandler);
  if (v4)
  {
    objc_storeWeak(&v4->_target, *(a1 + 32));
    v4->_selector = *(a1 + 48);
  }

  v2 = *(*(a1 + 40) + 32);
  v3 = [NSNumber numberWithUnsignedShort:*(a1 + 56)];
  [v2 setObject:v4 forKeyedSubscript:v3];
}

void sub_1002EB834(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v12 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002EC3F4;
    block[3] = &unk_1005220D0;
    v14 = v10;
    v17 = v11;
    v18 = a4;
    v15 = v9;
    v16 = a1;
    dispatch_async(v12, block);
  }
}

void sub_1002EB928(uint64_t a1, void *a2, __int16 a3, void *a4)
{
  if (a1)
  {
    v7 = a4;
    v8 = a2;
    v9 = sub_1003420C0([XDCMessage alloc], v8, a3);

    sub_1002EB834(a1, v9, v7, 0, 0);
  }
}

void sub_1002EB9D4(uint64_t a1, void *a2, __int16 a3, void *a4, void *a5)
{
  if (a1)
  {
    v9 = a5;
    v10 = a4;
    v11 = a2;
    v12 = sub_1003420C0([XDCMessage alloc], v11, a3);

    sub_1002EB834(a1, v12, v10, 1, v9);
  }
}

void sub_1002EC394(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"XDCServiceDevicesDidChangeNotification" object:*(a1 + 32)];
}

void sub_1002EC3F4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_100342214(*(a1 + 40));
    if (v2)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      v5 = *(a1 + 40);
      if (v5 && (v5[8] & 1) != 0)
      {
        v6 = objc_getProperty(v5, v3, 32, 1);
        [v4 setObject:v6 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
      }

      else if (*(a1 + 64) == 1)
      {
        [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
      }

      if (os_variant_has_internal_content())
      {
        v12 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          Property = *(a1 + 40);
          if (Property)
          {
            v15 = Property[5];
            v16 = *(a1 + 32);
            Property = objc_getProperty(Property, v13, 16, 1);
          }

          else
          {
            v15 = 0;
            v16 = *(a1 + 32);
          }

          v17 = Property;
          *buf = 134218498;
          v38 = v15;
          v39 = 2114;
          v40 = v16;
          v41 = 2114;
          v42 = v17;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending message: %ld to: %{public}@ with payload: %{public}@", buf, 0x20u);
        }
      }

      v18 = *(*(a1 + 48) + 16);
      v19 = *(a1 + 32);
      if (v19)
      {
        v19 = objc_getProperty(v19, v11, 24, 1);
      }

      v20 = v19;
      v21 = [NSSet setWithObjects:v20, 0];
      v31 = 0;
      v32 = 0;
      v22 = [v18 sendProtobuf:v2 toDestinations:v21 priority:200 options:v4 identifier:&v32 error:&v31];
      v10 = v32;
      v8 = v31;

      if (v22)
      {
        v23 = [*(a1 + 56) copy];
        v24 = objc_retainBlock(v23);
        [*(*(a1 + 48) + 24) setObject:v24 forKeyedSubscript:v10];
      }

      else
      {
        v25 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v27 = *(a1 + 32);
          *buf = 138543874;
          v38 = v2;
          v39 = 2114;
          v40 = v27;
          v41 = 2114;
          v42 = v8;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Sending: %{public}@ to: %{public}@ failed with error: %{public}@", buf, 0x20u);
        }

        v26 = dispatch_get_global_queue(21, 0);
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1002EC994;
        v28[3] = &unk_10051B790;
        v30 = *(a1 + 56);
        v29 = v8;
        dispatch_async(v26, v28);

        v23 = v30;
      }
    }

    else
    {
      v9 = dispatch_get_global_queue(21, 0);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1002EC908;
      v33[3] = &unk_10051BD28;
      v34 = *(a1 + 56);
      dispatch_async(v9, v33);

      v10 = 0;
      v8 = 0;
      v4 = v34;
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002EC87C;
    block[3] = &unk_10051BD28;
    v36 = *(a1 + 56);
    dispatch_async(v7, block);

    v8 = v36;
  }
}

void sub_1002EC87C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = ASDErrorWithDescription();
    (*(v1 + 16))(v1, 0, v2);
  }
}

void sub_1002EC908(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = ASDErrorWithDescription();
    (*(v1 + 16))(v1, 0, v2);
  }
}

uint64_t sub_1002EC994(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void sub_1002EC9E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = WeakRetained;
  [v2 invokeWithTarget:WeakRetained];
}

id sub_1002ECABC(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = ODRDeveloperToolsClient;
    a1 = objc_msgSendSuper2(&v9, "init");
    if (a1)
    {
      v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ODRDeveloperToolsProtocol];
      [v3 setExportedInterface:v4];

      v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ODRDeveloperToolsProtocol];
      [v3 setRemoteObjectInterface:v5];

      [v3 setExportedObject:a1];
      [v3 resume];
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Created the developer tools client.", v8, 2u);
      }
    }
  }

  return a1;
}

void sub_1002ECD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002ECD84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002ECD9C(uint64_t a1, void *a2)
{
  v27 = a2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = sub_1003C26B8(*(a1 + 32));
  v28 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v28)
  {
    v25 = *v34;
    v26 = a1;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v33 + 1) + 8 * i);
        v5 = [NSSet setWithObject:v4];
        v6 = sub_1001C3BE8(v27, v5, *(a1 + 40));

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v30;
          v12 = 0.0;
          v13 = -1;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v30 != v11)
              {
                objc_enumerationMutation(v7);
              }

              v15 = *(*(&v29 + 1) + 8 * j);
              sub_1001DA304(v15);
              v12 = v12 + v16;
              v17 = sub_100269550(v15);
              v10 += [v17 unsignedLongLongValue];

              v18 = sub_1001DA410(v15);
              if (v18 < v13)
              {
                v13 = v18;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
          }

          while (v9);
        }

        else
        {
          v10 = 0;
          v12 = 0.0;
          v13 = -1;
        }

        if ([v7 count])
        {
          v12 = v12 / [v7 count];
        }

        a1 = v26;
        v37[0] = @"ODRTag_PercentageCompleteKey";
        v19 = [NSNumber numberWithDouble:v12];
        v38[0] = v19;
        v37[1] = @"ODRTag_TimestampKey";
        v20 = +[NSDate date];
        v38[1] = v20;
        v37[2] = @"ODRTag_StatusKey";
        v21 = [NSNumber numberWithUnsignedInteger:v13];
        v38[2] = v21;
        v37[3] = @"ODRTag_SizeKey";
        v22 = [NSNumber numberWithUnsignedLongLong:v10];
        v37[4] = @"ODRTag_TagNameKey";
        v38[3] = v22;
        v38[4] = v4;
        v23 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:5];

        [*(*(*(v26 + 48) + 8) + 40) addObject:v23];
      }

      v28 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v28);
  }
}

void sub_1002ED3C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v10 = sub_1001C4808(v4, v3);
  v5 = sub_10036FDEC(v10, &stru_100522138);
  v6 = [NSSet setWithArray:v5];
  v7 = sub_1001C3BE8(v4, v6, *(a1 + 32));

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1002ED8D0(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v8 = [NSSet setWithObject:v3];
  v5 = sub_1001C3BE8(v4, v8, a1[5]);

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1002EDB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002EDBC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = objc_getProperty(WeakRetained, v3, 32, 1);
  }

  v5 = WeakRetained;
  (*(v4 + 16))(v4, v5);
}

id sub_1002EDE64(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_1003BBF50();
  if ([v1 isHRNMode])
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_10030B548();
  }

  return v2;
}

id sub_1002EDEC8()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002EDF6C;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AAB80 != -1)
  {
    dispatch_once(&qword_1005AAB80, block);
  }

  v0 = qword_1005AAB78;

  return v0;
}

void sub_1002EDF6C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AAB78;
  qword_1005AAB78 = v1;
}

void sub_1002EDFA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[BagService appstoredService];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002EFB48;
    v8[3] = &unk_1005221D8;
    v8[4] = a1;
    v10 = v6;
    v9 = v5;
    [v7 recentBagWithCompletionHandler:v8];
  }
}

void sub_1002EE080(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002EE150;
    block[3] = &unk_10051C078;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

void sub_1002EE160(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002EE210;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1002EE210(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = sub_100386854(MetricsContext, 2);
    v4 = v3;
    if (v3)
    {
      *(v3 + 8) = 1;
      v5 = objc_opt_new();
      v6 = sub_1003D4804();

      if (!v6)
      {
        v4[11] = 1;
      }

      v7 = sub_1002EF4EC(v1, v4);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = sub_1003D6D24(*(*(&v23 + 1) + 8 * i));
            [v5 addObject:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v5 = 0;
    }

    if (sub_1002EDE64(v1))
    {
      v13 = 0;
    }

    else
    {
      v13 = ASDErrorWithTitleAndMessage();
    }

    v14 = v1[2];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1002EFEB4;
    v18[3] = &unk_10051C710;
    v19 = v5;
    v20 = v13;
    v21 = v4;
    v22 = v2;
    v15 = v4;
    v16 = v13;
    v17 = v5;
    dispatch_async(v14, v18);
  }
}

void sub_1002EE484(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002EE534;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1002EE534(uint64_t a1)
{
  if (sub_1002EDE64(*(a1 + 32)))
  {
    v4 = objc_alloc_init(_TtC9appstored6LogKey);
    sub_1002EE694(*(a1 + 32));
    sub_1002EE814(*(a1 + 32));
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = objc_opt_class();
      v3 = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@] Not enabled to record personalization metrics", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1002EE694(uint64_t a1)
{
  if (a1)
  {
    v1 = dispatch_semaphore_create(0);
    v2 = sub_1002B5560();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002F02E8;
    v8[3] = &unk_10051B348;
    v3 = v1;
    v9 = v3;
    sub_1002B8DC8(v2, 11, v8);

    v4 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(v3, v4))
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = objc_opt_class();
        *buf = 138543362;
        v11 = v6;
        v7 = v6;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Timed out waiting to sync launches", buf, 0xCu);
      }
    }
  }
}

void sub_1002EE814(uint64_t a1)
{
  if (a1)
  {
    v1 = dispatch_semaphore_create(0);
    v2 = sub_1002B5560();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002F02F0;
    v8[3] = &unk_10051B348;
    v3 = v1;
    v9 = v3;
    sub_1002B8F10(v2, 2, 11, v8);

    v4 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(v3, v4))
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = objc_opt_class();
        *buf = 138543362;
        v11 = v6;
        v7 = v6;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Timed out waiting to sync launches", buf, 0xCu);
      }
    }
  }
}

void sub_1002EE998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002EEA48;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1002EEA48(uint64_t a1)
{
  if (sub_1002EDE64(*(a1 + 32)))
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1002EEBA0;
    v5[3] = &unk_10051B548;
    v2 = *(a1 + 32);
    v6 = *(a1 + 40);
    sub_1002EEC0C(v2, @"Posting Metrics", v5);
  }

  else
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = objc_opt_class();
      v4 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Not enabled to record personalization metrics", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1002EEBA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = a2 == 0;
  v4 = ASDErrorWithSafeUserInfo();
  (*(v2 + 16))(v2, v3, v4);
}

void sub_1002EEC0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[BagService appstoredService];
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002F02F8;
    v9[3] = &unk_10051D970;
    v11 = v6;
    v9[4] = a1;
    v10 = v5;
    [v7 recentBagOnQueue:v8 completionHandler:v9];
  }
}

void sub_1002EED00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002EEDB0;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

uint64_t sub_1002EEDB0(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v3 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resetting actorID", &v5, 0xCu);
  }

  sub_1003D4A48(AppDefaultsManager, 0);
  return (*(*(a1 + 40) + 16))(*(a1 + 40), 1);
}

void sub_1002EEE9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[DNU] Resetting metrics", buf, 2u);
    }

    v5 = +[BagService appstoredService];
    v6 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002EEFB0;
    v7[3] = &unk_10051ED90;
    v7[4] = a1;
    v8 = v3;
    [v5 bagOnQueue:v6 completionHandler:v7];
  }
}

uint64_t sub_1002EEFB0(uint64_t a1, void *a2)
{
  v3 = sub_1002EF010(*(a1 + 32), @"External request", a2);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

id sub_1002EF010(id a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = sub_100386854(MetricsContext, 2);
    sub_1003868F4(v7);
    v8 = sub_1002B57AC(MetricsCoordinator, 2);
    sub_1002B56DC(MetricsCoordinator, 2);
    sub_1002F0290(v3);
    v9 = sub_1001DD6F8();
    v3 = sub_1001DE1F0(v9, v6, v5);
  }

  return v3;
}

void sub_1002EF0F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002EF1A0;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1002EF1A0(uint64_t a1)
{
  if (sub_1002EDE64(*(a1 + 32)))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002EF2A8;
    v6[3] = &unk_10051CE68;
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v3;
    sub_1002EEC0C(v2, @"External Request", v6);
  }

  else
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[DNU] Not enabled to send personalization metrics", v5, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1002EF2A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v6 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002EF368;
    v8[3] = &unk_10051B2D0;
    v8[4] = v6;
    v9 = v5;
    dispatch_async(v7, v8);
  }
}

id sub_1002EF4EC(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v5 = objc_alloc_init(_TtC9appstored6LogKey);
  v6 = sub_1002AAAA4(a1, 1, v3);
  v39 = v6;
  if (v3 && v3[11] == 1)
  {
    v37 = v5;
    v38 = v4;
    v7 = v3;
    v8 = objc_alloc_init(DNUMetricsHandler);
    v10 = v7[9];
    if (v8)
    {
      objc_setProperty_nonatomic_copy(v8, v9, v10, 32);
    }

    v11 = sub_1002B5560();
    v12 = sub_1002B5800(v11);

    v13 = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v36 = v12;
    v14 = [v12 allValues];
    v15 = [v14 countByEnumeratingWithState:&v42 objects:buf count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v42 + 1) + 8 * i);
          if ([(DNUMetricsHandler *)v8 isCandidateAppMetadata:v19])
          {
            v20 = sub_1002AA480(a1, v19, 1, v7);
            v21 = v20;
            if (v20)
            {
              sub_1003D8174(v20, 2);
              [v13 addObject:v21];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v42 objects:buf count:16];
      }

      while (v16);
    }

    v22 = [v13 copy];
    v4 = v38;
    [v38 addObjectsFromArray:v22];

    v5 = v37;
    v6 = v39;
  }

  v23 = sub_1002A911C(a1, 1u, v6, v3);
  [v4 addObjectsFromArray:v23];
  sub_1002EE694(a1);
  sub_1002EE814(a1);
  v24 = [a1 createMetricsEventsForEventType:0 context:v3];
  [v4 addObjectsFromArray:v24];
  v25 = [a1 createMetricsEventsForEventType:2 context:v3];
  [v4 addObjectsFromArray:v25];
  v26 = dispatch_semaphore_create(0);
  v27 = sub_1002B5560();
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1002EF948;
  v40[3] = &unk_10051B348;
  v28 = v26;
  v41 = v28;
  sub_1002B9064(v27, 11, v40);

  v29 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v28, v29))
  {
    v30 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      *buf = 138543362;
      v47 = v34;
      v35 = v34;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "[%{public}@] Timed out waiting to sync installed apps with metadata", buf, 0xCu);
    }
  }

  v31 = [a1 createMetricsEventsForEventType:3 context:v3];
  [v4 addObjectsFromArray:v31];
  v32 = [v4 copy];

  return v32;
}

void sub_1002EF950(void *a1, void *a2, void *a3, void *a4)
{
  v20 = a2;
  if (a1)
  {
    v7 = a4;
    v8 = sub_1002EF010(a1, a3, v7);
    v9 = sub_1001DD6F8();
    if (v20)
    {
      v10 = v20[12];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = sub_1001DF334(v9, v11, v7);

    if (v12)
    {
      if (v20)
      {
        v13 = v20[12];
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      v15 = @"Past Reset Date";
      v16 = v14;
      sub_1003D4A48(AppDefaultsManager, 0);
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = objc_opt_class();
        v23 = 2114;
        v24 = @"Past Reset Date";
        v18 = v22;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Cleared actorID with reason: %{public}@", buf, 0x16u);
      }

      v19 = sub_1001DD6F8();
      sub_1001DE84C(v19, @"Past Reset Date", v16);
    }

    sub_100232BA0(v20, 0);
  }
}

void sub_1002EFB48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[_TtC9appstored10ASEMetrics alloc] initWithType:3 bag:v5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1002EFD18;
    v12[3] = &unk_1005221B0;
    v12[4] = *(a1 + 32);
    v14 = *(a1 + 48);
    v13 = *(a1 + 40);
    [(ASEMetrics *)v7 flushWithCompletionHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v6;
      v11 = v16;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: Error loading bag: %{public}@", buf, 0x16u);
    }

    v9 = *(a1 + 48);
    v10 = ASDErrorWithSafeUserInfo();
    (*(v9 + 16))(v9, 0, v10);
  }
}

void sub_1002EFD18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = v3;
    v6 = v11;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@]: Error sending metrics events. Error: %{public}@", &v10, 0x16u);
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    v10 = 138412290;
    v11 = objc_opt_class();
    v6 = v11;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%@] Completed sending metrics events", &v10, 0xCu);
  }

LABEL_5:
  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = ASDErrorWithSafeUserInfo();
    (*(v7 + 16))(v7, v3 == 0, v8);
  }

  v9 = sub_1001DD6F8();
  sub_1001DED80(v9, *(a1 + 40));
}

void sub_1002EFEB4(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = a1[6];

  sub_100232BA0(v3, 0);
}

void sub_1002F0054(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = ASDLogHandleForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (v6)
    {
      v16 = 138412290;
      v17 = objc_opt_class();
      v7 = v17;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Resetting dnu analytics gathering", &v16, 0xCu);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = v3;
      v10 = @"Switch Status Changed";
      sub_1003D4A48(AppDefaultsManager, 0);
      v11 = sub_1002EF010(v8, @"Switch Status Changed", v9);

      v12 = sub_1001DD6F8();
      sub_1001DE84C(v12, @"Switch Status Changed", v11);
    }

    v13 = sub_1001DD6F8();
    sub_1001DED80(v13, @"Switch Status Change");
  }

  else
  {
    if (v6)
    {
      v16 = 138412290;
      v17 = objc_opt_class();
      v14 = v17;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Stopping analytics gathering", &v16, 0xCu);
    }

    sub_1003D4A48(AppDefaultsManager, 0);
    sub_1002B563C(MetricsCoordinator, 2);
    sub_1002F0290(*(a1 + 32));
    v15 = sub_1001DD6F8();
    sub_1001DDC14(v15, @"com.apple.appstored.RecordDnu");

    v13 = sub_1001DD6F8();
    sub_1001DDC14(v13, @"com.apple.appstored.PostDnu");
  }
}

void sub_1002F0290(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10036C90C();
    [v1 modifyUsingTransaction:&stru_100522270];
  }
}

void sub_1002F02F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v9 = a2;
    v10 = v7;
    if (v6)
    {
      v11 = sub_1003D4804();
      v12 = v11;
      if (!v11)
      {
        v13 = +[NSUUID UUID];
        v12 = [v13 UUIDString];

        sub_1003D4A48(AppDefaultsManager, v12);
        v14 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v26) = 138543362;
          *(&v26 + 4) = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[DNU] Initiated session with actorID: %{public}@", &v26, 0xCu);
        }
      }

      v15 = sub_100386854(MetricsContext, 2);
      v17 = v15;
      if (v15)
      {
        v18 = v11 == 0;
        objc_setProperty_nonatomic_copy(v15, v16, v12, 16);
        v17[12] = v18;
        v17[11] = v18;
      }

      v19 = sub_1002EF4EC(v6, v17);
      if ([v19 count])
      {
        v20 = [[_TtC9appstored10ASEMetrics alloc] initWithType:3 bag:v9];
        *&v26 = _NSConcreteStackBlock;
        *(&v26 + 1) = 3221225472;
        v27 = sub_1002F0690;
        v28 = &unk_100522250;
        v21 = v19;
        v29 = v21;
        v30 = v6;
        v31 = v17;
        v32 = v8;
        v33 = v9;
        v34 = v10;
        [(ASEMetrics *)v20 enqueueEvents:v21 flushEvents:0 completionHandler:&v26];
      }

      else
      {
        v23 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          if (v17)
          {
            v24 = *(v17 + 9);
          }

          else
          {
            v24 = 0;
          }

          v25 = v24;
          LODWORD(v26) = 138412290;
          *(&v26 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%@] No events to report", &v26, 0xCu);
        }

        sub_1002EF950(v6, v17, @"Nothing to Post", v9);
        (*(v10 + 2))(v10, 0);
      }
    }
  }

  else
  {
    v22 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v26) = 138543362;
      *(&v26 + 4) = v5;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[DNU]: Error loading bag: %{public}@", &v26, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1002F0690(uint64_t a1)
{
  v2 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v20 + 1) + 8 * i) underlyingDictionary];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v5);
  }

  v19 = 0;
  v9 = [NSJSONSerialization dataWithJSONObject:v2 options:0 error:&v19];
  v10 = v19;
  if (v10)
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 138543618;
      v25 = v12;
      v26 = 2114;
      v27 = v10;
      v13 = v12;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Error generating transparency metrics: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      v14 = v14[19];
    }

    v15 = v14;
    v18 = v9;
    OSAWriteLogForSubmission();

    v11 = v18;
  }

  sub_1002EF950(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  (*(*(a1 + 72) + 16))(*(a1 + 72), 0, v16, v17);
}

BOOL sub_1002F0918(id a1, AppUsageDatabaseTransaction *a2)
{
  v2 = [(AppUsageDatabaseTransaction *)a2 connection];
  v3 = v2;
  if (v2)
  {
    sub_10022C810(v2, @"DELETE FROM app_events_personalization;", 0, 0);
  }

  return 1;
}

id sub_1002F09C8()
{
  objc_opt_self();
  if (qword_1005AAB90 != -1)
  {
    dispatch_once(&qword_1005AAB90, &stru_1005222B8);
  }

  v0 = qword_1005AAB88;

  return v0;
}

void sub_1002F0A20(id a1)
{
  v1 = [LaunchServicesCatalog alloc];
  v2 = sub_1003649C8();
  v13 = v2;
  if (v1)
  {
    v14.receiver = v1;
    v14.super_class = LaunchServicesCatalog;
    v1 = objc_msgSendSuper2(&v14, "init");
    if (v1)
    {
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4 = dispatch_queue_create("com.apple.AppStoreDaemon.LaunchServicesCatalog", v3);
      dispatchQueue = v1->_dispatchQueue;
      v1->_dispatchQueue = v4;

      objc_storeStrong(&v1->_progressCache, v2);
      v6 = sub_100213C7C([LibraryExpressionClassifier alloc], v1);
      v7 = sub_100341894([LibraryQueryPlanner alloc], v6);
      planner = v1->_planner;
      v1->_planner = v7;

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 addObserver:v1 selector:"_handleAppRegisteredNotification:" name:@"com.apple.LaunchServices.applicationRegistered" object:0];
      [v9 addObserver:v1 selector:"_handleAppUnregisteredNotification:" name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
      v10 = +[LSApplicationWorkspace defaultWorkspace];
      [v10 addObserver:v1];

      v11 = sub_1002EB36C();
      sub_1002EB6D8(v11, v1, "_handleLaunchAppMessage:fromDevice:", 3);
    }
  }

  v12 = qword_1005AAB88;
  qword_1005AAB88 = v1;
}

void sub_1002F0D04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002F0DC8;
  v6[3] = &unk_1005222E0;
  v6[4] = *(a1 + 40);
  v3 = sub_10036FDEC(v2, v6);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  v5 = [v3 copy];
  [WeakRetained catalogRegisteredApps:v5];
}

id sub_1002F0DC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [LSApplicationRecord alloc];
  v5 = [v3 bundleIdentifier];

  v6 = [v4 initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];
  if (v6)
  {
    v7 = sub_1002F0E78(*(a1 + 32), v6, 0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1002F0E78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && (sub_10040C5B4(v5) & 1) == 0)
  {
    v8 = [v5 isBeta];
    if (v5)
    {
      v9 = 2 * ([v5 applicationFamilyID] != 0);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9 | v8;
    if ([v5 isPlaceholder])
    {
      v11 = 0;
    }

    else
    {
      v11 = 4;
    }

    v12 = [v5 isLaunchProhibited];
    v13 = 16;
    if (!v12)
    {
      v13 = 0;
    }

    v14 = v10 | v11 | v13;
    if ([v5 isArcadeApp])
    {
      v15 = 32;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v5 isPlaceholder];
    v17 = 128;
    if (!v16)
    {
      v17 = 0;
    }

    v18 = v14 | v15 | v17;
    v19 = [ASDApp alloc];
    v20 = [v5 bundleIdentifier];
    v7 = [v19 initWithBundleID:v20];

    v21 = [v5 localizedName];
    [v7 setLocalizedName:v21];

    v22 = [v5 iTunesMetadata];
    v23 = [v22 managementDeclarationIdentifier];

    if (v23)
    {
      v18 |= 0x10000uLL;
    }

    v24 = [v5 iTunesMetadata];
    v25 = [v24 storeItemIdentifier];
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v56 = v6;
      if (v6)
      {
        v27 = 0;
        v28 = v6;
      }

      else
      {
        v28 = *(a1 + 40);
        if (v28)
        {
          v27 = 0;
        }

        else
        {
          v55 = +[BagService appstoredService];
          v28 = [v55 lastBagNoAsyncBlocking];
          v27 = 1;
        }
      }

      v29 = [v5 bundleIdentifier];
      v30 = [v28 itemIDForSystemAppWithBundleID:v29];
      v26 = [v30 unsignedLongLongValue];

      if (v27)
      {
      }

      v6 = v56;
      if (!v26)
      {
        goto LABEL_44;
      }

      v18 |= 0x200uLL;
    }

    [v7 setStoreItemID:v26];
    if ([v5 isBeta])
    {
      [v7 setStoreExternalVersionID:{objc_msgSend(v24, "betaVersionIdentifier")}];
    }

    else
    {
      v31 = v18 | 0x100;
      [v7 setStoreExternalVersionID:{objc_msgSend(v24, "versionIdentifier")}];
      if ((v18 & 0x200) == 0)
      {
        v32 = [v5 bundleIdentifier];
        v33 = sub_10036605C(*(a1 + 32), v32);

        if (v33)
        {
          v34 = 0;
        }

        else
        {
          v60 = 0;
          v61 = &v60;
          v62 = 0x3032000000;
          v63 = sub_1002F3430;
          v64 = sub_1002F3440;
          v65 = 0;
          v35 = sub_1002BB3F0();
          v57[0] = _NSConcreteStackBlock;
          v57[1] = 3221225472;
          v57[2] = sub_1002F349C;
          v57[3] = &unk_10051CF30;
          v59 = &v60;
          v58 = v32;
          [v35 readUsingSession:v57];

          v34 = v61[5];
          _Block_object_dispose(&v60, 8);
        }

        if (v34)
        {
          v36 = [AMSBuyParams buyParamsWithString:v34];
          v37 = [v36 parameterForKey:AMSBuyParamPropertyAppExtVrsId];
          v38 = v37;
          if (v37)
          {
            v39 = v6;
            v40 = [v37 longLongValue];
            v41 = v40 > [v24 versionIdentifier];
            v6 = v39;
            v31 = v18 | 0x100;
            if (v41)
            {
              v31 = v18 | 0x108;
              [v7 setUpdateBuyParams:v34];
            }
          }
        }
      }

      v18 = v31;
    }

    v42 = [v24 storeCohort];
    [v7 setStoreCohort:v42];

LABEL_44:
    v43 = [v5 appClipMetadata];

    if (v43)
    {
      v44 = v18 | 0x800;
    }

    else
    {
      v44 = v18;
    }

    [v7 setStatus:v44];
    [v7 setExtensions:sub_10040C464(v5)];
    if ([v7 isInstalled])
    {
      v45 = [v5 URL];
      v46 = [v45 path];
      [v7 setBundlePath:v46];

      v47 = [v5 executableURL];
      v48 = [v47 path];
      [v7 setExecutablePath:v48];
    }

    else
    {
      v49 = *(a1 + 32);
      v47 = [v5 bundleIdentifier];
      v48 = sub_10036605C(v49, v47);
      [v7 setRemoteProgress:v48];
    }

    v50 = [v5 shortVersionString];
    [v7 setBundleShortVersion:v50];

    v51 = [v5 exactBundleVersion];
    [v7 setBundleVersion:v51];

    v52 = [v24 artistName];
    [v7 setArtistName:v52];

    if ([v24 storeFront])
    {
      v53 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 storeFront]);
      [v7 setStoreFront:v53];
    }

    else
    {
      [v7 setStoreFront:0];
    }

    goto LABEL_54;
  }

  v7 = 0;
LABEL_54:

  return v7;
}

void sub_1002F1478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002F1528(uint64_t a1)
{
  v3 = sub_10036FDEC(*(a1 + 32), &stru_100522320);
  if ([v3 count])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    [WeakRetained catalogUnregisteredBundleIDs:v3];
  }
}

id sub_1002F15A0(id a1, LSApplicationProxy *a2)
{
  v2 = a2;
  v3 = [(LSApplicationProxy *)v2 appState];
  v4 = [v3 isPlaceholder];

  if (!v4 || (v5 = [LSApplicationRecord alloc], -[LSApplicationProxy bundleIdentifier](v2, "bundleIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:0 error:0], v6, v7, v8 = 0, !v7))
  {
    v8 = [(LSApplicationProxy *)v2 bundleIdentifier];
  }

  return v8;
}

void sub_1002F1764(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_storeStrong((*(a1 + 32) + 40), a2);
  v4 = sub_10034190C(*(*(a1 + 32) + 24), *(a1 + 40));
  v5 = [*(a1 + 48) count];
  v6 = *(a1 + 56);
  if (v5)
  {
    v7 = [NSPredicate predicateWithFormat:@"NOT bundleID IN %@", *(a1 + 48)];
    v8 = [v4 filteredArrayUsingPredicate:v7];
    (*(v6 + 16))(v6, v8, 0);
  }

  else
  {
    v7 = [v4 copy];
    (*(v6 + 16))(v6, v7, 0);
  }
}

void sub_1002F1994(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = +[BagService appstoredService];
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002F1A90;
    v9[3] = &unk_10051C340;
    v9[4] = v7;
    v10 = v5;
    v11 = *(a1 + 40);
    [v6 bagOnQueue:v8 completionHandler:v9];
  }
}

void sub_1002F1A90(uint64_t a1, void *a2)
{
  v20 = a2;
  objc_storeStrong((*(a1 + 32) + 40), a2);
  v19 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 bundleIdentifier];
        if (v9)
        {
          v10 = sub_1002F1DE8(*(a1 + 32), v9, v20);
          if (v10)
          {
            [v10 setAutoUpdateEnabled:{objc_msgSend(v8, "autoUpdateEnabled")}];
            v11 = *(a1 + 32);
            v12 = v9;
            if (v11)
            {
              v28 = 0;
              v29 = &v28;
              v30 = 0x3032000000;
              v31 = sub_1002F3430;
              v32 = sub_1002F3440;
              v33 = 0;
              v13 = sub_1002BB3F0();
              v25[0] = _NSConcreteStackBlock;
              v25[1] = 3221225472;
              v25[2] = sub_1002F3448;
              v25[3] = &unk_10051CF30;
              v27 = &v28;
              v26 = v12;
              [v13 readUsingSession:v25];

              v11 = v29[5];
              _Block_object_dispose(&v28, 8);
            }

            [v10 setRawUpdateData:v11];
            v14 = [v8 installDate];
            [v10 setUpdateInstallDate:v14];

            v15 = sub_1003649C8();
            v16 = sub_10036605C(v15, v12);
            [v10 setRemoteProgress:v16];

            [v19 addObject:v10];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v34 count:16];
    }

    while (v5);
  }

  v17 = *(a1 + 48);
  v18 = [v19 copy];
  (*(v17 + 16))(v17, v18, 0);
}

id sub_1002F1DE8(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a2;
    v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v6 allowPlaceholder:1 error:0];

    if (v7)
    {
      a1 = sub_1002F0E78(a1, v7, v5);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_1002F1F88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) bundleID];
  v6 = sub_1002F1DE8(v4, v5, v3);

  if (!v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = *(a1 + 40);
      v23 = v21;
      v24 = [v22 bundleID];
      *buf = 138543618;
      v26 = v21;
      v27 = 2114;
      v28 = v24;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Unable to launch. App not found", buf, 0x16u);
    }

    goto LABEL_7;
  }

  if ([v6 isPlaceholder])
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [v6 bundleID];
      *buf = 138543618;
      v26 = v8;
      v27 = 2114;
      v28 = v10;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Unable to launch messsages extension for placeholder", buf, 0x16u);
    }

LABEL_7:

LABEL_8:
    (*(*(a1 + 48) + 16))();
    goto LABEL_9;
  }

  if (*(a1 + 56) != 1)
  {
    goto LABEL_8;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [LSApplicationRecord alloc];
  v13 = [v6 bundleID];
  v14 = [v12 initWithBundleIdentifier:v13 allowPlaceholder:0 error:0];

  v15 = sub_10040C848(v14, 1);
  v16 = v15;
  if (v15)
  {
    v17 = [v15 bundleIdentifier];
    v18 = [NSString stringWithFormat:@"sms-private://app?appBundleID=%@", v17];
    v19 = [NSURL URLWithString:v18];

    v20 = +[LSApplicationWorkspace defaultWorkspace];
    [v20 openSensitiveURL:v19 withOptions:0];

    (*(*(a1 + 48) + 16))();
  }

  objc_autoreleasePoolPop(v11);
LABEL_9:
}

void sub_1002F2438(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_100003B90();
      v16 = *(a1 + 32);
      v17 = 138543874;
      v18 = v15;
      v19 = 2114;
      v20 = v16;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Error attempting to launch app %{public}@: %{public}@", &v17, 0x20u);
    }

    v8 = 2;
  }

  else
  {
    v10 = [XDCLaunchAppResponse alloc];
    if (v5)
    {
      Property = objc_getProperty(v5, v9, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v12 = Property;
    v13 = [(XDCLaunchAppResponse *)v10 initWithData:v12];

    if (v13)
    {
      v8 = v13[2];
    }

    else
    {
      v8 = 0;
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v8);
  }
}

void sub_1002F26B4(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 40), a2);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) bundleID];
  v7 = sub_1002F1DE8(v5, v6, v4);

  if (v7)
  {
    if (([v7 isPlaceholder] & 1) == 0 && !objc_msgSend(v7, "isLaunchProhibited"))
    {
      v12 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
      v13 = [v7 bundleID];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1002F2998;
      v20[3] = &unk_1005223C0;
      v23 = *(a1 + 48);
      v14 = v7;
      v15 = *(a1 + 32);
      v21 = v14;
      v22 = v15;
      [v12 openApplication:v13 withOptions:0 completion:v20];

      goto LABEL_9;
    }

    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [v7 bundleID];
      *buf = 138544130;
      v25 = v9;
      v26 = 2114;
      v27 = v11;
      v28 = 1024;
      v29 = [v7 isPlaceholder];
      v30 = 1024;
      v31 = [v7 isLaunchProhibited];
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Unable to launch. isPlaceholder: %{BOOL}d launchProhibited: %{BOOL}d", buf, 0x22u);
    }
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 40);
      v18 = v16;
      v19 = [v17 bundleID];
      *buf = 138543618;
      v25 = v16;
      v26 = 2114;
      v27 = v19;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Unable to locate app to launch", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_9:
}

void sub_1002F2998(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (ASDErrorIsEqual())
  {
    v5 = *(*(a1 + 48) + 16);
LABEL_13:
    v5();
    goto LABEL_14;
  }

  if (!ASDErrorIsEqual())
  {
    v5 = *(*(a1 + 48) + 16);
    goto LABEL_13;
  }

  v6 = [*(a1 + 32) bundlePath];

  if (!v6)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [v12 bundleID];
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Unable to launch because there is no bundle path", &v15, 0x16u);
    }

    v5 = *(*(a1 + 48) + 16);
    goto LABEL_13;
  }

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (ASDErrorIsEqual())
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v9);

LABEL_14:
}

id sub_1002F2C58(uint64_t a1)
{
  v2 = [LSApplicationRecord enumeratorWithOptions:0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002F2D28;
  v6[3] = &unk_1005223E8;
  v6[4] = *(a1 + 32);
  v3 = sub_100402630(v2, v6);
  v4 = sub_100402718(v3, *(a1 + 40));

  return v4;
}

id sub_1002F2D28(uint64_t a1, void *a2)
{
  v2 = sub_1002F0E78(*(a1 + 32), a2, 0);
  if (v2)
  {
    sub_10036BC58(Optional, v2);
  }

  else
  {
    sub_10036BBC4();
  }
  v3 = ;

  return v3;
}

id sub_1002F2E64(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = +[LSDatabaseContext sharedDatabaseContext];
  v4 = [v3 startAccessingReturningError:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = sub_1002F1DE8(*(a1 + 40), *(*(&v13 + 1) + 8 * i), 0);
        if (v10)
        {
          [v2 addObject:{v10, v13}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (v4)
  {
    [v3 stopAccessing];
  }

  v11 = [v2 objectEnumerator];

  return v11;
}

id sub_1002F30E0(uint64_t a1)
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002F329C;
  v15[3] = &unk_100522410;
  v2 = *(a1 + 32);
  v16 = *(a1 + 40);
  v3 = sub_10036FDEC(v2, v15);
  v4 = [LSApplicationRecord enumeratorWithOptions:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002F32DC;
  v12[3] = &unk_100522438;
  v13 = v3;
  v14 = *(a1 + 32);
  v5 = v3;
  [v4 setFilter:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002F33C0;
  v10[3] = &unk_100522460;
  v9 = *(a1 + 40);
  v6 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  v7 = sub_100402630(v4, v10);

  return v7;
}

id sub_1002F329C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedLongLongValue];

  return [v2 bundleIDForSystemAppWithItemID:v3];
}

uint64_t sub_1002F32DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  if (v4 && (v5 = v4, v6 = *(a1 + 32), [v3 bundleIdentifier], v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = objc_msgSend(v6, "containsObject:", v7), v7, v5, (v6 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    v9 = [v3 iTunesMetadata];
    v10 = v9;
    if (v9)
    {
      v11 = *(a1 + 40);
      v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 storeItemIdentifier]);
      v8 = [v11 containsObject:v12];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id sub_1002F33C0(uint64_t a1, void *a2)
{
  v2 = sub_1002F0E78(*(a1 + 32), a2, *(a1 + 40));
  if (v2)
  {
    sub_10036BC58(Optional, v2);
  }

  else
  {
    sub_10036BBC4();
  }
  v3 = ;

  return v3;
}

uint64_t sub_1002F3430(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002F3448(uint64_t a1, id a2)
{
  v3 = sub_10040539C(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1002F349C(uint64_t a1, id a2)
{
  v3 = sub_1004050A4(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1002F35E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002F36A4;
  block[3] = &unk_10051AEE8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = v3;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_1002F36A4(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"bundleIDs"];
  v4 = [v3 copy];

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1002F384C;
  v13 = &unk_1005224B0;
  v5 = *(a1 + 48);
  v14 = *(a1 + 40);
  v15 = v5;
  v6 = sub_10036FDEC(v4, &v10);
  if ([v6 count])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v8 = [v6 copy];
    [WeakRetained catalogRegisteredApps:v8];
  }

  else
  {
    WeakRetained = ASDLogHandleForCategory();
    if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v9 = objc_opt_class();
    *buf = 138412290;
    v17 = v9;
    v8 = v9;
    _os_log_error_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "[%@] Apps registered notification did not contain any apps", buf, 0xCu);
  }

LABEL_5:
}

id sub_1002F384C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];

  v5 = sub_1002F0E78(*(a1 + 32), v4, *(a1 + 40));

  return v5;
}

void sub_1002F39A0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = +[LSDatabaseContext sharedDatabaseContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002F3AA0;
  v7[3] = &unk_10051D0E8;
  v8 = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  [v3 accessUsingBlock:v7];

  if ([v4 count])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    [WeakRetained catalogUnregisteredBundleIDs:v4];
  }
}

void sub_1002F3AA0(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [LSApplicationRecord alloc];
        v9 = [v8 initWithBundleIdentifier:v7 allowPlaceholder:0 error:{0, v10}];
        if (!v9)
        {
          [*(a1 + 40) addObject:v7];
        }

        sub_100365318(*(*(a1 + 48) + 32), v7);
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1002F3DE4(uint64_t a1, int a2)
{
  v4 = objc_alloc_init(XDCLaunchAppResponse);
  if (v4)
  {
    v4->_status = a2;
  }

  v8 = v4;
  v5 = sub_100342264(*(a1 + 32), v4, 6);
  v6 = sub_1002EB36C();
  v7 = v6;
  if (v6)
  {
    sub_1002EB834(v6, v5, *(a1 + 40), 0, 0);
  }
}

void sub_1002F3F38(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AAB98;
  qword_1005AAB98 = v1;
}

void sub_1002F4104(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v2;
    v28 = 2114;
    v29 = @"com.apple.appstored";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Starting subscription coordinator for client: %{public}@", buf, 0x16u);
  }

  v18 = sub_1002F4648(*(a1 + 32), 1uLL, v2);
  v4 = sub_1002F46A0(*(a1 + 32), 1uLL, v18);
  v22 = sub_1002F4648(*(a1 + 32), 0, v2);
  v20 = sub_1002F46A0(*(a1 + 32), 0, v22);
  v21 = sub_1002F4648(*(a1 + 32), 2uLL, v2);
  v5 = sub_1002F46A0(*(a1 + 32), 2uLL, v21);
  v6 = sub_1002F4648(*(a1 + 32), 3uLL, v2);
  v25 = sub_1002F46A0(*(a1 + 32), 3uLL, v6);
  v7 = sub_1002F4648(*(a1 + 32), 4uLL, v2);
  v24 = sub_1002F46A0(*(a1 + 32), 4uLL, v7);
  v8 = sub_1002F4648(*(a1 + 32), 5uLL, v2);
  v23 = sub_1002F46A0(*(a1 + 32), 5uLL, v8);
  v9 = sub_1002F4648(*(a1 + 32), 6uLL, v2);
  v10 = sub_1002F46A0(*(a1 + 32), 6uLL, v9);
  v11 = sub_1002F4648(*(a1 + 32), 7uLL, v2);
  obj = sub_1002F46A0(*(a1 + 32), 7uLL, v11);
  v12 = v4;
  if (v4 || (v12 = v20) != 0 || (v12 = v5) != 0 || (v12 = v25) != 0 || (v12 = v24) != 0 || (v12 = v23) != 0 || (v12 = v10) != 0 || (v12 = obj) != 0)
  {
    objc_storeStrong((*(a1 + 32) + 16), v12);
  }

  v17 = v5;
  if (v25 || v24 || v23 || v10)
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v27 = v2;
      v28 = 2114;
      v29 = v25;
      v30 = 2114;
      v31 = v24;
      v32 = 2114;
      v33 = v23;
      v34 = 2114;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%@] Starting with musicAccountID: %{public}@ tvAccountID: %{public}@ iCloudAccountID: %{public}@ podcastAccountID: %{public}@", buf, 0x34u);
    }
  }

  v14 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(a1 + 32) + 16);
    *buf = 138413058;
    v27 = v2;
    v28 = 2114;
    v29 = v20;
    v30 = 2114;
    v31 = v4;
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Starting with newsAccountID: %{public}@ appStoreAccountID: %{public}@ lastAccount: %{public}@", buf, 0x2Au);
  }

  sub_1002F4744(*(a1 + 32), 0, v22, 0);
  sub_1002F4744(*(a1 + 32), 1uLL, v18, 0);
  sub_1002F4744(*(a1 + 32), 2uLL, v21, 0);
  sub_1002F4744(*(a1 + 32), 3uLL, v6, 0);
  sub_1002F4744(*(a1 + 32), 4uLL, v7, 0);
  sub_1002F4744(*(a1 + 32), 5uLL, v8, 0);
  sub_1002F4744(*(a1 + 32), 6uLL, v9, 0);
  sub_1002F4744(*(a1 + 32), 7uLL, v11, 0);
  v16 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Subscription coordinator startup complete", buf, 0xCu);
  }
}