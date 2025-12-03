@interface RelatedSearchSuggestion
- (NSString)displayString;
- (RelatedSearchSuggestion)initWithResultDisplayHeader:(id)header substitutes:(id)substitutes visibleTime:(double)time showCloseButton:(BOOL)button;
- (void)_parseComponents;
- (void)_parseSubtitutes;
@end

@implementation RelatedSearchSuggestion

- (void)_parseComponents
{
  v3 = objc_alloc_init(NSMutableArray);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v4 = self->_substitutes;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100D3F8BC;
  v33[3] = &unk_101651CD0;
  v36 = &v42;
  v5 = v4;
  v34 = v5;
  v32 = v3;
  v35 = v32;
  v37 = &v38;
  v6 = objc_retainBlock(v33);
  v8 = [(NSString *)self->_resultDisplayHeader rangeOfString:@"["];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    v31 = v6 + 16;
    do
    {
      v10 = v43[3];
      if (v10 >= [(NSArray *)v5 count])
      {
        break;
      }

      v11 = [(NSString *)self->_resultDisplayHeader maps_isSubstringStartingAtRangeEscaped:v8, v9];
      if (!((v8 <= v39[3]) | v11 & 1))
      {
        v13 = [(NSString *)self->_resultDisplayHeader rangeOfString:@"]"];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v12;
          while (1)
          {
            v15 = v43[3];
            if (v15 >= [(NSArray *)v5 count])
            {
              break;
            }

            v16 = [(NSString *)self->_resultDisplayHeader maps_isSubstringStartingAtRangeEscaped:v13, v14];
            v17 = v39[3];
            if (!((v13 <= v17) | v16 & 1))
            {
              if (v8 > v17)
              {
                v18 = [(NSString *)self->_resultDisplayHeader substringWithRange:v39[3], v8 - v17];
                (*(v6 + 2))(v6, v18, v17, v8 - v17);

                v17 = v39[3];
              }

              if (v17 == v8)
              {
                v19 = &v13[v14 - v8];
                v20 = [(NSString *)self->_resultDisplayHeader substringWithRange:v8 + 1, v19 - 2];
                (*(v6 + 2))(v6, v20, v8 + 1, v19 - 2);
                v21 = [(NSString *)self->_resultDisplayHeader stringByReplacingCharactersInRange:v8 withString:v19, v20];
                resultDisplayHeader = self->_resultDisplayHeader;
                self->_resultDisplayHeader = v21;
              }

              v8 = [(NSString *)self->_resultDisplayHeader rangeOfString:@"["];
              v9 = v23;
              break;
            }
          }
        }
      }
    }

    while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v24 = v39[3];
  if (v24 < [(NSString *)self->_resultDisplayHeader length])
  {
    v25 = [(NSString *)self->_resultDisplayHeader length];
    v26 = v39[3];
    v27 = v25 - v26;
    v28 = [(NSString *)self->_resultDisplayHeader substringWithRange:v26, v25 - v26];
    (*(v6 + 2))(v6, v28, v26, v27);
  }

  v29 = [v32 copy];
  components = self->_components;
  self->_components = v29;

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
}

- (NSString)displayString
{
  v3 = objc_alloc_init(NSMutableString);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_components;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        displayText = [*(*(&v12 + 1) + 8 * i) displayText];
        [v3 appendString:displayText];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)_parseSubtitutes
{
  v21 = objc_alloc_init(NSMutableArray);
  v3 = [(NSString *)self->_resultDisplayHeader rangeOfString:@"%s"];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    range = v3;
    v6 = v4;
    v7 = 0;
    v8 = 0;
    do
    {
      if (v7 >= [(NSArray *)self->_pdSubstitutes count])
      {
        break;
      }

      v9 = [(NSString *)self->_resultDisplayHeader maps_isSubstringStartingAtRangeEscaped:range, v6];
      if (range > v8 && (v9 & 1) == 0)
      {
        v10 = [RelatedSearchSuggestionSubstitute alloc];
        v11 = [(NSArray *)self->_pdSubstitutes objectAtIndexedSubscript:v7];
        v12 = [(RelatedSearchSuggestionSubstitute *)v10 initWithLocation:range substitute:v11];

        [v21 addObject:v12];
        resultDisplayHeader = self->_resultDisplayHeader;
        substituteText = [(RelatedSearchSuggestionSubstitute *)v12 substituteText];
        v15 = [(NSString *)resultDisplayHeader stringByReplacingCharactersInRange:range withString:v6, substituteText];
        v16 = self->_resultDisplayHeader;
        self->_resultDisplayHeader = v15;

        range = [(RelatedSearchSuggestionSubstitute *)v12 range];
        v6 = v17;
      }

      v8 = &range[v6];
      range = [(NSString *)self->_resultDisplayHeader rangeOfString:@"%s"];
      v6 = v18;
      ++v7;
    }

    while (range != 0x7FFFFFFFFFFFFFFFLL);
  }

  v19 = [v21 copy];
  substitutes = self->_substitutes;
  self->_substitutes = v19;
}

- (RelatedSearchSuggestion)initWithResultDisplayHeader:(id)header substitutes:(id)substitutes visibleTime:(double)time showCloseButton:(BOOL)button
{
  headerCopy = header;
  substitutesCopy = substitutes;
  v16.receiver = self;
  v16.super_class = RelatedSearchSuggestion;
  v12 = [(RelatedSearchSuggestion *)&v16 init];
  if (v12)
  {
    v13 = [headerCopy copy];
    resultDisplayHeader = v12->_resultDisplayHeader;
    v12->_resultDisplayHeader = v13;

    objc_storeStrong(&v12->_pdSubstitutes, substitutes);
    v12->_visibleTime = time;
    v12->_showCloseButton = button;
    [(RelatedSearchSuggestion *)v12 _parseSubtitutes];
    [(RelatedSearchSuggestion *)v12 _parseComponents];
  }

  return v12;
}

@end