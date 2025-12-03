@interface MPStoreLyricsSnippetURLComponents
- (MPStoreLyricsSnippetURLComponents)initWithSong:(id)song language:(id)language startTime:(double)time endTime:(double)endTime;
- (MPStoreLyricsSnippetURLComponents)initWithURL:(id)l;
- (id)signatureWithCountryCode:(id)code adamID:(id)d startTime:(id)time endTime:(id)endTime language:(id)language;
- (void)URLWithAdditionalParameters:(id)parameters completion:(id)completion;
@end

@implementation MPStoreLyricsSnippetURLComponents

- (id)signatureWithCountryCode:(id)code adamID:(id)d startTime:(id)time endTime:(id)endTime language:(id)language
{
  language = [MEMORY[0x1E696AEC0] stringWithFormat:@"lyrics%@%@%@%@%@", code, d, time, endTime, language];
  v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:20];
  CC_SHA1([language UTF8String], objc_msgSend(language, "length"), objc_msgSend(v8, "mutableBytes"));
  [v8 setLength:16];
  fd3fa4R8(3, [v8 mutableBytes]);
  v9 = [v8 base64EncodedStringWithOptions:0];

  return v9;
}

- (void)URLWithAdditionalParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x1E69E4618]);
  activeAccount = [MEMORY[0x1E69E4680] activeAccount];
  v10 = [v8 initWithIdentity:activeAccount];

  mEMORY[0x1E69E4658] = [MEMORY[0x1E69E4658] sharedBagProvider];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__MPStoreLyricsSnippetURLComponents_URLWithAdditionalParameters_completion___block_invoke;
  v14[3] = &unk_1E767D258;
  v15 = parametersCopy;
  v16 = completionCopy;
  v14[4] = self;
  v12 = parametersCopy;
  v13 = completionCopy;
  [mEMORY[0x1E69E4658] getBagForRequestContext:v10 withCompletionHandler:v14];
}

void __76__MPStoreLyricsSnippetURLComponents_URLWithAdditionalParameters_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v71[0] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [v5 stringForBagKey:*MEMORY[0x1E69E42E0]];
    if (v7)
    {
      v8 = [v6 dictionaryForBagKey:*MEMORY[0x1E69E4320]];
      v59 = v8;
      if (v8)
      {
        v9 = [v8 ic_stringValueForKey:@"lyricsSnippetShareSignaturePrefix"];
        v10 = v9;
        v11 = @"2.v1.";
        if (v9)
        {
          v11 = v9;
        }

        v65 = v11;
      }

      else
      {
        v65 = &stru_1F149ECA8;
      }

      v61 = v6;
      v12 = objc_opt_new();
      [v12 setScheme:@"https"];
      [v12 setHost:@"music.apple.com"];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@/lyrics/%lld", v7, objc_msgSend(*(a1 + 32), "songAdamID")];
      v58 = v12;
      [v12 setPath:v13];

      v14 = MEMORY[0x1E696AF60];
      v15 = MEMORY[0x1E696AEC0];
      [*(a1 + 32) startTime];
      v17 = [v15 stringWithFormat:@"%.03f", v16];
      v64 = [v14 queryItemWithName:@"ts" value:v17];

      v18 = MEMORY[0x1E696AF60];
      v19 = MEMORY[0x1E696AEC0];
      [*(a1 + 32) endTime];
      v21 = [v19 stringWithFormat:@"%.03f", v20];
      v63 = [v18 queryItemWithName:@"te" value:v21];

      v22 = MEMORY[0x1E696AF60];
      v23 = [*(a1 + 32) language];
      v62 = [v22 queryItemWithName:@"l" value:v23];

      v24 = *(a1 + 32);
      quot = [v24 songAdamID];
      if (quot)
      {
        v26 = quot;
        v27 = v7;
        v28 = v71 + 1;
        do
        {
          v29 = lldiv(quot, 10);
          quot = v29.quot;
          if (v29.rem >= 0)
          {
            LOBYTE(v30) = v29.rem;
          }

          else
          {
            v30 = -v29.rem;
          }

          *(v28 - 2) = v30 + 48;
          v31 = (v28 - 2);
          --v28;
        }

        while (v29.quot);
        if (v26 < 0)
        {
          *(v28 - 2) = 45;
          v31 = (v28 - 2);
        }

        v32 = CFStringCreateWithBytes(0, v31, v71 - v31, 0x8000100u, 0);
        v7 = v27;
      }

      else
      {
        v32 = @"0";
      }

      v33 = [v64 value];
      v34 = [v63 value];
      v35 = [*(a1 + 32) language];
      v60 = v7;
      v36 = [v24 signatureWithCountryCode:v7 adamID:v32 startTime:v33 endTime:v34 language:v35];

      v37 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
      v38 = [v37 mutableCopy];

      [v38 removeCharactersInString:{@":/?#[]@!$&'()*+, ;="}];
      v57 = v38;
      v39 = [v36 stringByAddingPercentEncodingWithAllowedCharacters:v38];

      v40 = MEMORY[0x1E696AF60];
      v56 = v39;
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v65, v39];
      v42 = [v40 queryItemWithName:@"tk" value:v41];

      v43 = objc_opt_new();
      [v43 addObject:v64];
      [v43 addObject:v63];
      [v43 addObject:v62];
      v55 = v42;
      [v43 addObject:v42];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v44 = [*(a1 + 40) keyEnumerator];
      v45 = [v44 countByEnumeratingWithState:&v66 objects:v70 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v67;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v67 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v66 + 1) + 8 * i);
            v50 = MEMORY[0x1E696AF60];
            v51 = [*(a1 + 40) objectForKeyedSubscript:v49];
            v52 = [v50 queryItemWithName:v49 value:v51];

            [v43 addObject:v52];
          }

          v46 = [v44 countByEnumeratingWithState:&v66 objects:v70 count:16];
        }

        while (v46);
      }

      [v58 setPercentEncodedQueryItems:v43];
      v53 = *(a1 + 48);
      v54 = [v58 URL];
      (*(v53 + 16))(v53, v54);

      v7 = v60;
      v6 = v61;
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (MPStoreLyricsSnippetURLComponents)initWithSong:(id)song language:(id)language startTime:(double)time endTime:(double)endTime
{
  songCopy = song;
  languageCopy = language;
  v18.receiver = self;
  v18.super_class = MPStoreLyricsSnippetURLComponents;
  v12 = [(MPStoreLyricsSnippetURLComponents *)&v18 init];
  v13 = v12;
  if (v12 && (objc_storeStrong(&v12->_language, language), v13->_startTime = time, v13->_endTime = endTime, [songCopy identifiers], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "preferredStoreStringIdentifierForPersonID:", 0), v15 = objc_claimAutoreleasedReturnValue(), v13->_songAdamID = objc_msgSend(v15, "integerValue"), v15, v14, !v13->_songAdamID))
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  return v16;
}

- (MPStoreLyricsSnippetURLComponents)initWithURL:(id)l
{
  v65 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v63.receiver = self;
  v63.super_class = MPStoreLyricsSnippetURLComponents;
  v5 = [(MPStoreLyricsSnippetURLComponents *)&v63 init];
  if (!v5)
  {
    goto LABEL_43;
  }

  absoluteString = [lCopy absoluteString];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https?://%@/(?<countryCode>\\w{2})/lyrics/(?<adamID>[0-9]+)", @"music.apple.com"];
  v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v7 options:1 error:0];
  v9 = [v8 firstMatchInString:absoluteString options:0 range:{0, objc_msgSend(absoluteString, "length")}];
  v10 = v9;
  if (!v9 || ((v11 = [v9 rangeWithName:@"adamID"], v13 = v12, v14 = objc_msgSend(v10, "rangeWithName:", @"countryCode"), v11 != 0x7FFFFFFFFFFFFFFFLL) ? (v16 = v14 == 0x7FFFFFFFFFFFFFFFLL) : (v16 = 1), v16))
  {

    goto LABEL_9;
  }

  v18 = v14;
  v19 = v15;
  v51 = v10;
  v52 = v8;
  v53 = v7;
  v55 = v5;
  v50 = [absoluteString substringWithRange:{v11, v13}];
  v54 = absoluteString;
  v49 = [absoluteString substringWithRange:{v18, v19}];
  v56 = lCopy;
  [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v48 = v62 = 0u;
  queryItems = [v48 queryItems];
  v21 = [queryItems countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (!v21)
  {
    v23 = 0;
    v24 = 0;
    v57 = 0;
    v58 = 0;
    goto LABEL_28;
  }

  v22 = v21;
  v23 = 0;
  v24 = 0;
  v57 = 0;
  v58 = 0;
  v25 = *v60;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v60 != v25)
      {
        objc_enumerationMutation(queryItems);
      }

      v27 = *(*(&v59 + 1) + 8 * i);
      name = [v27 name];
      v29 = [name isEqualToString:@"ts"];

      if (v29)
      {
        value = [v27 value];
        v31 = v23;
        v23 = value;
      }

      else
      {
        name2 = [v27 name];
        v33 = [name2 isEqualToString:@"te"];

        if (v33)
        {
          value2 = [v27 value];
          v31 = v24;
          v24 = value2;
        }

        else
        {
          name3 = [v27 name];
          v36 = [name3 isEqualToString:@"l"];

          if (v36)
          {
            value3 = [v27 value];
            v31 = v58;
            v58 = value3;
          }

          else
          {
            name4 = [v27 name];
            v39 = [name4 isEqualToString:@"tk"];

            if (!v39)
            {
              continue;
            }

            value4 = [v27 value];
            v31 = v57;
            v57 = value4;
          }
        }
      }
    }

    v22 = [queryItems countByEnumeratingWithState:&v59 objects:v64 count:16];
  }

  while (v22);
LABEL_28:

  if (v23)
  {
    v41 = v24 == 0;
  }

  else
  {
    v41 = 1;
  }

  v43 = v41 || v58 == 0 || v57 == 0;
  v44 = !v43;
  v5 = v55;
  if (!v43)
  {
    [v23 doubleValue];
    v55->_startTime = v45;
    [v24 doubleValue];
    v55->_endTime = v46;
    v55->_songAdamID = [v50 integerValue];
    objc_storeStrong(&v55->_language, v58);
    objc_storeStrong(&v55->_signature, v57);
    objc_storeStrong(&v55->_countryCode, v49);
  }

  lCopy = v56;
  if (v44)
  {
LABEL_43:
    v17 = v5;
    goto LABEL_44;
  }

LABEL_9:
  v17 = 0;
LABEL_44:

  return v17;
}

@end