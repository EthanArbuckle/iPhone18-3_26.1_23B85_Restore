@interface MediaLibraryItem
- (NSDictionary)mediaLibraryDictionary;
@end

@implementation MediaLibraryItem

- (NSDictionary)mediaLibraryDictionary
{
  hasVideo = [(MediaLibraryItem *)self hasVideo];
  if ([hasVideo BOOLValue])
  {
    v4 = 256;
  }

  else
  {
    v4 = 4;
  }

  v74 = objc_opt_new();
  v92[0] = &off_100501138;
  dateAccessed = [(MediaLibraryItem *)self dateAccessed];
  v93[0] = dateAccessed;
  v92[1] = &off_100501150;
  album = [(MediaLibraryItem *)self album];
  v85 = album;
  if (!album)
  {
    album = +[NSNull null];
  }

  v60 = album;
  v93[1] = album;
  v92[2] = &off_100501168;
  title = [(MediaLibraryItem *)self title];
  v7 = title;
  if (!title)
  {
    title = +[NSNull null];
  }

  v59 = title;
  v93[2] = title;
  v92[3] = &off_100501180;
  fileSize = [(MediaLibraryItem *)self fileSize];
  v93[3] = fileSize;
  v92[4] = &off_100501198;
  externalGuid = [(MediaLibraryItem *)self externalGuid];
  v9 = externalGuid;
  if (!externalGuid)
  {
    externalGuid = +[NSNull null];
  }

  v58 = externalGuid;
  v93[4] = externalGuid;
  v92[5] = &off_1005011B0;
  bookmarkTimeMillis = [(MediaLibraryItem *)self bookmarkTimeMillis];
  v93[5] = bookmarkTimeMillis;
  v92[6] = &off_1005011C8;
  seriesName = [(MediaLibraryItem *)self seriesName];
  v11 = seriesName;
  if (!seriesName)
  {
    seriesName = +[NSNull null];
  }

  v84 = v7;
  v57 = seriesName;
  v93[6] = seriesName;
  v92[7] = &off_1005011E0;
  totalTimeMillis = [(MediaLibraryItem *)self totalTimeMillis];
  v93[7] = totalTimeMillis;
  v92[8] = &off_1005011F8;
  itemDescription = [(MediaLibraryItem *)self itemDescription];
  v13 = itemDescription;
  if (!itemDescription)
  {
    itemDescription = +[NSNull null];
  }

  v56 = itemDescription;
  v93[8] = itemDescription;
  v92[9] = &off_100501210;
  v77 = [NSNumber numberWithUnsignedInt:v4];
  v93[9] = v77;
  v92[10] = &off_100501228;
  hasVideo2 = [(MediaLibraryItem *)self hasVideo];
  v93[10] = hasVideo2;
  v92[11] = &off_100501240;
  feedUrl = [(MediaLibraryItem *)self feedUrl];
  v15 = feedUrl;
  if (!feedUrl)
  {
    feedUrl = +[NSNull null];
  }

  v55 = feedUrl;
  v93[11] = feedUrl;
  v92[12] = &off_100501258;
  itemDescription2 = [(MediaLibraryItem *)self itemDescription];
  v17 = itemDescription2;
  if (!itemDescription2)
  {
    itemDescription2 = +[NSNull null];
  }

  v54 = itemDescription2;
  v93[12] = itemDescription2;
  v92[13] = &off_100501270;
  playlistId = [(MediaLibraryItem *)self playlistId];
  v19 = playlistId;
  if (!playlistId)
  {
    playlistId = +[NSNull null];
  }

  v53 = playlistId;
  v93[13] = playlistId;
  v92[14] = &off_100501288;
  dateReleased = [(MediaLibraryItem *)self dateReleased];
  v21 = dateReleased;
  if (!dateReleased)
  {
    dateReleased = +[NSNull null];
  }

  v52 = dateReleased;
  v93[14] = dateReleased;
  v92[15] = &off_1005012A0;
  artist = [(MediaLibraryItem *)self artist];
  v89 = artist;
  if (!artist)
  {
    artist = +[NSNull null];
  }

  v51 = artist;
  v93[15] = artist;
  v92[16] = &off_1005012B8;
  totalTimeMillis2 = [(MediaLibraryItem *)self totalTimeMillis];
  v93[16] = totalTimeMillis2;
  v92[17] = &off_1005012D0;
  v69 = [NSNumber numberWithUnsignedInt:v4];
  v93[17] = v69;
  v92[18] = &off_1005012E8;
  activeDsid = [(MediaLibraryItem *)self activeDsid];
  v88 = activeDsid;
  if (!activeDsid)
  {
    activeDsid = +[NSNull null];
  }

  v50 = activeDsid;
  v93[18] = activeDsid;
  v92[19] = &off_100501300;
  playCount = [(MediaLibraryItem *)self playCount];
  v93[19] = playCount;
  v92[20] = &off_100501318;
  serpentId = [(MediaLibraryItem *)self serpentId];
  v87 = serpentId;
  if (!serpentId)
  {
    serpentId = +[NSNull null];
  }

  v72 = v19;
  v49 = serpentId;
  v93[20] = serpentId;
  v92[21] = &off_100501330;
  hasBeenPlayed = [(MediaLibraryItem *)self hasBeenPlayed];
  v93[21] = hasBeenPlayed;
  v92[22] = &off_100501348;
  activeDsid2 = [(MediaLibraryItem *)self activeDsid];
  v66 = activeDsid2;
  if (!activeDsid2)
  {
    activeDsid2 = +[NSNull null];
  }

  v75 = v15;
  v48 = activeDsid2;
  v93[22] = activeDsid2;
  v92[23] = &off_100501360;
  playCount2 = [(MediaLibraryItem *)self playCount];
  v93[23] = playCount2;
  v92[24] = &off_100501378;
  itemFilePath = [(MediaLibraryItem *)self itemFilePath];
  v27 = itemFilePath;
  if (!itemFilePath)
  {
    itemFilePath = +[NSNull null];
  }

  v82 = v9;
  v47 = itemFilePath;
  v93[24] = itemFilePath;
  v92[25] = &off_100501390;
  statsDownloadIdentifier = [(MediaLibraryItem *)self statsDownloadIdentifier];
  v93[25] = statsDownloadIdentifier;
  v92[26] = &off_1005013A8;
  dateReleased2 = [(MediaLibraryItem *)self dateReleased];
  v29 = dateReleased2;
  if (!dateReleased2)
  {
    dateReleased2 = +[NSNull null];
  }

  v71 = v21;
  v73 = v17;
  v78 = v13;
  v80 = v11;
  v46 = dateReleased2;
  v93[26] = dateReleased2;
  v92[27] = &off_1005013C0;
  artworkTokenId = [(MediaLibraryItem *)self artworkTokenId];
  stringValue = [artworkTokenId stringValue];
  v31 = stringValue;
  if (!stringValue)
  {
    v44 = +[NSUUID UUID];
    stringValue = [v44 UUIDString];
  }

  v45 = stringValue;
  v93[27] = stringValue;
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