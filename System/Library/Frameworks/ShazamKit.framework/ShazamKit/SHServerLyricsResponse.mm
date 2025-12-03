@interface SHServerLyricsResponse
- (SHServerLyricsResponse)initWithLyricsDictionary:(id)dictionary;
- (id)itemForIdentifiers:(id)identifiers;
@end

@implementation SHServerLyricsResponse

- (SHServerLyricsResponse)initWithLyricsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SHServerLyricsResponse;
  v6 = [(SHServerLyricsResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lyricsDictionary, dictionary);
  }

  return v7;
}

- (id)itemForIdentifiers:(id)identifiers
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  identifiersCopy = identifiers;
  v5 = [identifiersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        lyricsDictionary = [(SHServerLyricsResponse *)self lyricsDictionary];
        v11 = [lyricsDictionary objectForKeyedSubscript:v9];

        if (v11)
        {
          v13 = [SHLyricsResponseItem alloc];
          lyricsDictionary2 = [(SHServerLyricsResponse *)self lyricsDictionary];
          v15 = [lyricsDictionary2 objectForKeyedSubscript:v9];
          v12 = [(SHLyricsResponseItem *)v13 initWithLyricsItemDictionary:v15];

          goto LABEL_11;
        }
      }

      v6 = [identifiersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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