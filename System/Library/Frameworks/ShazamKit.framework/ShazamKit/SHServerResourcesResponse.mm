@interface SHServerResourcesResponse
- (SHServerLyricsResponse)lyricsResponse;
- (SHServerMusicVideoResponse)musicVideoResponse;
- (SHServerResourcesResponse)initWithResourcesDictionary:(id)dictionary;
- (SHServerShazamResponse)shazamResponse;
- (SHServerSongsResponse)songsResponse;
@end

@implementation SHServerResourcesResponse

- (SHServerResourcesResponse)initWithResourcesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SHServerResourcesResponse;
  v6 = [(SHServerResourcesResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourcesDictionary, dictionary);
  }

  return v7;
}

- (SHServerSongsResponse)songsResponse
{
  resourcesDictionary = [(SHServerResourcesResponse *)self resourcesDictionary];
  v4 = [resourcesDictionary objectForKeyedSubscript:@"songs"];

  if (v4)
  {
    v5 = [SHServerSongsResponse alloc];
    resourcesDictionary2 = [(SHServerResourcesResponse *)self resourcesDictionary];
    v7 = [resourcesDictionary2 objectForKeyedSubscript:@"songs"];
    v8 = [(SHServerSongsResponse *)v5 initWithSongsDictionary:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SHServerShazamResponse)shazamResponse
{
  resourcesDictionary = [(SHServerResourcesResponse *)self resourcesDictionary];
  v4 = [resourcesDictionary objectForKeyedSubscript:@"shazam-songs"];

  if (v4)
  {
    v5 = [SHServerShazamResponse alloc];
    resourcesDictionary2 = [(SHServerResourcesResponse *)self resourcesDictionary];
    v7 = [resourcesDictionary2 objectForKeyedSubscript:@"shazam-songs"];
    v8 = [(SHServerShazamResponse *)v5 initWithShazamDictionary:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SHServerLyricsResponse)lyricsResponse
{
  resourcesDictionary = [(SHServerResourcesResponse *)self resourcesDictionary];
  v4 = [resourcesDictionary objectForKeyedSubscript:@"lyrics"];

  if (v4)
  {
    v5 = [SHServerLyricsResponse alloc];
    resourcesDictionary2 = [(SHServerResourcesResponse *)self resourcesDictionary];
    v7 = [resourcesDictionary2 objectForKeyedSubscript:@"lyrics"];
    v8 = [(SHServerLyricsResponse *)v5 initWithLyricsDictionary:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SHServerMusicVideoResponse)musicVideoResponse
{
  resourcesDictionary = [(SHServerResourcesResponse *)self resourcesDictionary];
  v4 = [resourcesDictionary objectForKeyedSubscript:@"music-videos"];

  if (v4)
  {
    v5 = [SHServerMusicVideoResponse alloc];
    resourcesDictionary2 = [(SHServerResourcesResponse *)self resourcesDictionary];
    v7 = [resourcesDictionary2 objectForKeyedSubscript:@"music-videos"];
    v8 = [(SHServerMusicVideoResponse *)v5 initWithMusicVideoDictionary:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end