@interface NSPinyinString
+ (id)alternativesForInputString:(id)a3;
+ (id)prefixesForInputString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSPinyinString)initWithCoder:(id)a3;
- (NSPinyinString)initWithString:(id)a3 syllableCount:(unint64_t)a4 lastSyllableIsPartial:(BOOL)a5 score:(unint64_t)a6 replacementCount:(unint64_t)a7 transpositionCount:(unint64_t)a8 insertionCount:(unint64_t)a9 deletionCount:(unint64_t)a10 indexOfFirstModification:(unint64_t)a11 rangeCount:(unint64_t)a12 ranges:(_NSRange *)a13;
- (_NSRange)nonPinyinRangeAtIndex:(unint64_t)a3;
- (id)description;
- (id)nonPinyinIndexSet;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSPinyinString

- (NSPinyinString)initWithString:(id)a3 syllableCount:(unint64_t)a4 lastSyllableIsPartial:(BOOL)a5 score:(unint64_t)a6 replacementCount:(unint64_t)a7 transpositionCount:(unint64_t)a8 insertionCount:(unint64_t)a9 deletionCount:(unint64_t)a10 indexOfFirstModification:(unint64_t)a11 rangeCount:(unint64_t)a12 ranges:(_NSRange *)a13
{
  v23 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = NSPinyinString;
  v19 = [(NSString *)&v22 init];
  v19->_string = [a3 copy];
  v19->_syllableCount = a4;
  v19->_lastSyllableIsPartial = a5;
  v19->_score = a6;
  v19->_replacementCount = a7;
  v19->_transpositionCount = a8;
  v19->_insertionCount = a9;
  v19->_deletionCount = a10;
  v19->_firstModificationIndex = a11;
  v19->_rangeCount = a12;
  if (a12)
  {
    v20 = malloc_type_malloc(16 * a12, 0x1000040451B5BE8uLL);
    v19->_ranges = v20;
    memmove(v20, a13, 16 * v19->_rangeCount);
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

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
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

    v13 = -[NSString isEqualToString:](self->_string, "isEqualToString:", [a3 string]);
    if (!v13)
    {
      return v13;
    }

    syllableCount = self->_syllableCount;
    if (syllableCount != [a3 syllableCount] || (lastSyllableIsPartial = self->_lastSyllableIsPartial, lastSyllableIsPartial != objc_msgSend(a3, "lastSyllableIsPartial")) || (score = self->_score, score != objc_msgSend(a3, "score")) || (rangeCount = self->_rangeCount, rangeCount != objc_msgSend(a3, "numberOfNonPinyinRanges")) || (replacementCount = self->_replacementCount, replacementCount != objc_msgSend(a3, "numberOfReplacements")) || (transpositionCount = self->_transpositionCount, transpositionCount != objc_msgSend(a3, "numberOfTranspositions")) || (insertionCount = self->_insertionCount, insertionCount != objc_msgSend(a3, "numberOfInsertions")) || (deletionCount = self->_deletionCount, deletionCount != objc_msgSend(a3, "numberOfDeletions")) || (firstModificationIndex = self->_firstModificationIndex, firstModificationIndex != objc_msgSend(a3, "indexOfFirstModification")))
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
        v28 = v24 == [a3 nonPinyinRangeAtIndex:v23] && v26 == v27;
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
  v4 = [(NSPinyinString *)self numberOfNonPinyinRanges];
  if (v4)
  {
    v5 = v4;
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
  v4 = [(NSPinyinString *)self nonPinyinIndexSet];
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
  [v4 enumerateRangesUsingBlock:v8];
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

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ requires keyed coding", objc_opt_class()), 0}];
    objc_exception_throw(v10);
  }

  v5 = [(NSPinyinString *)self numberOfNonPinyinRanges];
  [a3 encodeObject:-[NSPinyinString string](self forKey:{"string"), @"NSString"}];
  [a3 encodeInt32:-[NSPinyinString syllableCount](self forKey:{"syllableCount"), @"NSSyllableCount"}];
  [a3 encodeBool:-[NSPinyinString lastSyllableIsPartial](self forKey:{"lastSyllableIsPartial"), @"NSLastSyllableIsPartial"}];
  [a3 encodeInt32:v5 forKey:@"NSRangeCount"];
  [a3 encodeInt32:-[NSPinyinString score](self forKey:{"score"), @"NSScore"}];
  [a3 encodeInt32:-[NSPinyinString numberOfReplacements](self forKey:{"numberOfReplacements"), @"NSReplacementCount"}];
  [a3 encodeInt32:-[NSPinyinString numberOfTranspositions](self forKey:{"numberOfTranspositions"), @"NSTranspositionCount"}];
  [a3 encodeInt32:-[NSPinyinString numberOfInsertions](self forKey:{"numberOfInsertions"), @"NSInsertionCount"}];
  [a3 encodeInt32:-[NSPinyinString numberOfDeletions](self forKey:{"numberOfDeletions"), @"NSDeletionCount"}];
  [a3 encodeInt32:-[NSPinyinString indexOfFirstModification](self forKey:{"indexOfFirstModification"), @"NSModificationIndex"}];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    for (i = 0; i != v5; ++i)
    {
      v8 = [(NSPinyinString *)self nonPinyinRangeAtIndex:i];
      [v6 addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:", v8, v9)}];
    }

    [a3 encodeObject:v6 forKey:@"NSRanges"];
  }
}

- (NSPinyinString)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ requires keyed coding", objc_opt_class()), 0}];
    objc_exception_throw(v23);
  }

  v4 = [a3 decodeObjectForKey:@"NSString"];
  v5 = [a3 decodeInt32ForKey:@"NSSyllableCount"];
  v6 = [a3 decodeBoolForKey:@"NSLastSyllableIsPartial"];
  v7 = [a3 decodeInt32ForKey:@"NSRangeCount"];
  v8 = [a3 decodeInt32ForKey:@"NSScore"];
  v9 = [a3 decodeInt32ForKey:@"NSReplacementCount"];
  v10 = [a3 decodeInt32ForKey:@"NSTranspositionCount"];
  v11 = [a3 decodeInt32ForKey:@"NSInsertionCount"];
  v12 = [a3 decodeInt32ForKey:@"NSDeletionCount"];
  v13 = [a3 decodeInt32ForKey:@"NSModificationIndex"];
  if (!v7)
  {
    return [(NSPinyinString *)self initWithString:v4 syllableCount:v5 lastSyllableIsPartial:v6 score:v8 replacementCount:v9 transpositionCount:v10 insertionCount:v11 deletionCount:v12 indexOfFirstModification:v13 rangeCount:0 ranges:0];
  }

  v24 = v13;
  v25 = v12;
  v26 = v6;
  v27 = v5;
  v14 = v7;
  v15 = [a3 decodeObjectForKey:@"NSRanges"];
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

- (_NSRange)nonPinyinRangeAtIndex:(unint64_t)a3
{
  rangeCount = self->_rangeCount;
  if (rangeCount <= a3)
  {
    v9 = [NSString stringWithFormat:@"index %lu count %lu", a3, rangeCount, v3, v4];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0]);
  }

  v6 = &self->_ranges[a3];
  location = v6->location;
  length = v6->length;
  result.length = length;
  result.location = location;
  return result;
}

+ (id)alternativesForInputString:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a1 _alternativesForInputString:a3];
}

+ (id)prefixesForInputString:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a1 _prefixesForInputString:a3];
}

@end