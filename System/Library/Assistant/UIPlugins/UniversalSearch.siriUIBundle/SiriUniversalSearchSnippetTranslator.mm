@interface SiriUniversalSearchSnippetTranslator
- (id)_descriptionsForSARichTextItems:(id)a3;
- (id)_inlinedImageForImageResource:(id)a3;
- (id)_inlinedImagesForImageResources:(id)a3;
- (id)_universalSearchCardForSAUniversalSearchCard:(id)a3;
- (id)_universalSearchResultForSAUniversalSearchResult:(id)a3;
- (id)universalSearchResultsForSnippet:(id)a3 error:(id *)a4;
- (void)_configureCardSection:(id)a3 withAceCardSection:(id)a4;
- (void)_configureRichTitleCardSection:(id)a3 withAceCardSection:(id)a4;
- (void)_configureRowCardSection:(id)a3 withAceCardSection:(id)a4;
- (void)_configureTitleCardSection:(id)a3 withAceCardSection:(id)a4;
@end

@implementation SiriUniversalSearchSnippetTranslator

- (id)universalSearchResultsForSnippet:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v6;
    v7 = [v6 sections];
    v8 = +[NSMutableArray array];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    v35 = v8;
    if (!v9)
    {
      goto LABEL_32;
    }

    v10 = v9;
    v37 = *v47;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v47 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        v13 = objc_alloc_init(SiriUSSection);
        v14 = [v12 sectionTitle];
        [(SiriUSSection *)v13 setTitle:v14];

        v15 = [v12 punchOut];
        [(SiriUSSection *)v13 setPunchOut:v15];

        [v8 addObject:v13];
        v16 = [v12 genericResults];

        if (v16)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v17 = [v12 genericResults];
          v18 = [v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v43;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v43 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [(SiriUniversalSearchSnippetTranslator *)self _universalSearchResultForSAUniversalSearchResult:*(*(&v42 + 1) + 8 * j)];
                if (v22)
                {
                  [(SiriUSSection *)v13 addResult:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
            }

            while (v19);
          }
        }

        else
        {
          v23 = [v12 cardResults];

          if (!v23)
          {
            goto LABEL_30;
          }

          v17 = +[NSMutableArray array];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v24 = [v12 cardResults];
          v25 = [v24 countByEnumeratingWithState:&v38 objects:v50 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v39;
            do
            {
              for (k = 0; k != v26; k = k + 1)
              {
                if (*v39 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = [(SiriUniversalSearchSnippetTranslator *)self _universalSearchCardForSAUniversalSearchCard:*(*(&v38 + 1) + 8 * k)];
                if (v29)
                {
                  [v17 addObject:v29];
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v38 objects:v50 count:16];
            }

            while (v26);
          }

          v30 = [v17 lastObject];
          [v30 setSeparatorStyle:1];
          v31 = objc_alloc_init(SFSearchResult);
          v32 = objc_alloc_init(SFCard);
          [v32 setCardSections:v17];
          [v31 setCard:v32];
          [(SiriUSSection *)v13 addResult:v31];

          v8 = v35;
        }

LABEL_30:
      }

      v10 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (!v10)
      {
LABEL_32:

        v6 = v34;
        goto LABEL_36;
      }
    }
  }

  if (a4)
  {
    [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:100 userInfo:0];
    *a4 = v35 = 0;
  }

  else
  {
    v35 = 0;
  }

LABEL_36:

  return v35;
}

- (id)_universalSearchResultForSAUniversalSearchResult:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SFSearchResult);
  v6 = [v4 actionButton];
  v7 = [v6 punchOutUri];

  if (v7)
  {
    v8 = [SFPunchout punchoutWithURL:v7];
    [v5 setPunchout:v8];
  }

  v9 = [v4 descriptions];
  v10 = [(SiriUniversalSearchSnippetTranslator *)self _descriptionsForSARichTextItems:v9];
  [v5 setDescriptions:v10];

  v11 = [v4 footnote];
  [v5 setFootnote:v11];

  v12 = [v4 thumbnail];
  v13 = [(SiriUniversalSearchSnippetTranslator *)self _inlinedImageForImageResource:v12];
  [v5 setThumbnail:v13];

  v14 = [v4 title];
  v15 = [SFText textWithString:v14];
  [v5 setTitle:v15];

  v16 = [v4 secondaryTitle];
  [v5 setSecondaryTitle:v16];

  [v5 setIsCentered:{objc_msgSend(v4, "centered")}];
  v17 = [v4 titleMaxLines];

  if (v17)
  {
    v18 = [v5 title];
    v19 = [v4 titleMaxLines];
    [v18 setMaxLines:{objc_msgSend(v19, "integerValue")}];
  }

  return v5;
}

- (id)_universalSearchCardForSAUniversalSearchCard:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(SFRichTitleCardSection);
    [(SiriUniversalSearchSnippetTranslator *)self _configureRichTitleCardSection:v5 withAceCardSection:v4];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5)
    {
      v5 = objc_alloc_init(SFTitleCardSection);
    }

    [(SiriUniversalSearchSnippetTranslator *)self _configureTitleCardSection:v5 withAceCardSection:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5)
    {
      v5 = objc_alloc_init(SFRowCardSection);
    }

    [(SiriUniversalSearchSnippetTranslator *)self _configureRowCardSection:v5 withAceCardSection:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5)
    {
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "[SiriUniversalSearchSnippetTranslator _universalSearchCardForSAUniversalSearchCard:]";
        v10 = 2112;
        v11 = v4;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s Server sent invalid card section, SAUSCardSection is a base class: %@", &v8, 0x16u);
      }
    }

    [(SiriUniversalSearchSnippetTranslator *)self _configureCardSection:v5 withAceCardSection:v4];
  }

  return v5;
}

- (void)_configureRichTitleCardSection:(id)a3 withAceCardSection:(id)a4
{
  v6 = a4;
  v12 = a3;
  v7 = [v6 subtitle];
  [v12 setSubtitle:v7];

  v8 = [v6 contentRatingText];
  [v12 setRatingText:v8];

  v9 = [v6 titleImage];
  v10 = [(SiriUniversalSearchSnippetTranslator *)self _inlinedImageForImageResource:v9];
  [v12 setTitleImage:v10];

  v11 = [v6 centered];
  [v12 setIsCentered:v11];
}

- (void)_configureTitleCardSection:(id)a3 withAceCardSection:(id)a4
{
  v5 = a3;
  v6 = [a4 title];
  [v5 setTitle:v6];
}

- (void)_configureRowCardSection:(id)a3 withAceCardSection:(id)a4
{
  v6 = a4;
  v14 = a3;
  v7 = [v6 image];
  v8 = [(SiriUniversalSearchSnippetTranslator *)self _inlinedImageForImageResource:v7];
  [v14 setImage:v8];

  v9 = [v6 leftText];
  v10 = [SFRichText textWithString:v9];
  [v14 setLeadingText:v10];

  v11 = [v6 rightText];
  v12 = [SFRichText textWithString:v11];
  [v14 setTrailingText:v12];

  v13 = [v6 imageIsRightAligned];
  [v14 setImageIsRightAligned:v13];
}

- (void)_configureCardSection:(id)a3 withAceCardSection:(id)a4
{
  v5 = a3;
  v6 = [a4 punchOut];
  v7 = [v6 punchOutUri];

  if (v7)
  {
    v8 = [SFPunchout punchoutWithURL:v7];
    v10 = v8;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [v5 setPunchoutOptions:v9];
  }
}

- (id)_descriptionsForSARichTextItems:(id)a3
{
  v3 = a3;
  v28 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v3;
  v29 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v29)
  {
    v27 = *v38;
    do
    {
      v4 = 0;
      do
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v4;
        v5 = *(*(&v37 + 1) + 8 * v4);
        v6 = objc_alloc_init(SFRichText);
        v7 = [v5 contentAdvisory];
        [v6 setContentAdvisory:v7];

        v8 = [v5 moreGlyphs];
        v9 = [(SiriUniversalSearchSnippetTranslator *)self _inlinedImagesForImageResources:v8];
        [v6 setIcons:v9];

        v10 = [v5 textMaxlines];

        if (v10)
        {
          v11 = [v5 textMaxlines];
          [v6 setMaxLines:{objc_msgSend(v11, "integerValue")}];
        }

        v30 = v6;
        v12 = +[NSMutableArray array];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v13 = [v5 markupList];
        v14 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v34;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v34 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v33 + 1) + 8 * i);
              v19 = objc_alloc_init(SFFormattedText);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = [v18 imageResource];
                v21 = [(SiriUniversalSearchSnippetTranslator *)self _inlinedImageForImageResource:v20];
                [v19 setGlyph:v21];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = v18;
                  v23 = [v22 text];
                  [v19 setText:v23];

                  v24 = [v22 emphasized];
                  [v19 setIsBold:v24];
                }
              }

              [v12 addObject:v19];
            }

            v15 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v15);
        }

        [v30 setFormattedTextPieces:v12];
        [v28 addObject:v30];

        v4 = v31 + 1;
      }

      while ((v31 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v29);
  }

  return v28;
}

- (id)_inlinedImagesForImageResources:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SiriUniversalSearchSnippetTranslator *)self _inlinedImageForImageResource:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_inlinedImageForImageResource:(id)a3
{
  if (a3)
  {
    v3 = [a3 imageData];
    v4 = [SFImage imageWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end