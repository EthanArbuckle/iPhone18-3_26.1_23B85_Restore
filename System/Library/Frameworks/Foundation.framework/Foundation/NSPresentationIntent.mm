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
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToPresentationIntent:(NSPresentationIntent *)other;
- (NSPresentationIntent)initWithCoder:(id)a3;
- (id)_init;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [a3 identity];
  if (v5 != [(NSPresentationIntent *)self identity])
  {
    return 0;
  }

  return [(NSPresentationIntent *)self isEquivalentToPresentationIntent:a3];
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

  v5 = [(NSPresentationIntent *)self languageHint];
  v6 = [(NSPresentationIntent *)other languageHint];
  v7 = [(NSPresentationIntent *)self parentIntent];
  v8 = [(NSPresentationIntent *)other parentIntent];
  v9 = [(NSPresentationIntent *)self columnAlignments];
  v10 = [(NSPresentationIntent *)other columnAlignments];
  v11 = [(NSPresentationIntent *)other intentKind];
  if (v11 != [(NSPresentationIntent *)self intentKind])
  {
    goto LABEL_18;
  }

  if (v5 != v6)
  {
    v12 = [(NSString *)v5 isEqual:v6];
    if (!v12)
    {
      return v12;
    }
  }

  v13 = [(NSPresentationIntent *)other headerLevel];
  if (v13 != [(NSPresentationIntent *)self headerLevel])
  {
    goto LABEL_18;
  }

  v14 = [(NSPresentationIntent *)other ordinal];
  if (v14 != [(NSPresentationIntent *)self ordinal])
  {
    goto LABEL_18;
  }

  v15 = [(NSPresentationIntent *)other indentationLevel];
  if (v15 != [(NSPresentationIntent *)self indentationLevel])
  {
    goto LABEL_18;
  }

  if (v9 != v10)
  {
    v12 = [(NSArray *)[(NSPresentationIntent *)other columnAlignments] isEqual:[(NSPresentationIntent *)self columnAlignments]];
    if (!v12)
    {
      return v12;
    }
  }

  v16 = [(NSPresentationIntent *)other columnCount];
  if (v16 != [(NSPresentationIntent *)self columnCount]|| (v17 = [(NSPresentationIntent *)other column], v17 != [(NSPresentationIntent *)self column]) || (v18 = [(NSPresentationIntent *)other row], v18 != [(NSPresentationIntent *)self row]))
  {
LABEL_18:
    LOBYTE(v12) = 0;
    return v12;
  }

  if (v7 == v8)
  {
LABEL_19:
    LOBYTE(v12) = 1;
    return v12;
  }

  LOBYTE(v12) = [(NSPresentationIntent *)v7 isEquivalentToPresentationIntent:v8];
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
        v9 = [MEMORY[0x1E695DF70] array];
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

              [v9 addObject:v16];
            }

            v11 = [(NSArray *)columnAlignments countByEnumeratingWithState:&v26 objects:v25 count:16];
          }

          while (v11);
        }

        v18 = [v9 componentsJoinedByString:{@", "}];
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

- (NSPresentationIntent)initWithCoder:(id)a3
{
  v8[2] = *MEMORY[0x1E69E9840];
  v4 = [(NSPresentationIntent *)self _init];
  if (v4)
  {
    v4->_intentKind = [a3 decodeIntegerForKey:@"NS.intentKind"];
    v4->_parentIntent = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.parentIntent"];
    v4->_identity = [a3 decodeIntegerForKey:@"NS.identity"];
    v4->_ordinal = [a3 decodeIntegerForKey:@"NS.ordinal"];
    if ([a3 requiresSecureCoding])
    {
      v5 = [a3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"NS.columnAlignments"];
    }

    else
    {
      v6 = MEMORY[0x1E695DFD8];
      v8[0] = objc_opt_class();
      v8[1] = objc_opt_class();
      v5 = [a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v8, 2)), @"NS.columnAlignments"}];
    }

    v4->_columnAlignments = v5;
    v4->_columnCount = [a3 decodeIntegerForKey:@"NS.columnCount"];
    v4->_headerLevel = [a3 decodeIntegerForKey:@"NS.headerLevel"];
    v4->_languageHint = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.languageHint"];
    v4->_column = [a3 decodeIntegerForKey:@"NS.column"];
    v4->_row = [a3 decodeIntegerForKey:@"NS.row"];
    v4->_indentationLevel = [a3 decodeIntegerForKey:@"NS.indentationLevel"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:-[NSPresentationIntent intentKind](self forKey:{"intentKind"), @"NS.intentKind"}];
  [a3 encodeObject:-[NSPresentationIntent parentIntent](self forKey:{"parentIntent"), @"NS.parentIntent"}];
  [a3 encodeInteger:-[NSPresentationIntent identity](self forKey:{"identity"), @"NS.identity"}];
  [a3 encodeInteger:-[NSPresentationIntent ordinal](self forKey:{"ordinal"), @"NS.ordinal"}];
  [a3 encodeObject:-[NSPresentationIntent columnAlignments](self forKey:{"columnAlignments"), @"NS.columnAlignments"}];
  [a3 encodeInteger:-[NSPresentationIntent columnCount](self forKey:{"columnCount"), @"NS.columnCount"}];
  [a3 encodeInteger:-[NSPresentationIntent headerLevel](self forKey:{"headerLevel"), @"NS.headerLevel"}];
  [a3 encodeObject:-[NSPresentationIntent languageHint](self forKey:{"languageHint"), @"NS.languageHint"}];
  [a3 encodeInteger:-[NSPresentationIntent column](self forKey:{"column"), @"NS.column"}];
  [a3 encodeInteger:-[NSPresentationIntent row](self forKey:{"row"), @"NS.row"}];
  v5 = [(NSPresentationIntent *)self indentationLevel];

  [a3 encodeInteger:v5 forKey:@"NS.indentationLevel"];
}

+ (NSPresentationIntent)paragraphIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent
{
  v6 = [[NSPresentationIntent alloc] _init];
  v6[3] = identity;
  v6[1] = 0;
  v6[2] = parent;

  return v6;
}

+ (NSPresentationIntent)headerIntentWithIdentity:(NSInteger)identity level:(NSInteger)level nestedInsideIntent:(NSPresentationIntent *)parent
{
  v8 = [[NSPresentationIntent alloc] _init];
  v8[3] = identity;
  v8[1] = 1;
  v8[7] = level;
  if (parent)
  {
    v9 = [(NSPresentationIntent *)parent indentationLevel];
  }

  else
  {
    v9 = 0;
  }

  v8[11] = v9;
  v8[2] = parent;

  return v8;
}

+ (NSPresentationIntent)codeBlockIntentWithIdentity:(NSInteger)identity languageHint:(NSString *)languageHint nestedInsideIntent:(NSPresentationIntent *)parent
{
  v8 = [[NSPresentationIntent alloc] _init];
  v8[3] = identity;
  v8[1] = 5;
  v8[8] = [(NSString *)languageHint copy];
  if (parent)
  {
    v9 = [(NSPresentationIntent *)parent indentationLevel];
  }

  else
  {
    v9 = 0;
  }

  v8[11] = v9;
  v8[2] = parent;

  return v8;
}

+ (NSPresentationIntent)thematicBreakIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent
{
  v6 = [[NSPresentationIntent alloc] _init];
  v6[3] = identity;
  v6[1] = 7;
  v6[2] = parent;

  return v6;
}

+ (NSPresentationIntent)orderedListIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent
{
  v6 = [[NSPresentationIntent alloc] _init];
  v6[3] = identity;
  v6[1] = 2;
  if (parent)
  {
    v7 = [(NSPresentationIntent *)parent indentationLevel];
  }

  else
  {
    v7 = 0;
  }

  v6[11] = v7;
  v6[2] = parent;

  return v6;
}

+ (NSPresentationIntent)unorderedListIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent
{
  v6 = [[NSPresentationIntent alloc] _init];
  v6[3] = identity;
  v6[1] = 3;
  if (parent)
  {
    v7 = [(NSPresentationIntent *)parent indentationLevel];
  }

  else
  {
    v7 = 0;
  }

  v6[11] = v7;
  v6[2] = parent;

  return v6;
}

+ (NSPresentationIntent)listItemIntentWithIdentity:(NSInteger)identity ordinal:(NSInteger)ordinal nestedInsideIntent:(NSPresentationIntent *)parent
{
  v8 = [[NSPresentationIntent alloc] _init];
  v8[1] = 4;
  v8[3] = identity;
  v8[4] = ordinal;
  if (parent)
  {
    v9 = [(NSPresentationIntent *)parent indentationLevel]+ 1;
  }

  else
  {
    v9 = 0;
  }

  v8[11] = v9;
  v8[2] = parent;

  return v8;
}

+ (NSPresentationIntent)blockQuoteIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent
{
  v6 = [[NSPresentationIntent alloc] _init];
  v6[3] = identity;
  v6[1] = 6;
  if (parent)
  {
    v7 = [(NSPresentationIntent *)parent indentationLevel]+ 1;
  }

  else
  {
    v7 = 0;
  }

  v6[11] = v7;
  v6[2] = parent;

  return v6;
}

+ (NSPresentationIntent)tableIntentWithIdentity:(NSInteger)identity columnCount:(NSInteger)columnCount alignments:(NSArray *)alignments nestedInsideIntent:(NSPresentationIntent *)parent
{
  if ([(NSArray *)alignments count]!= columnCount)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: column count does not match count of alignments", _NSMethodExceptionProem(a1, a2)), 0}];
    objc_exception_throw(v14);
  }

  v12 = [[NSPresentationIntent alloc] _init];
  v12[3] = identity;
  v12[1] = 8;
  v12[2] = parent;
  v12[6] = columnCount;
  v12[5] = [(NSArray *)alignments copy];

  return v12;
}

+ (NSPresentationIntent)tableRowIntentWithIdentity:(NSInteger)identity row:(NSInteger)row nestedInsideIntent:(NSPresentationIntent *)parent
{
  v8 = [[NSPresentationIntent alloc] _init];
  v8[3] = identity;
  v8[1] = 10;
  v8[10] = row;
  v8[2] = parent;

  return v8;
}

+ (NSPresentationIntent)tableHeaderRowIntentWithIdentity:(NSInteger)identity nestedInsideIntent:(NSPresentationIntent *)parent
{
  v6 = [[NSPresentationIntent alloc] _init];
  v6[3] = identity;
  v6[1] = 9;
  v6[2] = parent;

  return v6;
}

+ (NSPresentationIntent)tableCellIntentWithIdentity:(NSInteger)identity column:(NSInteger)column nestedInsideIntent:(NSPresentationIntent *)parent
{
  v8 = [[NSPresentationIntent alloc] _init];
  v8[3] = identity;
  v8[1] = 11;
  v8[9] = column;
  v8[2] = parent;

  return v8;
}

@end