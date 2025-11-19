@interface INMessageLinkMetadata
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INMessageLinkMetadata)init;
- (INMessageLinkMetadata)initWithCoder:(id)a3;
- (INMessageLinkMetadata)initWithSiteName:(NSString *)siteName summary:(NSString *)summary title:(NSString *)title openGraphType:(NSString *)openGraphType linkURL:(NSURL *)linkURL;
- (INMessageLinkMetadata)initWithSiteName:(id)a3 summary:(id)a4 title:(id)a5 openGraphType:(id)a6 itemType:(id)a7 linkURL:(id)a8 originalURL:(id)a9 imageURLs:(id)a10 iconURLs:(id)a11 creator:(id)a12 linkMediaType:(int64_t)a13 iTunesStoreIdentifier:(id)a14 iTunesStoreFrontIdentifier:(id)a15 songTitle:(id)a16 songArtist:(id)a17 songAlbum:(id)a18 albumName:(id)a19 albumArtist:(id)a20 musicVideoName:(id)a21 musicVideoArtist:(id)a22 artistName:(id)a23 artistGenre:(id)a24 playlistName:(id)a25 playlistCurator:(id)a26 radioName:(id)a27 radioCurator:(id)a28 softwareName:(id)a29 softwareGenre:(id)a30 softwarePlatform:(id)a31 bookName:(id)a32 bookAuthor:(id)a33 audioBookName:(id)a34 audioBookAuthor:(id)a35 audioBookNarrator:(id)a36 podcastName:(id)a37 podcastArtist:(id)a38 podcastEpisodeName:(id)a39 podcastEpisodePodcastName:(id)a40 podcastEpisodeArtist:(id)a41 podcastEpisodeReleaseDate:(id)a42 tvEpisodeEpisodeName:(id)a43 tvEpisodeSeasonName:(id)a44 tvEpisodeGenre:(id)a45 tvSeasonName:(id)a46 tvSeasonGenre:(id)a47 movieName:(id)a48 movieGenre:(id)a49 tvShowName:(id)a50 movieBundleName:(id)a51 movieBundleGenre:(id)a52 appleTvTitle:(id)a53 appleTvSubtitle:(id)a54;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INMessageLinkMetadata

- (id)_dictionaryRepresentation
{
  v160[52] = *MEMORY[0x1E69E9840];
  v159[0] = @"siteName";
  siteName = self->_siteName;
  v157 = siteName;
  if (!siteName)
  {
    siteName = [MEMORY[0x1E695DFB0] null];
  }

  v101 = siteName;
  v160[0] = siteName;
  v159[1] = @"summary";
  summary = self->_summary;
  v156 = summary;
  if (!summary)
  {
    summary = [MEMORY[0x1E695DFB0] null];
  }

  v100 = summary;
  v160[1] = summary;
  v159[2] = @"title";
  title = self->_title;
  v155 = title;
  if (!title)
  {
    title = [MEMORY[0x1E695DFB0] null];
  }

  v99 = title;
  v160[2] = title;
  v159[3] = @"openGraphType";
  openGraphType = self->_openGraphType;
  v154 = openGraphType;
  if (!openGraphType)
  {
    openGraphType = [MEMORY[0x1E695DFB0] null];
  }

  v98 = openGraphType;
  v160[3] = openGraphType;
  v159[4] = @"itemType";
  itemType = self->_itemType;
  v153 = itemType;
  if (!itemType)
  {
    itemType = [MEMORY[0x1E695DFB0] null];
  }

  v97 = itemType;
  v160[4] = itemType;
  v159[5] = @"linkURL";
  linkURL = self->_linkURL;
  v152 = linkURL;
  if (!linkURL)
  {
    linkURL = [MEMORY[0x1E695DFB0] null];
  }

  v96 = linkURL;
  v160[5] = linkURL;
  v159[6] = @"originalURL";
  originalURL = self->_originalURL;
  v151 = originalURL;
  if (!originalURL)
  {
    originalURL = [MEMORY[0x1E695DFB0] null];
  }

  v95 = originalURL;
  v160[6] = originalURL;
  v159[7] = @"imageURLs";
  imageURLs = self->_imageURLs;
  v150 = imageURLs;
  if (!imageURLs)
  {
    imageURLs = [MEMORY[0x1E695DFB0] null];
  }

  v94 = imageURLs;
  v160[7] = imageURLs;
  v159[8] = @"iconURLs";
  iconURLs = self->_iconURLs;
  v149 = iconURLs;
  if (!iconURLs)
  {
    iconURLs = [MEMORY[0x1E695DFB0] null];
  }

  v93 = iconURLs;
  v160[8] = iconURLs;
  v159[9] = @"creator";
  creator = self->_creator;
  v148 = creator;
  if (!creator)
  {
    creator = [MEMORY[0x1E695DFB0] null];
  }

  v92 = creator;
  v160[9] = creator;
  v159[10] = @"linkMediaType";
  v147 = [MEMORY[0x1E696AD98] numberWithInteger:self->_linkMediaType];
  v160[10] = v147;
  v159[11] = @"iTunesStoreIdentifier";
  iTunesStoreIdentifier = self->_iTunesStoreIdentifier;
  v146 = iTunesStoreIdentifier;
  if (!iTunesStoreIdentifier)
  {
    iTunesStoreIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v160[11] = iTunesStoreIdentifier;
  v159[12] = @"iTunesStoreFrontIdentifier";
  iTunesStoreFrontIdentifier = self->_iTunesStoreFrontIdentifier;
  v144 = iTunesStoreFrontIdentifier;
  if (!iTunesStoreFrontIdentifier)
  {
    iTunesStoreFrontIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v160[12] = iTunesStoreFrontIdentifier;
  v159[13] = @"songTitle";
  songTitle = self->_songTitle;
  v142 = songTitle;
  if (!songTitle)
  {
    songTitle = [MEMORY[0x1E695DFB0] null];
  }

  v160[13] = songTitle;
  v159[14] = @"songArtist";
  songArtist = self->_songArtist;
  v140 = songArtist;
  if (!songArtist)
  {
    songArtist = [MEMORY[0x1E695DFB0] null];
  }

  v160[14] = songArtist;
  v159[15] = @"songAlbum";
  songAlbum = self->_songAlbum;
  v138 = songAlbum;
  if (!songAlbum)
  {
    songAlbum = [MEMORY[0x1E695DFB0] null];
  }

  v160[15] = songAlbum;
  v159[16] = @"albumName";
  albumName = self->_albumName;
  v136 = albumName;
  if (!albumName)
  {
    albumName = [MEMORY[0x1E695DFB0] null];
  }

  v160[16] = albumName;
  v159[17] = @"albumArtist";
  albumArtist = self->_albumArtist;
  v134 = albumArtist;
  if (!albumArtist)
  {
    albumArtist = [MEMORY[0x1E695DFB0] null];
  }

  v160[17] = albumArtist;
  v159[18] = @"musicVideoName";
  musicVideoName = self->_musicVideoName;
  v132 = musicVideoName;
  if (!musicVideoName)
  {
    musicVideoName = [MEMORY[0x1E695DFB0] null];
  }

  v160[18] = musicVideoName;
  v159[19] = @"musicVideoArtist";
  musicVideoArtist = self->_musicVideoArtist;
  v130 = musicVideoArtist;
  if (!musicVideoArtist)
  {
    musicVideoArtist = [MEMORY[0x1E695DFB0] null];
  }

  v160[19] = musicVideoArtist;
  v159[20] = @"artistName";
  artistName = self->_artistName;
  v129 = artistName;
  if (!artistName)
  {
    artistName = [MEMORY[0x1E695DFB0] null];
  }

  v128 = artistName;
  v160[20] = artistName;
  v159[21] = @"artistGenre";
  artistGenre = self->_artistGenre;
  v127 = artistGenre;
  if (!artistGenre)
  {
    artistGenre = [MEMORY[0x1E695DFB0] null];
  }

  v158 = artistGenre;
  v160[21] = artistGenre;
  v159[22] = @"playlistName";
  playlistName = self->_playlistName;
  v126 = playlistName;
  if (!playlistName)
  {
    playlistName = [MEMORY[0x1E695DFB0] null];
  }

  v91 = playlistName;
  v160[22] = playlistName;
  v159[23] = @"playlistCurator";
  playlistCurator = self->_playlistCurator;
  v125 = playlistCurator;
  if (!playlistCurator)
  {
    playlistCurator = [MEMORY[0x1E695DFB0] null];
  }

  v90 = playlistCurator;
  v160[23] = playlistCurator;
  v159[24] = @"radioName";
  radioName = self->_radioName;
  v124 = radioName;
  if (!radioName)
  {
    radioName = [MEMORY[0x1E695DFB0] null];
  }

  v89 = radioName;
  v160[24] = radioName;
  v159[25] = @"radioCurator";
  radioCurator = self->_radioCurator;
  v123 = radioCurator;
  if (!radioCurator)
  {
    radioCurator = [MEMORY[0x1E695DFB0] null];
  }

  v88 = radioCurator;
  v160[25] = radioCurator;
  v159[26] = @"softwareName";
  softwareName = self->_softwareName;
  v122 = softwareName;
  if (!softwareName)
  {
    softwareName = [MEMORY[0x1E695DFB0] null];
  }

  v87 = softwareName;
  v160[26] = softwareName;
  v159[27] = @"softwareGenre";
  softwareGenre = self->_softwareGenre;
  v121 = softwareGenre;
  if (!softwareGenre)
  {
    softwareGenre = [MEMORY[0x1E695DFB0] null];
  }

  v86 = softwareGenre;
  v160[27] = softwareGenre;
  v159[28] = @"softwarePlatform";
  softwarePlatform = self->_softwarePlatform;
  v120 = softwarePlatform;
  if (!softwarePlatform)
  {
    softwarePlatform = [MEMORY[0x1E695DFB0] null];
  }

  v85 = softwarePlatform;
  v160[28] = softwarePlatform;
  v159[29] = @"bookName";
  bookName = self->_bookName;
  v119 = bookName;
  if (!bookName)
  {
    bookName = [MEMORY[0x1E695DFB0] null];
  }

  v84 = bookName;
  v160[29] = bookName;
  v159[30] = @"bookAuthor";
  bookAuthor = self->_bookAuthor;
  v118 = bookAuthor;
  if (!bookAuthor)
  {
    bookAuthor = [MEMORY[0x1E695DFB0] null];
  }

  v83 = bookAuthor;
  v160[30] = bookAuthor;
  v159[31] = @"audioBookName";
  audioBookName = self->_audioBookName;
  v117 = audioBookName;
  if (!audioBookName)
  {
    audioBookName = [MEMORY[0x1E695DFB0] null];
  }

  v82 = audioBookName;
  v160[31] = audioBookName;
  v159[32] = @"audioBookAuthor";
  audioBookAuthor = self->_audioBookAuthor;
  v116 = audioBookAuthor;
  if (!audioBookAuthor)
  {
    audioBookAuthor = [MEMORY[0x1E695DFB0] null];
  }

  v81 = audioBookAuthor;
  v160[32] = audioBookAuthor;
  v159[33] = @"audioBookNarrator";
  audioBookNarrator = self->_audioBookNarrator;
  v115 = audioBookNarrator;
  if (!audioBookNarrator)
  {
    audioBookNarrator = [MEMORY[0x1E695DFB0] null];
  }

  v80 = audioBookNarrator;
  v160[33] = audioBookNarrator;
  v159[34] = @"podcastName";
  podcastName = self->_podcastName;
  v114 = podcastName;
  if (!podcastName)
  {
    podcastName = [MEMORY[0x1E695DFB0] null];
  }

  v79 = podcastName;
  v160[34] = podcastName;
  v159[35] = @"podcastArtist";
  podcastArtist = self->_podcastArtist;
  v113 = podcastArtist;
  if (!podcastArtist)
  {
    podcastArtist = [MEMORY[0x1E695DFB0] null];
  }

  v78 = podcastArtist;
  v160[35] = podcastArtist;
  v159[36] = @"podcastEpisodeName";
  podcastEpisodeName = self->_podcastEpisodeName;
  v112 = podcastEpisodeName;
  if (!podcastEpisodeName)
  {
    podcastEpisodeName = [MEMORY[0x1E695DFB0] null];
  }

  v77 = podcastEpisodeName;
  v160[36] = podcastEpisodeName;
  v159[37] = @"podcastEpisodePodcastName";
  podcastEpisodePodcastName = self->_podcastEpisodePodcastName;
  v111 = podcastEpisodePodcastName;
  if (!podcastEpisodePodcastName)
  {
    podcastEpisodePodcastName = [MEMORY[0x1E695DFB0] null];
  }

  v76 = podcastEpisodePodcastName;
  v160[37] = podcastEpisodePodcastName;
  v159[38] = @"podcastEpisodeArtist";
  podcastEpisodeArtist = self->_podcastEpisodeArtist;
  v110 = podcastEpisodeArtist;
  if (!podcastEpisodeArtist)
  {
    podcastEpisodeArtist = [MEMORY[0x1E695DFB0] null];
  }

  v75 = podcastEpisodeArtist;
  v160[38] = podcastEpisodeArtist;
  v159[39] = @"podcastEpisodeReleaseDate";
  podcastEpisodeReleaseDate = self->_podcastEpisodeReleaseDate;
  v109 = podcastEpisodeReleaseDate;
  if (!podcastEpisodeReleaseDate)
  {
    podcastEpisodeReleaseDate = [MEMORY[0x1E695DFB0] null];
  }

  v74 = podcastEpisodeReleaseDate;
  v160[39] = podcastEpisodeReleaseDate;
  v159[40] = @"tvEpisodeEpisodeName";
  tvEpisodeEpisodeName = self->_tvEpisodeEpisodeName;
  v108 = tvEpisodeEpisodeName;
  if (!tvEpisodeEpisodeName)
  {
    tvEpisodeEpisodeName = [MEMORY[0x1E695DFB0] null];
  }

  v73 = tvEpisodeEpisodeName;
  v160[40] = tvEpisodeEpisodeName;
  v159[41] = @"tvEpisodeSeasonName";
  tvEpisodeSeasonName = self->_tvEpisodeSeasonName;
  v107 = tvEpisodeSeasonName;
  if (!tvEpisodeSeasonName)
  {
    tvEpisodeSeasonName = [MEMORY[0x1E695DFB0] null];
  }

  v72 = tvEpisodeSeasonName;
  v160[41] = tvEpisodeSeasonName;
  v159[42] = @"tvEpisodeGenre";
  tvEpisodeGenre = self->_tvEpisodeGenre;
  v106 = tvEpisodeGenre;
  if (!tvEpisodeGenre)
  {
    tvEpisodeGenre = [MEMORY[0x1E695DFB0] null];
  }

  v71 = tvEpisodeGenre;
  v160[42] = tvEpisodeGenre;
  v159[43] = @"tvSeasonName";
  tvSeasonName = self->_tvSeasonName;
  v105 = tvSeasonName;
  if (!tvSeasonName)
  {
    tvSeasonName = [MEMORY[0x1E695DFB0] null];
  }

  v70 = tvSeasonName;
  v160[43] = tvSeasonName;
  v159[44] = @"tvSeasonGenre";
  tvSeasonGenre = self->_tvSeasonGenre;
  v104 = tvSeasonGenre;
  if (!tvSeasonGenre)
  {
    tvSeasonGenre = [MEMORY[0x1E695DFB0] null];
  }

  v143 = iTunesStoreFrontIdentifier;
  v69 = tvSeasonGenre;
  v160[44] = tvSeasonGenre;
  v159[45] = @"movieName";
  movieName = self->_movieName;
  v103 = movieName;
  if (!movieName)
  {
    movieName = [MEMORY[0x1E695DFB0] null];
  }

  v141 = songTitle;
  v68 = movieName;
  v160[45] = movieName;
  v159[46] = @"movieGenre";
  movieGenre = self->_movieGenre;
  v49 = movieGenre;
  if (!movieGenre)
  {
    v49 = [MEMORY[0x1E695DFB0] null];
  }

  v133 = albumArtist;
  v139 = songArtist;
  v67 = v49;
  v160[46] = v49;
  v159[47] = @"tvShowName";
  tvShowName = self->_tvShowName;
  v51 = tvShowName;
  if (!tvShowName)
  {
    v51 = [MEMORY[0x1E695DFB0] null];
  }

  v135 = albumName;
  v145 = iTunesStoreIdentifier;
  v66 = v51;
  v160[47] = v51;
  v159[48] = @"movieBundleName";
  movieBundleName = self->_movieBundleName;
  v53 = movieBundleName;
  if (!movieBundleName)
  {
    v53 = [MEMORY[0x1E695DFB0] null];
  }

  v131 = musicVideoName;
  v137 = songAlbum;
  v64 = v53;
  v160[48] = v53;
  v159[49] = @"movieBundleGenre";
  movieBundleGenre = self->_movieBundleGenre;
  v55 = movieBundleGenre;
  if (!movieBundleGenre)
  {
    v55 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = musicVideoArtist;
  v160[49] = v55;
  v159[50] = @"appleTvTitle";
  appleTvTitle = self->_appleTvTitle;
  v58 = appleTvTitle;
  if (!appleTvTitle)
  {
    v58 = [MEMORY[0x1E695DFB0] null];
  }

  v160[50] = v58;
  v159[51] = @"appleTvSubtitle";
  appleTvSubtitle = self->_appleTvSubtitle;
  v60 = appleTvSubtitle;
  if (!appleTvSubtitle)
  {
    v60 = [MEMORY[0x1E695DFB0] null];
  }

  v160[51] = v60;
  v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v160 forKeys:v159 count:{52, v64}];
  if (!appleTvSubtitle)
  {
  }

  v61 = v158;
  if (!appleTvTitle)
  {

    v61 = v158;
  }

  if (!movieBundleGenre)
  {

    v61 = v158;
  }

  if (!movieBundleName)
  {

    v61 = v158;
  }

  if (!tvShowName)
  {

    v61 = v158;
  }

  if (!movieGenre)
  {

    v61 = v158;
  }

  if (!v103)
  {

    v61 = v158;
  }

  if (!v104)
  {

    v61 = v158;
  }

  if (!v105)
  {

    v61 = v158;
  }

  if (!v106)
  {

    v61 = v158;
  }

  if (!v107)
  {

    v61 = v158;
  }

  if (!v108)
  {

    v61 = v158;
  }

  if (!v109)
  {

    v61 = v158;
  }

  if (!v110)
  {

    v61 = v158;
  }

  if (!v111)
  {

    v61 = v158;
  }

  if (!v112)
  {

    v61 = v158;
  }

  if (!v113)
  {

    v61 = v158;
  }

  if (!v114)
  {

    v61 = v158;
  }

  if (!v115)
  {

    v61 = v158;
  }

  if (!v116)
  {

    v61 = v158;
  }

  if (!v117)
  {

    v61 = v158;
  }

  if (!v118)
  {

    v61 = v158;
  }

  if (!v119)
  {

    v61 = v158;
  }

  if (!v120)
  {

    v61 = v158;
  }

  if (!v121)
  {

    v61 = v158;
  }

  if (!v122)
  {

    v61 = v158;
  }

  if (!v123)
  {

    v61 = v158;
  }

  if (!v124)
  {

    v61 = v158;
  }

  if (!v125)
  {

    v61 = v158;
  }

  if (!v126)
  {

    v61 = v158;
  }

  if (!v127)
  {
  }

  if (!v129)
  {
  }

  if (!v130)
  {
  }

  if (!v132)
  {
  }

  if (!v134)
  {
  }

  if (!v136)
  {
  }

  if (!v138)
  {
  }

  if (!v140)
  {
  }

  if (!v142)
  {
  }

  if (!v144)
  {
  }

  if (!v146)
  {
  }

  if (!v148)
  {
  }

  if (!v149)
  {
  }

  if (!v150)
  {
  }

  if (!v151)
  {
  }

  if (!v152)
  {
  }

  if (!v153)
  {
  }

  if (!v154)
  {
  }

  if (!v155)
  {
  }

  if (!v156)
  {
  }

  if (!v157)
  {
  }

  v62 = *MEMORY[0x1E69E9840];

  return v102;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INMessageLinkMetadata;
  v6 = [(INMessageLinkMetadata *)&v11 description];
  v7 = [(INMessageLinkMetadata *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_siteName];
  [v7 if_setObjectIfNonNil:v8 forKey:@"siteName"];

  v9 = [v6 encodeObject:self->_summary];
  [v7 if_setObjectIfNonNil:v9 forKey:@"summary"];

  v10 = [v6 encodeObject:self->_title];
  [v7 if_setObjectIfNonNil:v10 forKey:@"title"];

  v11 = [v6 encodeObject:self->_openGraphType];
  [v7 if_setObjectIfNonNil:v11 forKey:@"openGraphType"];

  v12 = [v6 encodeObject:self->_itemType];
  [v7 if_setObjectIfNonNil:v12 forKey:@"itemType"];

  v13 = [v6 encodeObject:self->_linkURL];
  [v7 if_setObjectIfNonNil:v13 forKey:@"linkURL"];

  v14 = [v6 encodeObject:self->_originalURL];
  [v7 if_setObjectIfNonNil:v14 forKey:@"originalURL"];

  v15 = [v6 encodeObject:self->_imageURLs];
  [v7 if_setObjectIfNonNil:v15 forKey:@"imageURLs"];

  v16 = [v6 encodeObject:self->_iconURLs];
  [v7 if_setObjectIfNonNil:v16 forKey:@"iconURLs"];

  v17 = [v6 encodeObject:self->_creator];
  [v7 if_setObjectIfNonNil:v17 forKey:@"creator"];

  v18 = self->_linkMediaType - 1;
  if (v18 > 0x10)
  {
    v19 = @"unknown";
  }

  else
  {
    v19 = *(&off_1E7286360 + v18);
  }

  v20 = v19;
  [v7 if_setObjectIfNonNil:v20 forKey:@"linkMediaType"];

  v21 = [v6 encodeObject:self->_iTunesStoreIdentifier];
  [v7 if_setObjectIfNonNil:v21 forKey:@"iTunesStoreIdentifier"];

  v22 = [v6 encodeObject:self->_iTunesStoreFrontIdentifier];
  [v7 if_setObjectIfNonNil:v22 forKey:@"iTunesStoreFrontIdentifier"];

  v23 = [v6 encodeObject:self->_songTitle];
  [v7 if_setObjectIfNonNil:v23 forKey:@"songTitle"];

  v24 = [v6 encodeObject:self->_songArtist];
  [v7 if_setObjectIfNonNil:v24 forKey:@"songArtist"];

  v25 = [v6 encodeObject:self->_songAlbum];
  [v7 if_setObjectIfNonNil:v25 forKey:@"songAlbum"];

  v26 = [v6 encodeObject:self->_albumName];
  [v7 if_setObjectIfNonNil:v26 forKey:@"albumName"];

  v27 = [v6 encodeObject:self->_albumArtist];
  [v7 if_setObjectIfNonNil:v27 forKey:@"albumArtist"];

  v28 = [v6 encodeObject:self->_musicVideoName];
  [v7 if_setObjectIfNonNil:v28 forKey:@"musicVideoName"];

  v29 = [v6 encodeObject:self->_musicVideoArtist];
  [v7 if_setObjectIfNonNil:v29 forKey:@"musicVideoArtist"];

  v30 = [v6 encodeObject:self->_artistName];
  [v7 if_setObjectIfNonNil:v30 forKey:@"artistName"];

  v31 = [v6 encodeObject:self->_artistGenre];
  [v7 if_setObjectIfNonNil:v31 forKey:@"artistGenre"];

  v32 = [v6 encodeObject:self->_playlistName];
  [v7 if_setObjectIfNonNil:v32 forKey:@"playlistName"];

  v33 = [v6 encodeObject:self->_playlistCurator];
  [v7 if_setObjectIfNonNil:v33 forKey:@"playlistCurator"];

  v34 = [v6 encodeObject:self->_radioName];
  [v7 if_setObjectIfNonNil:v34 forKey:@"radioName"];

  v35 = [v6 encodeObject:self->_radioCurator];
  [v7 if_setObjectIfNonNil:v35 forKey:@"radioCurator"];

  v36 = [v6 encodeObject:self->_softwareName];
  [v7 if_setObjectIfNonNil:v36 forKey:@"softwareName"];

  v37 = [v6 encodeObject:self->_softwareGenre];
  [v7 if_setObjectIfNonNil:v37 forKey:@"softwareGenre"];

  v38 = [v6 encodeObject:self->_softwarePlatform];
  [v7 if_setObjectIfNonNil:v38 forKey:@"softwarePlatform"];

  v39 = [v6 encodeObject:self->_bookName];
  [v7 if_setObjectIfNonNil:v39 forKey:@"bookName"];

  v40 = [v6 encodeObject:self->_bookAuthor];
  [v7 if_setObjectIfNonNil:v40 forKey:@"bookAuthor"];

  v41 = [v6 encodeObject:self->_audioBookName];
  [v7 if_setObjectIfNonNil:v41 forKey:@"audioBookName"];

  v42 = [v6 encodeObject:self->_audioBookAuthor];
  [v7 if_setObjectIfNonNil:v42 forKey:@"audioBookAuthor"];

  v43 = [v6 encodeObject:self->_audioBookNarrator];
  [v7 if_setObjectIfNonNil:v43 forKey:@"audioBookNarrator"];

  v44 = [v6 encodeObject:self->_podcastName];
  [v7 if_setObjectIfNonNil:v44 forKey:@"podcastName"];

  v45 = [v6 encodeObject:self->_podcastArtist];
  [v7 if_setObjectIfNonNil:v45 forKey:@"podcastArtist"];

  v46 = [v6 encodeObject:self->_podcastEpisodeName];
  [v7 if_setObjectIfNonNil:v46 forKey:@"podcastEpisodeName"];

  v47 = [v6 encodeObject:self->_podcastEpisodePodcastName];
  [v7 if_setObjectIfNonNil:v47 forKey:@"podcastEpisodePodcastName"];

  v48 = [v6 encodeObject:self->_podcastEpisodeArtist];
  [v7 if_setObjectIfNonNil:v48 forKey:@"podcastEpisodeArtist"];

  v49 = [v6 encodeObject:self->_podcastEpisodeReleaseDate];
  [v7 if_setObjectIfNonNil:v49 forKey:@"podcastEpisodeReleaseDate"];

  v50 = [v6 encodeObject:self->_tvEpisodeEpisodeName];
  [v7 if_setObjectIfNonNil:v50 forKey:@"tvEpisodeEpisodeName"];

  v51 = [v6 encodeObject:self->_tvEpisodeSeasonName];
  [v7 if_setObjectIfNonNil:v51 forKey:@"tvEpisodeSeasonName"];

  v52 = [v6 encodeObject:self->_tvEpisodeGenre];
  [v7 if_setObjectIfNonNil:v52 forKey:@"tvEpisodeGenre"];

  v53 = [v6 encodeObject:self->_tvSeasonName];
  [v7 if_setObjectIfNonNil:v53 forKey:@"tvSeasonName"];

  v54 = [v6 encodeObject:self->_tvSeasonGenre];
  [v7 if_setObjectIfNonNil:v54 forKey:@"tvSeasonGenre"];

  v55 = [v6 encodeObject:self->_movieName];
  [v7 if_setObjectIfNonNil:v55 forKey:@"movieName"];

  v56 = [v6 encodeObject:self->_movieGenre];
  [v7 if_setObjectIfNonNil:v56 forKey:@"movieGenre"];

  v57 = [v6 encodeObject:self->_tvShowName];
  [v7 if_setObjectIfNonNil:v57 forKey:@"tvShowName"];

  v58 = [v6 encodeObject:self->_movieBundleName];
  [v7 if_setObjectIfNonNil:v58 forKey:@"movieBundleName"];

  v59 = [v6 encodeObject:self->_movieBundleGenre];
  [v7 if_setObjectIfNonNil:v59 forKey:@"movieBundleGenre"];

  v60 = [v6 encodeObject:self->_appleTvTitle];
  [v7 if_setObjectIfNonNil:v60 forKey:@"appleTvTitle"];

  v61 = [v6 encodeObject:self->_appleTvSubtitle];

  [v7 if_setObjectIfNonNil:v61 forKey:@"appleTvSubtitle"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  siteName = self->_siteName;
  v5 = a3;
  [v5 encodeObject:siteName forKey:@"siteName"];
  [v5 encodeObject:self->_summary forKey:@"summary"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_openGraphType forKey:@"openGraphType"];
  [v5 encodeObject:self->_itemType forKey:@"itemType"];
  [v5 encodeObject:self->_linkURL forKey:@"linkURL"];
  [v5 encodeObject:self->_originalURL forKey:@"originalURL"];
  [v5 encodeObject:self->_imageURLs forKey:@"imageURLs"];
  [v5 encodeObject:self->_iconURLs forKey:@"iconURLs"];
  [v5 encodeObject:self->_creator forKey:@"creator"];
  [v5 encodeInteger:self->_linkMediaType forKey:@"linkMediaType"];
  [v5 encodeObject:self->_iTunesStoreIdentifier forKey:@"iTunesStoreIdentifier"];
  [v5 encodeObject:self->_iTunesStoreFrontIdentifier forKey:@"iTunesStoreFrontIdentifier"];
  [v5 encodeObject:self->_songTitle forKey:@"songTitle"];
  [v5 encodeObject:self->_songArtist forKey:@"songArtist"];
  [v5 encodeObject:self->_songAlbum forKey:@"songAlbum"];
  [v5 encodeObject:self->_albumName forKey:@"albumName"];
  [v5 encodeObject:self->_albumArtist forKey:@"albumArtist"];
  [v5 encodeObject:self->_musicVideoName forKey:@"musicVideoName"];
  [v5 encodeObject:self->_musicVideoArtist forKey:@"musicVideoArtist"];
  [v5 encodeObject:self->_artistName forKey:@"artistName"];
  [v5 encodeObject:self->_artistGenre forKey:@"artistGenre"];
  [v5 encodeObject:self->_playlistName forKey:@"playlistName"];
  [v5 encodeObject:self->_playlistCurator forKey:@"playlistCurator"];
  [v5 encodeObject:self->_radioName forKey:@"radioName"];
  [v5 encodeObject:self->_radioCurator forKey:@"radioCurator"];
  [v5 encodeObject:self->_softwareName forKey:@"softwareName"];
  [v5 encodeObject:self->_softwareGenre forKey:@"softwareGenre"];
  [v5 encodeObject:self->_softwarePlatform forKey:@"softwarePlatform"];
  [v5 encodeObject:self->_bookName forKey:@"bookName"];
  [v5 encodeObject:self->_bookAuthor forKey:@"bookAuthor"];
  [v5 encodeObject:self->_audioBookName forKey:@"audioBookName"];
  [v5 encodeObject:self->_audioBookAuthor forKey:@"audioBookAuthor"];
  [v5 encodeObject:self->_audioBookNarrator forKey:@"audioBookNarrator"];
  [v5 encodeObject:self->_podcastName forKey:@"podcastName"];
  [v5 encodeObject:self->_podcastArtist forKey:@"podcastArtist"];
  [v5 encodeObject:self->_podcastEpisodeName forKey:@"podcastEpisodeName"];
  [v5 encodeObject:self->_podcastEpisodePodcastName forKey:@"podcastEpisodePodcastName"];
  [v5 encodeObject:self->_podcastEpisodeArtist forKey:@"podcastEpisodeArtist"];
  [v5 encodeObject:self->_podcastEpisodeReleaseDate forKey:@"podcastEpisodeReleaseDate"];
  [v5 encodeObject:self->_tvEpisodeEpisodeName forKey:@"tvEpisodeEpisodeName"];
  [v5 encodeObject:self->_tvEpisodeSeasonName forKey:@"tvEpisodeSeasonName"];
  [v5 encodeObject:self->_tvEpisodeGenre forKey:@"tvEpisodeGenre"];
  [v5 encodeObject:self->_tvSeasonName forKey:@"tvSeasonName"];
  [v5 encodeObject:self->_tvSeasonGenre forKey:@"tvSeasonGenre"];
  [v5 encodeObject:self->_movieName forKey:@"movieName"];
  [v5 encodeObject:self->_movieGenre forKey:@"movieGenre"];
  [v5 encodeObject:self->_tvShowName forKey:@"tvShowName"];
  [v5 encodeObject:self->_movieBundleName forKey:@"movieBundleName"];
  [v5 encodeObject:self->_movieBundleGenre forKey:@"movieBundleGenre"];
  [v5 encodeObject:self->_appleTvTitle forKey:@"appleTvTitle"];
  [v5 encodeObject:self->_appleTvSubtitle forKey:@"appleTvSubtitle"];
}

- (INMessageLinkMetadata)initWithCoder:(id)a3
{
  v208[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v206 = [v4 decodeObjectOfClasses:v6 forKey:@"siteName"];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v205 = [v4 decodeObjectOfClasses:v9 forKey:@"summary"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v204 = [v4 decodeObjectOfClasses:v12 forKey:@"title"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v203 = [v4 decodeObjectOfClasses:v15 forKey:@"openGraphType"];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v202 = [v4 decodeObjectOfClasses:v18 forKey:@"itemType"];

  v201 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkURL"];
  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v200 = [v4 decodeObjectOfClasses:v21 forKey:@"originalURL"];

  v22 = MEMORY[0x1E695DFD8];
  v208[0] = objc_opt_class();
  v208[1] = objc_opt_class();
  v208[2] = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v208 count:3];
  v24 = [v22 setWithArray:v23];
  v199 = [v4 decodeObjectOfClasses:v24 forKey:@"imageURLs"];

  v25 = MEMORY[0x1E695DFD8];
  v207[0] = objc_opt_class();
  v207[1] = objc_opt_class();
  v207[2] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v207 count:3];
  v27 = [v25 setWithArray:v26];
  v198 = [v4 decodeObjectOfClasses:v27 forKey:@"iconURLs"];

  v28 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
  v197 = [v4 decodeObjectOfClasses:v30 forKey:@"creator"];

  v168 = [v4 decodeIntegerForKey:@"linkMediaType"];
  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
  v196 = [v4 decodeObjectOfClasses:v33 forKey:@"iTunesStoreIdentifier"];

  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
  v195 = [v4 decodeObjectOfClasses:v36 forKey:@"iTunesStoreFrontIdentifier"];

  v37 = MEMORY[0x1E695DFD8];
  v38 = objc_opt_class();
  v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
  v194 = [v4 decodeObjectOfClasses:v39 forKey:@"songTitle"];

  v40 = MEMORY[0x1E695DFD8];
  v41 = objc_opt_class();
  v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
  v193 = [v4 decodeObjectOfClasses:v42 forKey:@"songArtist"];

  v43 = MEMORY[0x1E695DFD8];
  v44 = objc_opt_class();
  v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
  v192 = [v4 decodeObjectOfClasses:v45 forKey:@"songAlbum"];

  v46 = MEMORY[0x1E695DFD8];
  v47 = objc_opt_class();
  v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
  v191 = [v4 decodeObjectOfClasses:v48 forKey:@"albumName"];

  v49 = MEMORY[0x1E695DFD8];
  v50 = objc_opt_class();
  v51 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
  v190 = [v4 decodeObjectOfClasses:v51 forKey:@"albumArtist"];

  v52 = MEMORY[0x1E695DFD8];
  v53 = objc_opt_class();
  v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
  v189 = [v4 decodeObjectOfClasses:v54 forKey:@"musicVideoName"];

  v55 = MEMORY[0x1E695DFD8];
  v56 = objc_opt_class();
  v57 = [v55 setWithObjects:{v56, objc_opt_class(), 0}];
  v188 = [v4 decodeObjectOfClasses:v57 forKey:@"musicVideoArtist"];

  v58 = MEMORY[0x1E695DFD8];
  v59 = objc_opt_class();
  v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
  v187 = [v4 decodeObjectOfClasses:v60 forKey:@"artistName"];

  v61 = MEMORY[0x1E695DFD8];
  v62 = objc_opt_class();
  v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
  v186 = [v4 decodeObjectOfClasses:v63 forKey:@"artistGenre"];

  v64 = MEMORY[0x1E695DFD8];
  v65 = objc_opt_class();
  v66 = [v64 setWithObjects:{v65, objc_opt_class(), 0}];
  v185 = [v4 decodeObjectOfClasses:v66 forKey:@"playlistName"];

  v67 = MEMORY[0x1E695DFD8];
  v68 = objc_opt_class();
  v69 = [v67 setWithObjects:{v68, objc_opt_class(), 0}];
  v184 = [v4 decodeObjectOfClasses:v69 forKey:@"playlistCurator"];

  v70 = MEMORY[0x1E695DFD8];
  v71 = objc_opt_class();
  v72 = [v70 setWithObjects:{v71, objc_opt_class(), 0}];
  v183 = [v4 decodeObjectOfClasses:v72 forKey:@"radioName"];

  v73 = MEMORY[0x1E695DFD8];
  v74 = objc_opt_class();
  v75 = [v73 setWithObjects:{v74, objc_opt_class(), 0}];
  v182 = [v4 decodeObjectOfClasses:v75 forKey:@"radioCurator"];

  v76 = MEMORY[0x1E695DFD8];
  v77 = objc_opt_class();
  v78 = [v76 setWithObjects:{v77, objc_opt_class(), 0}];
  v181 = [v4 decodeObjectOfClasses:v78 forKey:@"softwareName"];

  v79 = MEMORY[0x1E695DFD8];
  v80 = objc_opt_class();
  v81 = [v79 setWithObjects:{v80, objc_opt_class(), 0}];
  v180 = [v4 decodeObjectOfClasses:v81 forKey:@"softwareGenre"];

  v82 = MEMORY[0x1E695DFD8];
  v83 = objc_opt_class();
  v84 = [v82 setWithObjects:{v83, objc_opt_class(), 0}];
  v179 = [v4 decodeObjectOfClasses:v84 forKey:@"softwarePlatform"];

  v85 = MEMORY[0x1E695DFD8];
  v86 = objc_opt_class();
  v87 = [v85 setWithObjects:{v86, objc_opt_class(), 0}];
  v178 = [v4 decodeObjectOfClasses:v87 forKey:@"bookName"];

  v88 = MEMORY[0x1E695DFD8];
  v89 = objc_opt_class();
  v90 = [v88 setWithObjects:{v89, objc_opt_class(), 0}];
  v177 = [v4 decodeObjectOfClasses:v90 forKey:@"bookAuthor"];

  v91 = MEMORY[0x1E695DFD8];
  v92 = objc_opt_class();
  v93 = [v91 setWithObjects:{v92, objc_opt_class(), 0}];
  v176 = [v4 decodeObjectOfClasses:v93 forKey:@"audioBookName"];

  v94 = MEMORY[0x1E695DFD8];
  v95 = objc_opt_class();
  v96 = [v94 setWithObjects:{v95, objc_opt_class(), 0}];
  v175 = [v4 decodeObjectOfClasses:v96 forKey:@"audioBookAuthor"];

  v97 = MEMORY[0x1E695DFD8];
  v98 = objc_opt_class();
  v99 = [v97 setWithObjects:{v98, objc_opt_class(), 0}];
  v174 = [v4 decodeObjectOfClasses:v99 forKey:@"audioBookNarrator"];

  v100 = MEMORY[0x1E695DFD8];
  v101 = objc_opt_class();
  v102 = [v100 setWithObjects:{v101, objc_opt_class(), 0}];
  v173 = [v4 decodeObjectOfClasses:v102 forKey:@"podcastName"];

  v103 = MEMORY[0x1E695DFD8];
  v104 = objc_opt_class();
  v105 = [v103 setWithObjects:{v104, objc_opt_class(), 0}];
  v172 = [v4 decodeObjectOfClasses:v105 forKey:@"podcastArtist"];

  v106 = MEMORY[0x1E695DFD8];
  v107 = objc_opt_class();
  v108 = [v106 setWithObjects:{v107, objc_opt_class(), 0}];
  v171 = [v4 decodeObjectOfClasses:v108 forKey:@"podcastEpisodeName"];

  v109 = MEMORY[0x1E695DFD8];
  v110 = objc_opt_class();
  v111 = [v109 setWithObjects:{v110, objc_opt_class(), 0}];
  v167 = [v4 decodeObjectOfClasses:v111 forKey:@"podcastEpisodePodcastName"];

  v112 = MEMORY[0x1E695DFD8];
  v113 = objc_opt_class();
  v114 = [v112 setWithObjects:{v113, objc_opt_class(), 0}];
  v166 = [v4 decodeObjectOfClasses:v114 forKey:@"podcastEpisodeArtist"];

  v165 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"podcastEpisodeReleaseDate"];
  v115 = MEMORY[0x1E695DFD8];
  v116 = objc_opt_class();
  v117 = [v115 setWithObjects:{v116, objc_opt_class(), 0}];
  v164 = [v4 decodeObjectOfClasses:v117 forKey:@"tvEpisodeEpisodeName"];

  v118 = MEMORY[0x1E695DFD8];
  v119 = objc_opt_class();
  v120 = [v118 setWithObjects:{v119, objc_opt_class(), 0}];
  v163 = [v4 decodeObjectOfClasses:v120 forKey:@"tvEpisodeSeasonName"];

  v121 = MEMORY[0x1E695DFD8];
  v122 = objc_opt_class();
  v123 = [v121 setWithObjects:{v122, objc_opt_class(), 0}];
  v162 = [v4 decodeObjectOfClasses:v123 forKey:@"tvEpisodeGenre"];

  v124 = MEMORY[0x1E695DFD8];
  v125 = objc_opt_class();
  v126 = [v124 setWithObjects:{v125, objc_opt_class(), 0}];
  v161 = [v4 decodeObjectOfClasses:v126 forKey:@"tvSeasonName"];

  v127 = MEMORY[0x1E695DFD8];
  v128 = objc_opt_class();
  v129 = [v127 setWithObjects:{v128, objc_opt_class(), 0}];
  v160 = [v4 decodeObjectOfClasses:v129 forKey:@"tvSeasonGenre"];

  v130 = MEMORY[0x1E695DFD8];
  v131 = objc_opt_class();
  v132 = [v130 setWithObjects:{v131, objc_opt_class(), 0}];
  v159 = [v4 decodeObjectOfClasses:v132 forKey:@"movieName"];

  v133 = MEMORY[0x1E695DFD8];
  v134 = objc_opt_class();
  v135 = [v133 setWithObjects:{v134, objc_opt_class(), 0}];
  v158 = [v4 decodeObjectOfClasses:v135 forKey:@"movieGenre"];

  v136 = MEMORY[0x1E695DFD8];
  v137 = objc_opt_class();
  v138 = [v136 setWithObjects:{v137, objc_opt_class(), 0}];
  v157 = [v4 decodeObjectOfClasses:v138 forKey:@"tvShowName"];

  v139 = MEMORY[0x1E695DFD8];
  v140 = objc_opt_class();
  v141 = [v139 setWithObjects:{v140, objc_opt_class(), 0}];
  v156 = [v4 decodeObjectOfClasses:v141 forKey:@"movieBundleName"];

  v142 = MEMORY[0x1E695DFD8];
  v143 = objc_opt_class();
  v144 = [v142 setWithObjects:{v143, objc_opt_class(), 0}];
  v155 = [v4 decodeObjectOfClasses:v144 forKey:@"movieBundleGenre"];

  v145 = MEMORY[0x1E695DFD8];
  v146 = objc_opt_class();
  v147 = [v145 setWithObjects:{v146, objc_opt_class(), 0}];
  v154 = [v4 decodeObjectOfClasses:v147 forKey:@"appleTvTitle"];

  v148 = MEMORY[0x1E695DFD8];
  v149 = objc_opt_class();
  v150 = [v148 setWithObjects:{v149, objc_opt_class(), 0}];
  v151 = [v4 decodeObjectOfClasses:v150 forKey:@"appleTvSubtitle"];

  v170 = [(INMessageLinkMetadata *)self initWithSiteName:v206 summary:v205 title:v204 openGraphType:v203 itemType:v202 linkURL:v201 originalURL:v200 imageURLs:v199 iconURLs:v198 creator:v197 linkMediaType:v168 iTunesStoreIdentifier:v196 iTunesStoreFrontIdentifier:v195 songTitle:v194 songArtist:v193 songAlbum:v192 albumName:v191 albumArtist:v190 musicVideoName:v189 musicVideoArtist:v188 artistName:v187 artistGenre:v186 playlistName:v185 playlistCurator:v184 radioName:v183 radioCurator:v182 softwareName:v181 softwareGenre:v180 softwarePlatform:v179 bookName:v178 bookAuthor:v177 audioBookName:v176 audioBookAuthor:v175 audioBookNarrator:v174 podcastName:v173 podcastArtist:v172 podcastEpisodeName:v171 podcastEpisodePodcastName:v167 podcastEpisodeArtist:v166 podcastEpisodeReleaseDate:v165 tvEpisodeEpisodeName:v164 tvEpisodeSeasonName:v163 tvEpisodeGenre:v162 tvSeasonName:v161 tvSeasonGenre:v160 movieName:v159 movieGenre:v158 tvShowName:v157 movieBundleName:v156 movieBundleGenre:v155 appleTvTitle:v154 appleTvSubtitle:v151];
  v152 = *MEMORY[0x1E69E9840];
  return v170;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v57 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      siteName = self->_siteName;
      if (siteName != v5->_siteName && ![(NSString *)siteName isEqual:?])
      {
        goto LABEL_109;
      }

      summary = self->_summary;
      if (summary != v5->_summary && ![(NSString *)summary isEqual:?])
      {
        goto LABEL_109;
      }

      title = self->_title;
      if (title != v5->_title && ![(NSString *)title isEqual:?])
      {
        goto LABEL_109;
      }

      openGraphType = self->_openGraphType;
      if (openGraphType != v5->_openGraphType && ![(NSString *)openGraphType isEqual:?])
      {
        goto LABEL_109;
      }

      itemType = self->_itemType;
      if (itemType != v5->_itemType && ![(NSString *)itemType isEqual:?])
      {
        goto LABEL_109;
      }

      linkURL = self->_linkURL;
      if (linkURL != v5->_linkURL && ![(NSURL *)linkURL isEqual:?])
      {
        goto LABEL_109;
      }

      originalURL = self->_originalURL;
      if (originalURL != v5->_originalURL && ![(NSString *)originalURL isEqual:?])
      {
        goto LABEL_109;
      }

      imageURLs = self->_imageURLs;
      if (imageURLs != v5->_imageURLs && ![(NSArray *)imageURLs isEqual:?])
      {
        goto LABEL_109;
      }

      iconURLs = self->_iconURLs;
      if (iconURLs != v5->_iconURLs && ![(NSArray *)iconURLs isEqual:?])
      {
        goto LABEL_109;
      }

      creator = self->_creator;
      if (creator != v5->_creator && ![(NSString *)creator isEqual:?])
      {
        goto LABEL_109;
      }

      if (self->_linkMediaType != v5->_linkMediaType)
      {
        goto LABEL_109;
      }

      iTunesStoreIdentifier = self->_iTunesStoreIdentifier;
      if (iTunesStoreIdentifier != v5->_iTunesStoreIdentifier && ![(NSString *)iTunesStoreIdentifier isEqual:?])
      {
        goto LABEL_109;
      }

      iTunesStoreFrontIdentifier = self->_iTunesStoreFrontIdentifier;
      if (iTunesStoreFrontIdentifier != v5->_iTunesStoreFrontIdentifier && ![(NSString *)iTunesStoreFrontIdentifier isEqual:?])
      {
        goto LABEL_109;
      }

      songTitle = self->_songTitle;
      if (songTitle != v5->_songTitle && ![(NSString *)songTitle isEqual:?])
      {
        goto LABEL_109;
      }

      songArtist = self->_songArtist;
      if (songArtist != v5->_songArtist && ![(NSString *)songArtist isEqual:?])
      {
        goto LABEL_109;
      }

      songAlbum = self->_songAlbum;
      if (songAlbum != v5->_songAlbum && ![(NSString *)songAlbum isEqual:?])
      {
        goto LABEL_109;
      }

      albumName = self->_albumName;
      if (albumName != v5->_albumName && ![(NSString *)albumName isEqual:?])
      {
        goto LABEL_109;
      }

      albumArtist = self->_albumArtist;
      if (albumArtist != v5->_albumArtist && ![(NSString *)albumArtist isEqual:?])
      {
        goto LABEL_109;
      }

      musicVideoName = self->_musicVideoName;
      if (musicVideoName != v5->_musicVideoName && ![(NSString *)musicVideoName isEqual:?])
      {
        goto LABEL_109;
      }

      musicVideoArtist = self->_musicVideoArtist;
      if (musicVideoArtist != v5->_musicVideoArtist && ![(NSString *)musicVideoArtist isEqual:?])
      {
        goto LABEL_109;
      }

      artistName = self->_artistName;
      if (artistName != v5->_artistName && ![(NSString *)artistName isEqual:?])
      {
        goto LABEL_109;
      }

      artistGenre = self->_artistGenre;
      if (artistGenre != v5->_artistGenre && ![(NSString *)artistGenre isEqual:?])
      {
        goto LABEL_109;
      }

      playlistName = self->_playlistName;
      if (playlistName != v5->_playlistName && ![(NSString *)playlistName isEqual:?])
      {
        goto LABEL_109;
      }

      playlistCurator = self->_playlistCurator;
      if (playlistCurator != v5->_playlistCurator && ![(NSString *)playlistCurator isEqual:?])
      {
        goto LABEL_109;
      }

      radioName = self->_radioName;
      if (radioName != v5->_radioName && ![(NSString *)radioName isEqual:?])
      {
        goto LABEL_109;
      }

      radioCurator = self->_radioCurator;
      if (radioCurator != v5->_radioCurator && ![(NSString *)radioCurator isEqual:?])
      {
        goto LABEL_109;
      }

      softwareName = self->_softwareName;
      if (softwareName != v5->_softwareName && ![(NSString *)softwareName isEqual:?])
      {
        goto LABEL_109;
      }

      softwareGenre = self->_softwareGenre;
      if (softwareGenre != v5->_softwareGenre && ![(NSString *)softwareGenre isEqual:?])
      {
        goto LABEL_109;
      }

      softwarePlatform = self->_softwarePlatform;
      if (softwarePlatform != v5->_softwarePlatform && ![(NSString *)softwarePlatform isEqual:?])
      {
        goto LABEL_109;
      }

      bookName = self->_bookName;
      if (bookName != v5->_bookName && ![(NSString *)bookName isEqual:?])
      {
        goto LABEL_109;
      }

      bookAuthor = self->_bookAuthor;
      if (bookAuthor != v5->_bookAuthor && ![(NSString *)bookAuthor isEqual:?])
      {
        goto LABEL_109;
      }

      audioBookName = self->_audioBookName;
      if (audioBookName != v5->_audioBookName && ![(NSString *)audioBookName isEqual:?])
      {
        goto LABEL_109;
      }

      audioBookAuthor = self->_audioBookAuthor;
      if (audioBookAuthor != v5->_audioBookAuthor && ![(NSString *)audioBookAuthor isEqual:?])
      {
        goto LABEL_109;
      }

      audioBookNarrator = self->_audioBookNarrator;
      if (audioBookNarrator != v5->_audioBookNarrator && ![(NSString *)audioBookNarrator isEqual:?])
      {
        goto LABEL_109;
      }

      podcastName = self->_podcastName;
      if (podcastName != v5->_podcastName && ![(NSString *)podcastName isEqual:?])
      {
        goto LABEL_109;
      }

      podcastArtist = self->_podcastArtist;
      if (podcastArtist != v5->_podcastArtist && ![(NSString *)podcastArtist isEqual:?])
      {
        goto LABEL_109;
      }

      podcastEpisodeName = self->_podcastEpisodeName;
      if (podcastEpisodeName != v5->_podcastEpisodeName && ![(NSString *)podcastEpisodeName isEqual:?])
      {
        goto LABEL_109;
      }

      podcastEpisodePodcastName = self->_podcastEpisodePodcastName;
      if (podcastEpisodePodcastName != v5->_podcastEpisodePodcastName && ![(NSString *)podcastEpisodePodcastName isEqual:?])
      {
        goto LABEL_109;
      }

      podcastEpisodeArtist = self->_podcastEpisodeArtist;
      if (podcastEpisodeArtist != v5->_podcastEpisodeArtist && ![(NSString *)podcastEpisodeArtist isEqual:?])
      {
        goto LABEL_109;
      }

      podcastEpisodeReleaseDate = self->_podcastEpisodeReleaseDate;
      if (podcastEpisodeReleaseDate != v5->_podcastEpisodeReleaseDate && ![(NSDateComponents *)podcastEpisodeReleaseDate isEqual:?])
      {
        goto LABEL_109;
      }

      tvEpisodeEpisodeName = self->_tvEpisodeEpisodeName;
      if (tvEpisodeEpisodeName != v5->_tvEpisodeEpisodeName && ![(NSString *)tvEpisodeEpisodeName isEqual:?])
      {
        goto LABEL_109;
      }

      tvEpisodeSeasonName = self->_tvEpisodeSeasonName;
      if (tvEpisodeSeasonName != v5->_tvEpisodeSeasonName && ![(NSString *)tvEpisodeSeasonName isEqual:?])
      {
        goto LABEL_109;
      }

      tvEpisodeGenre = self->_tvEpisodeGenre;
      if (tvEpisodeGenre != v5->_tvEpisodeGenre && ![(NSString *)tvEpisodeGenre isEqual:?])
      {
        goto LABEL_109;
      }

      tvSeasonName = self->_tvSeasonName;
      if (tvSeasonName != v5->_tvSeasonName && ![(NSString *)tvSeasonName isEqual:?])
      {
        goto LABEL_109;
      }

      tvSeasonGenre = self->_tvSeasonGenre;
      if (tvSeasonGenre != v5->_tvSeasonGenre && ![(NSString *)tvSeasonGenre isEqual:?])
      {
        goto LABEL_109;
      }

      if (((movieName = self->_movieName, movieName == v5->_movieName) || [(NSString *)movieName isEqual:?]) && ((movieGenre = self->_movieGenre, movieGenre == v5->_movieGenre) || [(NSString *)movieGenre isEqual:?]) && ((tvShowName = self->_tvShowName, tvShowName == v5->_tvShowName) || [(NSString *)tvShowName isEqual:?]) && ((movieBundleName = self->_movieBundleName, movieBundleName == v5->_movieBundleName) || [(NSString *)movieBundleName isEqual:?]) && ((movieBundleGenre = self->_movieBundleGenre, movieBundleGenre == v5->_movieBundleGenre) || [(NSString *)movieBundleGenre isEqual:?]) && ((appleTvTitle = self->_appleTvTitle, appleTvTitle == v5->_appleTvTitle) || [(NSString *)appleTvTitle isEqual:?]) && ((appleTvSubtitle = self->_appleTvSubtitle, appleTvSubtitle == v5->_appleTvSubtitle) || [(NSString *)appleTvSubtitle isEqual:?]))
      {
        v57 = 1;
      }

      else
      {
LABEL_109:
        v57 = 0;
      }
    }

    else
    {
      v57 = 0;
    }
  }

  return v57;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_siteName hash];
  v4 = [(NSString *)self->_summary hash]^ v3;
  v5 = [(NSString *)self->_title hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_openGraphType hash];
  v7 = [(NSString *)self->_itemType hash];
  v8 = v7 ^ [(NSURL *)self->_linkURL hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_originalURL hash];
  v10 = [(NSArray *)self->_imageURLs hash];
  v11 = v10 ^ [(NSArray *)self->_iconURLs hash];
  v12 = v11 ^ [(NSString *)self->_creator hash];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_linkMediaType];
  v14 = v9 ^ v12 ^ [v13 hash];
  v15 = [(NSString *)self->_iTunesStoreIdentifier hash];
  v16 = v15 ^ [(NSString *)self->_iTunesStoreFrontIdentifier hash];
  v17 = v16 ^ [(NSString *)self->_songTitle hash];
  v18 = v17 ^ [(NSString *)self->_songArtist hash];
  v19 = v14 ^ v18 ^ [(NSString *)self->_songAlbum hash];
  v20 = [(NSString *)self->_albumName hash];
  v21 = v20 ^ [(NSString *)self->_albumArtist hash];
  v22 = v21 ^ [(NSString *)self->_musicVideoName hash];
  v23 = v22 ^ [(NSString *)self->_musicVideoArtist hash];
  v24 = v23 ^ [(NSString *)self->_artistName hash];
  v25 = v19 ^ v24 ^ [(NSString *)self->_artistGenre hash];
  v26 = [(NSString *)self->_playlistName hash];
  v27 = v26 ^ [(NSString *)self->_playlistCurator hash];
  v28 = v27 ^ [(NSString *)self->_radioName hash];
  v29 = v28 ^ [(NSString *)self->_radioCurator hash];
  v30 = v29 ^ [(NSString *)self->_softwareName hash];
  v31 = v30 ^ [(NSString *)self->_softwareGenre hash];
  v32 = v25 ^ v31 ^ [(NSString *)self->_softwarePlatform hash];
  v33 = [(NSString *)self->_bookName hash];
  v34 = v33 ^ [(NSString *)self->_bookAuthor hash];
  v35 = v34 ^ [(NSString *)self->_audioBookName hash];
  v36 = v35 ^ [(NSString *)self->_audioBookAuthor hash];
  v37 = v36 ^ [(NSString *)self->_audioBookNarrator hash];
  v38 = v37 ^ [(NSString *)self->_podcastName hash];
  v39 = v38 ^ [(NSString *)self->_podcastArtist hash];
  v40 = v32 ^ v39 ^ [(NSString *)self->_podcastEpisodeName hash];
  v41 = [(NSString *)self->_podcastEpisodePodcastName hash];
  v42 = v41 ^ [(NSString *)self->_podcastEpisodeArtist hash];
  v43 = v42 ^ [(NSDateComponents *)self->_podcastEpisodeReleaseDate hash];
  v44 = v43 ^ [(NSString *)self->_tvEpisodeEpisodeName hash];
  v45 = v44 ^ [(NSString *)self->_tvEpisodeSeasonName hash];
  v46 = v45 ^ [(NSString *)self->_tvEpisodeGenre hash];
  v47 = v46 ^ [(NSString *)self->_tvSeasonName hash];
  v48 = v47 ^ [(NSString *)self->_tvSeasonGenre hash];
  v49 = v40 ^ v48 ^ [(NSString *)self->_movieName hash];
  v50 = [(NSString *)self->_movieGenre hash];
  v51 = v50 ^ [(NSString *)self->_tvShowName hash];
  v52 = v51 ^ [(NSString *)self->_movieBundleName hash];
  v53 = v52 ^ [(NSString *)self->_movieBundleGenre hash];
  v54 = v53 ^ [(NSString *)self->_appleTvTitle hash];
  v55 = v54 ^ [(NSString *)self->_appleTvSubtitle hash];

  return v49 ^ v55;
}

- (INMessageLinkMetadata)initWithSiteName:(id)a3 summary:(id)a4 title:(id)a5 openGraphType:(id)a6 itemType:(id)a7 linkURL:(id)a8 originalURL:(id)a9 imageURLs:(id)a10 iconURLs:(id)a11 creator:(id)a12 linkMediaType:(int64_t)a13 iTunesStoreIdentifier:(id)a14 iTunesStoreFrontIdentifier:(id)a15 songTitle:(id)a16 songArtist:(id)a17 songAlbum:(id)a18 albumName:(id)a19 albumArtist:(id)a20 musicVideoName:(id)a21 musicVideoArtist:(id)a22 artistName:(id)a23 artistGenre:(id)a24 playlistName:(id)a25 playlistCurator:(id)a26 radioName:(id)a27 radioCurator:(id)a28 softwareName:(id)a29 softwareGenre:(id)a30 softwarePlatform:(id)a31 bookName:(id)a32 bookAuthor:(id)a33 audioBookName:(id)a34 audioBookAuthor:(id)a35 audioBookNarrator:(id)a36 podcastName:(id)a37 podcastArtist:(id)a38 podcastEpisodeName:(id)a39 podcastEpisodePodcastName:(id)a40 podcastEpisodeArtist:(id)a41 podcastEpisodeReleaseDate:(id)a42 tvEpisodeEpisodeName:(id)a43 tvEpisodeSeasonName:(id)a44 tvEpisodeGenre:(id)a45 tvSeasonName:(id)a46 tvSeasonGenre:(id)a47 movieName:(id)a48 movieGenre:(id)a49 tvShowName:(id)a50 movieBundleName:(id)a51 movieBundleGenre:(id)a52 appleTvTitle:(id)a53 appleTvSubtitle:(id)a54
{
  v204 = a3;
  v205 = a4;
  v214 = a5;
  v213 = a6;
  v212 = a7;
  v210 = a8;
  v209 = a9;
  v208 = a10;
  v207 = a11;
  v206 = a12;
  v58 = a14;
  v59 = a15;
  v60 = a16;
  v61 = a17;
  v62 = a18;
  v63 = a19;
  v64 = a20;
  v65 = a21;
  v66 = a22;
  v203 = a23;
  v202 = a24;
  v201 = a25;
  v200 = a26;
  v199 = a27;
  v198 = a28;
  v197 = a29;
  v196 = a30;
  v195 = a31;
  v194 = a32;
  v193 = a33;
  v192 = a34;
  v191 = a35;
  v190 = a36;
  v189 = a37;
  v188 = a38;
  v187 = a39;
  v186 = a40;
  v185 = a41;
  v184 = a42;
  v183 = a43;
  v182 = a44;
  v181 = a45;
  v180 = a46;
  v179 = a47;
  v178 = a48;
  v177 = a49;
  v176 = a50;
  v175 = a51;
  v174 = a52;
  v173 = a53;
  v172 = a54;
  v215.receiver = self;
  v215.super_class = INMessageLinkMetadata;
  v67 = [(INMessageLinkMetadata *)&v215 init];
  if (v67)
  {
    v68 = [v204 copy];
    siteName = v67->_siteName;
    v67->_siteName = v68;

    v70 = [v205 copy];
    summary = v67->_summary;
    v67->_summary = v70;

    v72 = [v214 copy];
    title = v67->_title;
    v67->_title = v72;

    v74 = [v213 copy];
    openGraphType = v67->_openGraphType;
    v67->_openGraphType = v74;

    v76 = [v212 copy];
    itemType = v67->_itemType;
    v67->_itemType = v76;

    v78 = [v210 copy];
    linkURL = v67->_linkURL;
    v67->_linkURL = v78;

    v80 = [v209 copy];
    originalURL = v67->_originalURL;
    v67->_originalURL = v80;

    v82 = [v208 copy];
    imageURLs = v67->_imageURLs;
    v67->_imageURLs = v82;

    v84 = [v207 copy];
    iconURLs = v67->_iconURLs;
    v67->_iconURLs = v84;

    v86 = [v206 copy];
    creator = v67->_creator;
    v67->_creator = v86;

    v67->_linkMediaType = a13;
    v88 = [v58 copy];
    iTunesStoreIdentifier = v67->_iTunesStoreIdentifier;
    v67->_iTunesStoreIdentifier = v88;

    v90 = [v59 copy];
    iTunesStoreFrontIdentifier = v67->_iTunesStoreFrontIdentifier;
    v67->_iTunesStoreFrontIdentifier = v90;

    v92 = [v60 copy];
    songTitle = v67->_songTitle;
    v67->_songTitle = v92;

    v94 = [v61 copy];
    songArtist = v67->_songArtist;
    v67->_songArtist = v94;

    v96 = [v62 copy];
    songAlbum = v67->_songAlbum;
    v67->_songAlbum = v96;

    v98 = [v63 copy];
    albumName = v67->_albumName;
    v67->_albumName = v98;

    v100 = [v64 copy];
    albumArtist = v67->_albumArtist;
    v67->_albumArtist = v100;

    v102 = [v65 copy];
    musicVideoName = v67->_musicVideoName;
    v67->_musicVideoName = v102;

    v104 = [v66 copy];
    musicVideoArtist = v67->_musicVideoArtist;
    v67->_musicVideoArtist = v104;

    v106 = [v203 copy];
    artistName = v67->_artistName;
    v67->_artistName = v106;

    v108 = [v202 copy];
    artistGenre = v67->_artistGenre;
    v67->_artistGenre = v108;

    v110 = [v201 copy];
    playlistName = v67->_playlistName;
    v67->_playlistName = v110;

    v112 = [v200 copy];
    playlistCurator = v67->_playlistCurator;
    v67->_playlistCurator = v112;

    v114 = [v199 copy];
    radioName = v67->_radioName;
    v67->_radioName = v114;

    v116 = [v198 copy];
    radioCurator = v67->_radioCurator;
    v67->_radioCurator = v116;

    v118 = [v197 copy];
    softwareName = v67->_softwareName;
    v67->_softwareName = v118;

    v120 = [v196 copy];
    softwareGenre = v67->_softwareGenre;
    v67->_softwareGenre = v120;

    v122 = [v195 copy];
    softwarePlatform = v67->_softwarePlatform;
    v67->_softwarePlatform = v122;

    v124 = [v194 copy];
    bookName = v67->_bookName;
    v67->_bookName = v124;

    v126 = [v193 copy];
    bookAuthor = v67->_bookAuthor;
    v67->_bookAuthor = v126;

    v128 = [v192 copy];
    audioBookName = v67->_audioBookName;
    v67->_audioBookName = v128;

    v130 = [v191 copy];
    audioBookAuthor = v67->_audioBookAuthor;
    v67->_audioBookAuthor = v130;

    v132 = [v190 copy];
    audioBookNarrator = v67->_audioBookNarrator;
    v67->_audioBookNarrator = v132;

    v134 = [v189 copy];
    podcastName = v67->_podcastName;
    v67->_podcastName = v134;

    v136 = [v188 copy];
    podcastArtist = v67->_podcastArtist;
    v67->_podcastArtist = v136;

    v138 = [v187 copy];
    podcastEpisodeName = v67->_podcastEpisodeName;
    v67->_podcastEpisodeName = v138;

    v140 = [v186 copy];
    podcastEpisodePodcastName = v67->_podcastEpisodePodcastName;
    v67->_podcastEpisodePodcastName = v140;

    v142 = [v185 copy];
    podcastEpisodeArtist = v67->_podcastEpisodeArtist;
    v67->_podcastEpisodeArtist = v142;

    v144 = [v184 copy];
    podcastEpisodeReleaseDate = v67->_podcastEpisodeReleaseDate;
    v67->_podcastEpisodeReleaseDate = v144;

    v146 = [v183 copy];
    tvEpisodeEpisodeName = v67->_tvEpisodeEpisodeName;
    v67->_tvEpisodeEpisodeName = v146;

    v148 = [v182 copy];
    tvEpisodeSeasonName = v67->_tvEpisodeSeasonName;
    v67->_tvEpisodeSeasonName = v148;

    v150 = [v181 copy];
    tvEpisodeGenre = v67->_tvEpisodeGenre;
    v67->_tvEpisodeGenre = v150;

    v152 = [v180 copy];
    tvSeasonName = v67->_tvSeasonName;
    v67->_tvSeasonName = v152;

    v154 = [v179 copy];
    tvSeasonGenre = v67->_tvSeasonGenre;
    v67->_tvSeasonGenre = v154;

    v156 = [v178 copy];
    movieName = v67->_movieName;
    v67->_movieName = v156;

    v158 = [v177 copy];
    movieGenre = v67->_movieGenre;
    v67->_movieGenre = v158;

    v160 = [v176 copy];
    tvShowName = v67->_tvShowName;
    v67->_tvShowName = v160;

    v162 = [v175 copy];
    movieBundleName = v67->_movieBundleName;
    v67->_movieBundleName = v162;

    v164 = [v174 copy];
    movieBundleGenre = v67->_movieBundleGenre;
    v67->_movieBundleGenre = v164;

    v166 = [v173 copy];
    appleTvTitle = v67->_appleTvTitle;
    v67->_appleTvTitle = v166;

    v168 = [v172 copy];
    appleTvSubtitle = v67->_appleTvSubtitle;
    v67->_appleTvSubtitle = v168;
  }

  return v67;
}

- (INMessageLinkMetadata)initWithSiteName:(NSString *)siteName summary:(NSString *)summary title:(NSString *)title openGraphType:(NSString *)openGraphType linkURL:(NSURL *)linkURL
{
  v12 = siteName;
  v13 = summary;
  v14 = title;
  v15 = openGraphType;
  v16 = linkURL;
  v29.receiver = self;
  v29.super_class = INMessageLinkMetadata;
  v17 = [(INMessageLinkMetadata *)&v29 init];
  if (v17)
  {
    v18 = [(NSString *)v12 copy];
    v19 = v17->_siteName;
    v17->_siteName = v18;

    v20 = [(NSString *)v13 copy];
    v21 = v17->_summary;
    v17->_summary = v20;

    v22 = [(NSString *)v14 copy];
    v23 = v17->_title;
    v17->_title = v22;

    v24 = [(NSString *)v15 copy];
    v25 = v17->_openGraphType;
    v17->_openGraphType = v24;

    v26 = [(NSURL *)v16 copy];
    v27 = v17->_linkURL;
    v17->_linkURL = v26;
  }

  return v17;
}

- (INMessageLinkMetadata)init
{
  v3.receiver = self;
  v3.super_class = INMessageLinkMetadata;
  return [(INMessageLinkMetadata *)&v3 init];
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v69 = [v8 objectForKeyedSubscript:@"siteName"];
    v68 = [v8 objectForKeyedSubscript:@"summary"];
    v67 = [v8 objectForKeyedSubscript:@"title"];
    v66 = [v8 objectForKeyedSubscript:@"openGraphType"];
    v65 = [v8 objectForKeyedSubscript:@"itemType"];
    v9 = objc_opt_class();
    [v8 objectForKeyedSubscript:@"linkURL"];
    v10 = v29 = a1;
    v64 = [v7 decodeObjectOfClass:v9 from:v10];

    v63 = [v8 objectForKeyedSubscript:@"originalURL"];
    v62 = [v8 objectForKeyedSubscript:@"imageURLs"];
    v61 = [v8 objectForKeyedSubscript:@"iconURLs"];
    v60 = [v8 objectForKeyedSubscript:@"creator"];
    v11 = [v8 objectForKeyedSubscript:@"linkMediaType"];
    v28 = INMessageLinkMediaTypeWithString(v11);

    v59 = [v8 objectForKeyedSubscript:@"iTunesStoreIdentifier"];
    v58 = [v8 objectForKeyedSubscript:@"iTunesStoreFrontIdentifier"];
    v57 = [v8 objectForKeyedSubscript:@"songTitle"];
    v56 = [v8 objectForKeyedSubscript:@"songArtist"];
    v55 = [v8 objectForKeyedSubscript:@"songAlbum"];
    v54 = [v8 objectForKeyedSubscript:@"albumName"];
    v53 = [v8 objectForKeyedSubscript:@"albumArtist"];
    v52 = [v8 objectForKeyedSubscript:@"musicVideoName"];
    v51 = [v8 objectForKeyedSubscript:@"musicVideoArtist"];
    v50 = [v8 objectForKeyedSubscript:@"artistName"];
    v49 = [v8 objectForKeyedSubscript:@"artistGenre"];
    v48 = [v8 objectForKeyedSubscript:@"playlistName"];
    v47 = [v8 objectForKeyedSubscript:@"playlistCurator"];
    v44 = [v8 objectForKeyedSubscript:@"radioName"];
    v46 = [v8 objectForKeyedSubscript:@"radioCurator"];
    v43 = [v8 objectForKeyedSubscript:@"softwareName"];
    v45 = [v8 objectForKeyedSubscript:@"softwareGenre"];
    v40 = [v8 objectForKeyedSubscript:@"softwarePlatform"];
    v42 = [v8 objectForKeyedSubscript:@"bookName"];
    v39 = [v8 objectForKeyedSubscript:@"bookAuthor"];
    v38 = [v8 objectForKeyedSubscript:@"audioBookName"];
    v41 = [v8 objectForKeyedSubscript:@"audioBookAuthor"];
    v37 = [v8 objectForKeyedSubscript:@"audioBookNarrator"];
    v27 = [v8 objectForKeyedSubscript:@"podcastName"];
    v36 = [v8 objectForKeyedSubscript:@"podcastArtist"];
    v26 = [v8 objectForKeyedSubscript:@"podcastEpisodeName"];
    v25 = [v8 objectForKeyedSubscript:@"podcastEpisodePodcastName"];
    v35 = [v8 objectForKeyedSubscript:@"podcastEpisodeArtist"];
    v12 = objc_opt_class();
    v13 = [v8 objectForKeyedSubscript:@"podcastEpisodeReleaseDate"];
    v34 = [v7 decodeObjectOfClass:v12 from:v13];

    v33 = [v8 objectForKeyedSubscript:@"tvEpisodeEpisodeName"];
    v32 = [v8 objectForKeyedSubscript:@"tvEpisodeSeasonName"];
    v31 = [v8 objectForKeyedSubscript:@"tvEpisodeGenre"];
    v14 = [v8 objectForKeyedSubscript:@"tvSeasonName"];
    v24 = [v8 objectForKeyedSubscript:@"tvSeasonGenre"];
    v15 = [v8 objectForKeyedSubscript:@"movieName"];
    v23 = [v8 objectForKeyedSubscript:@"movieGenre"];
    v16 = [v8 objectForKeyedSubscript:@"tvShowName"];
    v22 = [v8 objectForKeyedSubscript:@"movieBundleName"];
    [v8 objectForKeyedSubscript:@"movieBundleGenre"];
    v21 = v30 = v7;
    v17 = [v8 objectForKeyedSubscript:@"appleTvTitle"];
    v18 = [v8 objectForKeyedSubscript:@"appleTvSubtitle"];
    v19 = [[v29 alloc] initWithSiteName:v69 summary:v68 title:v67 openGraphType:v66 itemType:v65 linkURL:v64 originalURL:v63 imageURLs:v62 iconURLs:v61 creator:v60 linkMediaType:v28 iTunesStoreIdentifier:v59 iTunesStoreFrontIdentifier:v58 songTitle:v57 songArtist:v56 songAlbum:v55 albumName:v54 albumArtist:v53 musicVideoName:v52 musicVideoArtist:v51 artistName:v50 artistGenre:v49 playlistName:v48 playlistCurator:v47 radioName:v44 radioCurator:v46 softwareName:v43 softwareGenre:v45 softwarePlatform:v40 bookName:v42 bookAuthor:v39 audioBookName:v38 audioBookAuthor:v41 audioBookNarrator:v37 podcastName:v27 podcastArtist:v36 podcastEpisodeName:v26 podcastEpisodePodcastName:v25 podcastEpisodeArtist:v35 podcastEpisodeReleaseDate:v34 tvEpisodeEpisodeName:v33 tvEpisodeSeasonName:v32 tvEpisodeGenre:v31 tvSeasonName:v14 tvSeasonGenre:v24 movieName:v15 movieGenre:v23 tvShowName:v16 movieBundleName:v22 movieBundleGenre:v21 appleTvTitle:v17 appleTvSubtitle:v18];

    v7 = v30;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end