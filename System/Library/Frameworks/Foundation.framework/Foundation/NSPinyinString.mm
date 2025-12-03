@interface NSPinyinString
+ (id)alternativesForInputString:(id)string;
+ (id)prefixesForInputString:(id)string;
- (BOOL)isEqual:(id)equal;
- (NSPinyinString)initWithCoder:(id)coder;
- (NSPinyinString)initWithString:(id)string syllableCount:(unint64_t)count lastSyllableIsPartial:(BOOL)partial score:(unint64_t)score replacementCount:(unint64_t)replacementCount transpositionCount:(unint64_t)transpositionCount insertionCount:(unint64_t)insertionCount deletionCount:(unint64_t)self0 indexOfFirstModification:(unint64_t)self1 rangeCount:(unint64_t)self2 ranges:(_NSRange *)self3;
- (_NSRange)nonPinyinRangeAtIndex:(unint64_t)index;
- (id)description;
- (id)nonPinyinIndexSet;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSPinyinString

- (NSPinyinString)initWithString:(id)string syllableCount:(unint64_t)count lastSyllableIsPartial:(BOOL)partial score:(unint64_t)score replacementCount:(unint64_t)replacementCount transpositionCount:(unint64_t)transpositionCount insertionCount:(unint64_t)insertionCount deletionCount:(unint64_t)self0 indexOfFirstModification:(unint64_t)self1 rangeCount:(unint64_t)self2 ranges:(_NSRange *)self3
{
  v23 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = NSPinyinString;
  v19 = [(NSString *)&v22 init];
  v19->_string = [string copy];
  v19->_syllableCount = count;
  v19->_lastSyllableIsPartial = partial;
  v19->_score = score;
  v19->_replacementCount = replacementCount;
  v19->_transpositionCount = transpositionCount;
  v19->_insertionCount = insertionCount;
  v19->_deletionCount = deletionCount;
  v19->_firstModificationIndex = modification;
  v19->_rangeCount = rangeCount;
  if (rangeCount)
  {
    v20 = malloc_type_malloc(16 * rangeCount, 0x1000040451B5BE8uLL);
    v19->_ranges = v20;
    memmove(v20, ranges, 16 * v19->_rangeCount);
  }

  return v19;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  ranges = self->_ranges;
  if (ranges)
  {
    free(ranges);
  }

  v4.receiver = self;
  v4.super_class = NSPinyinString;
  [(NSPinyinString *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v30 = v8;
    v31 = v7;
    v32 = v6;
    v33 = v5;
    v34 = v4;
    v35 = v3;
    v36 = v9;
    v37 = v10;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_25;
    }

    v13 = -[NSString isEqualToString:](self->_string, "isEqualToString:", [equal string]);
    if (!v13)
    {
      return v13;
    }

    syllableCount = self->_syllableCount;
    if (syllableCount != [equal syllableCount] || (lastSyllableIsPartial = self->_lastSyllableIsPartial, lastSyllableIsPartial != objc_msgSend(equal, "lastSyllableIsPartial")) || (score = self->_score, score != objc_msgSend(equal, "score")) || (rangeCount = self->_rangeCount, rangeCount != objc_msgSend(equal, "numberOfNonPinyinRanges")) || (replacementCount = self->_replacementCount, replacementCount != objc_msgSend(equal, "numberOfReplacements")) || (transpositionCount = self->_transpositionCount, transpositionCount != objc_msgSend(equal, "numberOfTranspositions")) || (insertionCount = self->_insertionCount, insertionCount != objc_msgSend(equal, "numberOfInsertions")) || (deletionCount = self->_deletionCount, deletionCount != objc_msgSend(equal, "numberOfDeletions")) || (firstModificationIndex = self->_firstModificationIndex, firstModificationIndex != objc_msgSend(equal, "indexOfFirstModification")))
    {
LABEL_25:
      LOBYTE(v13) = 0;
      return v13;
    }

    if (self->_rangeCount)
    {
      v23 = 0;
      do
      {
        v24 = [(NSPinyinString *)self nonPinyinRangeAtIndex:v23, v30, v31, v32, v33, v34, v35, v36, v37];
        v26 = v25;
        v28 = v24 == [equal nonPinyinRangeAtIndex:v23] && v26 == v27;
        LOBYTE(v13) = v28;
        if (!v28)
        {
          break;
        }

        ++v23;
      }

      while (v23 < self->_rangeCount);
    }

    else
    {
      LOBYTE(v13) = 1;
    }
  }

  return v13;
}

- (id)nonPinyinIndexSet
{
  v3 = +[(NSIndexSet *)NSMutableIndexSet];
  numberOfNonPinyinRanges = [(NSPinyinString *)self numberOfNonPinyinRanges];
  if (numberOfNonPinyinRanges)
  {
    v5 = numberOfNonPinyinRanges;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NSPinyinString *)self nonPinyinRangeAtIndex:i];
      [(NSIndexSet *)v3 addIndexesInRange:v7, v8];
    }
  }

  return v3;
}

- (id)description
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[(NSString *)NSMutableString];
  nonPinyinIndexSet = [(NSPinyinString *)self nonPinyinIndexSet];
  v5 = [(NSPinyinString *)self length];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__NSPinyinString_description__block_invoke;
  v8[3] = &unk_1E69F6BF8;
  v8[5] = self;
  v8[6] = &v9;
  v8[4] = v3;
  [nonPinyinIndexSet enumerateRangesUsingBlock:v8];
  if (v5 > v10[3])
  {
    [(NSString *)v3 appendString:[(NSString *)self substringWithRange:?]];
  }

  v6 = [NSString stringWithFormat:@"<%@> syllables %lu last partial %d repls %lu trans %lu inserts %lu deletes %lu fmi %lu score %lu ranges %lu", v3, [(NSPinyinString *)self syllableCount], [(NSPinyinString *)self lastSyllableIsPartial], [(NSPinyinString *)self numberOfReplacements], [(NSPinyinString *)self numberOfTranspositions], [(NSPinyinString *)self numberOfInsertions], [(NSPinyinString *)self numberOfDeletions], [(NSPinyinString *)self indexOfFirstModification], [(NSPinyinString *)self score], [(NSPinyinString *)self numberOfNonPinyinRanges]];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __29__NSPinyinString_description__block_invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  if (a2 > *(*(*(result + 48) + 8) + 24))
  {
    result = [*(result + 32) appendString:{objc_msgSend(*(result + 40), "substringWithRange:")}];
  }

  if (a3)
  {
    result = [*(v5 + 32) appendFormat:@"[%@]", objc_msgSend(*(v5 + 40), "substringWithRange:", a2, a3)];
  }

  *(*(*(v5 + 48) + 8) + 24) = a2 + a3;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ requires keyed coding", objc_opt_class()), 0}];
    objc_exception_throw(v10);
  }

  numberOfNonPinyinRanges = [(NSPinyinString *)self numberOfNonPinyinRanges];
  [coder encodeObject:-[NSPinyinString string](self forKey:{"string"), @"NSString"}];
  [coder encodeInt32:-[NSPinyinString syllableCount](self forKey:{"syllableCount"), @"NSSyllableCount"}];
  [coder encodeBool:-[NSPinyinString lastSyllableIsPartial](self forKey:{"lastSyllableIsPartial"), @"NSLastSyllableIsPartial"}];
  [coder encodeInt32:numberOfNonPinyinRanges forKey:@"NSRangeCount"];
  [coder encodeInt32:-[NSPinyinString score](self forKey:{"score"), @"NSScore"}];
  [coder encodeInt32:-[NSPinyinString numberOfReplacements](self forKey:{"numberOfReplacements"), @"NSReplacementCount"}];
  [coder encodeInt32:-[NSPinyinString numberOfTranspositions](self forKey:{"numberOfTranspositions"), @"NSTranspositionCount"}];
  [coder encodeInt32:-[NSPinyinString numberOfInsertions](self forKey:{"numberOfInsertions"), @"NSInsertionCount"}];
  [coder encodeInt32:-[NSPinyinString numberOfDeletions](self forKey:{"numberOfDeletions"), @"NSDeletionCount"}];
  [coder encodeInt32:-[NSPinyinString indexOfFirstModification](self forKey:{"indexOfFirstModification"), @"NSModificationIndex"}];
  if (numberOfNonPinyinRanges)
  {
    array = [MEMORY[0x1E695DF70] array];
    for (i = 0; i != numberOfNonPinyinRanges; ++i)
    {
      v8 = [(NSPinyinString *)self nonPinyinRangeAtIndex:i];
      [array addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:", v8, v9)}];
    }

    [coder encodeObject:array forKey:@"NSRanges"];
  }
}

- (NSPinyinString)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ requires keyed coding", objc_opt_class()), 0}];
    objc_exception_throw(v23);
  }

  v4 = [coder decodeObjectForKey:@"NSString"];
  v5 = [coder decodeInt32ForKey:@"NSSyllableCount"];
  v6 = [coder decodeBoolForKey:@"NSLastSyllableIsPartial"];
  v7 = [coder decodeInt32ForKey:@"NSRangeCount"];
  v8 = [coder decodeInt32ForKey:@"NSScore"];
  v9 = [coder decodeInt32ForKey:@"NSReplacementCount"];
  v10 = [coder decodeInt32ForKey:@"NSTranspositionCount"];
  v11 = [coder decodeInt32ForKey:@"NSInsertionCount"];
  v12 = [coder decodeInt32ForKey:@"NSDeletionCount"];
  v13 = [coder decodeInt32ForKey:@"NSModificationIndex"];
  if (!v7)
  {
    return [(NSPinyinString *)self initWithString:v4 syllableCount:v5 lastSyllableIsPartial:v6 score:v8 replacementCount:v9 transpositionCount:v10 insertionCount:v11 deletionCount:v12 indexOfFirstModification:v13 rangeCount:0 ranges:0];
  }

  v24 = v13;
  v25 = v12;
  v26 = v6;
  v27 = v5;
  v14 = v7;
  v15 = [coder decodeObjectForKey:@"NSRanges"];
  if ([v15 count] != v14)
  {
    return [(NSPinyinString *)self initWithString:v4 syllableCount:v27 lastSyllableIsPartial:v6 score:v8 replacementCount:v9 transpositionCount:v10 insertionCount:v11 deletionCount:v12 indexOfFirstModification:v24 rangeCount:0 ranges:0];
  }

  v16 = malloc_type_malloc(16 * v14, 0x1000040451B5BE8uLL);
  if (!v16)
  {
    return [(NSPinyinString *)self initWithString:v4 syllableCount:v27 lastSyllableIsPartial:v6 score:v8 replacementCount:v9 transpositionCount:v10 insertionCount:v11 deletionCount:v12 indexOfFirstModification:v24 rangeCount:0 ranges:0];
  }

  v17 = v16;
  v18 = 0;
  v19 = v16 + 1;
  do
  {
    *(v19 - 1) = [objc_msgSend(v15 objectAtIndex:{v18), "rangeValue"}];
    *v19 = v20;
    ++v18;
    v19 += 2;
  }

  while (v14 != v18);
  v21 = [(NSPinyinString *)self initWithString:v4 syllableCount:v27 lastSyllableIsPartial:v26 score:v8 replacementCount:v9 transpositionCount:v10 insertionCount:v11 deletionCount:v25 indexOfFirstModification:v24 rangeCount:v14 ranges:v17];
  free(v17);
  return v21;
}

- (_NSRange)nonPinyinRangeAtIndex:(unint64_t)index
{
  rangeCount = self->_rangeCount;
  if (rangeCount <= index)
  {
    v9 = [NSString stringWithFormat:@"index %lu count %lu", index, rangeCount, v3, v4];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0]);
  }

  v6 = &self->_ranges[index];
  location = v6->location;
  length = v6->length;
  result.length = length;
  result.location = location;
  return result;
}

+ (id)alternativesForInputString:(id)string
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [self _alternativesForInputString:string];
}

+ (id)prefixesForInputString:(id)string
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [self _prefixesForInputString:string];
}

@end