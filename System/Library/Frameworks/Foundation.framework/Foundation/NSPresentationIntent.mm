@interface NSPresentationIntent
+ (NSPresentationIntent)blockQuoteIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent;
+ (NSPresentationIntent)codeBlockIntentWithIdentity:(NSInteger)identity languageHint:(NSString *)languageHint nestedInsideIntent:(NSPresentationIntent *)parent;
+ (NSPresentationIntent)headerIntentWithIdentity:(NSInteger)identity level:(NSInteger)level nestedInsideIntent:(NSPresentationIntent *)parent;
+ (NSPresentationIntent)listItemIntentWithIdentity:(NSInteger)identity ordinal:(NSInteger)ordinal nestedInsideIntent:(NSPresentationIntent *)parent;
+ (NSPresentationIntent)orderedListIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent;
+ (NSPresentationIntent)paragraphIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent;
+ (NSPresentationIntent)tableCellIntentWithIdentity:(NSInteger)identity column:(NSInteger)column nestedInsideIntent:(NSPresentationIntent *)parent;
+ (NSPresentationIntent)tableHeaderRowIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent;
+ (NSPresentationIntent)tableIntentWithIdentity:(NSInteger)identity columnCount:(NSInteger)columnCount alignments:(NSArray *)alignments nestedInsideIntent:(NSPresentationIntent *)parent;
+ (NSPresentationIntent)tableRowIntentWithIdentity:(NSInteger)identity row:(NSInteger)row nestedInsideIntent:(NSPresentationIntent *)parent;
+ (NSPresentationIntent)thematicBreakIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent;
+ (NSPresentationIntent)unorderedListIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToPresentationIntent:(NSPresentationIntent *)other;
- (NSPresentationIntent)initWithCoder:(id)coder;
- (id)_init;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSPresentationIntent

- (id)_init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSPresentationIntent;
  return [(NSPresentationIntent *)&v3 init];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSPresentationIntent;
  [(NSPresentationIntent *)&v3 dealloc];
}

- (unint64_t)hash
{
  v3 = self->_intentKind ^ self->_identity ^ self->_headerLevel ^ self->_indentationLevel;
  v4 = v3 ^ [(NSString *)self->_languageHint hash]^ self->_columnCount;
  columnAlignments = self->_columnAlignments;
  v6 = self->_ordinal ^ self->_column ^ self->_row;
  return v4 ^ v6 ^ [(NSArray *)columnAlignments hash];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  identity = [equal identity];
  if (identity != [(NSPresentationIntent *)self identity])
  {
    return 0;
  }

  return [(NSPresentationIntent *)self isEquivalentToPresentationIntent:equal];
}

- (BOOL)isEquivalentToPresentationIntent:(NSPresentationIntent *)other
{
  if (other == self)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  languageHint = [(NSPresentationIntent *)self languageHint];
  languageHint2 = [(NSPresentationIntent *)other languageHint];
  parentIntent = [(NSPresentationIntent *)self parentIntent];
  parentIntent2 = [(NSPresentationIntent *)other parentIntent];
  columnAlignments = [(NSPresentationIntent *)self columnAlignments];
  columnAlignments2 = [(NSPresentationIntent *)other columnAlignments];
  intentKind = [(NSPresentationIntent *)other intentKind];
  if (intentKind != [(NSPresentationIntent *)self intentKind])
  {
    goto LABEL_18;
  }

  if (languageHint != languageHint2)
  {
    v12 = [(NSString *)languageHint isEqual:languageHint2];
    if (!v12)
    {
      return v12;
    }
  }

  headerLevel = [(NSPresentationIntent *)other headerLevel];
  if (headerLevel != [(NSPresentationIntent *)self headerLevel])
  {
    goto LABEL_18;
  }

  ordinal = [(NSPresentationIntent *)other ordinal];
  if (ordinal != [(NSPresentationIntent *)self ordinal])
  {
    goto LABEL_18;
  }

  indentationLevel = [(NSPresentationIntent *)other indentationLevel];
  if (indentationLevel != [(NSPresentationIntent *)self indentationLevel])
  {
    goto LABEL_18;
  }

  if (columnAlignments != columnAlignments2)
  {
    v12 = [(NSArray *)[(NSPresentationIntent *)other columnAlignments] isEqual:[(NSPresentationIntent *)self columnAlignments]];
    if (!v12)
    {
      return v12;
    }
  }

  columnCount = [(NSPresentationIntent *)other columnCount];
  if (columnCount != [(NSPresentationIntent *)self columnCount]|| (v17 = [(NSPresentationIntent *)other column], v17 != [(NSPresentationIntent *)self column]) || (v18 = [(NSPresentationIntent *)other row], v18 != [(NSPresentationIntent *)self row]))
  {
LABEL_18:
    LOBYTE(v12) = 0;
    return v12;
  }

  if (parentIntent == parentIntent2)
  {
LABEL_19:
    LOBYTE(v12) = 1;
    return v12;
  }

  LOBYTE(v12) = [(NSPresentationIntent *)parentIntent isEquivalentToPresentationIntent:parentIntent2];
  return v12;
}

- (id)description
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)[NSMutableString alloc] initWithFormat:@"<%@ %p>", objc_opt_class(), self];
  [(NSMutableString *)v3 appendString:@": "];
  v4 = self->_intentKind - 1;
  if (v4 > 0xA)
  {
    v5 = @"Paragraph";
  }

  else
  {
    v5 = off_1E69F9B48[v4];
  }

  [(NSMutableString *)v3 appendString:v5];
  [(NSMutableString *)v3 appendFormat:@" (id %ld)", self->_identity];
  intentKind = self->_intentKind;
  if (intentKind > 4)
  {
    if (intentKind > 9)
    {
      if (intentKind == 10)
      {
        row = self->_row;
      }

      else
      {
        if (intentKind != 11)
        {
          goto LABEL_39;
        }

        row = self->_column;
      }

      [(NSMutableString *)v3 appendFormat:@" # %ld", row, v22];
    }

    else if (intentKind == 5)
    {
      languageHint = self->_languageHint;
      if (!languageHint)
      {
        languageHint = @"no hint";
      }

      [(NSMutableString *)v3 appendFormat:@" (%@) indent %ld", languageHint, self->_indentationLevel];
    }

    else if (intentKind == 8)
    {
      columnAlignments = self->_columnAlignments;
      columnCount = self->_columnCount;
      if (columnAlignments && [(NSArray *)self->_columnAlignments count])
      {
        v23 = columnCount;
        v24 = v3;
        array = [MEMORY[0x1E695DF70] array];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = [(NSArray *)columnAlignments countByEnumeratingWithState:&v26 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v27;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v27 != v12)
              {
                objc_enumerationMutation(columnAlignments);
              }

              v14 = *(*(&v26 + 1) + 8 * i);
              v15 = [v14 isEqual:&off_1EEF57DE8];
              v16 = @"left";
              if ((v15 & 1) == 0)
              {
                v17 = [v14 isEqual:&off_1EEF57E00];
                v16 = @"right";
                if ((v17 & 1) == 0)
                {
                  if ([v14 isEqual:&off_1EEF57E18])
                  {
                    v16 = @"center";
                  }

                  else
                  {
                    v16 = @"unknown";
                  }
                }
              }

              [array addObject:v16];
            }

            v11 = [(NSArray *)columnAlignments countByEnumeratingWithState:&v26 objects:v25 count:16];
          }

          while (v11);
        }

        v18 = [array componentsJoinedByString:{@", "}];
        v3 = v24;
        columnCount = v23;
      }

      else
      {
        v18 = @"none";
      }

      [(NSMutableString *)v3 appendFormat:@" %ld columns, alignment %@", columnCount, v18];
    }
  }

  else if ((intentKind - 2) < 2)
  {
    [(NSMutableString *)v3 appendFormat:@" indent %ld", self->_indentationLevel, v22];
  }

  else if (intentKind == 1)
  {
    [(NSMutableString *)v3 appendFormat:@" (%ld) indent %ld", self->_headerLevel, self->_indentationLevel];
  }

  else if (intentKind == 4)
  {
    [(NSMutableString *)v3 appendFormat:@" ordinal %ld, indent %ld", self->_ordinal, self->_indentationLevel];
  }

LABEL_39:
  if (self->_parentIntent)
  {
    [(NSMutableString *)v3 appendString:@"\n "];
    [(NSMutableString *)v3 appendString:[(NSPresentationIntent *)self->_parentIntent description]];
  }

  return v3;
}

- (NSPresentationIntent)initWithCoder:(id)coder
{
  v8[2] = *MEMORY[0x1E69E9840];
  _init = [(NSPresentationIntent *)self _init];
  if (_init)
  {
    _init->_intentKind = [coder decodeIntegerForKey:@"NS.intentKind"];
    _init->_parentIntent = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.parentIntent"];
    _init->_identity = [coder decodeIntegerForKey:@"NS.identity"];
    _init->_ordinal = [coder decodeIntegerForKey:@"NS.ordinal"];
    if ([coder requiresSecureCoding])
    {
      v5 = [coder decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"NS.columnAlignments"];
    }

    else
    {
      v6 = MEMORY[0x1E695DFD8];
      v8[0] = objc_opt_class();
      v8[1] = objc_opt_class();
      v5 = [coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v8, 2)), @"NS.columnAlignments"}];
    }

    _init->_columnAlignments = v5;
    _init->_columnCount = [coder decodeIntegerForKey:@"NS.columnCount"];
    _init->_headerLevel = [coder decodeIntegerForKey:@"NS.headerLevel"];
    _init->_languageHint = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.languageHint"];
    _init->_column = [coder decodeIntegerForKey:@"NS.column"];
    _init->_row = [coder decodeIntegerForKey:@"NS.row"];
    _init->_indentationLevel = [coder decodeIntegerForKey:@"NS.indentationLevel"];
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:-[NSPresentationIntent intentKind](self forKey:{"intentKind"), @"NS.intentKind"}];
  [coder encodeObject:-[NSPresentationIntent parentIntent](self forKey:{"parentIntent"), @"NS.parentIntent"}];
  [coder encodeInteger:-[NSPresentationIntent identity](self forKey:{"identity"), @"NS.identity"}];
  [coder encodeInteger:-[NSPresentationIntent ordinal](self forKey:{"ordinal"), @"NS.ordinal"}];
  [coder encodeObject:-[NSPresentationIntent columnAlignments](self forKey:{"columnAlignments"), @"NS.columnAlignments"}];
  [coder encodeInteger:-[NSPresentationIntent columnCount](self forKey:{"columnCount"), @"NS.columnCount"}];
  [coder encodeInteger:-[NSPresentationIntent headerLevel](self forKey:{"headerLevel"), @"NS.headerLevel"}];
  [coder encodeObject:-[NSPresentationIntent languageHint](self forKey:{"languageHint"), @"NS.languageHint"}];
  [coder encodeInteger:-[NSPresentationIntent column](self forKey:{"column"), @"NS.column"}];
  [coder encodeInteger:-[NSPresentationIntent row](self forKey:{"row"), @"NS.row"}];
  indentationLevel = [(NSPresentationIntent *)self indentationLevel];

  [coder encodeInteger:indentationLevel forKey:@"NS.indentationLevel"];
}

+ (NSPresentationIntent)paragraphIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent
{
  _init = [[NSPresentationIntent alloc] _init];
  _init[3] = identity;
  _init[1] = 0;
  _init[2] = parent;

  return _init;
}

+ (NSPresentationIntent)headerIntentWithIdentity:(NSInteger)identity level:(NSInteger)level nestedInsideIntent:(NSPresentationIntent *)parent
{
  _init = [[NSPresentationIntent alloc] _init];
  _init[3] = identity;
  _init[1] = 1;
  _init[7] = level;
  if (parent)
  {
    indentationLevel = [(NSPresentationIntent *)parent indentationLevel];
  }

  else
  {
    indentationLevel = 0;
  }

  _init[11] = indentationLevel;
  _init[2] = parent;

  return _init;
}

+ (NSPresentationIntent)codeBlockIntentWithIdentity:(NSInteger)identity languageHint:(NSString *)languageHint nestedInsideIntent:(NSPresentationIntent *)parent
{
  _init = [[NSPresentationIntent alloc] _init];
  _init[3] = identity;
  _init[1] = 5;
  _init[8] = [(NSString *)languageHint copy];
  if (parent)
  {
    indentationLevel = [(NSPresentationIntent *)parent indentationLevel];
  }

  else
  {
    indentationLevel = 0;
  }

  _init[11] = indentationLevel;
  _init[2] = parent;

  return _init;
}

+ (NSPresentationIntent)thematicBreakIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent
{
  _init = [[NSPresentationIntent alloc] _init];
  _init[3] = identity;
  _init[1] = 7;
  _init[2] = parent;

  return _init;
}

+ (NSPresentationIntent)orderedListIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent
{
  _init = [[NSPresentationIntent alloc] _init];
  _init[3] = identity;
  _init[1] = 2;
  if (parent)
  {
    indentationLevel = [(NSPresentationIntent *)parent indentationLevel];
  }

  else
  {
    indentationLevel = 0;
  }

  _init[11] = indentationLevel;
  _init[2] = parent;

  return _init;
}

+ (NSPresentationIntent)unorderedListIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent
{
  _init = [[NSPresentationIntent alloc] _init];
  _init[3] = identity;
  _init[1] = 3;
  if (parent)
  {
    indentationLevel = [(NSPresentationIntent *)parent indentationLevel];
  }

  else
  {
    indentationLevel = 0;
  }

  _init[11] = indentationLevel;
  _init[2] = parent;

  return _init;
}

+ (NSPresentationIntent)listItemIntentWithIdentity:(NSInteger)identity ordinal:(NSInteger)ordinal nestedInsideIntent:(NSPresentationIntent *)parent
{
  _init = [[NSPresentationIntent alloc] _init];
  _init[1] = 4;
  _init[3] = identity;
  _init[4] = ordinal;
  if (parent)
  {
    v9 = [(NSPresentationIntent *)parent indentationLevel]+ 1;
  }

  else
  {
    v9 = 0;
  }

  _init[11] = v9;
  _init[2] = parent;

  return _init;
}

+ (NSPresentationIntent)blockQuoteIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent
{
  _init = [[NSPresentationIntent alloc] _init];
  _init[3] = identity;
  _init[1] = 6;
  if (parent)
  {
    v7 = [(NSPresentationIntent *)parent indentationLevel]+ 1;
  }

  else
  {
    v7 = 0;
  }

  _init[11] = v7;
  _init[2] = parent;

  return _init;
}

+ (NSPresentationIntent)tableIntentWithIdentity:(NSInteger)identity columnCount:(NSInteger)columnCount alignments:(NSArray *)alignments nestedInsideIntent:(NSPresentationIntent *)parent
{
  if ([(NSArray *)alignments count]!= columnCount)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: column count does not match count of alignments", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v14);
  }

  _init = [[NSPresentationIntent alloc] _init];
  _init[3] = identity;
  _init[1] = 8;
  _init[2] = parent;
  _init[6] = columnCount;
  _init[5] = [(NSArray *)alignments copy];

  return _init;
}

+ (NSPresentationIntent)tableRowIntentWithIdentity:(NSInteger)identity row:(NSInteger)row nestedInsideIntent:(NSPresentationIntent *)parent
{
  _init = [[NSPresentationIntent alloc] _init];
  _init[3] = identity;
  _init[1] = 10;
  _init[10] = row;
  _init[2] = parent;

  return _init;
}

+ (NSPresentationIntent)tableHeaderRowIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent
{
  _init = [[NSPresentationIntent alloc] _init];
  _init[3] = identity;
  _init[1] = 9;
  _init[2] = parent;

  return _init;
}

+ (NSPresentationIntent)tableCellIntentWithIdentity:(NSInteger)identity column:(NSInteger)column nestedInsideIntent:(NSPresentationIntent *)parent
{
  _init = [[NSPresentationIntent alloc] _init];
  _init[3] = identity;
  _init[1] = 11;
  _init[9] = column;
  _init[2] = parent;

  return _init;
}

@end