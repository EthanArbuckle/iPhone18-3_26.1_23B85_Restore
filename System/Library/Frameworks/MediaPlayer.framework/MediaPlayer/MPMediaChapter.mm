@interface MPMediaChapter
- (MPMediaChapter)initWithCoder:(id)a3;
- (MPMediaLibraryArtworkDataSource)artworkDataSource;
- (id)artworkCatalog;
- (id)description;
- (id)title;
- (id)value;
- (int64_t)_sortByChapterIndex:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPMediaChapter

- (id)artworkCatalog
{
  v3 = [(MPMediaChapter *)self artworkDataSource];
  v4 = [MPArtworkCatalog alloc];
  v5 = [(MPMediaChapter *)self artworkRequest];
  v6 = [(MPArtworkCatalog *)v4 initWithToken:v5 dataSource:v3];

  if ([v3 areRepresentationsAvailableForCatalog:v6])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_sortByChapterIndex:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaChapter *)self indexInChaptersWithAnyType];
  if (v5 >= [v4 indexInChaptersWithAnyType])
  {
    v7 = [(MPMediaChapter *)self indexInChaptersWithAnyType];
    v6 = v7 > [v4 indexInChaptersWithAnyType];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (MPMediaLibraryArtworkDataSource)artworkDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_artworkDataSource);

  return WeakRetained;
}

- (id)title
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = self->_value;
  }

  else
  {
    value = 0;
  }

  return value;
}

- (id)value
{
  valueLoader = self->_valueLoader;
  if (valueLoader)
  {
    v4 = valueLoader[2](valueLoader, a2);
  }

  else
  {
    v4 = self->_value;
  }

  return v4;
}

- (MPMediaChapter)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [(MPMediaChapter *)self init];
    if (v5)
    {
      v6 = [v4 valueForKey:@"MPChapterIndex"];

      if (v6)
      {
        v7 = [v4 decodeIntegerForKey:@"MPChapterIndex"];
        v5->_indexInChaptersWithAnyType = v7;
      }

      else
      {
        v5->_indexInChaptersWithAnyType = [v4 decodeIntegerForKey:@"MPIndexInChaptersOfAnyType"];
        v7 = [v4 decodeIntegerForKey:@"MPIndexInChaptersOfSameType"];
      }

      v5->_indexInChaptersWithSameType = v7;
      v5->_chapterType = [v4 decodeIntegerForKey:@"MPChapterType"];
      [v4 decodeDoubleForKey:@"MPPlaybackDuration"];
      v5->_playbackDuration = v9;
      [v4 decodeDoubleForKey:@"MPPlaybackTime"];
      v5->_playbackTime = v10;
      v11 = [v4 decodeObjectForKey:@"MPValue"];
      value = v5->_value;
      v5->_value = v11;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:@"only keyed archiving is supported"];
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    [v4 encodeInteger:self->_indexInChaptersWithAnyType forKey:@"MPIndexInChaptersOfAnyType"];
    [v4 encodeInteger:self->_indexInChaptersWithSameType forKey:@"MPIndexInChaptersOfSameType"];
    [v4 encodeInteger:self->_chapterType forKey:@"MPChapterType"];
    [v4 encodeDouble:@"MPPlaybackDuration" forKey:self->_playbackDuration];
    [v4 encodeDouble:@"MPPlaybackTime" forKey:self->_playbackTime];
    if ([self->_value conformsToProtocol:&unk_1F150E840])
    {
      [v4 encodeObject:self->_value forKey:@"MPValue"];
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4B8] format:@"only keyed archiving is supported"];
  }
}

- (id)description
{
  v16 = *MEMORY[0x1E69E9840];
  v14[0] = xmmword_1E7678708;
  v14[1] = *off_1E7678718;
  v15 = @"urlDescription";
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPMediaChapter *)self indexInChaptersWithAnyType];
  [(MPMediaChapter *)self playbackTime];
  v7 = v6;
  [(MPMediaChapter *)self playbackTime];
  v9 = v8;
  [(MPMediaChapter *)self playbackDuration];
  v11 = [v3 stringWithFormat:@"<%@: %p> chapter %lu, time = range = [%.2f, %.2f], %@ = %@", v4, self, v5, v7, v9 + v10, *(v14 + -[MPMediaChapter chapterType](self, "chapterType")), self->_value];
  for (i = 32; i != -8; i -= 8)
  {
  }

  return v11;
}

@end