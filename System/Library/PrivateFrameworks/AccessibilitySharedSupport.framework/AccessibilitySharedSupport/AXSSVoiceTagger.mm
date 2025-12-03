@interface AXSSVoiceTagger
+ (id)_currentLineContentForTag:(id)tag inTags:(id)tags;
+ (id)_primaryDialectForTag:(id)tag inTags:(id)tags;
+ (id)markupVoiceTagForAttributedString:(id)string preferredLangauge:(id)langauge;
+ (id)voiceTagsForContent:(id)content preferredLangauge:(id)langauge;
@end

@implementation AXSSVoiceTagger

+ (id)voiceTagsForContent:(id)content preferredLangauge:(id)langauge
{
  contentCopy = content;
  langaugeCopy = langauge;
  v41 = objc_opt_new();
  v42 = contentCopy;
  v8 = [AXSSLanguageTagger languageTagsForContent:contentCopy];
  v9 = +[AXSSLanguageManager shared];
  v39 = langaugeCopy;
  v10 = [v9 dialectForLanguageID:langaugeCopy];

  v43 = v10;
  if ([v8 count])
  {
    location = 0;
    length = 0;
    v13 = 0;
    v14 = 0;
    v15 = v10 != 0;
    selfCopy = self;
    v44 = v8;
    while (1)
    {
      v16 = [v8 objectAtIndexedSubscript:v14];
      if (v15)
      {
        v17 = [self _currentLineContentForTag:v16 inTags:v8];
        v18 = [v43 canSpeakString:v17];
        if (v18)
        {
          if (v13)
          {
            v19 = [self _createVoiceTagWithDialect:v13 range:location content:length createdFromNewline:{v42, 0}];
            [v41 addObject:v19];
          }

          v20 = v43;

          location = [v16 taggedRange];
          length = v21;
          v13 = v20;
          v8 = v44;
        }

        v15 = v18 ^ 1;
      }

      else
      {
        v15 = 0;
      }

      v22 = [self _primaryDialectForTag:v16 inTags:v8];
      if ([v13 isEqual:v22] & 1) != 0 || (objc_msgSend(v13, "isEqual:", v43))
      {
        v23 = 1;
      }

      else
      {
        dialect = [v16 dialect];
        v23 = [v13 isEqual:dialect];
      }

      taggedString = [v16 taggedString];
      v26 = [v13 canSpeakString:taggedString];

      if (!v13)
      {
        break;
      }

      self = selfCopy;
      if ((v26 & v23) == 1)
      {
        v8 = v44;
LABEL_22:
        v46.location = [v16 taggedRange];
        v46.length = v34;
        v45.location = location;
        v45.length = length;
        v35 = NSUnionRange(v45, v46);
        location = v35.location;
        length = v35.length;
        goto LABEL_23;
      }

      v30 = [selfCopy _createVoiceTagWithDialect:v13 range:location content:length createdFromNewline:{v42, 0}];
      [v41 addObject:v30];

      dialect2 = [v16 dialect];

      location = [v16 taggedRange];
      length = v32;
      v15 = 1;
      v13 = dialect2;
      v8 = v44;
LABEL_23:
      if ([v16 createdFromNewline])
      {
        v15 = 1;
        v36 = [self _createVoiceTagWithDialect:v13 range:location content:length createdFromNewline:{v42, 1}];
        [v41 addObject:v36];

        v13 = 0;
      }

      if (++v14 >= [v8 count])
      {
        goto LABEL_28;
      }
    }

    content = [v16 content];
    v28 = [v22 canSpeakString:content];

    self = selfCopy;
    if (v28)
    {
      dialect3 = v22;
    }

    else
    {
      dialect3 = [v16 dialect];
    }

    v13 = dialect3;
    v8 = v44;
    location = [v16 taggedRange];
    length = v33;
    goto LABEL_22;
  }

  v13 = 0;
LABEL_28:
  v37 = v41;

  return v41;
}

+ (id)markupVoiceTagForAttributedString:(id)string preferredLangauge:(id)langauge
{
  v30 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  langaugeCopy = langauge;
  v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:stringCopy];
  string = [stringCopy string];
  v24 = langaugeCopy;
  v10 = [self voiceTagsForContent:string preferredLangauge:langaugeCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        dialect = [v16 dialect];
        voiceIdentifier = [dialect voiceIdentifier];
        taggedRange = [v16 taggedRange];
        [v8 addAttribute:@"AXVoiceIdentifier" value:voiceIdentifier range:{taggedRange, v20}];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v21 = [v8 copy];
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)_currentLineContentForTag:(id)tag inTags:(id)tags
{
  tagCopy = tag;
  tagsCopy = tags;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  taggedString = [tagCopy taggedString];
  content = [tagCopy content];
  content2 = [tagCopy content];
  v9 = [content2 length];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__AXSSVoiceTagger__currentLineContentForTag_inTags___block_invoke;
  v13[3] = &unk_1E8134F70;
  v10 = tagCopy;
  v14 = v10;
  v15 = &v16;
  [content enumerateSubstringsInRange:0 options:v9 usingBlock:{4, v13}];

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

void __52__AXSSVoiceTagger__currentLineContentForTag_inTags___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v16 = a2;
  v19.location = [*(a1 + 32) taggedRange];
  v19.length = v12;
  v18.location = a3;
  v18.length = a4;
  v13 = NSIntersectionRange(v18, v19);
  if (v13.location == [*(a1 + 32) taggedRange] && v13.length == v14)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a7 = 1;
  }
}

+ (id)_primaryDialectForTag:(id)tag inTags:(id)tags
{
  v4 = [self _currentLineContentForTag:tag inTags:tags];
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:newlineCharacterSet];

  v7 = [AXSSLanguageTagger primaryLanguageForContent:v6];
  v8 = +[AXSSLanguageManager shared];
  v9 = [v8 dialectForLanguageID:v7];

  return v9;
}

@end