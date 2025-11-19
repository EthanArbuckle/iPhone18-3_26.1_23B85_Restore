@interface MPModelStoreBrowseContentItemBuilder
+ (id)allSupportedProperties;
- (MPModelStoreBrowseContentItemBuilder)initWithRequestedPropertySet:(id)a3;
- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4 userIdentity:(id)a5;
- (int64_t)contentItemTypeForMusicAPIType:(id)a3;
- (int64_t)contentItemTypeForRawResponseKindIdentifierValue:(int64_t)a3;
- (int64_t)contentItemTypeForRawResponseKindIdentifiers:(id)a3;
- (int64_t)contentItemTypeForStoreItemMetadata:(id)a3;
- (void)setPreventStoreItemMetadataCaching:(BOOL)a3;
@end

@implementation MPModelStoreBrowseContentItemBuilder

- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4 userIdentity:(id)a5
{
  v159 = a3;
  v8 = a4;
  v158 = a5;
  v143 = v8;
  if ((*&self->_requestedBrowseContentItemProperties & 1) == 0)
  {
    v9 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    v10 = [v9 properties];
    if ([v10 containsObject:@"MPModelStoreBrowseContentItemPropertyItemType"])
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    self->_requestedBrowseContentItemProperties = (*&self->_requestedBrowseContentItemProperties & 0xFFFFFFFD | v11);
    if ([v10 containsObject:@"MPModelStoreBrowseContentItemPropertyDetailedItemType"])
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    self->_requestedBrowseContentItemProperties = (*&self->_requestedBrowseContentItemProperties & 0xFFFFFFFB | v12);
    v154 = v10;
    if ([v10 containsObject:@"MPModelStoreBrowseContentItemPropertyArtistUploadedContentType"])
    {
      v13 = 0x8000;
    }

    else
    {
      v13 = 0;
    }

    self->_requestedBrowseContentItemProperties = (*&self->_requestedBrowseContentItemProperties & 0xFFFF7FFF | v13);
    v156 = v9;
    v14 = [v9 relationships];
    v15 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipAlbum"];
    if (v15)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x10u;
    }

    v152 = v15;
    v16 = [(MPStoreModelObjectBuilder *)[MPStoreModelAlbumBuilder alloc] initWithRequestedPropertySet:v15];
    albumBuilder = self->_albumBuilder;
    self->_albumBuilder = v16;

    [(MPStoreModelObjectBuilder *)self->_albumBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v18 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipArtist"];
    if (v18)
    {
      *&self->_requestedBrowseContentItemProperties |= 8u;
    }

    v150 = v18;
    v19 = [(MPStoreModelObjectBuilder *)[MPStoreModelArtistBuilder alloc] initWithRequestedPropertySet:v18];
    artistBuilder = self->_artistBuilder;
    self->_artistBuilder = v19;

    [(MPStoreModelObjectBuilder *)self->_artistBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v21 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipCurator"];
    if (v21)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x20u;
    }

    v148 = v21;
    v22 = [(MPStoreModelObjectBuilder *)[MPStoreModelCuratorBuilder alloc] initWithRequestedPropertySet:v21];
    curatorBuilder = self->_curatorBuilder;
    self->_curatorBuilder = v22;

    [(MPStoreModelObjectBuilder *)self->_curatorBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v24 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipMovie"];
    if (v24)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x80u;
    }

    v146 = v24;
    v25 = [(MPStoreModelObjectBuilder *)[MPStoreModelMovieBuilder alloc] initWithRequestedPropertySet:v24];
    movieBuilder = self->_movieBuilder;
    self->_movieBuilder = v25;

    [(MPStoreModelObjectBuilder *)self->_movieBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v27 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipPlaylist"];
    if (v27)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x100u;
    }

    v144 = v27;
    v28 = [(MPStoreModelObjectBuilder *)[MPStoreModelPlaylistBuilder alloc] initWithRequestedPropertySet:v27];
    playlistBuilder = self->_playlistBuilder;
    self->_playlistBuilder = v28;

    [(MPStoreModelObjectBuilder *)self->_playlistBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v30 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipRadioStation"];
    if (v30)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x200u;
    }

    v141 = v30;
    v31 = [(MPStoreModelObjectBuilder *)[MPStoreModelRadioStationBuilder alloc] initWithRequestedPropertySet:v30];
    radioStationBuilder = self->_radioStationBuilder;
    self->_radioStationBuilder = v31;

    [(MPStoreModelObjectBuilder *)self->_radioStationBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v33 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipSong"];
    if (v33)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x800u;
    }

    v139 = v33;
    v34 = [(MPStoreModelObjectBuilder *)[MPStoreModelSongBuilder alloc] initWithRequestedPropertySet:v33];
    songBuilder = self->_songBuilder;
    self->_songBuilder = v34;

    [(MPStoreModelObjectBuilder *)self->_songBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v36 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipTVEpisode"];
    if (v36)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x40u;
    }

    v137 = v36;
    v37 = [(MPStoreModelObjectBuilder *)[MPStoreModelTVEpisodeBuilder alloc] initWithRequestedPropertySet:v36];
    episodeBuilder = self->_episodeBuilder;
    self->_episodeBuilder = v37;

    [(MPStoreModelObjectBuilder *)self->_episodeBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v39 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipTVSeason"];
    if (v39)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x1000u;
    }

    v40 = [(MPStoreModelObjectBuilder *)[MPStoreModelTVSeasonBuilder alloc] initWithRequestedPropertySet:v39];
    seasonBuilder = self->_seasonBuilder;
    self->_seasonBuilder = v40;

    [(MPStoreModelObjectBuilder *)self->_seasonBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v42 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipTVShow"];
    if (v42)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x2000u;
    }

    v43 = [(MPStoreModelObjectBuilder *)[MPStoreModelTVShowBuilder alloc] initWithRequestedPropertySet:v42];
    showBuilder = self->_showBuilder;
    self->_showBuilder = v43;

    [(MPStoreModelObjectBuilder *)self->_showBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v45 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipTVShowCreator"];
    if (v45)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x4000u;
    }

    v46 = [(MPStoreModelObjectBuilder *)[MPStoreModelTVShowCreatorBuilder alloc] initWithRequestedPropertySet:v45];
    showCreatorBuilder = self->_showCreatorBuilder;
    self->_showCreatorBuilder = v46;

    [(MPStoreModelObjectBuilder *)self->_showCreatorBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v48 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipSocialPerson"];
    if (v48)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x400u;
    }

    v49 = [(MPStoreModelObjectBuilder *)[MPStoreModelSocialPersonBuilder alloc] initWithRequestedPropertySet:v48];
    socialPersonBuilder = self->_socialPersonBuilder;
    self->_socialPersonBuilder = v49;

    [(MPStoreModelObjectBuilder *)self->_socialPersonBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v51 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipRecordLabel"];
    if (v51)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x10000u;
    }

    v52 = [(MPStoreModelObjectBuilder *)[MPStoreModelRecordLabelBuilder alloc] initWithRequestedPropertySet:v51];
    recordLabelBuilder = self->_recordLabelBuilder;
    self->_recordLabelBuilder = v52;

    [(MPStoreModelObjectBuilder *)self->_recordLabelBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    *&self->_requestedBrowseContentItemProperties |= 1u;
    v54 = [v14 objectForKey:@"MPModelStoreBrowseContentItemRelationshipCreditsArtist"];
    if (v54)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x20000u;
    }

    v55 = [(MPStoreModelObjectBuilder *)[MPStoreModelCreditsArtistBuilder alloc] initWithRequestedPropertySet:v54];
    creditsArtistBuilder = self->_creditsArtistBuilder;
    self->_creditsArtistBuilder = v55;

    [(MPStoreModelObjectBuilder *)self->_creditsArtistBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    *&self->_requestedBrowseContentItemProperties |= 1u;

    v8 = v143;
  }

  v57 = [(MPModelStoreBrowseContentItemBuilder *)self contentItemTypeForStoreItemMetadata:v159];
  v58 = 0;
  switch(v57)
  {
    case 0:
      goto LABEL_108;
    case 1:
      v147 = [v159 artistUploadedContentType];
      v75 = self->_albumBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipAlbum"])
      {
        v76 = [v8 album];
        v155 = [(MPStoreModelAlbumBuilder *)v75 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v76 userIdentity:v158];
      }

      else
      {
        v155 = [(MPStoreModelAlbumBuilder *)v75 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v64 = [v155 identifiers];
      v151 = 0;
      v153 = 0;
      v157 = 0;
      v149 = 0;
      v145 = 0;
      v136 = 0;
      v138 = 0;
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v65 = 1;
      goto LABEL_98;
    case 2:
      v147 = [v159 artistUploadedContentType];
      v77 = self->_artistBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipArtist"])
      {
        v78 = [v8 artist];
        v153 = [(MPStoreModelArtistBuilder *)v77 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v78 userIdentity:v158];
      }

      else
      {
        v153 = [(MPStoreModelArtistBuilder *)v77 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v64 = [v153 identifiers];
      v155 = 0;
      v157 = 0;
      v149 = 0;
      v151 = 0;
      v145 = 0;
      v136 = 0;
      v138 = 0;
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v65 = 2;
      goto LABEL_98;
    case 3:
    case 4:
    case 5:
      v147 = [v159 artistUploadedContentType];
      v59 = self->_curatorBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipCurator"])
      {
        v60 = [v8 curator];
        v157 = [(MPStoreModelCuratorBuilder *)v59 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v60 userIdentity:v158];
      }

      else
      {
        v157 = [(MPStoreModelCuratorBuilder *)v59 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v64 = [v157 identifiers];
      v153 = 0;
      v155 = 0;
      v149 = 0;
      v151 = 0;
      v145 = 0;
      v136 = 0;
      v138 = 0;
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v65 = 3;
      goto LABEL_98;
    case 6:
    case 10:
      v147 = [v159 artistUploadedContentType];
      v61 = self->_songBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipSong"])
      {
        v62 = [v8 song];
        v63 = [(MPStoreModelSongBuilder *)v61 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v62 userIdentity:v158];
      }

      else
      {
        v63 = [(MPStoreModelSongBuilder *)v61 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v136 = v63;
      v64 = [v63 identifiers];
      v153 = 0;
      v155 = 0;
      v157 = 0;
      v149 = 0;
      v151 = 0;
      v145 = 0;
      v138 = 0;
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v65 = 7;
      goto LABEL_98;
    case 7:
      v147 = [v159 artistUploadedContentType];
      v88 = self->_playlistBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipPlaylist"])
      {
        v89 = [v8 playlist];
        v90 = [(MPStoreModelPlaylistBuilder *)v88 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v89 userIdentity:v158];
      }

      else
      {
        v90 = [(MPStoreModelPlaylistBuilder *)v88 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v145 = v90;
      v64 = [v90 identifiers];
      v153 = 0;
      v155 = 0;
      v157 = 0;
      v149 = 0;
      v151 = 0;
      v136 = 0;
      v138 = 0;
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v65 = 4;
      goto LABEL_98;
    case 8:
      v147 = [v159 artistUploadedContentType];
      v85 = self->_radioStationBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipRadioStation"])
      {
        v86 = [v8 radioStation];
        v87 = [(MPStoreModelRadioStationBuilder *)v85 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v86 userIdentity:v158];
      }

      else
      {
        v87 = [(MPStoreModelRadioStationBuilder *)v85 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v138 = v87;
      v64 = [v87 identifiers];
      v153 = 0;
      v155 = 0;
      v157 = 0;
      v149 = 0;
      v151 = 0;
      v145 = 0;
      v135 = 0;
      v136 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      v65 = 5;
      goto LABEL_98;
    case 9:
      v147 = [v159 artistUploadedContentType];
      v97 = self->_socialPersonBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipSocialPerson"])
      {
        v98 = [v8 socialPerson];
        v99 = [(MPStoreModelSocialPersonBuilder *)v97 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v98 userIdentity:v158];
      }

      else
      {
        v99 = [(MPStoreModelSocialPersonBuilder *)v97 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v132 = v99;
      v64 = [v99 identifiers];
      v153 = 0;
      v155 = 0;
      v157 = 0;
      v149 = 0;
      v151 = 0;
      v145 = 0;
      v136 = 0;
      v138 = 0;
      v134 = 0;
      v135 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v65 = 6;
      goto LABEL_98;
    case 11:
      v147 = [v159 artistUploadedContentType];
      v72 = self->_episodeBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipTVEpisode"])
      {
        v73 = [v8 episode];
        v74 = [(MPStoreModelTVEpisodeBuilder *)v72 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v73 userIdentity:v158];
      }

      else
      {
        v74 = [(MPStoreModelTVEpisodeBuilder *)v72 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v149 = v74;
      v64 = [v74 identifiers];
      v153 = 0;
      v155 = 0;
      v157 = 0;
      v151 = 0;
      v145 = 0;
      v136 = 0;
      v138 = 0;
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v65 = 8;
      goto LABEL_98;
    case 12:
      v147 = [v159 artistUploadedContentType];
      v69 = self->_seasonBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipTVSeason"])
      {
        v70 = [v8 season];
        v71 = [(MPStoreModelObjectBuilder *)v69 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v70 userIdentity:v158];
      }

      else
      {
        v71 = [(MPStoreModelObjectBuilder *)v69 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v135 = v71;
      v64 = [v71 identifiers];
      v153 = 0;
      v155 = 0;
      v157 = 0;
      v149 = 0;
      v151 = 0;
      v145 = 0;
      v136 = 0;
      v138 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      v65 = 10;
      goto LABEL_98;
    case 13:
      v147 = [v159 artistUploadedContentType];
      v66 = self->_showBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipTVShow"])
      {
        v67 = [v8 show];
        v68 = [(MPStoreModelTVShowBuilder *)v66 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v67 userIdentity:v158];
      }

      else
      {
        v68 = [(MPStoreModelTVShowBuilder *)v66 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v134 = v68;
      v64 = [v68 identifiers];
      v153 = 0;
      v155 = 0;
      v157 = 0;
      v149 = 0;
      v151 = 0;
      v145 = 0;
      v136 = 0;
      v138 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v65 = 9;
      goto LABEL_98;
    case 14:
      v147 = [v159 artistUploadedContentType];
      v79 = self->_showCreatorBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipTVShowCreator"])
      {
        v80 = [v8 showCreator];
        v81 = [(MPStoreModelObjectBuilder *)v79 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v80 userIdentity:v158];
      }

      else
      {
        v81 = [(MPStoreModelObjectBuilder *)v79 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v133 = v81;
      v64 = [v81 identifiers];
      v153 = 0;
      v155 = 0;
      v157 = 0;
      v149 = 0;
      v151 = 0;
      v145 = 0;
      v136 = 0;
      v138 = 0;
      v134 = 0;
      v135 = 0;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      v65 = 11;
      goto LABEL_98;
    case 15:
      v147 = [v159 artistUploadedContentType];
      v82 = self->_movieBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipMovie"])
      {
        v83 = [v8 movie];
        v84 = [(MPStoreModelMovieBuilder *)v82 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v83 userIdentity:v158];
      }

      else
      {
        v84 = [(MPStoreModelMovieBuilder *)v82 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v151 = v84;
      v64 = [v84 identifiers];
      v153 = 0;
      v155 = 0;
      v157 = 0;
      v149 = 0;
      v145 = 0;
      v136 = 0;
      v138 = 0;
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v65 = 12;
      goto LABEL_98;
    case 17:
      v147 = [v159 artistUploadedContentType];
      v94 = self->_recordLabelBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipRecordLabel"])
      {
        v95 = [v8 recordLabel];
        v96 = [(MPStoreModelRecordLabelBuilder *)v94 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v95 userIdentity:v158];
      }

      else
      {
        v96 = [(MPStoreModelRecordLabelBuilder *)v94 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v131 = v96;
      v64 = [v96 identifiers];
      v153 = 0;
      v155 = 0;
      v157 = 0;
      v149 = 0;
      v151 = 0;
      v145 = 0;
      v136 = 0;
      v138 = 0;
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v65 = 14;
      goto LABEL_98;
    case 18:
      v147 = [v159 artistUploadedContentType];
      v91 = self->_creditsArtistBuilder;
      if ([v8 hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipCreditsArtist"])
      {
        v92 = [v8 creditsArtist];
        v93 = [(MPStoreModelCreditsArtistBuilder *)v91 modelObjectWithStoreItemMetadata:v159 sourceModelObject:v92 userIdentity:v158];
      }

      else
      {
        v93 = [(MPStoreModelCreditsArtistBuilder *)v91 modelObjectWithStoreItemMetadata:v159 sourceModelObject:0 userIdentity:v158];
      }

      v130 = v93;
      v64 = [v93 identifiers];
      v153 = 0;
      v155 = 0;
      v157 = 0;
      v149 = 0;
      v151 = 0;
      v145 = 0;
      v136 = 0;
      v138 = 0;
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v131 = 0;
      v65 = 15;
      goto LABEL_98;
    default:
      v147 = [v159 artistUploadedContentType];
      v149 = 0;
      v65 = 0;
      v153 = 0;
      v155 = 0;
      v157 = 0;
      v151 = 0;
      v145 = 0;
      v136 = 0;
      v138 = 0;
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v64 = 0;
LABEL_98:
      v100 = [v159 recommendationID];
      v140 = v100;
      v142 = v64;
      if (v64)
      {
        v101 = v100;
        v129 = v57;
        v102 = [v64 personalizedStore];
        v103 = [v102 personID];
        v104 = v103;
        if (v103)
        {
          v105 = v103;
        }

        else
        {
          [MEMORY[0x1E69E4688] defaultIdentityStore];
          v116 = v115 = v64;
          v117 = [v116 DSIDForUserIdentity:v158 outError:0];
          v118 = [v117 stringValue];

          v64 = v115;
          v105 = v118;
        }

        v127 = v105;
        if ([v105 length])
        {
          v119 = [MPIdentifierSet alloc];
          v120 = [v64 sources];
          v121 = [v120 firstObject];
          v122 = v64;
          v123 = v121;
          v124 = [v122 modelKind];
          v178[0] = MEMORY[0x1E69E9820];
          v178[1] = 3221225472;
          v178[2] = __104__MPModelStoreBrowseContentItemBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
          v178[3] = &unk_1E767EE00;
          v179 = v105;
          v180 = v101;
          v128 = [(MPIdentifierSet *)v119 initWithSource:v123 modelKind:v124 block:v178];
        }

        else
        {
          v128 = v64;
        }

        v125 = [MPModelStoreBrowseContentItem alloc];
        v160[0] = MEMORY[0x1E69E9820];
        v160[1] = 3221225472;
        v160[2] = __104__MPModelStoreBrowseContentItemBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
        v160[3] = &unk_1E767C990;
        v160[4] = self;
        v176 = v65;
        v177 = v129;
        v161 = v155;
        v162 = v153;
        v163 = v157;
        v164 = v151;
        v165 = v145;
        v108 = v138;
        v166 = v138;
        v107 = v136;
        v167 = v136;
        v168 = v149;
        v109 = v135;
        v169 = v135;
        v110 = v134;
        v170 = v134;
        v111 = v133;
        v171 = v133;
        v112 = v132;
        v172 = v132;
        v173 = v147;
        v114 = v131;
        v174 = v131;
        v113 = v130;
        v175 = v130;
        v58 = [(MPModelObject *)v125 initWithIdentifiers:v128 block:v160];

        v106 = v151;
      }

      else
      {
        v58 = 0;
        v106 = v151;
        v107 = v136;
        v108 = v138;
        v110 = v134;
        v109 = v135;
        v112 = v132;
        v111 = v133;
        v113 = v130;
        v114 = v131;
      }

      v8 = v143;
LABEL_108:

      return v58;
  }
}

void __104__MPModelStoreBrowseContentItemBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __104__MPModelStoreBrowseContentItemBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_2;
  v4[3] = &unk_1E767FA78;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 setPersonalStoreIdentifiersWithPersonID:v3 block:v4];
}

void __104__MPModelStoreBrowseContentItemBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(void *a1, void *a2)
{
  v4 = a2;
  v3 = *(a1[4] + 24);
  if ((v3 & 2) != 0)
  {
    [v4 setItemType:a1[20]];
    v3 = *(a1[4] + 24);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v4 setDetailedItemType:a1[21]];
  v3 = *(a1[4] + 24);
  if ((v3 & 0x10) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v4 setAlbum:a1[5]];
  v3 = *(a1[4] + 24);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v4 setArtist:a1[6]];
  v3 = *(a1[4] + 24);
  if ((v3 & 0x20) == 0)
  {
LABEL_6:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v4 setCurator:a1[7]];
  v3 = *(a1[4] + 24);
  if ((v3 & 0x80) == 0)
  {
LABEL_7:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v4 setMovie:a1[8]];
  v3 = *(a1[4] + 24);
  if ((v3 & 0x100) == 0)
  {
LABEL_8:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v4 setPlaylist:a1[9]];
  v3 = *(a1[4] + 24);
  if ((v3 & 0x200) == 0)
  {
LABEL_9:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v4 setRadioStation:a1[10]];
  v3 = *(a1[4] + 24);
  if ((v3 & 0x800) == 0)
  {
LABEL_10:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v4 setSong:a1[11]];
  v3 = *(a1[4] + 24);
  if ((v3 & 0x40) == 0)
  {
LABEL_11:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v4 setEpisode:a1[12]];
  v3 = *(a1[4] + 24);
  if ((v3 & 0x1000) == 0)
  {
LABEL_12:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v4 setSeason:a1[13]];
  v3 = *(a1[4] + 24);
  if ((v3 & 0x2000) == 0)
  {
LABEL_13:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v4 setShow:a1[14]];
  v3 = *(a1[4] + 24);
  if ((v3 & 0x4000) == 0)
  {
LABEL_14:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v4 setShowCreator:a1[15]];
  v3 = *(a1[4] + 24);
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v4 setSocialPerson:a1[16]];
  v3 = *(a1[4] + 24);
  if ((v3 & 0x8000) == 0)
  {
LABEL_16:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v4 setArtistUploadedContentType:a1[17]];
  v3 = *(a1[4] + 24);
  if ((v3 & 0x10000) == 0)
  {
LABEL_17:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  [v4 setRecordLabel:a1[18]];
  if ((*(a1[4] + 24) & 0x20000) != 0)
  {
LABEL_18:
    [v4 setCreditsArtist:a1[19]];
  }

LABEL_19:
}

- (int64_t)contentItemTypeForMusicAPIType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"albums"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"artists"])
  {
    v5 = 20;
  }

  else if ([v4 isEqualToString:@"playlists"])
  {
    v5 = 46;
  }

  else if ([v4 isEqualToString:@"music-videos"])
  {
    v5 = 5;
  }

  else if ([v4 isEqualToString:@"songs"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"stations"])
  {
    v5 = 40;
  }

  else if ([v4 isEqualToString:@"shows"])
  {
    v5 = 8;
  }

  else if ([v4 isEqualToString:@"tv-episodes"])
  {
    v5 = 6;
  }

  else if ([v4 isEqualToString:@"tv-seasons"])
  {
    v5 = 7;
  }

  else if ([v4 isEqualToString:@"record-labels"])
  {
    v5 = 52;
  }

  else if ([v4 isEqualToString:@"credits-artist"])
  {
    v5 = 53;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MPModelStoreBrowseContentItemBuilder *)self contentItemTypeForRawResponseKindIdentifierValue:v5];

  return v6;
}

- (int64_t)contentItemTypeForStoreItemMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 itemKind];
  if ([v5 isEqualToString:@"album"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"artist"])
  {
    v6 = 20;
  }

  else if ([v5 isEqualToString:@"creditsArtist"])
  {
    v6 = 53;
  }

  else if ([v5 isEqualToString:@"playlist"])
  {
    v6 = 46;
  }

  else if ([v5 isEqualToString:@"movie"])
  {
    v6 = 10;
  }

  else if ([v5 isEqualToString:@"song"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"tvEpisode"])
  {
    v6 = 6;
  }

  else if ([v5 isEqualToString:@"tvSeason"])
  {
    v6 = 7;
  }

  else if ([v5 isEqualToString:@"uploadedAudio"])
  {
    v6 = 50;
  }

  else if ([v5 isEqualToString:@"musicVideo"])
  {
    v6 = 5;
  }

  else if ([v5 isEqualToString:@"uploadedVideo"])
  {
    v6 = 51;
  }

  else if ([v5 isEqualToString:@"radioStation"])
  {
    v6 = 40;
  }

  else if ([v5 isEqualToString:@"socialProfile"])
  {
    v6 = 27;
  }

  else if ([v5 isEqualToString:@"activity"])
  {
    v6 = 47;
  }

  else if ([v5 isEqualToString:@"brand"])
  {
    v6 = 48;
  }

  else if (([v5 isEqualToString:@"iTunesBrand"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"showBrand"))
  {
    v7 = [v4 iTunesBrandType];
    v8 = v7;
    if (v7 && (([v7 isEqualToString:@"Linear"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Non-Linear") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Standalone") & 1) != 0))
    {
      v9 = 8;
    }

    else
    {
      v9 = 49;
    }

    v12 = v9;

    v6 = v12;
  }

  else if (([v5 isEqualToString:@"recordLabel"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"record-labels"))
  {
    v6 = 52;
  }

  else
  {
    v6 = 0;
  }

  v10 = [(MPModelStoreBrowseContentItemBuilder *)self contentItemTypeForRawResponseKindIdentifierValue:v6];

  return v10;
}

- (int64_t)contentItemTypeForRawResponseKindIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F1550CB8])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            v11 = -[MPModelStoreBrowseContentItemBuilder contentItemTypeForRawResponseKindIdentifierValue:](self, "contentItemTypeForRawResponseKindIdentifierValue:", [v10 integerValue]);
            if (v11)
            {
              v12 = v11;
              goto LABEL_14;
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_14:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)contentItemTypeForRawResponseKindIdentifierValue:(int64_t)a3
{
  result = 0;
  if (a3 <= 39)
  {
    if (a3 > 6)
    {
      if (a3 <= 9)
      {
        if (a3 == 7)
        {
          v10 = !self->_allowsVideoContent;
          v11 = 12;
        }

        else
        {
          if (a3 != 8)
          {
            return result;
          }

          v10 = !self->_allowsVideoContent;
          v11 = 13;
        }
      }

      else
      {
        if (a3 != 10)
        {
          v5 = 2;
          v6 = 9;
          if (a3 != 27)
          {
            v6 = 0;
          }

          v7 = a3 == 20;
LABEL_28:
          if (v7)
          {
            return v5;
          }

          else
          {
            return v6;
          }
        }

        v10 = !self->_allowsVideoContent;
        v11 = 15;
      }

      goto LABEL_46;
    }

    if (a3 <= 4)
    {
      if (a3 != 1)
      {
        v8 = a3 == 2;
        v9 = 1;
        goto LABEL_20;
      }

      return 10;
    }

    if (a3 != 5)
    {
      v10 = !self->_allowsVideoContent;
      v11 = 11;
      goto LABEL_46;
    }

    if (self->_shouldFakeEpisodes && self->_allowsVideoContent)
    {
      return 11;
    }

    goto LABEL_40;
  }

  if (a3 <= 48)
  {
    if (a3 > 46)
    {
      v5 = 5;
      v6 = 4;
      if (a3 != 48)
      {
        v6 = 0;
      }

      v7 = a3 == 47;
      goto LABEL_28;
    }

    if (a3 != 40)
    {
      v8 = a3 == 46;
      v9 = 7;
LABEL_20:
      if (v8)
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    v10 = !self->_allowsRadioStations;
    v11 = 8;
LABEL_46:
    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  if (a3 <= 50)
  {
    if (a3 == 49)
    {
      return 3;
    }

    return 10;
  }

  switch(a3)
  {
    case '5':
      return 18;
    case '4':
      return 17;
    case '3':
LABEL_40:
      v10 = !self->_allowsVideoContent;
      v11 = 10;
      goto LABEL_46;
  }

  return result;
}

- (void)setPreventStoreItemMetadataCaching:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MPModelStoreBrowseContentItemBuilder;
  [(MPStoreModelObjectBuilder *)&v5 setPreventStoreItemMetadataCaching:?];
  [(MPStoreModelObjectBuilder *)self->_albumBuilder setPreventStoreItemMetadataCaching:v3];
  [(MPStoreModelObjectBuilder *)self->_artistBuilder setPreventStoreItemMetadataCaching:v3];
  [(MPStoreModelObjectBuilder *)self->_curatorBuilder setPreventStoreItemMetadataCaching:v3];
  [(MPStoreModelObjectBuilder *)self->_episodeBuilder setPreventStoreItemMetadataCaching:v3];
  [(MPStoreModelObjectBuilder *)self->_movieBuilder setPreventStoreItemMetadataCaching:v3];
  [(MPStoreModelObjectBuilder *)self->_radioStationBuilder setPreventStoreItemMetadataCaching:v3];
  [(MPStoreModelObjectBuilder *)self->_socialPersonBuilder setPreventStoreItemMetadataCaching:v3];
  [(MPStoreModelObjectBuilder *)self->_playlistBuilder setPreventStoreItemMetadataCaching:v3];
  [(MPStoreModelObjectBuilder *)self->_seasonBuilder setPreventStoreItemMetadataCaching:v3];
  [(MPStoreModelObjectBuilder *)self->_songBuilder setPreventStoreItemMetadataCaching:v3];
  [(MPStoreModelObjectBuilder *)self->_showBuilder setPreventStoreItemMetadataCaching:v3];
  [(MPStoreModelObjectBuilder *)self->_showCreatorBuilder setPreventStoreItemMetadataCaching:v3];
  [(MPStoreModelObjectBuilder *)self->_recordLabelBuilder setPreventStoreItemMetadataCaching:v3];
  [(MPStoreModelObjectBuilder *)self->_creditsArtistBuilder setPreventStoreItemMetadataCaching:v3];
}

- (MPModelStoreBrowseContentItemBuilder)initWithRequestedPropertySet:(id)a3
{
  v7.receiver = self;
  v7.super_class = MPModelStoreBrowseContentItemBuilder;
  v3 = [(MPStoreModelObjectBuilder *)&v7 initWithRequestedPropertySet:a3];
  v4 = v3;
  if (v3)
  {
    v3->_allowsRadioStations = 1;
    v3->_allowsVideoContent = 1;
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4->_shouldFakeEpisodes = [v5 BOOLForKey:@"MusicShouldFakeTVEpisodes"];
  }

  return v4;
}

+ (id)allSupportedProperties
{
  v23[2] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v23[0] = @"MPModelStoreBrowseContentItemPropertyItemType";
  v23[1] = @"MPModelStoreBrowseContentItemPropertyDetailedItemType";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v21[0] = @"MPModelStoreBrowseContentItemRelationshipAlbum";
  v20 = +[MPStoreModelAlbumBuilder allSupportedProperties];
  v22[0] = v20;
  v21[1] = @"MPModelStoreBrowseContentItemRelationshipArtist";
  v19 = +[MPStoreModelArtistBuilder allSupportedProperties];
  v22[1] = v19;
  v21[2] = @"MPModelStoreBrowseContentItemRelationshipCreditsArtist";
  v18 = +[MPStoreModelCreditsArtistBuilder allSupportedProperties];
  v22[2] = v18;
  v21[3] = @"MPModelStoreBrowseContentItemRelationshipCurator";
  v17 = +[MPStoreModelCuratorBuilder allSupportedProperties];
  v22[3] = v17;
  v21[4] = @"MPModelStoreBrowseContentItemRelationshipMovie";
  v16 = +[MPStoreModelMovieBuilder allSupportedProperties];
  v22[4] = v16;
  v21[5] = @"MPModelStoreBrowseContentItemRelationshipPlaylist";
  v15 = +[MPStoreModelPlaylistBuilder allSupportedProperties];
  v22[5] = v15;
  v21[6] = @"MPModelStoreBrowseContentItemRelationshipRadioStation";
  v14 = +[MPStoreModelRadioStationBuilder allSupportedProperties];
  v22[6] = v14;
  v21[7] = @"MPModelStoreBrowseContentItemRelationshipSong";
  v4 = +[MPStoreModelSongBuilder allSupportedProperties];
  v22[7] = v4;
  v21[8] = @"MPModelStoreBrowseContentItemRelationshipTVEpisode";
  v5 = +[MPStoreModelTVEpisodeBuilder allSupportedProperties];
  v22[8] = v5;
  v21[9] = @"MPModelStoreBrowseContentItemRelationshipTVSeason";
  v6 = +[(MPStoreModelObjectBuilder *)MPStoreModelTVSeasonBuilder];
  v22[9] = v6;
  v21[10] = @"MPModelStoreBrowseContentItemRelationshipTVShow";
  v7 = +[MPStoreModelTVShowBuilder allSupportedProperties];
  v22[10] = v7;
  v21[11] = @"MPModelStoreBrowseContentItemRelationshipTVShowCreator";
  v8 = +[(MPStoreModelObjectBuilder *)MPStoreModelTVShowCreatorBuilder];
  v22[11] = v8;
  v21[12] = @"MPModelStoreBrowseContentItemRelationshipSocialPerson";
  v9 = +[MPStoreModelSocialPersonBuilder allSupportedProperties];
  v22[12] = v9;
  v21[13] = @"MPModelStoreBrowseContentItemRelationshipRecordLabel";
  v10 = +[MPStoreModelRecordLabelBuilder allSupportedProperties];
  v22[13] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:14];
  v12 = [(MPPropertySet *)v2 initWithProperties:v3 relationships:v11];

  return v12;
}

@end