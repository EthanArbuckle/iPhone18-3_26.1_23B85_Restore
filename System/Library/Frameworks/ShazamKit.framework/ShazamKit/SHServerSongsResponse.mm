@interface SHServerSongsResponse
- (SHServerSongsResponse)initWithSongsDictionary:(id)a3;
- (id)itemForIdentifiers:(id)a3;
@end

@implementation SHServerSongsResponse

- (SHServerSongsResponse)initWithSongsDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHServerSongsResponse;
  v6 = [(SHServerSongsResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_songsDictionary, a3);
  }

  return v7;
}

- (id)itemForIdentifiers:(id)a3
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(SHServerSongsResponse *)self songsDictionary];
        v11 = [v10 objectForKeyedSubscript:v9];

        if (v11)
        {
          v13 = [SHSongsResponseItem alloc];
          v14 = [(SHServerSongsResponse *)self songsDictionary];
          v15 = [v14 objectForKeyedSubscript:v9];
          v12 = [(SHSongsResponseItem *)v13 initWithSongItemDictionary:v15];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

@end