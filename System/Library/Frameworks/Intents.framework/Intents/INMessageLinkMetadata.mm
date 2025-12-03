@interface INMessageLinkMetadata
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INMessageLinkMetadata)init;
- (INMessageLinkMetadata)initWithCoder:(id)coder;
- (INMessageLinkMetadata)initWithSiteName:(NSString *)siteName summary:(NSString *)summary title:(NSString *)title openGraphType:(NSString *)openGraphType linkURL:(NSURL *)linkURL;
- (INMessageLinkMetadata)initWithSiteName:(id)name summary:(id)summary title:(id)title openGraphType:(id)type itemType:(id)itemType linkURL:(id)l originalURL:(id)rL imageURLs:(id)self0 iconURLs:(id)self1 creator:(id)self2 linkMediaType:(int64_t)self3 iTunesStoreIdentifier:(id)self4 iTunesStoreFrontIdentifier:(id)self5 songTitle:(id)self6 songArtist:(id)self7 songAlbum:(id)self8 albumName:(id)self9 albumArtist:(id)albumArtist musicVideoName:(id)videoName musicVideoArtist:(id)videoArtist artistName:(id)artistName artistGenre:(id)genre playlistName:(id)playlistName playlistCurator:(id)curator radioName:(id)radioName radioCurator:(id)radioCurator softwareName:(id)softwareName softwareGenre:(id)name0 softwarePlatform:(id)name1 bookName:(id)name2 bookAuthor:(id)name3 audioBookName:(id)name4 audioBookAuthor:(id)name5 audioBookNarrator:(id)name6 podcastName:(id)name7 podcastArtist:(id)name8 podcastEpisodeName:(id)name9 podcastEpisodePodcastName:(id)summary0 podcastEpisodeArtist:(id)summary1 podcastEpisodeReleaseDate:(id)summary2 tvEpisodeEpisodeName:(id)summary3 tvEpisodeSeasonName:(id)summary4 tvEpisodeGenre:(id)summary5 tvSeasonName:(id)summary6 tvSeasonGenre:(id)summary7 movieName:(id)summary8 movieGenre:(id)summary9 tvShowName:(id)title0 movieBundleName:(id)title1 movieBundleGenre:(id)title2 appleTvTitle:(id)title3 appleTvSubtitle:(id)title4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  null = movieGenre;
  if (!movieGenre)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v133 = albumArtist;
  v139 = songArtist;
  v67 = null;
  v160[46] = null;
  v159[47] = @"tvShowName";
  tvShowName = self->_tvShowName;
  null2 = tvShowName;
  if (!tvShowName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v135 = albumName;
  v145 = iTunesStoreIdentifier;
  v66 = null2;
  v160[47] = null2;
  v159[48] = @"movieBundleName";
  movieBundleName = self->_movieBundleName;
  null3 = movieBundleName;
  if (!movieBundleName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v131 = musicVideoName;
  v137 = songAlbum;
  v64 = null3;
  v160[48] = null3;
  v159[49] = @"movieBundleGenre";
  movieBundleGenre = self->_movieBundleGenre;
  null4 = movieBundleGenre;
  if (!movieBundleGenre)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = musicVideoArtist;
  v160[49] = null4;
  v159[50] = @"appleTvTitle";
  appleTvTitle = self->_appleTvTitle;
  null5 = appleTvTitle;
  if (!appleTvTitle)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v160[50] = null5;
  v159[51] = @"appleTvSubtitle";
  appleTvSubtitle = self->_appleTvSubtitle;
  null6 = appleTvSubtitle;
  if (!appleTvSubtitle)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v160[51] = null6;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INMessageLinkMetadata;
  v6 = [(INMessageLinkMetadata *)&v11 description];
  _dictionaryRepresentation = [(INMessageLinkMetadata *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_siteName];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"siteName"];

  v9 = [encoderCopy encodeObject:self->_summary];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"summary"];

  v10 = [encoderCopy encodeObject:self->_title];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"title"];

  v11 = [encoderCopy encodeObject:self->_openGraphType];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"openGraphType"];

  v12 = [encoderCopy encodeObject:self->_itemType];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"itemType"];

  v13 = [encoderCopy encodeObject:self->_linkURL];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"linkURL"];

  v14 = [encoderCopy encodeObject:self->_originalURL];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"originalURL"];

  v15 = [encoderCopy encodeObject:self->_imageURLs];
  [dictionary if_setObjectIfNonNil:v15 forKey:@"imageURLs"];

  v16 = [encoderCopy encodeObject:self->_iconURLs];
  [dictionary if_setObjectIfNonNil:v16 forKey:@"iconURLs"];

  v17 = [encoderCopy encodeObject:self->_creator];
  [dictionary if_setObjectIfNonNil:v17 forKey:@"creator"];

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
  [dictionary if_setObjectIfNonNil:v20 forKey:@"linkMediaType"];

  v21 = [encoderCopy encodeObject:self->_iTunesStoreIdentifier];
  [dictionary if_setObjectIfNonNil:v21 forKey:@"iTunesStoreIdentifier"];

  v22 = [encoderCopy encodeObject:self->_iTunesStoreFrontIdentifier];
  [dictionary if_setObjectIfNonNil:v22 forKey:@"iTunesStoreFrontIdentifier"];

  v23 = [encoderCopy encodeObject:self->_songTitle];
  [dictionary if_setObjectIfNonNil:v23 forKey:@"songTitle"];

  v24 = [encoderCopy encodeObject:self->_songArtist];
  [dictionary if_setObjectIfNonNil:v24 forKey:@"songArtist"];

  v25 = [encoderCopy encodeObject:self->_songAlbum];
  [dictionary if_setObjectIfNonNil:v25 forKey:@"songAlbum"];

  v26 = [encoderCopy encodeObject:self->_albumName];
  [dictionary if_setObjectIfNonNil:v26 forKey:@"albumName"];

  v27 = [encoderCopy encodeObject:self->_albumArtist];
  [dictionary if_setObjectIfNonNil:v27 forKey:@"albumArtist"];

  v28 = [encoderCopy encodeObject:self->_musicVideoName];
  [dictionary if_setObjectIfNonNil:v28 forKey:@"musicVideoName"];

  v29 = [encoderCopy encodeObject:self->_musicVideoArtist];
  [dictionary if_setObjectIfNonNil:v29 forKey:@"musicVideoArtist"];

  v30 = [encoderCopy encodeObject:self->_artistName];
  [dictionary if_setObjectIfNonNil:v30 forKey:@"artistName"];

  v31 = [encoderCopy encodeObject:self->_artistGenre];
  [dictionary if_setObjectIfNonNil:v31 forKey:@"artistGenre"];

  v32 = [encoderCopy encodeObject:self->_playlistName];
  [dictionary if_setObjectIfNonNil:v32 forKey:@"playlistName"];

  v33 = [encoderCopy encodeObject:self->_playlistCurator];
  [dictionary if_setObjectIfNonNil:v33 forKey:@"playlistCurator"];

  v34 = [encoderCopy encodeObject:self->_radioName];
  [dictionary if_setObjectIfNonNil:v34 forKey:@"radioName"];

  v35 = [encoderCopy encodeObject:self->_radioCurator];
  [dictionary if_setObjectIfNonNil:v35 forKey:@"radioCurator"];

  v36 = [encoderCopy encodeObject:self->_softwareName];
  [dictionary if_setObjectIfNonNil:v36 forKey:@"softwareName"];

  v37 = [encoderCopy encodeObject:self->_softwareGenre];
  [dictionary if_setObjectIfNonNil:v37 forKey:@"softwareGenre"];

  v38 = [encoderCopy encodeObject:self->_softwarePlatform];
  [dictionary if_setObjectIfNonNil:v38 forKey:@"softwarePlatform"];

  v39 = [encoderCopy encodeObject:self->_bookName];
  [dictionary if_setObjectIfNonNil:v39 forKey:@"bookName"];

  v40 = [encoderCopy encodeObject:self->_bookAuthor];
  [dictionary if_setObjectIfNonNil:v40 forKey:@"bookAuthor"];

  v41 = [encoderCopy encodeObject:self->_audioBookName];
  [dictionary if_setObjectIfNonNil:v41 forKey:@"audioBookName"];

  v42 = [encoderCopy encodeObject:self->_audioBookAuthor];
  [dictionary if_setObjectIfNonNil:v42 forKey:@"audioBookAuthor"];

  v43 = [encoderCopy encodeObject:self->_audioBookNarrator];
  [dictionary if_setObjectIfNonNil:v43 forKey:@"audioBookNarrator"];

  v44 = [encoderCopy encodeObject:self->_podcastName];
  [dictionary if_setObjectIfNonNil:v44 forKey:@"podcastName"];

  v45 = [encoderCopy encodeObject:self->_podcastArtist];
  [dictionary if_setObjectIfNonNil:v45 forKey:@"podcastArtist"];

  v46 = [encoderCopy encodeObject:self->_podcastEpisodeName];
  [dictionary if_setObjectIfNonNil:v46 forKey:@"podcastEpisodeName"];

  v47 = [encoderCopy encodeObject:self->_podcastEpisodePodcastName];
  [dictionary if_setObjectIfNonNil:v47 forKey:@"podcastEpisodePodcastName"];

  v48 = [encoderCopy encodeObject:self->_podcastEpisodeArtist];
  [dictionary if_setObjectIfNonNil:v48 forKey:@"podcastEpisodeArtist"];

  v49 = [encoderCopy encodeObject:self->_podcastEpisodeReleaseDate];
  [dictionary if_setObjectIfNonNil:v49 forKey:@"podcastEpisodeReleaseDate"];

  v50 = [encoderCopy encodeObject:self->_tvEpisodeEpisodeName];
  [dictionary if_setObjectIfNonNil:v50 forKey:@"tvEpisodeEpisodeName"];

  v51 = [encoderCopy encodeObject:self->_tvEpisodeSeasonName];
  [dictionary if_setObjectIfNonNil:v51 forKey:@"tvEpisodeSeasonName"];

  v52 = [encoderCopy encodeObject:self->_tvEpisodeGenre];
  [dictionary if_setObjectIfNonNil:v52 forKey:@"tvEpisodeGenre"];

  v53 = [encoderCopy encodeObject:self->_tvSeasonName];
  [dictionary if_setObjectIfNonNil:v53 forKey:@"tvSeasonName"];

  v54 = [encoderCopy encodeObject:self->_tvSeasonGenre];
  [dictionary if_setObjectIfNonNil:v54 forKey:@"tvSeasonGenre"];

  v55 = [encoderCopy encodeObject:self->_movieName];
  [dictionary if_setObjectIfNonNil:v55 forKey:@"movieName"];

  v56 = [encoderCopy encodeObject:self->_movieGenre];
  [dictionary if_setObjectIfNonNil:v56 forKey:@"movieGenre"];

  v57 = [encoderCopy encodeObject:self->_tvShowName];
  [dictionary if_setObjectIfNonNil:v57 forKey:@"tvShowName"];

  v58 = [encoderCopy encodeObject:self->_movieBundleName];
  [dictionary if_setObjectIfNonNil:v58 forKey:@"movieBundleName"];

  v59 = [encoderCopy encodeObject:self->_movieBundleGenre];
  [dictionary if_setObjectIfNonNil:v59 forKey:@"movieBundleGenre"];

  v60 = [encoderCopy encodeObject:self->_appleTvTitle];
  [dictionary if_setObjectIfNonNil:v60 forKey:@"appleTvTitle"];

  v61 = [encoderCopy encodeObject:self->_appleTvSubtitle];

  [dictionary if_setObjectIfNonNil:v61 forKey:@"appleTvSubtitle"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  siteName = self->_siteName;
  coderCopy = coder;
  [coderCopy encodeObject:siteName forKey:@"siteName"];
  [coderCopy encodeObject:self->_summary forKey:@"summary"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_openGraphType forKey:@"openGraphType"];
  [coderCopy encodeObject:self->_itemType forKey:@"itemType"];
  [coderCopy encodeObject:self->_linkURL forKey:@"linkURL"];
  [coderCopy encodeObject:self->_originalURL forKey:@"originalURL"];
  [coderCopy encodeObject:self->_imageURLs forKey:@"imageURLs"];
  [coderCopy encodeObject:self->_iconURLs forKey:@"iconURLs"];
  [coderCopy encodeObject:self->_creator forKey:@"creator"];
  [coderCopy encodeInteger:self->_linkMediaType forKey:@"linkMediaType"];
  [coderCopy encodeObject:self->_iTunesStoreIdentifier forKey:@"iTunesStoreIdentifier"];
  [coderCopy encodeObject:self->_iTunesStoreFrontIdentifier forKey:@"iTunesStoreFrontIdentifier"];
  [coderCopy encodeObject:self->_songTitle forKey:@"songTitle"];
  [coderCopy encodeObject:self->_songArtist forKey:@"songArtist"];
  [coderCopy encodeObject:self->_songAlbum forKey:@"songAlbum"];
  [coderCopy encodeObject:self->_albumName forKey:@"albumName"];
  [coderCopy encodeObject:self->_albumArtist forKey:@"albumArtist"];
  [coderCopy encodeObject:self->_musicVideoName forKey:@"musicVideoName"];
  [coderCopy encodeObject:self->_musicVideoArtist forKey:@"musicVideoArtist"];
  [coderCopy encodeObject:self->_artistName forKey:@"artistName"];
  [coderCopy encodeObject:self->_artistGenre forKey:@"artistGenre"];
  [coderCopy encodeObject:self->_playlistName forKey:@"playlistName"];
  [coderCopy encodeObject:self->_playlistCurator forKey:@"playlistCurator"];
  [coderCopy encodeObject:self->_radioName forKey:@"radioName"];
  [coderCopy encodeObject:self->_radioCurator forKey:@"radioCurator"];
  [coderCopy encodeObject:self->_softwareName forKey:@"softwareName"];
  [coderCopy encodeObject:self->_softwareGenre forKey:@"softwareGenre"];
  [coderCopy encodeObject:self->_softwarePlatform forKey:@"softwarePlatform"];
  [coderCopy encodeObject:self->_bookName forKey:@"bookName"];
  [coderCopy encodeObject:self->_bookAuthor forKey:@"bookAuthor"];
  [coderCopy encodeObject:self->_audioBookName forKey:@"audioBookName"];
  [coderCopy encodeObject:self->_audioBookAuthor forKey:@"audioBookAuthor"];
  [coderCopy encodeObject:self->_audioBookNarrator forKey:@"audioBookNarrator"];
  [coderCopy encodeObject:self->_podcastName forKey:@"podcastName"];
  [coderCopy encodeObject:self->_podcastArtist forKey:@"podcastArtist"];
  [coderCopy encodeObject:self->_podcastEpisodeName forKey:@"podcastEpisodeName"];
  [coderCopy encodeObject:self->_podcastEpisodePodcastName forKey:@"podcastEpisodePodcastName"];
  [coderCopy encodeObject:self->_podcastEpisodeArtist forKey:@"podcastEpisodeArtist"];
  [coderCopy encodeObject:self->_podcastEpisodeReleaseDate forKey:@"podcastEpisodeReleaseDate"];
  [coderCopy encodeObject:self->_tvEpisodeEpisodeName forKey:@"tvEpisodeEpisodeName"];
  [coderCopy encodeObject:self->_tvEpisodeSeasonName forKey:@"tvEpisodeSeasonName"];
  [coderCopy encodeObject:self->_tvEpisodeGenre forKey:@"tvEpisodeGenre"];
  [coderCopy encodeObject:self->_tvSeasonName forKey:@"tvSeasonName"];
  [coderCopy encodeObject:self->_tvSeasonGenre forKey:@"tvSeasonGenre"];
  [coderCopy encodeObject:self->_movieName forKey:@"movieName"];
  [coderCopy encodeObject:self->_movieGenre forKey:@"movieGenre"];
  [coderCopy encodeObject:self->_tvShowName forKey:@"tvShowName"];
  [coderCopy encodeObject:self->_movieBundleName forKey:@"movieBundleName"];
  [coderCopy encodeObject:self->_movieBundleGenre forKey:@"movieBundleGenre"];
  [coderCopy encodeObject:self->_appleTvTitle forKey:@"appleTvTitle"];
  [coderCopy encodeObject:self->_appleTvSubtitle forKey:@"appleTvSubtitle"];
}

- (INMessageLinkMetadata)initWithCoder:(id)coder
{
  v208[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v206 = [coderCopy decodeObjectOfClasses:v6 forKey:@"siteName"];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v205 = [coderCopy decodeObjectOfClasses:v9 forKey:@"summary"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v204 = [coderCopy decodeObjectOfClasses:v12 forKey:@"title"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v203 = [coderCopy decodeObjectOfClasses:v15 forKey:@"openGraphType"];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v202 = [coderCopy decodeObjectOfClasses:v18 forKey:@"itemType"];

  v201 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkURL"];
  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v200 = [coderCopy decodeObjectOfClasses:v21 forKey:@"originalURL"];

  v22 = MEMORY[0x1E695DFD8];
  v208[0] = objc_opt_class();
  v208[1] = objc_opt_class();
  v208[2] = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v208 count:3];
  v24 = [v22 setWithArray:v23];
  v199 = [coderCopy decodeObjectOfClasses:v24 forKey:@"imageURLs"];

  v25 = MEMORY[0x1E695DFD8];
  v207[0] = objc_opt_class();
  v207[1] = objc_opt_class();
  v207[2] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v207 count:3];
  v27 = [v25 setWithArray:v26];
  v198 = [coderCopy decodeObjectOfClasses:v27 forKey:@"iconURLs"];

  v28 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
  v197 = [coderCopy decodeObjectOfClasses:v30 forKey:@"creator"];

  v168 = [coderCopy decodeIntegerForKey:@"linkMediaType"];
  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
  v196 = [coderCopy decodeObjectOfClasses:v33 forKey:@"iTunesStoreIdentifier"];

  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
  v195 = [coderCopy decodeObjectOfClasses:v36 forKey:@"iTunesStoreFrontIdentifier"];

  v37 = MEMORY[0x1E695DFD8];
  v38 = objc_opt_class();
  v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
  v194 = [coderCopy decodeObjectOfClasses:v39 forKey:@"songTitle"];

  v40 = MEMORY[0x1E695DFD8];
  v41 = objc_opt_class();
  v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
  v193 = [coderCopy decodeObjectOfClasses:v42 forKey:@"songArtist"];

  v43 = MEMORY[0x1E695DFD8];
  v44 = objc_opt_class();
  v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
  v192 = [coderCopy decodeObjectOfClasses:v45 forKey:@"songAlbum"];

  v46 = MEMORY[0x1E695DFD8];
  v47 = objc_opt_class();
  v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
  v191 = [coderCopy decodeObjectOfClasses:v48 forKey:@"albumName"];

  v49 = MEMORY[0x1E695DFD8];
  v50 = objc_opt_class();
  v51 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
  v190 = [coderCopy decodeObjectOfClasses:v51 forKey:@"albumArtist"];

  v52 = MEMORY[0x1E695DFD8];
  v53 = objc_opt_class();
  v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
  v189 = [coderCopy decodeObjectOfClasses:v54 forKey:@"musicVideoName"];

  v55 = MEMORY[0x1E695DFD8];
  v56 = objc_opt_class();
  v57 = [v55 setWithObjects:{v56, objc_opt_class(), 0}];
  v188 = [coderCopy decodeObjectOfClasses:v57 forKey:@"musicVideoArtist"];

  v58 = MEMORY[0x1E695DFD8];
  v59 = objc_opt_class();
  v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
  v187 = [coderCopy decodeObjectOfClasses:v60 forKey:@"artistName"];

  v61 = MEMORY[0x1E695DFD8];
  v62 = objc_opt_class();
  v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
  v186 = [coderCopy decodeObjectOfClasses:v63 forKey:@"artistGenre"];

  v64 = MEMORY[0x1E695DFD8];
  v65 = objc_opt_class();
  v66 = [v64 setWithObjects:{v65, objc_opt_class(), 0}];
  v185 = [coderCopy decodeObjectOfClasses:v66 forKey:@"playlistName"];

  v67 = MEMORY[0x1E695DFD8];
  v68 = objc_opt_class();
  v69 = [v67 setWithObjects:{v68, objc_opt_class(), 0}];
  v184 = [coderCopy decodeObjectOfClasses:v69 forKey:@"playlistCurator"];

  v70 = MEMORY[0x1E695DFD8];
  v71 = objc_opt_class();
  v72 = [v70 setWithObjects:{v71, objc_opt_class(), 0}];
  v183 = [coderCopy decodeObjectOfClasses:v72 forKey:@"radioName"];

  v73 = MEMORY[0x1E695DFD8];
  v74 = objc_opt_class();
  v75 = [v73 setWithObjects:{v74, objc_opt_class(), 0}];
  v182 = [coderCopy decodeObjectOfClasses:v75 forKey:@"radioCurator"];

  v76 = MEMORY[0x1E695DFD8];
  v77 = objc_opt_class();
  v78 = [v76 setWithObjects:{v77, objc_opt_class(), 0}];
  v181 = [coderCopy decodeObjectOfClasses:v78 forKey:@"softwareName"];

  v79 = MEMORY[0x1E695DFD8];
  v80 = objc_opt_class();
  v81 = [v79 setWithObjects:{v80, objc_opt_class(), 0}];
  v180 = [coderCopy decodeObjectOfClasses:v81 forKey:@"softwareGenre"];

  v82 = MEMORY[0x1E695DFD8];
  v83 = objc_opt_class();
  v84 = [v82 setWithObjects:{v83, objc_opt_class(), 0}];
  v179 = [coderCopy decodeObjectOfClasses:v84 forKey:@"softwarePlatform"];

  v85 = MEMORY[0x1E695DFD8];
  v86 = objc_opt_class();
  v87 = [v85 setWithObjects:{v86, objc_opt_class(), 0}];
  v178 = [coderCopy decodeObjectOfClasses:v87 forKey:@"bookName"];

  v88 = MEMORY[0x1E695DFD8];
  v89 = objc_opt_class();
  v90 = [v88 setWithObjects:{v89, objc_opt_class(), 0}];
  v177 = [coderCopy decodeObjectOfClasses:v90 forKey:@"bookAuthor"];

  v91 = MEMORY[0x1E695DFD8];
  v92 = objc_opt_class();
  v93 = [v91 setWithObjects:{v92, objc_opt_class(), 0}];
  v176 = [coderCopy decodeObjectOfClasses:v93 forKey:@"audioBookName"];

  v94 = MEMORY[0x1E695DFD8];
  v95 = objc_opt_class();
  v96 = [v94 setWithObjects:{v95, objc_opt_class(), 0}];
  v175 = [coderCopy decodeObjectOfClasses:v96 forKey:@"audioBookAuthor"];

  v97 = MEMORY[0x1E695DFD8];
  v98 = objc_opt_class();
  v99 = [v97 setWithObjects:{v98, objc_opt_class(), 0}];
  v174 = [coderCopy decodeObjectOfClasses:v99 forKey:@"audioBookNarrator"];

  v100 = MEMORY[0x1E695DFD8];
  v101 = objc_opt_class();
  v102 = [v100 setWithObjects:{v101, objc_opt_class(), 0}];
  v173 = [coderCopy decodeObjectOfClasses:v102 forKey:@"podcastName"];

  v103 = MEMORY[0x1E695DFD8];
  v104 = objc_opt_class();
  v105 = [v103 setWithObjects:{v104, objc_opt_class(), 0}];
  v172 = [coderCopy decodeObjectOfClasses:v105 forKey:@"podcastArtist"];

  v106 = MEMORY[0x1E695DFD8];
  v107 = objc_opt_class();
  v108 = [v106 setWithObjects:{v107, objc_opt_class(), 0}];
  v171 = [coderCopy decodeObjectOfClasses:v108 forKey:@"podcastEpisodeName"];

  v109 = MEMORY[0x1E695DFD8];
  v110 = objc_opt_class();
  v111 = [v109 setWithObjects:{v110, objc_opt_class(), 0}];
  v167 = [coderCopy decodeObjectOfClasses:v111 forKey:@"podcastEpisodePodcastName"];

  v112 = MEMORY[0x1E695DFD8];
  v113 = objc_opt_class();
  v114 = [v112 setWithObjects:{v113, objc_opt_class(), 0}];
  v166 = [coderCopy decodeObjectOfClasses:v114 forKey:@"podcastEpisodeArtist"];

  v165 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"podcastEpisodeReleaseDate"];
  v115 = MEMORY[0x1E695DFD8];
  v116 = objc_opt_class();
  v117 = [v115 setWithObjects:{v116, objc_opt_class(), 0}];
  v164 = [coderCopy decodeObjectOfClasses:v117 forKey:@"tvEpisodeEpisodeName"];

  v118 = MEMORY[0x1E695DFD8];
  v119 = objc_opt_class();
  v120 = [v118 setWithObjects:{v119, objc_opt_class(), 0}];
  v163 = [coderCopy decodeObjectOfClasses:v120 forKey:@"tvEpisodeSeasonName"];

  v121 = MEMORY[0x1E695DFD8];
  v122 = objc_opt_class();
  v123 = [v121 setWithObjects:{v122, objc_opt_class(), 0}];
  v162 = [coderCopy decodeObjectOfClasses:v123 forKey:@"tvEpisodeGenre"];

  v124 = MEMORY[0x1E695DFD8];
  v125 = objc_opt_class();
  v126 = [v124 setWithObjects:{v125, objc_opt_class(), 0}];
  v161 = [coderCopy decodeObjectOfClasses:v126 forKey:@"tvSeasonName"];

  v127 = MEMORY[0x1E695DFD8];
  v128 = objc_opt_class();
  v129 = [v127 setWithObjects:{v128, objc_opt_class(), 0}];
  v160 = [coderCopy decodeObjectOfClasses:v129 forKey:@"tvSeasonGenre"];

  v130 = MEMORY[0x1E695DFD8];
  v131 = objc_opt_class();
  v132 = [v130 setWithObjects:{v131, objc_opt_class(), 0}];
  v159 = [coderCopy decodeObjectOfClasses:v132 forKey:@"movieName"];

  v133 = MEMORY[0x1E695DFD8];
  v134 = objc_opt_class();
  v135 = [v133 setWithObjects:{v134, objc_opt_class(), 0}];
  v158 = [coderCopy decodeObjectOfClasses:v135 forKey:@"movieGenre"];

  v136 = MEMORY[0x1E695DFD8];
  v137 = objc_opt_class();
  v138 = [v136 setWithObjects:{v137, objc_opt_class(), 0}];
  v157 = [coderCopy decodeObjectOfClasses:v138 forKey:@"tvShowName"];

  v139 = MEMORY[0x1E695DFD8];
  v140 = objc_opt_class();
  v141 = [v139 setWithObjects:{v140, objc_opt_class(), 0}];
  v156 = [coderCopy decodeObjectOfClasses:v141 forKey:@"movieBundleName"];

  v142 = MEMORY[0x1E695DFD8];
  v143 = objc_opt_class();
  v144 = [v142 setWithObjects:{v143, objc_opt_class(), 0}];
  v155 = [coderCopy decodeObjectOfClasses:v144 forKey:@"movieBundleGenre"];

  v145 = MEMORY[0x1E695DFD8];
  v146 = objc_opt_class();
  v147 = [v145 setWithObjects:{v146, objc_opt_class(), 0}];
  v154 = [coderCopy decodeObjectOfClasses:v147 forKey:@"appleTvTitle"];

  v148 = MEMORY[0x1E695DFD8];
  v149 = objc_opt_class();
  v150 = [v148 setWithObjects:{v149, objc_opt_class(), 0}];
  v151 = [coderCopy decodeObjectOfClasses:v150 forKey:@"appleTvSubtitle"];

  v170 = [(INMessageLinkMetadata *)self initWithSiteName:v206 summary:v205 title:v204 openGraphType:v203 itemType:v202 linkURL:v201 originalURL:v200 imageURLs:v199 iconURLs:v198 creator:v197 linkMediaType:v168 iTunesStoreIdentifier:v196 iTunesStoreFrontIdentifier:v195 songTitle:v194 songArtist:v193 songAlbum:v192 albumName:v191 albumArtist:v190 musicVideoName:v189 musicVideoArtist:v188 artistName:v187 artistGenre:v186 playlistName:v185 playlistCurator:v184 radioName:v183 radioCurator:v182 softwareName:v181 softwareGenre:v180 softwarePlatform:v179 bookName:v178 bookAuthor:v177 audioBookName:v176 audioBookAuthor:v175 audioBookNarrator:v174 podcastName:v173 podcastArtist:v172 podcastEpisodeName:v171 podcastEpisodePodcastName:v167 podcastEpisodeArtist:v166 podcastEpisodeReleaseDate:v165 tvEpisodeEpisodeName:v164 tvEpisodeSeasonName:v163 tvEpisodeGenre:v162 tvSeasonName:v161 tvSeasonGenre:v160 movieName:v159 movieGenre:v158 tvShowName:v157 movieBundleName:v156 movieBundleGenre:v155 appleTvTitle:v154 appleTvSubtitle:v151];
  v152 = *MEMORY[0x1E69E9840];
  return v170;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v57 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INMessageLinkMetadata)initWithSiteName:(id)name summary:(id)summary title:(id)title openGraphType:(id)type itemType:(id)itemType linkURL:(id)l originalURL:(id)rL imageURLs:(id)self0 iconURLs:(id)self1 creator:(id)self2 linkMediaType:(int64_t)self3 iTunesStoreIdentifier:(id)self4 iTunesStoreFrontIdentifier:(id)self5 songTitle:(id)self6 songArtist:(id)self7 songAlbum:(id)self8 albumName:(id)self9 albumArtist:(id)albumArtist musicVideoName:(id)videoName musicVideoArtist:(id)videoArtist artistName:(id)artistName artistGenre:(id)genre playlistName:(id)playlistName playlistCurator:(id)curator radioName:(id)radioName radioCurator:(id)radioCurator softwareName:(id)softwareName softwareGenre:(id)name0 softwarePlatform:(id)name1 bookName:(id)name2 bookAuthor:(id)name3 audioBookName:(id)name4 audioBookAuthor:(id)name5 audioBookNarrator:(id)name6 podcastName:(id)name7 podcastArtist:(id)name8 podcastEpisodeName:(id)name9 podcastEpisodePodcastName:(id)summary0 podcastEpisodeArtist:(id)summary1 podcastEpisodeReleaseDate:(id)summary2 tvEpisodeEpisodeName:(id)summary3 tvEpisodeSeasonName:(id)summary4 tvEpisodeGenre:(id)summary5 tvSeasonName:(id)summary6 tvSeasonGenre:(id)summary7 movieName:(id)summary8 movieGenre:(id)summary9 tvShowName:(id)title0 movieBundleName:(id)title1 movieBundleGenre:(id)title2 appleTvTitle:(id)title3 appleTvSubtitle:(id)title4
{
  nameCopy = name;
  summaryCopy = summary;
  titleCopy = title;
  typeCopy = type;
  itemTypeCopy = itemType;
  lCopy = l;
  rLCopy = rL;
  lsCopy = ls;
  rLsCopy = rLs;
  creatorCopy = creator;
  identifierCopy = identifier;
  frontIdentifierCopy = frontIdentifier;
  songTitleCopy = songTitle;
  artistCopy = artist;
  albumCopy = album;
  albumNameCopy = albumName;
  albumArtistCopy = albumArtist;
  videoNameCopy = videoName;
  videoArtistCopy = videoArtist;
  artistNameCopy = artistName;
  genreCopy = genre;
  playlistNameCopy = playlistName;
  curatorCopy = curator;
  radioNameCopy = radioName;
  radioCuratorCopy = radioCurator;
  softwareNameCopy = softwareName;
  softwareGenreCopy = softwareGenre;
  platformCopy = platform;
  bookNameCopy = bookName;
  authorCopy = author;
  audioBookNameCopy = audioBookName;
  bookAuthorCopy = bookAuthor;
  narratorCopy = narrator;
  podcastNameCopy = podcastName;
  podcastArtistCopy = podcastArtist;
  episodeNameCopy = episodeName;
  episodePodcastNameCopy = episodePodcastName;
  episodeArtistCopy = episodeArtist;
  dateCopy = date;
  episodeEpisodeNameCopy = episodeEpisodeName;
  seasonNameCopy = seasonName;
  episodeGenreCopy = episodeGenre;
  tvSeasonNameCopy = tvSeasonName;
  seasonGenreCopy = seasonGenre;
  movieNameCopy = movieName;
  movieGenreCopy = movieGenre;
  showNameCopy = showName;
  bundleNameCopy = bundleName;
  bundleGenreCopy = bundleGenre;
  tvTitleCopy = tvTitle;
  subtitleCopy = subtitle;
  v215.receiver = self;
  v215.super_class = INMessageLinkMetadata;
  v67 = [(INMessageLinkMetadata *)&v215 init];
  if (v67)
  {
    v68 = [nameCopy copy];
    siteName = v67->_siteName;
    v67->_siteName = v68;

    v70 = [summaryCopy copy];
    summary = v67->_summary;
    v67->_summary = v70;

    v72 = [titleCopy copy];
    title = v67->_title;
    v67->_title = v72;

    v74 = [typeCopy copy];
    openGraphType = v67->_openGraphType;
    v67->_openGraphType = v74;

    v76 = [itemTypeCopy copy];
    itemType = v67->_itemType;
    v67->_itemType = v76;

    v78 = [lCopy copy];
    linkURL = v67->_linkURL;
    v67->_linkURL = v78;

    v80 = [rLCopy copy];
    originalURL = v67->_originalURL;
    v67->_originalURL = v80;

    v82 = [lsCopy copy];
    imageURLs = v67->_imageURLs;
    v67->_imageURLs = v82;

    v84 = [rLsCopy copy];
    iconURLs = v67->_iconURLs;
    v67->_iconURLs = v84;

    v86 = [creatorCopy copy];
    creator = v67->_creator;
    v67->_creator = v86;

    v67->_linkMediaType = mediaType;
    v88 = [identifierCopy copy];
    iTunesStoreIdentifier = v67->_iTunesStoreIdentifier;
    v67->_iTunesStoreIdentifier = v88;

    v90 = [frontIdentifierCopy copy];
    iTunesStoreFrontIdentifier = v67->_iTunesStoreFrontIdentifier;
    v67->_iTunesStoreFrontIdentifier = v90;

    v92 = [songTitleCopy copy];
    songTitle = v67->_songTitle;
    v67->_songTitle = v92;

    v94 = [artistCopy copy];
    songArtist = v67->_songArtist;
    v67->_songArtist = v94;

    v96 = [albumCopy copy];
    songAlbum = v67->_songAlbum;
    v67->_songAlbum = v96;

    v98 = [albumNameCopy copy];
    albumName = v67->_albumName;
    v67->_albumName = v98;

    v100 = [albumArtistCopy copy];
    albumArtist = v67->_albumArtist;
    v67->_albumArtist = v100;

    v102 = [videoNameCopy copy];
    musicVideoName = v67->_musicVideoName;
    v67->_musicVideoName = v102;

    v104 = [videoArtistCopy copy];
    musicVideoArtist = v67->_musicVideoArtist;
    v67->_musicVideoArtist = v104;

    v106 = [artistNameCopy copy];
    artistName = v67->_artistName;
    v67->_artistName = v106;

    v108 = [genreCopy copy];
    artistGenre = v67->_artistGenre;
    v67->_artistGenre = v108;

    v110 = [playlistNameCopy copy];
    playlistName = v67->_playlistName;
    v67->_playlistName = v110;

    v112 = [curatorCopy copy];
    playlistCurator = v67->_playlistCurator;
    v67->_playlistCurator = v112;

    v114 = [radioNameCopy copy];
    radioName = v67->_radioName;
    v67->_radioName = v114;

    v116 = [radioCuratorCopy copy];
    radioCurator = v67->_radioCurator;
    v67->_radioCurator = v116;

    v118 = [softwareNameCopy copy];
    softwareName = v67->_softwareName;
    v67->_softwareName = v118;

    v120 = [softwareGenreCopy copy];
    softwareGenre = v67->_softwareGenre;
    v67->_softwareGenre = v120;

    v122 = [platformCopy copy];
    softwarePlatform = v67->_softwarePlatform;
    v67->_softwarePlatform = v122;

    v124 = [bookNameCopy copy];
    bookName = v67->_bookName;
    v67->_bookName = v124;

    v126 = [authorCopy copy];
    bookAuthor = v67->_bookAuthor;
    v67->_bookAuthor = v126;

    v128 = [audioBookNameCopy copy];
    audioBookName = v67->_audioBookName;
    v67->_audioBookName = v128;

    v130 = [bookAuthorCopy copy];
    audioBookAuthor = v67->_audioBookAuthor;
    v67->_audioBookAuthor = v130;

    v132 = [narratorCopy copy];
    audioBookNarrator = v67->_audioBookNarrator;
    v67->_audioBookNarrator = v132;

    v134 = [podcastNameCopy copy];
    podcastName = v67->_podcastName;
    v67->_podcastName = v134;

    v136 = [podcastArtistCopy copy];
    podcastArtist = v67->_podcastArtist;
    v67->_podcastArtist = v136;

    v138 = [episodeNameCopy copy];
    podcastEpisodeName = v67->_podcastEpisodeName;
    v67->_podcastEpisodeName = v138;

    v140 = [episodePodcastNameCopy copy];
    podcastEpisodePodcastName = v67->_podcastEpisodePodcastName;
    v67->_podcastEpisodePodcastName = v140;

    v142 = [episodeArtistCopy copy];
    podcastEpisodeArtist = v67->_podcastEpisodeArtist;
    v67->_podcastEpisodeArtist = v142;

    v144 = [dateCopy copy];
    podcastEpisodeReleaseDate = v67->_podcastEpisodeReleaseDate;
    v67->_podcastEpisodeReleaseDate = v144;

    v146 = [episodeEpisodeNameCopy copy];
    tvEpisodeEpisodeName = v67->_tvEpisodeEpisodeName;
    v67->_tvEpisodeEpisodeName = v146;

    v148 = [seasonNameCopy copy];
    tvEpisodeSeasonName = v67->_tvEpisodeSeasonName;
    v67->_tvEpisodeSeasonName = v148;

    v150 = [episodeGenreCopy copy];
    tvEpisodeGenre = v67->_tvEpisodeGenre;
    v67->_tvEpisodeGenre = v150;

    v152 = [tvSeasonNameCopy copy];
    tvSeasonName = v67->_tvSeasonName;
    v67->_tvSeasonName = v152;

    v154 = [seasonGenreCopy copy];
    tvSeasonGenre = v67->_tvSeasonGenre;
    v67->_tvSeasonGenre = v154;

    v156 = [movieNameCopy copy];
    movieName = v67->_movieName;
    v67->_movieName = v156;

    v158 = [movieGenreCopy copy];
    movieGenre = v67->_movieGenre;
    v67->_movieGenre = v158;

    v160 = [showNameCopy copy];
    tvShowName = v67->_tvShowName;
    v67->_tvShowName = v160;

    v162 = [bundleNameCopy copy];
    movieBundleName = v67->_movieBundleName;
    v67->_movieBundleName = v162;

    v164 = [bundleGenreCopy copy];
    movieBundleGenre = v67->_movieBundleGenre;
    v67->_movieBundleGenre = v164;

    v166 = [tvTitleCopy copy];
    appleTvTitle = v67->_appleTvTitle;
    v67->_appleTvTitle = v166;

    v168 = [subtitleCopy copy];
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

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v69 = [fromCopy objectForKeyedSubscript:@"siteName"];
    v68 = [fromCopy objectForKeyedSubscript:@"summary"];
    v67 = [fromCopy objectForKeyedSubscript:@"title"];
    v66 = [fromCopy objectForKeyedSubscript:@"openGraphType"];
    v65 = [fromCopy objectForKeyedSubscript:@"itemType"];
    v9 = objc_opt_class();
    [fromCopy objectForKeyedSubscript:@"linkURL"];
    v10 = v29 = self;
    v64 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v63 = [fromCopy objectForKeyedSubscript:@"originalURL"];
    v62 = [fromCopy objectForKeyedSubscript:@"imageURLs"];
    v61 = [fromCopy objectForKeyedSubscript:@"iconURLs"];
    v60 = [fromCopy objectForKeyedSubscript:@"creator"];
    v11 = [fromCopy objectForKeyedSubscript:@"linkMediaType"];
    v28 = INMessageLinkMediaTypeWithString(v11);

    v59 = [fromCopy objectForKeyedSubscript:@"iTunesStoreIdentifier"];
    v58 = [fromCopy objectForKeyedSubscript:@"iTunesStoreFrontIdentifier"];
    v57 = [fromCopy objectForKeyedSubscript:@"songTitle"];
    v56 = [fromCopy objectForKeyedSubscript:@"songArtist"];
    v55 = [fromCopy objectForKeyedSubscript:@"songAlbum"];
    v54 = [fromCopy objectForKeyedSubscript:@"albumName"];
    v53 = [fromCopy objectForKeyedSubscript:@"albumArtist"];
    v52 = [fromCopy objectForKeyedSubscript:@"musicVideoName"];
    v51 = [fromCopy objectForKeyedSubscript:@"musicVideoArtist"];
    v50 = [fromCopy objectForKeyedSubscript:@"artistName"];
    v49 = [fromCopy objectForKeyedSubscript:@"artistGenre"];
    v48 = [fromCopy objectForKeyedSubscript:@"playlistName"];
    v47 = [fromCopy objectForKeyedSubscript:@"playlistCurator"];
    v44 = [fromCopy objectForKeyedSubscript:@"radioName"];
    v46 = [fromCopy objectForKeyedSubscript:@"radioCurator"];
    v43 = [fromCopy objectForKeyedSubscript:@"softwareName"];
    v45 = [fromCopy objectForKeyedSubscript:@"softwareGenre"];
    v40 = [fromCopy objectForKeyedSubscript:@"softwarePlatform"];
    v42 = [fromCopy objectForKeyedSubscript:@"bookName"];
    v39 = [fromCopy objectForKeyedSubscript:@"bookAuthor"];
    v38 = [fromCopy objectForKeyedSubscript:@"audioBookName"];
    v41 = [fromCopy objectForKeyedSubscript:@"audioBookAuthor"];
    v37 = [fromCopy objectForKeyedSubscript:@"audioBookNarrator"];
    v27 = [fromCopy objectForKeyedSubscript:@"podcastName"];
    v36 = [fromCopy objectForKeyedSubscript:@"podcastArtist"];
    v26 = [fromCopy objectForKeyedSubscript:@"podcastEpisodeName"];
    v25 = [fromCopy objectForKeyedSubscript:@"podcastEpisodePodcastName"];
    v35 = [fromCopy objectForKeyedSubscript:@"podcastEpisodeArtist"];
    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"podcastEpisodeReleaseDate"];
    v34 = [decoderCopy decodeObjectOfClass:v12 from:v13];

    v33 = [fromCopy objectForKeyedSubscript:@"tvEpisodeEpisodeName"];
    v32 = [fromCopy objectForKeyedSubscript:@"tvEpisodeSeasonName"];
    v31 = [fromCopy objectForKeyedSubscript:@"tvEpisodeGenre"];
    v14 = [fromCopy objectForKeyedSubscript:@"tvSeasonName"];
    v24 = [fromCopy objectForKeyedSubscript:@"tvSeasonGenre"];
    v15 = [fromCopy objectForKeyedSubscript:@"movieName"];
    v23 = [fromCopy objectForKeyedSubscript:@"movieGenre"];
    v16 = [fromCopy objectForKeyedSubscript:@"tvShowName"];
    v22 = [fromCopy objectForKeyedSubscript:@"movieBundleName"];
    [fromCopy objectForKeyedSubscript:@"movieBundleGenre"];
    v21 = v30 = decoderCopy;
    v17 = [fromCopy objectForKeyedSubscript:@"appleTvTitle"];
    v18 = [fromCopy objectForKeyedSubscript:@"appleTvSubtitle"];
    v19 = [[v29 alloc] initWithSiteName:v69 summary:v68 title:v67 openGraphType:v66 itemType:v65 linkURL:v64 originalURL:v63 imageURLs:v62 iconURLs:v61 creator:v60 linkMediaType:v28 iTunesStoreIdentifier:v59 iTunesStoreFrontIdentifier:v58 songTitle:v57 songArtist:v56 songAlbum:v55 albumName:v54 albumArtist:v53 musicVideoName:v52 musicVideoArtist:v51 artistName:v50 artistGenre:v49 playlistName:v48 playlistCurator:v47 radioName:v44 radioCurator:v46 softwareName:v43 softwareGenre:v45 softwarePlatform:v40 bookName:v42 bookAuthor:v39 audioBookName:v38 audioBookAuthor:v41 audioBookNarrator:v37 podcastName:v27 podcastArtist:v36 podcastEpisodeName:v26 podcastEpisodePodcastName:v25 podcastEpisodeArtist:v35 podcastEpisodeReleaseDate:v34 tvEpisodeEpisodeName:v33 tvEpisodeSeasonName:v32 tvEpisodeGenre:v31 tvSeasonName:v14 tvSeasonGenre:v24 movieName:v15 movieGenre:v23 tvShowName:v16 movieBundleName:v22 movieBundleGenre:v21 appleTvTitle:v17 appleTvSubtitle:v18];

    decoderCopy = v30;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end