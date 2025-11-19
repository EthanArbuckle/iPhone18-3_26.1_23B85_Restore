@interface MediaLibraryItem
- (NSDictionary)mediaLibraryDictionary;
@end

@implementation MediaLibraryItem

- (NSDictionary)mediaLibraryDictionary
{
  v3 = [(MediaLibraryItem *)self hasVideo];
  if ([v3 BOOLValue])
  {
    v4 = 256;
  }

  else
  {
    v4 = 4;
  }

  v74 = objc_opt_new();
  v92[0] = &off_100501138;
  v86 = [(MediaLibraryItem *)self dateAccessed];
  v93[0] = v86;
  v92[1] = &off_100501150;
  v5 = [(MediaLibraryItem *)self album];
  v85 = v5;
  if (!v5)
  {
    v5 = +[NSNull null];
  }

  v60 = v5;
  v93[1] = v5;
  v92[2] = &off_100501168;
  v6 = [(MediaLibraryItem *)self title];
  v7 = v6;
  if (!v6)
  {
    v6 = +[NSNull null];
  }

  v59 = v6;
  v93[2] = v6;
  v92[3] = &off_100501180;
  v83 = [(MediaLibraryItem *)self fileSize];
  v93[3] = v83;
  v92[4] = &off_100501198;
  v8 = [(MediaLibraryItem *)self externalGuid];
  v9 = v8;
  if (!v8)
  {
    v8 = +[NSNull null];
  }

  v58 = v8;
  v93[4] = v8;
  v92[5] = &off_1005011B0;
  v81 = [(MediaLibraryItem *)self bookmarkTimeMillis];
  v93[5] = v81;
  v92[6] = &off_1005011C8;
  v10 = [(MediaLibraryItem *)self seriesName];
  v11 = v10;
  if (!v10)
  {
    v10 = +[NSNull null];
  }

  v84 = v7;
  v57 = v10;
  v93[6] = v10;
  v92[7] = &off_1005011E0;
  v79 = [(MediaLibraryItem *)self totalTimeMillis];
  v93[7] = v79;
  v92[8] = &off_1005011F8;
  v12 = [(MediaLibraryItem *)self itemDescription];
  v13 = v12;
  if (!v12)
  {
    v12 = +[NSNull null];
  }

  v56 = v12;
  v93[8] = v12;
  v92[9] = &off_100501210;
  v77 = [NSNumber numberWithUnsignedInt:v4];
  v93[9] = v77;
  v92[10] = &off_100501228;
  v76 = [(MediaLibraryItem *)self hasVideo];
  v93[10] = v76;
  v92[11] = &off_100501240;
  v14 = [(MediaLibraryItem *)self feedUrl];
  v15 = v14;
  if (!v14)
  {
    v14 = +[NSNull null];
  }

  v55 = v14;
  v93[11] = v14;
  v92[12] = &off_100501258;
  v16 = [(MediaLibraryItem *)self itemDescription];
  v17 = v16;
  if (!v16)
  {
    v16 = +[NSNull null];
  }

  v54 = v16;
  v93[12] = v16;
  v92[13] = &off_100501270;
  v18 = [(MediaLibraryItem *)self playlistId];
  v19 = v18;
  if (!v18)
  {
    v18 = +[NSNull null];
  }

  v53 = v18;
  v93[13] = v18;
  v92[14] = &off_100501288;
  v20 = [(MediaLibraryItem *)self dateReleased];
  v21 = v20;
  if (!v20)
  {
    v20 = +[NSNull null];
  }

  v52 = v20;
  v93[14] = v20;
  v92[15] = &off_1005012A0;
  v22 = [(MediaLibraryItem *)self artist];
  v89 = v22;
  if (!v22)
  {
    v22 = +[NSNull null];
  }

  v51 = v22;
  v93[15] = v22;
  v92[16] = &off_1005012B8;
  v70 = [(MediaLibraryItem *)self totalTimeMillis];
  v93[16] = v70;
  v92[17] = &off_1005012D0;
  v69 = [NSNumber numberWithUnsignedInt:v4];
  v93[17] = v69;
  v92[18] = &off_1005012E8;
  v23 = [(MediaLibraryItem *)self activeDsid];
  v88 = v23;
  if (!v23)
  {
    v23 = +[NSNull null];
  }

  v50 = v23;
  v93[18] = v23;
  v92[19] = &off_100501300;
  v68 = [(MediaLibraryItem *)self playCount];
  v93[19] = v68;
  v92[20] = &off_100501318;
  v24 = [(MediaLibraryItem *)self serpentId];
  v87 = v24;
  if (!v24)
  {
    v24 = +[NSNull null];
  }

  v72 = v19;
  v49 = v24;
  v93[20] = v24;
  v92[21] = &off_100501330;
  v67 = [(MediaLibraryItem *)self hasBeenPlayed];
  v93[21] = v67;
  v92[22] = &off_100501348;
  v25 = [(MediaLibraryItem *)self activeDsid];
  v66 = v25;
  if (!v25)
  {
    v25 = +[NSNull null];
  }

  v75 = v15;
  v48 = v25;
  v93[22] = v25;
  v92[23] = &off_100501360;
  v65 = [(MediaLibraryItem *)self playCount];
  v93[23] = v65;
  v92[24] = &off_100501378;
  v26 = [(MediaLibraryItem *)self itemFilePath];
  v27 = v26;
  if (!v26)
  {
    v26 = +[NSNull null];
  }

  v82 = v9;
  v47 = v26;
  v93[24] = v26;
  v92[25] = &off_100501390;
  v64 = [(MediaLibraryItem *)self statsDownloadIdentifier];
  v93[25] = v64;
  v92[26] = &off_1005013A8;
  v28 = [(MediaLibraryItem *)self dateReleased];
  v29 = v28;
  if (!v28)
  {
    v28 = +[NSNull null];
  }

  v71 = v21;
  v73 = v17;
  v78 = v13;
  v80 = v11;
  v46 = v28;
  v93[26] = v28;
  v92[27] = &off_1005013C0;
  v63 = [(MediaLibraryItem *)self artworkTokenId];
  v30 = [v63 stringValue];
  v31 = v30;
  if (!v30)
  {
    v44 = +[NSUUID UUID];
    v30 = [v44 UUIDString];
  }

  v45 = v30;
  v93[27] = v30;
  v92[28] = &off_1005013D8;
  v62 = +[MediaLibraryItem remeberBookmark];
  v93[28] = v62;
  v92[29] = &off_1005013F0;
  v61 = +[MediaLibraryItem playbackStart];
  v93[29] = v61;
  v92[30] = &off_100501408;
  v32 = +[MediaLibraryItem isOTAPurchased];
  v93[30] = v32;
  v92[31] = &off_100501420;
  v33 = +[MediaLibraryItem needsRestore];
  v93[31] = v33;
  v92[32] = &off_100501438;
  v34 = +[MediaLibraryItem chosenByAutofill];
  v93[32] = v34;
  v92[33] = &off_100501450;
  v35 = +[MediaLibraryItem isCompilation];
  v93[33] = v35;
  v92[34] = &off_100501468;
  v36 = +[MediaLibraryItem playbackRelativeVolume];
  v93[34] = v36;
  v93[35] = &off_100501498;
  v92[35] = &off_100501480;
  v92[36] = &off_1005014B0;
  v93[36] = &off_1005014C8;
  v93[37] = &off_1005014C8;
  v92[37] = &off_1005014E0;
  v92[38] = &off_1005014F8;
  v93[38] = &off_1005014C8;
  v93[39] = &off_1005014C8;
  v92[39] = &off_100501510;
  v92[40] = &off_100501528;
  v93[40] = &off_1005014C8;
  v93[41] = &off_1005014C8;
  v92[41] = &off_100501540;
  v92[42] = &off_100501558;
  v93[42] = &off_1005014C8;
  v93[43] = &off_1005014C8;
  v92[43] = &off_100501570;
  v92[44] = &off_100501588;
  v93[44] = &off_1005014C8;
  v93[45] = &off_1005014C8;
  v92[45] = &off_1005015A0;
  v92[46] = &off_1005015B8;
  v93[46] = &off_1005014C8;
  v93[47] = &off_1005014C8;
  v92[47] = &off_1005015D0;
  v92[48] = &off_1005015E8;
  v93[48] = &off_1005014C8;
  v93[49] = &off_1005014C8;
  v92[49] = &off_100501600;
  v92[50] = &off_100501618;
  v93[50] = &off_1005014C8;
  v93[51] = &off_1005014C8;
  v92[51] = &off_100501630;
  v92[52] = &off_100501648;
  v93[52] = &off_1005014C8;
  v93[53] = &off_1005014C8;
  v92[53] = &off_100501660;
  v92[54] = &off_100501678;
  v93[54] = &off_1005014C8;
  v93[55] = &off_1005014C8;
  v92[55] = &off_100501690;
  v92[56] = &off_1005016A8;
  v93[56] = &off_1005014C8;
  v93[57] = &off_1005014C8;
  v92[57] = &off_1005016C0;
  v92[58] = &off_1005016D8;
  v93[58] = &off_1005014C8;
  v93[59] = &off_1005014C8;
  v92[59] = &off_1005016F0;
  v92[60] = &off_100501708;
  v93[60] = &off_1005014C8;
  v37 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:61];
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_100140454;
  v90[3] = &unk_1004DDA98;
  v38 = v74;
  v91 = v38;
  [v37 enumerateKeysAndObjectsUsingBlock:v90];

  if (!v31)
  {
  }

  if (!v29)
  {
  }

  if (!v27)
  {
  }

  if (!v66)
  {
  }

  v39 = v87;
  if (!v87)
  {

    v39 = 0;
  }

  v40 = v88;
  if (!v88)
  {

    v40 = 0;
  }

  v41 = v89;
  if (!v89)
  {

    v41 = 0;
  }

  if (!v71)
  {
  }

  if (!v72)
  {
  }

  if (!v73)
  {
  }

  if (!v75)
  {
  }

  if (!v78)
  {
  }

  if (!v80)
  {
  }

  if (!v82)
  {
  }

  if (!v84)
  {
  }

  if (!v85)
  {
  }

  v42 = v38;
  return v38;
}

@end