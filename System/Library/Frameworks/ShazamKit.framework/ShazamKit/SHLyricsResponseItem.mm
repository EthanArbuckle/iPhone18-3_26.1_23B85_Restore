@interface SHLyricsResponseItem
- (NSArray)lyricLines;
- (NSArray)songwriters;
- (NSArray)staticLyrics;
- (SHLyricsResponseItem)initWithLyricsItemDictionary:(id)dictionary;
- (id)snippetFromOffset:(double)offset;
- (void)parseTTMLFromLyricsItemDictionary:(id)dictionary;
@end

@implementation SHLyricsResponseItem

- (SHLyricsResponseItem)initWithLyricsItemDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = SHLyricsResponseItem;
  v5 = [(SHLyricsResponseItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SHLyricsResponseItem *)v5 parseTTMLFromLyricsItemDictionary:dictionaryCopy];
  }

  return v6;
}

- (NSArray)lyricLines
{
  songInfo = [(SHLyricsResponseItem *)self songInfo];
  lyricsLines = [songInfo lyricsLines];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [lyricsLines count]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  songInfo2 = [(SHLyricsResponseItem *)self songInfo];
  lyricsLines2 = [songInfo2 lyricsLines];

  v8 = [lyricsLines2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(lyricsLines2);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        lyricsText = [v12 lyricsText];
        string = [lyricsText string];
        [v12 startTime];
        v15 = [SHLyricLine lyricLineWithText:string offset:?];
        [v5 addObject:v15];
      }

      v9 = [lyricsLines2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [v5 copy];

  return v16;
}

- (NSArray)staticLyrics
{
  songInfo = [(SHLyricsResponseItem *)self songInfo];
  lyricsLines = [songInfo lyricsLines];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [lyricsLines count]);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  songInfo2 = [(SHLyricsResponseItem *)self songInfo];
  lyricsLines2 = [songInfo2 lyricsLines];

  v8 = [lyricsLines2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(lyricsLines2);
        }

        lyricsText = [*(*(&v16 + 1) + 8 * i) lyricsText];
        string = [lyricsText string];
        [v5 addObject:string];
      }

      v9 = [lyricsLines2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [v5 copy];

  return v14;
}

- (NSArray)songwriters
{
  songInfo = [(SHLyricsResponseItem *)self songInfo];
  songwriters = [songInfo songwriters];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [songwriters count]);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  songInfo2 = [(SHLyricsResponseItem *)self songInfo];
  songwriters2 = [songInfo2 songwriters];

  v8 = [songwriters2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(songwriters2);
        }

        name = [*(*(&v15 + 1) + 8 * i) name];
        [v5 addObject:name];
      }

      v9 = [songwriters2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v5 copy];

  return v13;
}

- (void)parseTTMLFromLyricsItemDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"attributes"];
  v5 = [v4 objectForKeyedSubscript:@"ttml"];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ttml"];
    v7 = [v6 dataUsingEncoding:4];

    v8 = [[MSVLyricsTTMLParser alloc] initWithTTMLData:v7];
    v13 = 0;
    v9 = [v8 parseWithError:&v13];
    v10 = v13;
    songInfo = self->_songInfo;
    self->_songInfo = v9;

    if (v10)
    {
      v12 = sh_log_object();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to parse lyrics song info %@", buf, 0xCu);
      }
    }
  }
}

- (id)snippetFromOffset:(double)offset
{
  songInfo = [(SHLyricsResponseItem *)self songInfo];
  firstObject = [songInfo lyricsLineStartingBeforeTimeOffset:offset];

  if (firstObject)
  {
    v7 = objc_alloc_init(NSMutableString);
  }

  else
  {
    songInfo2 = [(SHLyricsResponseItem *)self songInfo];
    lyricsLines = [songInfo2 lyricsLines];
    firstObject = [lyricsLines firstObject];

    v7 = objc_alloc_init(NSMutableString);
    if (!firstObject)
    {
      goto LABEL_7;
    }
  }

  do
  {
    v10 = [v7 length];
    lyricsText = [firstObject lyricsText];
    v12 = &v10[[lyricsText length]];

    if (v12 > 0x95)
    {
      break;
    }

    lyricsText2 = [firstObject lyricsText];
    string = [lyricsText2 string];
    v15 = [NSString stringWithFormat:@"%@\n", string];
    [v7 appendString:v15];

    nextLine = [firstObject nextLine];

    firstObject = nextLine;
  }

  while (nextLine);

LABEL_7:
  v17 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v18 = [v7 stringByTrimmingCharactersInSet:v17];
  v19 = [v18 copy];

  return v19;
}

@end