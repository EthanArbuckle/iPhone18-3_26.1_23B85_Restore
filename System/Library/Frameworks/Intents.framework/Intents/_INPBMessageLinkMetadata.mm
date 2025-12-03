@interface _INPBMessageLinkMetadata
- (BOOL)isEqual:(id)equal;
- (_INPBMessageLinkMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsLinkMediaType:(id)type;
- (unint64_t)hash;
- (void)addIconURL:(id)l;
- (void)addImageURL:(id)l;
- (void)encodeWithCoder:(id)coder;
- (void)setAlbumArtist:(id)artist;
- (void)setAlbumName:(id)name;
- (void)setAppleTvSubtitle:(id)subtitle;
- (void)setAppleTvTitle:(id)title;
- (void)setArtistGenre:(id)genre;
- (void)setArtistName:(id)name;
- (void)setAudioBookAuthor:(id)author;
- (void)setAudioBookName:(id)name;
- (void)setAudioBookNarrator:(id)narrator;
- (void)setBookAuthor:(id)author;
- (void)setBookName:(id)name;
- (void)setCreator:(id)creator;
- (void)setITunesStoreFrontIdentifier:(id)identifier;
- (void)setITunesStoreIdentifier:(id)identifier;
- (void)setIconURLs:(id)ls;
- (void)setImageURLs:(id)ls;
- (void)setItemType:(id)type;
- (void)setLinkMediaType:(int)type;
- (void)setMovieBundleGenre:(id)genre;
- (void)setMovieBundleName:(id)name;
- (void)setMovieGenre:(id)genre;
- (void)setMovieName:(id)name;
- (void)setMusicVideoArtist:(id)artist;
- (void)setMusicVideoName:(id)name;
- (void)setOpenGraphType:(id)type;
- (void)setOriginalURL:(id)l;
- (void)setPlaylistCurator:(id)curator;
- (void)setPlaylistName:(id)name;
- (void)setPodcastArtist:(id)artist;
- (void)setPodcastEpisodeArtist:(id)artist;
- (void)setPodcastEpisodeName:(id)name;
- (void)setPodcastEpisodePodcastName:(id)name;
- (void)setPodcastName:(id)name;
- (void)setRadioCurator:(id)curator;
- (void)setRadioName:(id)name;
- (void)setSiteName:(id)name;
- (void)setSoftwareGenre:(id)genre;
- (void)setSoftwareName:(id)name;
- (void)setSoftwarePlatform:(id)platform;
- (void)setSongAlbum:(id)album;
- (void)setSongArtist:(id)artist;
- (void)setSongTitle:(id)title;
- (void)setSummary:(id)summary;
- (void)setTitle:(id)title;
- (void)setTvEpisodeEpisodeName:(id)name;
- (void)setTvEpisodeGenre:(id)genre;
- (void)setTvEpisodeSeasonName:(id)name;
- (void)setTvSeasonGenre:(id)genre;
- (void)setTvSeasonName:(id)name;
- (void)setTvShowName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _INPBMessageLinkMetadata

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_albumArtist)
  {
    albumArtist = [(_INPBMessageLinkMetadata *)self albumArtist];
    v5 = [albumArtist copy];
    [dictionary setObject:v5 forKeyedSubscript:@"albumArtist"];
  }

  if (self->_albumName)
  {
    albumName = [(_INPBMessageLinkMetadata *)self albumName];
    v7 = [albumName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"albumName"];
  }

  if (self->_appleTvSubtitle)
  {
    appleTvSubtitle = [(_INPBMessageLinkMetadata *)self appleTvSubtitle];
    v9 = [appleTvSubtitle copy];
    [dictionary setObject:v9 forKeyedSubscript:@"appleTvSubtitle"];
  }

  if (self->_appleTvTitle)
  {
    appleTvTitle = [(_INPBMessageLinkMetadata *)self appleTvTitle];
    v11 = [appleTvTitle copy];
    [dictionary setObject:v11 forKeyedSubscript:@"appleTvTitle"];
  }

  if (self->_artistGenre)
  {
    artistGenre = [(_INPBMessageLinkMetadata *)self artistGenre];
    v13 = [artistGenre copy];
    [dictionary setObject:v13 forKeyedSubscript:@"artistGenre"];
  }

  if (self->_artistName)
  {
    artistName = [(_INPBMessageLinkMetadata *)self artistName];
    v15 = [artistName copy];
    [dictionary setObject:v15 forKeyedSubscript:@"artistName"];
  }

  if (self->_audioBookAuthor)
  {
    audioBookAuthor = [(_INPBMessageLinkMetadata *)self audioBookAuthor];
    v17 = [audioBookAuthor copy];
    [dictionary setObject:v17 forKeyedSubscript:@"audioBookAuthor"];
  }

  if (self->_audioBookName)
  {
    audioBookName = [(_INPBMessageLinkMetadata *)self audioBookName];
    v19 = [audioBookName copy];
    [dictionary setObject:v19 forKeyedSubscript:@"audioBookName"];
  }

  if (self->_audioBookNarrator)
  {
    audioBookNarrator = [(_INPBMessageLinkMetadata *)self audioBookNarrator];
    v21 = [audioBookNarrator copy];
    [dictionary setObject:v21 forKeyedSubscript:@"audioBookNarrator"];
  }

  if (self->_bookAuthor)
  {
    bookAuthor = [(_INPBMessageLinkMetadata *)self bookAuthor];
    v23 = [bookAuthor copy];
    [dictionary setObject:v23 forKeyedSubscript:@"bookAuthor"];
  }

  if (self->_bookName)
  {
    bookName = [(_INPBMessageLinkMetadata *)self bookName];
    v25 = [bookName copy];
    [dictionary setObject:v25 forKeyedSubscript:@"bookName"];
  }

  if (self->_creator)
  {
    creator = [(_INPBMessageLinkMetadata *)self creator];
    v27 = [creator copy];
    [dictionary setObject:v27 forKeyedSubscript:@"creator"];
  }

  if (self->_iTunesStoreFrontIdentifier)
  {
    iTunesStoreFrontIdentifier = [(_INPBMessageLinkMetadata *)self iTunesStoreFrontIdentifier];
    v29 = [iTunesStoreFrontIdentifier copy];
    [dictionary setObject:v29 forKeyedSubscript:@"iTunesStoreFrontIdentifier"];
  }

  if (self->_iTunesStoreIdentifier)
  {
    iTunesStoreIdentifier = [(_INPBMessageLinkMetadata *)self iTunesStoreIdentifier];
    v31 = [iTunesStoreIdentifier copy];
    [dictionary setObject:v31 forKeyedSubscript:@"iTunesStoreIdentifier"];
  }

  if (self->_iconURLs)
  {
    iconURLs = [(_INPBMessageLinkMetadata *)self iconURLs];
    v33 = [iconURLs copy];
    [dictionary setObject:v33 forKeyedSubscript:@"iconURL"];
  }

  if (self->_imageURLs)
  {
    imageURLs = [(_INPBMessageLinkMetadata *)self imageURLs];
    v35 = [imageURLs copy];
    [dictionary setObject:v35 forKeyedSubscript:@"imageURL"];
  }

  if (self->_itemType)
  {
    itemType = [(_INPBMessageLinkMetadata *)self itemType];
    v37 = [itemType copy];
    [dictionary setObject:v37 forKeyedSubscript:@"itemType"];
  }

  if ([(_INPBMessageLinkMetadata *)self hasLinkMediaType])
  {
    linkMediaType = [(_INPBMessageLinkMetadata *)self linkMediaType];
    if (linkMediaType > 99)
    {
      if (linkMediaType <= 139)
      {
        if (linkMediaType > 119)
        {
          if (linkMediaType == 120)
          {
            v39 = @"PODCAST_EPISODE";
            goto LABEL_80;
          }

          if (linkMediaType == 130)
          {
            v39 = @"TV_EPISODE";
            goto LABEL_80;
          }
        }

        else
        {
          if (linkMediaType == 100)
          {
            v39 = @"AUDIO_BOOK";
            goto LABEL_80;
          }

          if (linkMediaType == 110)
          {
            v39 = @"PODCAST";
            goto LABEL_80;
          }
        }
      }

      else if (linkMediaType <= 159)
      {
        if (linkMediaType == 140)
        {
          v39 = @"TV_SEASON";
          goto LABEL_80;
        }

        if (linkMediaType == 150)
        {
          v39 = @"MOVIE";
          goto LABEL_80;
        }
      }

      else
      {
        switch(linkMediaType)
        {
          case 0xA0:
            v39 = @"TV_SHOW";
            goto LABEL_80;
          case 0xAA:
            v39 = @"MOVIE_BUNDLE";
            goto LABEL_80;
          case 0xB4:
            v39 = @"APPLE_TV";
            goto LABEL_80;
        }
      }
    }

    else if (linkMediaType <= 49)
    {
      if (linkMediaType > 29)
      {
        if (linkMediaType == 30)
        {
          v39 = @"ALBUM";
          goto LABEL_80;
        }

        if (linkMediaType == 40)
        {
          v39 = @"MUSIC_VIDEO";
          goto LABEL_80;
        }
      }

      else
      {
        if (linkMediaType == 10)
        {
          v39 = @"UNKNOWN_LINK_TYPE";
          goto LABEL_80;
        }

        if (linkMediaType == 20)
        {
          v39 = @"SONG";
          goto LABEL_80;
        }
      }
    }

    else if (linkMediaType <= 69)
    {
      if (linkMediaType == 50)
      {
        v39 = @"ARTIST";
        goto LABEL_80;
      }

      if (linkMediaType == 60)
      {
        v39 = @"PLAYLIST";
        goto LABEL_80;
      }
    }

    else
    {
      switch(linkMediaType)
      {
        case 'F':
          v39 = @"RADIO";
          goto LABEL_80;
        case 'P':
          v39 = @"SOFTWARE";
          goto LABEL_80;
        case 'Z':
          v39 = @"BOOK";
LABEL_80:
          [dictionary setObject:v39 forKeyedSubscript:@"linkMediaType"];

          goto LABEL_81;
      }
    }

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", linkMediaType];
    goto LABEL_80;
  }

LABEL_81:
  linkURL = [(_INPBMessageLinkMetadata *)self linkURL];
  dictionaryRepresentation = [linkURL dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkURL"];

  if (self->_movieBundleGenre)
  {
    movieBundleGenre = [(_INPBMessageLinkMetadata *)self movieBundleGenre];
    v43 = [movieBundleGenre copy];
    [dictionary setObject:v43 forKeyedSubscript:@"movieBundleGenre"];
  }

  if (self->_movieBundleName)
  {
    movieBundleName = [(_INPBMessageLinkMetadata *)self movieBundleName];
    v45 = [movieBundleName copy];
    [dictionary setObject:v45 forKeyedSubscript:@"movieBundleName"];
  }

  if (self->_movieGenre)
  {
    movieGenre = [(_INPBMessageLinkMetadata *)self movieGenre];
    v47 = [movieGenre copy];
    [dictionary setObject:v47 forKeyedSubscript:@"movieGenre"];
  }

  if (self->_movieName)
  {
    movieName = [(_INPBMessageLinkMetadata *)self movieName];
    v49 = [movieName copy];
    [dictionary setObject:v49 forKeyedSubscript:@"movieName"];
  }

  if (self->_musicVideoArtist)
  {
    musicVideoArtist = [(_INPBMessageLinkMetadata *)self musicVideoArtist];
    v51 = [musicVideoArtist copy];
    [dictionary setObject:v51 forKeyedSubscript:@"musicVideoArtist"];
  }

  if (self->_musicVideoName)
  {
    musicVideoName = [(_INPBMessageLinkMetadata *)self musicVideoName];
    v53 = [musicVideoName copy];
    [dictionary setObject:v53 forKeyedSubscript:@"musicVideoName"];
  }

  if (self->_openGraphType)
  {
    openGraphType = [(_INPBMessageLinkMetadata *)self openGraphType];
    v55 = [openGraphType copy];
    [dictionary setObject:v55 forKeyedSubscript:@"openGraphType"];
  }

  if (self->_originalURL)
  {
    originalURL = [(_INPBMessageLinkMetadata *)self originalURL];
    v57 = [originalURL copy];
    [dictionary setObject:v57 forKeyedSubscript:@"originalURL"];
  }

  if (self->_playlistCurator)
  {
    playlistCurator = [(_INPBMessageLinkMetadata *)self playlistCurator];
    v59 = [playlistCurator copy];
    [dictionary setObject:v59 forKeyedSubscript:@"playlistCurator"];
  }

  if (self->_playlistName)
  {
    playlistName = [(_INPBMessageLinkMetadata *)self playlistName];
    v61 = [playlistName copy];
    [dictionary setObject:v61 forKeyedSubscript:@"playlistName"];
  }

  if (self->_podcastArtist)
  {
    podcastArtist = [(_INPBMessageLinkMetadata *)self podcastArtist];
    v63 = [podcastArtist copy];
    [dictionary setObject:v63 forKeyedSubscript:@"podcastArtist"];
  }

  if (self->_podcastEpisodeArtist)
  {
    podcastEpisodeArtist = [(_INPBMessageLinkMetadata *)self podcastEpisodeArtist];
    v65 = [podcastEpisodeArtist copy];
    [dictionary setObject:v65 forKeyedSubscript:@"podcastEpisodeArtist"];
  }

  if (self->_podcastEpisodeName)
  {
    podcastEpisodeName = [(_INPBMessageLinkMetadata *)self podcastEpisodeName];
    v67 = [podcastEpisodeName copy];
    [dictionary setObject:v67 forKeyedSubscript:@"podcastEpisodeName"];
  }

  if (self->_podcastEpisodePodcastName)
  {
    podcastEpisodePodcastName = [(_INPBMessageLinkMetadata *)self podcastEpisodePodcastName];
    v69 = [podcastEpisodePodcastName copy];
    [dictionary setObject:v69 forKeyedSubscript:@"podcastEpisodePodcastName"];
  }

  podcastEpisodeReleaseDate = [(_INPBMessageLinkMetadata *)self podcastEpisodeReleaseDate];
  dictionaryRepresentation2 = [podcastEpisodeReleaseDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"podcastEpisodeReleaseDate"];

  if (self->_podcastName)
  {
    podcastName = [(_INPBMessageLinkMetadata *)self podcastName];
    v73 = [podcastName copy];
    [dictionary setObject:v73 forKeyedSubscript:@"podcastName"];
  }

  if (self->_radioCurator)
  {
    radioCurator = [(_INPBMessageLinkMetadata *)self radioCurator];
    v75 = [radioCurator copy];
    [dictionary setObject:v75 forKeyedSubscript:@"radioCurator"];
  }

  if (self->_radioName)
  {
    radioName = [(_INPBMessageLinkMetadata *)self radioName];
    v77 = [radioName copy];
    [dictionary setObject:v77 forKeyedSubscript:@"radioName"];
  }

  if (self->_siteName)
  {
    siteName = [(_INPBMessageLinkMetadata *)self siteName];
    v79 = [siteName copy];
    [dictionary setObject:v79 forKeyedSubscript:@"siteName"];
  }

  if (self->_softwareGenre)
  {
    softwareGenre = [(_INPBMessageLinkMetadata *)self softwareGenre];
    v81 = [softwareGenre copy];
    [dictionary setObject:v81 forKeyedSubscript:@"softwareGenre"];
  }

  if (self->_softwareName)
  {
    softwareName = [(_INPBMessageLinkMetadata *)self softwareName];
    v83 = [softwareName copy];
    [dictionary setObject:v83 forKeyedSubscript:@"softwareName"];
  }

  if (self->_softwarePlatform)
  {
    softwarePlatform = [(_INPBMessageLinkMetadata *)self softwarePlatform];
    v85 = [softwarePlatform copy];
    [dictionary setObject:v85 forKeyedSubscript:@"softwarePlatform"];
  }

  if (self->_songAlbum)
  {
    songAlbum = [(_INPBMessageLinkMetadata *)self songAlbum];
    v87 = [songAlbum copy];
    [dictionary setObject:v87 forKeyedSubscript:@"songAlbum"];
  }

  if (self->_songArtist)
  {
    songArtist = [(_INPBMessageLinkMetadata *)self songArtist];
    v89 = [songArtist copy];
    [dictionary setObject:v89 forKeyedSubscript:@"songArtist"];
  }

  if (self->_songTitle)
  {
    songTitle = [(_INPBMessageLinkMetadata *)self songTitle];
    v91 = [songTitle copy];
    [dictionary setObject:v91 forKeyedSubscript:@"songTitle"];
  }

  if (self->_summary)
  {
    summary = [(_INPBMessageLinkMetadata *)self summary];
    v93 = [summary copy];
    [dictionary setObject:v93 forKeyedSubscript:@"summary"];
  }

  if (self->_title)
  {
    title = [(_INPBMessageLinkMetadata *)self title];
    v95 = [title copy];
    [dictionary setObject:v95 forKeyedSubscript:@"title"];
  }

  if (self->_tvEpisodeEpisodeName)
  {
    tvEpisodeEpisodeName = [(_INPBMessageLinkMetadata *)self tvEpisodeEpisodeName];
    v97 = [tvEpisodeEpisodeName copy];
    [dictionary setObject:v97 forKeyedSubscript:@"tvEpisodeEpisodeName"];
  }

  if (self->_tvEpisodeGenre)
  {
    tvEpisodeGenre = [(_INPBMessageLinkMetadata *)self tvEpisodeGenre];
    v99 = [tvEpisodeGenre copy];
    [dictionary setObject:v99 forKeyedSubscript:@"tvEpisodeGenre"];
  }

  if (self->_tvEpisodeSeasonName)
  {
    tvEpisodeSeasonName = [(_INPBMessageLinkMetadata *)self tvEpisodeSeasonName];
    v101 = [tvEpisodeSeasonName copy];
    [dictionary setObject:v101 forKeyedSubscript:@"tvEpisodeSeasonName"];
  }

  if (self->_tvSeasonGenre)
  {
    tvSeasonGenre = [(_INPBMessageLinkMetadata *)self tvSeasonGenre];
    v103 = [tvSeasonGenre copy];
    [dictionary setObject:v103 forKeyedSubscript:@"tvSeasonGenre"];
  }

  if (self->_tvSeasonName)
  {
    tvSeasonName = [(_INPBMessageLinkMetadata *)self tvSeasonName];
    v105 = [tvSeasonName copy];
    [dictionary setObject:v105 forKeyedSubscript:@"tvSeasonName"];
  }

  if (self->_tvShowName)
  {
    tvShowName = [(_INPBMessageLinkMetadata *)self tvShowName];
    v107 = [tvShowName copy];
    [dictionary setObject:v107 forKeyedSubscript:@"tvShowName"];
  }

  v108 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v55 = [(NSString *)self->_albumArtist hash];
  v54 = [(NSString *)self->_albumName hash];
  v53 = [(NSString *)self->_appleTvSubtitle hash];
  v52 = [(NSString *)self->_appleTvTitle hash];
  v51 = [(NSString *)self->_artistGenre hash];
  v50 = [(NSString *)self->_artistName hash];
  v49 = [(NSString *)self->_audioBookAuthor hash];
  v48 = [(NSString *)self->_audioBookName hash];
  v3 = [(NSString *)self->_audioBookNarrator hash];
  v4 = [(NSString *)self->_bookAuthor hash];
  v5 = [(NSString *)self->_bookName hash];
  v6 = [(NSString *)self->_creator hash];
  v7 = [(NSString *)self->_iTunesStoreFrontIdentifier hash];
  v8 = [(NSString *)self->_iTunesStoreIdentifier hash];
  v9 = [(NSArray *)self->_iconURLs hash];
  v10 = [(NSArray *)self->_imageURLs hash];
  v11 = [(NSString *)self->_itemType hash];
  if ([(_INPBMessageLinkMetadata *)self hasLinkMediaType])
  {
    v12 = 2654435761 * self->_linkMediaType;
  }

  else
  {
    v12 = 0;
  }

  v13 = v54 ^ v55 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  v14 = v11 ^ v12 ^ [(_INPBURLValue *)self->_linkURL hash];
  v15 = v14 ^ [(NSString *)self->_movieBundleGenre hash];
  v16 = v15 ^ [(NSString *)self->_movieBundleName hash];
  v17 = v13 ^ v16 ^ [(NSString *)self->_movieGenre hash];
  v18 = [(NSString *)self->_movieName hash];
  v19 = v18 ^ [(NSString *)self->_musicVideoArtist hash];
  v20 = v19 ^ [(NSString *)self->_musicVideoName hash];
  v21 = v20 ^ [(NSString *)self->_openGraphType hash];
  v22 = v21 ^ [(NSString *)self->_originalURL hash];
  v23 = v22 ^ [(NSString *)self->_playlistCurator hash];
  v24 = v17 ^ v23 ^ [(NSString *)self->_playlistName hash];
  v25 = [(NSString *)self->_podcastArtist hash];
  v26 = v25 ^ [(NSString *)self->_podcastEpisodeArtist hash];
  v27 = v26 ^ [(NSString *)self->_podcastEpisodeName hash];
  v28 = v27 ^ [(NSString *)self->_podcastEpisodePodcastName hash];
  v29 = v28 ^ [(_INPBDateTime *)self->_podcastEpisodeReleaseDate hash];
  v30 = v29 ^ [(NSString *)self->_podcastName hash];
  v31 = v30 ^ [(NSString *)self->_radioCurator hash];
  v32 = v24 ^ v31 ^ [(NSString *)self->_radioName hash];
  v33 = [(NSString *)self->_siteName hash];
  v34 = v33 ^ [(NSString *)self->_softwareGenre hash];
  v35 = v34 ^ [(NSString *)self->_softwareName hash];
  v36 = v35 ^ [(NSString *)self->_softwarePlatform hash];
  v37 = v36 ^ [(NSString *)self->_songAlbum hash];
  v38 = v37 ^ [(NSString *)self->_songArtist hash];
  v39 = v38 ^ [(NSString *)self->_songTitle hash];
  v40 = v39 ^ [(NSString *)self->_summary hash];
  v41 = v32 ^ v40 ^ [(NSString *)self->_title hash];
  v42 = [(NSString *)self->_tvEpisodeEpisodeName hash];
  v43 = v42 ^ [(NSString *)self->_tvEpisodeGenre hash];
  v44 = v43 ^ [(NSString *)self->_tvEpisodeSeasonName hash];
  v45 = v44 ^ [(NSString *)self->_tvSeasonGenre hash];
  v46 = v45 ^ [(NSString *)self->_tvSeasonName hash];
  return v41 ^ v46 ^ [(NSString *)self->_tvShowName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_261;
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self albumArtist];
  albumArtist2 = [equalCopy albumArtist];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  albumArtist3 = [(_INPBMessageLinkMetadata *)self albumArtist];
  if (albumArtist3)
  {
    v8 = albumArtist3;
    albumArtist4 = [(_INPBMessageLinkMetadata *)self albumArtist];
    albumArtist5 = [equalCopy albumArtist];
    v11 = [albumArtist4 isEqual:albumArtist5];

    if (!v11)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self albumName];
  albumArtist2 = [equalCopy albumName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  albumName = [(_INPBMessageLinkMetadata *)self albumName];
  if (albumName)
  {
    v13 = albumName;
    albumName2 = [(_INPBMessageLinkMetadata *)self albumName];
    albumName3 = [equalCopy albumName];
    v16 = [albumName2 isEqual:albumName3];

    if (!v16)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self appleTvSubtitle];
  albumArtist2 = [equalCopy appleTvSubtitle];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  appleTvSubtitle = [(_INPBMessageLinkMetadata *)self appleTvSubtitle];
  if (appleTvSubtitle)
  {
    v18 = appleTvSubtitle;
    appleTvSubtitle2 = [(_INPBMessageLinkMetadata *)self appleTvSubtitle];
    appleTvSubtitle3 = [equalCopy appleTvSubtitle];
    v21 = [appleTvSubtitle2 isEqual:appleTvSubtitle3];

    if (!v21)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self appleTvTitle];
  albumArtist2 = [equalCopy appleTvTitle];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  appleTvTitle = [(_INPBMessageLinkMetadata *)self appleTvTitle];
  if (appleTvTitle)
  {
    v23 = appleTvTitle;
    appleTvTitle2 = [(_INPBMessageLinkMetadata *)self appleTvTitle];
    appleTvTitle3 = [equalCopy appleTvTitle];
    v26 = [appleTvTitle2 isEqual:appleTvTitle3];

    if (!v26)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self artistGenre];
  albumArtist2 = [equalCopy artistGenre];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  artistGenre = [(_INPBMessageLinkMetadata *)self artistGenre];
  if (artistGenre)
  {
    v28 = artistGenre;
    artistGenre2 = [(_INPBMessageLinkMetadata *)self artistGenre];
    artistGenre3 = [equalCopy artistGenre];
    v31 = [artistGenre2 isEqual:artistGenre3];

    if (!v31)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self artistName];
  albumArtist2 = [equalCopy artistName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  artistName = [(_INPBMessageLinkMetadata *)self artistName];
  if (artistName)
  {
    v33 = artistName;
    artistName2 = [(_INPBMessageLinkMetadata *)self artistName];
    artistName3 = [equalCopy artistName];
    v36 = [artistName2 isEqual:artistName3];

    if (!v36)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self audioBookAuthor];
  albumArtist2 = [equalCopy audioBookAuthor];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  audioBookAuthor = [(_INPBMessageLinkMetadata *)self audioBookAuthor];
  if (audioBookAuthor)
  {
    v38 = audioBookAuthor;
    audioBookAuthor2 = [(_INPBMessageLinkMetadata *)self audioBookAuthor];
    audioBookAuthor3 = [equalCopy audioBookAuthor];
    v41 = [audioBookAuthor2 isEqual:audioBookAuthor3];

    if (!v41)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self audioBookName];
  albumArtist2 = [equalCopy audioBookName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  audioBookName = [(_INPBMessageLinkMetadata *)self audioBookName];
  if (audioBookName)
  {
    v43 = audioBookName;
    audioBookName2 = [(_INPBMessageLinkMetadata *)self audioBookName];
    audioBookName3 = [equalCopy audioBookName];
    v46 = [audioBookName2 isEqual:audioBookName3];

    if (!v46)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self audioBookNarrator];
  albumArtist2 = [equalCopy audioBookNarrator];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  audioBookNarrator = [(_INPBMessageLinkMetadata *)self audioBookNarrator];
  if (audioBookNarrator)
  {
    v48 = audioBookNarrator;
    audioBookNarrator2 = [(_INPBMessageLinkMetadata *)self audioBookNarrator];
    audioBookNarrator3 = [equalCopy audioBookNarrator];
    v51 = [audioBookNarrator2 isEqual:audioBookNarrator3];

    if (!v51)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self bookAuthor];
  albumArtist2 = [equalCopy bookAuthor];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  bookAuthor = [(_INPBMessageLinkMetadata *)self bookAuthor];
  if (bookAuthor)
  {
    v53 = bookAuthor;
    bookAuthor2 = [(_INPBMessageLinkMetadata *)self bookAuthor];
    bookAuthor3 = [equalCopy bookAuthor];
    v56 = [bookAuthor2 isEqual:bookAuthor3];

    if (!v56)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self bookName];
  albumArtist2 = [equalCopy bookName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  bookName = [(_INPBMessageLinkMetadata *)self bookName];
  if (bookName)
  {
    v58 = bookName;
    bookName2 = [(_INPBMessageLinkMetadata *)self bookName];
    bookName3 = [equalCopy bookName];
    v61 = [bookName2 isEqual:bookName3];

    if (!v61)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self creator];
  albumArtist2 = [equalCopy creator];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  creator = [(_INPBMessageLinkMetadata *)self creator];
  if (creator)
  {
    v63 = creator;
    creator2 = [(_INPBMessageLinkMetadata *)self creator];
    creator3 = [equalCopy creator];
    v66 = [creator2 isEqual:creator3];

    if (!v66)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self iTunesStoreFrontIdentifier];
  albumArtist2 = [equalCopy iTunesStoreFrontIdentifier];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  iTunesStoreFrontIdentifier = [(_INPBMessageLinkMetadata *)self iTunesStoreFrontIdentifier];
  if (iTunesStoreFrontIdentifier)
  {
    v68 = iTunesStoreFrontIdentifier;
    iTunesStoreFrontIdentifier2 = [(_INPBMessageLinkMetadata *)self iTunesStoreFrontIdentifier];
    iTunesStoreFrontIdentifier3 = [equalCopy iTunesStoreFrontIdentifier];
    v71 = [iTunesStoreFrontIdentifier2 isEqual:iTunesStoreFrontIdentifier3];

    if (!v71)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self iTunesStoreIdentifier];
  albumArtist2 = [equalCopy iTunesStoreIdentifier];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  iTunesStoreIdentifier = [(_INPBMessageLinkMetadata *)self iTunesStoreIdentifier];
  if (iTunesStoreIdentifier)
  {
    v73 = iTunesStoreIdentifier;
    iTunesStoreIdentifier2 = [(_INPBMessageLinkMetadata *)self iTunesStoreIdentifier];
    iTunesStoreIdentifier3 = [equalCopy iTunesStoreIdentifier];
    v76 = [iTunesStoreIdentifier2 isEqual:iTunesStoreIdentifier3];

    if (!v76)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self iconURLs];
  albumArtist2 = [equalCopy iconURLs];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  iconURLs = [(_INPBMessageLinkMetadata *)self iconURLs];
  if (iconURLs)
  {
    v78 = iconURLs;
    iconURLs2 = [(_INPBMessageLinkMetadata *)self iconURLs];
    iconURLs3 = [equalCopy iconURLs];
    v81 = [iconURLs2 isEqual:iconURLs3];

    if (!v81)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self imageURLs];
  albumArtist2 = [equalCopy imageURLs];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  imageURLs = [(_INPBMessageLinkMetadata *)self imageURLs];
  if (imageURLs)
  {
    v83 = imageURLs;
    imageURLs2 = [(_INPBMessageLinkMetadata *)self imageURLs];
    imageURLs3 = [equalCopy imageURLs];
    v86 = [imageURLs2 isEqual:imageURLs3];

    if (!v86)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self itemType];
  albumArtist2 = [equalCopy itemType];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  itemType = [(_INPBMessageLinkMetadata *)self itemType];
  if (itemType)
  {
    v88 = itemType;
    itemType2 = [(_INPBMessageLinkMetadata *)self itemType];
    itemType3 = [equalCopy itemType];
    v91 = [itemType2 isEqual:itemType3];

    if (!v91)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  hasLinkMediaType = [(_INPBMessageLinkMetadata *)self hasLinkMediaType];
  if (hasLinkMediaType != [equalCopy hasLinkMediaType])
  {
    goto LABEL_261;
  }

  if ([(_INPBMessageLinkMetadata *)self hasLinkMediaType])
  {
    if ([equalCopy hasLinkMediaType])
    {
      linkMediaType = self->_linkMediaType;
      if (linkMediaType != [equalCopy linkMediaType])
      {
        goto LABEL_261;
      }
    }
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self linkURL];
  albumArtist2 = [equalCopy linkURL];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  linkURL = [(_INPBMessageLinkMetadata *)self linkURL];
  if (linkURL)
  {
    v95 = linkURL;
    linkURL2 = [(_INPBMessageLinkMetadata *)self linkURL];
    linkURL3 = [equalCopy linkURL];
    v98 = [linkURL2 isEqual:linkURL3];

    if (!v98)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self movieBundleGenre];
  albumArtist2 = [equalCopy movieBundleGenre];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  movieBundleGenre = [(_INPBMessageLinkMetadata *)self movieBundleGenre];
  if (movieBundleGenre)
  {
    v100 = movieBundleGenre;
    movieBundleGenre2 = [(_INPBMessageLinkMetadata *)self movieBundleGenre];
    movieBundleGenre3 = [equalCopy movieBundleGenre];
    v103 = [movieBundleGenre2 isEqual:movieBundleGenre3];

    if (!v103)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self movieBundleName];
  albumArtist2 = [equalCopy movieBundleName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  movieBundleName = [(_INPBMessageLinkMetadata *)self movieBundleName];
  if (movieBundleName)
  {
    v105 = movieBundleName;
    movieBundleName2 = [(_INPBMessageLinkMetadata *)self movieBundleName];
    movieBundleName3 = [equalCopy movieBundleName];
    v108 = [movieBundleName2 isEqual:movieBundleName3];

    if (!v108)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self movieGenre];
  albumArtist2 = [equalCopy movieGenre];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  movieGenre = [(_INPBMessageLinkMetadata *)self movieGenre];
  if (movieGenre)
  {
    v110 = movieGenre;
    movieGenre2 = [(_INPBMessageLinkMetadata *)self movieGenre];
    movieGenre3 = [equalCopy movieGenre];
    v113 = [movieGenre2 isEqual:movieGenre3];

    if (!v113)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self movieName];
  albumArtist2 = [equalCopy movieName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  movieName = [(_INPBMessageLinkMetadata *)self movieName];
  if (movieName)
  {
    v115 = movieName;
    movieName2 = [(_INPBMessageLinkMetadata *)self movieName];
    movieName3 = [equalCopy movieName];
    v118 = [movieName2 isEqual:movieName3];

    if (!v118)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self musicVideoArtist];
  albumArtist2 = [equalCopy musicVideoArtist];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  musicVideoArtist = [(_INPBMessageLinkMetadata *)self musicVideoArtist];
  if (musicVideoArtist)
  {
    v120 = musicVideoArtist;
    musicVideoArtist2 = [(_INPBMessageLinkMetadata *)self musicVideoArtist];
    musicVideoArtist3 = [equalCopy musicVideoArtist];
    v123 = [musicVideoArtist2 isEqual:musicVideoArtist3];

    if (!v123)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self musicVideoName];
  albumArtist2 = [equalCopy musicVideoName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  musicVideoName = [(_INPBMessageLinkMetadata *)self musicVideoName];
  if (musicVideoName)
  {
    v125 = musicVideoName;
    musicVideoName2 = [(_INPBMessageLinkMetadata *)self musicVideoName];
    musicVideoName3 = [equalCopy musicVideoName];
    v128 = [musicVideoName2 isEqual:musicVideoName3];

    if (!v128)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self openGraphType];
  albumArtist2 = [equalCopy openGraphType];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  openGraphType = [(_INPBMessageLinkMetadata *)self openGraphType];
  if (openGraphType)
  {
    v130 = openGraphType;
    openGraphType2 = [(_INPBMessageLinkMetadata *)self openGraphType];
    openGraphType3 = [equalCopy openGraphType];
    v133 = [openGraphType2 isEqual:openGraphType3];

    if (!v133)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self originalURL];
  albumArtist2 = [equalCopy originalURL];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  originalURL = [(_INPBMessageLinkMetadata *)self originalURL];
  if (originalURL)
  {
    v135 = originalURL;
    originalURL2 = [(_INPBMessageLinkMetadata *)self originalURL];
    originalURL3 = [equalCopy originalURL];
    v138 = [originalURL2 isEqual:originalURL3];

    if (!v138)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self playlistCurator];
  albumArtist2 = [equalCopy playlistCurator];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  playlistCurator = [(_INPBMessageLinkMetadata *)self playlistCurator];
  if (playlistCurator)
  {
    v140 = playlistCurator;
    playlistCurator2 = [(_INPBMessageLinkMetadata *)self playlistCurator];
    playlistCurator3 = [equalCopy playlistCurator];
    v143 = [playlistCurator2 isEqual:playlistCurator3];

    if (!v143)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self playlistName];
  albumArtist2 = [equalCopy playlistName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  playlistName = [(_INPBMessageLinkMetadata *)self playlistName];
  if (playlistName)
  {
    v145 = playlistName;
    playlistName2 = [(_INPBMessageLinkMetadata *)self playlistName];
    playlistName3 = [equalCopy playlistName];
    v148 = [playlistName2 isEqual:playlistName3];

    if (!v148)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self podcastArtist];
  albumArtist2 = [equalCopy podcastArtist];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  podcastArtist = [(_INPBMessageLinkMetadata *)self podcastArtist];
  if (podcastArtist)
  {
    v150 = podcastArtist;
    podcastArtist2 = [(_INPBMessageLinkMetadata *)self podcastArtist];
    podcastArtist3 = [equalCopy podcastArtist];
    v153 = [podcastArtist2 isEqual:podcastArtist3];

    if (!v153)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self podcastEpisodeArtist];
  albumArtist2 = [equalCopy podcastEpisodeArtist];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  podcastEpisodeArtist = [(_INPBMessageLinkMetadata *)self podcastEpisodeArtist];
  if (podcastEpisodeArtist)
  {
    v155 = podcastEpisodeArtist;
    podcastEpisodeArtist2 = [(_INPBMessageLinkMetadata *)self podcastEpisodeArtist];
    podcastEpisodeArtist3 = [equalCopy podcastEpisodeArtist];
    v158 = [podcastEpisodeArtist2 isEqual:podcastEpisodeArtist3];

    if (!v158)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self podcastEpisodeName];
  albumArtist2 = [equalCopy podcastEpisodeName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  podcastEpisodeName = [(_INPBMessageLinkMetadata *)self podcastEpisodeName];
  if (podcastEpisodeName)
  {
    v160 = podcastEpisodeName;
    podcastEpisodeName2 = [(_INPBMessageLinkMetadata *)self podcastEpisodeName];
    podcastEpisodeName3 = [equalCopy podcastEpisodeName];
    v163 = [podcastEpisodeName2 isEqual:podcastEpisodeName3];

    if (!v163)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self podcastEpisodePodcastName];
  albumArtist2 = [equalCopy podcastEpisodePodcastName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  podcastEpisodePodcastName = [(_INPBMessageLinkMetadata *)self podcastEpisodePodcastName];
  if (podcastEpisodePodcastName)
  {
    v165 = podcastEpisodePodcastName;
    podcastEpisodePodcastName2 = [(_INPBMessageLinkMetadata *)self podcastEpisodePodcastName];
    podcastEpisodePodcastName3 = [equalCopy podcastEpisodePodcastName];
    v168 = [podcastEpisodePodcastName2 isEqual:podcastEpisodePodcastName3];

    if (!v168)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self podcastEpisodeReleaseDate];
  albumArtist2 = [equalCopy podcastEpisodeReleaseDate];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  podcastEpisodeReleaseDate = [(_INPBMessageLinkMetadata *)self podcastEpisodeReleaseDate];
  if (podcastEpisodeReleaseDate)
  {
    v170 = podcastEpisodeReleaseDate;
    podcastEpisodeReleaseDate2 = [(_INPBMessageLinkMetadata *)self podcastEpisodeReleaseDate];
    podcastEpisodeReleaseDate3 = [equalCopy podcastEpisodeReleaseDate];
    v173 = [podcastEpisodeReleaseDate2 isEqual:podcastEpisodeReleaseDate3];

    if (!v173)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self podcastName];
  albumArtist2 = [equalCopy podcastName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  podcastName = [(_INPBMessageLinkMetadata *)self podcastName];
  if (podcastName)
  {
    v175 = podcastName;
    podcastName2 = [(_INPBMessageLinkMetadata *)self podcastName];
    podcastName3 = [equalCopy podcastName];
    v178 = [podcastName2 isEqual:podcastName3];

    if (!v178)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self radioCurator];
  albumArtist2 = [equalCopy radioCurator];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  radioCurator = [(_INPBMessageLinkMetadata *)self radioCurator];
  if (radioCurator)
  {
    v180 = radioCurator;
    radioCurator2 = [(_INPBMessageLinkMetadata *)self radioCurator];
    radioCurator3 = [equalCopy radioCurator];
    v183 = [radioCurator2 isEqual:radioCurator3];

    if (!v183)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self radioName];
  albumArtist2 = [equalCopy radioName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  radioName = [(_INPBMessageLinkMetadata *)self radioName];
  if (radioName)
  {
    v185 = radioName;
    radioName2 = [(_INPBMessageLinkMetadata *)self radioName];
    radioName3 = [equalCopy radioName];
    v188 = [radioName2 isEqual:radioName3];

    if (!v188)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self siteName];
  albumArtist2 = [equalCopy siteName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  siteName = [(_INPBMessageLinkMetadata *)self siteName];
  if (siteName)
  {
    v190 = siteName;
    siteName2 = [(_INPBMessageLinkMetadata *)self siteName];
    siteName3 = [equalCopy siteName];
    v193 = [siteName2 isEqual:siteName3];

    if (!v193)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self softwareGenre];
  albumArtist2 = [equalCopy softwareGenre];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  softwareGenre = [(_INPBMessageLinkMetadata *)self softwareGenre];
  if (softwareGenre)
  {
    v195 = softwareGenre;
    softwareGenre2 = [(_INPBMessageLinkMetadata *)self softwareGenre];
    softwareGenre3 = [equalCopy softwareGenre];
    v198 = [softwareGenre2 isEqual:softwareGenre3];

    if (!v198)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self softwareName];
  albumArtist2 = [equalCopy softwareName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  softwareName = [(_INPBMessageLinkMetadata *)self softwareName];
  if (softwareName)
  {
    v200 = softwareName;
    softwareName2 = [(_INPBMessageLinkMetadata *)self softwareName];
    softwareName3 = [equalCopy softwareName];
    v203 = [softwareName2 isEqual:softwareName3];

    if (!v203)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self softwarePlatform];
  albumArtist2 = [equalCopy softwarePlatform];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  softwarePlatform = [(_INPBMessageLinkMetadata *)self softwarePlatform];
  if (softwarePlatform)
  {
    v205 = softwarePlatform;
    softwarePlatform2 = [(_INPBMessageLinkMetadata *)self softwarePlatform];
    softwarePlatform3 = [equalCopy softwarePlatform];
    v208 = [softwarePlatform2 isEqual:softwarePlatform3];

    if (!v208)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self songAlbum];
  albumArtist2 = [equalCopy songAlbum];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  songAlbum = [(_INPBMessageLinkMetadata *)self songAlbum];
  if (songAlbum)
  {
    v210 = songAlbum;
    songAlbum2 = [(_INPBMessageLinkMetadata *)self songAlbum];
    songAlbum3 = [equalCopy songAlbum];
    v213 = [songAlbum2 isEqual:songAlbum3];

    if (!v213)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self songArtist];
  albumArtist2 = [equalCopy songArtist];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  songArtist = [(_INPBMessageLinkMetadata *)self songArtist];
  if (songArtist)
  {
    v215 = songArtist;
    songArtist2 = [(_INPBMessageLinkMetadata *)self songArtist];
    songArtist3 = [equalCopy songArtist];
    v218 = [songArtist2 isEqual:songArtist3];

    if (!v218)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self songTitle];
  albumArtist2 = [equalCopy songTitle];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  songTitle = [(_INPBMessageLinkMetadata *)self songTitle];
  if (songTitle)
  {
    v220 = songTitle;
    songTitle2 = [(_INPBMessageLinkMetadata *)self songTitle];
    songTitle3 = [equalCopy songTitle];
    v223 = [songTitle2 isEqual:songTitle3];

    if (!v223)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self summary];
  albumArtist2 = [equalCopy summary];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  summary = [(_INPBMessageLinkMetadata *)self summary];
  if (summary)
  {
    v225 = summary;
    summary2 = [(_INPBMessageLinkMetadata *)self summary];
    summary3 = [equalCopy summary];
    v228 = [summary2 isEqual:summary3];

    if (!v228)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self title];
  albumArtist2 = [equalCopy title];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  title = [(_INPBMessageLinkMetadata *)self title];
  if (title)
  {
    v230 = title;
    title2 = [(_INPBMessageLinkMetadata *)self title];
    title3 = [equalCopy title];
    v233 = [title2 isEqual:title3];

    if (!v233)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self tvEpisodeEpisodeName];
  albumArtist2 = [equalCopy tvEpisodeEpisodeName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  tvEpisodeEpisodeName = [(_INPBMessageLinkMetadata *)self tvEpisodeEpisodeName];
  if (tvEpisodeEpisodeName)
  {
    v235 = tvEpisodeEpisodeName;
    tvEpisodeEpisodeName2 = [(_INPBMessageLinkMetadata *)self tvEpisodeEpisodeName];
    tvEpisodeEpisodeName3 = [equalCopy tvEpisodeEpisodeName];
    v238 = [tvEpisodeEpisodeName2 isEqual:tvEpisodeEpisodeName3];

    if (!v238)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self tvEpisodeGenre];
  albumArtist2 = [equalCopy tvEpisodeGenre];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  tvEpisodeGenre = [(_INPBMessageLinkMetadata *)self tvEpisodeGenre];
  if (tvEpisodeGenre)
  {
    v240 = tvEpisodeGenre;
    tvEpisodeGenre2 = [(_INPBMessageLinkMetadata *)self tvEpisodeGenre];
    tvEpisodeGenre3 = [equalCopy tvEpisodeGenre];
    v243 = [tvEpisodeGenre2 isEqual:tvEpisodeGenre3];

    if (!v243)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self tvEpisodeSeasonName];
  albumArtist2 = [equalCopy tvEpisodeSeasonName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  tvEpisodeSeasonName = [(_INPBMessageLinkMetadata *)self tvEpisodeSeasonName];
  if (tvEpisodeSeasonName)
  {
    v245 = tvEpisodeSeasonName;
    tvEpisodeSeasonName2 = [(_INPBMessageLinkMetadata *)self tvEpisodeSeasonName];
    tvEpisodeSeasonName3 = [equalCopy tvEpisodeSeasonName];
    v248 = [tvEpisodeSeasonName2 isEqual:tvEpisodeSeasonName3];

    if (!v248)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self tvSeasonGenre];
  albumArtist2 = [equalCopy tvSeasonGenre];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  tvSeasonGenre = [(_INPBMessageLinkMetadata *)self tvSeasonGenre];
  if (tvSeasonGenre)
  {
    v250 = tvSeasonGenre;
    tvSeasonGenre2 = [(_INPBMessageLinkMetadata *)self tvSeasonGenre];
    tvSeasonGenre3 = [equalCopy tvSeasonGenre];
    v253 = [tvSeasonGenre2 isEqual:tvSeasonGenre3];

    if (!v253)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self tvSeasonName];
  albumArtist2 = [equalCopy tvSeasonName];
  if ((albumArtist != 0) == (albumArtist2 == 0))
  {
    goto LABEL_260;
  }

  tvSeasonName = [(_INPBMessageLinkMetadata *)self tvSeasonName];
  if (tvSeasonName)
  {
    v255 = tvSeasonName;
    tvSeasonName2 = [(_INPBMessageLinkMetadata *)self tvSeasonName];
    tvSeasonName3 = [equalCopy tvSeasonName];
    v258 = [tvSeasonName2 isEqual:tvSeasonName3];

    if (!v258)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  albumArtist = [(_INPBMessageLinkMetadata *)self tvShowName];
  albumArtist2 = [equalCopy tvShowName];
  if ((albumArtist != 0) != (albumArtist2 == 0))
  {
    tvShowName = [(_INPBMessageLinkMetadata *)self tvShowName];
    if (!tvShowName)
    {

LABEL_264:
      v264 = 1;
      goto LABEL_262;
    }

    v260 = tvShowName;
    tvShowName2 = [(_INPBMessageLinkMetadata *)self tvShowName];
    tvShowName3 = [equalCopy tvShowName];
    v263 = [tvShowName2 isEqual:tvShowName3];

    if (v263)
    {
      goto LABEL_264;
    }
  }

  else
  {
LABEL_260:
  }

LABEL_261:
  v264 = 0;
LABEL_262:

  return v264;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBMessageLinkMetadata allocWithZone:](_INPBMessageLinkMetadata init];
  v6 = [(NSString *)self->_albumArtist copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setAlbumArtist:v6];

  v7 = [(NSString *)self->_albumName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setAlbumName:v7];

  v8 = [(NSString *)self->_appleTvSubtitle copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setAppleTvSubtitle:v8];

  v9 = [(NSString *)self->_appleTvTitle copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setAppleTvTitle:v9];

  v10 = [(NSString *)self->_artistGenre copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setArtistGenre:v10];

  v11 = [(NSString *)self->_artistName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setArtistName:v11];

  v12 = [(NSString *)self->_audioBookAuthor copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setAudioBookAuthor:v12];

  v13 = [(NSString *)self->_audioBookName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setAudioBookName:v13];

  v14 = [(NSString *)self->_audioBookNarrator copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setAudioBookNarrator:v14];

  v15 = [(NSString *)self->_bookAuthor copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setBookAuthor:v15];

  v16 = [(NSString *)self->_bookName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setBookName:v16];

  v17 = [(NSString *)self->_creator copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setCreator:v17];

  v18 = [(NSString *)self->_iTunesStoreFrontIdentifier copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setITunesStoreFrontIdentifier:v18];

  v19 = [(NSString *)self->_iTunesStoreIdentifier copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setITunesStoreIdentifier:v19];

  v20 = [(NSArray *)self->_iconURLs copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setIconURLs:v20];

  v21 = [(NSArray *)self->_imageURLs copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setImageURLs:v21];

  v22 = [(NSString *)self->_itemType copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setItemType:v22];

  if ([(_INPBMessageLinkMetadata *)self hasLinkMediaType])
  {
    [(_INPBMessageLinkMetadata *)v5 setLinkMediaType:[(_INPBMessageLinkMetadata *)self linkMediaType]];
  }

  v23 = [(_INPBURLValue *)self->_linkURL copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setLinkURL:v23];

  v24 = [(NSString *)self->_movieBundleGenre copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setMovieBundleGenre:v24];

  v25 = [(NSString *)self->_movieBundleName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setMovieBundleName:v25];

  v26 = [(NSString *)self->_movieGenre copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setMovieGenre:v26];

  v27 = [(NSString *)self->_movieName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setMovieName:v27];

  v28 = [(NSString *)self->_musicVideoArtist copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setMusicVideoArtist:v28];

  v29 = [(NSString *)self->_musicVideoName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setMusicVideoName:v29];

  v30 = [(NSString *)self->_openGraphType copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setOpenGraphType:v30];

  v31 = [(NSString *)self->_originalURL copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setOriginalURL:v31];

  v32 = [(NSString *)self->_playlistCurator copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setPlaylistCurator:v32];

  v33 = [(NSString *)self->_playlistName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setPlaylistName:v33];

  v34 = [(NSString *)self->_podcastArtist copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setPodcastArtist:v34];

  v35 = [(NSString *)self->_podcastEpisodeArtist copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setPodcastEpisodeArtist:v35];

  v36 = [(NSString *)self->_podcastEpisodeName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setPodcastEpisodeName:v36];

  v37 = [(NSString *)self->_podcastEpisodePodcastName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setPodcastEpisodePodcastName:v37];

  v38 = [(_INPBDateTime *)self->_podcastEpisodeReleaseDate copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setPodcastEpisodeReleaseDate:v38];

  v39 = [(NSString *)self->_podcastName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setPodcastName:v39];

  v40 = [(NSString *)self->_radioCurator copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setRadioCurator:v40];

  v41 = [(NSString *)self->_radioName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setRadioName:v41];

  v42 = [(NSString *)self->_siteName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setSiteName:v42];

  v43 = [(NSString *)self->_softwareGenre copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setSoftwareGenre:v43];

  v44 = [(NSString *)self->_softwareName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setSoftwareName:v44];

  v45 = [(NSString *)self->_softwarePlatform copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setSoftwarePlatform:v45];

  v46 = [(NSString *)self->_songAlbum copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setSongAlbum:v46];

  v47 = [(NSString *)self->_songArtist copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setSongArtist:v47];

  v48 = [(NSString *)self->_songTitle copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setSongTitle:v48];

  v49 = [(NSString *)self->_summary copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setSummary:v49];

  v50 = [(NSString *)self->_title copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setTitle:v50];

  v51 = [(NSString *)self->_tvEpisodeEpisodeName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setTvEpisodeEpisodeName:v51];

  v52 = [(NSString *)self->_tvEpisodeGenre copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setTvEpisodeGenre:v52];

  v53 = [(NSString *)self->_tvEpisodeSeasonName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setTvEpisodeSeasonName:v53];

  v54 = [(NSString *)self->_tvSeasonGenre copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setTvSeasonGenre:v54];

  v55 = [(NSString *)self->_tvSeasonName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setTvSeasonName:v55];

  v56 = [(NSString *)self->_tvShowName copyWithZone:zone];
  [(_INPBMessageLinkMetadata *)v5 setTvShowName:v56];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBMessageLinkMetadata *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBMessageLinkMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBMessageLinkMetadata *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v127 = *MEMORY[0x1E69E9840];
  toCopy = to;
  albumArtist = [(_INPBMessageLinkMetadata *)self albumArtist];

  if (albumArtist)
  {
    albumArtist = self->_albumArtist;
    PBDataWriterWriteStringField();
  }

  albumName = [(_INPBMessageLinkMetadata *)self albumName];

  if (albumName)
  {
    albumName = self->_albumName;
    PBDataWriterWriteStringField();
  }

  appleTvSubtitle = [(_INPBMessageLinkMetadata *)self appleTvSubtitle];

  if (appleTvSubtitle)
  {
    appleTvSubtitle = self->_appleTvSubtitle;
    PBDataWriterWriteStringField();
  }

  appleTvTitle = [(_INPBMessageLinkMetadata *)self appleTvTitle];

  if (appleTvTitle)
  {
    appleTvTitle = self->_appleTvTitle;
    PBDataWriterWriteStringField();
  }

  artistGenre = [(_INPBMessageLinkMetadata *)self artistGenre];

  if (artistGenre)
  {
    artistGenre = self->_artistGenre;
    PBDataWriterWriteStringField();
  }

  artistName = [(_INPBMessageLinkMetadata *)self artistName];

  if (artistName)
  {
    artistName = self->_artistName;
    PBDataWriterWriteStringField();
  }

  audioBookAuthor = [(_INPBMessageLinkMetadata *)self audioBookAuthor];

  if (audioBookAuthor)
  {
    audioBookAuthor = self->_audioBookAuthor;
    PBDataWriterWriteStringField();
  }

  audioBookName = [(_INPBMessageLinkMetadata *)self audioBookName];

  if (audioBookName)
  {
    audioBookName = self->_audioBookName;
    PBDataWriterWriteStringField();
  }

  audioBookNarrator = [(_INPBMessageLinkMetadata *)self audioBookNarrator];

  if (audioBookNarrator)
  {
    audioBookNarrator = self->_audioBookNarrator;
    PBDataWriterWriteStringField();
  }

  bookAuthor = [(_INPBMessageLinkMetadata *)self bookAuthor];

  if (bookAuthor)
  {
    bookAuthor = self->_bookAuthor;
    PBDataWriterWriteStringField();
  }

  bookName = [(_INPBMessageLinkMetadata *)self bookName];

  if (bookName)
  {
    bookName = self->_bookName;
    PBDataWriterWriteStringField();
  }

  creator = [(_INPBMessageLinkMetadata *)self creator];

  if (creator)
  {
    creator = self->_creator;
    PBDataWriterWriteStringField();
  }

  iTunesStoreFrontIdentifier = [(_INPBMessageLinkMetadata *)self iTunesStoreFrontIdentifier];

  if (iTunesStoreFrontIdentifier)
  {
    iTunesStoreFrontIdentifier = self->_iTunesStoreFrontIdentifier;
    PBDataWriterWriteStringField();
  }

  iTunesStoreIdentifier = [(_INPBMessageLinkMetadata *)self iTunesStoreIdentifier];

  if (iTunesStoreIdentifier)
  {
    iTunesStoreIdentifier = self->_iTunesStoreIdentifier;
    PBDataWriterWriteStringField();
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v33 = self->_iconURLs;
  v34 = [(NSArray *)v33 countByEnumeratingWithState:&v121 objects:v126 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v122;
    do
    {
      v37 = 0;
      do
      {
        if (*v122 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v121 + 1) + 8 * v37);
        PBDataWriterWriteStringField();
        ++v37;
      }

      while (v35 != v37);
      v35 = [(NSArray *)v33 countByEnumeratingWithState:&v121 objects:v126 count:16];
    }

    while (v35);
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v39 = self->_imageURLs;
  v40 = [(NSArray *)v39 countByEnumeratingWithState:&v117 objects:v125 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v118;
    do
    {
      v43 = 0;
      do
      {
        if (*v118 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v117 + 1) + 8 * v43);
        PBDataWriterWriteStringField();
        ++v43;
      }

      while (v41 != v43);
      v41 = [(NSArray *)v39 countByEnumeratingWithState:&v117 objects:v125 count:16];
    }

    while (v41);
  }

  itemType = [(_INPBMessageLinkMetadata *)self itemType];

  if (itemType)
  {
    itemType = self->_itemType;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBMessageLinkMetadata *)self hasLinkMediaType])
  {
    linkMediaType = self->_linkMediaType;
    PBDataWriterWriteInt32Field();
  }

  linkURL = [(_INPBMessageLinkMetadata *)self linkURL];

  if (linkURL)
  {
    linkURL2 = [(_INPBMessageLinkMetadata *)self linkURL];
    PBDataWriterWriteSubmessage();
  }

  movieBundleGenre = [(_INPBMessageLinkMetadata *)self movieBundleGenre];

  if (movieBundleGenre)
  {
    movieBundleGenre = self->_movieBundleGenre;
    PBDataWriterWriteStringField();
  }

  movieBundleName = [(_INPBMessageLinkMetadata *)self movieBundleName];

  if (movieBundleName)
  {
    movieBundleName = self->_movieBundleName;
    PBDataWriterWriteStringField();
  }

  movieGenre = [(_INPBMessageLinkMetadata *)self movieGenre];

  if (movieGenre)
  {
    movieGenre = self->_movieGenre;
    PBDataWriterWriteStringField();
  }

  movieName = [(_INPBMessageLinkMetadata *)self movieName];

  if (movieName)
  {
    movieName = self->_movieName;
    PBDataWriterWriteStringField();
  }

  musicVideoArtist = [(_INPBMessageLinkMetadata *)self musicVideoArtist];

  if (musicVideoArtist)
  {
    musicVideoArtist = self->_musicVideoArtist;
    PBDataWriterWriteStringField();
  }

  musicVideoName = [(_INPBMessageLinkMetadata *)self musicVideoName];

  if (musicVideoName)
  {
    musicVideoName = self->_musicVideoName;
    PBDataWriterWriteStringField();
  }

  openGraphType = [(_INPBMessageLinkMetadata *)self openGraphType];

  if (openGraphType)
  {
    openGraphType = self->_openGraphType;
    PBDataWriterWriteStringField();
  }

  originalURL = [(_INPBMessageLinkMetadata *)self originalURL];

  if (originalURL)
  {
    originalURL = self->_originalURL;
    PBDataWriterWriteStringField();
  }

  playlistCurator = [(_INPBMessageLinkMetadata *)self playlistCurator];

  if (playlistCurator)
  {
    playlistCurator = self->_playlistCurator;
    PBDataWriterWriteStringField();
  }

  playlistName = [(_INPBMessageLinkMetadata *)self playlistName];

  if (playlistName)
  {
    playlistName = self->_playlistName;
    PBDataWriterWriteStringField();
  }

  podcastArtist = [(_INPBMessageLinkMetadata *)self podcastArtist];

  if (podcastArtist)
  {
    podcastArtist = self->_podcastArtist;
    PBDataWriterWriteStringField();
  }

  podcastEpisodeArtist = [(_INPBMessageLinkMetadata *)self podcastEpisodeArtist];

  if (podcastEpisodeArtist)
  {
    podcastEpisodeArtist = self->_podcastEpisodeArtist;
    PBDataWriterWriteStringField();
  }

  podcastEpisodeName = [(_INPBMessageLinkMetadata *)self podcastEpisodeName];

  if (podcastEpisodeName)
  {
    podcastEpisodeName = self->_podcastEpisodeName;
    PBDataWriterWriteStringField();
  }

  podcastEpisodePodcastName = [(_INPBMessageLinkMetadata *)self podcastEpisodePodcastName];

  if (podcastEpisodePodcastName)
  {
    podcastEpisodePodcastName = self->_podcastEpisodePodcastName;
    PBDataWriterWriteStringField();
  }

  podcastEpisodeReleaseDate = [(_INPBMessageLinkMetadata *)self podcastEpisodeReleaseDate];

  if (podcastEpisodeReleaseDate)
  {
    podcastEpisodeReleaseDate2 = [(_INPBMessageLinkMetadata *)self podcastEpisodeReleaseDate];
    PBDataWriterWriteSubmessage();
  }

  podcastName = [(_INPBMessageLinkMetadata *)self podcastName];

  if (podcastName)
  {
    podcastName = self->_podcastName;
    PBDataWriterWriteStringField();
  }

  radioCurator = [(_INPBMessageLinkMetadata *)self radioCurator];

  if (radioCurator)
  {
    radioCurator = self->_radioCurator;
    PBDataWriterWriteStringField();
  }

  radioName = [(_INPBMessageLinkMetadata *)self radioName];

  if (radioName)
  {
    radioName = self->_radioName;
    PBDataWriterWriteStringField();
  }

  siteName = [(_INPBMessageLinkMetadata *)self siteName];

  if (siteName)
  {
    siteName = self->_siteName;
    PBDataWriterWriteStringField();
  }

  softwareGenre = [(_INPBMessageLinkMetadata *)self softwareGenre];

  if (softwareGenre)
  {
    softwareGenre = self->_softwareGenre;
    PBDataWriterWriteStringField();
  }

  softwareName = [(_INPBMessageLinkMetadata *)self softwareName];

  if (softwareName)
  {
    softwareName = self->_softwareName;
    PBDataWriterWriteStringField();
  }

  softwarePlatform = [(_INPBMessageLinkMetadata *)self softwarePlatform];

  if (softwarePlatform)
  {
    softwarePlatform = self->_softwarePlatform;
    PBDataWriterWriteStringField();
  }

  songAlbum = [(_INPBMessageLinkMetadata *)self songAlbum];

  if (songAlbum)
  {
    songAlbum = self->_songAlbum;
    PBDataWriterWriteStringField();
  }

  songArtist = [(_INPBMessageLinkMetadata *)self songArtist];

  if (songArtist)
  {
    songArtist = self->_songArtist;
    PBDataWriterWriteStringField();
  }

  songTitle = [(_INPBMessageLinkMetadata *)self songTitle];

  if (songTitle)
  {
    songTitle = self->_songTitle;
    PBDataWriterWriteStringField();
  }

  summary = [(_INPBMessageLinkMetadata *)self summary];

  if (summary)
  {
    summary = self->_summary;
    PBDataWriterWriteStringField();
  }

  title = [(_INPBMessageLinkMetadata *)self title];

  if (title)
  {
    title = self->_title;
    PBDataWriterWriteStringField();
  }

  tvEpisodeEpisodeName = [(_INPBMessageLinkMetadata *)self tvEpisodeEpisodeName];

  if (tvEpisodeEpisodeName)
  {
    tvEpisodeEpisodeName = self->_tvEpisodeEpisodeName;
    PBDataWriterWriteStringField();
  }

  tvEpisodeGenre = [(_INPBMessageLinkMetadata *)self tvEpisodeGenre];

  if (tvEpisodeGenre)
  {
    tvEpisodeGenre = self->_tvEpisodeGenre;
    PBDataWriterWriteStringField();
  }

  tvEpisodeSeasonName = [(_INPBMessageLinkMetadata *)self tvEpisodeSeasonName];

  if (tvEpisodeSeasonName)
  {
    tvEpisodeSeasonName = self->_tvEpisodeSeasonName;
    PBDataWriterWriteStringField();
  }

  tvSeasonGenre = [(_INPBMessageLinkMetadata *)self tvSeasonGenre];

  if (tvSeasonGenre)
  {
    tvSeasonGenre = self->_tvSeasonGenre;
    PBDataWriterWriteStringField();
  }

  tvSeasonName = [(_INPBMessageLinkMetadata *)self tvSeasonName];

  if (tvSeasonName)
  {
    tvSeasonName = self->_tvSeasonName;
    PBDataWriterWriteStringField();
  }

  tvShowName = [(_INPBMessageLinkMetadata *)self tvShowName];

  if (tvShowName)
  {
    tvShowName = self->_tvShowName;
    PBDataWriterWriteStringField();
  }

  v116 = *MEMORY[0x1E69E9840];
}

- (void)setTvShowName:(id)name
{
  v4 = [name copy];
  tvShowName = self->_tvShowName;
  self->_tvShowName = v4;

  MEMORY[0x1EEE66BB8](v4, tvShowName);
}

- (void)setTvSeasonName:(id)name
{
  v4 = [name copy];
  tvSeasonName = self->_tvSeasonName;
  self->_tvSeasonName = v4;

  MEMORY[0x1EEE66BB8](v4, tvSeasonName);
}

- (void)setTvSeasonGenre:(id)genre
{
  v4 = [genre copy];
  tvSeasonGenre = self->_tvSeasonGenre;
  self->_tvSeasonGenre = v4;

  MEMORY[0x1EEE66BB8](v4, tvSeasonGenre);
}

- (void)setTvEpisodeSeasonName:(id)name
{
  v4 = [name copy];
  tvEpisodeSeasonName = self->_tvEpisodeSeasonName;
  self->_tvEpisodeSeasonName = v4;

  MEMORY[0x1EEE66BB8](v4, tvEpisodeSeasonName);
}

- (void)setTvEpisodeGenre:(id)genre
{
  v4 = [genre copy];
  tvEpisodeGenre = self->_tvEpisodeGenre;
  self->_tvEpisodeGenre = v4;

  MEMORY[0x1EEE66BB8](v4, tvEpisodeGenre);
}

- (void)setTvEpisodeEpisodeName:(id)name
{
  v4 = [name copy];
  tvEpisodeEpisodeName = self->_tvEpisodeEpisodeName;
  self->_tvEpisodeEpisodeName = v4;

  MEMORY[0x1EEE66BB8](v4, tvEpisodeEpisodeName);
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (void)setSummary:(id)summary
{
  v4 = [summary copy];
  summary = self->_summary;
  self->_summary = v4;

  MEMORY[0x1EEE66BB8](v4, summary);
}

- (void)setSongTitle:(id)title
{
  v4 = [title copy];
  songTitle = self->_songTitle;
  self->_songTitle = v4;

  MEMORY[0x1EEE66BB8](v4, songTitle);
}

- (void)setSongArtist:(id)artist
{
  v4 = [artist copy];
  songArtist = self->_songArtist;
  self->_songArtist = v4;

  MEMORY[0x1EEE66BB8](v4, songArtist);
}

- (void)setSongAlbum:(id)album
{
  v4 = [album copy];
  songAlbum = self->_songAlbum;
  self->_songAlbum = v4;

  MEMORY[0x1EEE66BB8](v4, songAlbum);
}

- (void)setSoftwarePlatform:(id)platform
{
  v4 = [platform copy];
  softwarePlatform = self->_softwarePlatform;
  self->_softwarePlatform = v4;

  MEMORY[0x1EEE66BB8](v4, softwarePlatform);
}

- (void)setSoftwareName:(id)name
{
  v4 = [name copy];
  softwareName = self->_softwareName;
  self->_softwareName = v4;

  MEMORY[0x1EEE66BB8](v4, softwareName);
}

- (void)setSoftwareGenre:(id)genre
{
  v4 = [genre copy];
  softwareGenre = self->_softwareGenre;
  self->_softwareGenre = v4;

  MEMORY[0x1EEE66BB8](v4, softwareGenre);
}

- (void)setSiteName:(id)name
{
  v4 = [name copy];
  siteName = self->_siteName;
  self->_siteName = v4;

  MEMORY[0x1EEE66BB8](v4, siteName);
}

- (void)setRadioName:(id)name
{
  v4 = [name copy];
  radioName = self->_radioName;
  self->_radioName = v4;

  MEMORY[0x1EEE66BB8](v4, radioName);
}

- (void)setRadioCurator:(id)curator
{
  v4 = [curator copy];
  radioCurator = self->_radioCurator;
  self->_radioCurator = v4;

  MEMORY[0x1EEE66BB8](v4, radioCurator);
}

- (void)setPodcastName:(id)name
{
  v4 = [name copy];
  podcastName = self->_podcastName;
  self->_podcastName = v4;

  MEMORY[0x1EEE66BB8](v4, podcastName);
}

- (void)setPodcastEpisodePodcastName:(id)name
{
  v4 = [name copy];
  podcastEpisodePodcastName = self->_podcastEpisodePodcastName;
  self->_podcastEpisodePodcastName = v4;

  MEMORY[0x1EEE66BB8](v4, podcastEpisodePodcastName);
}

- (void)setPodcastEpisodeName:(id)name
{
  v4 = [name copy];
  podcastEpisodeName = self->_podcastEpisodeName;
  self->_podcastEpisodeName = v4;

  MEMORY[0x1EEE66BB8](v4, podcastEpisodeName);
}

- (void)setPodcastEpisodeArtist:(id)artist
{
  v4 = [artist copy];
  podcastEpisodeArtist = self->_podcastEpisodeArtist;
  self->_podcastEpisodeArtist = v4;

  MEMORY[0x1EEE66BB8](v4, podcastEpisodeArtist);
}

- (void)setPodcastArtist:(id)artist
{
  v4 = [artist copy];
  podcastArtist = self->_podcastArtist;
  self->_podcastArtist = v4;

  MEMORY[0x1EEE66BB8](v4, podcastArtist);
}

- (void)setPlaylistName:(id)name
{
  v4 = [name copy];
  playlistName = self->_playlistName;
  self->_playlistName = v4;

  MEMORY[0x1EEE66BB8](v4, playlistName);
}

- (void)setPlaylistCurator:(id)curator
{
  v4 = [curator copy];
  playlistCurator = self->_playlistCurator;
  self->_playlistCurator = v4;

  MEMORY[0x1EEE66BB8](v4, playlistCurator);
}

- (void)setOriginalURL:(id)l
{
  v4 = [l copy];
  originalURL = self->_originalURL;
  self->_originalURL = v4;

  MEMORY[0x1EEE66BB8](v4, originalURL);
}

- (void)setOpenGraphType:(id)type
{
  v4 = [type copy];
  openGraphType = self->_openGraphType;
  self->_openGraphType = v4;

  MEMORY[0x1EEE66BB8](v4, openGraphType);
}

- (void)setMusicVideoName:(id)name
{
  v4 = [name copy];
  musicVideoName = self->_musicVideoName;
  self->_musicVideoName = v4;

  MEMORY[0x1EEE66BB8](v4, musicVideoName);
}

- (void)setMusicVideoArtist:(id)artist
{
  v4 = [artist copy];
  musicVideoArtist = self->_musicVideoArtist;
  self->_musicVideoArtist = v4;

  MEMORY[0x1EEE66BB8](v4, musicVideoArtist);
}

- (void)setMovieName:(id)name
{
  v4 = [name copy];
  movieName = self->_movieName;
  self->_movieName = v4;

  MEMORY[0x1EEE66BB8](v4, movieName);
}

- (void)setMovieGenre:(id)genre
{
  v4 = [genre copy];
  movieGenre = self->_movieGenre;
  self->_movieGenre = v4;

  MEMORY[0x1EEE66BB8](v4, movieGenre);
}

- (void)setMovieBundleName:(id)name
{
  v4 = [name copy];
  movieBundleName = self->_movieBundleName;
  self->_movieBundleName = v4;

  MEMORY[0x1EEE66BB8](v4, movieBundleName);
}

- (void)setMovieBundleGenre:(id)genre
{
  v4 = [genre copy];
  movieBundleGenre = self->_movieBundleGenre;
  self->_movieBundleGenre = v4;

  MEMORY[0x1EEE66BB8](v4, movieBundleGenre);
}

- (int)StringAsLinkMediaType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_LINK_TYPE"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"SONG"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"ALBUM"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"MUSIC_VIDEO"])
  {
    v4 = 40;
  }

  else if ([typeCopy isEqualToString:@"ARTIST"])
  {
    v4 = 50;
  }

  else if ([typeCopy isEqualToString:@"PLAYLIST"])
  {
    v4 = 60;
  }

  else if ([typeCopy isEqualToString:@"RADIO"])
  {
    v4 = 70;
  }

  else if ([typeCopy isEqualToString:@"SOFTWARE"])
  {
    v4 = 80;
  }

  else if ([typeCopy isEqualToString:@"BOOK"])
  {
    v4 = 90;
  }

  else if ([typeCopy isEqualToString:@"AUDIO_BOOK"])
  {
    v4 = 100;
  }

  else if ([typeCopy isEqualToString:@"PODCAST"])
  {
    v4 = 110;
  }

  else if ([typeCopy isEqualToString:@"PODCAST_EPISODE"])
  {
    v4 = 120;
  }

  else if ([typeCopy isEqualToString:@"TV_EPISODE"])
  {
    v4 = 130;
  }

  else if ([typeCopy isEqualToString:@"TV_SEASON"])
  {
    v4 = 140;
  }

  else if ([typeCopy isEqualToString:@"MOVIE"])
  {
    v4 = 150;
  }

  else if ([typeCopy isEqualToString:@"TV_SHOW"])
  {
    v4 = 160;
  }

  else if ([typeCopy isEqualToString:@"MOVIE_BUNDLE"])
  {
    v4 = 170;
  }

  else if ([typeCopy isEqualToString:@"APPLE_TV"])
  {
    v4 = 180;
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (void)setLinkMediaType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_linkMediaType = type;
  }
}

- (void)setItemType:(id)type
{
  v4 = [type copy];
  itemType = self->_itemType;
  self->_itemType = v4;

  MEMORY[0x1EEE66BB8](v4, itemType);
}

- (void)addImageURL:(id)l
{
  lCopy = l;
  imageURLs = self->_imageURLs;
  v8 = lCopy;
  if (!imageURLs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_imageURLs;
    self->_imageURLs = array;

    lCopy = v8;
    imageURLs = self->_imageURLs;
  }

  [(NSArray *)imageURLs addObject:lCopy];
}

- (void)setImageURLs:(id)ls
{
  v4 = [ls mutableCopy];
  imageURLs = self->_imageURLs;
  self->_imageURLs = v4;

  MEMORY[0x1EEE66BB8](v4, imageURLs);
}

- (void)addIconURL:(id)l
{
  lCopy = l;
  iconURLs = self->_iconURLs;
  v8 = lCopy;
  if (!iconURLs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_iconURLs;
    self->_iconURLs = array;

    lCopy = v8;
    iconURLs = self->_iconURLs;
  }

  [(NSArray *)iconURLs addObject:lCopy];
}

- (void)setIconURLs:(id)ls
{
  v4 = [ls mutableCopy];
  iconURLs = self->_iconURLs;
  self->_iconURLs = v4;

  MEMORY[0x1EEE66BB8](v4, iconURLs);
}

- (void)setITunesStoreIdentifier:(id)identifier
{
  v4 = [identifier copy];
  iTunesStoreIdentifier = self->_iTunesStoreIdentifier;
  self->_iTunesStoreIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, iTunesStoreIdentifier);
}

- (void)setITunesStoreFrontIdentifier:(id)identifier
{
  v4 = [identifier copy];
  iTunesStoreFrontIdentifier = self->_iTunesStoreFrontIdentifier;
  self->_iTunesStoreFrontIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, iTunesStoreFrontIdentifier);
}

- (void)setCreator:(id)creator
{
  v4 = [creator copy];
  creator = self->_creator;
  self->_creator = v4;

  MEMORY[0x1EEE66BB8](v4, creator);
}

- (void)setBookName:(id)name
{
  v4 = [name copy];
  bookName = self->_bookName;
  self->_bookName = v4;

  MEMORY[0x1EEE66BB8](v4, bookName);
}

- (void)setBookAuthor:(id)author
{
  v4 = [author copy];
  bookAuthor = self->_bookAuthor;
  self->_bookAuthor = v4;

  MEMORY[0x1EEE66BB8](v4, bookAuthor);
}

- (void)setAudioBookNarrator:(id)narrator
{
  v4 = [narrator copy];
  audioBookNarrator = self->_audioBookNarrator;
  self->_audioBookNarrator = v4;

  MEMORY[0x1EEE66BB8](v4, audioBookNarrator);
}

- (void)setAudioBookName:(id)name
{
  v4 = [name copy];
  audioBookName = self->_audioBookName;
  self->_audioBookName = v4;

  MEMORY[0x1EEE66BB8](v4, audioBookName);
}

- (void)setAudioBookAuthor:(id)author
{
  v4 = [author copy];
  audioBookAuthor = self->_audioBookAuthor;
  self->_audioBookAuthor = v4;

  MEMORY[0x1EEE66BB8](v4, audioBookAuthor);
}

- (void)setArtistName:(id)name
{
  v4 = [name copy];
  artistName = self->_artistName;
  self->_artistName = v4;

  MEMORY[0x1EEE66BB8](v4, artistName);
}

- (void)setArtistGenre:(id)genre
{
  v4 = [genre copy];
  artistGenre = self->_artistGenre;
  self->_artistGenre = v4;

  MEMORY[0x1EEE66BB8](v4, artistGenre);
}

- (void)setAppleTvTitle:(id)title
{
  v4 = [title copy];
  appleTvTitle = self->_appleTvTitle;
  self->_appleTvTitle = v4;

  MEMORY[0x1EEE66BB8](v4, appleTvTitle);
}

- (void)setAppleTvSubtitle:(id)subtitle
{
  v4 = [subtitle copy];
  appleTvSubtitle = self->_appleTvSubtitle;
  self->_appleTvSubtitle = v4;

  MEMORY[0x1EEE66BB8](v4, appleTvSubtitle);
}

- (void)setAlbumName:(id)name
{
  v4 = [name copy];
  albumName = self->_albumName;
  self->_albumName = v4;

  MEMORY[0x1EEE66BB8](v4, albumName);
}

- (void)setAlbumArtist:(id)artist
{
  v4 = [artist copy];
  albumArtist = self->_albumArtist;
  self->_albumArtist = v4;

  MEMORY[0x1EEE66BB8](v4, albumArtist);
}

@end