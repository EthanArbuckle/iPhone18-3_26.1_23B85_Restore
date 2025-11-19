@interface SHServerResourcesResponse
- (SHServerLyricsResponse)lyricsResponse;
- (SHServerMusicVideoResponse)musicVideoResponse;
- (SHServerResourcesResponse)initWithResourcesDictionary:(id)a3;
- (SHServerShazamResponse)shazamResponse;
- (SHServerSongsResponse)songsResponse;
@end

@implementation SHServerResourcesResponse

- (SHServerResourcesResponse)initWithResourcesDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHServerResourcesResponse;
  v6 = [(SHServerResourcesResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourcesDictionary, a3);
  }

  return v7;
}

- (SHServerSongsResponse)songsResponse
{
  v3 = [(SHServerResourcesResponse *)self resourcesDictionary];
  v4 = [v3 objectForKeyedSubscript:@"songs"];

  if (v4)
  {
    v5 = [SHServerSongsResponse alloc];
    v6 = [(SHServerResourcesResponse *)self resourcesDictionary];
    v7 = [v6 objectForKeyedSubscript:@"songs"];
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
  v3 = [(SHServerResourcesResponse *)self resourcesDictionary];
  v4 = [v3 objectForKeyedSubscript:@"shazam-songs"];

  if (v4)
  {
    v5 = [SHServerShazamResponse alloc];
    v6 = [(SHServerResourcesResponse *)self resourcesDictionary];
    v7 = [v6 objectForKeyedSubscript:@"shazam-songs"];
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
  v3 = [(SHServerResourcesResponse *)self resourcesDictionary];
  v4 = [v3 objectForKeyedSubscript:@"lyrics"];

  if (v4)
  {
    v5 = [SHServerLyricsResponse alloc];
    v6 = [(SHServerResourcesResponse *)self resourcesDictionary];
    v7 = [v6 objectForKeyedSubscript:@"lyrics"];
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
  v3 = [(SHServerResourcesResponse *)self resourcesDictionary];
  v4 = [v3 objectForKeyedSubscript:@"music-videos"];

  if (v4)
  {
    v5 = [SHServerMusicVideoResponse alloc];
    v6 = [(SHServerResourcesResponse *)self resourcesDictionary];
    v7 = [v6 objectForKeyedSubscript:@"music-videos"];
    v8 = [(SHServerMusicVideoResponse *)v5 initWithMusicVideoDictionary:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end