@interface _INPBMessageLinkMetadata
- (BOOL)isEqual:(id)a3;
- (_INPBMessageLinkMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsLinkMediaType:(id)a3;
- (unint64_t)hash;
- (void)addIconURL:(id)a3;
- (void)addImageURL:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAlbumArtist:(id)a3;
- (void)setAlbumName:(id)a3;
- (void)setAppleTvSubtitle:(id)a3;
- (void)setAppleTvTitle:(id)a3;
- (void)setArtistGenre:(id)a3;
- (void)setArtistName:(id)a3;
- (void)setAudioBookAuthor:(id)a3;
- (void)setAudioBookName:(id)a3;
- (void)setAudioBookNarrator:(id)a3;
- (void)setBookAuthor:(id)a3;
- (void)setBookName:(id)a3;
- (void)setCreator:(id)a3;
- (void)setITunesStoreFrontIdentifier:(id)a3;
- (void)setITunesStoreIdentifier:(id)a3;
- (void)setIconURLs:(id)a3;
- (void)setImageURLs:(id)a3;
- (void)setItemType:(id)a3;
- (void)setLinkMediaType:(int)a3;
- (void)setMovieBundleGenre:(id)a3;
- (void)setMovieBundleName:(id)a3;
- (void)setMovieGenre:(id)a3;
- (void)setMovieName:(id)a3;
- (void)setMusicVideoArtist:(id)a3;
- (void)setMusicVideoName:(id)a3;
- (void)setOpenGraphType:(id)a3;
- (void)setOriginalURL:(id)a3;
- (void)setPlaylistCurator:(id)a3;
- (void)setPlaylistName:(id)a3;
- (void)setPodcastArtist:(id)a3;
- (void)setPodcastEpisodeArtist:(id)a3;
- (void)setPodcastEpisodeName:(id)a3;
- (void)setPodcastEpisodePodcastName:(id)a3;
- (void)setPodcastName:(id)a3;
- (void)setRadioCurator:(id)a3;
- (void)setRadioName:(id)a3;
- (void)setSiteName:(id)a3;
- (void)setSoftwareGenre:(id)a3;
- (void)setSoftwareName:(id)a3;
- (void)setSoftwarePlatform:(id)a3;
- (void)setSongAlbum:(id)a3;
- (void)setSongArtist:(id)a3;
- (void)setSongTitle:(id)a3;
- (void)setSummary:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTvEpisodeEpisodeName:(id)a3;
- (void)setTvEpisodeGenre:(id)a3;
- (void)setTvEpisodeSeasonName:(id)a3;
- (void)setTvSeasonGenre:(id)a3;
- (void)setTvSeasonName:(id)a3;
- (void)setTvShowName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBMessageLinkMetadata

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_albumArtist)
  {
    v4 = [(_INPBMessageLinkMetadata *)self albumArtist];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"albumArtist"];
  }

  if (self->_albumName)
  {
    v6 = [(_INPBMessageLinkMetadata *)self albumName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"albumName"];
  }

  if (self->_appleTvSubtitle)
  {
    v8 = [(_INPBMessageLinkMetadata *)self appleTvSubtitle];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"appleTvSubtitle"];
  }

  if (self->_appleTvTitle)
  {
    v10 = [(_INPBMessageLinkMetadata *)self appleTvTitle];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"appleTvTitle"];
  }

  if (self->_artistGenre)
  {
    v12 = [(_INPBMessageLinkMetadata *)self artistGenre];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"artistGenre"];
  }

  if (self->_artistName)
  {
    v14 = [(_INPBMessageLinkMetadata *)self artistName];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"artistName"];
  }

  if (self->_audioBookAuthor)
  {
    v16 = [(_INPBMessageLinkMetadata *)self audioBookAuthor];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"audioBookAuthor"];
  }

  if (self->_audioBookName)
  {
    v18 = [(_INPBMessageLinkMetadata *)self audioBookName];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"audioBookName"];
  }

  if (self->_audioBookNarrator)
  {
    v20 = [(_INPBMessageLinkMetadata *)self audioBookNarrator];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"audioBookNarrator"];
  }

  if (self->_bookAuthor)
  {
    v22 = [(_INPBMessageLinkMetadata *)self bookAuthor];
    v23 = [v22 copy];
    [v3 setObject:v23 forKeyedSubscript:@"bookAuthor"];
  }

  if (self->_bookName)
  {
    v24 = [(_INPBMessageLinkMetadata *)self bookName];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"bookName"];
  }

  if (self->_creator)
  {
    v26 = [(_INPBMessageLinkMetadata *)self creator];
    v27 = [v26 copy];
    [v3 setObject:v27 forKeyedSubscript:@"creator"];
  }

  if (self->_iTunesStoreFrontIdentifier)
  {
    v28 = [(_INPBMessageLinkMetadata *)self iTunesStoreFrontIdentifier];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"iTunesStoreFrontIdentifier"];
  }

  if (self->_iTunesStoreIdentifier)
  {
    v30 = [(_INPBMessageLinkMetadata *)self iTunesStoreIdentifier];
    v31 = [v30 copy];
    [v3 setObject:v31 forKeyedSubscript:@"iTunesStoreIdentifier"];
  }

  if (self->_iconURLs)
  {
    v32 = [(_INPBMessageLinkMetadata *)self iconURLs];
    v33 = [v32 copy];
    [v3 setObject:v33 forKeyedSubscript:@"iconURL"];
  }

  if (self->_imageURLs)
  {
    v34 = [(_INPBMessageLinkMetadata *)self imageURLs];
    v35 = [v34 copy];
    [v3 setObject:v35 forKeyedSubscript:@"imageURL"];
  }

  if (self->_itemType)
  {
    v36 = [(_INPBMessageLinkMetadata *)self itemType];
    v37 = [v36 copy];
    [v3 setObject:v37 forKeyedSubscript:@"itemType"];
  }

  if ([(_INPBMessageLinkMetadata *)self hasLinkMediaType])
  {
    v38 = [(_INPBMessageLinkMetadata *)self linkMediaType];
    if (v38 > 99)
    {
      if (v38 <= 139)
      {
        if (v38 > 119)
        {
          if (v38 == 120)
          {
            v39 = @"PODCAST_EPISODE";
            goto LABEL_80;
          }

          if (v38 == 130)
          {
            v39 = @"TV_EPISODE";
            goto LABEL_80;
          }
        }

        else
        {
          if (v38 == 100)
          {
            v39 = @"AUDIO_BOOK";
            goto LABEL_80;
          }

          if (v38 == 110)
          {
            v39 = @"PODCAST";
            goto LABEL_80;
          }
        }
      }

      else if (v38 <= 159)
      {
        if (v38 == 140)
        {
          v39 = @"TV_SEASON";
          goto LABEL_80;
        }

        if (v38 == 150)
        {
          v39 = @"MOVIE";
          goto LABEL_80;
        }
      }

      else
      {
        switch(v38)
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

    else if (v38 <= 49)
    {
      if (v38 > 29)
      {
        if (v38 == 30)
        {
          v39 = @"ALBUM";
          goto LABEL_80;
        }

        if (v38 == 40)
        {
          v39 = @"MUSIC_VIDEO";
          goto LABEL_80;
        }
      }

      else
      {
        if (v38 == 10)
        {
          v39 = @"UNKNOWN_LINK_TYPE";
          goto LABEL_80;
        }

        if (v38 == 20)
        {
          v39 = @"SONG";
          goto LABEL_80;
        }
      }
    }

    else if (v38 <= 69)
    {
      if (v38 == 50)
      {
        v39 = @"ARTIST";
        goto LABEL_80;
      }

      if (v38 == 60)
      {
        v39 = @"PLAYLIST";
        goto LABEL_80;
      }
    }

    else
    {
      switch(v38)
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
          [v3 setObject:v39 forKeyedSubscript:@"linkMediaType"];

          goto LABEL_81;
      }
    }

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v38];
    goto LABEL_80;
  }

LABEL_81:
  v40 = [(_INPBMessageLinkMetadata *)self linkURL];
  v41 = [v40 dictionaryRepresentation];
  [v3 setObject:v41 forKeyedSubscript:@"linkURL"];

  if (self->_movieBundleGenre)
  {
    v42 = [(_INPBMessageLinkMetadata *)self movieBundleGenre];
    v43 = [v42 copy];
    [v3 setObject:v43 forKeyedSubscript:@"movieBundleGenre"];
  }

  if (self->_movieBundleName)
  {
    v44 = [(_INPBMessageLinkMetadata *)self movieBundleName];
    v45 = [v44 copy];
    [v3 setObject:v45 forKeyedSubscript:@"movieBundleName"];
  }

  if (self->_movieGenre)
  {
    v46 = [(_INPBMessageLinkMetadata *)self movieGenre];
    v47 = [v46 copy];
    [v3 setObject:v47 forKeyedSubscript:@"movieGenre"];
  }

  if (self->_movieName)
  {
    v48 = [(_INPBMessageLinkMetadata *)self movieName];
    v49 = [v48 copy];
    [v3 setObject:v49 forKeyedSubscript:@"movieName"];
  }

  if (self->_musicVideoArtist)
  {
    v50 = [(_INPBMessageLinkMetadata *)self musicVideoArtist];
    v51 = [v50 copy];
    [v3 setObject:v51 forKeyedSubscript:@"musicVideoArtist"];
  }

  if (self->_musicVideoName)
  {
    v52 = [(_INPBMessageLinkMetadata *)self musicVideoName];
    v53 = [v52 copy];
    [v3 setObject:v53 forKeyedSubscript:@"musicVideoName"];
  }

  if (self->_openGraphType)
  {
    v54 = [(_INPBMessageLinkMetadata *)self openGraphType];
    v55 = [v54 copy];
    [v3 setObject:v55 forKeyedSubscript:@"openGraphType"];
  }

  if (self->_originalURL)
  {
    v56 = [(_INPBMessageLinkMetadata *)self originalURL];
    v57 = [v56 copy];
    [v3 setObject:v57 forKeyedSubscript:@"originalURL"];
  }

  if (self->_playlistCurator)
  {
    v58 = [(_INPBMessageLinkMetadata *)self playlistCurator];
    v59 = [v58 copy];
    [v3 setObject:v59 forKeyedSubscript:@"playlistCurator"];
  }

  if (self->_playlistName)
  {
    v60 = [(_INPBMessageLinkMetadata *)self playlistName];
    v61 = [v60 copy];
    [v3 setObject:v61 forKeyedSubscript:@"playlistName"];
  }

  if (self->_podcastArtist)
  {
    v62 = [(_INPBMessageLinkMetadata *)self podcastArtist];
    v63 = [v62 copy];
    [v3 setObject:v63 forKeyedSubscript:@"podcastArtist"];
  }

  if (self->_podcastEpisodeArtist)
  {
    v64 = [(_INPBMessageLinkMetadata *)self podcastEpisodeArtist];
    v65 = [v64 copy];
    [v3 setObject:v65 forKeyedSubscript:@"podcastEpisodeArtist"];
  }

  if (self->_podcastEpisodeName)
  {
    v66 = [(_INPBMessageLinkMetadata *)self podcastEpisodeName];
    v67 = [v66 copy];
    [v3 setObject:v67 forKeyedSubscript:@"podcastEpisodeName"];
  }

  if (self->_podcastEpisodePodcastName)
  {
    v68 = [(_INPBMessageLinkMetadata *)self podcastEpisodePodcastName];
    v69 = [v68 copy];
    [v3 setObject:v69 forKeyedSubscript:@"podcastEpisodePodcastName"];
  }

  v70 = [(_INPBMessageLinkMetadata *)self podcastEpisodeReleaseDate];
  v71 = [v70 dictionaryRepresentation];
  [v3 setObject:v71 forKeyedSubscript:@"podcastEpisodeReleaseDate"];

  if (self->_podcastName)
  {
    v72 = [(_INPBMessageLinkMetadata *)self podcastName];
    v73 = [v72 copy];
    [v3 setObject:v73 forKeyedSubscript:@"podcastName"];
  }

  if (self->_radioCurator)
  {
    v74 = [(_INPBMessageLinkMetadata *)self radioCurator];
    v75 = [v74 copy];
    [v3 setObject:v75 forKeyedSubscript:@"radioCurator"];
  }

  if (self->_radioName)
  {
    v76 = [(_INPBMessageLinkMetadata *)self radioName];
    v77 = [v76 copy];
    [v3 setObject:v77 forKeyedSubscript:@"radioName"];
  }

  if (self->_siteName)
  {
    v78 = [(_INPBMessageLinkMetadata *)self siteName];
    v79 = [v78 copy];
    [v3 setObject:v79 forKeyedSubscript:@"siteName"];
  }

  if (self->_softwareGenre)
  {
    v80 = [(_INPBMessageLinkMetadata *)self softwareGenre];
    v81 = [v80 copy];
    [v3 setObject:v81 forKeyedSubscript:@"softwareGenre"];
  }

  if (self->_softwareName)
  {
    v82 = [(_INPBMessageLinkMetadata *)self softwareName];
    v83 = [v82 copy];
    [v3 setObject:v83 forKeyedSubscript:@"softwareName"];
  }

  if (self->_softwarePlatform)
  {
    v84 = [(_INPBMessageLinkMetadata *)self softwarePlatform];
    v85 = [v84 copy];
    [v3 setObject:v85 forKeyedSubscript:@"softwarePlatform"];
  }

  if (self->_songAlbum)
  {
    v86 = [(_INPBMessageLinkMetadata *)self songAlbum];
    v87 = [v86 copy];
    [v3 setObject:v87 forKeyedSubscript:@"songAlbum"];
  }

  if (self->_songArtist)
  {
    v88 = [(_INPBMessageLinkMetadata *)self songArtist];
    v89 = [v88 copy];
    [v3 setObject:v89 forKeyedSubscript:@"songArtist"];
  }

  if (self->_songTitle)
  {
    v90 = [(_INPBMessageLinkMetadata *)self songTitle];
    v91 = [v90 copy];
    [v3 setObject:v91 forKeyedSubscript:@"songTitle"];
  }

  if (self->_summary)
  {
    v92 = [(_INPBMessageLinkMetadata *)self summary];
    v93 = [v92 copy];
    [v3 setObject:v93 forKeyedSubscript:@"summary"];
  }

  if (self->_title)
  {
    v94 = [(_INPBMessageLinkMetadata *)self title];
    v95 = [v94 copy];
    [v3 setObject:v95 forKeyedSubscript:@"title"];
  }

  if (self->_tvEpisodeEpisodeName)
  {
    v96 = [(_INPBMessageLinkMetadata *)self tvEpisodeEpisodeName];
    v97 = [v96 copy];
    [v3 setObject:v97 forKeyedSubscript:@"tvEpisodeEpisodeName"];
  }

  if (self->_tvEpisodeGenre)
  {
    v98 = [(_INPBMessageLinkMetadata *)self tvEpisodeGenre];
    v99 = [v98 copy];
    [v3 setObject:v99 forKeyedSubscript:@"tvEpisodeGenre"];
  }

  if (self->_tvEpisodeSeasonName)
  {
    v100 = [(_INPBMessageLinkMetadata *)self tvEpisodeSeasonName];
    v101 = [v100 copy];
    [v3 setObject:v101 forKeyedSubscript:@"tvEpisodeSeasonName"];
  }

  if (self->_tvSeasonGenre)
  {
    v102 = [(_INPBMessageLinkMetadata *)self tvSeasonGenre];
    v103 = [v102 copy];
    [v3 setObject:v103 forKeyedSubscript:@"tvSeasonGenre"];
  }

  if (self->_tvSeasonName)
  {
    v104 = [(_INPBMessageLinkMetadata *)self tvSeasonName];
    v105 = [v104 copy];
    [v3 setObject:v105 forKeyedSubscript:@"tvSeasonName"];
  }

  if (self->_tvShowName)
  {
    v106 = [(_INPBMessageLinkMetadata *)self tvShowName];
    v107 = [v106 copy];
    [v3 setObject:v107 forKeyedSubscript:@"tvShowName"];
  }

  v108 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_261;
  }

  v5 = [(_INPBMessageLinkMetadata *)self albumArtist];
  v6 = [v4 albumArtist];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v7 = [(_INPBMessageLinkMetadata *)self albumArtist];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBMessageLinkMetadata *)self albumArtist];
    v10 = [v4 albumArtist];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self albumName];
  v6 = [v4 albumName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v12 = [(_INPBMessageLinkMetadata *)self albumName];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBMessageLinkMetadata *)self albumName];
    v15 = [v4 albumName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self appleTvSubtitle];
  v6 = [v4 appleTvSubtitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v17 = [(_INPBMessageLinkMetadata *)self appleTvSubtitle];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBMessageLinkMetadata *)self appleTvSubtitle];
    v20 = [v4 appleTvSubtitle];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self appleTvTitle];
  v6 = [v4 appleTvTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v22 = [(_INPBMessageLinkMetadata *)self appleTvTitle];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBMessageLinkMetadata *)self appleTvTitle];
    v25 = [v4 appleTvTitle];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self artistGenre];
  v6 = [v4 artistGenre];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v27 = [(_INPBMessageLinkMetadata *)self artistGenre];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBMessageLinkMetadata *)self artistGenre];
    v30 = [v4 artistGenre];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self artistName];
  v6 = [v4 artistName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v32 = [(_INPBMessageLinkMetadata *)self artistName];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBMessageLinkMetadata *)self artistName];
    v35 = [v4 artistName];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self audioBookAuthor];
  v6 = [v4 audioBookAuthor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v37 = [(_INPBMessageLinkMetadata *)self audioBookAuthor];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBMessageLinkMetadata *)self audioBookAuthor];
    v40 = [v4 audioBookAuthor];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self audioBookName];
  v6 = [v4 audioBookName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v42 = [(_INPBMessageLinkMetadata *)self audioBookName];
  if (v42)
  {
    v43 = v42;
    v44 = [(_INPBMessageLinkMetadata *)self audioBookName];
    v45 = [v4 audioBookName];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self audioBookNarrator];
  v6 = [v4 audioBookNarrator];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v47 = [(_INPBMessageLinkMetadata *)self audioBookNarrator];
  if (v47)
  {
    v48 = v47;
    v49 = [(_INPBMessageLinkMetadata *)self audioBookNarrator];
    v50 = [v4 audioBookNarrator];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self bookAuthor];
  v6 = [v4 bookAuthor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v52 = [(_INPBMessageLinkMetadata *)self bookAuthor];
  if (v52)
  {
    v53 = v52;
    v54 = [(_INPBMessageLinkMetadata *)self bookAuthor];
    v55 = [v4 bookAuthor];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self bookName];
  v6 = [v4 bookName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v57 = [(_INPBMessageLinkMetadata *)self bookName];
  if (v57)
  {
    v58 = v57;
    v59 = [(_INPBMessageLinkMetadata *)self bookName];
    v60 = [v4 bookName];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self creator];
  v6 = [v4 creator];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v62 = [(_INPBMessageLinkMetadata *)self creator];
  if (v62)
  {
    v63 = v62;
    v64 = [(_INPBMessageLinkMetadata *)self creator];
    v65 = [v4 creator];
    v66 = [v64 isEqual:v65];

    if (!v66)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self iTunesStoreFrontIdentifier];
  v6 = [v4 iTunesStoreFrontIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v67 = [(_INPBMessageLinkMetadata *)self iTunesStoreFrontIdentifier];
  if (v67)
  {
    v68 = v67;
    v69 = [(_INPBMessageLinkMetadata *)self iTunesStoreFrontIdentifier];
    v70 = [v4 iTunesStoreFrontIdentifier];
    v71 = [v69 isEqual:v70];

    if (!v71)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self iTunesStoreIdentifier];
  v6 = [v4 iTunesStoreIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v72 = [(_INPBMessageLinkMetadata *)self iTunesStoreIdentifier];
  if (v72)
  {
    v73 = v72;
    v74 = [(_INPBMessageLinkMetadata *)self iTunesStoreIdentifier];
    v75 = [v4 iTunesStoreIdentifier];
    v76 = [v74 isEqual:v75];

    if (!v76)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self iconURLs];
  v6 = [v4 iconURLs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v77 = [(_INPBMessageLinkMetadata *)self iconURLs];
  if (v77)
  {
    v78 = v77;
    v79 = [(_INPBMessageLinkMetadata *)self iconURLs];
    v80 = [v4 iconURLs];
    v81 = [v79 isEqual:v80];

    if (!v81)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self imageURLs];
  v6 = [v4 imageURLs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v82 = [(_INPBMessageLinkMetadata *)self imageURLs];
  if (v82)
  {
    v83 = v82;
    v84 = [(_INPBMessageLinkMetadata *)self imageURLs];
    v85 = [v4 imageURLs];
    v86 = [v84 isEqual:v85];

    if (!v86)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self itemType];
  v6 = [v4 itemType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v87 = [(_INPBMessageLinkMetadata *)self itemType];
  if (v87)
  {
    v88 = v87;
    v89 = [(_INPBMessageLinkMetadata *)self itemType];
    v90 = [v4 itemType];
    v91 = [v89 isEqual:v90];

    if (!v91)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v92 = [(_INPBMessageLinkMetadata *)self hasLinkMediaType];
  if (v92 != [v4 hasLinkMediaType])
  {
    goto LABEL_261;
  }

  if ([(_INPBMessageLinkMetadata *)self hasLinkMediaType])
  {
    if ([v4 hasLinkMediaType])
    {
      linkMediaType = self->_linkMediaType;
      if (linkMediaType != [v4 linkMediaType])
      {
        goto LABEL_261;
      }
    }
  }

  v5 = [(_INPBMessageLinkMetadata *)self linkURL];
  v6 = [v4 linkURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v94 = [(_INPBMessageLinkMetadata *)self linkURL];
  if (v94)
  {
    v95 = v94;
    v96 = [(_INPBMessageLinkMetadata *)self linkURL];
    v97 = [v4 linkURL];
    v98 = [v96 isEqual:v97];

    if (!v98)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self movieBundleGenre];
  v6 = [v4 movieBundleGenre];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v99 = [(_INPBMessageLinkMetadata *)self movieBundleGenre];
  if (v99)
  {
    v100 = v99;
    v101 = [(_INPBMessageLinkMetadata *)self movieBundleGenre];
    v102 = [v4 movieBundleGenre];
    v103 = [v101 isEqual:v102];

    if (!v103)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self movieBundleName];
  v6 = [v4 movieBundleName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v104 = [(_INPBMessageLinkMetadata *)self movieBundleName];
  if (v104)
  {
    v105 = v104;
    v106 = [(_INPBMessageLinkMetadata *)self movieBundleName];
    v107 = [v4 movieBundleName];
    v108 = [v106 isEqual:v107];

    if (!v108)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self movieGenre];
  v6 = [v4 movieGenre];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v109 = [(_INPBMessageLinkMetadata *)self movieGenre];
  if (v109)
  {
    v110 = v109;
    v111 = [(_INPBMessageLinkMetadata *)self movieGenre];
    v112 = [v4 movieGenre];
    v113 = [v111 isEqual:v112];

    if (!v113)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self movieName];
  v6 = [v4 movieName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v114 = [(_INPBMessageLinkMetadata *)self movieName];
  if (v114)
  {
    v115 = v114;
    v116 = [(_INPBMessageLinkMetadata *)self movieName];
    v117 = [v4 movieName];
    v118 = [v116 isEqual:v117];

    if (!v118)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self musicVideoArtist];
  v6 = [v4 musicVideoArtist];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v119 = [(_INPBMessageLinkMetadata *)self musicVideoArtist];
  if (v119)
  {
    v120 = v119;
    v121 = [(_INPBMessageLinkMetadata *)self musicVideoArtist];
    v122 = [v4 musicVideoArtist];
    v123 = [v121 isEqual:v122];

    if (!v123)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self musicVideoName];
  v6 = [v4 musicVideoName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v124 = [(_INPBMessageLinkMetadata *)self musicVideoName];
  if (v124)
  {
    v125 = v124;
    v126 = [(_INPBMessageLinkMetadata *)self musicVideoName];
    v127 = [v4 musicVideoName];
    v128 = [v126 isEqual:v127];

    if (!v128)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self openGraphType];
  v6 = [v4 openGraphType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v129 = [(_INPBMessageLinkMetadata *)self openGraphType];
  if (v129)
  {
    v130 = v129;
    v131 = [(_INPBMessageLinkMetadata *)self openGraphType];
    v132 = [v4 openGraphType];
    v133 = [v131 isEqual:v132];

    if (!v133)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self originalURL];
  v6 = [v4 originalURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v134 = [(_INPBMessageLinkMetadata *)self originalURL];
  if (v134)
  {
    v135 = v134;
    v136 = [(_INPBMessageLinkMetadata *)self originalURL];
    v137 = [v4 originalURL];
    v138 = [v136 isEqual:v137];

    if (!v138)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self playlistCurator];
  v6 = [v4 playlistCurator];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v139 = [(_INPBMessageLinkMetadata *)self playlistCurator];
  if (v139)
  {
    v140 = v139;
    v141 = [(_INPBMessageLinkMetadata *)self playlistCurator];
    v142 = [v4 playlistCurator];
    v143 = [v141 isEqual:v142];

    if (!v143)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self playlistName];
  v6 = [v4 playlistName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v144 = [(_INPBMessageLinkMetadata *)self playlistName];
  if (v144)
  {
    v145 = v144;
    v146 = [(_INPBMessageLinkMetadata *)self playlistName];
    v147 = [v4 playlistName];
    v148 = [v146 isEqual:v147];

    if (!v148)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self podcastArtist];
  v6 = [v4 podcastArtist];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v149 = [(_INPBMessageLinkMetadata *)self podcastArtist];
  if (v149)
  {
    v150 = v149;
    v151 = [(_INPBMessageLinkMetadata *)self podcastArtist];
    v152 = [v4 podcastArtist];
    v153 = [v151 isEqual:v152];

    if (!v153)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self podcastEpisodeArtist];
  v6 = [v4 podcastEpisodeArtist];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v154 = [(_INPBMessageLinkMetadata *)self podcastEpisodeArtist];
  if (v154)
  {
    v155 = v154;
    v156 = [(_INPBMessageLinkMetadata *)self podcastEpisodeArtist];
    v157 = [v4 podcastEpisodeArtist];
    v158 = [v156 isEqual:v157];

    if (!v158)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self podcastEpisodeName];
  v6 = [v4 podcastEpisodeName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v159 = [(_INPBMessageLinkMetadata *)self podcastEpisodeName];
  if (v159)
  {
    v160 = v159;
    v161 = [(_INPBMessageLinkMetadata *)self podcastEpisodeName];
    v162 = [v4 podcastEpisodeName];
    v163 = [v161 isEqual:v162];

    if (!v163)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self podcastEpisodePodcastName];
  v6 = [v4 podcastEpisodePodcastName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v164 = [(_INPBMessageLinkMetadata *)self podcastEpisodePodcastName];
  if (v164)
  {
    v165 = v164;
    v166 = [(_INPBMessageLinkMetadata *)self podcastEpisodePodcastName];
    v167 = [v4 podcastEpisodePodcastName];
    v168 = [v166 isEqual:v167];

    if (!v168)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self podcastEpisodeReleaseDate];
  v6 = [v4 podcastEpisodeReleaseDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v169 = [(_INPBMessageLinkMetadata *)self podcastEpisodeReleaseDate];
  if (v169)
  {
    v170 = v169;
    v171 = [(_INPBMessageLinkMetadata *)self podcastEpisodeReleaseDate];
    v172 = [v4 podcastEpisodeReleaseDate];
    v173 = [v171 isEqual:v172];

    if (!v173)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self podcastName];
  v6 = [v4 podcastName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v174 = [(_INPBMessageLinkMetadata *)self podcastName];
  if (v174)
  {
    v175 = v174;
    v176 = [(_INPBMessageLinkMetadata *)self podcastName];
    v177 = [v4 podcastName];
    v178 = [v176 isEqual:v177];

    if (!v178)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self radioCurator];
  v6 = [v4 radioCurator];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v179 = [(_INPBMessageLinkMetadata *)self radioCurator];
  if (v179)
  {
    v180 = v179;
    v181 = [(_INPBMessageLinkMetadata *)self radioCurator];
    v182 = [v4 radioCurator];
    v183 = [v181 isEqual:v182];

    if (!v183)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self radioName];
  v6 = [v4 radioName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v184 = [(_INPBMessageLinkMetadata *)self radioName];
  if (v184)
  {
    v185 = v184;
    v186 = [(_INPBMessageLinkMetadata *)self radioName];
    v187 = [v4 radioName];
    v188 = [v186 isEqual:v187];

    if (!v188)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self siteName];
  v6 = [v4 siteName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v189 = [(_INPBMessageLinkMetadata *)self siteName];
  if (v189)
  {
    v190 = v189;
    v191 = [(_INPBMessageLinkMetadata *)self siteName];
    v192 = [v4 siteName];
    v193 = [v191 isEqual:v192];

    if (!v193)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self softwareGenre];
  v6 = [v4 softwareGenre];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v194 = [(_INPBMessageLinkMetadata *)self softwareGenre];
  if (v194)
  {
    v195 = v194;
    v196 = [(_INPBMessageLinkMetadata *)self softwareGenre];
    v197 = [v4 softwareGenre];
    v198 = [v196 isEqual:v197];

    if (!v198)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self softwareName];
  v6 = [v4 softwareName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v199 = [(_INPBMessageLinkMetadata *)self softwareName];
  if (v199)
  {
    v200 = v199;
    v201 = [(_INPBMessageLinkMetadata *)self softwareName];
    v202 = [v4 softwareName];
    v203 = [v201 isEqual:v202];

    if (!v203)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self softwarePlatform];
  v6 = [v4 softwarePlatform];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v204 = [(_INPBMessageLinkMetadata *)self softwarePlatform];
  if (v204)
  {
    v205 = v204;
    v206 = [(_INPBMessageLinkMetadata *)self softwarePlatform];
    v207 = [v4 softwarePlatform];
    v208 = [v206 isEqual:v207];

    if (!v208)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self songAlbum];
  v6 = [v4 songAlbum];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v209 = [(_INPBMessageLinkMetadata *)self songAlbum];
  if (v209)
  {
    v210 = v209;
    v211 = [(_INPBMessageLinkMetadata *)self songAlbum];
    v212 = [v4 songAlbum];
    v213 = [v211 isEqual:v212];

    if (!v213)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self songArtist];
  v6 = [v4 songArtist];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v214 = [(_INPBMessageLinkMetadata *)self songArtist];
  if (v214)
  {
    v215 = v214;
    v216 = [(_INPBMessageLinkMetadata *)self songArtist];
    v217 = [v4 songArtist];
    v218 = [v216 isEqual:v217];

    if (!v218)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self songTitle];
  v6 = [v4 songTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v219 = [(_INPBMessageLinkMetadata *)self songTitle];
  if (v219)
  {
    v220 = v219;
    v221 = [(_INPBMessageLinkMetadata *)self songTitle];
    v222 = [v4 songTitle];
    v223 = [v221 isEqual:v222];

    if (!v223)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self summary];
  v6 = [v4 summary];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v224 = [(_INPBMessageLinkMetadata *)self summary];
  if (v224)
  {
    v225 = v224;
    v226 = [(_INPBMessageLinkMetadata *)self summary];
    v227 = [v4 summary];
    v228 = [v226 isEqual:v227];

    if (!v228)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v229 = [(_INPBMessageLinkMetadata *)self title];
  if (v229)
  {
    v230 = v229;
    v231 = [(_INPBMessageLinkMetadata *)self title];
    v232 = [v4 title];
    v233 = [v231 isEqual:v232];

    if (!v233)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self tvEpisodeEpisodeName];
  v6 = [v4 tvEpisodeEpisodeName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v234 = [(_INPBMessageLinkMetadata *)self tvEpisodeEpisodeName];
  if (v234)
  {
    v235 = v234;
    v236 = [(_INPBMessageLinkMetadata *)self tvEpisodeEpisodeName];
    v237 = [v4 tvEpisodeEpisodeName];
    v238 = [v236 isEqual:v237];

    if (!v238)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self tvEpisodeGenre];
  v6 = [v4 tvEpisodeGenre];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v239 = [(_INPBMessageLinkMetadata *)self tvEpisodeGenre];
  if (v239)
  {
    v240 = v239;
    v241 = [(_INPBMessageLinkMetadata *)self tvEpisodeGenre];
    v242 = [v4 tvEpisodeGenre];
    v243 = [v241 isEqual:v242];

    if (!v243)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self tvEpisodeSeasonName];
  v6 = [v4 tvEpisodeSeasonName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v244 = [(_INPBMessageLinkMetadata *)self tvEpisodeSeasonName];
  if (v244)
  {
    v245 = v244;
    v246 = [(_INPBMessageLinkMetadata *)self tvEpisodeSeasonName];
    v247 = [v4 tvEpisodeSeasonName];
    v248 = [v246 isEqual:v247];

    if (!v248)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self tvSeasonGenre];
  v6 = [v4 tvSeasonGenre];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v249 = [(_INPBMessageLinkMetadata *)self tvSeasonGenre];
  if (v249)
  {
    v250 = v249;
    v251 = [(_INPBMessageLinkMetadata *)self tvSeasonGenre];
    v252 = [v4 tvSeasonGenre];
    v253 = [v251 isEqual:v252];

    if (!v253)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self tvSeasonName];
  v6 = [v4 tvSeasonName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_260;
  }

  v254 = [(_INPBMessageLinkMetadata *)self tvSeasonName];
  if (v254)
  {
    v255 = v254;
    v256 = [(_INPBMessageLinkMetadata *)self tvSeasonName];
    v257 = [v4 tvSeasonName];
    v258 = [v256 isEqual:v257];

    if (!v258)
    {
      goto LABEL_261;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageLinkMetadata *)self tvShowName];
  v6 = [v4 tvShowName];
  if ((v5 != 0) != (v6 == 0))
  {
    v259 = [(_INPBMessageLinkMetadata *)self tvShowName];
    if (!v259)
    {

LABEL_264:
      v264 = 1;
      goto LABEL_262;
    }

    v260 = v259;
    v261 = [(_INPBMessageLinkMetadata *)self tvShowName];
    v262 = [v4 tvShowName];
    v263 = [v261 isEqual:v262];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBMessageLinkMetadata allocWithZone:](_INPBMessageLinkMetadata init];
  v6 = [(NSString *)self->_albumArtist copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setAlbumArtist:v6];

  v7 = [(NSString *)self->_albumName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setAlbumName:v7];

  v8 = [(NSString *)self->_appleTvSubtitle copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setAppleTvSubtitle:v8];

  v9 = [(NSString *)self->_appleTvTitle copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setAppleTvTitle:v9];

  v10 = [(NSString *)self->_artistGenre copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setArtistGenre:v10];

  v11 = [(NSString *)self->_artistName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setArtistName:v11];

  v12 = [(NSString *)self->_audioBookAuthor copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setAudioBookAuthor:v12];

  v13 = [(NSString *)self->_audioBookName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setAudioBookName:v13];

  v14 = [(NSString *)self->_audioBookNarrator copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setAudioBookNarrator:v14];

  v15 = [(NSString *)self->_bookAuthor copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setBookAuthor:v15];

  v16 = [(NSString *)self->_bookName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setBookName:v16];

  v17 = [(NSString *)self->_creator copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setCreator:v17];

  v18 = [(NSString *)self->_iTunesStoreFrontIdentifier copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setITunesStoreFrontIdentifier:v18];

  v19 = [(NSString *)self->_iTunesStoreIdentifier copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setITunesStoreIdentifier:v19];

  v20 = [(NSArray *)self->_iconURLs copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setIconURLs:v20];

  v21 = [(NSArray *)self->_imageURLs copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setImageURLs:v21];

  v22 = [(NSString *)self->_itemType copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setItemType:v22];

  if ([(_INPBMessageLinkMetadata *)self hasLinkMediaType])
  {
    [(_INPBMessageLinkMetadata *)v5 setLinkMediaType:[(_INPBMessageLinkMetadata *)self linkMediaType]];
  }

  v23 = [(_INPBURLValue *)self->_linkURL copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setLinkURL:v23];

  v24 = [(NSString *)self->_movieBundleGenre copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setMovieBundleGenre:v24];

  v25 = [(NSString *)self->_movieBundleName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setMovieBundleName:v25];

  v26 = [(NSString *)self->_movieGenre copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setMovieGenre:v26];

  v27 = [(NSString *)self->_movieName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setMovieName:v27];

  v28 = [(NSString *)self->_musicVideoArtist copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setMusicVideoArtist:v28];

  v29 = [(NSString *)self->_musicVideoName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setMusicVideoName:v29];

  v30 = [(NSString *)self->_openGraphType copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setOpenGraphType:v30];

  v31 = [(NSString *)self->_originalURL copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setOriginalURL:v31];

  v32 = [(NSString *)self->_playlistCurator copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setPlaylistCurator:v32];

  v33 = [(NSString *)self->_playlistName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setPlaylistName:v33];

  v34 = [(NSString *)self->_podcastArtist copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setPodcastArtist:v34];

  v35 = [(NSString *)self->_podcastEpisodeArtist copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setPodcastEpisodeArtist:v35];

  v36 = [(NSString *)self->_podcastEpisodeName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setPodcastEpisodeName:v36];

  v37 = [(NSString *)self->_podcastEpisodePodcastName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setPodcastEpisodePodcastName:v37];

  v38 = [(_INPBDateTime *)self->_podcastEpisodeReleaseDate copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setPodcastEpisodeReleaseDate:v38];

  v39 = [(NSString *)self->_podcastName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setPodcastName:v39];

  v40 = [(NSString *)self->_radioCurator copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setRadioCurator:v40];

  v41 = [(NSString *)self->_radioName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setRadioName:v41];

  v42 = [(NSString *)self->_siteName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setSiteName:v42];

  v43 = [(NSString *)self->_softwareGenre copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setSoftwareGenre:v43];

  v44 = [(NSString *)self->_softwareName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setSoftwareName:v44];

  v45 = [(NSString *)self->_softwarePlatform copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setSoftwarePlatform:v45];

  v46 = [(NSString *)self->_songAlbum copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setSongAlbum:v46];

  v47 = [(NSString *)self->_songArtist copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setSongArtist:v47];

  v48 = [(NSString *)self->_songTitle copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setSongTitle:v48];

  v49 = [(NSString *)self->_summary copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setSummary:v49];

  v50 = [(NSString *)self->_title copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setTitle:v50];

  v51 = [(NSString *)self->_tvEpisodeEpisodeName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setTvEpisodeEpisodeName:v51];

  v52 = [(NSString *)self->_tvEpisodeGenre copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setTvEpisodeGenre:v52];

  v53 = [(NSString *)self->_tvEpisodeSeasonName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setTvEpisodeSeasonName:v53];

  v54 = [(NSString *)self->_tvSeasonGenre copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setTvSeasonGenre:v54];

  v55 = [(NSString *)self->_tvSeasonName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setTvSeasonName:v55];

  v56 = [(NSString *)self->_tvShowName copyWithZone:a3];
  [(_INPBMessageLinkMetadata *)v5 setTvShowName:v56];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBMessageLinkMetadata *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBMessageLinkMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBMessageLinkMetadata *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v127 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBMessageLinkMetadata *)self albumArtist];

  if (v5)
  {
    albumArtist = self->_albumArtist;
    PBDataWriterWriteStringField();
  }

  v7 = [(_INPBMessageLinkMetadata *)self albumName];

  if (v7)
  {
    albumName = self->_albumName;
    PBDataWriterWriteStringField();
  }

  v9 = [(_INPBMessageLinkMetadata *)self appleTvSubtitle];

  if (v9)
  {
    appleTvSubtitle = self->_appleTvSubtitle;
    PBDataWriterWriteStringField();
  }

  v11 = [(_INPBMessageLinkMetadata *)self appleTvTitle];

  if (v11)
  {
    appleTvTitle = self->_appleTvTitle;
    PBDataWriterWriteStringField();
  }

  v13 = [(_INPBMessageLinkMetadata *)self artistGenre];

  if (v13)
  {
    artistGenre = self->_artistGenre;
    PBDataWriterWriteStringField();
  }

  v15 = [(_INPBMessageLinkMetadata *)self artistName];

  if (v15)
  {
    artistName = self->_artistName;
    PBDataWriterWriteStringField();
  }

  v17 = [(_INPBMessageLinkMetadata *)self audioBookAuthor];

  if (v17)
  {
    audioBookAuthor = self->_audioBookAuthor;
    PBDataWriterWriteStringField();
  }

  v19 = [(_INPBMessageLinkMetadata *)self audioBookName];

  if (v19)
  {
    audioBookName = self->_audioBookName;
    PBDataWriterWriteStringField();
  }

  v21 = [(_INPBMessageLinkMetadata *)self audioBookNarrator];

  if (v21)
  {
    audioBookNarrator = self->_audioBookNarrator;
    PBDataWriterWriteStringField();
  }

  v23 = [(_INPBMessageLinkMetadata *)self bookAuthor];

  if (v23)
  {
    bookAuthor = self->_bookAuthor;
    PBDataWriterWriteStringField();
  }

  v25 = [(_INPBMessageLinkMetadata *)self bookName];

  if (v25)
  {
    bookName = self->_bookName;
    PBDataWriterWriteStringField();
  }

  v27 = [(_INPBMessageLinkMetadata *)self creator];

  if (v27)
  {
    creator = self->_creator;
    PBDataWriterWriteStringField();
  }

  v29 = [(_INPBMessageLinkMetadata *)self iTunesStoreFrontIdentifier];

  if (v29)
  {
    iTunesStoreFrontIdentifier = self->_iTunesStoreFrontIdentifier;
    PBDataWriterWriteStringField();
  }

  v31 = [(_INPBMessageLinkMetadata *)self iTunesStoreIdentifier];

  if (v31)
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

  v45 = [(_INPBMessageLinkMetadata *)self itemType];

  if (v45)
  {
    itemType = self->_itemType;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBMessageLinkMetadata *)self hasLinkMediaType])
  {
    linkMediaType = self->_linkMediaType;
    PBDataWriterWriteInt32Field();
  }

  v48 = [(_INPBMessageLinkMetadata *)self linkURL];

  if (v48)
  {
    v49 = [(_INPBMessageLinkMetadata *)self linkURL];
    PBDataWriterWriteSubmessage();
  }

  v50 = [(_INPBMessageLinkMetadata *)self movieBundleGenre];

  if (v50)
  {
    movieBundleGenre = self->_movieBundleGenre;
    PBDataWriterWriteStringField();
  }

  v52 = [(_INPBMessageLinkMetadata *)self movieBundleName];

  if (v52)
  {
    movieBundleName = self->_movieBundleName;
    PBDataWriterWriteStringField();
  }

  v54 = [(_INPBMessageLinkMetadata *)self movieGenre];

  if (v54)
  {
    movieGenre = self->_movieGenre;
    PBDataWriterWriteStringField();
  }

  v56 = [(_INPBMessageLinkMetadata *)self movieName];

  if (v56)
  {
    movieName = self->_movieName;
    PBDataWriterWriteStringField();
  }

  v58 = [(_INPBMessageLinkMetadata *)self musicVideoArtist];

  if (v58)
  {
    musicVideoArtist = self->_musicVideoArtist;
    PBDataWriterWriteStringField();
  }

  v60 = [(_INPBMessageLinkMetadata *)self musicVideoName];

  if (v60)
  {
    musicVideoName = self->_musicVideoName;
    PBDataWriterWriteStringField();
  }

  v62 = [(_INPBMessageLinkMetadata *)self openGraphType];

  if (v62)
  {
    openGraphType = self->_openGraphType;
    PBDataWriterWriteStringField();
  }

  v64 = [(_INPBMessageLinkMetadata *)self originalURL];

  if (v64)
  {
    originalURL = self->_originalURL;
    PBDataWriterWriteStringField();
  }

  v66 = [(_INPBMessageLinkMetadata *)self playlistCurator];

  if (v66)
  {
    playlistCurator = self->_playlistCurator;
    PBDataWriterWriteStringField();
  }

  v68 = [(_INPBMessageLinkMetadata *)self playlistName];

  if (v68)
  {
    playlistName = self->_playlistName;
    PBDataWriterWriteStringField();
  }

  v70 = [(_INPBMessageLinkMetadata *)self podcastArtist];

  if (v70)
  {
    podcastArtist = self->_podcastArtist;
    PBDataWriterWriteStringField();
  }

  v72 = [(_INPBMessageLinkMetadata *)self podcastEpisodeArtist];

  if (v72)
  {
    podcastEpisodeArtist = self->_podcastEpisodeArtist;
    PBDataWriterWriteStringField();
  }

  v74 = [(_INPBMessageLinkMetadata *)self podcastEpisodeName];

  if (v74)
  {
    podcastEpisodeName = self->_podcastEpisodeName;
    PBDataWriterWriteStringField();
  }

  v76 = [(_INPBMessageLinkMetadata *)self podcastEpisodePodcastName];

  if (v76)
  {
    podcastEpisodePodcastName = self->_podcastEpisodePodcastName;
    PBDataWriterWriteStringField();
  }

  v78 = [(_INPBMessageLinkMetadata *)self podcastEpisodeReleaseDate];

  if (v78)
  {
    v79 = [(_INPBMessageLinkMetadata *)self podcastEpisodeReleaseDate];
    PBDataWriterWriteSubmessage();
  }

  v80 = [(_INPBMessageLinkMetadata *)self podcastName];

  if (v80)
  {
    podcastName = self->_podcastName;
    PBDataWriterWriteStringField();
  }

  v82 = [(_INPBMessageLinkMetadata *)self radioCurator];

  if (v82)
  {
    radioCurator = self->_radioCurator;
    PBDataWriterWriteStringField();
  }

  v84 = [(_INPBMessageLinkMetadata *)self radioName];

  if (v84)
  {
    radioName = self->_radioName;
    PBDataWriterWriteStringField();
  }

  v86 = [(_INPBMessageLinkMetadata *)self siteName];

  if (v86)
  {
    siteName = self->_siteName;
    PBDataWriterWriteStringField();
  }

  v88 = [(_INPBMessageLinkMetadata *)self softwareGenre];

  if (v88)
  {
    softwareGenre = self->_softwareGenre;
    PBDataWriterWriteStringField();
  }

  v90 = [(_INPBMessageLinkMetadata *)self softwareName];

  if (v90)
  {
    softwareName = self->_softwareName;
    PBDataWriterWriteStringField();
  }

  v92 = [(_INPBMessageLinkMetadata *)self softwarePlatform];

  if (v92)
  {
    softwarePlatform = self->_softwarePlatform;
    PBDataWriterWriteStringField();
  }

  v94 = [(_INPBMessageLinkMetadata *)self songAlbum];

  if (v94)
  {
    songAlbum = self->_songAlbum;
    PBDataWriterWriteStringField();
  }

  v96 = [(_INPBMessageLinkMetadata *)self songArtist];

  if (v96)
  {
    songArtist = self->_songArtist;
    PBDataWriterWriteStringField();
  }

  v98 = [(_INPBMessageLinkMetadata *)self songTitle];

  if (v98)
  {
    songTitle = self->_songTitle;
    PBDataWriterWriteStringField();
  }

  v100 = [(_INPBMessageLinkMetadata *)self summary];

  if (v100)
  {
    summary = self->_summary;
    PBDataWriterWriteStringField();
  }

  v102 = [(_INPBMessageLinkMetadata *)self title];

  if (v102)
  {
    title = self->_title;
    PBDataWriterWriteStringField();
  }

  v104 = [(_INPBMessageLinkMetadata *)self tvEpisodeEpisodeName];

  if (v104)
  {
    tvEpisodeEpisodeName = self->_tvEpisodeEpisodeName;
    PBDataWriterWriteStringField();
  }

  v106 = [(_INPBMessageLinkMetadata *)self tvEpisodeGenre];

  if (v106)
  {
    tvEpisodeGenre = self->_tvEpisodeGenre;
    PBDataWriterWriteStringField();
  }

  v108 = [(_INPBMessageLinkMetadata *)self tvEpisodeSeasonName];

  if (v108)
  {
    tvEpisodeSeasonName = self->_tvEpisodeSeasonName;
    PBDataWriterWriteStringField();
  }

  v110 = [(_INPBMessageLinkMetadata *)self tvSeasonGenre];

  if (v110)
  {
    tvSeasonGenre = self->_tvSeasonGenre;
    PBDataWriterWriteStringField();
  }

  v112 = [(_INPBMessageLinkMetadata *)self tvSeasonName];

  if (v112)
  {
    tvSeasonName = self->_tvSeasonName;
    PBDataWriterWriteStringField();
  }

  v114 = [(_INPBMessageLinkMetadata *)self tvShowName];

  if (v114)
  {
    tvShowName = self->_tvShowName;
    PBDataWriterWriteStringField();
  }

  v116 = *MEMORY[0x1E69E9840];
}

- (void)setTvShowName:(id)a3
{
  v4 = [a3 copy];
  tvShowName = self->_tvShowName;
  self->_tvShowName = v4;

  MEMORY[0x1EEE66BB8](v4, tvShowName);
}

- (void)setTvSeasonName:(id)a3
{
  v4 = [a3 copy];
  tvSeasonName = self->_tvSeasonName;
  self->_tvSeasonName = v4;

  MEMORY[0x1EEE66BB8](v4, tvSeasonName);
}

- (void)setTvSeasonGenre:(id)a3
{
  v4 = [a3 copy];
  tvSeasonGenre = self->_tvSeasonGenre;
  self->_tvSeasonGenre = v4;

  MEMORY[0x1EEE66BB8](v4, tvSeasonGenre);
}

- (void)setTvEpisodeSeasonName:(id)a3
{
  v4 = [a3 copy];
  tvEpisodeSeasonName = self->_tvEpisodeSeasonName;
  self->_tvEpisodeSeasonName = v4;

  MEMORY[0x1EEE66BB8](v4, tvEpisodeSeasonName);
}

- (void)setTvEpisodeGenre:(id)a3
{
  v4 = [a3 copy];
  tvEpisodeGenre = self->_tvEpisodeGenre;
  self->_tvEpisodeGenre = v4;

  MEMORY[0x1EEE66BB8](v4, tvEpisodeGenre);
}

- (void)setTvEpisodeEpisodeName:(id)a3
{
  v4 = [a3 copy];
  tvEpisodeEpisodeName = self->_tvEpisodeEpisodeName;
  self->_tvEpisodeEpisodeName = v4;

  MEMORY[0x1EEE66BB8](v4, tvEpisodeEpisodeName);
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (void)setSummary:(id)a3
{
  v4 = [a3 copy];
  summary = self->_summary;
  self->_summary = v4;

  MEMORY[0x1EEE66BB8](v4, summary);
}

- (void)setSongTitle:(id)a3
{
  v4 = [a3 copy];
  songTitle = self->_songTitle;
  self->_songTitle = v4;

  MEMORY[0x1EEE66BB8](v4, songTitle);
}

- (void)setSongArtist:(id)a3
{
  v4 = [a3 copy];
  songArtist = self->_songArtist;
  self->_songArtist = v4;

  MEMORY[0x1EEE66BB8](v4, songArtist);
}

- (void)setSongAlbum:(id)a3
{
  v4 = [a3 copy];
  songAlbum = self->_songAlbum;
  self->_songAlbum = v4;

  MEMORY[0x1EEE66BB8](v4, songAlbum);
}

- (void)setSoftwarePlatform:(id)a3
{
  v4 = [a3 copy];
  softwarePlatform = self->_softwarePlatform;
  self->_softwarePlatform = v4;

  MEMORY[0x1EEE66BB8](v4, softwarePlatform);
}

- (void)setSoftwareName:(id)a3
{
  v4 = [a3 copy];
  softwareName = self->_softwareName;
  self->_softwareName = v4;

  MEMORY[0x1EEE66BB8](v4, softwareName);
}

- (void)setSoftwareGenre:(id)a3
{
  v4 = [a3 copy];
  softwareGenre = self->_softwareGenre;
  self->_softwareGenre = v4;

  MEMORY[0x1EEE66BB8](v4, softwareGenre);
}

- (void)setSiteName:(id)a3
{
  v4 = [a3 copy];
  siteName = self->_siteName;
  self->_siteName = v4;

  MEMORY[0x1EEE66BB8](v4, siteName);
}

- (void)setRadioName:(id)a3
{
  v4 = [a3 copy];
  radioName = self->_radioName;
  self->_radioName = v4;

  MEMORY[0x1EEE66BB8](v4, radioName);
}

- (void)setRadioCurator:(id)a3
{
  v4 = [a3 copy];
  radioCurator = self->_radioCurator;
  self->_radioCurator = v4;

  MEMORY[0x1EEE66BB8](v4, radioCurator);
}

- (void)setPodcastName:(id)a3
{
  v4 = [a3 copy];
  podcastName = self->_podcastName;
  self->_podcastName = v4;

  MEMORY[0x1EEE66BB8](v4, podcastName);
}

- (void)setPodcastEpisodePodcastName:(id)a3
{
  v4 = [a3 copy];
  podcastEpisodePodcastName = self->_podcastEpisodePodcastName;
  self->_podcastEpisodePodcastName = v4;

  MEMORY[0x1EEE66BB8](v4, podcastEpisodePodcastName);
}

- (void)setPodcastEpisodeName:(id)a3
{
  v4 = [a3 copy];
  podcastEpisodeName = self->_podcastEpisodeName;
  self->_podcastEpisodeName = v4;

  MEMORY[0x1EEE66BB8](v4, podcastEpisodeName);
}

- (void)setPodcastEpisodeArtist:(id)a3
{
  v4 = [a3 copy];
  podcastEpisodeArtist = self->_podcastEpisodeArtist;
  self->_podcastEpisodeArtist = v4;

  MEMORY[0x1EEE66BB8](v4, podcastEpisodeArtist);
}

- (void)setPodcastArtist:(id)a3
{
  v4 = [a3 copy];
  podcastArtist = self->_podcastArtist;
  self->_podcastArtist = v4;

  MEMORY[0x1EEE66BB8](v4, podcastArtist);
}

- (void)setPlaylistName:(id)a3
{
  v4 = [a3 copy];
  playlistName = self->_playlistName;
  self->_playlistName = v4;

  MEMORY[0x1EEE66BB8](v4, playlistName);
}

- (void)setPlaylistCurator:(id)a3
{
  v4 = [a3 copy];
  playlistCurator = self->_playlistCurator;
  self->_playlistCurator = v4;

  MEMORY[0x1EEE66BB8](v4, playlistCurator);
}

- (void)setOriginalURL:(id)a3
{
  v4 = [a3 copy];
  originalURL = self->_originalURL;
  self->_originalURL = v4;

  MEMORY[0x1EEE66BB8](v4, originalURL);
}

- (void)setOpenGraphType:(id)a3
{
  v4 = [a3 copy];
  openGraphType = self->_openGraphType;
  self->_openGraphType = v4;

  MEMORY[0x1EEE66BB8](v4, openGraphType);
}

- (void)setMusicVideoName:(id)a3
{
  v4 = [a3 copy];
  musicVideoName = self->_musicVideoName;
  self->_musicVideoName = v4;

  MEMORY[0x1EEE66BB8](v4, musicVideoName);
}

- (void)setMusicVideoArtist:(id)a3
{
  v4 = [a3 copy];
  musicVideoArtist = self->_musicVideoArtist;
  self->_musicVideoArtist = v4;

  MEMORY[0x1EEE66BB8](v4, musicVideoArtist);
}

- (void)setMovieName:(id)a3
{
  v4 = [a3 copy];
  movieName = self->_movieName;
  self->_movieName = v4;

  MEMORY[0x1EEE66BB8](v4, movieName);
}

- (void)setMovieGenre:(id)a3
{
  v4 = [a3 copy];
  movieGenre = self->_movieGenre;
  self->_movieGenre = v4;

  MEMORY[0x1EEE66BB8](v4, movieGenre);
}

- (void)setMovieBundleName:(id)a3
{
  v4 = [a3 copy];
  movieBundleName = self->_movieBundleName;
  self->_movieBundleName = v4;

  MEMORY[0x1EEE66BB8](v4, movieBundleName);
}

- (void)setMovieBundleGenre:(id)a3
{
  v4 = [a3 copy];
  movieBundleGenre = self->_movieBundleGenre;
  self->_movieBundleGenre = v4;

  MEMORY[0x1EEE66BB8](v4, movieBundleGenre);
}

- (int)StringAsLinkMediaType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_LINK_TYPE"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SONG"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"ALBUM"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"MUSIC_VIDEO"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"ARTIST"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"PLAYLIST"])
  {
    v4 = 60;
  }

  else if ([v3 isEqualToString:@"RADIO"])
  {
    v4 = 70;
  }

  else if ([v3 isEqualToString:@"SOFTWARE"])
  {
    v4 = 80;
  }

  else if ([v3 isEqualToString:@"BOOK"])
  {
    v4 = 90;
  }

  else if ([v3 isEqualToString:@"AUDIO_BOOK"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"PODCAST"])
  {
    v4 = 110;
  }

  else if ([v3 isEqualToString:@"PODCAST_EPISODE"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"TV_EPISODE"])
  {
    v4 = 130;
  }

  else if ([v3 isEqualToString:@"TV_SEASON"])
  {
    v4 = 140;
  }

  else if ([v3 isEqualToString:@"MOVIE"])
  {
    v4 = 150;
  }

  else if ([v3 isEqualToString:@"TV_SHOW"])
  {
    v4 = 160;
  }

  else if ([v3 isEqualToString:@"MOVIE_BUNDLE"])
  {
    v4 = 170;
  }

  else if ([v3 isEqualToString:@"APPLE_TV"])
  {
    v4 = 180;
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (void)setLinkMediaType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_linkMediaType = a3;
  }
}

- (void)setItemType:(id)a3
{
  v4 = [a3 copy];
  itemType = self->_itemType;
  self->_itemType = v4;

  MEMORY[0x1EEE66BB8](v4, itemType);
}

- (void)addImageURL:(id)a3
{
  v4 = a3;
  imageURLs = self->_imageURLs;
  v8 = v4;
  if (!imageURLs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_imageURLs;
    self->_imageURLs = v6;

    v4 = v8;
    imageURLs = self->_imageURLs;
  }

  [(NSArray *)imageURLs addObject:v4];
}

- (void)setImageURLs:(id)a3
{
  v4 = [a3 mutableCopy];
  imageURLs = self->_imageURLs;
  self->_imageURLs = v4;

  MEMORY[0x1EEE66BB8](v4, imageURLs);
}

- (void)addIconURL:(id)a3
{
  v4 = a3;
  iconURLs = self->_iconURLs;
  v8 = v4;
  if (!iconURLs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_iconURLs;
    self->_iconURLs = v6;

    v4 = v8;
    iconURLs = self->_iconURLs;
  }

  [(NSArray *)iconURLs addObject:v4];
}

- (void)setIconURLs:(id)a3
{
  v4 = [a3 mutableCopy];
  iconURLs = self->_iconURLs;
  self->_iconURLs = v4;

  MEMORY[0x1EEE66BB8](v4, iconURLs);
}

- (void)setITunesStoreIdentifier:(id)a3
{
  v4 = [a3 copy];
  iTunesStoreIdentifier = self->_iTunesStoreIdentifier;
  self->_iTunesStoreIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, iTunesStoreIdentifier);
}

- (void)setITunesStoreFrontIdentifier:(id)a3
{
  v4 = [a3 copy];
  iTunesStoreFrontIdentifier = self->_iTunesStoreFrontIdentifier;
  self->_iTunesStoreFrontIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, iTunesStoreFrontIdentifier);
}

- (void)setCreator:(id)a3
{
  v4 = [a3 copy];
  creator = self->_creator;
  self->_creator = v4;

  MEMORY[0x1EEE66BB8](v4, creator);
}

- (void)setBookName:(id)a3
{
  v4 = [a3 copy];
  bookName = self->_bookName;
  self->_bookName = v4;

  MEMORY[0x1EEE66BB8](v4, bookName);
}

- (void)setBookAuthor:(id)a3
{
  v4 = [a3 copy];
  bookAuthor = self->_bookAuthor;
  self->_bookAuthor = v4;

  MEMORY[0x1EEE66BB8](v4, bookAuthor);
}

- (void)setAudioBookNarrator:(id)a3
{
  v4 = [a3 copy];
  audioBookNarrator = self->_audioBookNarrator;
  self->_audioBookNarrator = v4;

  MEMORY[0x1EEE66BB8](v4, audioBookNarrator);
}

- (void)setAudioBookName:(id)a3
{
  v4 = [a3 copy];
  audioBookName = self->_audioBookName;
  self->_audioBookName = v4;

  MEMORY[0x1EEE66BB8](v4, audioBookName);
}

- (void)setAudioBookAuthor:(id)a3
{
  v4 = [a3 copy];
  audioBookAuthor = self->_audioBookAuthor;
  self->_audioBookAuthor = v4;

  MEMORY[0x1EEE66BB8](v4, audioBookAuthor);
}

- (void)setArtistName:(id)a3
{
  v4 = [a3 copy];
  artistName = self->_artistName;
  self->_artistName = v4;

  MEMORY[0x1EEE66BB8](v4, artistName);
}

- (void)setArtistGenre:(id)a3
{
  v4 = [a3 copy];
  artistGenre = self->_artistGenre;
  self->_artistGenre = v4;

  MEMORY[0x1EEE66BB8](v4, artistGenre);
}

- (void)setAppleTvTitle:(id)a3
{
  v4 = [a3 copy];
  appleTvTitle = self->_appleTvTitle;
  self->_appleTvTitle = v4;

  MEMORY[0x1EEE66BB8](v4, appleTvTitle);
}

- (void)setAppleTvSubtitle:(id)a3
{
  v4 = [a3 copy];
  appleTvSubtitle = self->_appleTvSubtitle;
  self->_appleTvSubtitle = v4;

  MEMORY[0x1EEE66BB8](v4, appleTvSubtitle);
}

- (void)setAlbumName:(id)a3
{
  v4 = [a3 copy];
  albumName = self->_albumName;
  self->_albumName = v4;

  MEMORY[0x1EEE66BB8](v4, albumName);
}

- (void)setAlbumArtist:(id)a3
{
  v4 = [a3 copy];
  albumArtist = self->_albumArtist;
  self->_albumArtist = v4;

  MEMORY[0x1EEE66BB8](v4, albumArtist);
}

@end