@interface MPStoreModelGenericObjectBuilder
- (id)_modelObjectWithUniqueContainerIDForModelObject:(id)object;
- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity;
- (void)setPreventStoreItemMetadataCaching:(BOOL)caching;
@end

@implementation MPStoreModelGenericObjectBuilder

- (id)_modelObjectWithUniqueContainerIDForModelObject:(id)object
{
  objectCopy = object;
  identifiers = [objectCopy identifiers];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __84__MPStoreModelGenericObjectBuilder__modelObjectWithUniqueContainerIDForModelObject___block_invoke;
    v23[3] = &unk_1E76819F0;
    v24 = objectCopy;
    v25 = v26;
    [MPModelObject performWithoutEnforcement:v23];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __84__MPStoreModelGenericObjectBuilder__modelObjectWithUniqueContainerIDForModelObject___block_invoke_2;
    v20[3] = &unk_1E76819F0;
    v21 = objectCopy;
    v22 = v26;
    [MPModelObject performWithoutEnforcement:v20];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__MPStoreModelGenericObjectBuilder__modelObjectWithUniqueContainerIDForModelObject___block_invoke_3;
    v17[3] = &unk_1E76819F0;
    v18 = objectCopy;
    v19 = v26;
    [MPModelObject performWithoutEnforcement:v17];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__MPStoreModelGenericObjectBuilder__modelObjectWithUniqueContainerIDForModelObject___block_invoke_4;
    v14[3] = &unk_1E76819F0;
    v15 = objectCopy;
    v16 = v26;
    [MPModelObject performWithoutEnforcement:v14];
  }

  v6 = MPContainerUniqueIDPrefix(identifiers);
  [(NSCountedSet *)self->_baseContentItemIDToOccurrenceCount countForObject:v6];
  v7 = ML3ContainerItemOccurrenceID();
  [(NSCountedSet *)self->_baseContentItemIDToOccurrenceCount addObject:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__MPStoreModelGenericObjectBuilder__modelObjectWithUniqueContainerIDForModelObject___block_invoke_5;
  v12[3] = &unk_1E7680B28;
  v8 = v7;
  v13 = v8;
  v9 = [identifiers copyWithSource:@"StorePlatform-ContainerUniqueID" block:v12];
  v10 = [objectCopy copyWithIdentifiers:v9 block:&__block_literal_global_71_44788];

  _Block_object_dispose(v26, 8);

  return v10;
}

void __84__MPStoreModelGenericObjectBuilder__modelObjectWithUniqueContainerIDForModelObject___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(*(a1 + 40) + 8) + 24) = [v2 isLibraryAdded];
}

void __84__MPStoreModelGenericObjectBuilder__modelObjectWithUniqueContainerIDForModelObject___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(*(a1 + 40) + 8) + 24) = [v2 isLibraryAdded];
}

void __84__MPStoreModelGenericObjectBuilder__modelObjectWithUniqueContainerIDForModelObject___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(*(a1 + 40) + 8) + 24) = [v2 isLibraryAdded];
}

void __84__MPStoreModelGenericObjectBuilder__modelObjectWithUniqueContainerIDForModelObject___block_invoke_4(uint64_t a1)
{
  v5 = *(a1 + 32);
  v2 = [v5 type];
  switch(v2)
  {
    case 3:
      v3 = [v5 movie];
      break;
    case 2:
      v3 = [v5 tvEpisode];
      break;
    case 1:
      v3 = [v5 song];
      break;
    default:
      goto LABEL_8;
  }

  v4 = v3;
  *(*(*(a1 + 40) + 8) + 24) = [v3 isLibraryAdded];

LABEL_8:
}

- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity
{
  metadataCopy = metadata;
  objectCopy = object;
  identityCopy = identity;
  itemKind = [metadataCopy itemKind];
  v12 = [itemKind isEqualToString:@"musicVideo"];
  v13 = [itemKind isEqualToString:@"tvEpisode"];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v15 = [standardUserDefaults BOOLForKey:@"MusicShouldFakeTVEpisodes"];

  identifiers = [objectCopy identifiers];
  modelKind = [identifiers modelKind];

  IsArtistUploadedContent = MPStoreItemMetadataItemKindIsArtistUploadedContent(itemKind);
  if ([itemKind isEqualToString:@"song"] & 1) != 0 || (v18 = v15 & v12, ((v15 & v12 ^ 1) & v12) || (IsArtistUploadedContent & 1) != 0 || objc_msgSend(objectCopy, "type") == 1 || objc_msgSend(objectCopy, "type") == 5 || (+[MPModelSongKind identityKind](MPModelSongKind, "identityKind"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(modelKind, "isEqual:", v19), v19, v20))
  {
    if (self->_songBuilder)
    {
      if (!objectCopy)
      {
        goto LABEL_20;
      }
    }

    else
    {
      requestedPropertySet = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
      relationships = [requestedPropertySet relationships];
      v23 = [relationships objectForKey:@"MPModelRelationshipGenericSong"];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = +[MPPropertySet emptyPropertySet];
      }

      v26 = v25;

      v27 = [(MPStoreModelObjectBuilder *)[MPStoreModelSongBuilder alloc] initWithRequestedPropertySet:v26];
      songBuilder = self->_songBuilder;
      self->_songBuilder = v27;

      [(MPStoreModelObjectBuilder *)self->_songBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
      if (!objectCopy)
      {
        goto LABEL_20;
      }
    }

    if ([objectCopy type] == 1)
    {
      song = [objectCopy song];
      goto LABEL_31;
    }

    if ([objectCopy type] == 5)
    {
      playlistEntry = [objectCopy playlistEntry];
      if (![playlistEntry hasLoadedValueForKey:@"MPModelRelationshipPlaylistEntrySong"])
      {
        v32 = [MPModelSong alloc];
        identifiers2 = [playlistEntry identifiers];
        song = [(MPModelObject *)v32 initWithIdentifiers:identifiers2 block:&__block_literal_global_44797];

LABEL_30:
LABEL_31:
        v179 = [(MPStoreModelSongBuilder *)self->_songBuilder modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:song userIdentity:identityCopy, modelKind];
        if (v179)
        {
          v43 = v179;
          if (self->_shouldUsePlaylistEntry)
          {
            v44 = [(MPStoreModelGenericObjectBuilder *)self _modelObjectWithUniqueContainerIDForModelObject:v179];

            v45 = [MPModelGenericObject alloc];
            v46 = +[MPIdentifierSet emptyIdentifierSet];
            v206[0] = MEMORY[0x1E69E9820];
            v206[1] = 3221225472;
            v206[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3;
            v206[3] = &unk_1E767E6E0;
            v47 = &v207;
            v207 = v44;
            v1794 = v44;
            v49 = v206;
LABEL_34:
            v50 = v45;
LABEL_37:
            v52 = [(MPModelObject *)v50 initWithIdentifiers:v46 block:v49];

LABEL_38:
LABEL_87:

            goto LABEL_88;
          }

          v51 = [MPModelGenericObject alloc];
          v46 = +[MPIdentifierSet emptyIdentifierSet];
          v204[0] = MEMORY[0x1E69E9820];
          v204[1] = 3221225472;
          v204[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_5;
          v204[3] = &unk_1E767E6E0;
          v47 = &v205;
          v205 = v43;
          v1794 = v43;
          v49 = v204;
          goto LABEL_36;
        }

        goto LABEL_86;
      }

      song2 = [playlistEntry song];
    }

    else
    {
      if ([objectCopy type])
      {
LABEL_20:
        song = 0;
        goto LABEL_31;
      }

      v41 = [MPModelSong alloc];
      playlistEntry = [objectCopy identifiers];
      song2 = [(MPModelObject *)v41 initWithIdentifiers:playlistEntry block:&__block_literal_global_7_44798];
    }

    song = song2;
    goto LABEL_30;
  }

  if (((v18 | v13) & 1) != 0 || [objectCopy type] == 6 || (+[MPModelTVEpisodeKind identityKind](MPModelTVEpisodeKind, "identityKind"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(modelKind, "isEqual:", v34), v34, v35))
  {
    if (!self->_tvEpisodeBuilder)
    {
      requestedPropertySet2 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
      relationships2 = [requestedPropertySet2 relationships];
      v38 = [relationships2 objectForKey:@"MPModelRelationshipGenericTVEpisode"];
      v39 = v38;
      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = +[MPPropertySet emptyPropertySet];
      }

      v60 = v40;

      v61 = [(MPStoreModelObjectBuilder *)[MPStoreModelTVEpisodeBuilder alloc] initWithRequestedPropertySet:v60];
      tvEpisodeBuilder = self->_tvEpisodeBuilder;
      self->_tvEpisodeBuilder = v61;

      [(MPStoreModelObjectBuilder *)self->_tvEpisodeBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    }

    if (objectCopy)
    {
      if ([objectCopy type] == 6)
      {
        song = [objectCopy tvEpisode];
        goto LABEL_59;
      }

      if ([objectCopy type] == 5)
      {
        playlistEntry2 = [objectCopy playlistEntry];
        if (![playlistEntry2 hasLoadedValueForKey:@"MPModelRelationshipPlaylistEntryTVEpisode"])
        {
          v65 = [MPModelTVEpisode alloc];
          identifiers3 = [playlistEntry2 identifiers];
          song = [(MPModelObject *)v65 initWithIdentifiers:identifiers3 block:&__block_literal_global_17];

LABEL_58:
LABEL_59:
          v1792 = [(MPStoreModelTVEpisodeBuilder *)self->_tvEpisodeBuilder modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:song userIdentity:identityCopy, modelKind];
          if (v1792)
          {
            v69 = v1792;
            if (self->_shouldUsePlaylistEntry)
            {
              v70 = [(MPStoreModelGenericObjectBuilder *)self _modelObjectWithUniqueContainerIDForModelObject:v1792];

              v45 = [MPModelGenericObject alloc];
              v46 = +[MPIdentifierSet emptyIdentifierSet];
              v202[0] = MEMORY[0x1E69E9820];
              v202[1] = 3221225472;
              v202[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_8;
              v202[3] = &unk_1E767E6E0;
              v47 = &v203;
              v203 = v70;
              v1794 = v70;
              v49 = v202;
              goto LABEL_34;
            }

            v51 = [MPModelGenericObject alloc];
            v46 = +[MPIdentifierSet emptyIdentifierSet];
            v200[0] = MEMORY[0x1E69E9820];
            v200[1] = 3221225472;
            v200[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_10;
            v200[3] = &unk_1E767E6E0;
            v47 = &v201;
            v201 = v69;
            v1794 = v69;
            v49 = v200;
LABEL_36:
            v50 = v51;
            goto LABEL_37;
          }

LABEL_86:
          v52 = 0;
          goto LABEL_87;
        }

        tvEpisode = [playlistEntry2 tvEpisode];
LABEL_57:
        song = tvEpisode;
        goto LABEL_58;
      }

      if (![objectCopy type])
      {
        v67 = [MPModelTVEpisode alloc];
        playlistEntry2 = [objectCopy identifiers];
        tvEpisode = [(MPModelObject *)v67 initWithIdentifiers:playlistEntry2 block:&__block_literal_global_19_44803];
        goto LABEL_57;
      }
    }

    song = 0;
    goto LABEL_59;
  }

  if (([itemKind isEqualToString:@"movie"] & 1) != 0 || objc_msgSend(objectCopy, "type") == 9 || (+[MPModelMovieKind identityKind](MPModelMovieKind, "identityKind"), v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(modelKind, "isEqual:", v53), v53, v54))
  {
    if (!self->_movieBuilder)
    {
      requestedPropertySet3 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
      relationships3 = [requestedPropertySet3 relationships];
      v57 = [relationships3 objectForKey:@"MPModelRelationshipGenericMovie"];
      v58 = v57;
      if (v57)
      {
        v59 = v57;
      }

      else
      {
        v59 = +[MPPropertySet emptyPropertySet];
      }

      v78 = v59;

      v79 = [(MPStoreModelObjectBuilder *)[MPStoreModelMovieBuilder alloc] initWithRequestedPropertySet:v78];
      movieBuilder = self->_movieBuilder;
      self->_movieBuilder = v79;

      [(MPStoreModelObjectBuilder *)self->_movieBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    }

    if (objectCopy)
    {
      if ([objectCopy type] == 9)
      {
        song = [objectCopy movie];
        goto LABEL_83;
      }

      if ([objectCopy type] == 5)
      {
        playlistEntry3 = [objectCopy playlistEntry];
        if (![playlistEntry3 hasLoadedValueForKey:@"MPModelRelationshipPlaylistEntryMovie"])
        {
          v83 = [MPModelMovie alloc];
          identifiers4 = [playlistEntry3 identifiers];
          song = [(MPModelObject *)v83 initWithIdentifiers:identifiers4 block:&__block_literal_global_24];

LABEL_82:
LABEL_83:
          v1793 = [(MPStoreModelMovieBuilder *)self->_movieBuilder modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:song userIdentity:identityCopy, modelKind];
          if (v1793)
          {
            v87 = v1793;
            if (self->_shouldUsePlaylistEntry)
            {
              v88 = [(MPStoreModelGenericObjectBuilder *)self _modelObjectWithUniqueContainerIDForModelObject:v1793];

              v45 = [MPModelGenericObject alloc];
              v46 = +[MPIdentifierSet emptyIdentifierSet];
              v198[0] = MEMORY[0x1E69E9820];
              v198[1] = 3221225472;
              v198[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_13;
              v198[3] = &unk_1E767E6E0;
              v47 = &v199;
              v199 = v88;
              v1794 = v88;
              v49 = v198;
              goto LABEL_34;
            }

            v51 = [MPModelGenericObject alloc];
            v46 = +[MPIdentifierSet emptyIdentifierSet];
            v196[0] = MEMORY[0x1E69E9820];
            v196[1] = 3221225472;
            v196[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_15;
            v196[3] = &unk_1E767E6E0;
            v47 = &v197;
            v197 = v87;
            v1794 = v87;
            v49 = v196;
            goto LABEL_36;
          }

          goto LABEL_86;
        }

        movie = [playlistEntry3 movie];
LABEL_81:
        song = movie;
        goto LABEL_82;
      }

      if (![objectCopy type])
      {
        v85 = [MPModelMovie alloc];
        playlistEntry3 = [objectCopy identifiers];
        movie = [(MPModelObject *)v85 initWithIdentifiers:playlistEntry3 block:&__block_literal_global_26_44806];
        goto LABEL_81;
      }
    }

    song = 0;
    goto LABEL_83;
  }

  if (([itemKind isEqualToString:@"album"] & 1) != 0 || objc_msgSend(objectCopy, "type") == 2 || (+[MPModelAlbumKind identityKind](MPModelAlbumKind, "identityKind"), v71 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend(modelKind, "isEqual:", v71), v71, v72))
  {
    if (!self->_albumBuilder)
    {
      requestedPropertySet4 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
      relationships4 = [requestedPropertySet4 relationships];
      v75 = [relationships4 objectForKey:@"MPModelRelationshipGenericAlbum"];
      v76 = v75;
      if (v75)
      {
        v77 = v75;
      }

      else
      {
        v77 = +[MPPropertySet emptyPropertySet];
      }

      v97 = v77;

      v98 = [(MPStoreModelObjectBuilder *)[MPStoreModelAlbumBuilder alloc] initWithRequestedPropertySet:v97];
      albumBuilder = self->_albumBuilder;
      self->_albumBuilder = v98;

      [(MPStoreModelObjectBuilder *)self->_albumBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    }

    if (!objectCopy)
    {
      goto LABEL_104;
    }

    if ([objectCopy type] == 2)
    {
      song = [objectCopy album];
      goto LABEL_105;
    }

    if (![objectCopy type])
    {
      v100 = [MPModelAlbum alloc];
      identifiers5 = [objectCopy identifiers];
      song = [(MPModelObject *)v100 initWithIdentifiers:identifiers5 block:&__block_literal_global_31_44810];
    }

    else
    {
LABEL_104:
      song = 0;
    }

LABEL_105:
    v1794 = [(MPStoreModelAlbumBuilder *)self->_albumBuilder modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:song userIdentity:identityCopy, modelKind];
    if (v1794)
    {
      v51 = [MPModelGenericObject alloc];
      v46 = +[MPIdentifierSet emptyIdentifierSet];
      v194[0] = MEMORY[0x1E69E9820];
      v194[1] = 3221225472;
      v194[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_17;
      v194[3] = &unk_1E767E6E0;
      v47 = &v195;
      v1794 = v1794;
      v195 = v1794;
      v49 = v194;
      goto LABEL_36;
    }

LABEL_215:
    v52 = 0;
    goto LABEL_38;
  }

  if (([itemKind isEqualToString:@"playlist"] & 1) != 0 || objc_msgSend(objectCopy, "type") == 4 || (+[MPModelPlaylistKind identityKind](MPModelPlaylistKind, "identityKind"), v90 = objc_claimAutoreleasedReturnValue(), v91 = objc_msgSend(modelKind, "isEqual:", v90), v90, v91))
  {
    if (!self->_playlistBuilder)
    {
      requestedPropertySet5 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
      relationships5 = [requestedPropertySet5 relationships];
      v94 = [relationships5 objectForKey:@"MPModelRelationshipGenericPlaylist"];
      v95 = v94;
      if (v94)
      {
        v96 = v94;
      }

      else
      {
        v96 = +[MPPropertySet emptyPropertySet];
      }

      v109 = v96;

      v110 = [(MPStoreModelObjectBuilder *)[MPStoreModelPlaylistBuilder alloc] initWithRequestedPropertySet:v109];
      playlistBuilder = self->_playlistBuilder;
      self->_playlistBuilder = v110;

      [(MPStoreModelObjectBuilder *)self->_playlistBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    }

    if (!objectCopy)
    {
      goto LABEL_120;
    }

    if ([objectCopy type] == 4)
    {
      song = [objectCopy playlist];
      goto LABEL_121;
    }

    if (![objectCopy type])
    {
      v112 = [MPModelPlaylist alloc];
      identifiers6 = [objectCopy identifiers];
      song = [(MPModelObject *)v112 initWithIdentifiers:identifiers6 block:&__block_literal_global_36_44814];
    }

    else
    {
LABEL_120:
      song = 0;
    }

LABEL_121:
    v1794 = [(MPStoreModelPlaylistBuilder *)self->_playlistBuilder modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:song userIdentity:identityCopy, modelKind];
    if (v1794)
    {
      v51 = [MPModelGenericObject alloc];
      v46 = +[MPIdentifierSet emptyIdentifierSet];
      v192[0] = MEMORY[0x1E69E9820];
      v192[1] = 3221225472;
      v192[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_19;
      v192[3] = &unk_1E767E6E0;
      v47 = &v193;
      v1794 = v1794;
      v193 = v1794;
      v49 = v192;
      goto LABEL_36;
    }

    goto LABEL_215;
  }

  if (([itemKind isEqualToString:@"artist"] & 1) != 0 || objc_msgSend(objectCopy, "type") == 3 || (+[MPModelArtistKind identityKind](MPModelArtistKind, "identityKind"), v102 = objc_claimAutoreleasedReturnValue(), v103 = objc_msgSend(modelKind, "isEqual:", v102), v102, v103))
  {
    if (!self->_artistBuilder)
    {
      requestedPropertySet6 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
      relationships6 = [requestedPropertySet6 relationships];
      v106 = [relationships6 objectForKey:@"MPModelRelationshipGenericArtist"];
      v107 = v106;
      if (v106)
      {
        v108 = v106;
      }

      else
      {
        v108 = +[MPPropertySet emptyPropertySet];
      }

      v121 = v108;

      v122 = [(MPStoreModelObjectBuilder *)[MPStoreModelArtistBuilder alloc] initWithRequestedPropertySet:v121];
      artistBuilder = self->_artistBuilder;
      self->_artistBuilder = v122;

      [(MPStoreModelObjectBuilder *)self->_artistBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    }

    if (!objectCopy)
    {
      goto LABEL_136;
    }

    if ([objectCopy type] == 3)
    {
      song = [objectCopy artist];
      goto LABEL_137;
    }

    if (![objectCopy type])
    {
      v124 = [MPModelArtist alloc];
      identifiers7 = [objectCopy identifiers];
      song = [(MPModelObject *)v124 initWithIdentifiers:identifiers7 block:&__block_literal_global_41_44818];
    }

    else
    {
LABEL_136:
      song = 0;
    }

LABEL_137:
    v1794 = [(MPStoreModelArtistBuilder *)self->_artistBuilder modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:song userIdentity:identityCopy, modelKind];
    if (v1794)
    {
      v51 = [MPModelGenericObject alloc];
      v46 = +[MPIdentifierSet emptyIdentifierSet];
      v190[0] = MEMORY[0x1E69E9820];
      v190[1] = 3221225472;
      v190[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_21;
      v190[3] = &unk_1E767E6E0;
      v47 = &v191;
      v1794 = v1794;
      v191 = v1794;
      v49 = v190;
      goto LABEL_36;
    }

    goto LABEL_215;
  }

  if (([itemKind isEqualToString:@"creditsArtist"] & 1) != 0 || objc_msgSend(objectCopy, "type") == 19 || (+[MPModelRecordLabelKind identityKind](MPModelRecordLabelKind, "identityKind"), v114 = objc_claimAutoreleasedReturnValue(), v115 = objc_msgSend(modelKind, "isEqual:", v114), v114, v115))
  {
    if (!self->_recordLabelBuilder)
    {
      requestedPropertySet7 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
      relationships7 = [requestedPropertySet7 relationships];
      v118 = [relationships7 objectForKey:@"MPModelRelationshipGenericRecordLabel"];
      v119 = v118;
      if (v118)
      {
        v120 = v118;
      }

      else
      {
        v120 = +[MPPropertySet emptyPropertySet];
      }

      v133 = v120;

      v134 = [(MPStoreModelObjectBuilder *)[MPStoreModelRecordLabelBuilder alloc] initWithRequestedPropertySet:v133];
      recordLabelBuilder = self->_recordLabelBuilder;
      self->_recordLabelBuilder = v134;

      [(MPStoreModelObjectBuilder *)self->_recordLabelBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    }

    if (!modelKind)
    {
      goto LABEL_152;
    }

    if ([objectCopy type] == 19)
    {
      song = [objectCopy recordLabel];
      goto LABEL_153;
    }

    if (![objectCopy type])
    {
      v136 = [MPModelRecordLabel alloc];
      identifiers8 = [objectCopy identifiers];
      song = [(MPModelObject *)v136 initWithIdentifiers:identifiers8 block:&__block_literal_global_46_44822];
    }

    else
    {
LABEL_152:
      song = 0;
    }

LABEL_153:
    v1794 = [(MPStoreModelRecordLabelBuilder *)self->_recordLabelBuilder modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:song userIdentity:identityCopy, modelKind];
    if (v1794)
    {
      v51 = [MPModelGenericObject alloc];
      v46 = +[MPIdentifierSet emptyIdentifierSet];
      v188[0] = MEMORY[0x1E69E9820];
      v188[1] = 3221225472;
      v188[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_23;
      v188[3] = &unk_1E767E6E0;
      v47 = &v189;
      v1794 = v1794;
      v189 = v1794;
      v49 = v188;
      goto LABEL_36;
    }

    goto LABEL_215;
  }

  if (([itemKind isEqualToString:@"tvShow"] & 1) != 0 || objc_msgSend(objectCopy, "type") == 8 || (+[MPModelTVShowKind identityKind](MPModelTVShowKind, "identityKind"), v126 = objc_claimAutoreleasedReturnValue(), v127 = objc_msgSend(modelKind, "isEqual:", v126), v126, v127))
  {
    if (!self->_tvShowBuilder)
    {
      requestedPropertySet8 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
      relationships8 = [requestedPropertySet8 relationships];
      v130 = [relationships8 objectForKey:@"MPModelRelationshipGenericTVShow"];
      v131 = v130;
      if (v130)
      {
        v132 = v130;
      }

      else
      {
        v132 = +[MPPropertySet emptyPropertySet];
      }

      v145 = v132;

      v146 = [(MPStoreModelObjectBuilder *)[MPStoreModelTVShowBuilder alloc] initWithRequestedPropertySet:v145];
      tvShowBuilder = self->_tvShowBuilder;
      self->_tvShowBuilder = v146;

      [(MPStoreModelObjectBuilder *)self->_tvShowBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    }

    if (!objectCopy)
    {
      goto LABEL_168;
    }

    if ([objectCopy type] == 8)
    {
      song = [objectCopy show];
      goto LABEL_169;
    }

    if (![objectCopy type])
    {
      v148 = [MPModelTVShow alloc];
      identifiers9 = [objectCopy identifiers];
      song = [(MPModelObject *)v148 initWithIdentifiers:identifiers9 block:&__block_literal_global_51];
    }

    else
    {
LABEL_168:
      song = 0;
    }

LABEL_169:
    v1794 = [(MPStoreModelTVShowBuilder *)self->_tvShowBuilder modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:song userIdentity:identityCopy, modelKind];
    if (v1794)
    {
      v51 = [MPModelGenericObject alloc];
      v46 = +[MPIdentifierSet emptyIdentifierSet];
      v186[0] = MEMORY[0x1E69E9820];
      v186[1] = 3221225472;
      v186[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_25;
      v186[3] = &unk_1E767E6E0;
      v47 = &v187;
      v1794 = v1794;
      v187 = v1794;
      v49 = v186;
      goto LABEL_36;
    }

    goto LABEL_215;
  }

  if (([itemKind isEqualToString:@"tvSeason"] & 1) != 0 || objc_msgSend(objectCopy, "type") == 7 || (+[MPModelTVSeasonKind identityKind](MPModelTVSeasonKind, "identityKind"), v138 = objc_claimAutoreleasedReturnValue(), v139 = objc_msgSend(modelKind, "isEqual:", v138), v138, v139))
  {
    if (!self->_tvSeasonBuilder)
    {
      requestedPropertySet9 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
      relationships9 = [requestedPropertySet9 relationships];
      v142 = [relationships9 objectForKey:@"MPModelRelationshipGenericTVSeason"];
      v143 = v142;
      if (v142)
      {
        v144 = v142;
      }

      else
      {
        v144 = +[MPPropertySet emptyPropertySet];
      }

      v157 = v144;

      v158 = [(MPStoreModelObjectBuilder *)[MPStoreModelTVSeasonBuilder alloc] initWithRequestedPropertySet:v157];
      tvSeasonBuilder = self->_tvSeasonBuilder;
      self->_tvSeasonBuilder = v158;

      [(MPStoreModelObjectBuilder *)self->_tvSeasonBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    }

    if (!objectCopy)
    {
      goto LABEL_185;
    }

    if ([objectCopy type] == 7)
    {
      song = [objectCopy season];
      goto LABEL_186;
    }

    if (![objectCopy type])
    {
      v160 = [MPModelTVSeason alloc];
      identifiers10 = [objectCopy identifiers];
      song = [(MPModelObject *)v160 initWithIdentifiers:identifiers10 block:&__block_literal_global_56];
    }

    else
    {
LABEL_185:
      song = 0;
    }

LABEL_186:
    v1794 = [(MPStoreModelObjectBuilder *)self->_tvSeasonBuilder modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:song userIdentity:identityCopy, modelKind];
    if (v1794)
    {
      v51 = [MPModelGenericObject alloc];
      v46 = +[MPIdentifierSet emptyIdentifierSet];
      v184[0] = MEMORY[0x1E69E9820];
      v184[1] = 3221225472;
      v184[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_27;
      v184[3] = &unk_1E767E6E0;
      v47 = &v185;
      v1794 = v1794;
      v185 = v1794;
      v49 = v184;
      goto LABEL_36;
    }

    goto LABEL_215;
  }

  if (([itemKind isEqualToString:@"recordLabel"] & 1) != 0 || (objc_msgSend(itemKind, "isEqualToString:", @"record-labels") & 1) != 0 || objc_msgSend(objectCopy, "type") == 19 || (+[MPModelRecordLabelKind identityKind](MPModelRecordLabelKind, "identityKind"), v150 = objc_claimAutoreleasedReturnValue(), v151 = objc_msgSend(modelKind, "isEqual:", v150), v150, v151))
  {
    if (!self->_recordLabelBuilder)
    {
      requestedPropertySet10 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
      relationships10 = [requestedPropertySet10 relationships];
      v154 = [relationships10 objectForKey:@"MPModelRelationshipGenericRecordLabel"];
      v155 = v154;
      if (v154)
      {
        v156 = v154;
      }

      else
      {
        v156 = +[MPPropertySet emptyPropertySet];
      }

      v162 = v156;

      v163 = [(MPStoreModelObjectBuilder *)[MPStoreModelRecordLabelBuilder alloc] initWithRequestedPropertySet:v162];
      v164 = self->_recordLabelBuilder;
      self->_recordLabelBuilder = v163;

      [(MPStoreModelObjectBuilder *)self->_recordLabelBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    }

    if (!modelKind)
    {
      goto LABEL_195;
    }

    if ([objectCopy type] == 19)
    {
      song = [objectCopy recordLabel];
      goto LABEL_196;
    }

    if (![objectCopy type])
    {
      v165 = [MPModelRecordLabel alloc];
      identifiers11 = [objectCopy identifiers];
      song = [(MPModelObject *)v165 initWithIdentifiers:identifiers11 block:&__block_literal_global_58];
    }

    else
    {
LABEL_195:
      song = 0;
    }

LABEL_196:
    v1794 = [(MPStoreModelRecordLabelBuilder *)self->_recordLabelBuilder modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:song userIdentity:identityCopy, modelKind];
    if (v1794)
    {
      v51 = [MPModelGenericObject alloc];
      v46 = +[MPIdentifierSet emptyIdentifierSet];
      v182[0] = MEMORY[0x1E69E9820];
      v182[1] = 3221225472;
      v182[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_29;
      v182[3] = &unk_1E767E6E0;
      v47 = &v183;
      v1794 = v1794;
      v183 = v1794;
      v49 = v182;
      goto LABEL_36;
    }

    goto LABEL_215;
  }

  if (([itemKind isEqualToString:@"radioStation"] & 1) != 0 || objc_msgSend(objectCopy, "type") == 13 || (+[MPModelRadioStationKind identityKind](MPModelRadioStationKind, "identityKind"), v167 = objc_claimAutoreleasedReturnValue(), v168 = objc_msgSend(modelKind, "isEqual:", v167), v167, v168))
  {
    if (!self->_radioStationBuilder)
    {
      requestedPropertySet11 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
      relationships11 = [requestedPropertySet11 relationships];
      v171 = [relationships11 objectForKey:@"MPModelRelationshipGenericRadioStation"];
      v172 = v171;
      if (v171)
      {
        v173 = v171;
      }

      else
      {
        v173 = +[MPPropertySet emptyPropertySet];
      }

      v174 = v173;

      v175 = [(MPStoreModelObjectBuilder *)[MPStoreModelRadioStationBuilder alloc] initWithRequestedPropertySet:v174];
      radioStationBuilder = self->_radioStationBuilder;
      self->_radioStationBuilder = v175;

      [(MPStoreModelObjectBuilder *)self->_radioStationBuilder setPreventStoreItemMetadataCaching:[(MPStoreModelObjectBuilder *)self preventStoreItemMetadataCaching]];
    }

    if (!modelKind)
    {
      goto LABEL_212;
    }

    if ([objectCopy type] == 13)
    {
      song = [objectCopy radioStation];
      goto LABEL_213;
    }

    if (![objectCopy type])
    {
      v177 = [MPModelRadioStation alloc];
      identifiers12 = [objectCopy identifiers];
      song = [(MPModelObject *)v177 initWithIdentifiers:identifiers12 block:&__block_literal_global_63_44832];
    }

    else
    {
LABEL_212:
      song = 0;
    }

LABEL_213:
    v1794 = [(MPStoreModelRadioStationBuilder *)self->_radioStationBuilder modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:song userIdentity:identityCopy, modelKind];
    if (v1794)
    {
      v51 = [MPModelGenericObject alloc];
      v46 = +[MPIdentifierSet emptyIdentifierSet];
      v180[0] = MEMORY[0x1E69E9820];
      v180[1] = 3221225472;
      v180[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_31;
      v180[3] = &unk_1E767E6E0;
      v47 = &v181;
      v1794 = v1794;
      v181 = v1794;
      v49 = v180;
      goto LABEL_36;
    }

    goto LABEL_215;
  }

  v52 = 0;
LABEL_88:

  return v52;
}

void __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MPModelPlaylistEntry alloc];
  v5 = [*(a1 + 32) identifiers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_4;
  v7[3] = &unk_1E767E6B8;
  v8 = *(a1 + 32);
  v6 = [(MPModelObject *)v4 initWithIdentifiers:v5 block:v7];
  [v3 setPlaylistEntry:v6];
}

void __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MPModelPlaylistEntry alloc];
  v5 = [*(a1 + 32) identifiers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_9;
  v7[3] = &unk_1E767E6B8;
  v8 = *(a1 + 32);
  v6 = [(MPModelObject *)v4 initWithIdentifiers:v5 block:v7];
  [v3 setPlaylistEntry:v6];
}

void __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MPModelPlaylistEntry alloc];
  v5 = [*(a1 + 32) identifiers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__MPStoreModelGenericObjectBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke_14;
  v7[3] = &unk_1E767E6B8;
  v8 = *(a1 + 32);
  v6 = [(MPModelObject *)v4 initWithIdentifiers:v5 block:v7];
  [v3 setPlaylistEntry:v6];
}

- (void)setPreventStoreItemMetadataCaching:(BOOL)caching
{
  cachingCopy = caching;
  v5.receiver = self;
  v5.super_class = MPStoreModelGenericObjectBuilder;
  [(MPStoreModelObjectBuilder *)&v5 setPreventStoreItemMetadataCaching:?];
  [(MPStoreModelObjectBuilder *)self->_albumBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_artistBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_movieBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_playlistBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_songBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_tvEpisodeBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_tvSeasonBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_tvShowBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_recordLabelBuilder setPreventStoreItemMetadataCaching:cachingCopy];
  [(MPStoreModelObjectBuilder *)self->_radioStationBuilder setPreventStoreItemMetadataCaching:cachingCopy];
}

@end