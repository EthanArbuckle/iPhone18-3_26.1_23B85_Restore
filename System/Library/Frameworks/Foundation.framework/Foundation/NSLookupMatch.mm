@interface NSLookupMatch
+ (id)matchesInString:(id)string types:(unint64_t)types range:(_NSRange)range;
- (NSLookupMatch)initWithType:(unint64_t)type range:(_NSRange)range score:(double)score;
- (_NSRange)range;
- (id)description;
- (void)dealloc;
@end

@implementation NSLookupMatch

- (NSLookupMatch)initWithType:(unint64_t)type range:(_NSRange)range score:(double)score
{
  length = range.length;
  location = range.location;
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSLookupMatch;
  result = [(NSLookupMatch *)&v10 init];
  if (result)
  {
    result->_matchType = type;
    result->_range.location = location;
    result->_range.length = length;
    result->_score = score;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSLookupMatch;
  [(NSLookupMatch *)&v3 dealloc];
}

- (id)description
{
  v6.location = [(NSLookupMatch *)self range];
  v3 = NSStringFromRange(v6);
  [(NSLookupMatch *)self score];
  return [NSString stringWithFormat:@"%@ %0.2f", v3, v4];
}

+ (id)matchesInString:(id)string types:(unint64_t)types range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  typesCopy = types;
  v36[4] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (!string)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSLookupMatch.m" description:68, @"Invalid parameter: string is nil"];
  }

  v12 = [string length];
  if (location > v12)
  {
    v23 = +[NSAssertionHandler currentHandler];
    v37.location = 0;
    v37.length = v12;
    selfCopy = self;
    v25 = a2;
    v26 = NSStringFromRange(v37);
    v38.location = location;
    v38.length = length;
    v30 = v26;
    a2 = v25;
    self = selfCopy;
    [(NSAssertionHandler *)v23 handleFailureInMethod:a2 object:selfCopy file:@"NSLookupMatch.m" lineNumber:70 description:@"Invalid range: string range %@ does not contain search range %@", v30, NSStringFromRange(v38)];
  }

  v13 = location + length;
  if (location + length > v12)
  {
    v32 = +[NSAssertionHandler currentHandler];
    v39.location = 0;
    v39.length = v12;
    selfCopy2 = self;
    v28 = a2;
    v29 = NSStringFromRange(v39);
    v40.location = location;
    v40.length = length;
    v31 = v29;
    a2 = v28;
    self = selfCopy2;
    [(NSAssertionHandler *)v32 handleFailureInMethod:a2 object:selfCopy2 file:@"NSLookupMatch.m" lineNumber:71 description:@"Invalid range: string range %@ does not contain search range %@", v31, NSStringFromRange(v40)];
  }

  if (location >= 0x100)
  {
    v14 = location - 256;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 + 256;
  if (v13 + 256 >= v12)
  {
    v15 = v12;
  }

  v16 = v15 - v14;
  v17 = &unk_1812EC000;
  if ((typesCopy & 2) != 0)
  {
    selfCopy3 = self;
    v19 = a2;
    v35 = 0;
    v20 = [NSDataDetector dataDetectorWithTypes:6200 error:&v35];
    if (!v20)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:v19 file:selfCopy3 lineNumber:@"NSLookupMatch.m" description:84, @"Failed to create NSDataDetector"];
    }

    v34[0] = MEMORY[0x1E69E9820];
    v17 = &unk_1812EC000;
    v34[1] = 3221225472;
    v34[2] = __45__NSLookupMatch_matchesInString_types_range___block_invoke;
    v34[3] = &unk_1E69F4798;
    v34[5] = location;
    v34[6] = length;
    v34[4] = array;
    [(NSDataDetector *)v20 enumerateMatchesInString:string options:8 range:v14 usingBlock:v16, v34];
  }

  if (typesCopy)
  {
    v36[0] = @"TokenType";
    v36[1] = @"Language";
    v36[2] = @"NameType";
    v36[3] = @"LexicalClass";
    v21 = -[NSLinguisticTagger initWithTagSchemes:options:]([NSLinguisticTagger alloc], "initWithTagSchemes:options:", [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4], 30);
    [(NSLinguisticTagger *)v21 setString:string];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = v17[22];
    v33[2] = __45__NSLookupMatch_matchesInString_types_range___block_invoke_2;
    v33[3] = &unk_1E69F47C0;
    v33[5] = location;
    v33[6] = length;
    v33[4] = array;
    [(NSLinguisticTagger *)v21 enumerateTagsInRange:v14 scheme:v16 options:@"TokenType" usingBlock:30, v33];
  }

  [array sortUsingComparator:&__block_literal_global_18];
  return array;
}

unint64_t __45__NSLookupMatch_matchesInString_types_range___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  if (*(a1 + 48))
  {
    v7 = [a2 range];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = v10 + v9;
    if (v10 + v9 >= v7 + v8)
    {
      v12 = v7 + v8;
    }

    else
    {
      v12 = v10 + v9;
    }

    v13 = v7 > v9 || v9 >= v7 + v8;
    if (!v13 || (v9 <= v7 ? (v14 = v7 >= v11) : (v14 = 1), v9 = v7, !v14))
    {
      if (v12 != v9)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v20 = *(a1 + 40);
    v21 = [a2 range];
    if (v21 <= v20 && v21 + v22 >= v20)
    {
LABEL_15:
      v15 = [NSLookupMatch alloc];
      v16 = [a2 range];
      v18 = [(NSLookupMatch *)v15 initWithType:2 range:v16 score:v17, 0.5];
      [(NSLookupMatch *)v18 setDataDetectorResult:a2];
      [*(a1 + 32) addObject:v18];
    }
  }

  result = [a2 range];
  *a4 = result > *(a1 + 48) + *(a1 + 40);
  return result;
}

void __45__NSLookupMatch_matchesInString_types_range___block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, BOOL *a7)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  if (!v11)
  {
    if (a3 > v10 || a3 + a4 < v10)
    {
      v11 = 0;
      goto LABEL_22;
    }

LABEL_21:
    v17 = [[NSLookupMatch alloc] initWithType:1 range:a3 score:a4, 0.5];
    [*(a1 + 32) addObject:v17];

    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    goto LABEL_22;
  }

  if (v10 + v11 >= a3 + a4)
  {
    v12 = a3 + a4;
  }

  else
  {
    v12 = v10 + v11;
  }

  v13 = a3 > v10 || v10 >= a3 + a4;
  v14 = *(a1 + 40);
  if (!v13 || (v10 <= a3 ? (v15 = a3 >= v10 + v11) : (v15 = 1), v14 = a3, !v15))
  {
    if (v12 != v14)
    {
      goto LABEL_21;
    }
  }

LABEL_22:
  *a7 = a3 > v11 + v10;
}

uint64_t __45__NSLookupMatch_matchesInString_types_range___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 range];
  if (v5 < [a3 range])
  {
    return -1;
  }

  v7 = [a2 range];
  if (v7 > [a3 range])
  {
    return 1;
  }

  v8 = [a2 range];
  v10 = v8 + v9;
  v11 = [a3 range];
  if (v10 < v11 + v12)
  {
    return -1;
  }

  v13 = [a2 range];
  v15 = v13 + v14;
  v16 = [a3 range];
  return v15 > v16 + v17;
}

- (_NSRange)range
{
  dest[2] = *MEMORY[0x1E69E9840];
  objc_copyStruct(dest, &self->_range, 16, 1, 0);
  v2 = dest[0];
  v3 = dest[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end