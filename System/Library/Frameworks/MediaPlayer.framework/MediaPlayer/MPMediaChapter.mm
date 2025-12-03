@interface MPMediaChapter
- (MPMediaChapter)initWithCoder:(id)coder;
- (MPMediaLibraryArtworkDataSource)artworkDataSource;
- (id)artworkCatalog;
- (id)description;
- (id)title;
- (id)value;
- (int64_t)_sortByChapterIndex:(id)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPMediaChapter

- (id)artworkCatalog
{
  artworkDataSource = [(MPMediaChapter *)self artworkDataSource];
  v4 = [MPArtworkCatalog alloc];
  artworkRequest = [(MPMediaChapter *)self artworkRequest];
  v6 = [(MPArtworkCatalog *)v4 initWithToken:artworkRequest dataSource:artworkDataSource];

  if ([artworkDataSource areRepresentationsAvailableForCatalog:v6])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_sortByChapterIndex:(id)index
{
  indexCopy = index;
  indexInChaptersWithAnyType = [(MPMediaChapter *)self indexInChaptersWithAnyType];
  if (indexInChaptersWithAnyType >= [indexCopy indexInChaptersWithAnyType])
  {
    indexInChaptersWithAnyType2 = [(MPMediaChapter *)self indexInChaptersWithAnyType];
    v6 = indexInChaptersWithAnyType2 > [indexCopy indexInChaptersWithAnyType];
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

- (MPMediaChapter)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = [(MPMediaChapter *)self init];
    if (v5)
    {
      v6 = [coderCopy valueForKey:@"MPChapterIndex"];

      if (v6)
      {
        v7 = [coderCopy decodeIntegerForKey:@"MPChapterIndex"];
        v5->_indexInChaptersWithAnyType = v7;
      }

      else
      {
        v5->_indexInChaptersWithAnyType = [coderCopy decodeIntegerForKey:@"MPIndexInChaptersOfAnyType"];
        v7 = [coderCopy decodeIntegerForKey:@"MPIndexInChaptersOfSameType"];
      }

      v5->_indexInChaptersWithSameType = v7;
      v5->_chapterType = [coderCopy decodeIntegerForKey:@"MPChapterType"];
      [coderCopy decodeDoubleForKey:@"MPPlaybackDuration"];
      v5->_playbackDuration = v9;
      [coderCopy decodeDoubleForKey:@"MPPlaybackTime"];
      v5->_playbackTime = v10;
      v11 = [coderCopy decodeObjectForKey:@"MPValue"];
      value = v5->_value;
      v5->_value = v11;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:@"only keyed archiving is supported"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    [coderCopy encodeInteger:self->_indexInChaptersWithAnyType forKey:@"MPIndexInChaptersOfAnyType"];
    [coderCopy encodeInteger:self->_indexInChaptersWithSameType forKey:@"MPIndexInChaptersOfSameType"];
    [coderCopy encodeInteger:self->_chapterType forKey:@"MPChapterType"];
    [coderCopy encodeDouble:@"MPPlaybackDuration" forKey:self->_playbackDuration];
    [coderCopy encodeDouble:@"MPPlaybackTime" forKey:self->_playbackTime];
    if ([self->_value conformsToProtocol:&unk_1F150E840])
    {
      [coderCopy encodeObject:self->_value forKey:@"MPValue"];
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
  indexInChaptersWithAnyType = [(MPMediaChapter *)self indexInChaptersWithAnyType];
  [(MPMediaChapter *)self playbackTime];
  v7 = v6;
  [(MPMediaChapter *)self playbackTime];
  v9 = v8;
  [(MPMediaChapter *)self playbackDuration];
  v11 = [v3 stringWithFormat:@"<%@: %p> chapter %lu, time = range = [%.2f, %.2f], %@ = %@", v4, self, indexInChaptersWithAnyType, v7, v9 + v10, *(v14 + -[MPMediaChapter chapterType](self, "chapterType")), self->_value];
  for (i = 32; i != -8; i -= 8)
  {
  }

  return v11;
}

@end