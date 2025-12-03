@interface MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest)initWithPlaylist:(id)playlist playlistEntries:(id)entries playlistName:(id)name playlistDescription:(id)description authorDisplayName:(id)displayName;
- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest)initWithPlaylistEntries:(id)entries playlistName:(id)name playlistDescription:(id)description authorDisplayName:(id)displayName;
- (void)sdk_performWithCompletionHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest)initWithPlaylistEntries:(id)entries playlistName:(id)name playlistDescription:(id)description authorDisplayName:(id)displayName
{
  entriesCopy = entries;
  nameCopy = name;
  descriptionCopy = description;
  displayNameCopy = displayName;
  v26.receiver = self;
  v26.super_class = MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest;
  v14 = [(MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest *)&v26 init];
  if (v14)
  {
    v15 = +[MusicKit_SoftLinking_MPMediaLibrary deviceLibrary];
    mediaLibrary = v14->_mediaLibrary;
    v14->_mediaLibrary = v15;

    v17 = objc_alloc_init(getMPModelLibraryPlaylistEditChangeRequestClass());
    underlyingRequest = v14->_underlyingRequest;
    v14->_underlyingRequest = v17;

    v19 = v14->_underlyingRequest;
    _underlyingMediaLibrary = [(MusicKit_SoftLinking_MPMediaLibrary *)v14->_mediaLibrary _underlyingMediaLibrary];
    [(MPModelLibraryPlaylistEditChangeRequest *)v19 setMediaLibrary:_underlyingMediaLibrary];

    [(MPModelLibraryPlaylistEditChangeRequest *)v14->_underlyingRequest setShouldCreatePlaylist:1];
    if (entriesCopy)
    {
      v21 = [entriesCopy msv_map:&__block_literal_global_4];
      v22 = objc_alloc_init(getMPMutableSectionedCollectionClass());
      [v22 appendSection:&stru_282982150];
      [v22 appendItems:v21];
      [(MPModelLibraryPlaylistEditChangeRequest *)v14->_underlyingRequest setMusicKitPlaylistEntries:v22];
    }

    v23 = MEMORY[0x277CBEC38];
    [(MPModelLibraryPlaylistEditChangeRequest *)v14->_underlyingRequest setIsOwner:MEMORY[0x277CBEC38]];
    playlist = [(MPModelLibraryPlaylistEditChangeRequest *)v14->_underlyingRequest playlist];
    [playlist setOwner:1];

    [(MPModelLibraryPlaylistEditChangeRequest *)v14->_underlyingRequest setPlaylistName:nameCopy];
    [(MPModelLibraryPlaylistEditChangeRequest *)v14->_underlyingRequest setPlaylistDescription:descriptionCopy];
    [(MPModelLibraryPlaylistEditChangeRequest *)v14->_underlyingRequest setPublicPlaylist:v23];
    [(MPModelLibraryPlaylistEditChangeRequest *)v14->_underlyingRequest setVisiblePlaylist:v23];
    [(MPModelLibraryPlaylistEditChangeRequest *)v14->_underlyingRequest setAuthorDisplayName:displayNameCopy];
  }

  return v14;
}

- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest)initWithPlaylist:(id)playlist playlistEntries:(id)entries playlistName:(id)name playlistDescription:(id)description authorDisplayName:(id)displayName
{
  playlistCopy = playlist;
  entriesCopy = entries;
  nameCopy = name;
  descriptionCopy = description;
  displayNameCopy = displayName;
  v29.receiver = self;
  v29.super_class = MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest;
  v17 = [(MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest *)&v29 init];
  if (v17)
  {
    v18 = +[MusicKit_SoftLinking_MPMediaLibrary deviceLibrary];
    mediaLibrary = v17->_mediaLibrary;
    v17->_mediaLibrary = v18;

    v20 = objc_alloc_init(getMPModelLibraryPlaylistEditChangeRequestClass());
    underlyingRequest = v17->_underlyingRequest;
    v17->_underlyingRequest = v20;

    v22 = v17->_underlyingRequest;
    _underlyingMediaLibrary = [(MusicKit_SoftLinking_MPMediaLibrary *)v17->_mediaLibrary _underlyingMediaLibrary];
    [(MPModelLibraryPlaylistEditChangeRequest *)v22 setMediaLibrary:_underlyingMediaLibrary];

    v24 = v17->_underlyingRequest;
    _underlyingModelObject = [playlistCopy _underlyingModelObject];
    [(MPModelLibraryPlaylistEditChangeRequest *)v24 setPlaylist:_underlyingModelObject];

    if (entriesCopy)
    {
      v26 = [entriesCopy msv_map:&__block_literal_global_3];
      v27 = objc_alloc_init(getMPMutableSectionedCollectionClass());
      [v27 appendSection:&stru_282982150];
      [v27 appendItems:v26];
      [(MPModelLibraryPlaylistEditChangeRequest *)v17->_underlyingRequest setMusicKitPlaylistEntries:v27];
    }

    [(MPModelLibraryPlaylistEditChangeRequest *)v17->_underlyingRequest setPlaylistName:nameCopy];
    [(MPModelLibraryPlaylistEditChangeRequest *)v17->_underlyingRequest setPlaylistDescription:descriptionCopy];
    [(MPModelLibraryPlaylistEditChangeRequest *)v17->_underlyingRequest setAuthorDisplayName:displayNameCopy];
  }

  return v17;
}

- (void)sdk_performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  underlyingRequest = self->_underlyingRequest;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest_sdk_performWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_278229D68;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(MPModelLibraryPlaylistEditChangeRequest *)underlyingRequest newSDKOperationWithLocalPersistenceResponseHandler:&__block_literal_global_6 completeResponseHandler:v8];
  [(MusicKit_SoftLinking_MPMediaLibrary *)self->_mediaLibrary performOperation:v7];
}

@end