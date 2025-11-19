@interface CPListMaker
+ (void)makeListsInChunk:(id)a3;
+ (void)makeListsInLayoutArea:(id)a3;
+ (void)makeListsInPage:(id)a3;
- (BOOL)makeListFrom:(CPListInfo *)a3;
- (CPListMaker)initWithLayoutArea:(id)a3;
- (void)dealloc;
- (void)dispose;
- (void)fetchTextLine:(id)a3;
- (void)fetchTextLinesInColumn:(id)a3;
- (void)finalize;
- (void)makeListItemFrom:(CPListInfo *)a3 stopAt:(unsigned int)a4;
- (void)makeLists;
- (void)makeListsInColumn:(id)a3;
@end

@implementation CPListMaker

- (void)makeLists
{
  if (self->spacers)
  {
    v3 = [(CPObject *)self->area count];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      do
      {
        [(CPListMaker *)self makeListsInColumn:[(CPObject *)self->area childAtIndex:v5]];
        v5 = (v5 + 1);
      }

      while (v4 != v5);
    }
  }
}

- (void)makeListsInColumn:(id)a3
{
  [(CPListMaker *)self fetchTextLinesInColumn:a3];
  v4 = 0;
  v5 = CGRectNull;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  cf_8 = 0;
  [(CPListMaker *)self makeListFrom:&v4];
  if (cf_8)
  {
    CFRelease(cf_8);
  }
}

- (BOOL)makeListFrom:(CPListInfo *)a3
{
  LOBYTE(v5) = 0;
  var0 = a3->var0;
  v68 = var0;
  v69 = 0;
  v70 = CGRectNull;
  cf = 0;
  memset(v72, 0, 24);
  *(&v72[1] + 7) = 0;
  v72[3] = a3->var11;
  if (var0 < self->textLineCount)
  {
    v5 = 0;
    v7 = *MEMORY[0x1E695E480];
    do
    {
      v8 = self->textLines[var0];
      v9 = [v8 isListItem];
      LOBYTE(v72[2]) = v9;
      if (!v9)
      {
        goto LABEL_32;
      }

      v69 = [v8 listSpacerIndex];
      v70 = CGRectNull;
      [-[NSArray objectAtIndex:](self->spacers objectAtIndex:{v69), "getValue:", &v70}];
      v10 = v70.origin.x != INFINITY;
      if (v70.origin.y == INFINITY)
      {
        v10 = 0;
      }

      LOBYTE(v72[2]) = v10;
      if (v10 && ((v11 = [v8 firstWord], v12 = objc_msgSend(v8, "charSequence"), v11) ? (v13 = v12 == 0) : (v13 = 1), v13 ? (v14 = 0) : (v14 = 1), (LOBYTE(v72[2]) = v14, !v13) && (v15 = v12, Mutable = CFStringCreateMutable(v7, v11[1]), LOBYTE(v72[2]) = Mutable != 0, Mutable)))
      {
        v17 = Mutable;
        v18 = *v11;
        v19 = v11[1];
        if (v18 < v19 + v18)
        {
          do
          {
            chars[0] = *([v15 charAtIndex:v18] + 72);
            CFStringAppendCharacters(v17, chars, 1);
            v18 = (v18 + 1);
            --v19;
          }

          while (v19);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        cf = v17;
        CFRetain(v17);
        CFRelease(v17);
        if (v69 == a3->var1)
        {
          if (a3->var8)
          {
            Length = CFStringGetLength(cf);
            v21.length = a3->var5;
            var6 = a3->var6;
            v23 = var6 + LODWORD(v21.length);
            if (LODWORD(v21.length) && Length > v23)
            {
              v21.location = 0;
              v24 = CFStringCreateWithSubstring(v7, a3->var3, v21);
              HasPrefix = CFStringHasPrefix(cf, v24);
              CFRelease(v24);
              if (HasPrefix)
              {
                var6 = a3->var6;
LABEL_69:
                if (!var6 || (v42 = CFStringGetLength(a3->var3), v73.length = a3->var6, v73.location = (v42 - LODWORD(v73.length)), v43 = CFStringCreateWithSubstring(v7, a3->var3, v73), HasSuffix = CFStringHasSuffix(cf, v43), CFRelease(v43), HasSuffix))
                {
                  var5 = a3->var5;
                  if (*&a3->var5)
                  {
                    v74.length = CFStringGetLength(a3->var3) - (a3->var5 + a3->var6);
                    v74.location = var5;
                    v46 = CFStringCreateWithSubstring(v7, a3->var3, v74);
                    v75.length = CFStringGetLength(cf) - (a3->var5 + a3->var6);
                    v75.location = var5;
                    v47 = CFStringCreateWithSubstring(v7, cf, v75);
                  }

                  else
                  {
                    v46 = CFRetain(a3->var3);
                    v47 = CFRetain(cf);
                  }

                  v48 = v47;
                  var4 = a3->var4;
                  if (!var4)
                  {
                    v50 = CFStringCompare(v46, v47, 0) == kCFCompareEqualTo;
                    goto LABEL_79;
                  }

                  if (CPOrdinalLexerTypedStringToInt(v47, var4, &v72[1] + 1))
                  {
                    v50 = HIDWORD(v72[1]) == a3->var7 + 1;
LABEL_79:
                    v52 = v50;
LABEL_82:
                    CFRelease(v48);
                    CFRelease(v46);
                    if (v52)
                    {
                      [(CPListMaker *)self makeListItemFrom:a3 stopAt:v68];
                      v72[0] = *&a3->var4;
                      LODWORD(v72[1]) = a3->var6;
                      CPListInfoCopy(&v68, a3);
                      v5 = 1;
                      a3->var9 = 1;
                      goto LABEL_99;
                    }
                  }

                  else
                  {
                    v53 = a3->var4;
                    if (v53 == 4)
                    {
                      v54 = 6;
                    }

                    else
                    {
                      v54 = 0;
                    }

                    if (v53 == 3)
                    {
                      v55 = 5;
                    }

                    else
                    {
                      v55 = v54;
                    }

                    if (v55)
                    {
                      *chars = 0;
                      if (CPOrdinalLexerTypedStringToInt(v48, v55, &v72[1] + 1) && CPOrdinalLexerTypedStringToInt(v46, v55, chars) && (v56 = *chars, HIDWORD(v72[1]) == *chars + 1))
                      {
                        a3->var4 = v55;
                        a3->var7 = v56;
                        v52 = 1;
                      }

                      else
                      {
                        v52 = 0;
                      }

                      goto LABEL_82;
                    }

                    CFRelease(v48);
                    CFRelease(v46);
                  }
                }
              }
            }

            else if (Length > v23)
            {
              goto LABEL_69;
            }

LABEL_98:
            a3->var10 = 1;
            goto LABEL_99;
          }

LABEL_40:
          alloc = v7;
          v33 = cf;
          v34 = CFStringGetLength(cf);
          do
          {
            v35 = v34;
            if (v34-- < 1)
            {
              v72[0] = 0;
              v72[1] = 0;
LABEL_67:
              v7 = alloc;
              goto LABEL_77;
            }

            CharacterAtIndex = CFStringGetCharacterAtIndex(v33, v34);
            CharacterType = CPOrdinalLexerGetCharacterType(CharacterAtIndex);
          }

          while (!CharacterType);
          v59 = v5;
          if (CharacterType == 2)
          {
            v39 = 1;
          }

          else
          {
            v39 = CharacterType;
          }

          if (v34)
          {
            v40 = v35 - 2;
            while (1)
            {
              v41 = v34;
              while (1)
              {
                v34 = v40;
                CharacterAtIndex = CFStringGetCharacterAtIndex(v33, v40);
                if (((*(&CPOrdinalLexerTestCharacterType + v39))() & 1) == 0)
                {
                  break;
                }

                v40 = v34 - 1;
                v41 = v34;
                if (!v34)
                {
                  goto LABEL_61;
                }
              }

              if (v39 == 4)
              {
                if ((CharacterAtIndex - 65) >= 0x1A)
                {
LABEL_107:
                  v35 -= v41;
                  goto LABEL_65;
                }

                v39 = 6;
              }

              else
              {
                if (v39 != 3)
                {
                  v35 -= v41;
                  if (v39 == 1)
                  {
                    CharacterAtIndex = CFStringGetCharacterAtIndex(v33, v41);
                    goto LABEL_62;
                  }

                  goto LABEL_65;
                }

                if ((CharacterAtIndex - 97) > 0x19)
                {
                  goto LABEL_107;
                }

                v39 = 5;
              }

              v40 = v34 - 1;
              if (!v34)
              {
                v41 = 0;
                goto LABEL_65;
              }
            }
          }

LABEL_61:
          v41 = 0;
          if (v39 == 1)
          {
LABEL_62:
            if (CharacterAtIndex == 48)
            {
              v39 = 2;
            }

            else
            {
              v39 = 1;
            }
          }

LABEL_65:
          v72[0] = __PAIR64__(v41, v39);
          LODWORD(v72[1]) = CFStringGetLength(cf) - (v41 + v35);
          if (!*(v72 + 4))
          {
            LODWORD(v72[0]) = CPOrdinalLexerStringToInt(cf, &v72[1] + 1);
            v5 = v59;
            goto LABEL_67;
          }

          v7 = alloc;
          v76.location = v41;
          v76.length = v35;
          v51 = CFStringCreateWithSubstring(alloc, cf, v76);
          LODWORD(v72[0]) = CPOrdinalLexerStringToInt(v51, &v72[1] + 1);
          CFRelease(v51);
          v5 = v59;
LABEL_77:
          CPListInfoCopy(&v68, a3);
          goto LABEL_99;
        }

        if (!a3->var8)
        {
          goto LABEL_40;
        }

        if (v70.origin.x + v70.size.width <= a3->var2.origin.x + a3->var2.size.width)
        {
          goto LABEL_98;
        }

        list = self->list;
        self->list = 0;
        *chars = v68;
        v62 = 0;
        v63 = CGRectNull;
        v65 = 0;
        v66 = 0uLL;
        v64 = 0;
        v67 = a3;
        *(&v66 + 7) = 0;
        v32 = [(CPListMaker *)self makeListFrom:chars];

        self->list = list;
        if (!v32)
        {
          a3->var10 = 1;
        }

        v68 = *chars;
        if (v64)
        {
          CFRelease(v64);
        }
      }

      else
      {
LABEL_32:
        if (a3->var4)
        {
          [v8 bounds];
          if (v26 == INFINITY || v27 == INFINITY)
          {
            goto LABEL_98;
          }

          if (a3->var2.origin.x > v26)
          {
            goto LABEL_98;
          }

          y = a3->var2.origin.y;
          if (y > v27 + v28 || y + a3->var2.size.height < v27)
          {
            goto LABEL_98;
          }
        }
      }

LABEL_99:
      if (a3->var10)
      {
        if (a3->var9)
        {
          [(CPListMaker *)self makeListItemFrom:a3 stopAt:v68];
          a3->var9 = 0;
        }

        if (a3->var11)
        {
          break;
        }

        a3->var4 = 0;
        v57 = (__PAIR64__(v68, a3->var0) - v68) >> 32;
        a3->var8 = 0;
        a3->var10 = 0;
      }

      else
      {
        v57 = v68;
      }

      var0 = v57 + 1;
      v68 = var0;
    }

    while (var0 < self->textLineCount);
  }

  if (a3->var9)
  {
    [(CPListMaker *)self makeListItemFrom:a3 stopAt:v68];
    a3->var9 = 0;
  }

  if (v5 && v68 > a3->var0)
  {
    a3->var0 = v68 - 1;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

- (void)makeListItemFrom:(CPListInfo *)a3 stopAt:(unsigned int)a4
{
  var0 = a3->var0;
  if (var0 < a4)
  {
    v8 = self->textLines[var0];
    v9 = [v8 parent];
    if (v9)
    {
      v10 = v9;
      if (v8 != [v9 firstChild])
      {
        v10 = splitParagraphAtTextLine(v10, v8, 0);
      }

      v18 = objc_alloc_init(CPParagraphListItem);
      [(CPParagraphListItem *)v18 setNumber:a3->var7];
      if (!a3->var9)
      {

        v11 = objc_alloc_init(CPList);
        self->list = v11;
        [(CPList *)v11 setSpacer:a3->var2.origin.x, a3->var2.origin.y, a3->var2.size.width, a3->var2.size.height];
        [(CPList *)self->list setType:a3->var4];
        [(CPList *)self->list setOrdinalPrefixLength:a3->var5];
        [(CPList *)self->list setOrdinalSuffixLength:a3->var6];
      }

      if (![(CPList *)self->list containsParagraph:v10])
      {
        [(CPParagraphListItem *)v18 addParagraph:v10];
      }

      v12 = a3->var0 + 1;
      if (v12 < a4)
      {
        v13 = ~a3->var0 + a4;
        v14 = v12;
        do
        {
          v8 = self->textLines[v14];
          v15 = [v8 parent];
          if (v15 != v10 && v15 != 0)
          {
            v17 = v15;
            if (![(CPList *)self->list containsParagraph:v15])
            {
              [(CPParagraphListItem *)v18 addParagraph:v17];
            }

            v10 = v17;
          }

          ++v14;
          --v13;
        }

        while (v13);
      }

      if ([(CPParagraphListItem *)v18 paragraphCount])
      {
        [(CPList *)self->list addItem:v18];
      }

      if (v8 != [v10 lastChild])
      {
        splitParagraphAtTextLine(v10, v8, 1u);
      }
    }
  }
}

- (void)fetchTextLinesInColumn:(id)a3
{
  textLines = self->textLines;
  if (textLines)
  {
    free(textLines);
  }

  self->textLineCount = 0;
  v6 = [a3 countOfFirstDescendantsOfClass:objc_opt_class()];
  if (v6)
  {
    v7 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
    self->textLines = v7;
    if (v7)
    {

      [a3 map:sel_fetchTextLine_ target:self];
    }
  }

  else
  {
    self->textLines = 0;
  }
}

- (void)fetchTextLine:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textLines = self->textLines;
    textLineCount = self->textLineCount;
    self->textLineCount = textLineCount + 1;
    textLines[textLineCount] = a3;
  }

  else
  {

    [a3 map:sel_fetchTextLine_ target:self];
  }
}

- (void)dealloc
{
  [(CPListMaker *)self dispose];

  v3.receiver = self;
  v3.super_class = CPListMaker;
  [(CPListMaker *)&v3 dealloc];
}

- (void)finalize
{
  [(CPListMaker *)self dispose];
  v3.receiver = self;
  v3.super_class = CPListMaker;
  [(CPListMaker *)&v3 finalize];
}

- (void)dispose
{
  textLines = self->textLines;
  if (textLines)
  {
    free(textLines);
    self->textLines = 0;
  }
}

- (CPListMaker)initWithLayoutArea:(id)a3
{
  v6.receiver = self;
  v6.super_class = CPListMaker;
  v4 = [(CPListMaker *)&v6 init];
  if (v4)
  {
    v4->area = a3;
    v4->spacers = [objc_msgSend(a3 ancestorOfClass:{objc_opt_class()), "spacers"}];
  }

  return v4;
}

+ (void)makeListsInPage:(id)a3
{
  v4 = objc_opt_class();

  [a3 map:sel_makeListsInChunk_ target:v4];
}

+ (void)makeListsInChunk:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [CPListMaker makeListsInLayoutArea:a3];
  }

  else
  {
    v4 = objc_opt_class();

    [a3 map:sel_makeListsInChunk_ target:v4];
  }
}

+ (void)makeListsInLayoutArea:(id)a3
{
  v3 = [[CPListMaker alloc] initWithLayoutArea:a3];
  [(CPListMaker *)v3 makeLists];
}

@end