@interface MPModelStoreBrowseContentItemBuilder
+ (id)allSupportedProperties;
- (MPModelStoreBrowseContentItemBuilder)initWithRequestedPropertySet:(id)set;
- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity;
- (int64_t)contentItemTypeForMusicAPIType:(id)type;
- (int64_t)contentItemTypeForRawResponseKindIdentifierValue:(int64_t)value;
- (int64_t)contentItemTypeForRawResponseKindIdentifiers:(id)identifiers;
- (int64_t)contentItemTypeForStoreItemMetadata:(id)metadata;
- (void)setPreventStoreItemMetadataCaching:(BOOL)caching;
@end

@implementation MPModelStoreBrowseContentItemBuilder

- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity
{
  metadataCopy = metadata;
  objectCopy = object;
  identityCopy = identity;
  v143 = objectCopy;
  if ((*&self->_requestedBrowseContentItemProperties & 1) == 0)
  {
    requestedPropertySet = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    properties = [requestedPropertySet properties];
    if ([properties containsObject:@"MPModelStoreBrowseContentItemPropertyItemType"])
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    self->_requestedBrowseContentItemProperties = (*&self->_requestedBrowseContentItemProperties & 0xFFFFFFFD | v11);
    if ([properties containsObject:@"MPModelStoreBrowseContentItemPropertyDetailedItemType"])
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    self->_requestedBrowseContentItemProperties = (*&self->_requestedBrowseContentItemProperties & 0xFFFFFFFB | v12);
    v154 = properties;
    if ([properties containsObject:@"MPModelStoreBrowseContentItemPropertyArtistUploadedContentType"])
    {
      v13 = 0x8000;
    }

    else
    {
      v13 = 0;
    }

    self->_requestedBrowseContentItemProperties = (*&self->_requestedBrowseContentItemProperties & 0xFFFF7FFF | v13);
    v156 = requestedPropertySet;
    relationships = [requestedPropertySet relationships];
    v15 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipAlbum"];
    if (v15)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x10u;
    }

    v152 = v15;
    v16 = [(MPStoreModelObjectBuilder *)[MPStoreModelAlbumBuilder alloc] initWithRequestedPropertySet:v15];
    albumBuilder = self->_albumBuilder;
    self->_albumBuilder = v16;

    [(MPStoreModelObjectBuilder *)self->_albumBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v18 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipArtist"];
    if (v18)
    {
      *&self->_requestedBrowseContentItemProperties |= 8u;
    }

    v150 = v18;
    v19 = [(MPStoreModelObjectBuilder *)[MPStoreModelArtistBuilder alloc] initWithRequestedPropertySet:v18];
    artistBuilder = self->_artistBuilder;
    self->_artistBuilder = v19;

    [(MPStoreModelObjectBuilder *)self->_artistBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v21 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipCurator"];
    if (v21)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x20u;
    }

    v148 = v21;
    v22 = [(MPStoreModelObjectBuilder *)[MPStoreModelCuratorBuilder alloc] initWithRequestedPropertySet:v21];
    curatorBuilder = self->_curatorBuilder;
    self->_curatorBuilder = v22;

    [(MPStoreModelObjectBuilder *)self->_curatorBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v24 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipMovie"];
    if (v24)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x80u;
    }

    v146 = v24;
    v25 = [(MPStoreModelObjectBuilder *)[MPStoreModelMovieBuilder alloc] initWithRequestedPropertySet:v24];
    movieBuilder = self->_movieBuilder;
    self->_movieBuilder = v25;

    [(MPStoreModelObjectBuilder *)self->_movieBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v27 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipPlaylist"];
    if (v27)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x100u;
    }

    v144 = v27;
    v28 = [(MPStoreModelObjectBuilder *)[MPStoreModelPlaylistBuilder alloc] initWithRequestedPropertySet:v27];
    playlistBuilder = self->_playlistBuilder;
    self->_playlistBuilder = v28;

    [(MPStoreModelObjectBuilder *)self->_playlistBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v30 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipRadioStation"];
    if (v30)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x200u;
    }

    v141 = v30;
    v31 = [(MPStoreModelObjectBuilder *)[MPStoreModelRadioStationBuilder alloc] initWithRequestedPropertySet:v30];
    radioStationBuilder = self->_radioStationBuilder;
    self->_radioStationBuilder = v31;

    [(MPStoreModelObjectBuilder *)self->_radioStationBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v33 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipSong"];
    if (v33)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x800u;
    }

    v139 = v33;
    v34 = [(MPStoreModelObjectBuilder *)[MPStoreModelSongBuilder alloc] initWithRequestedPropertySet:v33];
    songBuilder = self->_songBuilder;
    self->_songBuilder = v34;

    [(MPStoreModelObjectBuilder *)self->_songBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v36 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipTVEpisode"];
    if (v36)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x40u;
    }

    v137 = v36;
    v37 = [(MPStoreModelObjectBuilder *)[MPStoreModelTVEpisodeBuilder alloc] initWithRequestedPropertySet:v36];
    episodeBuilder = self->_episodeBuilder;
    self->_episodeBuilder = v37;

    [(MPStoreModelObjectBuilder *)self->_episodeBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v39 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipTVSeason"];
    if (v39)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x1000u;
    }

    v40 = [(MPStoreModelObjectBuilder *)[MPStoreModelTVSeasonBuilder alloc] initWithRequestedPropertySet:v39];
    seasonBuilder = self->_seasonBuilder;
    self->_seasonBuilder = v40;

    [(MPStoreModelObjectBuilder *)self->_seasonBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v42 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipTVShow"];
    if (v42)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x2000u;
    }

    v43 = [(MPStoreModelObjectBuilder *)[MPStoreModelTVShowBuilder alloc] initWithRequestedPropertySet:v42];
    showBuilder = self->_showBuilder;
    self->_showBuilder = v43;

    [(MPStoreModelObjectBuilder *)self->_showBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v45 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipTVShowCreator"];
    if (v45)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x4000u;
    }

    v46 = [(MPStoreModelObjectBuilder *)[MPStoreModelTVShowCreatorBuilder alloc] initWithRequestedPropertySet:v45];
    showCreatorBuilder = self->_showCreatorBuilder;
    self->_showCreatorBuilder = v46;

    [(MPStoreModelObjectBuilder *)self->_showCreatorBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v48 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipSocialPerson"];
    if (v48)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x400u;
    }

    v49 = [(MPStoreModelObjectBuilder *)[MPStoreModelSocialPersonBuilder alloc] initWithRequestedPropertySet:v48];
    socialPersonBuilder = self->_socialPersonBuilder;
    self->_socialPersonBuilder = v49;

    [(MPStoreModelObjectBuilder *)self->_socialPersonBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    v51 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipRecordLabel"];
    if (v51)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x10000u;
    }

    v52 = [(MPStoreModelObjectBuilder *)[MPStoreModelRecordLabelBuilder alloc] initWithRequestedPropertySet:v51];
    recordLabelBuilder = self->_recordLabelBuilder;
    self->_recordLabelBuilder = v52;

    [(MPStoreModelObjectBuilder *)self->_recordLabelBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    *&self->_requestedBrowseContentItemProperties |= 1u;
    v54 = [relationships objectForKey:@"MPModelStoreBrowseContentItemRelationshipCreditsArtist"];
    if (v54)
    {
      *&self->_requestedBrowseContentItemProperties |= 0x20000u;
    }

    v55 = [(MPStoreModelObjectBuilder *)[MPStoreModelCreditsArtistBuilder alloc] initWithRequestedPropertySet:v54];
    creditsArtistBuilder = self->_creditsArtistBuilder;
    self->_creditsArtistBuilder = v55;

    [(MPStoreModelObjectBuilder *)self->_creditsArtistBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    *&self->_requestedBrowseContentItemProperties |= 1u;

    objectCopy = v143;
  }

  v57 = [(MPModelStoreBrowseContentItemBuilder *)self contentItemTypeForStoreItemMetadata:metadataCopy];
  v58 = 0;
  switch(v57)
  {
    case 0:
      goto LABEL_108;
    case 1:
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v75 = self->_albumBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipAlbum"])
      {
        album = [objectCopy album];
        v155 = [(MPStoreModelAlbumBuilder *)v75 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:album userIdentity:identityCopy];
      }

      else
      {
        v155 = [(MPStoreModelAlbumBuilder *)v75 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      identifiers = [v155 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v77 = self->_artistBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipArtist"])
      {
        artist = [objectCopy artist];
        v153 = [(MPStoreModelArtistBuilder *)v77 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:artist userIdentity:identityCopy];
      }

      else
      {
        v153 = [(MPStoreModelArtistBuilder *)v77 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      identifiers = [v153 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v59 = self->_curatorBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipCurator"])
      {
        curator = [objectCopy curator];
        v157 = [(MPStoreModelCuratorBuilder *)v59 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:curator userIdentity:identityCopy];
      }

      else
      {
        v157 = [(MPStoreModelCuratorBuilder *)v59 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      identifiers = [v157 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v61 = self->_songBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipSong"])
      {
        song = [objectCopy song];
        v63 = [(MPStoreModelSongBuilder *)v61 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:song userIdentity:identityCopy];
      }

      else
      {
        v63 = [(MPStoreModelSongBuilder *)v61 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      v136 = v63;
      identifiers = [v63 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v88 = self->_playlistBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipPlaylist"])
      {
        playlist = [objectCopy playlist];
        v90 = [(MPStoreModelPlaylistBuilder *)v88 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:playlist userIdentity:identityCopy];
      }

      else
      {
        v90 = [(MPStoreModelPlaylistBuilder *)v88 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      v145 = v90;
      identifiers = [v90 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v85 = self->_radioStationBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipRadioStation"])
      {
        radioStation = [objectCopy radioStation];
        v87 = [(MPStoreModelRadioStationBuilder *)v85 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:radioStation userIdentity:identityCopy];
      }

      else
      {
        v87 = [(MPStoreModelRadioStationBuilder *)v85 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      v138 = v87;
      identifiers = [v87 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v97 = self->_socialPersonBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipSocialPerson"])
      {
        socialPerson = [objectCopy socialPerson];
        v99 = [(MPStoreModelSocialPersonBuilder *)v97 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:socialPerson userIdentity:identityCopy];
      }

      else
      {
        v99 = [(MPStoreModelSocialPersonBuilder *)v97 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      v132 = v99;
      identifiers = [v99 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v72 = self->_episodeBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipTVEpisode"])
      {
        episode = [objectCopy episode];
        v74 = [(MPStoreModelTVEpisodeBuilder *)v72 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:episode userIdentity:identityCopy];
      }

      else
      {
        v74 = [(MPStoreModelTVEpisodeBuilder *)v72 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      v149 = v74;
      identifiers = [v74 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v69 = self->_seasonBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipTVSeason"])
      {
        season = [objectCopy season];
        v71 = [(MPStoreModelObjectBuilder *)v69 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:season userIdentity:identityCopy];
      }

      else
      {
        v71 = [(MPStoreModelObjectBuilder *)v69 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      v135 = v71;
      identifiers = [v71 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v66 = self->_showBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipTVShow"])
      {
        show = [objectCopy show];
        v68 = [(MPStoreModelTVShowBuilder *)v66 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:show userIdentity:identityCopy];
      }

      else
      {
        v68 = [(MPStoreModelTVShowBuilder *)v66 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      v134 = v68;
      identifiers = [v68 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v79 = self->_showCreatorBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipTVShowCreator"])
      {
        showCreator = [objectCopy showCreator];
        v81 = [(MPStoreModelObjectBuilder *)v79 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:showCreator userIdentity:identityCopy];
      }

      else
      {
        v81 = [(MPStoreModelObjectBuilder *)v79 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      v133 = v81;
      identifiers = [v81 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v82 = self->_movieBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipMovie"])
      {
        movie = [objectCopy movie];
        v84 = [(MPStoreModelMovieBuilder *)v82 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:movie userIdentity:identityCopy];
      }

      else
      {
        v84 = [(MPStoreModelMovieBuilder *)v82 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      v151 = v84;
      identifiers = [v84 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v94 = self->_recordLabelBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipRecordLabel"])
      {
        recordLabel = [objectCopy recordLabel];
        v96 = [(MPStoreModelRecordLabelBuilder *)v94 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:recordLabel userIdentity:identityCopy];
      }

      else
      {
        v96 = [(MPStoreModelRecordLabelBuilder *)v94 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      v131 = v96;
      identifiers = [v96 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
      v91 = self->_creditsArtistBuilder;
      if ([objectCopy hasLoadedValueForKey:@"MPModelStoreBrowseContentItemRelationshipCreditsArtist"])
      {
        creditsArtist = [objectCopy creditsArtist];
        v93 = [(MPStoreModelCreditsArtistBuilder *)v91 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:creditsArtist userIdentity:identityCopy];
      }

      else
      {
        v93 = [(MPStoreModelCreditsArtistBuilder *)v91 modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:0 userIdentity:identityCopy];
      }

      v130 = v93;
      identifiers = [v93 identifiers];
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
      artistUploadedContentType = [metadataCopy artistUploadedContentType];
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
      identifiers = 0;
LABEL_98:
      recommendationID = [metadataCopy recommendationID];
      v140 = recommendationID;
      v142 = identifiers;
      if (identifiers)
      {
        v101 = recommendationID;
        v129 = v57;
        personalizedStore = [identifiers personalizedStore];
        personID = [personalizedStore personID];
        v104 = personID;
        if (personID)
        {
          v105 = personID;
        }

        else
        {
          [MEMORY[0x1E69E4688] defaultIdentityStore];
          v116 = v115 = identifiers;
          v117 = [v116 DSIDForUserIdentity:identityCopy outError:0];
          stringValue = [v117 stringValue];

          identifiers = v115;
          v105 = stringValue;
        }

        v127 = v105;
        if ([v105 length])
        {
          v119 = [MPIdentifierSet alloc];
          sources = [identifiers sources];
          firstObject = [sources firstObject];
          v122 = identifiers;
          v123 = firstObject;
          modelKind = [v122 modelKind];
          v178[0] = MEMORY[0x1E69E9820];
          v178[1] = 3221225472;
          v178[2] = __104__MPModelStoreBrowseContentItemBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
          v178[3] = &unk_1E767EE00;
          v179 = v105;
          v180 = v101;
          v128 = [(MPIdentifierSet *)v119 initWithSource:v123 modelKind:modelKind block:v178];
        }

        else
        {
          v128 = identifiers;
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
        v173 = artistUploadedContentType;
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

      objectCopy = v143;
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

- (int64_t)contentItemTypeForMusicAPIType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"albums"])
  {
    v5 = 2;
  }

  else if ([typeCopy isEqualToString:@"artists"])
  {
    v5 = 20;
  }

  else if ([typeCopy isEqualToString:@"playlists"])
  {
    v5 = 46;
  }

  else if ([typeCopy isEqualToString:@"music-videos"])
  {
    v5 = 5;
  }

  else if ([typeCopy isEqualToString:@"songs"])
  {
    v5 = 1;
  }

  else if ([typeCopy isEqualToString:@"stations"])
  {
    v5 = 40;
  }

  else if ([typeCopy isEqualToString:@"shows"])
  {
    v5 = 8;
  }

  else if ([typeCopy isEqualToString:@"tv-episodes"])
  {
    v5 = 6;
  }

  else if ([typeCopy isEqualToString:@"tv-seasons"])
  {
    v5 = 7;
  }

  else if ([typeCopy isEqualToString:@"record-labels"])
  {
    v5 = 52;
  }

  else if ([typeCopy isEqualToString:@"credits-artist"])
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

- (int64_t)contentItemTypeForStoreItemMetadata:(id)metadata
{
  metadataCopy = metadata;
  itemKind = [metadataCopy itemKind];
  if ([itemKind isEqualToString:@"album"])
  {
    v6 = 2;
  }

  else if ([itemKind isEqualToString:@"artist"])
  {
    v6 = 20;
  }

  else if ([itemKind isEqualToString:@"creditsArtist"])
  {
    v6 = 53;
  }

  else if ([itemKind isEqualToString:@"playlist"])
  {
    v6 = 46;
  }

  else if ([itemKind isEqualToString:@"movie"])
  {
    v6 = 10;
  }

  else if ([itemKind isEqualToString:@"song"])
  {
    v6 = 1;
  }

  else if ([itemKind isEqualToString:@"tvEpisode"])
  {
    v6 = 6;
  }

  else if ([itemKind isEqualToString:@"tvSeason"])
  {
    v6 = 7;
  }

  else if ([itemKind isEqualToString:@"uploadedAudio"])
  {
    v6 = 50;
  }

  else if ([itemKind isEqualToString:@"musicVideo"])
  {
    v6 = 5;
  }

  else if ([itemKind isEqualToString:@"uploadedVideo"])
  {
    v6 = 51;
  }

  else if ([itemKind isEqualToString:@"radioStation"])
  {
    v6 = 40;
  }

  else if ([itemKind isEqualToString:@"socialProfile"])
  {
    v6 = 27;
  }

  else if ([itemKind isEqualToString:@"activity"])
  {
    v6 = 47;
  }

  else if ([itemKind isEqualToString:@"brand"])
  {
    v6 = 48;
  }

  else if (([itemKind isEqualToString:@"iTunesBrand"] & 1) != 0 || objc_msgSend(itemKind, "isEqualToString:", @"showBrand"))
  {
    iTunesBrandType = [metadataCopy iTunesBrandType];
    v8 = iTunesBrandType;
    if (iTunesBrandType && (([iTunesBrandType isEqualToString:@"Linear"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Non-Linear") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Standalone") & 1) != 0))
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

  else if (([itemKind isEqualToString:@"recordLabel"] & 1) != 0 || objc_msgSend(itemKind, "isEqualToString:", @"record-labels"))
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

- (int64_t)contentItemTypeForRawResponseKindIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy conformsToProtocol:&unk_1F1550CB8])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = identifiersCopy;
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

- (int64_t)contentItemTypeForRawResponseKindIdentifierValue:(int64_t)value
{
  result = 0;
  if (value <= 39)
  {
    if (value > 6)
    {
      if (value <= 9)
      {
        if (value == 7)
        {
          v10 = !self->_allowsVideoContent;
          v11 = 12;
        }

        else
        {
          if (value != 8)
          {
            return result;
          }

          v10 = !self->_allowsVideoContent;
          v11 = 13;
        }
      }

      else
      {
        if (value != 10)
        {
          v5 = 2;
          v6 = 9;
          if (value != 27)
          {
            v6 = 0;
          }

          v7 = value == 20;
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

    if (value <= 4)
    {
      if (value != 1)
      {
        v8 = value == 2;
        v9 = 1;
        goto LABEL_20;
      }

      return 10;
    }

    if (value != 5)
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

  if (value <= 48)
  {
    if (value > 46)
    {
      v5 = 5;
      v6 = 4;
      if (value != 48)
      {
        v6 = 0;
      }

      v7 = value == 47;
      goto LABEL_28;
    }

    if (value != 40)
    {
      v8 = value == 46;
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

  if (value <= 50)
  {
    if (value == 49)
    {
      return 3;
    }

    return 10;
  }

  switch(value)
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

- (void)setPreventStoreItemMetadataCaching:(BOOL)caching
{
  cachingCopy = caching;
  v5.receiver = self;
  v5.super_class = MPModelStoreBrowseContentItemBuilder;
  [(MPStoreModelObjectBuilder *)&v5 setPreventStoreItemMetadataCaching:?];
  [(MPStoreModelObjectBuilder *)self->_albumBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_artistBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_curatorBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_episodeBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_movieBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_radioStationBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_socialPersonBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_playlistBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_seasonBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_songBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_showBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_showCreatorBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_recordLabelBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_creditsArtistBuilder setPreventStoreItemMetadataCaching:cachingCopy];
}

- (MPModelStoreBrowseContentItemBuilder)initWithRequestedPropertySet:(id)set
{
  v7.receiver = self;
  v7.super_class = MPModelStoreBrowseContentItemBuilder;
  v3 = [(MPStoreModelObjectBuilder *)&v7 initWithRequestedPropertySet:set];
  v4 = v3;
  if (v3)
  {
    v3->_allowsRadioStations = 1;
    v3->_allowsVideoContent = 1;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4->_shouldFakeEpisodes = [standardUserDefaults BOOLForKey:@"MusicShouldFakeTVEpisodes"];
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