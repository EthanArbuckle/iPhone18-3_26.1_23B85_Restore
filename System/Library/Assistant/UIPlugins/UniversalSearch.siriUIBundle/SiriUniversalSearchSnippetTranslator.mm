@interface SiriUniversalSearchSnippetTranslator
- (id)_descriptionsForSARichTextItems:(id)items;
- (id)_inlinedImageForImageResource:(id)resource;
- (id)_inlinedImagesForImageResources:(id)resources;
- (id)_universalSearchCardForSAUniversalSearchCard:(id)card;
- (id)_universalSearchResultForSAUniversalSearchResult:(id)result;
- (id)universalSearchResultsForSnippet:(id)snippet error:(id *)error;
- (void)_configureCardSection:(id)section withAceCardSection:(id)cardSection;
- (void)_configureRichTitleCardSection:(id)section withAceCardSection:(id)cardSection;
- (void)_configureRowCardSection:(id)section withAceCardSection:(id)cardSection;
- (void)_configureTitleCardSection:(id)section withAceCardSection:(id)cardSection;
@end

@implementation SiriUniversalSearchSnippetTranslator

- (id)universalSearchResultsForSnippet:(id)snippet error:(id *)error
{
  snippetCopy = snippet;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = snippetCopy;
    sections = [snippetCopy sections];
    v8 = +[NSMutableArray array];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = sections;
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
        sectionTitle = [v12 sectionTitle];
        [(SiriUSSection *)v13 setTitle:sectionTitle];

        punchOut = [v12 punchOut];
        [(SiriUSSection *)v13 setPunchOut:punchOut];

        [v8 addObject:v13];
        genericResults = [v12 genericResults];

        if (genericResults)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          genericResults2 = [v12 genericResults];
          v18 = [genericResults2 countByEnumeratingWithState:&v42 objects:v51 count:16];
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
                  objc_enumerationMutation(genericResults2);
                }

                v22 = [(SiriUniversalSearchSnippetTranslator *)self _universalSearchResultForSAUniversalSearchResult:*(*(&v42 + 1) + 8 * j)];
                if (v22)
                {
                  [(SiriUSSection *)v13 addResult:v22];
                }
              }

              v19 = [genericResults2 countByEnumeratingWithState:&v42 objects:v51 count:16];
            }

            while (v19);
          }
        }

        else
        {
          cardResults = [v12 cardResults];

          if (!cardResults)
          {
            goto LABEL_30;
          }

          genericResults2 = +[NSMutableArray array];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          cardResults2 = [v12 cardResults];
          v25 = [cardResults2 countByEnumeratingWithState:&v38 objects:v50 count:16];
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
                  objc_enumerationMutation(cardResults2);
                }

                v29 = [(SiriUniversalSearchSnippetTranslator *)self _universalSearchCardForSAUniversalSearchCard:*(*(&v38 + 1) + 8 * k)];
                if (v29)
                {
                  [genericResults2 addObject:v29];
                }
              }

              v26 = [cardResults2 countByEnumeratingWithState:&v38 objects:v50 count:16];
            }

            while (v26);
          }

          lastObject = [genericResults2 lastObject];
          [lastObject setSeparatorStyle:1];
          v31 = objc_alloc_init(SFSearchResult);
          v32 = objc_alloc_init(SFCard);
          [v32 setCardSections:genericResults2];
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

        snippetCopy = v34;
        goto LABEL_36;
      }
    }
  }

  if (error)
  {
    [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:100 userInfo:0];
    *error = v35 = 0;
  }

  else
  {
    v35 = 0;
  }

LABEL_36:

  return v35;
}

- (id)_universalSearchResultForSAUniversalSearchResult:(id)result
{
  resultCopy = result;
  v5 = objc_alloc_init(SFSearchResult);
  actionButton = [resultCopy actionButton];
  punchOutUri = [actionButton punchOutUri];

  if (punchOutUri)
  {
    v8 = [SFPunchout punchoutWithURL:punchOutUri];
    [v5 setPunchout:v8];
  }

  descriptions = [resultCopy descriptions];
  v10 = [(SiriUniversalSearchSnippetTranslator *)self _descriptionsForSARichTextItems:descriptions];
  [v5 setDescriptions:v10];

  footnote = [resultCopy footnote];
  [v5 setFootnote:footnote];

  thumbnail = [resultCopy thumbnail];
  v13 = [(SiriUniversalSearchSnippetTranslator *)self _inlinedImageForImageResource:thumbnail];
  [v5 setThumbnail:v13];

  title = [resultCopy title];
  v15 = [SFText textWithString:title];
  [v5 setTitle:v15];

  secondaryTitle = [resultCopy secondaryTitle];
  [v5 setSecondaryTitle:secondaryTitle];

  [v5 setIsCentered:{objc_msgSend(resultCopy, "centered")}];
  titleMaxLines = [resultCopy titleMaxLines];

  if (titleMaxLines)
  {
    title2 = [v5 title];
    titleMaxLines2 = [resultCopy titleMaxLines];
    [title2 setMaxLines:{objc_msgSend(titleMaxLines2, "integerValue")}];
  }

  return v5;
}

- (id)_universalSearchCardForSAUniversalSearchCard:(id)card
{
  cardCopy = card;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(SFRichTitleCardSection);
    [(SiriUniversalSearchSnippetTranslator *)self _configureRichTitleCardSection:v5 withAceCardSection:cardCopy];
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

    [(SiriUniversalSearchSnippetTranslator *)self _configureTitleCardSection:v5 withAceCardSection:cardCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5)
    {
      v5 = objc_alloc_init(SFRowCardSection);
    }

    [(SiriUniversalSearchSnippetTranslator *)self _configureRowCardSection:v5 withAceCardSection:cardCopy];
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
        v11 = cardCopy;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s Server sent invalid card section, SAUSCardSection is a base class: %@", &v8, 0x16u);
      }
    }

    [(SiriUniversalSearchSnippetTranslator *)self _configureCardSection:v5 withAceCardSection:cardCopy];
  }

  return v5;
}

- (void)_configureRichTitleCardSection:(id)section withAceCardSection:(id)cardSection
{
  cardSectionCopy = cardSection;
  sectionCopy = section;
  subtitle = [cardSectionCopy subtitle];
  [sectionCopy setSubtitle:subtitle];

  contentRatingText = [cardSectionCopy contentRatingText];
  [sectionCopy setRatingText:contentRatingText];

  titleImage = [cardSectionCopy titleImage];
  v10 = [(SiriUniversalSearchSnippetTranslator *)self _inlinedImageForImageResource:titleImage];
  [sectionCopy setTitleImage:v10];

  centered = [cardSectionCopy centered];
  [sectionCopy setIsCentered:centered];
}

- (void)_configureTitleCardSection:(id)section withAceCardSection:(id)cardSection
{
  sectionCopy = section;
  title = [cardSection title];
  [sectionCopy setTitle:title];
}

- (void)_configureRowCardSection:(id)section withAceCardSection:(id)cardSection
{
  cardSectionCopy = cardSection;
  sectionCopy = section;
  image = [cardSectionCopy image];
  v8 = [(SiriUniversalSearchSnippetTranslator *)self _inlinedImageForImageResource:image];
  [sectionCopy setImage:v8];

  leftText = [cardSectionCopy leftText];
  v10 = [SFRichText textWithString:leftText];
  [sectionCopy setLeadingText:v10];

  rightText = [cardSectionCopy rightText];
  v12 = [SFRichText textWithString:rightText];
  [sectionCopy setTrailingText:v12];

  imageIsRightAligned = [cardSectionCopy imageIsRightAligned];
  [sectionCopy setImageIsRightAligned:imageIsRightAligned];
}

- (void)_configureCardSection:(id)section withAceCardSection:(id)cardSection
{
  sectionCopy = section;
  punchOut = [cardSection punchOut];
  punchOutUri = [punchOut punchOutUri];

  if (punchOutUri)
  {
    v8 = [SFPunchout punchoutWithURL:punchOutUri];
    v10 = v8;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [sectionCopy setPunchoutOptions:v9];
  }
}

- (id)_descriptionsForSARichTextItems:(id)items
{
  itemsCopy = items;
  v28 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = itemsCopy;
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
        contentAdvisory = [v5 contentAdvisory];
        [v6 setContentAdvisory:contentAdvisory];

        moreGlyphs = [v5 moreGlyphs];
        v9 = [(SiriUniversalSearchSnippetTranslator *)self _inlinedImagesForImageResources:moreGlyphs];
        [v6 setIcons:v9];

        textMaxlines = [v5 textMaxlines];

        if (textMaxlines)
        {
          textMaxlines2 = [v5 textMaxlines];
          [v6 setMaxLines:{objc_msgSend(textMaxlines2, "integerValue")}];
        }

        v30 = v6;
        v12 = +[NSMutableArray array];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        markupList = [v5 markupList];
        v14 = [markupList countByEnumeratingWithState:&v33 objects:v41 count:16];
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
                objc_enumerationMutation(markupList);
              }

              v18 = *(*(&v33 + 1) + 8 * i);
              v19 = objc_alloc_init(SFFormattedText);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                imageResource = [v18 imageResource];
                v21 = [(SiriUniversalSearchSnippetTranslator *)self _inlinedImageForImageResource:imageResource];
                [v19 setGlyph:v21];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = v18;
                  text = [v22 text];
                  [v19 setText:text];

                  emphasized = [v22 emphasized];
                  [v19 setIsBold:emphasized];
                }
              }

              [v12 addObject:v19];
            }

            v15 = [markupList countByEnumeratingWithState:&v33 objects:v41 count:16];
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

- (id)_inlinedImagesForImageResources:(id)resources
{
  resourcesCopy = resources;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = resourcesCopy;
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

- (id)_inlinedImageForImageResource:(id)resource
{
  if (resource)
  {
    imageData = [resource imageData];
    v4 = [SFImage imageWithData:imageData];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end