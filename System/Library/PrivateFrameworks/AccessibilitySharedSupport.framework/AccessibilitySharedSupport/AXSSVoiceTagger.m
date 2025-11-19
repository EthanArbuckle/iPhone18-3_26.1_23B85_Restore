@interface AXSSVoiceTagger
+ (id)_currentLineContentForTag:(id)a3 inTags:(id)a4;
+ (id)_primaryDialectForTag:(id)a3 inTags:(id)a4;
+ (id)markupVoiceTagForAttributedString:(id)a3 preferredLangauge:(id)a4;
+ (id)voiceTagsForContent:(id)a3 preferredLangauge:(id)a4;
@end

@implementation AXSSVoiceTagger

+ (id)voiceTagsForContent:(id)a3 preferredLangauge:(id)a4
{
  v6 = a3;
  v7 = a4;
  v41 = objc_opt_new();
  v42 = v6;
  v8 = [AXSSLanguageTagger languageTagsForContent:v6];
  v9 = +[AXSSLanguageManager shared];
  v39 = v7;
  v10 = [v9 dialectForLanguageID:v7];

  v43 = v10;
  if ([v8 count])
  {
    location = 0;
    length = 0;
    v13 = 0;
    v14 = 0;
    v15 = v10 != 0;
    v40 = a1;
    v44 = v8;
    while (1)
    {
      v16 = [v8 objectAtIndexedSubscript:v14];
      if (v15)
      {
        v17 = [a1 _currentLineContentForTag:v16 inTags:v8];
        v18 = [v43 canSpeakString:v17];
        if (v18)
        {
          if (v13)
          {
            v19 = [a1 _createVoiceTagWithDialect:v13 range:location content:length createdFromNewline:{v42, 0}];
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

      v22 = [a1 _primaryDialectForTag:v16 inTags:v8];
      if ([v13 isEqual:v22] & 1) != 0 || (objc_msgSend(v13, "isEqual:", v43))
      {
        v23 = 1;
      }

      else
      {
        v24 = [v16 dialect];
        v23 = [v13 isEqual:v24];
      }

      v25 = [v16 taggedString];
      v26 = [v13 canSpeakString:v25];

      if (!v13)
      {
        break;
      }

      a1 = v40;
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

      v30 = [v40 _createVoiceTagWithDialect:v13 range:location content:length createdFromNewline:{v42, 0}];
      [v41 addObject:v30];

      v31 = [v16 dialect];

      location = [v16 taggedRange];
      length = v32;
      v15 = 1;
      v13 = v31;
      v8 = v44;
LABEL_23:
      if ([v16 createdFromNewline])
      {
        v15 = 1;
        v36 = [a1 _createVoiceTagWithDialect:v13 range:location content:length createdFromNewline:{v42, 1}];
        [v41 addObject:v36];

        v13 = 0;
      }

      if (++v14 >= [v8 count])
      {
        goto LABEL_28;
      }
    }

    v27 = [v16 content];
    v28 = [v22 canSpeakString:v27];

    a1 = v40;
    if (v28)
    {
      v29 = v22;
    }

    else
    {
      v29 = [v16 dialect];
    }

    v13 = v29;
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

+ (id)markupVoiceTagForAttributedString:(id)a3 preferredLangauge:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v6];
  v9 = [v6 string];
  v24 = v7;
  v10 = [a1 voiceTagsForContent:v9 preferredLangauge:v7];

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
        v17 = [v16 dialect];
        v18 = [v17 voiceIdentifier];
        v19 = [v16 taggedRange];
        [v8 addAttribute:@"AXVoiceIdentifier" value:v18 range:{v19, v20}];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v21 = [v8 copy];
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)_currentLineContentForTag:(id)a3 inTags:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = [v5 taggedString];
  v7 = [v5 content];
  v8 = [v5 content];
  v9 = [v8 length];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__AXSSVoiceTagger__currentLineContentForTag_inTags___block_invoke;
  v13[3] = &unk_1E8134F70;
  v10 = v5;
  v14 = v10;
  v15 = &v16;
  [v7 enumerateSubstringsInRange:0 options:v9 usingBlock:{4, v13}];

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

+ (id)_primaryDialectForTag:(id)a3 inTags:(id)a4
{
  v4 = [a1 _currentLineContentForTag:a3 inTags:a4];
  v5 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = [AXSSLanguageTagger primaryLanguageForContent:v6];
  v8 = +[AXSSLanguageManager shared];
  v9 = [v8 dialectForLanguageID:v7];

  return v9;
}

@end